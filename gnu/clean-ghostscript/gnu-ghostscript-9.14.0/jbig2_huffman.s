	.text
	.file	"jbig2_huffman.bc"
	.globl	jbig2_huffman_new
	.align	16, 0x90
	.type	jbig2_huffman_new,@function
jbig2_huffman_new:                      # @jbig2_huffman_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 48
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%r14), %rdi
	movl	$1, %esi
	movl	$40, %edx
	callq	jbig2_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_9
# BB#1:                                 # %if.then
	movl	$0, 12(%rbx)
	movl	$0, 8(%rbx)
	movl	$0, 16(%rbx)
	movq	%r15, 24(%rbx)
	movq	%r14, 32(%rbx)
	movl	$0, 8(%rsp)
	leaq	8(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	*(%r15)
	testl	%eax, %eax
	je	.LBB0_4
# BB#2:                                 # %land.lhs.true.i
	cmpl	$0, 16(%rbx)
	js	.LBB0_4
# BB#3:                                 # %if.then.i
	movl	$0, 16(%rbx)
.LBB0_4:                                # %huff_get_next_word.exit
	movl	8(%rsp), %eax
	movl	%eax, (%rbx)
	movl	$0, 12(%rsp)
	movq	24(%rbx), %rdi
	leaq	12(%rsp), %rdx
	movl	$4, %esi
	callq	*(%rdi)
	testl	%eax, %eax
	je	.LBB0_8
# BB#5:                                 # %land.lhs.true.i.23
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.LBB0_7
# BB#6:                                 # %land.lhs.true.i.23
	cmpl	$5, %eax
	jl	.LBB0_8
.LBB0_7:                                # %if.then.i.24
	movl	$4, 16(%rbx)
.LBB0_8:                                # %huff_get_next_word.exit25
	movl	12(%rsp), %eax
	movl	%eax, 4(%rbx)
	jmp	.LBB0_10
.LBB0_9:                                # %if.else
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB0_10:                               # %if.end
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	jbig2_huffman_new, .Lfunc_end0-jbig2_huffman_new
	.cfi_endproc

	.globl	jbig2_huffman_free
	.align	16, 0x90
	.type	jbig2_huffman_free,@function
jbig2_huffman_free:                     # @jbig2_huffman_free
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB1_1
# BB#2:                                 # %if.then
	movq	%rsi, %rdi
	jmp	free                    # TAILCALL
.LBB1_1:                                # %if.end
	retq
.Lfunc_end1:
	.size	jbig2_huffman_free, .Lfunc_end1-jbig2_huffman_free
	.cfi_endproc

	.globl	jbig2_huffman_skip
	.align	16, 0x90
	.type	jbig2_huffman_skip,@function
jbig2_huffman_skip:                     # @jbig2_huffman_skip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 32
.Ltmp10:
	.cfi_offset %rbx, -24
.Ltmp11:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movl	8(%rbx), %eax
	movl	%eax, %edx
	andl	$7, %edx
	je	.LBB2_2
# BB#1:                                 # %if.then
	movl	$8, %ecx
	subl	%edx, %ecx
	leal	(%rax,%rcx), %eax
	movl	%eax, 8(%rbx)
	movl	(%rbx), %edx
	movl	4(%rbx), %esi
	shll	%cl, %edx
	movl	$32, %ecx
	subl	%eax, %ecx
	shrl	%cl, %esi
	orl	%edx, %esi
	movl	%esi, (%rbx)
.LBB2_2:                                # %if.end
	cmpl	$32, %eax
	jl	.LBB2_9
# BB#3:                                 # %if.then.6
	movl	4(%rbx), %eax
	movl	%eax, (%rbx)
	movl	12(%rbx), %r14d
	leal	4(%r14), %eax
	movl	%eax, 12(%rbx)
	addl	$8, %r14d
	movl	$0, 4(%rsp)
	movq	24(%rbx), %rdi
	leaq	4(%rsp), %rdx
	movl	%r14d, %esi
	callq	*(%rdi)
	testl	%eax, %eax
	je	.LBB2_7
# BB#4:                                 # %land.lhs.true.i
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.LBB2_6
# BB#5:                                 # %land.lhs.true.i
	cmpl	%r14d, %eax
	jle	.LBB2_7
.LBB2_6:                                # %if.then.i
	movl	%r14d, 16(%rbx)
.LBB2_7:                                # %huff_get_next_word.exit
	movl	4(%rsp), %eax
	movl	%eax, 4(%rbx)
	movl	8(%rbx), %edx
	movl	%edx, %ecx
	addl	$-32, %ecx
	movl	%ecx, 8(%rbx)
	je	.LBB2_9
# BB#8:                                 # %if.then.17
	movl	(%rbx), %esi
	shll	%cl, %esi
	movl	$64, %ecx
	subl	%edx, %ecx
	shrl	%cl, %eax
	orl	%esi, %eax
	movl	%eax, (%rbx)
.LBB2_9:                                # %if.end.28
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	jbig2_huffman_skip, .Lfunc_end2-jbig2_huffman_skip
	.cfi_endproc

	.globl	jbig2_huffman_advance
	.align	16, 0x90
	.type	jbig2_huffman_advance,@function
jbig2_huffman_advance:                  # @jbig2_huffman_advance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	%esi, %ebp
	andl	$-4, %ebp
	addl	12(%rbx), %ebp
	movl	%ebp, 12(%rbx)
	shll	$3, %esi
	andl	$24, %esi
	addl	8(%rbx), %esi
	movl	%esi, 8(%rbx)
	cmpl	$32, %esi
	jl	.LBB3_2
# BB#1:                                 # %if.then
	addl	$4, %ebp
	movl	%ebp, 12(%rbx)
	addl	$-32, %esi
	movl	%esi, 8(%rbx)
.LBB3_2:                                # %if.end
	movl	$0, (%rsp)
	movq	24(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	%ebp, %esi
	callq	*(%rdi)
	testl	%eax, %eax
	je	.LBB3_6
# BB#3:                                 # %land.lhs.true.i
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.LBB3_5
# BB#4:                                 # %land.lhs.true.i
	cmpl	%ebp, %eax
	jle	.LBB3_6
.LBB3_5:                                # %if.then.i
	movl	%ebp, 16(%rbx)
.LBB3_6:                                # %huff_get_next_word.exit
	movl	(%rsp), %eax
	movl	%eax, (%rbx)
	movl	12(%rbx), %ebp
	addl	$4, %ebp
	movl	$0, 4(%rsp)
	movq	24(%rbx), %rdi
	leaq	4(%rsp), %rdx
	movl	%ebp, %esi
	callq	*(%rdi)
	testl	%eax, %eax
	je	.LBB3_10
# BB#7:                                 # %land.lhs.true.i.27
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.LBB3_9
# BB#8:                                 # %land.lhs.true.i.27
	cmpl	%ebp, %eax
	jle	.LBB3_10
.LBB3_9:                                # %if.then.i.28
	movl	%ebp, 16(%rbx)
.LBB3_10:                               # %huff_get_next_word.exit29
	movl	4(%rsp), %eax
	movl	%eax, 4(%rbx)
	movl	8(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_12
# BB#11:                                # %if.then.14
	shldl	%cl, %eax, (%rbx)
.LBB3_12:                               # %if.end.22
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	jbig2_huffman_advance, .Lfunc_end3-jbig2_huffman_advance
	.cfi_endproc

	.globl	jbig2_huffman_offset
	.align	16, 0x90
	.type	jbig2_huffman_offset,@function
jbig2_huffman_offset:                   # @jbig2_huffman_offset
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rdi), %eax
	sarl	$3, %eax
	addl	12(%rdi), %eax
	retq
.Lfunc_end4:
	.size	jbig2_huffman_offset, .Lfunc_end4-jbig2_huffman_offset
	.cfi_endproc

	.globl	jbig2_huffman_get_bits
	.align	16, 0x90
	.type	jbig2_huffman_get_bits,@function
jbig2_huffman_get_bits:                 # @jbig2_huffman_get_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 48
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rdi, %rbx
	movl	(%rbx), %edx
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movl	12(%rbx), %r8d
	cmpl	%eax, %r8d
	jge	.LBB5_2
.LBB5_3:                                # %if.end
	movl	$32, %eax
	movl	$32, %ecx
	subl	%esi, %ecx
	movl	%edx, %r14d
	shrl	%cl, %r14d
	movl	8(%rbx), %edi
	addl	%esi, %edi
	movl	%edi, 8(%rbx)
	cmpl	$32, %edi
	jl	.LBB5_11
# BB#4:                                 # %if.then.6
	movl	12(%rbx), %ebp
	leal	4(%rbp), %eax
	movl	%eax, 12(%rbx)
	addl	$-32, %edi
	movl	%edi, 8(%rbx)
	movl	4(%rbx), %eax
	movl	%eax, (%rbx)
	addl	$8, %ebp
	movl	$0, 12(%rsp)
	movq	24(%rbx), %rdi
	leaq	12(%rsp), %rdx
	movl	%ebp, %esi
	callq	*(%rdi)
	testl	%eax, %eax
	je	.LBB5_8
# BB#5:                                 # %land.lhs.true.i
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.LBB5_7
# BB#6:                                 # %land.lhs.true.i
	cmpl	%ebp, %eax
	jle	.LBB5_8
.LBB5_7:                                # %if.then.i
	movl	%ebp, 16(%rbx)
.LBB5_8:                                # %huff_get_next_word.exit
	movl	12(%rsp), %esi
	movl	%esi, 4(%rbx)
	movl	(%rbx), %edx
	movl	8(%rbx), %ecx
	shll	%cl, %edx
	testl	%ecx, %ecx
	je	.LBB5_10
# BB#9:                                 # %if.then.18
	movl	$32, %eax
	subl	%ecx, %eax
	movb	%al, %cl
	shrl	%cl, %esi
	orl	%esi, %edx
.LBB5_10:                               # %if.else
	movl	%edx, (%rbx)
	jmp	.LBB5_12
.LBB5_11:                               # %if.else.31
	movb	%sil, %cl
	shll	%cl, %edx
	movl	4(%rbx), %esi
	subl	%edi, %eax
	movb	%al, %cl
	shrl	%cl, %esi
	orl	%edx, %esi
	movl	%esi, (%rbx)
	jmp	.LBB5_12
.LBB5_2:                                # %if.then
	movq	32(%rbx), %rdi
	movl	$-1, %r14d
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.1, %ecx
	xorl	%eax, %eax
	callq	jbig2_error
	movl	$-1, (%rbp)
.LBB5_12:                               # %cleanup
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	jbig2_huffman_get_bits, .Lfunc_end5-jbig2_huffman_get_bits
	.cfi_endproc

	.globl	jbig2_huffman_get
	.align	16, 0x90
	.type	jbig2_huffman_get,@function
jbig2_huffman_get:                      # @jbig2_huffman_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 80
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rdi, %r9
	movl	(%r9), %ebp
	movl	8(%r9), %r15d
	movl	16(%r9), %eax
	testl	%eax, %eax
	je	.LBB6_1
# BB#6:                                 # %land.lhs.true
	movq	%rdx, (%rsp)            # 8-byte Spill
	movl	12(%r9), %r8d
	cmpl	%eax, %r8d
	jl	.LBB6_2
# BB#7:                                 # %if.then
	movq	32(%r9), %rdi
	movl	$-1, %ebx
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.2, %ecx
	xorl	%eax, %eax
	callq	jbig2_error
	movq	(%rsp), %rax            # 8-byte Reload
	testq	%rax, %rax
	je	.LBB6_31
# BB#8:                                 # %if.then.7
	movl	$-1, (%rax)
	jmp	.LBB6_31
.LBB6_1:
	movq	%rdx, (%rsp)            # 8-byte Spill
	jmp	.LBB6_2
	.align	16, 0x90
.LBB6_18:                               # %cleanup.thread81
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	(%r14), %rsi
.LBB6_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %eax
	movl	$32, %ecx
	subl	%eax, %ecx
	movl	%ebp, %edi
	shrl	%cl, %edi
	xorl	%ebx, %ebx
	testl	%eax, %eax
	cmovgq	%rdi, %rbx
	movq	8(%rsi), %r13
	shlq	$4, %rbx
	leaq	(%r13,%rbx), %r14
	movzbl	8(%r13,%rbx), %ecx
	movzbl	10(%r13,%rbx), %edx
	movl	%ecx, %eax
	andl	%edx, %eax
	cmpl	$255, %eax
	jne	.LBB6_9
# BB#3:                                 # %land.lhs.true.19
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$-1, (%r14)
	je	.LBB6_4
.LBB6_9:                                # %if.end.26
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	4(%r9), %r12d
	leal	(%r15,%rcx), %r15d
	cmpl	$32, %r15d
	jl	.LBB6_15
# BB#10:                                # %if.then.30
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%r12d, 8(%rsp)          # 4-byte Spill
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movl	12(%r9), %ebp
	leal	4(%rbp), %eax
	movl	%eax, 12(%r9)
	addl	$8, %ebp
	movl	$0, 16(%rsp)
	movq	24(%r9), %rdi
	leaq	16(%rsp), %rdx
	movl	%ebp, %esi
	movq	%r9, %r12
	callq	*(%rdi)
	movq	%r12, %r9
	testl	%eax, %eax
	je	.LBB6_14
# BB#11:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	16(%r9), %eax
	testl	%eax, %eax
	je	.LBB6_13
# BB#12:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	%ebp, %eax
	jle	.LBB6_14
.LBB6_13:                               # %if.then.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%ebp, 16(%r9)
.LBB6_14:                               # %huff_get_next_word.exit
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	8(%rsp), %ebp           # 4-byte Reload
	movl	16(%rsp), %r12d
	addl	$-32, %r15d
	movl	%r12d, 4(%r9)
	movl	%r15d, %ecx
	movl	12(%rsp), %edx          # 4-byte Reload
.LBB6_15:                               # %if.end.38
                                        #   in Loop: Header=BB6_2 Depth=1
	testl	%ecx, %ecx
	je	.LBB6_17
# BB#16:                                # %if.then.40
                                        #   in Loop: Header=BB6_2 Depth=1
	shll	%cl, %ebp
	movl	$32, %ecx
	subl	%r15d, %ecx
	movl	%r12d, %eax
	shrl	%cl, %eax
	orl	%eax, %ebp
.LBB6_17:                               # %if.end.43
                                        #   in Loop: Header=BB6_2 Depth=1
	testb	$4, %dl
	jne	.LBB6_18
# BB#19:                                # %for.end
	movl	(%r14), %r14d
	movzbl	9(%r13,%rbx), %eax
	testl	%eax, %eax
	je	.LBB6_20
# BB#21:                                # %if.then.56
	movl	$32, %ecx
	subl	%eax, %ecx
	movl	%ebp, %esi
	shrl	%cl, %esi
	movl	%esi, %ebx
	negl	%ebx
	testb	$2, %dl
	cmovel	%esi, %ebx
	leal	(%r15,%rax), %r15d
	cmpl	$32, %r15d
	jl	.LBB6_27
# BB#22:                                # %if.then.70
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movl	12(%r9), %ebp
	leal	4(%rbp), %eax
	movl	%eax, 12(%r9)
	addl	$8, %ebp
	movl	$0, 20(%rsp)
	movq	24(%r9), %rdi
	leaq	20(%rsp), %rdx
	movl	%ebp, %esi
	movq	%r9, %r13
	callq	*(%rdi)
	movq	%r13, %r9
	testl	%eax, %eax
	je	.LBB6_26
# BB#23:                                # %land.lhs.true.i.78
	movl	16(%r9), %eax
	testl	%eax, %eax
	je	.LBB6_25
# BB#24:                                # %land.lhs.true.i.78
	cmpl	%ebp, %eax
	jle	.LBB6_26
.LBB6_25:                               # %if.then.i.79
	movl	%ebp, 16(%r9)
.LBB6_26:                               # %huff_get_next_word.exit80
	movl	%r12d, %ebp
	movl	20(%rsp), %r12d
	addl	$-32, %r15d
	movl	%r12d, 4(%r9)
	movl	%r15d, %eax
	movl	12(%rsp), %edx          # 4-byte Reload
.LBB6_27:                               # %if.end.78
	addl	%r14d, %ebx
	testl	%eax, %eax
	je	.LBB6_29
# BB#28:                                # %if.then.80
	movb	%al, %cl
	shll	%cl, %ebp
	movl	$32, %ecx
	subl	%r15d, %ecx
	shrl	%cl, %r12d
	orl	%r12d, %ebp
	jmp	.LBB6_29
.LBB6_4:                                # %if.then.22
	movl	$-1, %ebx
	movq	(%rsp), %rax            # 8-byte Reload
	testq	%rax, %rax
	je	.LBB6_31
# BB#5:                                 # %if.then.24
	movl	$-1, (%rax)
	jmp	.LBB6_31
.LBB6_20:
	movl	%r14d, %ebx
.LBB6_29:                               # %if.end.86
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%ebp, (%r9)
	movl	%r15d, 8(%r9)
	testq	%rax, %rax
	je	.LBB6_31
# BB#30:                                # %if.then.91
	andl	$1, %edx
	movl	%edx, (%rax)
.LBB6_31:                               # %cleanup.95
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	jbig2_huffman_get, .Lfunc_end6-jbig2_huffman_get
	.cfi_endproc

	.globl	jbig2_build_huffman_table
	.align	16, 0x90
	.type	jbig2_build_huffman_table,@function
jbig2_build_huffman_table:              # @jbig2_build_huffman_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 176
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movq	8(%rbp), %r12
	movslq	4(%rbp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	(%r14), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$4, %edx
	callq	jbig2_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB7_1
# BB#2:                                 # %if.end
	movq	%r14, 48(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rdi
	callq	memset
	movl	$-1, %r13d
	cmpl	$0, 4(%rbp)
	movq	%rbp, %rdi
	movq	%r12, %rdx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	jle	.LBB7_17
# BB#3:                                 # %for.body.preheader
	movq	%rbx, %rax
	addq	$116, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movl	$-1, %r13d
	movabsq	$8589934584, %r10       # imm = 0x1FFFFFFF8
	xorps	%xmm0, %xmm0
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB7_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
                                        #     Child Loop BB7_11 Depth 2
                                        #     Child Loop BB7_14 Depth 2
	leaq	(%rcx,%rcx,2), %r11
	movslq	(%rdx,%r11,4), %r14
	movl	%r14d, %esi
	cmpl	%r13d, %r14d
	jle	.LBB7_16
# BB#5:                                 # %for.body.13.lr.ph
                                        #   in Loop: Header=BB7_4 Depth=1
	movslq	%r13d, %rbp
	leal	-1(%r14), %eax
	subl	%r13d, %eax
	leaq	1(%rax), %rdx
	movq	%rdx, %r12
	andq	%r10, %r12
	andq	%r10, %rdx
	leaq	1(%rax,%rbp), %r9
	je	.LBB7_13
# BB#6:                                 # %vector.body.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	leal	-1(%rsi), %eax
	subl	%r13d, %eax
	incq	%rax
	andq	%r10, %rax
	addq	$-8, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	incl	%edx
	testb	$3, %dl
	movq	%rbp, %rdx
	je	.LBB7_9
# BB#7:                                 # %vector.body.prol.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	leal	-1(%r14), %r8d
	subl	%r13d, %r8d
	incl	%r8d
	andl	$24, %r8d
	addl	$-8, %r8d
	shrl	$3, %r8d
	incl	%r8d
	andl	$3, %r8d
	negq	%r8
	movq	%rbp, %rdx
	.align	16, 0x90
.LBB7_8:                                # %vector.body.prol
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, 4(%rbx,%rdx,4)
	movups	%xmm0, 20(%rbx,%rdx,4)
	addq	$8, %rdx
	incq	%r8
	jne	.LBB7_8
.LBB7_9:                                # %vector.body.preheader.split
                                        #   in Loop: Header=BB7_4 Depth=1
	addq	%r12, %rbp
	cmpq	$24, %rax
	jb	.LBB7_13
# BB#10:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	%rdi, %r8
	leal	-1(%r14), %edi
	subl	%r13d, %edi
	incq	%rdi
	andq	%r10, %rdi
	movslq	%r13d, %rax
	addq	%rdi, %rax
	subq	%rdx, %rax
	movq	104(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rdx,4), %rdx
	.align	16, 0x90
.LBB7_11:                               # %vector.body
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, -112(%rdx)
	movups	%xmm0, -96(%rdx)
	movups	%xmm0, -80(%rdx)
	movups	%xmm0, -64(%rdx)
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, (%rdx)
	subq	$-128, %rdx
	addq	$-32, %rax
	jne	.LBB7_11
# BB#12:                                #   in Loop: Header=BB7_4 Depth=1
	movq	%r8, %rdi
.LBB7_13:                               # %middle.block
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpq	%rbp, %r9
	je	.LBB7_15
	.align	16, 0x90
.LBB7_14:                               # %for.body.13
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$0, 4(%rbx,%rbp,4)
	incq	%rbp
	cmpl	%ebp, %esi
	jne	.LBB7_14
.LBB7_15:                               # %if.end.16.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	%esi, %r13d
	movq	112(%rsp), %rdx         # 8-byte Reload
.LBB7_16:                               # %if.end.16
                                        #   in Loop: Header=BB7_4 Depth=1
	incl	(%rbx,%r14,4)
	addl	4(%rdx,%r11,4), %esi
	cmpl	$16, %esi
	cmovgl	%r14d, %esi
	cmpl	%esi, %r15d
	movl	%r15d, %eax
	cmovll	%esi, %eax
	cmpl	$17, %esi
	cmovll	%eax, %r15d
	incq	%rcx
	movslq	4(%rdi), %rax
	cmpq	%rax, %rcx
	jl	.LBB7_4
.LBB7_17:                               # %for.end.32
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movl	$0, %esi
	movl	$-1, %edx
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	movq	48(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	movl	%r15d, %r8d
	callq	jbig2_error
	movl	$1, %r14d
	movb	%r15b, %cl
	shll	%cl, %r14d
	movq	(%r12), %rdi
	movl	$1, %esi
	movl	$16, %edx
	callq	jbig2_alloc
	testq	%rax, %rax
	je	.LBB7_18
# BB#19:                                # %if.end.40
	movl	%r15d, (%rax)
	movq	(%r12), %rdi
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movslq	%r14d, %rax
	movl	%r14d, 96(%rsp)         # 4-byte Spill
	movq	%rax, %r14
	movl	$16, %edx
	movq	%r14, %rsi
	callq	jbig2_alloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB7_20
# BB#22:                                # %if.end.50
	shlq	$4, %r14
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	memset
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rbp, 8(%rax)
	movq	%rbp, %rax
	movl	$0, (%rbx)
	testl	%r13d, %r13d
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	112(%rsp), %r9          # 8-byte Reload
	movq	80(%rsp), %rbp          # 8-byte Reload
	jle	.LBB7_52
# BB#23:                                # %for.body.58.lr.ph
	leal	-1(%rbp), %r10d
	movl	%r10d, 76(%rsp)         # 4-byte Spill
	movl	%r15d, %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movslq	%r13d, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	10(%rax), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	addq	$26, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB7_24
	.align	16, 0x90
.LBB7_51:                               # %for.inc.193.for.body.58_crit_edge
                                        #   in Loop: Header=BB7_24 Depth=1
	movl	(%rbx,%rcx,4), %eax
	incq	%rcx
.LBB7_24:                               # %for.body.58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_42 Depth 3
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	60(%rsp), %edx          # 4-byte Reload
	addl	%eax, %edx
	addl	%edx, %edx
	movl	%edx, 60(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	jle	.LBB7_50
# BB#25:                                # %for.body.67.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	subl	%ecx, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	xorl	%r14d, %r14d
	movl	60(%rsp), %eax          # 4-byte Reload
	.align	16, 0x90
.LBB7_26:                               # %for.body.67
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_42 Depth 3
	leaq	(%r14,%r14,2), %r12
	movl	(%r9,%r12,4), %edx
	cmpl	%ecx, %edx
	jne	.LBB7_49
# BB#27:                                # %if.then.74
                                        #   in Loop: Header=BB7_26 Depth=2
	movl	%eax, %r11d
	movl	100(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %r11d
	incl	%eax
	movl	%eax, %r8d
	shll	%cl, %r8d
	cmpl	96(%rsp), %r8d          # 4-byte Folded Reload
	jg	.LBB7_54
# BB#28:                                # %if.end.90
                                        #   in Loop: Header=BB7_26 Depth=2
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movl	4(%r9,%r12,4), %ecx
	cmpl	$0, (%rdi)
	setne	%al
	cmpl	%r10d, %r14d
	sete	%r15b
	andb	%al, %r15b
	movzbl	%al, %eax
	orl	$2, %eax
	movl	%ebp, %esi
	subl	%eax, %esi
	cmpl	%esi, %r14d
	jne	.LBB7_30
# BB#29:                                #   in Loop: Header=BB7_26 Depth=2
	orb	$2, %r15b
.LBB7_30:                               # %if.end.90
                                        #   in Loop: Header=BB7_26 Depth=2
	leal	(%rcx,%rdx), %r13d
	cmpl	$16, %r13d
	jle	.LBB7_31
# BB#35:                                # %for.cond.113.preheader
                                        #   in Loop: Header=BB7_26 Depth=2
	movq	%rdi, %r13
	movl	%r8d, %edi
	subl	%r11d, %edi
	jle	.LBB7_36
# BB#37:                                # %for.body.116.lr.ph
                                        #   in Loop: Header=BB7_26 Depth=2
	leaq	8(%r9,%r12,4), %rsi
	movslq	%r11d, %rbp
	leal	-1(%r8), %r10d
	testb	$1, %dil
	je	.LBB7_39
# BB#38:                                # %for.body.116.prol
                                        #   in Loop: Header=BB7_26 Depth=2
	movl	(%rsi), %edi
	movq	%rbp, %rax
	shlq	$4, %rax
	movq	24(%rsp), %r12          # 8-byte Reload
	movl	%edi, (%r12,%rax)
	movb	%dl, 8(%r12,%rax)
	movb	%cl, 9(%r12,%rax)
	movb	%r15b, 10(%r12,%rax)
	incq	%rbp
.LBB7_39:                               # %for.body.116.lr.ph.split
                                        #   in Loop: Header=BB7_26 Depth=2
	movq	%r13, %rdi
	cmpl	%r11d, %r10d
	jne	.LBB7_41
# BB#40:                                #   in Loop: Header=BB7_26 Depth=2
	movq	112(%rsp), %r9          # 8-byte Reload
	jmp	.LBB7_47
	.align	16, 0x90
.LBB7_31:                               # %for.cond.135.preheader
                                        #   in Loop: Header=BB7_26 Depth=2
	cmpl	%r11d, %r8d
	jle	.LBB7_48
# BB#32:                                # %for.body.138.lr.ph
                                        #   in Loop: Header=BB7_26 Depth=2
	movl	100(%rsp), %edx         # 4-byte Reload
	subl	%ecx, %edx
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	movb	%r15b, %r10b
	andb	$2, %r10b
	leaq	8(%r9,%r12,4), %rbp
	movslq	%r11d, %rax
	shlq	$4, %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	.align	16, 0x90
.LBB7_33:                               # %for.body.138
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r11d, %edi
	movb	%dl, %cl
	sarl	%cl, %edi
	andl	%esi, %edi
	testb	%r10b, %r10b
	movl	(%rbp), %ecx
	jne	.LBB7_34
# BB#44:                                # %if.else.154
                                        #   in Loop: Header=BB7_33 Depth=3
	addl	%edi, %ecx
	jmp	.LBB7_45
	.align	16, 0x90
.LBB7_34:                               # %if.then.145
                                        #   in Loop: Header=BB7_33 Depth=3
	subl	%edi, %ecx
.LBB7_45:                               # %if.end.163
                                        #   in Loop: Header=BB7_33 Depth=3
	movl	%ecx, -10(%rax)
	movb	%r13b, -2(%rax)
	movb	$0, -1(%rax)
	movb	%r15b, (%rax)
	incl	%r11d
	addq	$16, %rax
	cmpl	%r11d, %r8d
	jne	.LBB7_33
# BB#46:                                #   in Loop: Header=BB7_26 Depth=2
	movq	64(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB7_47
.LBB7_36:                               #   in Loop: Header=BB7_26 Depth=2
	movq	%r13, %rdi
	jmp	.LBB7_48
.LBB7_41:                               # %for.body.116.lr.ph.split.split
                                        #   in Loop: Header=BB7_26 Depth=2
	movq	%rdi, %r10
	subl	%ebp, %r8d
	shlq	$4, %rbp
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rbp,%rax), %rax
	.align	16, 0x90
.LBB7_42:                               # %for.body.116
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rsi), %edi
	movl	%edi, -26(%rax)
	movb	%dl, -18(%rax)
	movb	%cl, -17(%rax)
	movb	%r15b, -16(%rax)
	movl	(%rsi), %edi
	movl	%edi, -10(%rax)
	movb	%dl, -2(%rax)
	movb	%cl, -1(%rax)
	movb	%r15b, (%rax)
	addq	$32, %rax
	addl	$-2, %r8d
	jne	.LBB7_42
# BB#43:                                #   in Loop: Header=BB7_26 Depth=2
	movq	%r10, %rdi
	movq	112(%rsp), %r9          # 8-byte Reload
.LBB7_47:                               # %for.inc.187
                                        #   in Loop: Header=BB7_26 Depth=2
	movq	80(%rsp), %rbp          # 8-byte Reload
	movl	76(%rsp), %r10d         # 4-byte Reload
.LBB7_48:                               # %for.inc.187
                                        #   in Loop: Header=BB7_26 Depth=2
	movq	88(%rsp), %rcx          # 8-byte Reload
	movl	104(%rsp), %eax         # 4-byte Reload
.LBB7_49:                               # %for.inc.187
                                        #   in Loop: Header=BB7_26 Depth=2
	incq	%r14
	cmpq	%rbp, %r14
	jl	.LBB7_26
.LBB7_50:                               # %for.inc.193
                                        #   in Loop: Header=BB7_24 Depth=1
	cmpq	8(%rsp), %rcx           # 8-byte Folded Reload
	jl	.LBB7_51
.LBB7_52:                               # %for.end.195
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
	movq	32(%rsp), %r15          # 8-byte Reload
	jmp	.LBB7_53
.LBB7_1:                                # %if.then
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.3, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	jmp	.LBB7_53
.LBB7_18:                               # %if.then.37
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.5, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movq	(%r12), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
	jmp	.LBB7_53
.LBB7_20:                               # %if.then.46
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.6, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movq	(%r12), %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_free
	movq	(%r12), %rdi
	jmp	.LBB7_21
.LBB7_54:                               # %cleanup.190
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.7, %ecx
	xorl	%eax, %eax
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movl	96(%rsp), %r9d          # 4-byte Reload
	callq	jbig2_error
	movq	(%rbp), %rdi
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	8(%r14), %rsi
	callq	jbig2_free
	movq	(%rbp), %rdi
	movq	%r14, %rsi
	callq	jbig2_free
	movq	(%rbp), %rdi
.LBB7_21:                               # %cleanup.197
	movq	%rbx, %rsi
	callq	jbig2_free
	xorl	%r15d, %r15d
.LBB7_53:                               # %cleanup.197
	movq	%r15, %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	jbig2_build_huffman_table, .Lfunc_end7-jbig2_build_huffman_table
	.cfi_endproc

	.globl	jbig2_release_huffman_table
	.align	16, 0x90
	.type	jbig2_release_huffman_table,@function
jbig2_release_huffman_table:            # @jbig2_release_huffman_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -24
.Ltmp54:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB8_1
# BB#2:                                 # %if.then
	movq	(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	jbig2_free
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	jbig2_free              # TAILCALL
.LBB8_1:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	jbig2_release_huffman_table, .Lfunc_end8-jbig2_release_huffman_table
	.cfi_endproc

	.globl	jbig2_table
	.align	16, 0x90
	.type	jbig2_table,@function
jbig2_table:                            # @jbig2_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp58:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp59:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp61:
	.cfi_def_cfa_offset 224
.Ltmp62:
	.cfi_offset %rbx, -56
.Ltmp63:
	.cfi_offset %r12, -48
.Ltmp64:
	.cfi_offset %r13, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rdi, %r12
	movq	$0, 40(%rsi)
	xorl	%ebp, %ebp
	cmpq	$10, 16(%rsi)
	movl	$0, %r15d
	jb	.LBB9_14
# BB#1:                                 # %if.end
	movq	%r12, 112(%rsp)         # 8-byte Spill
	movzbl	(%r13), %eax
	movl	%eax, %ebp
	andl	$1, %ebp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	%eax, %ecx
	shrl	%ecx
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	movl	%ecx, %ebx
	andl	$7, %ebx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	leal	1(%rbx), %r12d
	movl	%r12d, 72(%rsp)         # 4-byte Spill
	shrl	$4, %eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	%eax, %r14d
	andl	$7, %r14d
	movq	%r14, 120(%rsp)         # 8-byte Spill
	leaq	1(%r13), %rdi
	movq	%rsi, %r15
	callq	jbig2_get_int32
	movl	%eax, 76(%rsp)          # 4-byte Spill
	leaq	5(%r13), %rdi
	callq	jbig2_get_int32
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movq	16(%r15), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	(,%rax,8), %rax
	leal	2(%rbp), %ebp
	movl	%r12d, %ecx
	imull	%ebp, %ecx
	subq	%rcx, %rax
	leal	2(%rbx,%r14), %ecx
	movq	112(%rsp), %r14         # 8-byte Reload
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rbx
	movq	(%r14), %rdi
	movl	$1, %esi
	movl	$16, %edx
	callq	jbig2_alloc
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB9_2
# BB#5:                                 # %if.end.25
	movq	%r15, 24(%rsp)          # 8-byte Spill
	addq	%rbp, %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	(%r14), %rdi
	movl	$12, %edx
	movq	%rbx, %rsi
	callq	jbig2_alloc
	movq	%rax, %rbp
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	testq	%rbp, %rbp
	je	.LBB9_8
# BB#6:                                 # %while.cond.preheader
	movq	160(%rsp), %rax         # 8-byte Reload
	leaq	-72(,%rax,8), %r14
	movq	%r14, 160(%rsp)         # 8-byte Spill
	movl	72(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %r12d
	cmpq	%r14, %r12
	setae	%dl
	xorl	%r8d, %r8d
	movl	76(%rsp), %r11d         # 4-byte Reload
	cmpl	148(%rsp), %r11d        # 4-byte Folded Reload
	jge	.LBB9_7
# BB#10:                                # %while.body.lr.ph
	movq	120(%rsp), %rdi         # 8-byte Reload
	leal	1(%rdi), %r8d
	movl	$-1, %ebx
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	%r8d, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movb	%r8b, %cl
	shll	%cl, %ebx
	notl	%ebx
	movl	%ebx, 92(%rsp)          # 4-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	8(%rax), %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	136(%rsp), %ecx         # 4-byte Reload
	movl	152(%rsp), %r15d        # 4-byte Reload
	addb	%r15b, %cl
	addb	$2, %cl
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	leal	-7(%rax), %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	$7, %ecx
	movl	$7, %ebx
	subl	%eax, %ebx
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	leal	8(%rdi), %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	incb	%r15b
	subl	%edi, %ecx
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	addl	$-7, %edi
	movq	%rdi, 120(%rsp)         # 8-byte Spill
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB9_11:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_17 Depth 2
                                        #     Child Loop BB9_25 Depth 2
	testb	$1, %dl
	jne	.LBB9_12
# BB#15:                                # %if.end.41
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	%r9d, %eax
	andl	$7, %eax
	xorl	%edi, %edi
	movl	%r12d, %ecx
	addl	%eax, %ecx
	je	.LBB9_22
# BB#16:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB9_11 Depth=1
	movzbl	%r10b, %ecx
	andl	$7, %ecx
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rcx), %esi
	shrl	$3, %esi
	incl	%esi
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movl	52(%rsp), %edx          # 4-byte Reload
	subl	%ecx, %edx
	movq	%r9, %rbp
	shrq	$3, %rbp
	xorl	%edi, %edi
	.align	16, 0x90
.LBB9_17:                               # %for.body.i
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %ecx
	movzbl	9(%r13,%rcx), %ebx
	testl	%eax, %eax
	jle	.LBB9_19
# BB#18:                                # %if.then.i
                                        #   in Loop: Header=BB9_17 Depth=2
	movb	%al, %cl
	shll	%cl, %ebx
	jmp	.LBB9_21
	.align	16, 0x90
.LBB9_19:                               # %if.else.i
                                        #   in Loop: Header=BB9_17 Depth=2
	jns	.LBB9_21
# BB#20:                                # %if.then.14.i
                                        #   in Loop: Header=BB9_17 Depth=2
	movb	%dl, %cl
	shrl	%cl, %ebx
	.align	16, 0x90
.LBB9_21:                               # %if.end.16.i
                                        #   in Loop: Header=BB9_17 Depth=2
	incl	%ebp
	orl	%ebx, %edi
	decl	%esi
	addl	$-8, %eax
	addl	$8, %edx
	cmpl	$1, %esi
	jg	.LBB9_17
.LBB9_22:                               # %jbig2_table_read_bits.exit
                                        #   in Loop: Header=BB9_11 Depth=1
	andl	108(%rsp), %edi         # 4-byte Folded Reload
	addq	%r12, %r9
	movq	%r12, %r14
	movq	%r8, %r12
	leaq	(%r12,%r12,2), %r8
	movq	128(%rsp), %rbp         # 8-byte Reload
	movl	%edi, (%rbp,%r8,4)
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	(%r9,%rdx), %rax
	cmpq	160(%rsp), %rax         # 8-byte Folded Reload
	jae	.LBB9_12
# BB#23:                                # %if.end.49
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	%r9d, %ecx
	andl	$7, %ecx
	xorl	%eax, %eax
	addl	%ecx, %edx
	je	.LBB9_30
# BB#24:                                # %for.body.lr.ph.i.246
                                        #   in Loop: Header=BB9_11 Depth=1
	movzbl	%r15b, %eax
	andl	$7, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax), %edi
	shrl	$3, %edi
	incl	%edi
	movq	120(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rax), %edx
	movl	48(%rsp), %esi          # 4-byte Reload
	subl	%eax, %esi
	shrq	$3, %r9
	xorl	%eax, %eax
	.align	16, 0x90
.LBB9_25:                               # %for.body.i.258
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r9d, %ecx
	movzbl	9(%r13,%rcx), %ebx
	testl	%edx, %edx
	jle	.LBB9_27
# BB#26:                                # %if.then.i.260
                                        #   in Loop: Header=BB9_25 Depth=2
	movb	%dl, %cl
	shll	%cl, %ebx
	jmp	.LBB9_29
	.align	16, 0x90
.LBB9_27:                               # %if.else.i.262
                                        #   in Loop: Header=BB9_25 Depth=2
	jns	.LBB9_29
# BB#28:                                # %if.then.14.i.265
                                        #   in Loop: Header=BB9_25 Depth=2
	movb	%sil, %cl
	shrl	%cl, %ebx
	.align	16, 0x90
.LBB9_29:                               # %if.end.16.i.269
                                        #   in Loop: Header=BB9_25 Depth=2
	incl	%r9d
	orl	%ebx, %eax
	decl	%edi
	addl	$-8, %edx
	addl	$8, %esi
	cmpl	$1, %edi
	jg	.LBB9_25
.LBB9_30:                               # %jbig2_table_read_bits.exit275
                                        #   in Loop: Header=BB9_11 Depth=1
	andl	92(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 4(%rbp,%r8,4)
	movl	%r11d, 8(%rbp,%r8,4)
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
	addl	%edx, %r11d
	movq	%r12, %r8
	incq	%r8
	movq	%r14, %r12
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r12), %rax
	movq	160(%rsp), %r14         # 8-byte Reload
	cmpq	%r14, %rax
	setae	%dl
	movl	136(%rsp), %eax         # 4-byte Reload
	addb	%al, %r10b
	addb	%al, %r15b
	cmpl	148(%rsp), %r11d        # 4-byte Folded Reload
	movq	%rcx, %r9
	jl	.LBB9_11
	jmp	.LBB9_31
.LBB9_2:                                # %error_exit.thread
	movl	(%r15), %edx
	movl	$3, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movq	%r14, %r12
	movq	80(%rsp), %r15          # 8-byte Reload
	jmp	.LBB9_3
.LBB9_8:                                # %if.then.30
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movl	$3, %esi
	movl	$.L.str.9, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movq	%r14, %r12
	movq	80(%rsp), %r15          # 8-byte Reload
	jmp	.LBB9_9
.LBB9_7:
	xorl	%ecx, %ecx
.LBB9_31:                               # %while.end
	testb	%dl, %dl
	movq	80(%rsp), %r15          # 8-byte Reload
	je	.LBB9_33
# BB#32:
	movq	112(%rsp), %r12         # 8-byte Reload
	jmp	.LBB9_13
.LBB9_12:
	movq	112(%rsp), %r12         # 8-byte Reload
	movq	80(%rsp), %r15          # 8-byte Reload
	jmp	.LBB9_13
.LBB9_33:                               # %if.end.61
	movq	%r8, %r10
	movq	%rbp, %r9
	movl	%ecx, %eax
	movq	%rcx, %r11
	andl	$7, %eax
	xorl	%ebp, %ebp
	movl	%r12d, %ecx
	addl	%eax, %ecx
	je	.LBB9_40
# BB#34:                                # %for.body.lr.ph.i.205
	movq	%r11, %rsi
	shrq	$3, %rsi
	movl	%r11d, %ecx
	andl	$7, %ecx
	movq	32(%rsp), %rbp          # 8-byte Reload
	leal	8(%rcx,%rbp), %edi
	shrl	$3, %edi
	incl	%edi
	leal	-7(%rcx,%rbp), %eax
	movl	$7, %edx
	subl	%ecx, %edx
	subl	%ebp, %edx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB9_35:                               # %for.body.i.217
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	movzbl	9(%r13,%rcx), %ebx
	testl	%eax, %eax
	jle	.LBB9_37
# BB#36:                                # %if.then.i.219
                                        #   in Loop: Header=BB9_35 Depth=1
	movb	%al, %cl
	shll	%cl, %ebx
	jmp	.LBB9_39
	.align	16, 0x90
.LBB9_37:                               # %if.else.i.221
                                        #   in Loop: Header=BB9_35 Depth=1
	jns	.LBB9_39
# BB#38:                                # %if.then.14.i.224
                                        #   in Loop: Header=BB9_35 Depth=1
	movb	%dl, %cl
	shrl	%cl, %ebx
	.align	16, 0x90
.LBB9_39:                               # %if.end.16.i.228
                                        #   in Loop: Header=BB9_35 Depth=1
	incl	%esi
	orl	%ebx, %ebp
	decl	%edi
	addl	$-8, %eax
	addl	$8, %edx
	cmpl	$1, %edi
	jg	.LBB9_35
.LBB9_40:                               # %jbig2_table_read_bits.exit234
	movl	$-1, %r8d
	movl	72(%rsp), %ecx          # 4-byte Reload
	shll	%cl, %r8d
	notl	%r8d
	andl	%r8d, %ebp
	movq	%r11, %rdi
	leaq	(%rdi,%r12), %rsi
	movq	%r10, %rcx
	leaq	(%rcx,%rcx,2), %rax
	movl	%ebp, (%r9,%rax,4)
	movq	%r9, %rbp
	movl	$32, 4(%rbp,%rax,4)
	movl	76(%rsp), %edx          # 4-byte Reload
	decl	%edx
	movl	%edx, 8(%rbp,%rax,4)
	leaq	(%rsi,%r12), %r11
	cmpq	%r14, %r11
	movq	%r12, %rdx
	movq	112(%rsp), %r12         # 8-byte Reload
	jae	.LBB9_13
# BB#41:                                # %if.end.76
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	movq	%r14, 160(%rsp)         # 8-byte Spill
	movq	%rbp, %r9
	leaq	1(%rcx), %r10
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	%esi, %eax
	andl	$7, %eax
	xorl	%edi, %edi
	movl	%edx, %ecx
	movq	%rdx, %r14
	addl	%eax, %ecx
	je	.LBB9_48
# BB#42:                                # %for.body.lr.ph.i.164
	shrq	$3, %rsi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	152(%rsp), %rax         # 8-byte Reload
	leal	1(%rdi,%rax), %ecx
	andl	$7, %ecx
	leal	8(%rdi,%rcx), %ebp
	shrl	$3, %ebp
	incl	%ebp
	leal	-7(%rdi,%rcx), %eax
	movl	$7, %edx
	subl	%edi, %edx
	subl	%ecx, %edx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB9_43:                               # %for.body.i.176
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	movzbl	9(%r13,%rcx), %ebx
	testl	%eax, %eax
	jle	.LBB9_45
# BB#44:                                # %if.then.i.178
                                        #   in Loop: Header=BB9_43 Depth=1
	movb	%al, %cl
	shll	%cl, %ebx
	jmp	.LBB9_47
	.align	16, 0x90
.LBB9_45:                               # %if.else.i.180
                                        #   in Loop: Header=BB9_43 Depth=1
	jns	.LBB9_47
# BB#46:                                # %if.then.14.i.183
                                        #   in Loop: Header=BB9_43 Depth=1
	movb	%dl, %cl
	shrl	%cl, %ebx
	.align	16, 0x90
.LBB9_47:                               # %if.end.16.i.187
                                        #   in Loop: Header=BB9_43 Depth=1
	incl	%esi
	orl	%ebx, %edi
	decl	%ebp
	addl	$-8, %eax
	addl	$8, %edx
	cmpl	$1, %ebp
	jg	.LBB9_43
.LBB9_48:                               # %jbig2_table_read_bits.exit193
	andl	%r8d, %edi
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	2(%rax), %rdx
	movq	16(%rsp), %rbx          # 8-byte Reload
	testl	%ebx, %ebx
	leaq	(%r10,%r10,2), %rax
	movq	%r9, %rbp
	movl	%edi, (%rbp,%rax,4)
	movl	$32, 4(%rbp,%rax,4)
	movl	148(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 8(%rbp,%rax,4)
	jne	.LBB9_50
# BB#49:
	movq	8(%rsp), %r10           # 8-byte Reload
	jmp	.LBB9_59
.LBB9_50:                               # %if.then.86
	leaq	(%r11,%r14), %rax
	cmpq	160(%rsp), %rax         # 8-byte Folded Reload
	jae	.LBB9_13
# BB#51:                                # %if.end.92
	movq	%rdx, %r9
	movq	%rbp, %rbx
	movl	%r11d, %eax
	andl	$7, %eax
	xorl	%edi, %edi
	addl	%eax, %r14d
	movq	8(%rsp), %r10           # 8-byte Reload
	je	.LBB9_58
# BB#52:                                # %for.body.lr.ph.i.123
	shrq	$3, %r11
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	152(%rsp), %rax         # 8-byte Reload
	leal	2(%rax,%rdi,2), %ecx
	andl	$7, %ecx
	leal	8(%rdi,%rcx), %esi
	shrl	$3, %esi
	incl	%esi
	leal	-7(%rdi,%rcx), %eax
	movl	$7, %edx
	subl	%edi, %edx
	subl	%ecx, %edx
	xorl	%edi, %edi
.LBB9_53:                               # %for.body.i.135
                                        # =>This Inner Loop Header: Depth=1
	movl	%r11d, %ecx
	movzbl	9(%r13,%rcx), %ebp
	testl	%eax, %eax
	jle	.LBB9_55
# BB#54:                                # %if.then.i.137
                                        #   in Loop: Header=BB9_53 Depth=1
	movb	%al, %cl
	shll	%cl, %ebp
	jmp	.LBB9_57
.LBB9_55:                               # %if.else.i.139
                                        #   in Loop: Header=BB9_53 Depth=1
	jns	.LBB9_57
# BB#56:                                # %if.then.14.i.142
                                        #   in Loop: Header=BB9_53 Depth=1
	movb	%dl, %cl
	shrl	%cl, %ebp
.LBB9_57:                               # %if.end.16.i.146
                                        #   in Loop: Header=BB9_53 Depth=1
	incl	%r11d
	orl	%ebp, %edi
	decl	%esi
	addl	$-8, %eax
	addl	$8, %edx
	cmpl	$1, %esi
	jg	.LBB9_53
.LBB9_58:                               # %jbig2_table_read_bits.exit152
	andl	%r8d, %edi
	leaq	(%r9,%r9,2), %rax
	movq	%rbx, %rbp
	movl	%edi, (%rbp,%rax,4)
	movl	$0, 4(%rbp,%rax,4)
	movl	$0, 8(%rbp,%rax,4)
	movq	136(%rsp), %rax         # 8-byte Reload
	addq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rbx          # 8-byte Reload
.LBB9_59:                               # %if.end.101
	cmpq	%r10, %rdx
	je	.LBB9_62
# BB#60:                                # %if.then.104
	movq	(%r12), %rdi
	movl	$12, %ecx
	movq	%rbp, %rsi
	movq	%rdx, %r14
	callq	jbig2_realloc
	testq	%rax, %rax
	je	.LBB9_64
# BB#61:                                # %cleanup.thread
	movq	%rax, %rbp
	movq	%r14, %rdx
.LBB9_62:                               # %cleanup.117
	movl	%ebx, (%r15)
	movl	%edx, 4(%r15)
	movq	%rbp, 8(%r15)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%r15, 40(%rax)
	xorl	%ebx, %ebx
	jmp	.LBB9_63
.LBB9_13:                               # %too_short
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB9_14:                               # %too_short
	movl	(%rsi), %edx
	movl	$3, %esi
	movl	$.L.str.11, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
.LBB9_9:                                # %error_exit
	testq	%rbp, %rbp
	jne	.LBB9_65
	jmp	.LBB9_3
.LBB9_64:                               # %error_exit.thread291
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movl	$3, %esi
	movl	$.L.str.10, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
.LBB9_65:                               # %if.then.135
	movq	(%r12), %rdi
	movq	%rbp, %rsi
	callq	jbig2_free
.LBB9_3:                                # %if.end.137
	movl	$-1, %ebx
	testq	%r15, %r15
	je	.LBB9_63
# BB#4:                                 # %if.then.140
	movq	(%r12), %rdi
	movq	%r15, %rsi
	callq	jbig2_free
.LBB9_63:                               # %cleanup.143
	movl	%ebx, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	jbig2_table, .Lfunc_end9-jbig2_table
	.cfi_endproc

	.globl	jbig2_table_free
	.align	16, 0x90
	.type	jbig2_table_free,@function
jbig2_table_free:                       # @jbig2_table_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp70:
	.cfi_def_cfa_offset 32
.Ltmp71:
	.cfi_offset %rbx, -24
.Ltmp72:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB10_4
# BB#1:                                 # %if.then
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB10_3
# BB#2:                                 # %if.then.2
	movq	(%r14), %rdi
	callq	jbig2_free
.LBB10_3:                               # %if.end
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	jbig2_free              # TAILCALL
.LBB10_4:                               # %if.end.5
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	jbig2_table_free, .Lfunc_end10-jbig2_table_free
	.cfi_endproc

	.globl	jbig2_find_table
	.align	16, 0x90
	.type	jbig2_find_table,@function
jbig2_find_table:                       # @jbig2_find_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 48
.Ltmp78:
	.cfi_offset %rbx, -48
.Ltmp79:
	.cfi_offset %r12, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	xorl	%r15d, %r15d
	cmpl	$0, 24(%rbx)
	movl	$0, %eax
	jle	.LBB11_7
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rax
	movl	(%rax,%rbp,4), %esi
	movq	%r12, %rdi
	callq	jbig2_find_segment
	testq	%rax, %rax
	je	.LBB11_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB11_2 Depth=1
	movb	4(%rax), %cl
	andb	$63, %cl
	movzbl	%cl, %ecx
	cmpl	$53, %ecx
	jne	.LBB11_6
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpl	%r14d, %r15d
	je	.LBB11_8
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB11_2 Depth=1
	incl	%r15d
.LBB11_6:                               # %for.inc
                                        #   in Loop: Header=BB11_2 Depth=1
	incq	%rbp
	movslq	24(%rbx), %rax
	cmpq	%rax, %rbp
	movl	$0, %eax
	jl	.LBB11_2
	jmp	.LBB11_7
.LBB11_8:                               # %cleanup
	movq	40(%rax), %rax
.LBB11_7:                               # %cleanup.8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	jbig2_find_table, .Lfunc_end11-jbig2_find_table
	.cfi_endproc

	.type	jbig2_huffman_lines_A,@object # @jbig2_huffman_lines_A
	.section	.rodata,"a",@progbits
	.globl	jbig2_huffman_lines_A
	.align	16
jbig2_huffman_lines_A:
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	3                       # 0x3
	.long	16                      # 0x10
	.long	272                     # 0x110
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	4294967295              # 0xffffffff
	.long	3                       # 0x3
	.long	32                      # 0x20
	.long	65808                   # 0x10110
	.size	jbig2_huffman_lines_A, 60

	.type	jbig2_huffman_params_A,@object # @jbig2_huffman_params_A
	.globl	jbig2_huffman_params_A
	.align	8
jbig2_huffman_params_A:
	.long	0                       # 0x0
	.long	5                       # 0x5
	.quad	jbig2_huffman_lines_A
	.size	jbig2_huffman_params_A, 16

	.type	jbig2_huffman_lines_B,@object # @jbig2_huffman_lines_B
	.globl	jbig2_huffman_lines_B
	.align	16
jbig2_huffman_lines_B:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	4294967295              # 0xffffffff
	.long	6                       # 0x6
	.long	32                      # 0x20
	.long	75                      # 0x4b
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	jbig2_huffman_lines_B, 96

	.type	jbig2_huffman_params_B,@object # @jbig2_huffman_params_B
	.globl	jbig2_huffman_params_B
	.align	8
jbig2_huffman_params_B:
	.long	1                       # 0x1
	.long	8                       # 0x8
	.quad	jbig2_huffman_lines_B
	.size	jbig2_huffman_params_B, 16

	.type	jbig2_huffman_lines_C,@object # @jbig2_huffman_lines_C
	.globl	jbig2_huffman_lines_C
	.align	16
jbig2_huffman_lines_C:
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	4294967040              # 0xffffff00
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	11                      # 0xb
	.long	8                       # 0x8
	.long	32                      # 0x20
	.long	4294967039              # 0xfffffeff
	.long	7                       # 0x7
	.long	32                      # 0x20
	.long	75                      # 0x4b
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	jbig2_huffman_lines_C, 108

	.type	jbig2_huffman_params_C,@object # @jbig2_huffman_params_C
	.globl	jbig2_huffman_params_C
	.align	8
jbig2_huffman_params_C:
	.long	1                       # 0x1
	.long	9                       # 0x9
	.quad	jbig2_huffman_lines_C
	.size	jbig2_huffman_params_C, 16

	.type	jbig2_huffman_lines_D,@object # @jbig2_huffman_lines_D
	.globl	jbig2_huffman_lines_D
	.align	16
jbig2_huffman_lines_D:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	4294967295              # 0xffffffff
	.long	5                       # 0x5
	.long	32                      # 0x20
	.long	76                      # 0x4c
	.size	jbig2_huffman_lines_D, 84

	.type	jbig2_huffman_params_D,@object # @jbig2_huffman_params_D
	.globl	jbig2_huffman_params_D
	.align	8
jbig2_huffman_params_D:
	.long	0                       # 0x0
	.long	7                       # 0x7
	.quad	jbig2_huffman_lines_D
	.size	jbig2_huffman_params_D, 16

	.type	jbig2_huffman_lines_E,@object # @jbig2_huffman_lines_E
	.globl	jbig2_huffman_lines_E
	.align	16
jbig2_huffman_lines_E:
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	4294967041              # 0xffffff01
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	12                      # 0xc
	.long	7                       # 0x7
	.long	32                      # 0x20
	.long	4294967040              # 0xffffff00
	.long	6                       # 0x6
	.long	32                      # 0x20
	.long	76                      # 0x4c
	.size	jbig2_huffman_lines_E, 96

	.type	jbig2_huffman_params_E,@object # @jbig2_huffman_params_E
	.globl	jbig2_huffman_params_E
	.align	8
jbig2_huffman_params_E:
	.long	0                       # 0x0
	.long	8                       # 0x8
	.quad	jbig2_huffman_lines_E
	.size	jbig2_huffman_params_E, 16

	.type	jbig2_huffman_lines_F,@object # @jbig2_huffman_lines_F
	.globl	jbig2_huffman_lines_F
	.align	16
jbig2_huffman_lines_F:
	.long	5                       # 0x5
	.long	10                      # 0xa
	.long	4294965248              # 0xfffff800
	.long	4                       # 0x4
	.long	9                       # 0x9
	.long	4294966272              # 0xfffffc00
	.long	4                       # 0x4
	.long	8                       # 0x8
	.long	4294966784              # 0xfffffe00
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	4294967040              # 0xffffff00
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	4294967168              # 0xffffff80
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	4294967232              # 0xffffffc0
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	4294967264              # 0xffffffe0
	.long	2                       # 0x2
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	7                       # 0x7
	.long	128                     # 0x80
	.long	3                       # 0x3
	.long	8                       # 0x8
	.long	256                     # 0x100
	.long	4                       # 0x4
	.long	9                       # 0x9
	.long	512                     # 0x200
	.long	4                       # 0x4
	.long	10                      # 0xa
	.long	1024                    # 0x400
	.long	6                       # 0x6
	.long	32                      # 0x20
	.long	4294965247              # 0xfffff7ff
	.long	6                       # 0x6
	.long	32                      # 0x20
	.long	2048                    # 0x800
	.size	jbig2_huffman_lines_F, 168

	.type	jbig2_huffman_params_F,@object # @jbig2_huffman_params_F
	.globl	jbig2_huffman_params_F
	.align	8
jbig2_huffman_params_F:
	.long	0                       # 0x0
	.long	14                      # 0xe
	.quad	jbig2_huffman_lines_F
	.size	jbig2_huffman_params_F, 16

	.type	jbig2_huffman_lines_G,@object # @jbig2_huffman_lines_G
	.globl	jbig2_huffman_lines_G
	.align	16
jbig2_huffman_lines_G:
	.long	4                       # 0x4
	.long	9                       # 0x9
	.long	4294966272              # 0xfffffc00
	.long	3                       # 0x3
	.long	8                       # 0x8
	.long	4294966784              # 0xfffffe00
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	4294967040              # 0xffffff00
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	4294967168              # 0xffffff80
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	4294967232              # 0xffffffc0
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	4294967264              # 0xffffffe0
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	32                      # 0x20
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	64                      # 0x40
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	128                     # 0x80
	.long	3                       # 0x3
	.long	8                       # 0x8
	.long	256                     # 0x100
	.long	3                       # 0x3
	.long	9                       # 0x9
	.long	512                     # 0x200
	.long	3                       # 0x3
	.long	10                      # 0xa
	.long	1024                    # 0x400
	.long	5                       # 0x5
	.long	32                      # 0x20
	.long	4294966271              # 0xfffffbff
	.long	5                       # 0x5
	.long	32                      # 0x20
	.long	2048                    # 0x800
	.size	jbig2_huffman_lines_G, 180

	.type	jbig2_huffman_params_G,@object # @jbig2_huffman_params_G
	.globl	jbig2_huffman_params_G
	.align	8
jbig2_huffman_params_G:
	.long	0                       # 0x0
	.long	15                      # 0xf
	.quad	jbig2_huffman_lines_G
	.size	jbig2_huffman_params_G, 16

	.type	jbig2_huffman_lines_H,@object # @jbig2_huffman_lines_H
	.globl	jbig2_huffman_lines_H
	.align	16
jbig2_huffman_lines_H:
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	4294967281              # 0xfffffff1
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	4294967289              # 0xfffffff9
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	4294967291              # 0xfffffffb
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	4294967293              # 0xfffffffd
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	4294967294              # 0xfffffffe
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	20                      # 0x14
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	22                      # 0x16
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	38                      # 0x26
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	70                      # 0x46
	.long	5                       # 0x5
	.long	7                       # 0x7
	.long	134                     # 0x86
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	262                     # 0x106
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	390                     # 0x186
	.long	6                       # 0x6
	.long	10                      # 0xa
	.long	646                     # 0x286
	.long	9                       # 0x9
	.long	32                      # 0x20
	.long	4294967280              # 0xfffffff0
	.long	9                       # 0x9
	.long	32                      # 0x20
	.long	1670                    # 0x686
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	jbig2_huffman_lines_H, 252

	.type	jbig2_huffman_params_H,@object # @jbig2_huffman_params_H
	.globl	jbig2_huffman_params_H
	.align	8
jbig2_huffman_params_H:
	.long	1                       # 0x1
	.long	21                      # 0x15
	.quad	jbig2_huffman_lines_H
	.size	jbig2_huffman_params_H, 16

	.type	jbig2_huffman_lines_I,@object # @jbig2_huffman_lines_I
	.globl	jbig2_huffman_lines_I
	.align	16
jbig2_huffman_lines_I:
	.long	8                       # 0x8
	.long	4                       # 0x4
	.long	4294967265              # 0xffffffe1
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	4294967281              # 0xfffffff1
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	4294967285              # 0xfffffff5
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	4294967289              # 0xfffffff9
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	4294967291              # 0xfffffffb
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	4294967293              # 0xfffffffd
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	5                       # 0x5
	.long	7                       # 0x7
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	39                      # 0x27
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	43                      # 0x2b
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	75                      # 0x4b
	.long	5                       # 0x5
	.long	7                       # 0x7
	.long	139                     # 0x8b
	.long	5                       # 0x5
	.long	8                       # 0x8
	.long	267                     # 0x10b
	.long	6                       # 0x6
	.long	8                       # 0x8
	.long	523                     # 0x20b
	.long	7                       # 0x7
	.long	9                       # 0x9
	.long	779                     # 0x30b
	.long	6                       # 0x6
	.long	11                      # 0xb
	.long	1291                    # 0x50b
	.long	9                       # 0x9
	.long	32                      # 0x20
	.long	4294967264              # 0xffffffe0
	.long	9                       # 0x9
	.long	32                      # 0x20
	.long	3339                    # 0xd0b
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	jbig2_huffman_lines_I, 264

	.type	jbig2_huffman_params_I,@object # @jbig2_huffman_params_I
	.globl	jbig2_huffman_params_I
	.align	8
jbig2_huffman_params_I:
	.long	1                       # 0x1
	.long	22                      # 0x16
	.quad	jbig2_huffman_lines_I
	.size	jbig2_huffman_params_I, 16

	.type	jbig2_huffman_lines_J,@object # @jbig2_huffman_lines_J
	.globl	jbig2_huffman_lines_J
	.align	16
jbig2_huffman_lines_J:
	.long	7                       # 0x7
	.long	4                       # 0x4
	.long	4294967275              # 0xffffffeb
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	4294967291              # 0xfffffffb
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	4294967292              # 0xfffffffc
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	4294967293              # 0xfffffffd
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	4294967294              # 0xfffffffe
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	70                      # 0x46
	.long	6                       # 0x6
	.long	5                       # 0x5
	.long	102                     # 0x66
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	134                     # 0x86
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	198                     # 0xc6
	.long	6                       # 0x6
	.long	8                       # 0x8
	.long	326                     # 0x146
	.long	6                       # 0x6
	.long	9                       # 0x9
	.long	582                     # 0x246
	.long	6                       # 0x6
	.long	10                      # 0xa
	.long	1094                    # 0x446
	.long	7                       # 0x7
	.long	11                      # 0xb
	.long	2118                    # 0x846
	.long	8                       # 0x8
	.long	32                      # 0x20
	.long	4294967274              # 0xffffffea
	.long	8                       # 0x8
	.long	32                      # 0x20
	.long	4166                    # 0x1046
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	jbig2_huffman_lines_J, 252

	.type	jbig2_huffman_params_J,@object # @jbig2_huffman_params_J
	.globl	jbig2_huffman_params_J
	.align	8
jbig2_huffman_params_J:
	.long	1                       # 0x1
	.long	21                      # 0x15
	.quad	jbig2_huffman_lines_J
	.size	jbig2_huffman_params_J, 16

	.type	jbig2_huffman_lines_K,@object # @jbig2_huffman_lines_K
	.globl	jbig2_huffman_lines_K
	.align	16
jbig2_huffman_lines_K:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	7                       # 0x7
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	9                       # 0x9
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	13                      # 0xd
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	17                      # 0x11
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	21                      # 0x15
	.long	7                       # 0x7
	.long	4                       # 0x4
	.long	29                      # 0x1d
	.long	7                       # 0x7
	.long	5                       # 0x5
	.long	45                      # 0x2d
	.long	7                       # 0x7
	.long	6                       # 0x6
	.long	77                      # 0x4d
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	4294967295              # 0xffffffff
	.long	7                       # 0x7
	.long	32                      # 0x20
	.long	141                     # 0x8d
	.size	jbig2_huffman_lines_K, 168

	.type	jbig2_huffman_params_K,@object # @jbig2_huffman_params_K
	.globl	jbig2_huffman_params_K
	.align	8
jbig2_huffman_params_K:
	.long	0                       # 0x0
	.long	14                      # 0xe
	.quad	jbig2_huffman_lines_K
	.size	jbig2_huffman_params_K, 16

	.type	jbig2_huffman_lines_L,@object # @jbig2_huffman_lines_L
	.globl	jbig2_huffman_lines_L
	.align	16
jbig2_huffman_lines_L:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	10                      # 0xa
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	11                      # 0xb
	.long	7                       # 0x7
	.long	2                       # 0x2
	.long	13                      # 0xd
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	17                      # 0x11
	.long	7                       # 0x7
	.long	4                       # 0x4
	.long	25                      # 0x19
	.long	8                       # 0x8
	.long	5                       # 0x5
	.long	41                      # 0x29
	.long	8                       # 0x8
	.long	32                      # 0x20
	.long	73                      # 0x49
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.size	jbig2_huffman_lines_L, 180

	.type	jbig2_huffman_params_L,@object # @jbig2_huffman_params_L
	.globl	jbig2_huffman_params_L
	.align	8
jbig2_huffman_params_L:
	.long	0                       # 0x0
	.long	15                      # 0xf
	.quad	jbig2_huffman_lines_L
	.size	jbig2_huffman_params_L, 16

	.type	jbig2_huffman_lines_M,@object # @jbig2_huffman_lines_M
	.globl	jbig2_huffman_lines_M
	.align	16
jbig2_huffman_lines_M:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	7                       # 0x7
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	15                      # 0xf
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	17                      # 0x11
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	21                      # 0x15
	.long	6                       # 0x6
	.long	4                       # 0x4
	.long	29                      # 0x1d
	.long	6                       # 0x6
	.long	5                       # 0x5
	.long	45                      # 0x2d
	.long	7                       # 0x7
	.long	6                       # 0x6
	.long	77                      # 0x4d
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	4294967295              # 0xffffffff
	.long	7                       # 0x7
	.long	32                      # 0x20
	.long	141                     # 0x8d
	.size	jbig2_huffman_lines_M, 168

	.type	jbig2_huffman_params_M,@object # @jbig2_huffman_params_M
	.globl	jbig2_huffman_params_M
	.align	8
jbig2_huffman_params_M:
	.long	0                       # 0x0
	.long	14                      # 0xe
	.quad	jbig2_huffman_lines_M
	.size	jbig2_huffman_params_M, 16

	.type	jbig2_huffman_lines_N,@object # @jbig2_huffman_lines_N
	.globl	jbig2_huffman_lines_N
	.align	16
jbig2_huffman_lines_N:
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	4294967294              # 0xfffffffe
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	3                       # 0x3
	.size	jbig2_huffman_lines_N, 84

	.type	jbig2_huffman_params_N,@object # @jbig2_huffman_params_N
	.globl	jbig2_huffman_params_N
	.align	8
jbig2_huffman_params_N:
	.long	0                       # 0x0
	.long	7                       # 0x7
	.quad	jbig2_huffman_lines_N
	.size	jbig2_huffman_params_N, 16

	.type	jbig2_huffman_lines_O,@object # @jbig2_huffman_lines_O
	.globl	jbig2_huffman_lines_O
	.align	16
jbig2_huffman_lines_O:
	.long	7                       # 0x7
	.long	4                       # 0x4
	.long	4294967272              # 0xffffffe8
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	4294967288              # 0xfffffff8
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	4294967292              # 0xfffffffc
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4294967294              # 0xfffffffe
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	5                       # 0x5
	.long	7                       # 0x7
	.long	4                       # 0x4
	.long	9                       # 0x9
	.long	7                       # 0x7
	.long	32                      # 0x20
	.long	4294967271              # 0xffffffe7
	.long	7                       # 0x7
	.long	32                      # 0x20
	.long	25                      # 0x19
	.size	jbig2_huffman_lines_O, 156

	.type	jbig2_huffman_params_O,@object # @jbig2_huffman_params_O
	.globl	jbig2_huffman_params_O
	.align	8
jbig2_huffman_params_O:
	.long	0                       # 0x0
	.long	13                      # 0xd
	.quad	jbig2_huffman_lines_O
	.size	jbig2_huffman_params_O, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed to allocate new huffman coding state"
	.size	.L.str, 44

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"end of jbig2 buffer reached at offset %d"
	.size	.L.str.1, 41

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"end of Jbig2WordStream reached at offset %d"
	.size	.L.str.2, 44

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"couldn't allocate storage for huffman histogram"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"constructing huffman table log size %d"
	.size	.L.str.4, 39

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"couldn't allocate result storage in jbig2_build_huffman_table"
	.size	.L.str.5, 62

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"couldn't allocate entries storage in jbig2_build_huffman_table"
	.size	.L.str.6, 63

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ran off the end of the entries table! (%d >= %d)"
	.size	.L.str.7, 49

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Could not allocate Huffman Table Parameter"
	.size	.L.str.8, 43

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Could not allocate Huffman Table Lines"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Could not reallocate Huffman Table Lines"
	.size	.L.str.10, 41

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Segment too short"
	.size	.L.str.11, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
