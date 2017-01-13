	.text
	.file	"gdevm48.bc"
	.align	16, 0x90
	.type	mem_true48_fill_rectangle,@function
mem_true48_fill_rectangle:              # @mem_true48_fill_rectangle
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%r8d, %r13d
	movq	%r9, %r8
	shrq	$40, %r8
	movq	%r9, %r11
	shrq	$32, %r11
	movl	%r9d, %ebp
	shrl	$8, %ebp
	movl	%edx, %eax
	orl	%esi, %eax
	jns	.LBB0_2
# BB#1:                                 # %if.then
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%esi, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovsl	%eax, %esi
	movl	%edx, %ebx
	sarl	$31, %ebx
	andl	%edx, %ebx
	addl	%ebx, %r13d
	testl	%edx, %edx
	cmovsl	%eax, %edx
.LBB0_2:                                # %do.body.26
	movl	%r9d, %eax
	shrl	$24, %eax
	movl	%r9d, %r15d
	shrl	$16, %r15d
	movl	832(%rdi), %r10d
	movl	836(%rdi), %ebx
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	movl	%r10d, %r12d
	subl	%esi, %r12d
	cmpl	%r12d, %ecx
	cmovlel	%ecx, %r12d
	movl	%ebx, %r14d
	subl	%edx, %r14d
	cmpl	%r14d, %r13d
	cmovlel	%r13d, %r14d
	cmpl	$5, %r12d
	jl	.LBB0_27
# BB#3:                                 # %if.then.52
	testl	%r14d, %r14d
	jle	.LBB0_38
# BB#4:                                 # %do.end.59
	movl	%r10d, 32(%rsp)         # 4-byte Spill
	movl	%ebp, 16(%rsp)          # 4-byte Spill
	movl	1736(%rdi), %ebp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movslq	%edx, %r10
	movq	2576(%rdi), %rbp
	leal	(%rsi,%rsi), %ebx
	leal	(%rbx,%rbx,2), %ebx
	movslq	%ebx, %rbx
	addq	(%rbp,%r10,8), %rbx
	movzbl	%r8b, %r8d
	movzbl	%r11b, %r10d
	cmpl	%r10d, %r8d
	jne	.LBB0_11
# BB#5:                                 # %do.end.59
	cmpl	%eax, %r10d
	jne	.LBB0_11
# BB#6:                                 # %do.end.59
	movzbl	%r15b, %ebp
	cmpl	%ebp, %eax
	jne	.LBB0_11
# BB#7:                                 # %land.lhs.true.73
	movl	16(%rsp), %ebp          # 4-byte Reload
	movzbl	%bpl, %r10d
	cmpl	%r10d, %eax
	jne	.LBB0_11
# BB#8:                                 # %land.lhs.true.73
	movzbl	%r9b, %ebp
	cmpl	%ebp, %r10d
	jne	.LBB0_11
# BB#9:                                 # %while.body.lr.ph
	addl	%r12d, %r12d
	leal	(%r12,%r12,2), %eax
	movslq	%eax, %r15
	decl	%edx
	subl	44(%rsp), %edx          # 4-byte Folded Reload
	notl	%r13d
	cmpl	%r13d, %edx
	cmovgel	%edx, %r13d
	negl	%r13d
	movl	%r8d, %ebp
	.align	16, 0x90
.LBB0_10:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	callq	memset
	addq	48(%rsp), %rbx          # 8-byte Folded Reload
	decl	%r13d
	cmpl	$1, %r13d
	jg	.LBB0_10
	jmp	.LBB0_38
.LBB0_27:                               # %if.else.171
	testl	%r14d, %r14d
	jle	.LBB0_38
# BB#28:                                # %do.end.177
	movl	1736(%rdi), %ecx
	decl	%r12d
	cmpl	$3, %r12d
	ja	.LBB0_38
# BB#29:                                # %do.end.177
	movslq	%edx, %rbx
	movq	2576(%rdi), %rdi
	movq	(%rdi,%rbx,8), %rdi
	jmpq	*.LJTI0_0(,%r12,8)
.LBB0_36:                               # %do.body.263.preheader
	decl	%edx
	subl	44(%rsp), %edx          # 4-byte Folded Reload
	notl	%r13d
	cmpl	%r13d, %edx
	cmovgel	%edx, %r13d
	incl	%r13d
	addl	%esi, %esi
	leal	(%rsi,%rsi,2), %edx
	movslq	%edx, %rdx
	leaq	5(%rdx,%rdi), %rdx
	.align	16, 0x90
.LBB0_37:                               # %do.body.263
                                        # =>This Inner Loop Header: Depth=1
	movb	%r8b, -5(%rdx)
	movb	%r11b, -4(%rdx)
	movb	%al, -3(%rdx)
	movb	%r15b, -2(%rdx)
	movb	%bpl, -1(%rdx)
	movb	%r9b, (%rdx)
	addq	%rcx, %rdx
	incl	%r13d
	jne	.LBB0_37
	jmp	.LBB0_38
.LBB0_11:                               # %if.else
	movl	%esi, %r13d
	negl	%r13d
	andl	$1, %r13d
	cmpq	%r9, 2656(%rdi)
	jne	.LBB0_13
# BB#12:                                # %if.then.98
	movl	2664(%rdi), %eax
	movl	2668(%rdi), %edx
	movl	2672(%rdi), %ebp
	jmp	.LBB0_14
.LBB0_13:                               # %do.end.108
	shll	$24, %r15d
	shll	$16, %eax
	orl	%r15d, %eax
	movq	%r11, %rdx
	shlq	$8, %rdx
	movzwl	%dx, %edx
	orl	%r8d, %eax
	orl	%edx, %eax
	movl	%eax, 2664(%rdi)
	movl	%eax, %edx
	shll	$16, %edx
	movl	%r9d, %ebp
	shll	$8, %ebp
	movzwl	%bp, %r10d
	movl	16(%rsp), %ebp          # 4-byte Reload
	movzbl	%bpl, %ebp
	orl	%r10d, %ebp
	orl	%edx, %ebp
	movl	%ebp, 2672(%rdi)
	movl	%r9d, %edx
	bswapl	%edx
	movl	%edx, 2668(%rdi)
	movq	%r9, 2656(%rdi)
.LBB0_14:                               # %while.body.147.lr.ph
	movq	8(%rsp), %r10           # 8-byte Reload
	subl	%r13d, %r12d
	decl	%esi
	subl	32(%rsp), %esi          # 4-byte Folded Reload
	notl	%ecx
	cmpl	%ecx, %esi
	cmovgel	%esi, %ecx
	movl	$-3, %esi
	subl	%ecx, %esi
	subl	%r13d, %esi
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movl	%esi, %ecx
	shrl	%ecx
	leaq	(%rcx,%rcx,2), %rsi
	leaq	12(,%rsi,4), %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	incl	%ecx
	andl	$3, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	negl	%ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	16(%rsp), %ecx          # 4-byte Reload
	.align	16, 0x90
.LBB0_15:                               # %while.body.147
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_22 Depth 2
	testl	%r13d, %r13d
	movq	%rbx, %rsi
	je	.LBB0_17
# BB#16:                                # %sw.bb
                                        #   in Loop: Header=BB0_15 Depth=1
	movb	%r10b, (%rbx)
	movb	%r11b, 1(%rbx)
	movl	%edx, 2(%rbx)
	leaq	6(%rbx), %rsi
.LBB0_17:                               # %while.cond.153.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$2, %r12d
	jl	.LBB0_18
# BB#19:                                # %while.body.156.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	%r11, %r8
	movq	%r10, %r11
	movq	32(%rsp), %rdi          # 8-byte Reload
	testl	%edi, %edi
	movl	20(%rsp), %r10d         # 4-byte Reload
	movl	%r12d, %edi
	movq	%rsi, %r15
	je	.LBB0_21
	.align	16, 0x90
.LBB0_20:                               # %while.body.156.prol
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, (%r15)
	movl	%ebp, 4(%r15)
	movl	%edx, 8(%r15)
	addq	$12, %r15
	addl	$-2, %edi
	incl	%r10d
	jne	.LBB0_20
.LBB0_21:                               # %while.body.156.preheader.split
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$6, 44(%rsp)            # 4-byte Folded Reload
	movq	%r11, %r10
	jb	.LBB0_23
	.align	16, 0x90
.LBB0_22:                               # %while.body.156
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, (%r15)
	movl	%ebp, 4(%r15)
	movl	%edx, 8(%r15)
	movl	%eax, 12(%r15)
	movl	%ebp, 16(%r15)
	movl	%edx, 20(%r15)
	movl	%eax, 24(%r15)
	movl	%ebp, 28(%r15)
	movl	%edx, 32(%r15)
	movl	%eax, 36(%r15)
	movl	%ebp, 40(%r15)
	movl	%edx, 44(%r15)
	addl	$-8, %edi
	addq	$48, %r15
	cmpl	$1, %edi
	jg	.LBB0_22
.LBB0_23:                               # %while.cond.153.while.end.161_crit_edge
                                        #   in Loop: Header=BB0_15 Depth=1
	addq	24(%rsp), %rsi          # 8-byte Folded Reload
	movq	%r8, %r11
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=1
	movl	%r12d, %edi
.LBB0_24:                               # %while.end.161
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$1, %edi
	jne	.LBB0_26
# BB#25:                                # %sw.bb.162
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	%eax, (%rsi)
	movb	%cl, 4(%rsi)
	movb	%r9b, 5(%rsi)
.LBB0_26:                               # %sw.epilog.166
                                        #   in Loop: Header=BB0_15 Depth=1
	addq	48(%rsp), %rbx          # 8-byte Folded Reload
	cmpl	$1, %r14d
	leal	-1(%r14), %esi
	movl	%esi, %r14d
	jg	.LBB0_15
	jmp	.LBB0_38
.LBB0_34:                               # %do.body.243.preheader
	decl	%edx
	subl	44(%rsp), %edx          # 4-byte Folded Reload
	notl	%r13d
	cmpl	%r13d, %edx
	cmovgel	%edx, %r13d
	incl	%r13d
	addl	%esi, %esi
	leal	(%rsi,%rsi,2), %edx
	movslq	%edx, %rdx
	leaq	11(%rdx,%rdi), %rdx
	.align	16, 0x90
.LBB0_35:                               # %do.body.243
                                        # =>This Inner Loop Header: Depth=1
	movb	%r8b, -11(%rdx)
	movb	%r8b, -5(%rdx)
	movb	%r11b, -10(%rdx)
	movb	%r11b, -4(%rdx)
	movb	%al, -9(%rdx)
	movb	%al, -3(%rdx)
	movb	%r15b, -8(%rdx)
	movb	%r15b, -2(%rdx)
	movb	%bpl, -7(%rdx)
	movb	%bpl, -1(%rdx)
	movb	%r9b, -6(%rdx)
	movb	%r9b, (%rdx)
	addq	%rcx, %rdx
	incl	%r13d
	jne	.LBB0_35
	jmp	.LBB0_38
.LBB0_32:                               # %do.body.217.preheader
	decl	%edx
	subl	44(%rsp), %edx          # 4-byte Folded Reload
	notl	%r13d
	cmpl	%r13d, %edx
	cmovgel	%edx, %r13d
	incl	%r13d
	addl	%esi, %esi
	leal	(%rsi,%rsi,2), %edx
	movslq	%edx, %rdx
	leaq	17(%rdx,%rdi), %rdx
	.align	16, 0x90
.LBB0_33:                               # %do.body.217
                                        # =>This Inner Loop Header: Depth=1
	movb	%r8b, -17(%rdx)
	movb	%r8b, -11(%rdx)
	movb	%r8b, -5(%rdx)
	movb	%r11b, -16(%rdx)
	movb	%r11b, -10(%rdx)
	movb	%r11b, -4(%rdx)
	movb	%al, -15(%rdx)
	movb	%al, -9(%rdx)
	movb	%al, -3(%rdx)
	movb	%r15b, -14(%rdx)
	movb	%r15b, -8(%rdx)
	movb	%r15b, -2(%rdx)
	movb	%bpl, -13(%rdx)
	movb	%bpl, -7(%rdx)
	movb	%bpl, -1(%rdx)
	movb	%r9b, -12(%rdx)
	movb	%r9b, -6(%rdx)
	movb	%r9b, (%rdx)
	addq	%rcx, %rdx
	incl	%r13d
	jne	.LBB0_33
	jmp	.LBB0_38
.LBB0_30:                               # %do.body.186.preheader
	decl	%edx
	subl	44(%rsp), %edx          # 4-byte Folded Reload
	notl	%r13d
	cmpl	%r13d, %edx
	cmovgel	%edx, %r13d
	incl	%r13d
	addl	%esi, %esi
	leal	(%rsi,%rsi,2), %edx
	movslq	%edx, %rdx
	leaq	23(%rdx,%rdi), %rdx
	.align	16, 0x90
.LBB0_31:                               # %do.body.186
                                        # =>This Inner Loop Header: Depth=1
	movb	%r8b, -23(%rdx)
	movb	%r8b, -17(%rdx)
	movb	%r8b, -11(%rdx)
	movb	%r8b, -5(%rdx)
	movb	%r11b, -22(%rdx)
	movb	%r11b, -16(%rdx)
	movb	%r11b, -10(%rdx)
	movb	%r11b, -4(%rdx)
	movb	%al, -21(%rdx)
	movb	%al, -15(%rdx)
	movb	%al, -9(%rdx)
	movb	%al, -3(%rdx)
	movb	%r15b, -20(%rdx)
	movb	%r15b, -14(%rdx)
	movb	%r15b, -8(%rdx)
	movb	%r15b, -2(%rdx)
	movb	%bpl, -19(%rdx)
	movb	%bpl, -13(%rdx)
	movb	%bpl, -7(%rdx)
	movb	%bpl, -1(%rdx)
	movb	%r9b, -18(%rdx)
	movb	%r9b, -12(%rdx)
	movb	%r9b, -6(%rdx)
	movb	%r9b, (%rdx)
	addq	%rcx, %rdx
	incl	%r13d
	jne	.LBB0_31
.LBB0_38:                               # %cleanup
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mem_true48_fill_rectangle, .Lfunc_end0-mem_true48_fill_rectangle
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_36
	.quad	.LBB0_34
	.quad	.LBB0_32
	.quad	.LBB0_30

	.text
	.align	16, 0x90
	.type	mem_true48_copy_mono,@function
mem_true48_copy_mono:                   # @mem_true48_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	72(%rsp), %r8d
	movl	64(%rsp), %r11d
	movl	56(%rsp), %ebx
	movl	%ebx, %eax
	orl	%r14d, %eax
	jns	.LBB1_1
# BB#2:                                 # %if.then
	movl	%r14d, %ebp
	sarl	$31, %ebp
	andl	%r14d, %ebp
	leal	(%r11,%rbp), %r11d
	xorl	%r10d, %r10d
	testl	%r14d, %r14d
	cmovsl	%r10d, %r14d
	subl	%ebp, %edx
	testl	%ebx, %ebx
	js	.LBB1_3
.LBB1_1:
	movq	%rsi, %rbp
	movl	%ecx, -32(%rsp)         # 4-byte Spill
	movl	%ebx, %r10d
.LBB1_4:                                # %if.end.8
	movl	832(%rdi), %ebx
	movl	836(%rdi), %r15d
	movl	%ebx, %esi
	subl	%r14d, %esi
	cmpl	%esi, %r11d
	cmovlel	%r11d, %esi
	subl	%r10d, %r15d
	cmpl	%r15d, %r8d
	cmovlel	%r8d, %r15d
	testl	%esi, %esi
	jle	.LBB1_55
# BB#5:                                 # %if.end.8
	testl	%r15d, %r15d
	jle	.LBB1_55
# BB#6:                                 # %do.end.26
	movq	88(%rsp), %r8
	movq	80(%rsp), %r9
	movl	1736(%rdi), %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	movslq	%r10d, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %r10
	leal	(%r14,%r14), %eax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %r12
	leaq	(%rbp,%r12), %r13
	andl	$7, %edx
	movl	$128, %eax
	movb	%dl, %cl
	shrl	%cl, %eax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	cmpq	$-1, %r9
	je	.LBB1_18
# BB#7:                                 # %if.then.34
	movq	%r8, %rax
	testl	%r15d, %r15d
	jle	.LBB1_55
# BB#8:                                 # %while.body.lr.ph
	movq	%r9, %rdx
	shrq	$40, %rdx
	movq	%rdx, -80(%rsp)         # 8-byte Spill
	movq	%r9, %rdx
	shrq	$32, %rdx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	movl	%r9d, %edx
	shrl	$24, %edx
	movl	%edx, -16(%rsp)         # 4-byte Spill
	movl	%r9d, %edx
	shrl	$16, %edx
	movl	%edx, -24(%rsp)         # 4-byte Spill
	movl	%r9d, %edi
	movl	%ebx, %ebp
	shrl	$8, %edi
	movq	%rax, %r8
	movq	%r8, %rbx
	shrq	$40, %rbx
	shrq	$32, %rax
	movl	%r8d, %ecx
	shrl	$24, %ecx
	movq	-40(%rsp), %rdx         # 8-byte Reload
	leal	(%rdx,%rdx,2), %edx
	movslq	%edx, %rdx
	leaq	5(%rdx,%r10), %rsi
	movl	%r8d, %r10d
	shrl	$16, %r10d
	decl	%r14d
	subl	%ebp, %r14d
	movl	%r8d, %ebp
	movq	%r14, %rdx
	movq	%r8, %r14
	shrl	$8, %ebp
	notl	%r11d
	cmpl	%r11d, %edx
	cmovgel	%edx, %r11d
	movslq	-32(%rsp), %rdx         # 4-byte Folded Reload
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	negl	%r11d
	movq	%r11, -72(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_9:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	movq	%rsi, -48(%rsp)         # 8-byte Spill
	movq	%r13, -40(%rsp)         # 8-byte Spill
	movq	%r15, -32(%rsp)         # 8-byte Spill
	leaq	1(%r13), %r11
	movzbl	(%r13), %r8d
	movq	-72(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %r15d
	movq	%rsi, %r13
	movq	-56(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %r12d
	movq	-80(%rsp), %rdx         # 8-byte Reload
	.align	16, 0x90
.LBB1_10:                               # %do.body.69
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r8d, %r12d
	je	.LBB1_13
# BB#11:                                # %if.then.71
                                        #   in Loop: Header=BB1_10 Depth=2
	cmpq	$-1, %r14
	je	.LBB1_14
# BB#12:                                # %if.then.74
                                        #   in Loop: Header=BB1_10 Depth=2
	movb	%bl, -5(%r13)
	movb	%al, -4(%r13)
	movb	%cl, -3(%r13)
	movb	%r10b, -2(%r13)
	movb	%bpl, -1(%r13)
	movb	%r14b, (%r13)
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_13:                               # %if.else
                                        #   in Loop: Header=BB1_10 Depth=2
	movb	%dl, -5(%r13)
	movq	-8(%rsp), %rsi          # 8-byte Reload
	movb	%sil, -4(%r13)
	movl	-16(%rsp), %esi         # 4-byte Reload
	movb	%sil, -3(%r13)
	movl	-24(%rsp), %esi         # 4-byte Reload
	movb	%sil, -2(%r13)
	movb	%dil, -1(%r13)
	movb	%r9b, (%r13)
.LBB1_14:                               # %if.end.88
                                        #   in Loop: Header=BB1_10 Depth=2
	sarl	%r12d
	jne	.LBB1_16
# BB#15:                                # %if.then.93
                                        #   in Loop: Header=BB1_10 Depth=2
	movzbl	(%r11), %r8d
	incq	%r11
	movl	$128, %r12d
.LBB1_16:                               # %do.cond.97
                                        #   in Loop: Header=BB1_10 Depth=2
	addq	$6, %r13
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB1_10
# BB#17:                                # %do.end.101
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-40(%rsp), %r13         # 8-byte Reload
	addq	-88(%rsp), %r13         # 8-byte Folded Reload
	movq	-48(%rsp), %rsi         # 8-byte Reload
	addq	-64(%rsp), %rsi         # 8-byte Folded Reload
	movq	-32(%rsp), %rdx         # 8-byte Reload
	cmpl	$1, %edx
	leal	-1(%rdx), %edx
	movl	%edx, %r15d
	jg	.LBB1_9
	jmp	.LBB1_55
.LBB1_18:                               # %if.else.106
	movq	%rbp, -8(%rsp)          # 8-byte Spill
	cmpq	$-1, %r8
	movq	%r8, %rbp
	je	.LBB1_55
# BB#19:                                # %if.then.109
	movq	-56(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rax), %eax
	movq	%rsi, %rcx
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	leal	(%rcx,%rdx), %edi
	movl	$8, %esi
	subl	%edx, %esi
	sarl	%cl, %eax
	negl	%eax
	cmpl	$8, %edi
	movl	$-1, %edi
	cmovlel	%eax, %edi
	cmovlel	%ecx, %esi
	testl	%r15d, %r15d
	jle	.LBB1_55
# BB#20:                                # %while.body.147.lr.ph
	movq	-40(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rax,2), %eax
	cltq
	addq	%rax, %r10
	movq	%rdi, -24(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	movq	%rdi, %rcx
	shrq	$40, %rcx
	movq	%rdi, %rax
	shrq	$32, %rax
	shrl	$24, %ebp
	movl	%edi, %r8d
	shrl	$16, %r8d
	movl	%ebx, -40(%rsp)         # 4-byte Spill
	movq	%r14, %r9
	movl	%edi, %r14d
	shrl	$8, %r14d
	movq	%rsi, %rbx
	movq	%rbx, -48(%rsp)         # 8-byte Spill
	movq	-16(%rsp), %rsi         # 8-byte Reload
	subl	%ebx, %esi
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	decl	%r9d
	subl	-40(%rsp), %r9d         # 4-byte Folded Reload
	notl	%r11d
	cmpl	%r11d, %r9d
	cmovgel	%r9d, %r11d
	movl	%r11d, %esi
	subl	%edx, %esi
	cmpl	$-10, %esi
	movl	$-9, %ebx
	cmovgl	%esi, %ebx
	leal	-8(%rbx,%rdx), %edx
	subl	%r11d, %edx
	shrl	$3, %edx
	addq	%rdx, %r12
	movq	-8(%rsp), %rsi          # 8-byte Reload
	leaq	2(%rsi,%r12), %r12
	movq	-56(%rsp), %rsi         # 8-byte Reload
	movq	-24(%rsp), %rbx         # 8-byte Reload
	leal	(%rbx,%rsi,2), %esi
	movq	-48(%rsp), %rbx         # 8-byte Reload
	leal	(%rbx,%rbx), %ebx
	leal	(%rbx,%rbx,2), %ebx
	movslq	%ebx, %rbx
	movq	%rbx, -40(%rsp)         # 8-byte Spill
	movq	%r10, %rbx
	movslq	-32(%rsp), %r10         # 4-byte Folded Reload
	movq	%r10, -24(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	addq	$48, %rdx
	movq	%rdx, -32(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_21:                               # %while.body.147
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_51 Depth 2
	movq	%rbx, -8(%rsp)          # 8-byte Spill
	movzbl	(%r13), %edx
	movq	%r13, %r11
	andl	%esi, %edx
	movq	%rbx, %r13
	movq	-56(%rsp), %rbx         # 8-byte Reload
	je	.LBB1_25
	.align	16, 0x90
.LBB1_22:                               # %do.body.159
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%edx, %ebx
	je	.LBB1_24
# BB#23:                                # %if.then.162
                                        #   in Loop: Header=BB1_22 Depth=2
	movb	%cl, (%r13)
	movb	%al, 1(%r13)
	movb	%bpl, 2(%r13)
	movb	%r8b, 3(%r13)
	movb	%r14b, 4(%r13)
	movb	%dil, 5(%r13)
.LBB1_24:                               # %if.end.169
                                        #   in Loop: Header=BB1_22 Depth=2
	addq	$6, %r13
	sarl	%ebx
	testl	%esi, %ebx
	jne	.LBB1_22
	jmp	.LBB1_26
	.align	16, 0x90
.LBB1_25:                               # %if.else.176
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	-8(%rsp), %rdx          # 8-byte Reload
	movq	-40(%rsp), %rbx         # 8-byte Reload
	leaq	(%rdx,%rbx), %r13
.LBB1_26:                               # %while.cond.180.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	leaq	1(%r11), %rdx
	movq	-16(%rsp), %rbx         # 8-byte Reload
	cmpl	$8, %ebx
	jl	.LBB1_27
# BB#28:                                # %while.body.183.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	leaq	47(%r13), %r10
	movl	%ebx, %r9d
	.align	16, 0x90
.LBB1_29:                               # %while.body.183
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %ebx
	testb	$-16, %bl
	je	.LBB1_38
# BB#30:                                # %if.then.188
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$-128, %bl
	je	.LBB1_32
# BB#31:                                # %if.then.191
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -47(%r10)
	movb	%al, -46(%r10)
	movb	%bpl, -45(%r10)
	movb	%r8b, -44(%r10)
	movb	%r14b, -43(%r10)
	movb	%dil, -42(%r10)
.LBB1_32:                               # %if.end.198
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$64, %bl
	je	.LBB1_34
# BB#33:                                # %if.then.201
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -41(%r10)
	movb	%al, -40(%r10)
	movb	%bpl, -39(%r10)
	movb	%r8b, -38(%r10)
	movb	%r14b, -37(%r10)
	movb	%dil, -36(%r10)
.LBB1_34:                               # %if.end.214
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$32, %bl
	je	.LBB1_36
# BB#35:                                # %if.then.217
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -35(%r10)
	movb	%al, -34(%r10)
	movb	%bpl, -33(%r10)
	movb	%r8b, -32(%r10)
	movb	%r14b, -31(%r10)
	movb	%dil, -30(%r10)
.LBB1_36:                               # %if.end.230
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$16, %bl
	je	.LBB1_38
# BB#37:                                # %if.then.233
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -29(%r10)
	movb	%al, -28(%r10)
	movb	%bpl, -27(%r10)
	movb	%r8b, -26(%r10)
	movb	%r14b, -25(%r10)
	movb	%dil, -24(%r10)
.LBB1_38:                               # %if.end.247
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$15, %bl
	je	.LBB1_47
# BB#39:                                # %if.then.250
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$8, %bl
	je	.LBB1_41
# BB#40:                                # %if.then.253
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -23(%r10)
	movb	%al, -22(%r10)
	movb	%bpl, -21(%r10)
	movb	%r8b, -20(%r10)
	movb	%r14b, -19(%r10)
	movb	%dil, -18(%r10)
.LBB1_41:                               # %if.end.266
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$4, %bl
	je	.LBB1_43
# BB#42:                                # %if.then.269
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -17(%r10)
	movb	%al, -16(%r10)
	movb	%bpl, -15(%r10)
	movb	%r8b, -14(%r10)
	movb	%r14b, -13(%r10)
	movb	%dil, -12(%r10)
.LBB1_43:                               # %if.end.282
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$2, %bl
	je	.LBB1_45
# BB#44:                                # %if.then.285
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -11(%r10)
	movb	%al, -10(%r10)
	movb	%bpl, -9(%r10)
	movb	%r8b, -8(%r10)
	movb	%r14b, -7(%r10)
	movb	%dil, -6(%r10)
.LBB1_45:                               # %if.end.298
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$1, %bl
	je	.LBB1_47
# BB#46:                                # %if.then.301
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -5(%r10)
	movb	%al, -4(%r10)
	movb	%bpl, -3(%r10)
	movb	%r8b, -2(%r10)
	movb	%r14b, -1(%r10)
	movb	%dil, (%r10)
.LBB1_47:                               # %if.end.315
                                        #   in Loop: Header=BB1_29 Depth=2
	incq	%rdx
	addl	$-8, %r9d
	addq	$48, %r10
	cmpl	$7, %r9d
	jg	.LBB1_29
# BB#48:                                # %while.cond.180.while.end.318_crit_edge
                                        #   in Loop: Header=BB1_21 Depth=1
	addq	-32(%rsp), %r13         # 8-byte Folded Reload
	movq	%r12, %rdx
	movq	-24(%rsp), %r10         # 8-byte Reload
	jmp	.LBB1_49
	.align	16, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_21 Depth=1
	movl	%ebx, %r9d
.LBB1_49:                               # %while.end.318
                                        #   in Loop: Header=BB1_21 Depth=1
	testl	%r9d, %r9d
	jle	.LBB1_54
# BB#50:                                # %if.then.321
                                        #   in Loop: Header=BB1_21 Depth=1
	movzbl	(%rdx), %edx
	addq	$5, %r13
	incl	%r9d
	movl	$128, %ebx
	.align	16, 0x90
.LBB1_51:                               # %do.body.325
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%edx, %ebx
	je	.LBB1_53
# BB#52:                                # %if.then.328
                                        #   in Loop: Header=BB1_51 Depth=2
	movb	%cl, -5(%r13)
	movb	%al, -4(%r13)
	movb	%bpl, -3(%r13)
	movb	%r8b, -2(%r13)
	movb	%r14b, -1(%r13)
	movb	%dil, (%r13)
.LBB1_53:                               # %if.end.335
                                        #   in Loop: Header=BB1_51 Depth=2
	sarl	%ebx
	addq	$6, %r13
	decl	%r9d
	cmpl	$1, %r9d
	jg	.LBB1_51
.LBB1_54:                               # %if.end.343
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	%r11, %r13
	addq	%r10, %r13
	movq	-8(%rsp), %rbx          # 8-byte Reload
	addq	-64(%rsp), %rbx         # 8-byte Folded Reload
	addq	%r10, %r12
	cmpl	$1, %r15d
	leal	-1(%r15), %edx
	movl	%edx, %r15d
	jg	.LBB1_21
.LBB1_55:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_3:                                # %if.then.5
	addl	%ebx, %r8d
	imull	%ecx, %ebx
	movl	%ecx, -32(%rsp)         # 4-byte Spill
	movslq	%ebx, %rax
	subq	%rax, %rsi
	movq	%rsi, %rbp
	jmp	.LBB1_4
.Lfunc_end1:
	.size	mem_true48_copy_mono, .Lfunc_end1-mem_true48_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_true48_copy_color,@function
mem_true48_copy_color:                  # @mem_true48_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbx, -16
	movq	%rsi, %r10
	movl	32(%rsp), %r8d
	movl	24(%rsp), %ebx
	movl	16(%rsp), %eax
	movl	%eax, %esi
	orl	%r9d, %esi
	js	.LBB2_2
# BB#1:
	movl	%eax, %r11d
	movl	%ebx, %esi
	jmp	.LBB2_5
.LBB2_2:                                # %if.then
	movl	%r9d, %esi
	sarl	$31, %esi
	andl	%r9d, %esi
	subl	%esi, %edx
	xorl	%r11d, %r11d
	testl	%r9d, %r9d
	cmovsl	%r11d, %r9d
	addl	%ebx, %esi
	testl	%eax, %eax
	js	.LBB2_4
# BB#3:
	movl	%eax, %r11d
	jmp	.LBB2_5
.LBB2_4:                                # %if.then.5
	addl	%eax, %r8d
	imull	%ecx, %eax
	cltq
	subq	%rax, %r10
.LBB2_5:                                # %if.end.8
	movl	832(%rdi), %ebx
	movl	836(%rdi), %eax
	subl	%r9d, %ebx
	cmpl	%ebx, %esi
	cmovlel	%esi, %ebx
	subl	%r11d, %eax
	cmpl	%eax, %r8d
	cmovlel	%r8d, %eax
	testl	%ebx, %ebx
	jle	.LBB2_8
# BB#6:                                 # %if.end.8
	testl	%eax, %eax
	jle	.LBB2_8
# BB#7:                                 # %do.end.26
	movslq	%r11d, %r8
	movq	2576(%rdi), %r11
	addl	%r9d, %r9d
	leal	(%r9,%r9,2), %esi
	movslq	%esi, %r9
	addq	(%r11,%r8,8), %r9
	movl	1736(%rdi), %esi
	addl	%edx, %edx
	leal	(%rdx,%rdx,2), %edx
	movslq	%edx, %rdx
	addq	%rdx, %r10
	addl	%ebx, %ebx
	leal	(%rbx,%rbx,2), %r8d
	movq	%r9, %rdi
	movq	%r10, %rdx
	movl	%eax, %r9d
	callq	bytes_copy_rectangle
.LBB2_8:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	mem_true48_copy_color, .Lfunc_end2-mem_true48_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem48_word_fill_rectangle,@function
mem48_word_fill_rectangle:              # @mem48_word_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 80
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %r15
	movl	%r12d, %eax
	orl	%r13d, %eax
	jns	.LBB3_2
# BB#1:                                 # %if.then
	movl	%r13d, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%r13d, %r13d
	cmovsl	%eax, %r13d
	movl	%r12d, %edx
	sarl	$31, %edx
	andl	%r12d, %edx
	addl	%edx, %r8d
	testl	%r12d, %r12d
	cmovsl	%eax, %r12d
.LBB3_2:                                # %do.body.10
	movl	832(%r15), %ebx
	movl	836(%r15), %ebp
	subl	%r13d, %ebx
	cmpl	%ebx, %ecx
	cmovlel	%ecx, %ebx
	subl	%r12d, %ebp
	cmpl	%ebp, %r8d
	cmovlel	%r8d, %ebp
	testl	%ebx, %ebx
	jle	.LBB3_5
# BB#3:                                 # %do.body.10
	testl	%ebp, %ebp
	jle	.LBB3_5
# BB#4:                                 # %do.end.34
	movslq	%r12d, %rax
	movq	2576(%r15), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	1736(%r15), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movl	%r13d, %eax
	shll	$4, %eax
	leal	(%rax,%rax,2), %edx
	movl	%edx, (%rsp)            # 4-byte Spill
	movl	%ebx, %eax
	shll	$4, %eax
	leal	(%rax,%rax,2), %r14d
	movl	$1, %r9d
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	movq	16(%rsp), %r9           # 8-byte Reload
	callq	mem_true48_fill_rectangle
	xorl	%r9d, %r9d
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	4(%rsp), %esi           # 4-byte Reload
	movl	(%rsp), %edx            # 4-byte Reload
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
.LBB3_5:                                # %cleanup
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mem48_word_fill_rectangle, .Lfunc_end3-mem48_word_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem48_word_copy_mono,@function
mem48_word_copy_mono:                   # @mem48_word_copy_mono
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
	subq	$88, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 144
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%rdi, %r13
	movl	160(%rsp), %r9d
	movl	152(%rsp), %edi
	movl	144(%rsp), %eax
	movl	%eax, %ebp
	orl	%ebx, %ebp
	jns	.LBB4_1
# BB#2:                                 # %if.then
	movl	%ebx, %ebp
	sarl	$31, %ebp
	andl	%ebx, %ebp
	leal	(%rdi,%rbp), %edi
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	cmovsl	%r15d, %ebx
	subl	%ebp, %edx
	testl	%eax, %eax
	js	.LBB4_3
.LBB4_1:
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%eax, %r15d
.LBB4_4:                                # %if.end.8
	movl	832(%r13), %r12d
	movl	836(%r13), %r14d
	subl	%ebx, %r12d
	cmpl	%r12d, %edi
	cmovlel	%edi, %r12d
	subl	%r15d, %r14d
	cmpl	%r14d, %r9d
	cmovlel	%r9d, %r14d
	testl	%r12d, %r12d
	jle	.LBB4_7
# BB#5:                                 # %if.end.8
	testl	%r14d, %r14d
	jle	.LBB4_7
# BB#6:                                 # %do.end.26
	movslq	%r15d, %rax
	movq	2576(%r13), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	1736(%r13), %esi
	movl	%esi, 52(%rsp)          # 4-byte Spill
	cmpq	$-1, 168(%rsp)
	setne	%al
	cmpq	$-1, 176(%rsp)
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %r9d
	movl	%ebx, %eax
	shll	$4, %eax
	leal	(%rax,%rax,2), %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	movl	%r12d, %eax
	shll	$4, %eax
	leal	(%rax,%rax,2), %ebp
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	callq	mem_swap_byte_rect
	movq	176(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r15d, (%rsp)
	movq	%r13, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movl	80(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	%ebx, %r9d
	callq	mem_true48_copy_mono
	xorl	%r9d, %r9d
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	48(%rsp), %edx          # 4-byte Reload
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	callq	mem_swap_byte_rect
.LBB4_7:                                # %cleanup
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_3:                                # %if.then.5
	movl	%edx, 80(%rsp)          # 4-byte Spill
	addl	%eax, %r9d
	imull	%ecx, %eax
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movslq	%eax, %rdx
	subq	%rdx, %rsi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB4_4
.Lfunc_end4:
	.size	mem48_word_copy_mono, .Lfunc_end4-mem48_word_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem48_word_copy_color,@function
mem48_word_copy_color:                  # @mem48_word_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 80
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movl	96(%rsp), %r10d
	movl	88(%rsp), %edx
	movl	80(%rsp), %eax
	movl	%eax, %ebx
	orl	%r9d, %ebx
	js	.LBB5_2
# BB#1:
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%r9d, %r14d
	movl	%eax, %r8d
	jmp	.LBB5_5
.LBB5_2:                                # %if.then
	movl	%r9d, %ebp
	sarl	$31, %ebp
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	movl	%r9d, %r14d
	cmovsl	%r8d, %r14d
	andl	%r9d, %ebp
	leal	(%rdx,%rbp), %edx
	subl	%ebp, %r12d
	testl	%eax, %eax
	js	.LBB5_4
# BB#3:
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%eax, %r8d
	jmp	.LBB5_5
.LBB5_4:                                # %if.then.5
	addl	%eax, %r10d
	imull	%ecx, %eax
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	cltq
	subq	%rax, %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
.LBB5_5:                                # %if.end.8
	movl	832(%rdi), %r15d
	movl	836(%rdi), %ebx
	subl	%r14d, %r15d
	cmpl	%r15d, %edx
	cmovlel	%edx, %r15d
	subl	%r8d, %ebx
	cmpl	%ebx, %r10d
	cmovlel	%r10d, %ebx
	testl	%r15d, %r15d
	jle	.LBB5_8
# BB#6:                                 # %if.end.8
	testl	%ebx, %ebx
	jle	.LBB5_8
# BB#7:                                 # %do.end.26
	movslq	%r8d, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %r13
	movl	1736(%rdi), %ebp
	movl	%r14d, %eax
	shll	$4, %eax
	leal	(%rax,%rax,2), %edx
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movl	%r15d, %eax
	shll	$4, %eax
	leal	(%rax,%rax,2), %ecx
	movl	%ecx, (%rsp)            # 4-byte Spill
	movl	$1, %r9d
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
	addl	%r14d, %r14d
	leal	(%r14,%r14,2), %eax
	cltq
	leaq	(%rax,%r13), %rdi
	addl	%r12d, %r12d
	leal	(%r12,%r12,2), %eax
	cltq
	movq	8(%rsp), %rdx           # 8-byte Reload
	addq	%rax, %rdx
	addl	%r15d, %r15d
	leal	(%r15,%r15,2), %r8d
	movl	%ebp, %esi
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	%ebx, %r9d
	callq	bytes_copy_rectangle
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	4(%rsp), %edx           # 4-byte Reload
	movl	(%rsp), %ecx            # 4-byte Reload
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
.LBB5_8:                                # %cleanup
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mem48_word_copy_color, .Lfunc_end5-mem48_word_copy_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image48"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	mem_true48_device,@object # @mem_true48_device
	.section	.rodata,"a",@progbits
	.globl	mem_true48_device
	.align	8
mem_true48_device:
	.long	2792                    # 0xae8
	.zero	4
	.quad	0
	.quad	.L.str
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	48                      # 0x30
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	mem_open
	.quad	mem_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	mem_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	mem_true48_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_true48_copy_mono
	.quad	mem_true48_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_default_get_params
	.quad	gx_default_put_params
	.quad	gx_default_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_default_copy_alpha
	.quad	gx_default_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	mem_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	mem_default_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	mem_get_bits_rectangle
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_default_create_compositor
	.quad	gx_default_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.zero	768
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0
	.zero	16
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	mem_true48_device, 2792

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image48w"
	.size	.L.str.2, 9

	.type	mem_true48_word_device,@object # @mem_true48_word_device
	.section	.rodata,"a",@progbits
	.globl	mem_true48_word_device
	.align	8
mem_true48_word_device:
	.long	2792                    # 0xae8
	.zero	4
	.quad	0
	.quad	.L.str.2
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	48                      # 0x30
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	mem_open
	.quad	mem_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	mem_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	mem48_word_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem48_word_copy_mono
	.quad	mem48_word_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_default_get_params
	.quad	gx_default_put_params
	.quad	gx_default_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_default_copy_alpha
	.quad	gx_default_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	mem_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	gx_no_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	mem_word_get_bits_rectangle
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_default_create_compositor
	.quad	gx_default_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.zero	768
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0
	.zero	16
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	mem_true48_word_device, 2792


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
