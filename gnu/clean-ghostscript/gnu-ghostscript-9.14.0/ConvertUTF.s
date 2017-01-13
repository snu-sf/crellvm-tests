	.text
	.file	"ConvertUTF.bc"
	.globl	ConvertUTF32toUTF16
	.align	16, 0x90
	.type	ConvertUTF32toUTF16,@function
ConvertUTF32toUTF16:                    # @ConvertUTF32toUTF16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
.Ltmp2:
	.cfi_offset %rbx, -24
.Ltmp3:
	.cfi_offset %r14, -16
	movq	(%rdi), %r10
	movq	(%rdx), %r9
	xorl	%eax, %eax
	cmpq	%rsi, %r10
	jae	.LBB0_6
# BB#1:                                 # %while.body.lr.ph.lr.ph
	xorl	%eax, %eax
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_7:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	leaq	8(%r11), %r10
	movq	(%r11), %r14
	cmpq	$65535, %r14            # imm = 0xFFFF
	ja	.LBB0_12
# BB#8:                                 # %if.then.3
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%r14, %rbx
	andq	$-2048, %rbx            # imm = 0xFFFFFFFFFFFFF800
	cmpq	$55296, %rbx            # imm = 0xD800
	jne	.LBB0_11
# BB#9:                                 # %if.then.6
                                        #   in Loop: Header=BB0_4 Depth=1
	testl	%r8d, %r8d
	jne	.LBB0_14
	jmp	.LBB0_10
	.align	16, 0x90
.LBB0_12:                               # %if.else.15
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpq	$1114112, %r14          # imm = 0x110000
	jb	.LBB0_15
# BB#13:                                # %if.then.18
                                        #   in Loop: Header=BB0_4 Depth=1
	testl	%r8d, %r8d
	je	.LBB0_2
.LBB0_14:                               # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	movw	$-3, (%r9)
	addq	$2, %r9
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_11:                               # %if.else.12
                                        #   in Loop: Header=BB0_4 Depth=1
	movw	%r14w, (%r9)
	addq	$2, %r9
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_15:                               # %if.else.25
                                        #   in Loop: Header=BB0_4 Depth=1
	leaq	2(%r9), %rbx
	cmpq	%rcx, %rbx
	jae	.LBB0_5
# BB#16:                                # %if.end.30
                                        #   in Loop: Header=BB0_4 Depth=1
	addl	$-65536, %r14d          # imm = 0xFFFFFFFFFFFF0000
	movl	%r14d, %ebx
	shrl	$10, %ebx
	addl	$55296, %ebx            # imm = 0xD800
	movw	%bx, (%r9)
	andl	$1023, %r14d            # imm = 0x3FF
	orl	$56320, %r14d           # imm = 0xDC00
	movw	%r14w, 2(%r9)
	addq	$4, %r9
.LBB0_3:                                # %while.cond.outer.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpq	%rsi, %r10
	jb	.LBB0_4
	jmp	.LBB0_6
.LBB0_2:                                # %while.cond.outer.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$3, %eax
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r10, %r11
	cmpq	%rcx, %r9
	jb	.LBB0_7
.LBB0_5:
	movq	%r11, %r10
	movl	$2, %eax
	jmp	.LBB0_6
.LBB0_10:
	movq	%r11, %r10
	movl	$3, %eax
.LBB0_6:                                # %while.end
	movq	%r10, (%rdi)
	movq	%r9, (%rdx)
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	ConvertUTF32toUTF16, .Lfunc_end0-ConvertUTF32toUTF16
	.cfi_endproc

	.globl	ConvertUTF16toUTF32
	.align	16, 0x90
	.type	ConvertUTF16toUTF32,@function
ConvertUTF16toUTF32:                    # @ConvertUTF16toUTF32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	(%rdi), %r10
	movq	(%rdx), %r9
	xorl	%eax, %eax
	cmpq	%rsi, %r10
	jae	.LBB1_15
	.align	16, 0x90
.LBB1_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	2(%r10), %r11
	movzwl	(%r10), %ebx
	movl	%ebx, %ebp
	andl	$64512, %ebp            # imm = 0xFC00
	cmpl	$55296, %ebp            # imm = 0xD800
	jne	.LBB1_10
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rsi, %r11
	jae	.LBB1_3
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB1_1 Depth=1
	movzwl	(%r11), %r14d
	movl	%r14d, %ebp
	andl	$64512, %ebp            # imm = 0xFC00
	cmpl	$56320, %ebp            # imm = 0xDC00
	jne	.LBB1_8
# BB#5:                                 # %if.then.14
                                        #   in Loop: Header=BB1_1 Depth=1
	shlq	$10, %rbx
	leaq	-56613888(%rbx,%r14), %rbx
	leaq	4(%r10), %r11
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_10:                               # %if.else.26
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jne	.LBB1_6
# BB#11:                                # %if.else.26
                                        #   in Loop: Header=BB1_1 Depth=1
	movzwl	%bp, %ebp
	cmpl	$56320, %ebp            # imm = 0xDC00
	jne	.LBB1_6
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_8:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	je	.LBB1_9
.LBB1_6:                                # %if.end.39
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rcx, %r9
	jae	.LBB1_7
# BB#13:                                # %cleanup
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, (%r9)
	addq	$8, %r9
	cmpq	%rsi, %r11
	movq	%r11, %r10
	jb	.LBB1_1
# BB#14:
	movq	%r11, %r10
	jmp	.LBB1_15
.LBB1_7:
	movl	$2, %eax
	jmp	.LBB1_15
.LBB1_3:
	movl	$1, %eax
	jmp	.LBB1_15
.LBB1_12:
	movl	$3, %eax
	jmp	.LBB1_15
.LBB1_9:
	movl	$3, %eax
.LBB1_15:                               # %while.end
	movq	%r10, (%rdi)
	movq	%r9, (%rdx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ConvertUTF16toUTF32, .Lfunc_end1-ConvertUTF16toUTF32
	.cfi_endproc

	.globl	ConvertUTF16toUTF8
	.align	16, 0x90
	.type	ConvertUTF16toUTF8,@function
ConvertUTF16toUTF8:                     # @ConvertUTF16toUTF8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 48
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	(%rdi), %r14
	movq	(%rdx), %r9
	xorl	%eax, %eax
	cmpq	%rsi, %r14
	jae	.LBB2_26
# BB#1:                                 # %while.body.lr.ph
	movl	$65533, %r10d           # imm = 0xFFFD
	.align	16, 0x90
.LBB2_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	2(%r14), %r11
	movzwl	(%r14), %r15d
	movl	%r15d, %ebx
	andl	$64512, %ebx            # imm = 0xFC00
	cmpl	$55296, %ebx            # imm = 0xD800
	jne	.LBB2_15
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpq	%rsi, %r11
	jae	.LBB2_4
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB2_2 Depth=1
	movzwl	(%r11), %ebx
	movl	%ebx, %ebp
	andl	$64512, %ebp            # imm = 0xFC00
	cmpl	$56320, %ebp            # imm = 0xDC00
	jne	.LBB2_13
# BB#6:                                 # %if.then.14
                                        #   in Loop: Header=BB2_2 Depth=1
	shlq	$10, %r15
	leaq	-56613888(%r15,%rbx), %r15
	leaq	4(%r14), %r11
	jmp	.LBB2_7
	.align	16, 0x90
.LBB2_15:                               # %if.else.26
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%r8d, %r8d
	jne	.LBB2_7
# BB#16:                                # %if.else.26
                                        #   in Loop: Header=BB2_2 Depth=1
	movzwl	%bx, %ebx
	cmpl	$56320, %ebx            # imm = 0xDC00
	jne	.LBB2_7
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_13:                               # %if.else
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%r8d, %r8d
	je	.LBB2_14
.LBB2_7:                                # %if.end.39
                                        #   in Loop: Header=BB2_2 Depth=1
	movw	$1, %bx
	cmpq	$128, %r15
	jb	.LBB2_11
# BB#8:                                 # %if.else.43
                                        #   in Loop: Header=BB2_2 Depth=1
	movw	$2, %bx
	cmpq	$2048, %r15             # imm = 0x800
	jb	.LBB2_11
# BB#9:                                 # %if.else.47
                                        #   in Loop: Header=BB2_2 Depth=1
	movw	$3, %bx
	cmpq	$65536, %r15            # imm = 0x10000
	jb	.LBB2_11
# BB#10:                                # %if.else.51
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpq	$1114112, %r15          # imm = 0x110000
	movl	$3, %ebx
	adcl	$0, %ebx
	cmpq	$1114112, %r15          # imm = 0x110000
	cmovaeq	%r10, %r15
	.align	16, 0x90
.LBB2_11:                               # %if.end.59
                                        #   in Loop: Header=BB2_2 Depth=1
	movzwl	%bx, %r12d
	addq	%r12, %r9
	cmpq	%rcx, %r9
	ja	.LBB2_12
# BB#18:                                # %if.end.67
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	-1(%r12), %ebx
	cmpl	$3, %ebx
	ja	.LBB2_24
# BB#19:                                # %if.end.67
                                        #   in Loop: Header=BB2_2 Depth=1
	jmpq	*.LJTI2_0(,%rbx,8)
.LBB2_20:                               # %sw.bb
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%r15d, %ebx
	andl	$63, %ebx
	orl	$128, %ebx
	movb	%bl, -1(%r9)
	decq	%r9
	shrq	$6, %r15
.LBB2_21:                               # %sw.bb.71
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%r15d, %ebx
	andl	$63, %ebx
	orl	$128, %ebx
	movb	%bl, -1(%r9)
	decq	%r9
	shrq	$6, %r15
.LBB2_22:                               # %sw.bb.77
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%r15d, %ebx
	andl	$63, %ebx
	orl	$128, %ebx
	movb	%bl, -1(%r9)
	decq	%r9
	shrq	$6, %r15
.LBB2_23:                               # %sw.bb.83
                                        #   in Loop: Header=BB2_2 Depth=1
	movzbl	firstByteMark(%r12), %ebx
	orl	%ebx, %r15d
	movb	%r15b, -1(%r9)
	decq	%r9
.LBB2_24:                               # %cleanup.91
                                        #   in Loop: Header=BB2_2 Depth=1
	addq	%r12, %r9
	cmpq	%rsi, %r11
	movq	%r11, %r14
	jb	.LBB2_2
# BB#25:
	movq	%r11, %r14
	jmp	.LBB2_26
.LBB2_12:                               # %if.then.63
	subq	%r12, %r9
	movl	$2, %eax
	jmp	.LBB2_26
.LBB2_4:
	movl	$1, %eax
	jmp	.LBB2_26
.LBB2_17:
	movl	$3, %eax
	jmp	.LBB2_26
.LBB2_14:
	movl	$3, %eax
.LBB2_26:                               # %while.end
	movq	%r14, (%rdi)
	movq	%r9, (%rdx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ConvertUTF16toUTF8, .Lfunc_end2-ConvertUTF16toUTF8
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_23
	.quad	.LBB2_22
	.quad	.LBB2_21
	.quad	.LBB2_20

	.text
	.globl	isLegalUTF8Sequence
	.align	16, 0x90
	.type	isLegalUTF8Sequence,@function
isLegalUTF8Sequence:                    # @isLegalUTF8Sequence
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	movsbl	trailingBytesForUTF8(%rax), %ecx
	movslq	%ecx, %rdx
	leaq	1(%rdx,%rdi), %rdx
	cmpq	%rsi, %rdx
	jbe	.LBB3_2
# BB#1:
	xorl	%ecx, %ecx
	movzbl	%cl, %eax
	retq
.LBB3_2:                                # %if.end
	movl	%ecx, %esi
	cmpl	$3, %ecx
	jbe	.LBB3_4
# BB#3:
	xorl	%ecx, %ecx
	movzbl	%cl, %eax
	retq
.LBB3_4:                                # %if.end
	jmpq	*.LJTI3_0(,%rsi,8)
.LBB3_5:                                # %sw.bb.i
	movb	-1(%rdx), %sil
	xorl	%ecx, %ecx
	testb	%sil, %sil
	jns	.LBB3_32
# BB#6:                                 # %sw.bb.i
	movzbl	%sil, %esi
	cmpl	$191, %esi
	ja	.LBB3_32
# BB#7:
	decq	%rdx
.LBB3_8:                                # %sw.bb.5.i
	movb	-1(%rdx), %sil
	xorl	%ecx, %ecx
	testb	%sil, %sil
	jns	.LBB3_32
# BB#9:                                 # %sw.bb.5.i
	movzbl	%sil, %esi
	cmpl	$191, %esi
	ja	.LBB3_32
# BB#10:
	decq	%rdx
.LBB3_11:                               # %sw.bb.16.i
	movzbl	-1(%rdx), %ecx
	cmpl	$191, %ecx
	jbe	.LBB3_13
# BB#12:
	xorl	%ecx, %ecx
	movzbl	%cl, %eax
	retq
.LBB3_13:                               # %if.end.22.i
	cmpl	$239, %eax
	jg	.LBB3_18
# BB#14:                                # %if.end.22.i
	cmpl	$224, %eax
	jne	.LBB3_15
# BB#22:                                # %sw.bb.24.i
	movzbl	%cl, %ecx
	cmpl	$160, %ecx
	jae	.LBB3_28
# BB#23:
	xorl	%ecx, %ecx
	movzbl	%cl, %eax
	retq
.LBB3_18:                               # %if.end.22.i
	cmpl	$240, %eax
	jne	.LBB3_19
# BB#24:                                # %sw.bb.36.i
	movzbl	%cl, %ecx
	cmpl	$144, %ecx
	jae	.LBB3_28
# BB#25:
	xorl	%ecx, %ecx
	movzbl	%cl, %eax
	retq
.LBB3_15:                               # %if.end.22.i
	cmpl	$237, %eax
	jne	.LBB3_26
# BB#16:                                # %sw.bb.30.i
	movzbl	%cl, %ecx
	cmpl	$159, %ecx
	jbe	.LBB3_28
# BB#17:
	xorl	%ecx, %ecx
	movzbl	%cl, %eax
	retq
.LBB3_19:                               # %if.end.22.i
	cmpl	$244, %eax
	jne	.LBB3_26
# BB#20:                                # %sw.bb.42.i
	movzbl	%cl, %ecx
	cmpl	$143, %ecx
	jbe	.LBB3_28
# BB#21:
	xorl	%ecx, %ecx
	movzbl	%cl, %eax
	retq
.LBB3_26:                               # %sw.default.48.i
	testb	%cl, %cl
	js	.LBB3_28
# BB#27:
	xorl	%ecx, %ecx
	movzbl	%cl, %eax
	retq
.LBB3_28:                               # %sw.bb.54.i
	testb	%al, %al
	jns	.LBB3_31
# BB#29:                                # %sw.bb.54.i
	movzbl	%al, %ecx
	cmpl	$194, %ecx
	jae	.LBB3_31
# BB#30:
	xorl	%ecx, %ecx
	movzbl	%cl, %eax
	retq
.LBB3_31:                               # %sw.epilog.63.i
	cmpl	$245, %eax
	setb	%cl
.LBB3_32:                               # %cleanup
	movzbl	%cl, %eax
	retq
.Lfunc_end3:
	.size	isLegalUTF8Sequence, .Lfunc_end3-isLegalUTF8Sequence
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_28
	.quad	.LBB3_11
	.quad	.LBB3_8
	.quad	.LBB3_5

	.text
	.globl	ConvertUTF8toUTF16
	.align	16, 0x90
	.type	ConvertUTF8toUTF16,@function
ConvertUTF8toUTF16:                     # @ConvertUTF8toUTF16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	(%rdi), %r10
	movq	(%rdx), %r9
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_42:                               # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movw	$-3, (%r9)
	addq	$2, %r9
.LBB4_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpq	%rsi, %r10
	jae	.LBB4_32
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	(%r10), %r14b
	movzbl	%r14b, %r13d
	movsbl	trailingBytesForUTF8(%r13), %eax
	movzwl	%ax, %r15d
	leaq	(%r10,%r15), %rbp
	movl	$1, %eax
	cmpq	%rsi, %rbp
	jae	.LBB4_32
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	leal	1(%r15), %r11d
	movl	$3, %eax
	cmpl	$3, %r15d
	ja	.LBB4_32
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	(%r10,%r11), %rbp
	jmpq	*.LJTI4_0(,%r15,8)
.LBB4_5:                                # %sw.bb.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-1(%rbp), %r12b
	testb	%r12b, %r12b
	jns	.LBB4_32
# BB#6:                                 # %sw.bb.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	%r12b, %ebx
	cmpl	$191, %ebx
	ja	.LBB4_32
# BB#7:                                 #   in Loop: Header=BB4_1 Depth=1
	decq	%rbp
.LBB4_8:                                # %sw.bb.5.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-1(%rbp), %bl
	testb	%bl, %bl
	jns	.LBB4_32
# BB#9:                                 # %sw.bb.5.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	%bl, %ebx
	cmpl	$191, %ebx
	ja	.LBB4_32
# BB#10:                                #   in Loop: Header=BB4_1 Depth=1
	decq	%rbp
.LBB4_11:                               # %sw.bb.16.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	-1(%rbp), %ebx
	cmpl	$191, %ebx
	ja	.LBB4_32
# BB#12:                                # %if.end.22.i
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$239, %r13d
	jg	.LBB4_16
# BB#13:                                # %if.end.22.i
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$224, %r13d
	jne	.LBB4_14
# BB#19:                                # %sw.bb.24.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	%bl, %ebx
	cmpl	$160, %ebx
	jae	.LBB4_22
	jmp	.LBB4_32
.LBB4_16:                               # %if.end.22.i
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$240, %r13d
	jne	.LBB4_17
# BB#20:                                # %sw.bb.36.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	%bl, %ebx
	cmpl	$144, %ebx
	jae	.LBB4_22
	jmp	.LBB4_32
.LBB4_14:                               # %if.end.22.i
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$237, %r13d
	jne	.LBB4_21
# BB#15:                                # %sw.bb.30.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	%bl, %ebx
	cmpl	$159, %ebx
	jbe	.LBB4_22
	jmp	.LBB4_32
.LBB4_17:                               # %if.end.22.i
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$244, %r13d
	jne	.LBB4_21
# BB#18:                                # %sw.bb.42.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	%bl, %ebx
	cmpl	$143, %ebx
	jbe	.LBB4_22
	jmp	.LBB4_32
.LBB4_21:                               # %sw.default.48.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testb	%bl, %bl
	jns	.LBB4_32
	.align	16, 0x90
.LBB4_22:                               # %sw.bb.54.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testb	%r13b, %r13b
	setns	%r12b
	cmpl	$193, %r13d
	seta	%bl
	cmpl	$244, %r13d
	ja	.LBB4_32
# BB#23:                                # %sw.bb.54.i
                                        #   in Loop: Header=BB4_1 Depth=1
	orb	%r12b, %bl
	je	.LBB4_32
# BB#24:                                # %if.end.6
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%r12d, %r12d
	cmpl	$3, %r15d
	ja	.LBB4_30
# BB#25:                                # %if.end.6
                                        #   in Loop: Header=BB4_1 Depth=1
	jmpq	*.LJTI4_1(,%r15,8)
.LBB4_26:                               # %sw.bb.15
                                        #   in Loop: Header=BB4_1 Depth=1
	shlq	$6, %r13
	movb	1(%r10), %r14b
	incq	%r10
	movq	%r13, %r12
.LBB4_27:                               # %sw.bb.20
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	%r14b, %ebp
	addq	%r12, %rbp
	shlq	$6, %rbp
	movb	1(%r10), %r14b
	incq	%r10
	movq	%rbp, %r12
.LBB4_28:                               # %sw.bb.25
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	%r14b, %ebp
	addq	%r12, %rbp
	shlq	$6, %rbp
	movb	1(%r10), %r14b
	incq	%r10
	movq	%rbp, %r12
.LBB4_29:                               # %sw.bb.30
                                        #   in Loop: Header=BB4_1 Depth=1
	incq	%r10
	movzbl	%r14b, %ebp
	addq	%rbp, %r12
.LBB4_30:                               # %sw.epilog
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	%rcx, %r9
	jae	.LBB4_31
# BB#33:                                # %if.end.43
                                        #   in Loop: Header=BB4_1 Depth=1
	subq	offsetsFromUTF8(,%r15,8), %r12
	cmpq	$65535, %r12            # imm = 0xFFFF
	ja	.LBB4_39
# BB#34:                                # %if.then.46
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r12, %rbx
	andq	$-2048, %rbx            # imm = 0xFFFFFFFFFFFFF800
	cmpq	$55296, %rbx            # imm = 0xD800
	jne	.LBB4_37
# BB#35:                                # %if.then.51
                                        #   in Loop: Header=BB4_1 Depth=1
	testl	%r8d, %r8d
	jne	.LBB4_42
	jmp	.LBB4_36
	.align	16, 0x90
.LBB4_39:                               # %if.else.66
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	$1114112, %r12          # imm = 0x110000
	jb	.LBB4_43
# BB#40:                                # %if.then.69
                                        #   in Loop: Header=BB4_1 Depth=1
	testl	%r8d, %r8d
	jne	.LBB4_42
	jmp	.LBB4_41
.LBB4_37:                               # %if.else.62
                                        #   in Loop: Header=BB4_1 Depth=1
	movw	%r12w, (%r9)
	addq	$2, %r9
	jmp	.LBB4_1
.LBB4_43:                               # %if.else.81
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	2(%r9), %rax
	cmpq	%rcx, %rax
	jae	.LBB4_31
# BB#44:                                # %if.end.91
                                        #   in Loop: Header=BB4_1 Depth=1
	addl	$-65536, %r12d          # imm = 0xFFFFFFFFFFFF0000
	movl	%r12d, %eax
	shrl	$10, %eax
	addl	$55296, %eax            # imm = 0xD800
	movw	%ax, (%r9)
	andl	$1023, %r12d            # imm = 0x3FF
	orl	$56320, %r12d           # imm = 0xDC00
	movw	%r12w, 2(%r9)
	addq	$4, %r9
	jmp	.LBB4_1
.LBB4_31:                               # %if.then.38
	subq	%r11, %r10
	movl	$2, %eax
	jmp	.LBB4_32
.LBB4_36:                               # %if.then.54
	subq	%r11, %r10
	jmp	.LBB4_32
.LBB4_41:                               # %if.then.72
	subq	%r11, %r10
.LBB4_32:                               # %while.end
	movq	%r10, (%rdi)
	movq	%r9, (%rdx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ConvertUTF8toUTF16, .Lfunc_end4-ConvertUTF8toUTF16
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_22
	.quad	.LBB4_11
	.quad	.LBB4_8
	.quad	.LBB4_5
.LJTI4_1:
	.quad	.LBB4_29
	.quad	.LBB4_28
	.quad	.LBB4_27
	.quad	.LBB4_26

	.text
	.globl	ConvertUTF32toUTF8
	.align	16, 0x90
	.type	ConvertUTF32toUTF8,@function
ConvertUTF32toUTF8:                     # @ConvertUTF32toUTF8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 40
.Ltmp36:
	.cfi_offset %rbx, -40
.Ltmp37:
	.cfi_offset %r12, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %r15, -16
	movq	(%rdi), %r10
	movq	(%rdx), %r9
	xorl	%eax, %eax
	cmpq	%rsi, %r10
	jae	.LBB5_18
# BB#1:                                 # %while.body.lr.ph
	xorl	%eax, %eax
	movl	$3, %r11d
	movl	$65533, %r14d           # imm = 0xFFFD
	.align	16, 0x90
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r10), %r15
	testl	%r8d, %r8d
	jne	.LBB5_5
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%r15, %rbx
	andq	$-2048, %rbx            # imm = 0xFFFFFFFFFFFFF800
	cmpq	$55296, %rbx            # imm = 0xD800
	je	.LBB5_4
.LBB5_5:                                # %if.end.6
                                        #   in Loop: Header=BB5_2 Depth=1
	movw	$1, %bx
	cmpq	$128, %r15
	jb	.LBB5_9
# BB#6:                                 # %if.else
                                        #   in Loop: Header=BB5_2 Depth=1
	movw	$2, %bx
	cmpq	$2048, %r15             # imm = 0x800
	jb	.LBB5_9
# BB#7:                                 # %if.else.11
                                        #   in Loop: Header=BB5_2 Depth=1
	movw	$3, %bx
	cmpq	$65536, %r15            # imm = 0x10000
	jb	.LBB5_9
# BB#8:                                 # %if.else.14
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpq	$1114112, %r15          # imm = 0x110000
	movl	$3, %ebx
	adcl	$0, %ebx
	cmpq	$1114112, %r15          # imm = 0x110000
	cmovaeq	%r14, %r15
	cmovael	%r11d, %eax
	.align	16, 0x90
.LBB5_9:                                # %if.end.21
                                        #   in Loop: Header=BB5_2 Depth=1
	movzwl	%bx, %r12d
	addq	%r12, %r9
	cmpq	%rcx, %r9
	ja	.LBB5_10
# BB#11:                                # %if.end.29
                                        #   in Loop: Header=BB5_2 Depth=1
	addq	$8, %r10
	leal	-1(%r12), %ebx
	cmpl	$3, %ebx
	ja	.LBB5_17
# BB#12:                                # %if.end.29
                                        #   in Loop: Header=BB5_2 Depth=1
	jmpq	*.LJTI5_0(,%rbx,8)
.LBB5_13:                               # %sw.bb
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%r15d, %ebx
	andl	$63, %ebx
	orl	$128, %ebx
	movb	%bl, -1(%r9)
	decq	%r9
	shrq	$6, %r15
.LBB5_14:                               # %sw.bb.33
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%r15d, %ebx
	andl	$63, %ebx
	orl	$128, %ebx
	movb	%bl, -1(%r9)
	decq	%r9
	shrq	$6, %r15
.LBB5_15:                               # %sw.bb.39
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%r15d, %ebx
	andl	$63, %ebx
	orl	$128, %ebx
	movb	%bl, -1(%r9)
	decq	%r9
	shrq	$6, %r15
.LBB5_16:                               # %sw.bb.45
                                        #   in Loop: Header=BB5_2 Depth=1
	movzbl	firstByteMark(%r12), %ebx
	orl	%ebx, %r15d
	movb	%r15b, -1(%r9)
	decq	%r9
.LBB5_17:                               # %cleanup
                                        #   in Loop: Header=BB5_2 Depth=1
	addq	%r12, %r9
	cmpq	%rsi, %r10
	jb	.LBB5_2
	jmp	.LBB5_18
.LBB5_4:
	movl	$3, %eax
	jmp	.LBB5_18
.LBB5_10:                               # %if.then.24
	subq	%r12, %r9
	movl	$2, %eax
.LBB5_18:                               # %while.end
	movq	%r10, (%rdi)
	movq	%r9, (%rdx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	ConvertUTF32toUTF8, .Lfunc_end5-ConvertUTF32toUTF8
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_16
	.quad	.LBB5_15
	.quad	.LBB5_14
	.quad	.LBB5_13

	.text
	.globl	ConvertUTF8toUTF32
	.align	16, 0x90
	.type	ConvertUTF8toUTF32,@function
ConvertUTF8toUTF32:                     # @ConvertUTF8toUTF32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 56
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	(%rdi), %r10
	movq	(%rdx), %r9
	xorl	%eax, %eax
	cmpq	%rsi, %r10
	jae	.LBB6_54
# BB#1:                                 # %while.body.lr.ph
	xorl	%eax, %eax
.LBB6_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r10), %r14b
	movzbl	%r14b, %r13d
	movsbl	trailingBytesForUTF8(%r13), %ebp
	movzwl	%bp, %r15d
	leaq	(%r10,%r15), %rbp
	cmpq	%rsi, %rbp
	jae	.LBB6_3
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	leal	1(%r15), %r11d
	cmpl	$3, %r15d
	ja	.LBB6_5
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	leaq	(%r10,%r11), %rbp
	jmpq	*.LJTI6_0(,%r15,8)
.LBB6_7:                                # %sw.bb.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	-1(%rbp), %r12b
	testb	%r12b, %r12b
	jns	.LBB6_8
# BB#9:                                 # %sw.bb.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	%r12b, %ebx
	cmpl	$191, %ebx
	ja	.LBB6_10
# BB#11:                                #   in Loop: Header=BB6_2 Depth=1
	decq	%rbp
.LBB6_12:                               # %sw.bb.5.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	-1(%rbp), %bl
	testb	%bl, %bl
	jns	.LBB6_13
# BB#14:                                # %sw.bb.5.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	%bl, %ebx
	cmpl	$191, %ebx
	ja	.LBB6_15
# BB#16:                                #   in Loop: Header=BB6_2 Depth=1
	decq	%rbp
.LBB6_17:                               # %sw.bb.16.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	-1(%rbp), %ebx
	cmpl	$191, %ebx
	ja	.LBB6_18
# BB#19:                                # %if.end.22.i
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$239, %r13d
	jg	.LBB6_24
# BB#20:                                # %if.end.22.i
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$224, %r13d
	jne	.LBB6_21
# BB#28:                                # %sw.bb.24.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	%bl, %ebx
	cmpl	$160, %ebx
	jae	.LBB6_34
	jmp	.LBB6_29
	.align	16, 0x90
.LBB6_24:                               # %if.end.22.i
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$240, %r13d
	jne	.LBB6_25
# BB#30:                                # %sw.bb.36.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	%bl, %ebx
	cmpl	$144, %ebx
	jae	.LBB6_34
	jmp	.LBB6_31
.LBB6_21:                               # %if.end.22.i
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$237, %r13d
	jne	.LBB6_32
# BB#22:                                # %sw.bb.30.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	%bl, %ebx
	cmpl	$159, %ebx
	jbe	.LBB6_34
	jmp	.LBB6_23
.LBB6_25:                               # %if.end.22.i
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$244, %r13d
	jne	.LBB6_32
# BB#26:                                # %sw.bb.42.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	%bl, %ebx
	cmpl	$143, %ebx
	jbe	.LBB6_34
	jmp	.LBB6_27
.LBB6_32:                               # %sw.default.48.i
                                        #   in Loop: Header=BB6_2 Depth=1
	testb	%bl, %bl
	jns	.LBB6_33
	.align	16, 0x90
.LBB6_34:                               # %sw.bb.54.i
                                        #   in Loop: Header=BB6_2 Depth=1
	testb	%r13b, %r13b
	setns	%r12b
	cmpl	$193, %r13d
	seta	%bl
	cmpl	$244, %r13d
	ja	.LBB6_35
# BB#36:                                # %sw.bb.54.i
                                        #   in Loop: Header=BB6_2 Depth=1
	orb	%r12b, %bl
	je	.LBB6_37
# BB#38:                                # %if.end.6
                                        #   in Loop: Header=BB6_2 Depth=1
	xorl	%r12d, %r12d
	cmpl	$3, %r15d
	ja	.LBB6_44
# BB#39:                                # %if.end.6
                                        #   in Loop: Header=BB6_2 Depth=1
	jmpq	*.LJTI6_1(,%r15,8)
.LBB6_40:                               # %sw.bb.15
                                        #   in Loop: Header=BB6_2 Depth=1
	shlq	$6, %r13
	movb	1(%r10), %r14b
	incq	%r10
	movq	%r13, %r12
.LBB6_41:                               # %sw.bb.20
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	%r14b, %ebp
	addq	%r12, %rbp
	shlq	$6, %rbp
	movb	1(%r10), %r14b
	incq	%r10
	movq	%rbp, %r12
.LBB6_42:                               # %sw.bb.25
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	%r14b, %ebp
	addq	%r12, %rbp
	shlq	$6, %rbp
	movb	1(%r10), %r14b
	incq	%r10
	movq	%rbp, %r12
.LBB6_43:                               # %sw.bb.30
                                        #   in Loop: Header=BB6_2 Depth=1
	incq	%r10
	movzbl	%r14b, %ebp
	addq	%rbp, %r12
.LBB6_44:                               # %sw.epilog
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%rcx, %r9
	jae	.LBB6_45
# BB#46:                                # %if.end.43
                                        #   in Loop: Header=BB6_2 Depth=1
	subq	offsetsFromUTF8(,%r15,8), %r12
	cmpq	$1114111, %r12          # imm = 0x10FFFF
	ja	.LBB6_52
# BB#47:                                # %if.then.46
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r12, %rbx
	andq	$-2048, %rbx            # imm = 0xFFFFFFFFFFFFF800
	cmpq	$55296, %rbx            # imm = 0xD800
	jne	.LBB6_51
# BB#48:                                # %if.then.51
                                        #   in Loop: Header=BB6_2 Depth=1
	testl	%r8d, %r8d
	je	.LBB6_49
# BB#50:                                # %if.else
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	$65533, (%r9)           # imm = 0xFFFD
	jmp	.LBB6_53
	.align	16, 0x90
.LBB6_52:                               # %if.else.65
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	$65533, (%r9)           # imm = 0xFFFD
	movl	$3, %eax
	jmp	.LBB6_53
.LBB6_51:                               # %if.else.62
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r12, (%r9)
.LBB6_53:                               # %cleanup
                                        #   in Loop: Header=BB6_2 Depth=1
	addq	$8, %r9
	cmpq	%rsi, %r10
	jb	.LBB6_2
	jmp	.LBB6_54
.LBB6_5:
	movl	$3, %eax
.LBB6_54:                               # %while.end
	movq	%r10, (%rdi)
	movq	%r9, (%rdx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_3:
	movl	$1, %eax
	jmp	.LBB6_54
.LBB6_45:                               # %if.then.38
	subq	%r11, %r10
	movl	$2, %eax
	jmp	.LBB6_54
.LBB6_18:
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_35:
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_37:
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_13:
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_15:
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_49:                               # %if.then.54
	subq	%r11, %r10
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_29:
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_31:
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_33:
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_8:
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_10:
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_23:
	movl	$3, %eax
	jmp	.LBB6_54
.LBB6_27:
	movl	$3, %eax
	jmp	.LBB6_54
.Lfunc_end6:
	.size	ConvertUTF8toUTF32, .Lfunc_end6-ConvertUTF8toUTF32
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_34
	.quad	.LBB6_17
	.quad	.LBB6_12
	.quad	.LBB6_7
.LJTI6_1:
	.quad	.LBB6_43
	.quad	.LBB6_42
	.quad	.LBB6_41
	.quad	.LBB6_40

	.type	firstByteMark,@object   # @firstByteMark
firstByteMark:
	.ascii	"\000\000\300\340\360\370\374"
	.size	firstByteMark, 7

	.type	trailingBytesForUTF8,@object # @trailingBytesForUTF8
	.align	16
trailingBytesForUTF8:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\003\003\003\003\003\003\003\003\004\004\004\004\005\005\005\005"
	.size	trailingBytesForUTF8, 256

	.type	offsetsFromUTF8,@object # @offsetsFromUTF8
	.align	16
offsetsFromUTF8:
	.quad	0                       # 0x0
	.quad	12416                   # 0x3080
	.quad	925824                  # 0xe2080
	.quad	63447168                # 0x3c82080
	.quad	4194836608              # 0xfa082080
	.quad	2181570688              # 0x82082080
	.size	offsetsFromUTF8, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
