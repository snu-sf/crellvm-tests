	.text
	.file	"canvas.bc"
	.globl	FreeCanvas
	.align	16, 0x90
	.type	FreeCanvas,@function
FreeCanvas:                             # @FreeCanvas
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, 16(%rcx)
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 24(%rcx)
.LBB0_4:                                # %if.end.9
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB0_10
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB0_10
# BB#6:                                 # %if.then.12
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_8
# BB#7:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                # %cond.false
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB0_9:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, 32(%rcx)
.LBB0_10:                               # %if.end.19
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_15
# BB#11:                                # %if.then.22
	jmp	.LBB0_12
.LBB0_12:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	FreeCanvas
	jmp	.LBB0_12
.LBB0_14:                               # %while.end
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	callq	LayerCleanupMemory
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB0_37
.LBB0_15:                               # %if.end.26
	cmpq	$0, display
	je	.LBB0_25
# BB#16:                                # %if.then.28
	movq	display, %rax
	movq	336(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.30
	movq	display, %rax
	movq	$0, 336(%rax)
.LBB0_18:                               # %if.end.32
	movq	display, %rax
	addq	$328, %rax              # imm = 0x148
	movq	%rax, -32(%rbp)
.LBB0_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_24
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB0_22
# BB#21:                                # %if.then.35
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB0_24
.LBB0_22:                               # %if.end.36
                                        #   in Loop: Header=BB0_19 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               # %for.inc
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_19
.LBB0_24:                               # %for.end
	jmp	.LBB0_25
.LBB0_25:                               # %if.end.38
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB0_27
# BB#26:                                # %cond.true.40
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_28
.LBB0_27:                               # %cond.false.42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_28
.LBB0_28:                               # %cond.end.43
	movq	-56(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	SetCanvasWindow
	cmpq	$0, -40(%rbp)
	je	.LBB0_30
# BB#29:                                # %if.then.46
	movl	$117, %esi
	movq	-40(%rbp), %rdi
	callq	WindowChanged
.LBB0_30:                               # %if.end.47
	movq	flayer, %rax
	movq	-8(%rbp), %rcx
	cmpq	64(%rcx), %rax
	jne	.LBB0_32
# BB#31:                                # %if.then.50
	movq	$0, flayer
.LBB0_32:                               # %if.end.51
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB0_33:                               # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_36
# BB#34:                                # %for.body.54
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	free
# BB#35:                                # %for.inc.56
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_33
.LBB0_36:                               # %for.end.57
	movq	-8(%rbp), %rax
	addq	$232, %rax
	movq	%rax, %rdi
	callq	evdeq
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	callq	LayerCleanupMemory
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_37:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	FreeCanvas, .Lfunc_end0-FreeCanvas
	.cfi_endproc

	.globl	SetCanvasWindow
	.align	16, 0x90
	.type	SetCanvasWindow,@function
SetCanvasWindow:                        # @SetCanvasWindow
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, display
	cmpq	$0, -40(%rbp)
	je	.LBB1_19
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	je	.LBB1_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB1_5
# BB#4:                                 # %if.then.2
	jmp	.LBB1_7
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	jmp	.LBB1_6
.LBB1_6:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %rax
	addq	$72, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_2
.LBB1_7:                                # %for.end
	jmp	.LBB1_8
.LBB1_8:                                # %do.body
	jmp	.LBB1_9
.LBB1_9:                                # %do.end
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	cmpq	$0, -24(%rbp)
	je	.LBB1_14
# BB#10:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	jne	.LBB1_14
# BB#11:                                # %if.then.8
	movq	display, %rdi
	movq	-24(%rbp), %rsi
	callq	ReleaseAutoWritelock
	movq	-24(%rbp), %rsi
	cmpl	$0, 10844(%rsi)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB1_13
# BB#12:                                # %if.then.10
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	movq	-24(%rbp), %rcx
	imull	$1000, 10840(%rcx), %esi # imm = 0x3E8
	movq	%rax, %rdi
	callq	SetTimeout
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	movq	%rax, %rdi
	callq	evenq
.LBB1_13:                               # %if.end.12
	movq	fore, %rax
	movq	display, %rcx
	movq	%rax, 384(%rcx)
	movq	display, %rax
	movq	$0, 376(%rax)
.LBB1_14:                               # %if.end.13
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_18
# BB#15:                                # %land.lhs.true.16
	cmpq	$0, -24(%rbp)
	je	.LBB1_17
# BB#16:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	152(%rcx), %rax
	je	.LBB1_18
.LBB1_17:                               # %if.then.19
	movq	-40(%rbp), %rdi
	callq	KillLayerChain
.LBB1_18:                               # %if.end.20
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.21
	cmpq	$0, -16(%rbp)
	je	.LBB1_26
# BB#20:                                # %land.lhs.true.23
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	je	.LBB1_26
# BB#21:                                # %if.then.25
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB1_25
# BB#22:                                # %land.lhs.true.28
	movq	-16(%rbp), %rax
	cmpl	$0, 160(%rax)
	jne	.LBB1_24
# BB#23:                                # %lor.lhs.false.30
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_25
.LBB1_24:                               # %if.then.34
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB1_25:                               # %if.end.36
	jmp	.LBB1_30
.LBB1_26:                               # %if.else
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB1_28
# BB#27:                                # %if.then.38
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 40(%rcx)
	jmp	.LBB1_29
.LBB1_28:                               # %if.else.40
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
.LBB1_29:                               # %if.end.42
	jmp	.LBB1_30
.LBB1_30:                               # %if.end.43
	jmp	.LBB1_31
.LBB1_31:                               # %do.body.44
	jmp	.LBB1_32
.LBB1_32:                               # %do.end.45
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-8(%rbp), %rax
	movl	216(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 208(%rax)
	movq	-8(%rbp), %rax
	movl	224(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 212(%rax)
	movq	-8(%rbp), %rdi
	callq	RethinkViewportOffsets
	cmpq	$0, flayer
	jne	.LBB1_34
# BB#33:                                # %if.then.51
	movq	-40(%rbp), %rax
	movq	%rax, flayer
.LBB1_34:                               # %if.end.52
	cmpq	$0, -16(%rbp)
	je	.LBB1_37
# BB#35:                                # %land.lhs.true.54
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_37
# BB#36:                                # %if.then.57
	xorl	%eax, %eax
	movq	display, %rcx
	movq	%rcx, -64(%rbp)
	movq	flayer, %rcx
	movq	%rcx, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, flayer
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	display_windows
	movq	-72(%rbp), %rcx
	movq	%rcx, flayer
	movq	-64(%rbp), %rcx
	movq	%rcx, display
.LBB1_37:                               # %if.end.58
	cmpq	$0, -16(%rbp)
	je	.LBB1_40
# BB#38:                                # %land.lhs.true.60
	movq	display, %rax
	movq	384(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB1_40
# BB#39:                                # %if.then.63
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	display, %rcx
	movq	%rax, 384(%rcx)
.LBB1_40:                               # %if.end.65
	movq	-8(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	jne	.LBB1_54
# BB#41:                                # %if.then.68
	movq	-16(%rbp), %rax
	movq	display, %rcx
	movq	%rax, 376(%rcx)
	movq	display, %rax
	movq	376(%rax), %rax
	movq	%rax, fore
	cmpq	$0, -16(%rbp)
	je	.LBB1_53
# BB#42:                                # %if.then.72
	movq	display, %rdi
	movq	-16(%rbp), %rsi
	callq	ObtainAutoWritelock
	movq	windows, %rsi
	cmpq	-16(%rbp), %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB1_52
# BB#43:                                # %if.then.75
	movabsq	$windows, %rax
	movq	%rax, -32(%rbp)
.LBB1_44:                               # %for.cond.76
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB1_49
# BB#45:                                # %for.body.78
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB1_47
# BB#46:                                # %if.then.80
	jmp	.LBB1_49
.LBB1_47:                               # %if.end.81
                                        #   in Loop: Header=BB1_44 Depth=1
	jmp	.LBB1_48
.LBB1_48:                               # %for.inc.82
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_44
.LBB1_49:                               # %for.end.84
	jmp	.LBB1_50
.LBB1_50:                               # %do.body.85
	jmp	.LBB1_51
.LBB1_51:                               # %do.end.86
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	windows, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, windows
	callq	WListLinkChanged
.LBB1_52:                               # %if.end.89
	jmp	.LBB1_53
.LBB1_53:                               # %if.end.90
	jmp	.LBB1_54
.LBB1_54:                               # %if.end.91
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SetCanvasWindow, .Lfunc_end1-SetCanvasWindow
	.cfi_endproc

	.globl	CountCanvas
	.align	16, 0x90
	.type	CountCanvas,@function
CountCanvas:                            # @CountCanvas
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
	movl	$0, -12(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	cmpq	$0, -8(%rbp)
	je	.LBB2_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB2_12
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$1, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB2_4:                                # %for.cond.3
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB2_11
# BB#5:                                 # %for.body.5
                                        #   in Loop: Header=BB2_4 Depth=2
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB2_9
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB2_4 Depth=2
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	CountCanvas
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB2_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB2_4 Depth=2
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB2_8:                                # %if.end
                                        #   in Loop: Header=BB2_4 Depth=2
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.11
                                        #   in Loop: Header=BB2_4 Depth=2
	jmp	.LBB2_10
.LBB2_10:                               # %for.inc
                                        #   in Loop: Header=BB2_4 Depth=2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_4
.LBB2_11:                               # %for.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_13
.LBB2_12:                               # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB2_13:                               # %if.end.12
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_14
.LBB2_14:                               # %for.inc.13
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_1
.LBB2_15:                               # %for.end.15
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	CountCanvas, .Lfunc_end2-CountCanvas
	.cfi_endproc

	.globl	CountCanvasPerp
	.align	16, 0x90
	.type	CountCanvasPerp,@function
CountCanvasPerp:                        # @CountCanvasPerp
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB3_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB3_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	CountCanvas
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB3_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB3_5:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_6
.LBB3_6:                                # %if.end.5
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_1
.LBB3_8:                                # %for.end
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	CountCanvasPerp, .Lfunc_end3-CountCanvasPerp
	.cfi_endproc

	.globl	FindCanvas
	.align	16, 0x90
	.type	FindCanvas,@function
FindCanvas:                             # @FindCanvas
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
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -40(%rbp)
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_47
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	216(%rcx), %eax
	jl	.LBB4_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jg	.LBB4_7
# BB#4:                                 # %land.lhs.true.2
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	224(%rcx), %eax
	jl	.LBB4_7
# BB#5:                                 # %land.lhs.true.4
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jg	.LBB4_7
# BB#6:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_51
.LBB4_7:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	jne	.LBB4_9
# BB#8:                                 # %if.then.7
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_46
.LBB4_9:                                # %if.end.8
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -36(%rbp)
	movl	-12(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	cmpl	216(%rcx), %eax
	jl	.LBB4_25
# BB#10:                                # %land.lhs.true.12
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	cmpl	220(%rcx), %eax
	jg	.LBB4_25
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	216(%rcx), %eax
	jl	.LBB4_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB4_14
.LBB4_13:                               # %if.then.21
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_46
.LBB4_14:                               # %if.end.22
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	cmpl	224(%rcx), %eax
	jge	.LBB4_17
# BB#15:                                # %land.lhs.true.26
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	224(%rcx), %eax
	jge	.LBB4_17
# BB#16:                                # %if.then.29
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_46
.LBB4_17:                               # %if.end.30
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB4_20
# BB#18:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB4_20
# BB#19:                                # %if.then.39
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_46
.LBB4_20:                               # %if.end.40
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	224(%rcx), %eax
	jge	.LBB4_22
# BB#21:                                # %if.then.43
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movl	224(%rax), %ecx
	subl	-16(%rbp), %ecx
	movl	%ecx, -36(%rbp)
.LBB4_22:                               # %if.end.45
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB4_24
# BB#23:                                # %if.then.49
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -36(%rbp)
.LBB4_24:                               # %if.end.53
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.54
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	cmpl	224(%rcx), %eax
	jl	.LBB4_41
# BB#26:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jg	.LBB4_41
# BB#27:                                # %if.then.63
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	224(%rcx), %eax
	jl	.LBB4_29
# BB#28:                                # %lor.lhs.false.66
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB4_30
.LBB4_29:                               # %if.then.70
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_46
.LBB4_30:                               # %if.end.71
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	cmpl	216(%rcx), %eax
	jge	.LBB4_33
# BB#31:                                # %land.lhs.true.75
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	216(%rcx), %eax
	jge	.LBB4_33
# BB#32:                                # %if.then.78
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_46
.LBB4_33:                               # %if.end.79
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB4_36
# BB#34:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB4_36
# BB#35:                                # %if.then.86
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_46
.LBB4_36:                               # %if.end.87
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	216(%rcx), %eax
	jge	.LBB4_38
# BB#37:                                # %if.then.90
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movl	216(%rax), %ecx
	subl	-12(%rbp), %ecx
	movl	%ecx, -36(%rbp)
.LBB4_38:                               # %if.end.93
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB4_40
# BB#39:                                # %if.then.96
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	subl	220(%rcx), %eax
	movl	%eax, -36(%rbp)
.LBB4_40:                               # %if.end.99
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_41
.LBB4_41:                               # %if.end.100
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB4_45
# BB#42:                                # %land.lhs.true.102
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB4_44
# BB#43:                                # %lor.lhs.false.104
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB4_45
.LBB4_44:                               # %if.then.106
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -40(%rbp)
.LBB4_45:                               # %if.end.107
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_46
.LBB4_46:                               # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_1
.LBB4_47:                               # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB4_49
# BB#48:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB4_50
.LBB4_49:                               # %cond.false
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB4_50:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB4_51:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	FindCanvas, .Lfunc_end4-FindCanvas
	.cfi_endproc

	.globl	MakeDefaultCanvas
	.align	16, 0x90
	.type	MakeDefaultCanvas,@function
MakeDefaultCanvas:                      # @MakeDefaultCanvas
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
	subq	$32, %rsp
# BB#1:                                 # %do.body
	jmp	.LBB5_2
.LBB5_2:                                # %do.end
	movl	$1, %eax
	movl	%eax, %edi
	movl	$312, %eax              # imm = 0x138
	movl	%eax, %esi
	callq	calloc
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB5_4
# BB#3:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB5_7
.LBB5_4:                                # %if.end
	movq	-16(%rbp), %rax
	movl	$0, 216(%rax)
	movq	display, %rax
	movl	444(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 220(%rax)
	movq	display, %rax
	cmpl	$4, 528(%rax)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 224(%rax)
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movq	display, %rax
	cmpl	$1, 528(%rax)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	subl	captionalways, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 228(%rax)
# BB#5:                                 # %do.body.8
	jmp	.LBB5_6
.LBB5_6:                                # %do.end.9
	movabsq	$cv_winid_fn, %rax
	movq	-16(%rbp), %rcx
	movl	$0, 208(%rcx)
	movq	-16(%rbp), %rcx
	movl	$0, 212(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, (%rcx)
	movq	display, %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-16(%rbp), %rcx
	movq	$0, 56(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, 16(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, 24(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, 32(%rcx)
	movq	-16(%rbp), %rcx
	movl	$1, 52(%rcx)
	movq	display, %rcx
	addq	$16, %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 40(%rdx)
	movq	-16(%rbp), %rcx
	movq	display, %rdx
	movq	%rcx, 48(%rdx)
	movq	-16(%rbp), %rcx
	movl	216(%rcx), %esi
	movq	display, %rcx
	movl	%esi, 232(%rcx)
	movq	-16(%rbp), %rcx
	movl	220(%rcx), %esi
	movq	display, %rcx
	movl	%esi, 236(%rcx)
	movq	-16(%rbp), %rcx
	movl	224(%rcx), %esi
	movq	display, %rcx
	movl	%esi, 240(%rcx)
	movq	-16(%rbp), %rcx
	movl	228(%rcx), %esi
	movq	display, %rcx
	movl	%esi, 244(%rcx)
	movq	-16(%rbp), %rcx
	movl	$0, 48(%rcx)
	movq	-16(%rbp), %rcx
	movl	$0, 260(%rcx)
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 248(%rdx)
	movq	-16(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movq	-16(%rbp), %rdi
	callq	CanvasInitBlank
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-16(%rbp), %rax
	movq	display, %rcx
	movq	%rax, 328(%rcx)
	callq	RethinkDisplayViewports
	movq	-16(%rbp), %rcx
	movq	display, %rdx
	movq	%rcx, 336(%rdx)
	movl	$0, -4(%rbp)
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB5_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	MakeDefaultCanvas, .Lfunc_end5-MakeDefaultCanvas
	.cfi_endproc

	.align	16, 0x90
	.type	cv_winid_fn,@function
cv_winid_fn:                            # @cv_winid_fn
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, display
	movq	display, %rsi
	cmpl	$1, 576(%rsi)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	SetTimeout
	movq	-8(%rbp), %rdi
	callq	evenq
	jmp	.LBB6_7
.LBB6_2:                                # %if.end
	movq	display, %rax
	movl	468(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	display, %rax
	movl	472(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	228(%rax), %ecx
	addl	$1, %ecx
	movq	display, %rax
	cmpl	448(%rax), %ecx
	jge	.LBB6_4
# BB#3:                                 # %if.then.2
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	movq	display, %rcx
	movl	444(%rcx), %esi
	subl	$1, %esi
	movl	%edx, %edi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	-36(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	RefreshLine
.LBB6_4:                                # %if.end.5
	cmpl	$-1, -20(%rbp)
	je	.LBB6_7
# BB#5:                                 # %land.lhs.true
	cmpl	$-1, -24(%rbp)
	je	.LBB6_7
# BB#6:                                 # %if.then.8
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	GotoPos
.LBB6_7:                                # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	cv_winid_fn, .Lfunc_end6-cv_winid_fn
	.cfi_endproc

	.align	16, 0x90
	.type	CanvasInitBlank,@function
CanvasInitBlank:                        # @CanvasInitBlank
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
	movabsq	$BlankLf, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, 80(%rcx)
	movq	-8(%rbp), %rcx
	movl	220(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	216(%rcx), %edx
	addl	$1, %edx
	movq	-8(%rbp), %rcx
	movl	%edx, 88(%rcx)
	movq	-8(%rbp), %rcx
	movl	228(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	224(%rcx), %edx
	addl	$1, %edx
	movq	-8(%rbp), %rcx
	movl	%edx, 92(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 100(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 96(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-8(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	CanvasInitBlank, .Lfunc_end7-CanvasInitBlank
	.cfi_endproc

	.globl	RecreateCanvasChain
	.align	16, 0x90
	.type	RecreateCanvasChain,@function
RecreateCanvasChain:                    # @RecreateCanvasChain
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
	subq	$16, %rsp
	movq	display, %rax
	movq	48(%rax), %rdi
	movq	display, %rax
	addq	$328, %rax              # imm = 0x148
	movq	%rax, %rsi
	callq	CreateCanvasChainRec
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	RecreateCanvasChain, .Lfunc_end8-RecreateCanvasChain
	.cfi_endproc

	.align	16, 0x90
	.type	CreateCanvasChainRec,@function
CreateCanvasChainRec:                   # @CreateCanvasChainRec
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
	movq	%rsi, -16(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB9_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	CreateCanvasChainRec
	movq	%rax, -16(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB9_5:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_6
.LBB9_6:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_1
.LBB9_7:                                # %for.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	CreateCanvasChainRec, .Lfunc_end9-CreateCanvasChainRec
	.cfi_endproc

	.globl	EqualizeCanvas
	.align	16, 0x90
	.type	EqualizeCanvas,@function
EqualizeCanvas:                         # @EqualizeCanvas
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
	cmpq	$0, -8(%rbp)
	je	.LBB10_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB10_11
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB10_11
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	CountCanvasPerp
	movq	-8(%rbp), %rdi
	movl	%eax, 52(%rdi)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB10_5:                               # %for.cond.4
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB10_10
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB10_8
# BB#7:                                 # %if.then.9
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	EqualizeCanvas
.LBB10_8:                               # %if.end
                                        #   in Loop: Header=BB10_5 Depth=2
	jmp	.LBB10_9
.LBB10_9:                               # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_5
.LBB10_10:                              # %for.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_12
.LBB10_11:                              # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movl	$1, 52(%rax)
.LBB10_12:                              # %if.end.12
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_13
.LBB10_13:                              # %for.inc.13
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_1
.LBB10_14:                              # %for.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	EqualizeCanvas, .Lfunc_end10-EqualizeCanvas
	.cfi_endproc

	.globl	ResizeCanvas
	.align	16, 0x90
	.type	ResizeCanvas,@function
ResizeCanvas:                           # @ResizeCanvas
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -88(%rbp)
	movq	-8(%rbp), %rdi
	movl	216(%rdi), %eax
	movl	%eax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movl	224(%rdi), %eax
	movl	%eax, -76(%rbp)
	movq	-8(%rbp), %rdi
	movl	220(%rdi), %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	228(%rdi), %eax
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB11_2
.LBB11_2:                               # %do.end
	jmp	.LBB11_3
.LBB11_3:                               # %do.body.1
	jmp	.LBB11_4
.LBB11_4:                               # %do.end.2
	cmpq	$0, -8(%rbp)
	jne	.LBB11_6
# BB#5:                                 # %if.then
	jmp	.LBB11_138
.LBB11_6:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB11_10
# BB#7:                                 # %if.then.4
	jmp	.LBB11_8
.LBB11_8:                               # %do.body.5
	jmp	.LBB11_9
.LBB11_9:                               # %do.end.6
	movl	-72(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 216(%rcx)
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 220(%rcx)
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 224(%rcx)
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 228(%rcx)
	movq	-8(%rbp), %rcx
	movl	216(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 208(%rcx)
	movq	-8(%rbp), %rcx
	movl	224(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 212(%rcx)
	movq	-8(%rbp), %rcx
	movl	220(%rcx), %eax
	movq	-8(%rbp), %rcx
	subl	216(%rcx), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-8(%rbp), %rcx
	movl	228(%rcx), %eax
	movq	-8(%rbp), %rcx
	subl	224(%rcx), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 92(%rcx)
	jmp	.LBB11_138
.LBB11_10:                              # %if.end.20
	movq	$0, -32(%rbp)
	cmpl	$0, focusminwidth
	jne	.LBB11_12
# BB#11:                                # %lor.lhs.false
	cmpl	$0, focusminheight
	je	.LBB11_33
.LBB11_12:                              # %if.then.22
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.23
	jmp	.LBB11_14
.LBB11_14:                              # %do.end.24
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB11_15:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB11_32
# BB#16:                                # %while.body
                                        #   in Loop: Header=BB11_15 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB11_31
# BB#17:                                # %if.then.29
                                        #   in Loop: Header=BB11_15 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$1, 48(%rax)
	jne	.LBB11_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB11_15 Depth=1
	movl	focusminheight, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB11_20
.LBB11_19:                              # %cond.false
                                        #   in Loop: Header=BB11_15 Depth=1
	movl	focusminwidth, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB11_20:                              # %cond.end
                                        #   in Loop: Header=BB11_15 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jle	.LBB11_22
# BB#21:                                # %if.then.33
                                        #   in Loop: Header=BB11_15 Depth=1
	movl	-88(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB11_28
.LBB11_22:                              # %if.else
                                        #   in Loop: Header=BB11_15 Depth=1
	cmpl	$0, -88(%rbp)
	jge	.LBB11_27
# BB#23:                                # %if.then.35
                                        #   in Loop: Header=BB11_15 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 48(%rax)
	jne	.LBB11_25
# BB#24:                                # %cond.true.38
                                        #   in Loop: Header=BB11_15 Depth=1
	movl	-84(%rbp), %eax
	subl	-76(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB11_26
.LBB11_25:                              # %cond.false.41
                                        #   in Loop: Header=BB11_15 Depth=1
	movl	-80(%rbp), %eax
	subl	-72(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB11_26:                              # %cond.end.44
                                        #   in Loop: Header=BB11_15 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
.LBB11_27:                              # %if.end.46
                                        #   in Loop: Header=BB11_15 Depth=1
	jmp	.LBB11_28
.LBB11_28:                              # %if.end.47
                                        #   in Loop: Header=BB11_15 Depth=1
	jmp	.LBB11_29
.LBB11_29:                              # %do.body.48
                                        #   in Loop: Header=BB11_15 Depth=1
	jmp	.LBB11_30
.LBB11_30:                              # %do.end.49
                                        #   in Loop: Header=BB11_15 Depth=1
	jmp	.LBB11_31
.LBB11_31:                              # %if.end.50
                                        #   in Loop: Header=BB11_15 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB11_15
.LBB11_32:                              # %while.end
	jmp	.LBB11_33
.LBB11_33:                              # %if.end.52
	cmpl	$0, -88(%rbp)
	je	.LBB11_44
# BB#34:                                # %if.then.54
	movq	-8(%rbp), %rdi
	callq	CountCanvas
	shll	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$1, 48(%rdi)
	jne	.LBB11_36
# BB#35:                                # %cond.true.57
	movl	-84(%rbp), %eax
	subl	-76(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB11_37
.LBB11_36:                              # %cond.false.60
	movl	-80(%rbp), %eax
	subl	-72(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB11_37:                              # %cond.end.63
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	-52(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB11_39
# BB#38:                                # %if.then.67
	movl	$0, -36(%rbp)
.LBB11_39:                              # %if.end.68
	movl	-88(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB11_41
# BB#40:                                # %if.then.70
	movl	-36(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB11_41:                              # %if.end.71
	jmp	.LBB11_42
.LBB11_42:                              # %do.body.72
	jmp	.LBB11_43
.LBB11_43:                              # %do.end.73
	jmp	.LBB11_44
.LBB11_44:                              # %if.end.74
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -60(%rbp)
.LBB11_45:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB11_50
# BB#46:                                # %for.body
                                        #   in Loop: Header=BB11_45 Depth=1
	jmp	.LBB11_47
.LBB11_47:                              # %do.body.76
                                        #   in Loop: Header=BB11_45 Depth=1
	jmp	.LBB11_48
.LBB11_48:                              # %do.end.77
                                        #   in Loop: Header=BB11_45 Depth=1
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -60(%rbp)
# BB#49:                                # %for.inc
                                        #   in Loop: Header=BB11_45 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB11_45
.LBB11_50:                              # %for.end
	jmp	.LBB11_51
.LBB11_51:                              # %do.body.79
	jmp	.LBB11_52
.LBB11_52:                              # %do.end.80
	cmpl	$0, -60(%rbp)
	jne	.LBB11_54
# BB#53:                                # %if.then.82
	movl	$1, -60(%rbp)
.LBB11_54:                              # %if.end.83
	movl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-8(%rbp), %rcx
	cmpl	$1, 48(%rcx)
	jne	.LBB11_56
# BB#55:                                # %cond.true.86
	movl	-84(%rbp), %eax
	subl	-76(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB11_57
.LBB11_56:                              # %cond.false.89
	movl	-80(%rbp), %eax
	subl	-72(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB11_57:                              # %cond.end.92
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
.LBB11_58:                              # %for.cond.94
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB11_74
# BB#59:                                # %for.body.96
                                        #   in Loop: Header=BB11_58 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB11_61
# BB#60:                                # %cond.true.99
                                        #   in Loop: Header=BB11_58 Depth=1
	movq	-16(%rbp), %rdi
	callq	CountCanvasPerp
	shll	$1, %eax
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB11_62
.LBB11_61:                              # %cond.false.103
                                        #   in Loop: Header=BB11_58 Depth=1
	movl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB11_62
.LBB11_62:                              # %cond.end.104
                                        #   in Loop: Header=BB11_58 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	-32(%rbp), %rcx
	jne	.LBB11_64
# BB#63:                                # %if.then.107
                                        #   in Loop: Header=BB11_58 Depth=1
	movl	-88(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB11_64:                              # %if.end.109
                                        #   in Loop: Header=BB11_58 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 52(%rax)
	je	.LBB11_66
# BB#65:                                # %cond.true.112
                                        #   in Loop: Header=BB11_58 Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	52(%rcx), %eax
	cltd
	idivl	-56(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB11_67
.LBB11_66:                              # %cond.false.115
                                        #   in Loop: Header=BB11_58 Depth=1
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB11_67
.LBB11_67:                              # %cond.end.116
                                        #   in Loop: Header=BB11_58 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rcx
	movl	52(%rcx), %eax
	movl	-56(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -56(%rbp)
	movl	-48(%rbp), %eax
	movl	-36(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -36(%rbp)
# BB#68:                                # %do.body.121
                                        #   in Loop: Header=BB11_58 Depth=1
	jmp	.LBB11_69
.LBB11_69:                              # %do.end.122
                                        #   in Loop: Header=BB11_58 Depth=1
	movl	-48(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB11_71
# BB#70:                                # %if.then.125
                                        #   in Loop: Header=BB11_58 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	subl	-48(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB11_72
.LBB11_71:                              # %if.else.129
                                        #   in Loop: Header=BB11_58 Depth=1
	movl	-48(%rbp), %eax
	subl	-52(%rbp), %eax
	subl	$1, %eax
	addl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB11_72:                              # %if.end.133
                                        #   in Loop: Header=BB11_58 Depth=1
	jmp	.LBB11_73
.LBB11_73:                              # %for.inc.134
                                        #   in Loop: Header=BB11_58 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB11_58
.LBB11_74:                              # %for.end.136
	jmp	.LBB11_75
.LBB11_75:                              # %do.body.137
	jmp	.LBB11_76
.LBB11_76:                              # %do.end.138
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB11_78
# BB#77:                                # %if.then.140
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB11_78:                              # %if.end.141
	movq	-8(%rbp), %rax
	cmpl	$1, 48(%rax)
	jne	.LBB11_80
# BB#79:                                # %cond.true.144
	movl	-84(%rbp), %eax
	subl	-76(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB11_81
.LBB11_80:                              # %cond.false.147
	movl	-80(%rbp), %eax
	subl	-72(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB11_81:                              # %cond.end.150
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rcx
	cmpl	$1, 48(%rcx)
	jne	.LBB11_83
# BB#82:                                # %cond.true.154
	movl	-76(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB11_84
.LBB11_83:                              # %cond.false.155
	movl	-72(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB11_84:                              # %cond.end.156
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rcx
	cmpl	$1, 48(%rcx)
	jne	.LBB11_86
# BB#85:                                # %cond.true.160
	movl	-84(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB11_87
.LBB11_86:                              # %cond.false.161
	movl	-80(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB11_87:                              # %cond.end.162
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB11_88:                              # %for.cond.164
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB11_138
# BB#89:                                # %for.body.166
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-40(%rbp), %ecx
	cmpl	-44(%rbp), %ecx
	jle	.LBB11_98
# BB#90:                                # %if.then.169
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB11_97
# BB#91:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB11_97
# BB#92:                                # %land.lhs.true.174
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB11_97
# BB#93:                                # %land.lhs.true.178
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB11_97
# BB#94:                                # %if.then.182
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, 48(%rax)
	cmpl	$0, captionalways
	jne	.LBB11_96
# BB#95:                                # %if.then.186
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	228(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 228(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	228(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 228(%rax)
.LBB11_96:                              # %if.end.192
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_97
.LBB11_97:                              # %if.end.193
                                        #   in Loop: Header=BB11_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	SetCanvasWindow
	movq	-8(%rbp), %rdi
	callq	FreeCanvas
	jmp	.LBB11_137
.LBB11_98:                              # %if.end.194
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB11_100
# BB#99:                                # %cond.true.197
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rdi
	callq	CountCanvasPerp
	shll	$1, %eax
	subl	$1, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB11_101
.LBB11_100:                             # %cond.false.201
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	$1, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB11_101
.LBB11_101:                             # %cond.end.202
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	-32(%rbp), %rcx
	jne	.LBB11_103
# BB#102:                               # %if.then.205
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-88(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB11_103:                             # %if.end.207
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 52(%rax)
	je	.LBB11_105
# BB#104:                               # %cond.true.210
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	52(%rcx), %eax
	cltd
	idivl	-56(%rbp)
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB11_106
.LBB11_105:                             # %cond.false.214
                                        #   in Loop: Header=BB11_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB11_106
.LBB11_106:                             # %cond.end.215
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rcx
	movl	52(%rcx), %eax
	movl	-56(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -56(%rbp)
	movl	-48(%rbp), %eax
	movl	-36(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -36(%rbp)
# BB#107:                               # %do.body.220
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_108
.LBB11_108:                             # %do.end.221
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-48(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB11_112
# BB#109:                               # %if.then.224
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
# BB#110:                               # %do.body.226
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_111
.LBB11_111:                             # %do.end.227
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_117
.LBB11_112:                             # %if.else.228
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-64(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-52(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	cltd
	idivl	-68(%rbp)
	movl	%eax, -92(%rbp)
# BB#113:                               # %do.body.233
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_114
.LBB11_114:                             # %do.end.234
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-48(%rbp), %eax
	subl	-52(%rbp), %eax
	subl	$1, %eax
	movl	-68(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movl	-92(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movl	-92(%rbp), %eax
	movl	-64(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -64(%rbp)
# BB#115:                               # %do.body.240
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_116
.LBB11_116:                             # %do.end.241
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_117
.LBB11_117:                             # %if.end.242
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_118
.LBB11_118:                             # %do.body.243
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_119
.LBB11_119:                             # %do.end.244
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB11_123
# BB#120:                               # %if.then.248
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-44(%rbp), %eax
	addl	$2, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
# BB#121:                               # %do.body.251
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_122
.LBB11_122:                             # %do.end.252
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_123
.LBB11_123:                             # %if.end.253
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB11_127
# BB#124:                               # %if.then.257
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
# BB#125:                               # %do.body.259
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_126
.LBB11_126:                             # %do.end.260
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_127
.LBB11_127:                             # %if.end.261
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 48(%rax)
	jne	.LBB11_129
# BB#128:                               # %if.then.264
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-72(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 216(%rcx)
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 220(%rcx)
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 224(%rcx)
	movl	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	subl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 228(%rcx)
	movl	-72(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 208(%rcx)
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 212(%rcx)
	jmp	.LBB11_130
.LBB11_129:                             # %if.else.273
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 216(%rcx)
	movl	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	subl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 220(%rcx)
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 224(%rcx)
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 228(%rcx)
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 208(%rcx)
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 212(%rcx)
.LBB11_130:                             # %if.end.282
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	movl	216(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 208(%rax)
	movq	-8(%rbp), %rax
	movl	224(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 212(%rax)
	movq	-8(%rbp), %rax
	movl	220(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	216(%rax), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 88(%rax)
	movq	-8(%rbp), %rax
	movl	228(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	224(%rax), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 92(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB11_136
# BB#131:                               # %if.then.301
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rdi
	callq	ResizeCanvas
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpq	$0, 16(%rdi)
	jne	.LBB11_135
# BB#132:                               # %if.then.305
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_133
.LBB11_133:                             # %do.body.306
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_134
.LBB11_134:                             # %do.end.307
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	FreePerp
	movq	-8(%rbp), %rdi
	callq	FreePerp
.LBB11_135:                             # %if.end.309
                                        #   in Loop: Header=BB11_88 Depth=1
	jmp	.LBB11_136
.LBB11_136:                             # %if.end.310
                                        #   in Loop: Header=BB11_88 Depth=1
	movl	-48(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB11_137:                             # %for.inc.312
                                        #   in Loop: Header=BB11_88 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_88
.LBB11_138:                             # %for.end.313
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ResizeCanvas, .Lfunc_end11-ResizeCanvas
	.cfi_endproc

	.align	16, 0x90
	.type	FreePerp,@function
FreePerp:                               # @FreePerp
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_13
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB12_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, 16(%rcx)
.LBB12_4:                               # %if.end.7
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB12_7
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB12_7
# BB#6:                                 # %if.then.13
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, 32(%rcx)
.LBB12_7:                               # %if.end.16
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 52(%rax)
.LBB12_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB12_10
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB12_8 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 52(%rax)
	jmp	.LBB12_8
.LBB12_10:                              # %while.end
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB12_12
# BB#11:                                # %if.then.32
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 24(%rcx)
.LBB12_12:                              # %if.end.35
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	callq	LayerCleanupMemory
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB12_13:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	FreePerp, .Lfunc_end12-FreePerp
	.cfi_endproc

	.globl	AddCanvas
	.align	16, 0x90
	.type	AddCanvas,@function
AddCanvas:                              # @AddCanvas
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
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB13_2
.LBB13_2:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB13_7
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	je	.LBB13_7
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	AddPerp
	cmpq	$0, %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$-1, -4(%rbp)
	jmp	.LBB13_27
.LBB13_6:                               # %if.end
	jmp	.LBB13_7
.LBB13_7:                               # %if.end.4
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	216(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	220(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	224(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	228(%rax), %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, captionalways
	jne	.LBB13_11
# BB#8:                                 # %land.lhs.true.10
	movq	-16(%rbp), %rax
	movq	display, %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB13_11
# BB#9:                                 # %land.lhs.true.12
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB13_11
# BB#10:                                # %if.then.14
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
.LBB13_11:                              # %if.end.15
	jmp	.LBB13_12
.LBB13_12:                              # %do.body.16
	jmp	.LBB13_13
.LBB13_13:                              # %do.end.17
	jmp	.LBB13_14
.LBB13_14:                              # %do.body.18
	jmp	.LBB13_15
.LBB13_15:                              # %do.end.19
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rdi
	callq	CountCanvas
	addl	$1, %eax
	movl	%eax, -40(%rbp)
# BB#16:                                # %do.body.23
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.24
	cmpl	$1, -8(%rbp)
	jne	.LBB13_19
# BB#18:                                # %if.then.26
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB13_20
.LBB13_19:                              # %if.else
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB13_20:                              # %if.end.30
	movl	-40(%rbp), %eax
	shll	$1, %eax
	subl	$1, %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB13_22
# BB#21:                                # %if.then.34
	movl	$-1, -4(%rbp)
	jmp	.LBB13_27
.LBB13_22:                              # %if.end.35
	movl	$1, %eax
	movl	%eax, %edi
	movl	$312, %eax              # imm = 0x138
	movl	%eax, %esi
	callq	calloc
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB13_24
# BB#23:                                # %if.then.38
	movl	$-1, -4(%rbp)
	jmp	.LBB13_27
.LBB13_24:                              # %if.end.39
	movl	-32(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movq	40(%rcx), %rcx
	movl	%eax, 228(%rcx)
	movl	-8(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movl	%eax, 48(%rcx)
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-16(%rbp), %rcx
	movq	display, %rdx
	movq	336(%rdx), %rdx
	movq	%rcx, 16(%rdx)
	movq	-16(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	je	.LBB13_26
# BB#25:                                # %if.then.53
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 24(%rcx)
.LBB13_26:                              # %if.end.56
	movabsq	$cv_winid_fn, %rax
	movl	-8(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 48(%rdx)
	movq	display, %rdx
	movq	336(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, 40(%rsi)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 216(%rdx)
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 220(%rdx)
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 224(%rdx)
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 228(%rdx)
	movq	-16(%rbp), %rdx
	movl	$0, 208(%rdx)
	movq	-16(%rbp), %rdx
	movl	$0, 212(%rdx)
	movq	display, %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-16(%rbp), %rdx
	movq	$0, 56(%rdx)
	movq	-16(%rbp), %rdx
	movl	$0, 260(%rdx)
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, 248(%rsi)
	movq	-16(%rbp), %rdx
	movq	%rax, 240(%rdx)
	movq	-16(%rbp), %rdi
	callq	CanvasInitBlank
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	EqualizeCanvas
	movq	-16(%rbp), %rdi
	callq	ResizeCanvas
	callq	RecreateCanvasChain
	callq	RethinkDisplayViewports
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	ResizeLayersToCanvases
	movl	$0, -4(%rbp)
.LBB13_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	AddCanvas, .Lfunc_end13-AddCanvas
	.cfi_endproc

	.align	16, 0x90
	.type	AddPerp,@function
AddPerp:                                # @AddPerp
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB14_2
.LBB14_2:                               # %do.end
	movl	$1, %eax
	movl	%eax, %edi
	movl	$312, %eax              # imm = 0x138
	movl	%eax, %esi
	callq	calloc
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB14_4
# BB#3:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB14_12
.LBB14_4:                               # %if.end
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB14_7
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB14_7
# BB#6:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, 32(%rcx)
.LBB14_7:                               # %if.end.12
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 208(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 212(%rax)
	movq	-16(%rbp), %rax
	movl	216(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 216(%rax)
	movq	-16(%rbp), %rax
	movl	220(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 220(%rax)
	movq	-16(%rbp), %rax
	movl	224(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 224(%rax)
	movq	-16(%rbp), %rax
	movl	228(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 228(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB14_9
# BB#8:                                 # %if.then.20
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 24(%rcx)
.LBB14_9:                               # %if.end.23
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB14_11
# BB#10:                                # %if.then.26
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, 16(%rcx)
.LBB14_11:                              # %if.end.29
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 52(%rax)
	movq	-24(%rbp), %rdi
	callq	CanvasInitBlank
	movq	-16(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-16(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	AddPerp, .Lfunc_end14-AddPerp
	.cfi_endproc

	.globl	RemCanvas
	.align	16, 0x90
	.type	RemCanvas,@function
RemCanvas:                              # @RemCanvas
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
# BB#1:                                 # %do.body
	jmp	.LBB15_2
.LBB15_2:                               # %do.end
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	228(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB15_4
# BB#3:                                 # %if.then
	jmp	.LBB15_30
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB15_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB15_5
.LBB15_7:                               # %while.end
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB15_9
# BB#8:                                 # %if.then.3
	jmp	.LBB15_30
.LBB15_9:                               # %if.end.4
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB15_17
# BB#10:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB15_17
# BB#11:                                # %if.then.11
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#12:                                # %do.body.13
	jmp	.LBB15_13
.LBB15_13:                              # %do.end.14
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB15_15
# BB#14:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB15_16
.LBB15_15:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB15_16:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	FreePerp
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	FreePerp
.LBB15_17:                              # %if.end.20
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	display, %rcx
	movq	%rax, 336(%rcx)
	movq	display, %rax
	cmpq	$0, 336(%rax)
	jne	.LBB15_19
# BB#18:                                # %if.then.26
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	display, %rcx
	movq	%rax, 336(%rcx)
.LBB15_19:                              # %if.end.29
	movq	-16(%rbp), %rdi
	callq	FreeCanvas
	movq	display, %rdi
	movq	336(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB15_20:                              # %while.cond.31
                                        # =>This Inner Loop Header: Depth=1
	movq	display, %rax
	movq	336(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_22
# BB#21:                                # %while.body.34
                                        #   in Loop: Header=BB15_20 Depth=1
	movq	display, %rax
	movq	336(%rax), %rax
	movq	32(%rax), %rax
	movq	display, %rcx
	movq	%rax, 336(%rcx)
	jmp	.LBB15_20
.LBB15_22:                              # %while.end.38
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB15_29
# BB#23:                                # %land.lhs.true.41
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB15_29
# BB#24:                                # %land.lhs.true.44
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB15_29
# BB#25:                                # %land.lhs.true.48
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB15_29
# BB#26:                                # %if.then.51
	movq	-16(%rbp), %rax
	movl	$0, 48(%rax)
	cmpl	$0, captionalways
	jne	.LBB15_28
# BB#27:                                # %if.then.54
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movl	%eax, 228(%rcx)
.LBB15_28:                              # %if.end.57
	jmp	.LBB15_29
.LBB15_29:                              # %if.end.58
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	EqualizeCanvas
	movq	-16(%rbp), %rdi
	callq	ResizeCanvas
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	display, %rdi
	movq	%rax, 376(%rdi)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	callq	RecreateCanvasChain
	callq	RethinkDisplayViewports
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	ResizeLayersToCanvases
.LBB15_30:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	RemCanvas, .Lfunc_end15-RemCanvas
	.cfi_endproc

	.globl	OneCanvas
	.align	16, 0x90
	.type	OneCanvas,@function
OneCanvas:                              # @OneCanvas
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
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, 16(%rcx)
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 24(%rcx)
.LBB16_4:                               # %if.end.11
	cmpq	$0, -16(%rbp)
	jne	.LBB16_6
# BB#5:                                 # %if.then.13
	jmp	.LBB16_17
.LBB16_6:                               # %if.end.14
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB16_9
# BB#7:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB16_9
# BB#8:                                 # %if.then.17
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, 32(%rcx)
.LBB16_9:                               # %if.end.20
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.LBB16_10:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	display, %rax
	cmpq	$0, 48(%rax)
	je	.LBB16_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB16_10 Depth=1
	movq	display, %rax
	movq	48(%rax), %rdi
	callq	FreeCanvas
	jmp	.LBB16_10
.LBB16_12:                              # %while.end
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	display, %rcx
	movq	%rax, 48(%rcx)
	movq	display, %rax
	addq	$16, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
# BB#13:                                # %do.body
	jmp	.LBB16_14
.LBB16_14:                              # %do.end
	cmpl	$0, captionalways
	jne	.LBB16_16
# BB#15:                                # %if.then.33
	movq	display, %rax
	movl	244(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 244(%rax)
.LBB16_16:                              # %if.end.35
	movq	display, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	ResizeCanvas
	callq	RecreateCanvasChain
	callq	RethinkDisplayViewports
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	ResizeLayersToCanvases
.LBB16_17:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	OneCanvas, .Lfunc_end16-OneCanvas
	.cfi_endproc

	.globl	DupLayoutCv
	.align	16, 0x90
	.type	DupLayoutCv,@function
DupLayoutCv:                            # @DupLayoutCv
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB17_20
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 52(%rax)
	movq	-8(%rbp), %rax
	movq	display, %rdx
	cmpq	336(%rdx), %rax
	jne	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	movq	display, %rcx
	movq	%rax, 336(%rcx)
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB17_8
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	display, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB17_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB17_1 Depth=1
	movabsq	$BlankLf, %rax
	movabsq	$cv_winid_fn, %rcx
	movq	-16(%rbp), %rdx
	movl	$0, 260(%rdx)
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, 248(%rsi)
	movq	-16(%rbp), %rdx
	movq	%rcx, 240(%rdx)
	movq	-16(%rbp), %rcx
	movq	$0, 80(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 136(%rcx)
.LBB17_7:                               # %if.end.13
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx)
	jmp	.LBB17_15
.LBB17_8:                               # %if.else
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB17_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB17_11
.LBB17_10:                              # %cond.false
                                        #   in Loop: Header=BB17_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB17_11
.LBB17_11:                              # %cond.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_13
# BB#12:                                # %cond.true.20
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB17_14
.LBB17_13:                              # %cond.false.21
                                        #   in Loop: Header=BB17_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB17_14
.LBB17_14:                              # %cond.end.22
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx)
.LBB17_15:                              # %if.end.25
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB17_17
# BB#16:                                # %if.then.28
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movl	$312, %eax              # imm = 0x138
	movl	%eax, %esi
	callq	calloc
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 40(%rsi)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	CanvasInitBlank
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-20(%rbp), %edx
	callq	DupLayoutCv
.LBB17_17:                              # %if.end.34
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB17_19
# BB#18:                                # %if.then.36
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movl	$312, %eax              # imm = 0x138
	movl	%eax, %esi
	callq	calloc
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, 24(%rsi)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, 40(%rsi)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	CanvasInitBlank
.LBB17_19:                              # %if.end.44
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB17_1
.LBB17_20:                              # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	DupLayoutCv, .Lfunc_end17-DupLayoutCv
	.cfi_endproc

	.globl	PutWindowCv
	.align	16, 0x90
	.type	PutWindowCv,@function
PutWindowCv:                            # @PutWindowCv
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
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB18_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB18_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	PutWindowCv
	jmp	.LBB18_8
.LBB18_4:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB18_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB18_7
.LBB18_6:                               # %cond.false
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB18_7
.LBB18_7:                               # %cond.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	SetCanvasWindow
.LBB18_8:                               # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_1
.LBB18_9:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	PutWindowCv, .Lfunc_end18-PutWindowCv
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
