	.text
	.file	"gdevlips.bc"
	.globl	lips_media_selection
	.align	16, 0x90
	.type	lips_media_selection,@function
lips_media_selection:                   # @lips_media_selection
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	%esi, %edi
	setg	%al
	movl	%esi, %ecx
	cmovgel	%edi, %ecx
	movzbl	%al, %eax
	cmovgl	%esi, %edi
	cmpl	$594, %edi              # imm = 0x252
	jg	.LBB0_10
# BB#1:                                 # %entry
	cmpl	$420, %edi              # imm = 0x1A4
	jg	.LBB0_6
# BB#2:                                 # %entry
	cmpl	$284, %edi              # imm = 0x11C
	je	.LBB0_25
# BB#3:                                 # %entry
	cmpl	$298, %edi              # imm = 0x12A
	jne	.LBB0_4
# BB#29:                                # %land.lhs.true.12
	movl	$lips_paper_table+152, %edx
	cmpl	$666, %ecx              # imm = 0x29A
	je	.LBB0_20
	jmp	.LBB0_30
.LBB0_10:                               # %entry
	cmpl	$728, %edi              # imm = 0x2D8
	jg	.LBB0_16
# BB#11:                                # %entry
	cmpl	$595, %edi              # imm = 0x253
	je	.LBB0_21
# BB#12:                                # %entry
	cmpl	$597, %edi              # imm = 0x255
	jne	.LBB0_13
# BB#23:                                # %land.lhs.true.2
	movl	$lips_paper_table+32, %edx
	jmp	.LBB0_22
.LBB0_6:                                # %entry
	cmpl	$421, %edi              # imm = 0x1A5
	je	.LBB0_24
# BB#7:                                 # %entry
	cmpl	$516, %edi              # imm = 0x204
	jne	.LBB0_8
# BB#27:                                # %land.lhs.true.6
	movl	$lips_paper_table+80, %edx
	cmpl	$729, %ecx              # imm = 0x2D9
	je	.LBB0_20
	jmp	.LBB0_30
.LBB0_16:                               # %entry
	cmpl	$729, %edi              # imm = 0x2D9
	je	.LBB0_26
# BB#17:                                # %entry
	cmpl	$792, %edi              # imm = 0x318
	jne	.LBB0_18
# BB#28:                                # %land.lhs.true.10
	movl	$lips_paper_table+128, %edx
	cmpl	$1224, %ecx             # imm = 0x4C8
	je	.LBB0_20
	jmp	.LBB0_30
.LBB0_25:                               # %land.lhs.true.4
	movl	$lips_paper_table+56, %edx
	cmpl	$419, %ecx              # imm = 0x1A3
	je	.LBB0_20
	jmp	.LBB0_30
.LBB0_4:                                # %entry
	cmpl	$363, %edi              # imm = 0x16B
	jne	.LBB0_30
# BB#5:                                 # %land.lhs.true.7
	movl	$lips_paper_table+92, %edx
	cmpl	$516, %ecx              # imm = 0x204
	je	.LBB0_20
	jmp	.LBB0_30
.LBB0_21:                               # %land.lhs.true.1
	movl	$lips_paper_table+20, %edx
.LBB0_22:                               # %land.lhs.true.1
	cmpl	$842, %ecx              # imm = 0x34A
	je	.LBB0_20
	jmp	.LBB0_30
.LBB0_13:                               # %entry
	cmpl	$612, %edi              # imm = 0x264
	jne	.LBB0_30
# BB#14:                                # %land.lhs.true.8
	movl	$lips_paper_table+104, %edx
	cmpl	$792, %ecx              # imm = 0x318
	je	.LBB0_20
# BB#15:                                # %land.lhs.true.9
	movl	$lips_paper_table+116, %edx
	cmpl	$1008, %ecx             # imm = 0x3F0
	je	.LBB0_20
	jmp	.LBB0_30
.LBB0_24:                               # %land.lhs.true.3
	movl	$lips_paper_table+44, %edx
	cmpl	$595, %ecx              # imm = 0x253
	je	.LBB0_20
	jmp	.LBB0_30
.LBB0_8:                                # %entry
	cmpl	$522, %edi              # imm = 0x20A
	jne	.LBB0_30
# BB#9:                                 # %land.lhs.true.11
	movl	$lips_paper_table+140, %edx
	cmpl	$756, %ecx              # imm = 0x2F4
	je	.LBB0_20
	jmp	.LBB0_30
.LBB0_26:                               # %land.lhs.true.5
	movl	$lips_paper_table+68, %edx
	cmpl	$1032, %ecx             # imm = 0x408
	je	.LBB0_20
	jmp	.LBB0_30
.LBB0_18:                               # %entry
	cmpl	$842, %edi              # imm = 0x34A
	jne	.LBB0_30
# BB#19:                                # %land.lhs.true
	movl	$lips_paper_table+8, %edx
	cmpl	$1190, %ecx             # imm = 0x4A6
	jne	.LBB0_30
.LBB0_20:                               # %for.end
	addl	(%rdx), %eax
	retq
.LBB0_30:                               # %for.inc.12
	movl	$lips_paper_table+164, %edx
	addl	(%rdx), %eax
	retq
.Lfunc_end0:
	.size	lips_media_selection, .Lfunc_end0-lips_media_selection
	.cfi_endproc

	.globl	lips_packbits_encode
	.align	16, 0x90
	.type	lips_packbits_encode,@function
lips_packbits_encode:                   # @lips_packbits_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB1_30
# BB#1:
	movl	$128, %r13d
	.align	16, 0x90
.LBB1_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_27 Depth 2
	cmpl	$128, %edx
	movl	%edx, %ecx
	cmovgl	%r13d, %ecx
	cmpl	$1, %ecx
	movl	$1, %r9d
	je	.LBB1_10
# BB#3:                                 # %while.cond.preheader.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	(%rdi), %r10b
	movslq	%ecx, %r8
	movl	$1, %ecx
	.align	16, 0x90
.LBB1_4:                                # %while.cond.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r9
	cmpq	%r8, %r9
	jge	.LBB1_6
# BB#5:                                 # %while.cond.i
                                        #   in Loop: Header=BB1_4 Depth=2
	leaq	1(%r9), %rcx
	movzbl	(%rdi,%r9), %ebp
	movzbl	%r10b, %ebx
	cmpl	%ebp, %ebx
	je	.LBB1_4
.LBB1_6:                                # %GetNumSameData.exit
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1, %r9d
	jle	.LBB1_7
# BB#31:                                # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	$2, %eax
	movl	$1, %ecx
	subl	%r9d, %ecx
	movb	%cl, (%rsi)
	movb	(%rdi), %cl
	movb	%cl, 1(%rsi)
	addq	$2, %rsi
	movslq	%r9d, %rcx
	addq	%rcx, %rdi
	movq	%rsi, %r10
	jmp	.LBB1_29
	.align	16, 0x90
.LBB1_7:                                # %while.cond.i.29.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_8:                                # %while.cond.i.29
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r9
	cmpq	%r8, %r9
	jge	.LBB1_10
# BB#9:                                 # %while.cond.i.29
                                        #   in Loop: Header=BB1_8 Depth=2
	movzbl	%r10b, %ebp
	movb	1(%rdi,%r9), %r10b
	leaq	1(%r9), %rcx
	movzbl	%r10b, %ebx
	cmpl	%ebx, %ebp
	jne	.LBB1_8
	.align	16, 0x90
.LBB1_10:                               # %GetNumWrongData.exit
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rax,%r9), %eax
	leal	255(%r9), %ecx
	movb	%cl, (%rsi)
	leaq	1(%rsi), %r10
	testl	%r9d, %r9d
	je	.LBB1_11
# BB#12:                                # %while.body.20.lr.ph
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-1(%r9), %r11d
	leaq	1(%r11), %r15
	movq	%r15, %r12
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %r12
	je	.LBB1_13
# BB#14:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	(%rdi,%r11), %rcx
	cmpq	%rcx, %r10
	ja	.LBB1_16
# BB#15:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	1(%rsi,%r11), %rcx
	cmpq	%rcx, %rdi
	ja	.LBB1_16
.LBB1_13:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r9d, %r14d
	movq	%rdi, %rbx
	xorl	%r12d, %r12d
	jmp	.LBB1_22
	.align	16, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_2 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB1_29
.LBB1_16:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	1(%r11), %rcx
	movabsq	$8589934560, %rbp       # imm = 0x1FFFFFFE0
	andq	%rbp, %rcx
	addq	$-32, %rcx
	movq	%rcx, %rbp
	shrq	$5, %rbp
	btq	$5, %rcx
	movl	$0, %r8d
	jb	.LBB1_18
# BB#17:                                # %vector.body.prol
                                        #   in Loop: Header=BB1_2 Depth=1
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm0, 1(%rsi)
	movups	%xmm1, 17(%rsi)
	movl	$32, %r8d
.LBB1_18:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r12, %r10
	movl	%r9d, %r14d
	subl	%r12d, %r14d
	leaq	(%rdi,%r12), %rbx
	testq	%rbp, %rbp
	je	.LBB1_22
# BB#19:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r11, %r13
	incq	%r13
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %r13
	subq	%r8, %r13
	leaq	48(%rdi,%r8), %rbp
	leaq	49(%rsi,%r8), %r8
	.align	16, 0x90
.LBB1_20:                               # %vector.body
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rbp), %xmm0
	movups	-32(%rbp), %xmm1
	movups	%xmm0, -48(%r8)
	movups	%xmm1, -32(%r8)
	movups	-16(%rbp), %xmm0
	movups	(%rbp), %xmm1
	movups	%xmm0, -16(%r8)
	movups	%xmm1, (%r8)
	addq	$64, %rbp
	addq	$64, %r8
	addq	$-64, %r13
	jne	.LBB1_20
# BB#21:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$128, %r13d
	.align	16, 0x90
.LBB1_22:                               # %middle.block
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rdi
	cmpq	%r12, %r15
	je	.LBB1_28
# BB#23:                                # %while.body.20.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-1(%r14), %r15d
	testb	$7, %r14b
	je	.LBB1_26
# BB#24:                                # %while.body.20.prol.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r14d, %ebp
	andl	$7, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB1_25:                               # %while.body.20.prol
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%r14d
	movb	(%rbx), %cl
	incq	%rbx
	movb	%cl, (%r10)
	incq	%r10
	incl	%ebp
	jne	.LBB1_25
.LBB1_26:                               # %while.body.20.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$7, %r15d
	jb	.LBB1_28
	.align	16, 0x90
.LBB1_27:                               # %while.body.20
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rbx), %cl
	movb	%cl, (%r10)
	movb	1(%rbx), %cl
	movb	%cl, 1(%r10)
	movb	2(%rbx), %cl
	movb	%cl, 2(%r10)
	movb	3(%rbx), %cl
	movb	%cl, 3(%r10)
	movb	4(%rbx), %cl
	movb	%cl, 4(%r10)
	movb	5(%rbx), %cl
	movb	%cl, 5(%r10)
	movb	6(%rbx), %cl
	movb	%cl, 6(%r10)
	addl	$-8, %r14d
	movb	7(%rbx), %cl
	leaq	8(%rbx), %rbx
	movb	%cl, 7(%r10)
	leaq	8(%r10), %r10
	jne	.LBB1_27
.LBB1_28:                               # %while.cond.18.if.end.loopexit_crit_edge
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	2(%rsi,%r11), %r10
	addq	%r11, %rdi
.LBB1_29:                               # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	subl	%r9d, %edx
	movq	%r10, %rsi
	jne	.LBB1_2
.LBB1_30:                               # %while.end.23
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lips_packbits_encode, .Lfunc_end1-lips_packbits_encode
	.cfi_endproc

	.globl	lips_mode3format_encode
	.align	16, 0x90
	.type	lips_mode3format_encode,@function
lips_mode3format_encode:                # @lips_mode3format_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 56
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsi, %r9
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB2_33
# BB#1:
	movl	$257, %r13d             # imm = 0x101
	.align	16, 0x90
.LBB2_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_18 Depth 2
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_28 Depth 2
                                        #     Child Loop BB2_30 Depth 2
	cmpl	$257, %edx              # imm = 0x101
	movl	%edx, %ebp
	cmovgl	%r13d, %ebp
	cmpl	$1, %ebp
	je	.LBB2_8
# BB#3:                                 # %while.cond.preheader.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movb	(%rdi), %r8b
	movslq	%ebp, %r10
	movl	$1, %ebx
	.align	16, 0x90
.LBB2_4:                                # %while.cond.i
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %r14
	cmpq	%r10, %r14
	jge	.LBB2_6
# BB#5:                                 # %while.cond.i
                                        #   in Loop: Header=BB2_4 Depth=2
	leaq	1(%r14), %rbx
	movzbl	(%rdi,%r14), %ecx
	movzbl	%r8b, %ebp
	cmpl	%ecx, %ebp
	je	.LBB2_4
.LBB2_6:                                # %GetNumSameData.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$2, %r14d
	jl	.LBB2_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB2_2 Depth=1
	addl	$3, %eax
	movb	%r8b, (%r9)
	movb	(%rdi), %cl
	movb	%cl, 1(%r9)
	leal	254(%r14), %ecx
	movb	%cl, 2(%r9)
	addq	$3, %r9
	movslq	%r14d, %rcx
	addq	%rcx, %rdi
	jmp	.LBB2_32
	.align	16, 0x90
.LBB2_8:                                # %if.else
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$1, %edx
	jne	.LBB2_17
# BB#9:                                 # %GetNumWrongData.exit.thread
                                        #   in Loop: Header=BB2_2 Depth=1
	incl	%eax
	movl	$1, %r14d
	jmp	.LBB2_10
	.align	16, 0x90
.LBB2_17:                               # %while.cond.preheader.i.24
                                        #   in Loop: Header=BB2_2 Depth=1
	movslq	%edx, %r8
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_18:                               # %while.cond.i.28
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %r14
	cmpq	%r8, %r14
	jge	.LBB2_20
# BB#19:                                # %while.cond.i.28
                                        #   in Loop: Header=BB2_18 Depth=2
	leaq	1(%r14), %rbp
	movzbl	1(%rdi,%r14), %ebx
	movzbl	(%rdi,%r14), %ecx
	cmpl	%ebx, %ecx
	jne	.LBB2_18
.LBB2_20:                               # %GetNumWrongData.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	(%rax,%r14), %eax
	testl	%r14d, %r14d
	je	.LBB2_21
.LBB2_10:                               # %while.body.10.lr.ph
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	-1(%r14), %r10d
	leaq	1(%r10), %r15
	movq	%r15, %r12
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %r12
	movl	%r14d, %r11d
	movq	%r9, %rsi
	movq	%rdi, %rcx
	movl	$0, %ebp
	je	.LBB2_25
# BB#11:                                # %vector.memcheck
                                        #   in Loop: Header=BB2_2 Depth=1
	leaq	(%rdi,%r10), %rcx
	cmpq	%rcx, %r9
	ja	.LBB2_13
# BB#12:                                # %vector.memcheck
                                        #   in Loop: Header=BB2_2 Depth=1
	leaq	(%r9,%r10), %rcx
	cmpq	%rcx, %rdi
	movl	%r14d, %r11d
	movq	%r9, %rsi
	movq	%rdi, %rcx
	movl	$0, %ebp
	jbe	.LBB2_25
.LBB2_13:                               # %vector.body.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	leaq	1(%r10), %rcx
	movabsq	$8589934560, %rsi       # imm = 0x1FFFFFFE0
	andq	%rsi, %rcx
	addq	$-32, %rcx
	movq	%rcx, %rbp
	shrq	$5, %rbp
	btq	$5, %rcx
	movl	$0, %r8d
	jb	.LBB2_15
# BB#14:                                # %vector.body.prol
                                        #   in Loop: Header=BB2_2 Depth=1
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm0, (%r9)
	movups	%xmm1, 16(%r9)
	movl	$32, %r8d
.LBB2_15:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%r14d, %r11d
	subl	%r12d, %r11d
	leaq	(%r9,%r12), %rsi
	leaq	(%rdi,%r12), %rcx
	testq	%rbp, %rbp
	je	.LBB2_16
# BB#22:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r10, %r13
	incq	%r13
	movabsq	$8589934560, %rbx       # imm = 0x1FFFFFFE0
	andq	%rbx, %r13
	subq	%r8, %r13
	leaq	48(%rdi,%r8), %rbp
	leaq	48(%r9,%r8), %r8
	.align	16, 0x90
.LBB2_23:                               # %vector.body
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rbp), %xmm0
	movups	-32(%rbp), %xmm1
	movups	%xmm0, -48(%r8)
	movups	%xmm1, -32(%r8)
	movups	-16(%rbp), %xmm0
	movups	(%rbp), %xmm1
	movups	%xmm0, -16(%r8)
	movups	%xmm1, (%r8)
	addq	$64, %rbp
	addq	$64, %r8
	addq	$-64, %r13
	jne	.LBB2_23
# BB#24:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %rbp
	movl	$257, %r13d             # imm = 0x101
	jmp	.LBB2_25
.LBB2_21:                               #   in Loop: Header=BB2_2 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB2_32
.LBB2_16:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %rbp
	.align	16, 0x90
.LBB2_25:                               # %middle.block
                                        #   in Loop: Header=BB2_2 Depth=1
	incq	%rdi
	cmpq	%rbp, %r15
	je	.LBB2_31
# BB#26:                                # %while.body.10.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	-1(%r11), %r15d
	testb	$7, %r11b
	je	.LBB2_29
# BB#27:                                # %while.body.10.prol.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%r11d, %ebp
	andl	$7, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB2_28:                               # %while.body.10.prol
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%r11d
	movb	(%rcx), %r8b
	incq	%rcx
	movb	%r8b, (%rsi)
	incq	%rsi
	incl	%ebp
	jne	.LBB2_28
.LBB2_29:                               # %while.body.10.preheader.split
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$7, %r15d
	jb	.LBB2_31
	.align	16, 0x90
.LBB2_30:                               # %while.body.10
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rcx), %bl
	movb	%bl, (%rsi)
	movb	1(%rcx), %bl
	movb	%bl, 1(%rsi)
	movb	2(%rcx), %bl
	movb	%bl, 2(%rsi)
	movb	3(%rcx), %bl
	movb	%bl, 3(%rsi)
	movb	4(%rcx), %bl
	movb	%bl, 4(%rsi)
	movb	5(%rcx), %bl
	movb	%bl, 5(%rsi)
	movb	6(%rcx), %bl
	movb	%bl, 6(%rsi)
	addl	$-8, %r11d
	movb	7(%rcx), %bl
	leaq	8(%rcx), %rcx
	movb	%bl, 7(%rsi)
	leaq	8(%rsi), %rsi
	jne	.LBB2_30
.LBB2_31:                               # %while.cond.8.if.end.loopexit_crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	leaq	1(%r9,%r10), %r9
	addq	%r10, %rdi
.LBB2_32:                               # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	subl	%r14d, %edx
	jne	.LBB2_2
.LBB2_33:                               # %while.end.13
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lips_mode3format_encode, .Lfunc_end2-lips_mode3format_encode
	.cfi_endproc

	.globl	lips_rle_encode
	.align	16, 0x90
	.type	lips_rle_encode,@function
lips_rle_encode:                        # @lips_rle_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movslq	%edx, %rcx
	xorl	%eax, %eax
	leaq	(%rcx,%rdi), %r9
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_9:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	movb	%cl, (%rsi)
	movb	%r8b, 1(%rsi)
	addq	$2, %rsi
	addl	$2, %eax
.LBB3_1:                                # %while.cond.outer.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
                                        #       Child Loop BB3_3 Depth 3
	movb	(%rdi), %r8b
	movq	%rdi, %r10
	jmp	.LBB3_2
.LBB3_22:                               # %if.then.6
                                        #   in Loop: Header=BB3_2 Depth=2
	leaq	4(%r10,%rcx), %r10
	movb	$-1, (%rsi)
	movb	%r8b, 1(%rsi)
	addq	$2, %rsi
	addl	$2, %eax
	.align	16, 0x90
.LBB3_2:                                # %while.cond.outer
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_3 Depth 3
	xorl	%edx, %edx
	movq	%r10, %r11
.LBB3_3:                                # %while.cond
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdx, %rcx
	leaq	1(%r10,%rcx), %rdi
	cmpq	%r9, %rdi
	jae	.LBB3_11
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB3_3 Depth=3
	movzbl	%r8b, %edx
	movzbl	(%rdi), %edi
	cmpl	%edx, %edi
	jne	.LBB3_5
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB3_3 Depth=3
	movl	%ecx, %ebx
	orl	$1, %ebx
	leaq	2(%r10,%rcx), %rdi
	cmpq	%r9, %rdi
	jae	.LBB3_7
# BB#12:                                # %while.body.1
                                        #   in Loop: Header=BB3_3 Depth=3
	movzbl	(%rdi), %edi
	cmpl	%edx, %edi
	jne	.LBB3_13
# BB#15:                                # %if.then.1
                                        #   in Loop: Header=BB3_3 Depth=3
	movl	%ecx, %ebx
	orl	$2, %ebx
	leaq	3(%r10,%rcx), %rdi
	cmpq	%r9, %rdi
	jae	.LBB3_16
# BB#17:                                # %while.body.2
                                        #   in Loop: Header=BB3_3 Depth=3
	movzbl	(%rdi), %edi
	cmpl	%edx, %edi
	jne	.LBB3_18
# BB#19:                                # %if.then.2
                                        #   in Loop: Header=BB3_3 Depth=3
	leaq	4(%r10,%rcx), %rdi
	cmpq	%r9, %rdi
	jae	.LBB3_10
# BB#20:                                # %while.body.3
                                        #   in Loop: Header=BB3_3 Depth=3
	movzbl	(%rdi), %ebx
	cmpl	%edx, %ebx
	jne	.LBB3_8
# BB#21:                                # %if.then.3
                                        #   in Loop: Header=BB3_3 Depth=3
	addq	$4, %r11
	leaq	4(%rcx), %rdx
	leal	-1(%rdx), %edi
	cmpl	$254, %edi
	jle	.LBB3_3
	jmp	.LBB3_22
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	incq	%r11
	movq	%r11, %rdi
	jmp	.LBB3_9
.LBB3_13:                               #   in Loop: Header=BB3_1 Depth=1
	addq	$2, %r11
	jmp	.LBB3_14
.LBB3_18:                               #   in Loop: Header=BB3_1 Depth=1
	addq	$3, %r11
.LBB3_14:                               # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%r11, %rdi
	movl	%ebx, %ecx
	jmp	.LBB3_9
.LBB3_8:                                # %while.body.3.if.else_crit_edge
                                        #   in Loop: Header=BB3_1 Depth=1
	addl	$3, %ecx
	jmp	.LBB3_9
.LBB3_7:
	movl	%ebx, %ecx
	jmp	.LBB3_11
.LBB3_16:
	movl	%ebx, %ecx
	jmp	.LBB3_11
.LBB3_10:                               # %if.then.2.while.end_crit_edge
	addl	$3, %ecx
.LBB3_11:                               # %while.end
	movb	%cl, (%rsi)
	movb	%r8b, 1(%rsi)
	addl	$2, %eax
	popq	%rbx
	retq
.Lfunc_end3:
	.size	lips_rle_encode, .Lfunc_end3-lips_rle_encode
	.cfi_endproc

	.type	lips_paper_table,@object # @lips_paper_table
	.section	.rodata,"a",@progbits
	.align	16
lips_paper_table:
	.long	842                     # 0x34a
	.long	1190                    # 0x4a6
	.long	12                      # 0xc
	.long	595                     # 0x253
	.long	842                     # 0x34a
	.long	14                      # 0xe
	.long	597                     # 0x255
	.long	842                     # 0x34a
	.long	14                      # 0xe
	.long	421                     # 0x1a5
	.long	595                     # 0x253
	.long	16                      # 0x10
	.long	284                     # 0x11c
	.long	419                     # 0x1a3
	.long	18                      # 0x12
	.long	729                     # 0x2d9
	.long	1032                    # 0x408
	.long	24                      # 0x18
	.long	516                     # 0x204
	.long	729                     # 0x2d9
	.long	26                      # 0x1a
	.long	363                     # 0x16b
	.long	516                     # 0x204
	.long	28                      # 0x1c
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	30                      # 0x1e
	.long	612                     # 0x264
	.long	1008                    # 0x3f0
	.long	32                      # 0x20
	.long	792                     # 0x318
	.long	1224                    # 0x4c8
	.long	34                      # 0x22
	.long	522                     # 0x20a
	.long	756                     # 0x2f4
	.long	40                      # 0x28
	.long	298                     # 0x12a
	.long	666                     # 0x29a
	.long	50                      # 0x32
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	80                      # 0x50
	.size	lips_paper_table, 168


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
