	.text
	.file	"sgi-lib.bc"
	.globl	sgiClose
	.align	16, 0x90
	.type	sgiClose,@function
sgiClose:                               # @sgiClose
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
	movl	$-1, -4(%rbp)
	jmp	.LBB0_24
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB0_17
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_17
# BB#4:                                 # %if.then.3
	movl	$512, %eax              # imm = 0x200
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	fseek
	movq	-16(%rbp), %rcx
	movzwl	26(%rcx), %edx
	movq	-16(%rbp), %rcx
	movzwl	28(%rcx), %r8d
	imull	%r8d, %edx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB0_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB0_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	putlong
	cmpl	$0, %eax
	jge	.LBB0_8
# BB#7:                                 # %if.then.11
	movl	$-1, -4(%rbp)
	jmp	.LBB0_24
.LBB0_8:                                # %if.end.12
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB0_5
.LBB0_10:                               # %for.end
	movq	-16(%rbp), %rax
	movzwl	26(%rax), %ecx
	movq	-16(%rbp), %rax
	movzwl	28(%rax), %edx
	imull	%edx, %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB0_11:                               # %for.cond.19
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB0_16
# BB#12:                                # %for.body.22
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	putlong
	cmpl	$0, %eax
	jge	.LBB0_14
# BB#13:                                # %if.then.27
	movl	$-1, -4(%rbp)
	jmp	.LBB0_24
.LBB0_14:                               # %if.end.28
                                        #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               # %for.inc.29
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB0_11
.LBB0_16:                               # %for.end.32
	jmp	.LBB0_17
.LBB0_17:                               # %if.end.33
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB0_19
# BB#18:                                # %if.then.37
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_19:                               # %if.end.41
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB0_21
# BB#20:                                # %if.then.45
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_21:                               # %if.end.49
	movq	-16(%rbp), %rax
	cmpl	$2, 16(%rax)
	jne	.LBB0_23
# BB#22:                                # %if.then.53
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_23:                               # %if.end.54
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	fclose
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	free
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_24:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sgiClose, .Lfunc_end0-sgiClose
	.cfi_endproc

	.align	16, 0x90
	.type	putlong,@function
putlong:                                # @putlong
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	sarq	$24, %rsi
	movl	%esi, %eax
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB1_9
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rax
	sarq	$16, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movl	%ecx, %edi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then.8
	movl	$-1, -4(%rbp)
	jmp	.LBB1_9
.LBB1_4:                                # %if.end.9
	movq	-16(%rbp), %rax
	sarq	$8, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movl	%ecx, %edi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.16
	movl	$-1, -4(%rbp)
	jmp	.LBB1_9
.LBB1_6:                                # %if.end.17
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movl	%ecx, %edi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.23
	movl	$-1, -4(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movl	$0, -4(%rbp)
.LBB1_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	putlong, .Lfunc_end1-putlong
	.cfi_endproc

	.globl	sgiGetRow
	.align	16, 0x90
	.type	sgiGetRow,@function
sgiGetRow:                              # @sgiGetRow
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_6
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -24(%rbp)
	je	.LBB2_6
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$0, -28(%rbp)
	jl	.LBB2_6
# BB#3:                                 # %lor.lhs.false.4
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	26(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB2_6
# BB#4:                                 # %lor.lhs.false.7
	cmpl	$0, -32(%rbp)
	jl	.LBB2_6
# BB#5:                                 # %lor.lhs.false.10
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	28(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB2_7
.LBB2_6:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB2_28
.LBB2_7:                                # %if.end
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB2_8
	jmp	.LBB2_29
.LBB2_29:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB2_22
	jmp	.LBB2_27
.LBB2_8:                                # %sw.bb
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movzwl	26(%rdx), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movzwl	24(%rdx), %ecx
	imull	%ecx, %eax
	movq	-16(%rbp), %rdx
	imull	12(%rdx), %eax
	addl	$512, %eax              # imm = 0x200
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	ftell
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB2_10
# BB#9:                                 # %if.then.23
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	fseek
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB2_10:                               # %if.end.26
	movq	-16(%rbp), %rax
	cmpl	$1, 12(%rax)
	jne	.LBB2_16
# BB#11:                                # %if.then.30
	movq	-16(%rbp), %rax
	movzwl	24(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB2_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jle	.LBB2_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_IO_getc
	movw	%ax, %cx
	movq	-24(%rbp), %rdi
	movw	%cx, (%rdi)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB2_12
.LBB2_15:                               # %for.end
	jmp	.LBB2_21
.LBB2_16:                               # %if.else
	movq	-16(%rbp), %rax
	movzwl	24(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB2_17:                               # %for.cond.40
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jle	.LBB2_20
# BB#18:                                # %for.body.43
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	-16(%rbp), %rdi
	callq	getshort
	movw	%ax, %cx
	movq	-24(%rbp), %rdi
	movw	%cx, (%rdi)
# BB#19:                                # %for.inc.46
                                        #   in Loop: Header=BB2_17 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB2_17
.LBB2_20:                               # %for.end.49
	jmp	.LBB2_21
.LBB2_21:                               # %if.end.50
	jmp	.LBB2_27
.LBB2_22:                               # %sw.bb.51
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	ftell
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_24
# BB#23:                                # %if.then.58
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	fseek
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB2_24:                               # %if.end.61
	movq	-16(%rbp), %rax
	cmpl	$1, 12(%rax)
	jne	.LBB2_26
# BB#25:                                # %if.then.65
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movzwl	24(%rax), %edx
	callq	read_rle8
	movl	%eax, -4(%rbp)
	jmp	.LBB2_28
.LBB2_26:                               # %if.else.69
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movzwl	24(%rax), %edx
	callq	read_rle16
	movl	%eax, -4(%rbp)
	jmp	.LBB2_28
.LBB2_27:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB2_28:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sgiGetRow, .Lfunc_end2-sgiGetRow
	.cfi_endproc

	.align	16, 0x90
	.type	getshort,@function
getshort:                               # @getshort
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
	subq	$48, %rsp
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-18(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movq	-16(%rbp), %rcx
	cmpl	$0, 20(%rcx)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	je	.LBB3_2
# BB#1:                                 # %if.then
	movzbl	-17(%rbp), %eax
	shll	$8, %eax
	movzbl	-18(%rbp), %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movzbl	-18(%rbp), %eax
	shll	$8, %eax
	movzbl	-17(%rbp), %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB3_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	getshort, .Lfunc_end3-getshort
	.cfi_endproc

	.align	16, 0x90
	.type	read_rle8,@function
read_rle8:                              # @read_rle8
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -44(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
                                        #     Child Loop BB4_16 Depth 2
	cmpl	$0, -28(%rbp)
	jle	.LBB4_21
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_IO_getc
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB4_25
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	andl	$127, %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-36(%rbp), %eax
	andl	$127, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB4_7:                                # %cond.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB4_9
# BB#8:                                 # %if.then.5
	jmp	.LBB4_21
.LBB4_9:                                # %if.end.6
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-36(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB4_15
# BB#10:                                # %if.then.8
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -32(%rbp)
.LBB4_11:                               # %for.cond
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB4_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_IO_getc
	movw	%ax, %cx
	movq	-24(%rbp), %rdi
	movw	%cx, (%rdi)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -24(%rbp)
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_11
.LBB4_14:                               # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_20
.LBB4_15:                               # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_IO_getc
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -32(%rbp)
.LBB4_16:                               # %for.cond.17
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB4_19
# BB#17:                                # %for.body.20
                                        #   in Loop: Header=BB4_16 Depth=2
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rdx
	movw	%cx, (%rdx)
# BB#18:                                # %for.inc.22
                                        #   in Loop: Header=BB4_16 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -24(%rbp)
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB4_16
.LBB4_19:                               # %for.end.26
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.27
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_1
.LBB4_21:                               # %while.end
	cmpl	$0, -28(%rbp)
	jle	.LBB4_23
# BB#22:                                # %cond.true.30
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB4_24
.LBB4_23:                               # %cond.false.31
	movl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB4_24:                               # %cond.end.32
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB4_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	read_rle8, .Lfunc_end4-read_rle8
	.cfi_endproc

	.align	16, 0x90
	.type	read_rle16,@function
read_rle16:                             # @read_rle16
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -44(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
                                        #     Child Loop BB5_16 Depth 2
	cmpl	$0, -28(%rbp)
	jle	.LBB5_21
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	getshort
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	jne	.LBB5_4
# BB#3:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB5_25
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	andl	$127, %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB5_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	andl	$127, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB5_7
.LBB5_6:                                # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB5_7:                                # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB5_9
# BB#8:                                 # %if.then.5
	jmp	.LBB5_21
.LBB5_9:                                # %if.end.6
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB5_15
# BB#10:                                # %if.then.8
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -32(%rbp)
.LBB5_11:                               # %for.cond
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB5_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB5_11 Depth=2
	movq	-16(%rbp), %rdi
	callq	getshort
	movw	%ax, %cx
	movq	-24(%rbp), %rdi
	movw	%cx, (%rdi)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -24(%rbp)
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_11
.LBB5_14:                               # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_20
.LBB5_15:                               # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	getshort
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -32(%rbp)
.LBB5_16:                               # %for.cond.15
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB5_19
# BB#17:                                # %for.body.18
                                        #   in Loop: Header=BB5_16 Depth=2
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rdx
	movw	%cx, (%rdx)
# BB#18:                                # %for.inc.20
                                        #   in Loop: Header=BB5_16 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -24(%rbp)
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_16
.LBB5_19:                               # %for.end.24
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.25
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_21:                               # %while.end
	cmpl	$0, -28(%rbp)
	jle	.LBB5_23
# BB#22:                                # %cond.true.28
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB5_24
.LBB5_23:                               # %cond.false.29
	movl	-44(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB5_24:                               # %cond.end.30
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB5_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	read_rle16, .Lfunc_end5-read_rle16
	.cfi_endproc

	.globl	sgiOpen
	.align	16, 0x90
	.type	sgiOpen,@function
sgiOpen:                                # @sgiOpen
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
	subq	$80, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -56(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -56(%rbp)
.LBB6_3:                                # %if.end
	cmpq	$0, -56(%rbp)
	jne	.LBB6_5
# BB#4:                                 # %if.then.3
	movq	$0, -8(%rbp)
	jmp	.LBB6_8
.LBB6_5:                                # %if.end.4
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %eax
	movl	%eax, (%rsp)
	callq	sgiOpenFile
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB6_7
# BB#6:                                 # %if.then.7
	movq	-56(%rbp), %rdi
	callq	fclose
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB6_7:                                # %if.end.9
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	sgiOpen, .Lfunc_end6-sgiOpen
	.cfi_endproc

	.globl	sgiOpenFile
	.align	16, 0x90
	.type	sgiOpenFile,@function
sgiOpenFile:                            # @sgiOpenFile
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
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp24:
	.cfi_offset %rbx, -24
	movl	16(%rbp), %eax
	movl	$88, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	movl	%r10d, %ebx
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movq	%r11, %rdi
	movq	%rbx, %rsi
	callq	calloc
	movq	%rax, -160(%rbp)
	cmpq	$0, %rax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -16(%rbp)
	jmp	.LBB7_68
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-160(%rbp), %rax
	movl	$0, 20(%rax)
	movl	-28(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -164(%rbp)        # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_69
.LBB7_69:                               # %if.end
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB7_23
	jmp	.LBB7_66
.LBB7_3:                                # %sw.bb
	movq	-160(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-160(%rbp), %rdi
	callq	getshort
	movw	%ax, %cx
	movw	%cx, -146(%rbp)
	movswl	-146(%rbp), %eax
	cmpl	$474, %eax              # imm = 0x1DA
	je	.LBB7_8
# BB#4:                                 # %if.then.7
	movswl	-146(%rbp), %eax
	sarl	$8, %eax
	andl	$255, %eax
	movswl	-146(%rbp), %ecx
	shll	$8, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%ecx, %eax
	movw	%ax, %dx
	movw	%dx, -146(%rbp)
	movswl	-146(%rbp), %eax
	cmpl	$474, %eax              # imm = 0x1DA
	je	.LBB7_6
# BB#5:                                 # %if.then.15
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, -16(%rbp)
	jmp	.LBB7_68
.LBB7_6:                                # %if.else
	movq	-160(%rbp), %rax
	movl	$1, 20(%rax)
# BB#7:                                 # %if.end.17
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.18
	movq	-160(%rbp), %rax
	movq	(%rax), %rdi
	callq	_IO_getc
	movq	-160(%rbp), %rdi
	movl	%eax, 16(%rdi)
	movq	-160(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	_IO_getc
	movq	-160(%rbp), %rdi
	movl	%eax, 12(%rdi)
	movq	-160(%rbp), %rdi
	callq	getshort
	movq	-160(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	getshort
	movw	%ax, %cx
	movq	-160(%rbp), %rdi
	movw	%cx, 24(%rdi)
	movq	-160(%rbp), %rdi
	callq	getshort
	movw	%ax, %cx
	movq	-160(%rbp), %rdi
	movw	%cx, 26(%rdi)
	movq	-160(%rbp), %rdi
	callq	getshort
	movw	%ax, %cx
	movq	-160(%rbp), %rdi
	movw	%cx, 28(%rdi)
	movq	-160(%rbp), %rdi
	callq	getlong
	movq	-160(%rbp), %rdi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	getlong
	movq	-160(%rbp), %rdi
	cmpl	$0, 16(%rdi)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB7_22
# BB#9:                                 # %if.then.38
	movl	$512, %eax              # imm = 0x200
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-160(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	fseek
	movl	$8, %edx
	movl	%edx, %esi
	movq	-160(%rbp), %rcx
	movzwl	28(%rcx), %edx
	movl	%edx, %edi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	calloc
	movl	$8, %edx
	movl	%edx, %esi
	movq	-160(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-160(%rbp), %rax
	movzwl	26(%rax), %edx
	movq	-160(%rbp), %rax
	movzwl	28(%rax), %r8d
	imull	%r8d, %edx
	movslq	%edx, %rdi
	callq	calloc
	movq	-160(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
.LBB7_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-160(%rbp), %rcx
	movzwl	28(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB7_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	-160(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %ecx
	movq	-160(%rbp), %rdx
	movzwl	26(%rdx), %esi
	imull	%esi, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movslq	-52(%rbp), %rdx
	movq	-160(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, (%rdi,%rdx,8)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB7_10 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_10
.LBB7_13:                               # %for.end
	movl	$0, -52(%rbp)
.LBB7_14:                               # %for.cond.62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	movl	-52(%rbp), %eax
	movq	-160(%rbp), %rcx
	movzwl	28(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB7_21
# BB#15:                                # %for.body.67
                                        #   in Loop: Header=BB7_14 Depth=1
	movl	$0, -56(%rbp)
.LBB7_16:                               # %for.cond.68
                                        #   Parent Loop BB7_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	movq	-160(%rbp), %rcx
	movzwl	26(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB7_19
# BB#17:                                # %for.body.73
                                        #   in Loop: Header=BB7_16 Depth=2
	movq	-160(%rbp), %rdi
	callq	getlong
	movslq	%eax, %rdi
	movslq	-56(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rdi, (%rdx,%rcx,8)
# BB#18:                                # %for.inc.81
                                        #   in Loop: Header=BB7_16 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB7_16
.LBB7_19:                               # %for.end.83
                                        #   in Loop: Header=BB7_14 Depth=1
	jmp	.LBB7_20
.LBB7_20:                               # %for.inc.84
                                        #   in Loop: Header=BB7_14 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_14
.LBB7_21:                               # %for.end.86
	jmp	.LBB7_22
.LBB7_22:                               # %if.end.87
	jmp	.LBB7_67
.LBB7_23:                               # %sw.bb.88
	cmpl	$1, -40(%rbp)
	jl	.LBB7_30
# BB#24:                                # %lor.lhs.false
	cmpl	$1, -44(%rbp)
	jl	.LBB7_30
# BB#25:                                # %lor.lhs.false.93
	cmpl	$1, -48(%rbp)
	jl	.LBB7_30
# BB#26:                                # %lor.lhs.false.96
	cmpl	$1, -36(%rbp)
	jl	.LBB7_30
# BB#27:                                # %lor.lhs.false.99
	cmpl	$2, -36(%rbp)
	jg	.LBB7_30
# BB#28:                                # %lor.lhs.false.102
	cmpl	$0, -32(%rbp)
	jl	.LBB7_30
# BB#29:                                # %lor.lhs.false.105
	cmpl	$2, -32(%rbp)
	jle	.LBB7_31
.LBB7_30:                               # %if.then.108
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, -16(%rbp)
	jmp	.LBB7_68
.LBB7_31:                               # %if.end.109
	movl	$474, %edi              # imm = 0x1DA
	movq	-160(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-160(%rbp), %rsi
	callq	putshort
	movl	-32(%rbp), %edi
	movq	-160(%rbp), %rsi
	movl	%edi, 16(%rsi)
	cmpl	$0, %edi
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movq	-160(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movl	-36(%rbp), %edi
	movq	-160(%rbp), %rsi
	movl	%edi, 12(%rsi)
	movq	-160(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movl	$3, %edi
	movq	-160(%rbp), %rsi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	putshort
	movl	-40(%rbp), %edi
	movw	%di, %dx
	movq	-160(%rbp), %rsi
	movw	%dx, 24(%rsi)
	movq	-160(%rbp), %rsi
	movzwl	%dx, %edi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	putshort
	movl	-44(%rbp), %edi
	movw	%di, %dx
	movq	-160(%rbp), %rsi
	movw	%dx, 26(%rsi)
	movq	-160(%rbp), %rsi
	movzwl	%dx, %edi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	putshort
	movl	-48(%rbp), %edi
	movw	%di, %dx
	movq	-160(%rbp), %rsi
	movw	%dx, 28(%rsi)
	movq	-160(%rbp), %rsi
	movzwl	%dx, %edi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	putshort
	cmpl	$1, -36(%rbp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jne	.LBB7_33
# BB#32:                                # %if.then.132
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-160(%rbp), %rsi
	callq	putlong
	movl	$255, %ecx
	movl	%ecx, %edi
	movq	-160(%rbp), %rsi
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	putlong
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB7_34
.LBB7_33:                               # %if.else.135
	movq	$-32768, %rdi           # imm = 0xFFFFFFFFFFFF8000
	movq	-160(%rbp), %rsi
	callq	putlong
	movl	$32767, %ecx            # imm = 0x7FFF
	movl	%ecx, %edi
	movq	-160(%rbp), %rsi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	putlong
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB7_34:                               # %if.end.138
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-160(%rbp), %rsi
	callq	putlong
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rdi, %r8
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-248(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	memset
	movq	-160(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	fwrite
	movl	$0, -52(%rbp)
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB7_35:                               # %for.cond.142
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$102, -52(%rbp)
	jge	.LBB7_38
# BB#36:                                # %for.body.145
                                        #   in Loop: Header=BB7_35 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-160(%rbp), %rsi
	callq	putlong
	movl	%eax, -276(%rbp)        # 4-byte Spill
# BB#37:                                # %for.inc.147
                                        #   in Loop: Header=BB7_35 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_35
.LBB7_38:                               # %for.end.149
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	je	.LBB7_39
	jmp	.LBB7_70
.LBB7_70:                               # %for.end.149
	movl	-280(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	je	.LBB7_52
	jmp	.LBB7_71
.LBB7_71:                               # %for.end.149
	movl	-280(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	je	.LBB7_51
	jmp	.LBB7_65
.LBB7_39:                               # %sw.bb.150
	cmpl	$1, -36(%rbp)
	jne	.LBB7_45
# BB#40:                                # %if.then.153
	movl	-40(%rbp), %eax
	imull	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB7_41:                               # %for.cond.156
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jle	.LBB7_44
# BB#42:                                # %for.body.159
                                        #   in Loop: Header=BB7_41 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	(%rax), %rsi
	callq	_IO_putc
	movl	%eax, -292(%rbp)        # 4-byte Spill
# BB#43:                                # %for.inc.162
                                        #   in Loop: Header=BB7_41 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_41
.LBB7_44:                               # %for.end.163
	jmp	.LBB7_50
.LBB7_45:                               # %if.else.164
	movl	-40(%rbp), %eax
	imull	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB7_46:                               # %for.cond.167
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jle	.LBB7_49
# BB#47:                                # %for.body.170
                                        #   in Loop: Header=BB7_46 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rsi
	callq	putshort
	movl	%eax, -296(%rbp)        # 4-byte Spill
# BB#48:                                # %for.inc.172
                                        #   in Loop: Header=BB7_46 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_46
.LBB7_49:                               # %for.end.174
	jmp	.LBB7_50
.LBB7_50:                               # %if.end.175
	jmp	.LBB7_65
.LBB7_51:                               # %sw.bb.176
	movl	$2, %eax
	movl	%eax, %esi
	movslq	-40(%rbp), %rdi
	callq	calloc
	movq	-160(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-160(%rbp), %rax
	movq	$0, 72(%rax)
.LBB7_52:                               # %sw.bb.179
	movl	-44(%rbp), %eax
	shll	$1, %eax
	imull	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB7_53:                               # %for.cond.182
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jle	.LBB7_56
# BB#54:                                # %for.body.185
                                        #   in Loop: Header=BB7_53 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-160(%rbp), %rsi
	callq	putlong
	movl	%eax, -300(%rbp)        # 4-byte Spill
# BB#55:                                # %for.inc.187
                                        #   in Loop: Header=BB7_53 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_53
.LBB7_56:                               # %for.end.189
	movq	-160(%rbp), %rax
	movq	(%rax), %rdi
	callq	ftell
	movq	-160(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-160(%rbp), %rax
	movq	(%rax), %rdi
	callq	ftell
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-160(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-160(%rbp), %rax
	movzwl	28(%rax), %ecx
	movl	%ecx, %edi
	callq	calloc
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-160(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-160(%rbp), %rax
	movzwl	26(%rax), %ecx
	movq	-160(%rbp), %rax
	movzwl	28(%rax), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	callq	calloc
	movq	-160(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi)
	movl	$1, -52(%rbp)
.LBB7_57:                               # %for.cond.207
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-160(%rbp), %rcx
	movzwl	28(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB7_60
# BB#58:                                # %for.body.212
                                        #   in Loop: Header=BB7_57 Depth=1
	movq	-160(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %ecx
	movq	-160(%rbp), %rdx
	movzwl	26(%rdx), %esi
	imull	%esi, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movslq	-52(%rbp), %rdx
	movq	-160(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, (%rdi,%rdx,8)
# BB#59:                                # %for.inc.223
                                        #   in Loop: Header=BB7_57 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_57
.LBB7_60:                               # %for.end.225
	movl	$8, %eax
	movl	%eax, %esi
	movq	-160(%rbp), %rcx
	movzwl	28(%rcx), %eax
	movl	%eax, %edi
	callq	calloc
	movl	$8, %edx
	movl	%edx, %esi
	movq	-160(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-160(%rbp), %rax
	movzwl	26(%rax), %edx
	movq	-160(%rbp), %rax
	movzwl	28(%rax), %r8d
	imull	%r8d, %edx
	movslq	%edx, %rdi
	callq	calloc
	movq	-160(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rax, (%rcx)
	movl	$1, -52(%rbp)
.LBB7_61:                               # %for.cond.238
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-160(%rbp), %rcx
	movzwl	28(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB7_64
# BB#62:                                # %for.body.243
                                        #   in Loop: Header=BB7_61 Depth=1
	movq	-160(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %ecx
	movq	-160(%rbp), %rdx
	movzwl	26(%rdx), %esi
	imull	%esi, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movslq	-52(%rbp), %rdx
	movq	-160(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rax, (%rdi,%rdx,8)
# BB#63:                                # %for.inc.254
                                        #   in Loop: Header=BB7_61 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_61
.LBB7_64:                               # %for.end.256
	jmp	.LBB7_65
.LBB7_65:                               # %sw.epilog
	jmp	.LBB7_67
.LBB7_66:                               # %sw.default
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, -16(%rbp)
	jmp	.LBB7_68
.LBB7_67:                               # %sw.epilog.257
	movq	-160(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB7_68:                               # %return
	movq	-16(%rbp), %rax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sgiOpenFile, .Lfunc_end7-sgiOpenFile
	.cfi_endproc

	.align	16, 0x90
	.type	getlong,@function
getlong:                                # @getlong
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-20(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movq	-16(%rbp), %rcx
	cmpl	$0, 20(%rcx)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	je	.LBB8_2
# BB#1:                                 # %if.then
	movzbl	-17(%rbp), %eax
	shll	$24, %eax
	movzbl	-18(%rbp), %ecx
	shll	$16, %ecx
	orl	%ecx, %eax
	movzbl	-19(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movzbl	-20(%rbp), %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movzbl	-20(%rbp), %eax
	shll	$24, %eax
	movzbl	-19(%rbp), %ecx
	shll	$16, %ecx
	orl	%ecx, %eax
	movzbl	-18(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movzbl	-17(%rbp), %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB8_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	getlong, .Lfunc_end8-getlong
	.cfi_endproc

	.align	16, 0x90
	.type	putshort,@function
putshort:                               # @putshort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, %ax
	movw	%ax, -6(%rbp)
	movq	%rsi, -16(%rbp)
	movzwl	-6(%rbp), %edi
	sarl	$8, %edi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB9_5
.LBB9_2:                                # %if.end
	movzwl	-6(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB9_4
# BB#3:                                 # %if.then.7
	movl	$-1, -4(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	movl	$0, -4(%rbp)
.LBB9_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	putshort, .Lfunc_end9-putshort
	.cfi_endproc

	.globl	sgiPutRow
	.align	16, 0x90
	.type	sgiPutRow,@function
sgiPutRow:                              # @sgiPutRow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_6
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -24(%rbp)
	je	.LBB10_6
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$0, -28(%rbp)
	jl	.LBB10_6
# BB#3:                                 # %lor.lhs.false.4
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	26(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB10_6
# BB#4:                                 # %lor.lhs.false.7
	cmpl	$0, -32(%rbp)
	jl	.LBB10_6
# BB#5:                                 # %lor.lhs.false.10
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	28(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB10_7
.LBB10_6:                               # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB10_74
.LBB10_7:                               # %if.end
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB10_8
	jmp	.LBB10_75
.LBB10_75:                              # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB10_63
	jmp	.LBB10_76
.LBB10_76:                              # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB10_22
	jmp	.LBB10_73
.LBB10_8:                               # %sw.bb
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movzwl	26(%rdx), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movzwl	24(%rdx), %ecx
	imull	%ecx, %eax
	movq	-16(%rbp), %rdx
	imull	12(%rdx), %eax
	addl	$512, %eax              # imm = 0x200
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	ftell
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB10_10
# BB#9:                                 # %if.then.23
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	fseek
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB10_10:                              # %if.end.26
	movq	-16(%rbp), %rax
	cmpl	$1, 12(%rax)
	jne	.LBB10_16
# BB#11:                                # %if.then.30
	movq	-16(%rbp), %rax
	movzwl	24(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB10_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jle	.LBB10_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-24(%rbp), %rax
	movzwl	(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_IO_putc
	movl	%eax, -80(%rbp)         # 4-byte Spill
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB10_12 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB10_12
.LBB10_15:                              # %for.end
	jmp	.LBB10_21
.LBB10_16:                              # %if.else
	movq	-16(%rbp), %rax
	movzwl	24(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB10_17:                              # %for.cond.40
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jle	.LBB10_20
# BB#18:                                # %for.body.43
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	-24(%rbp), %rax
	movw	(%rax), %cx
	movq	-16(%rbp), %rsi
	movzwl	%cx, %edi
	callq	putshort
	movl	%eax, -84(%rbp)         # 4-byte Spill
# BB#19:                                # %for.inc.45
                                        #   in Loop: Header=BB10_17 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB10_17
.LBB10_20:                              # %for.end.48
	jmp	.LBB10_21
.LBB10_21:                              # %if.end.49
	jmp	.LBB10_73
.LBB10_22:                              # %sw.bb.50
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB10_24
# BB#23:                                # %if.then.55
	movl	$-1, -4(%rbp)
	jmp	.LBB10_74
.LBB10_24:                              # %if.end.56
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	jle	.LBB10_34
# BB#25:                                # %if.then.59
	movl	$0, -36(%rbp)
.LBB10_26:                              # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	24(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB10_31
# BB#27:                                # %for.body.65
                                        #   in Loop: Header=BB10_26 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %edx
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movzwl	(%rcx,%rax,2), %esi
	cmpl	%esi, %edx
	je	.LBB10_29
# BB#28:                                # %if.then.74
	jmp	.LBB10_31
.LBB10_29:                              # %if.end.75
                                        #   in Loop: Header=BB10_26 Depth=1
	jmp	.LBB10_30
.LBB10_30:                              # %for.inc.76
                                        #   in Loop: Header=BB10_26 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_26
.LBB10_31:                              # %for.end.77
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	24(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB10_33
# BB#32:                                # %if.then.82
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movslq	-28(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movslq	-28(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	$0, -4(%rbp)
	jmp	.LBB10_74
.LBB10_33:                              # %if.end.93
	jmp	.LBB10_34
.LBB10_34:                              # %if.end.94
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	fseek
	movq	-16(%rbp), %rsi
	cmpl	$1, 12(%rsi)
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jne	.LBB10_47
# BB#35:                                # %if.then.100
	jmp	.LBB10_36
.LBB10_36:                              # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_39 Depth 2
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	ftell
	movq	-16(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-16(%rbp), %rax
	movzwl	24(%rax), %edx
	callq	read_rle8
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 80(%rdi)
	cmpq	$0, %rsi
	jge	.LBB10_38
# BB#37:                                # %if.then.112
	movl	$0, -36(%rbp)
	jmp	.LBB10_46
.LBB10_38:                              # %if.end.113
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	$0, -36(%rbp)
.LBB10_39:                              # %for.cond.114
                                        #   Parent Loop BB10_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	24(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB10_44
# BB#40:                                # %for.body.119
                                        #   in Loop: Header=BB10_39 Depth=2
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %edx
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movzwl	(%rcx,%rax,2), %esi
	cmpl	%esi, %edx
	je	.LBB10_42
# BB#41:                                # %if.then.129
                                        #   in Loop: Header=BB10_36 Depth=1
	jmp	.LBB10_44
.LBB10_42:                              # %if.end.130
                                        #   in Loop: Header=BB10_39 Depth=2
	jmp	.LBB10_43
.LBB10_43:                              # %for.inc.131
                                        #   in Loop: Header=BB10_39 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_39
.LBB10_44:                              # %for.end.133
                                        #   in Loop: Header=BB10_36 Depth=1
	jmp	.LBB10_45
.LBB10_45:                              # %do.cond
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	24(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB10_36
.LBB10_46:                              # %do.end
	jmp	.LBB10_59
.LBB10_47:                              # %if.else.138
	jmp	.LBB10_48
.LBB10_48:                              # %do.body.139
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_51 Depth 2
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	ftell
	movq	-16(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-16(%rbp), %rax
	movzwl	24(%rax), %edx
	callq	read_rle16
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 80(%rdi)
	cmpq	$0, %rsi
	jge	.LBB10_50
# BB#49:                                # %if.then.151
	movl	$0, -36(%rbp)
	jmp	.LBB10_58
.LBB10_50:                              # %if.end.152
                                        #   in Loop: Header=BB10_48 Depth=1
	movl	$0, -36(%rbp)
.LBB10_51:                              # %for.cond.153
                                        #   Parent Loop BB10_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	24(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB10_56
# BB#52:                                # %for.body.158
                                        #   in Loop: Header=BB10_51 Depth=2
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %edx
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movzwl	(%rcx,%rax,2), %esi
	cmpl	%esi, %edx
	je	.LBB10_54
# BB#53:                                # %if.then.168
                                        #   in Loop: Header=BB10_48 Depth=1
	jmp	.LBB10_56
.LBB10_54:                              # %if.end.169
                                        #   in Loop: Header=BB10_51 Depth=2
	jmp	.LBB10_55
.LBB10_55:                              # %for.inc.170
                                        #   in Loop: Header=BB10_51 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_51
.LBB10_56:                              # %for.end.172
                                        #   in Loop: Header=BB10_48 Depth=1
	jmp	.LBB10_57
.LBB10_57:                              # %do.cond.173
                                        #   in Loop: Header=BB10_48 Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	24(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB10_48
.LBB10_58:                              # %do.end.178
	jmp	.LBB10_59
.LBB10_59:                              # %if.end.179
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	24(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB10_61
# BB#60:                                # %if.then.184
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movslq	-28(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movslq	-28(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	$0, -4(%rbp)
	jmp	.LBB10_74
.LBB10_61:                              # %if.else.197
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	fseek
	movl	%eax, -92(%rbp)         # 4-byte Spill
# BB#62:                                # %if.end.200
	jmp	.LBB10_63
.LBB10_63:                              # %sw.bb.201
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB10_65
# BB#64:                                # %if.then.209
	movl	$-1, -4(%rbp)
	jmp	.LBB10_74
.LBB10_65:                              # %if.end.210
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movslq	-28(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	ftell
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_67
# BB#66:                                # %if.then.220
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	fseek
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB10_67:                              # %if.end.223
	movq	-16(%rbp), %rax
	cmpl	$1, 12(%rax)
	jne	.LBB10_69
# BB#68:                                # %if.then.227
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movzwl	24(%rax), %edx
	callq	write_rle8
	movl	%eax, -36(%rbp)
	jmp	.LBB10_70
.LBB10_69:                              # %if.else.231
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movzwl	24(%rax), %edx
	callq	write_rle16
	movl	%eax, -36(%rbp)
.LBB10_70:                              # %if.end.235
	movq	-16(%rbp), %rax
	cmpl	$2, 16(%rax)
	jne	.LBB10_72
# BB#71:                                # %if.then.239
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzwl	24(%rdx), %esi
	movl	%esi, %edx
	shlq	$1, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB10_72:                              # %if.end.247
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	ftell
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movslq	-36(%rbp), %rax
	movslq	-28(%rbp), %rdi
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movl	-36(%rbp), %esi
	movl	%esi, -4(%rbp)
	jmp	.LBB10_74
.LBB10_73:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB10_74:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	sgiPutRow, .Lfunc_end10-sgiPutRow
	.cfi_endproc

	.align	16, 0x90
	.type	write_rle8,@function
write_rle8:                             # @write_rle8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	$0, -32(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
                                        #     Child Loop BB11_10 Depth 2
                                        #       Child Loop BB11_17 Depth 3
                                        #     Child Loop BB11_25 Depth 2
                                        #     Child Loop BB11_30 Depth 2
	cmpl	$0, -44(%rbp)
	jle	.LBB11_40
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -44(%rbp)
.LBB11_3:                               # %while.cond
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -59(%rbp)          # 1-byte Spill
	jle	.LBB11_7
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB11_3 Depth=2
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movzwl	-4(%rcx), %edx
	movq	-24(%rbp), %rcx
	movzwl	-2(%rcx), %esi
	cmpl	%esi, %edx
	movb	%al, -60(%rbp)          # 1-byte Spill
	jne	.LBB11_6
# BB#5:                                 # %lor.rhs
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-24(%rbp), %rax
	movzwl	-2(%rax), %ecx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %edx
	cmpl	%edx, %ecx
	setne	%sil
	movb	%sil, -60(%rbp)         # 1-byte Spill
.LBB11_6:                               # %lor.end
                                        #   in Loop: Header=BB11_3 Depth=2
	movb	-60(%rbp), %al          # 1-byte Reload
	movb	%al, -59(%rbp)          # 1-byte Spill
.LBB11_7:                               # %land.end
                                        #   in Loop: Header=BB11_3 Depth=2
	movb	-59(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_8
	jmp	.LBB11_9
.LBB11_8:                               # %while.body
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB11_3
.LBB11_9:                               # %while.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	subq	%rdx, %rax
	sarq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
.LBB11_10:                              # %while.cond.14
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_17 Depth 3
	cmpl	$0, -36(%rbp)
	jle	.LBB11_22
# BB#11:                                # %while.body.17
                                        #   in Loop: Header=BB11_10 Depth=2
	cmpl	$126, -36(%rbp)
	jle	.LBB11_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	$126, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB11_14
.LBB11_13:                              # %cond.false
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB11_14:                              # %cond.end
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-40(%rbp), %eax
	orl	$128, %eax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB11_16
# BB#15:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB11_43
.LBB11_16:                              # %if.end
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB11_17:                              # %while.cond.23
                                        #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, -40(%rbp)
	jle	.LBB11_21
# BB#18:                                # %while.body.26
                                        #   in Loop: Header=BB11_17 Depth=3
	movq	-56(%rbp), %rax
	movzwl	(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB11_20
# BB#19:                                # %if.then.32
	movl	$-1, -4(%rbp)
	jmp	.LBB11_43
.LBB11_20:                              # %if.end.33
                                        #   in Loop: Header=BB11_17 Depth=3
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
	movl	-40(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -40(%rbp)
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB11_17
.LBB11_21:                              # %while.end.37
                                        #   in Loop: Header=BB11_10 Depth=2
	jmp	.LBB11_10
.LBB11_22:                              # %while.end.38
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$0, -44(%rbp)
	jg	.LBB11_24
# BB#23:                                # %if.then.41
	jmp	.LBB11_40
.LBB11_24:                              # %if.end.42
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movw	(%rax), %cx
	movw	%cx, -58(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -44(%rbp)
.LBB11_25:                              # %while.cond.46
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jle	.LBB11_27
# BB#26:                                # %land.rhs.49
                                        #   in Loop: Header=BB11_25 Depth=2
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	movzwl	-58(%rbp), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -65(%rbp)         # 1-byte Spill
.LBB11_27:                              # %land.end.54
                                        #   in Loop: Header=BB11_25 Depth=2
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_28
	jmp	.LBB11_29
.LBB11_28:                              # %while.body.55
                                        #   in Loop: Header=BB11_25 Depth=2
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB11_25
.LBB11_29:                              # %while.end.58
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$1, %rax
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
.LBB11_30:                              # %while.cond.64
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -36(%rbp)
	jle	.LBB11_39
# BB#31:                                # %while.body.67
                                        #   in Loop: Header=BB11_30 Depth=2
	cmpl	$126, -36(%rbp)
	jle	.LBB11_33
# BB#32:                                # %cond.true.70
                                        #   in Loop: Header=BB11_30 Depth=2
	movl	$126, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB11_34
.LBB11_33:                              # %cond.false.71
                                        #   in Loop: Header=BB11_30 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB11_34:                              # %cond.end.72
                                        #   in Loop: Header=BB11_30 Depth=2
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-40(%rbp), %edi
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB11_36
# BB#35:                                # %if.then.79
	movl	$-1, -4(%rbp)
	jmp	.LBB11_43
.LBB11_36:                              # %if.end.80
                                        #   in Loop: Header=BB11_30 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movzwl	-58(%rbp), %edi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB11_38
# BB#37:                                # %if.then.87
	movl	$-1, -4(%rbp)
	jmp	.LBB11_43
.LBB11_38:                              # %if.end.88
                                        #   in Loop: Header=BB11_30 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB11_30
.LBB11_39:                              # %while.end.90
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_1
.LBB11_40:                              # %for.end
	xorl	%edi, %edi
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB11_42
# BB#41:                                # %if.then.96
	movl	$-1, -4(%rbp)
	jmp	.LBB11_43
.LBB11_42:                              # %if.else
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB11_43:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	write_rle8, .Lfunc_end11-write_rle8
	.cfi_endproc

	.align	16, 0x90
	.type	write_rle16,@function
write_rle16:                            # @write_rle16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	$0, -32(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
                                        #     Child Loop BB12_10 Depth 2
                                        #       Child Loop BB12_17 Depth 3
                                        #     Child Loop BB12_25 Depth 2
                                        #     Child Loop BB12_30 Depth 2
	cmpl	$0, -44(%rbp)
	jle	.LBB12_40
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -44(%rbp)
.LBB12_3:                               # %while.cond
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -59(%rbp)          # 1-byte Spill
	jle	.LBB12_7
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB12_3 Depth=2
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movzwl	-4(%rcx), %edx
	movq	-24(%rbp), %rcx
	movzwl	-2(%rcx), %esi
	cmpl	%esi, %edx
	movb	%al, -60(%rbp)          # 1-byte Spill
	jne	.LBB12_6
# BB#5:                                 # %lor.rhs
                                        #   in Loop: Header=BB12_3 Depth=2
	movq	-24(%rbp), %rax
	movzwl	-2(%rax), %ecx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %edx
	cmpl	%edx, %ecx
	setne	%sil
	movb	%sil, -60(%rbp)         # 1-byte Spill
.LBB12_6:                               # %lor.end
                                        #   in Loop: Header=BB12_3 Depth=2
	movb	-60(%rbp), %al          # 1-byte Reload
	movb	%al, -59(%rbp)          # 1-byte Spill
.LBB12_7:                               # %land.end
                                        #   in Loop: Header=BB12_3 Depth=2
	movb	-59(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_8
	jmp	.LBB12_9
.LBB12_8:                               # %while.body
                                        #   in Loop: Header=BB12_3 Depth=2
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB12_3
.LBB12_9:                               # %while.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	subq	%rdx, %rax
	sarq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
.LBB12_10:                              # %while.cond.14
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_17 Depth 3
	cmpl	$0, -36(%rbp)
	jle	.LBB12_22
# BB#11:                                # %while.body.17
                                        #   in Loop: Header=BB12_10 Depth=2
	cmpl	$126, -36(%rbp)
	jle	.LBB12_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB12_10 Depth=2
	movl	$126, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB12_14
.LBB12_13:                              # %cond.false
                                        #   in Loop: Header=BB12_10 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB12_14:                              # %cond.end
                                        #   in Loop: Header=BB12_10 Depth=2
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-40(%rbp), %eax
	orl	$128, %eax
	movw	%ax, %dx
	movq	-16(%rbp), %rsi
	movzwl	%dx, %edi
	callq	putshort
	cmpl	$-1, %eax
	jne	.LBB12_16
# BB#15:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB12_43
.LBB12_16:                              # %if.end
                                        #   in Loop: Header=BB12_10 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB12_17:                              # %while.cond.24
                                        #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, -40(%rbp)
	jle	.LBB12_21
# BB#18:                                # %while.body.27
                                        #   in Loop: Header=BB12_17 Depth=3
	movq	-56(%rbp), %rax
	movw	(%rax), %cx
	movq	-16(%rbp), %rsi
	movzwl	%cx, %edi
	callq	putshort
	cmpl	$-1, %eax
	jne	.LBB12_20
# BB#19:                                # %if.then.31
	movl	$-1, -4(%rbp)
	jmp	.LBB12_43
.LBB12_20:                              # %if.end.32
                                        #   in Loop: Header=BB12_17 Depth=3
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
	movl	-40(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -40(%rbp)
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB12_17
.LBB12_21:                              # %while.end.36
                                        #   in Loop: Header=BB12_10 Depth=2
	jmp	.LBB12_10
.LBB12_22:                              # %while.end.37
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpl	$0, -44(%rbp)
	jg	.LBB12_24
# BB#23:                                # %if.then.40
	jmp	.LBB12_40
.LBB12_24:                              # %if.end.41
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movw	(%rax), %cx
	movw	%cx, -58(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -44(%rbp)
.LBB12_25:                              # %while.cond.45
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jle	.LBB12_27
# BB#26:                                # %land.rhs.48
                                        #   in Loop: Header=BB12_25 Depth=2
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	movzwl	-58(%rbp), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -65(%rbp)         # 1-byte Spill
.LBB12_27:                              # %land.end.53
                                        #   in Loop: Header=BB12_25 Depth=2
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_28
	jmp	.LBB12_29
.LBB12_28:                              # %while.body.54
                                        #   in Loop: Header=BB12_25 Depth=2
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB12_25
.LBB12_29:                              # %while.end.57
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$1, %rax
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
.LBB12_30:                              # %while.cond.63
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -36(%rbp)
	jle	.LBB12_39
# BB#31:                                # %while.body.66
                                        #   in Loop: Header=BB12_30 Depth=2
	cmpl	$126, -36(%rbp)
	jle	.LBB12_33
# BB#32:                                # %cond.true.69
                                        #   in Loop: Header=BB12_30 Depth=2
	movl	$126, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB12_34
.LBB12_33:                              # %cond.false.70
                                        #   in Loop: Header=BB12_30 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB12_34:                              # %cond.end.71
                                        #   in Loop: Header=BB12_30 Depth=2
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-40(%rbp), %eax
	movw	%ax, %dx
	movq	-16(%rbp), %rsi
	movzwl	%dx, %edi
	callq	putshort
	cmpl	$-1, %eax
	jne	.LBB12_36
# BB#35:                                # %if.then.78
	movl	$-1, -4(%rbp)
	jmp	.LBB12_43
.LBB12_36:                              # %if.end.79
                                        #   in Loop: Header=BB12_30 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movw	-58(%rbp), %cx
	movq	-16(%rbp), %rsi
	movzwl	%cx, %edi
	callq	putshort
	cmpl	$-1, %eax
	jne	.LBB12_38
# BB#37:                                # %if.then.84
	movl	$-1, -4(%rbp)
	jmp	.LBB12_43
.LBB12_38:                              # %if.end.85
                                        #   in Loop: Header=BB12_30 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB12_30
.LBB12_39:                              # %while.end.87
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_1
.LBB12_40:                              # %for.end
	xorl	%edi, %edi
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rsi
	callq	putshort
	cmpl	$-1, %eax
	jne	.LBB12_42
# BB#41:                                # %if.then.92
	movl	$-1, -4(%rbp)
	jmp	.LBB12_43
.LBB12_42:                              # %if.else
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -4(%rbp)
.LBB12_43:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	write_rle16, .Lfunc_end12-write_rle16
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"wb+"
	.size	.L.str.1, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
