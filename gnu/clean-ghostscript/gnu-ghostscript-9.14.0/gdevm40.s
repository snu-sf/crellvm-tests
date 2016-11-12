	.text
	.file	"gdevm40.bc"
	.align	16, 0x90
	.type	mem_true40_fill_rectangle,@function
mem_true40_fill_rectangle:              # @mem_true40_fill_rectangle
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
	movl	%r8d, %ebp
	movl	%ecx, %r13d
	movl	%esi, %r12d
	movq	%rdi, %r15
	movq	%r9, %r11
	shrq	$32, %r11
	movl	%r9d, %r14d
	shrl	$24, %r14d
	movl	%r14d, 32(%rsp)         # 4-byte Spill
	movl	%r9d, %eax
	shrl	$16, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	%r9d, %edi
	shrl	$8, %edi
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	orl	%r12d, %eax
	jns	.LBB0_2
# BB#1:                                 # %if.then
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	%r12d, %eax
	addl	%eax, %r13d
	xorl	%eax, %eax
	testl	%r12d, %r12d
	cmovsl	%eax, %r12d
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	%edx, %ecx
	addl	%ecx, %ebp
	testl	%edx, %edx
	cmovsl	%eax, %edx
.LBB0_2:                                # %do.body.23
	movl	832(%r15), %ecx
	movl	836(%r15), %r10d
	movl	%ecx, %esi
	subl	%r12d, %esi
	cmpl	%esi, %r13d
	cmovlel	%r13d, %esi
	movl	%r10d, %eax
	subl	%edx, %eax
	cmpl	%eax, %ebp
	cmovlel	%ebp, %eax
	cmpl	$5, %esi
	jl	.LBB0_34
# BB#3:                                 # %if.then.49
	testl	%eax, %eax
	jle	.LBB0_45
# BB#4:                                 # %do.end.56
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	1736(%r15), %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movslq	%edx, %rsi
	movq	2576(%r15), %rcx
	leal	(%r12,%r12,4), %ebx
	movslq	%ebx, %rbx
	addq	(%rcx,%rsi,8), %rbx
	movzbl	%r11b, %r8d
	cmpl	%r14d, %r8d
	jne	.LBB0_10
# BB#5:                                 # %do.end.56
	movl	52(%rsp), %ecx          # 4-byte Reload
	movzbl	%cl, %ecx
	cmpl	%ecx, %r14d
	jne	.LBB0_10
# BB#6:                                 # %land.lhs.true.65
	movzbl	%dil, %esi
	cmpl	%esi, %r14d
	jne	.LBB0_10
# BB#7:                                 # %land.lhs.true.65
	movzbl	%r9b, %ecx
	cmpl	%ecx, %esi
	jne	.LBB0_10
# BB#8:                                 # %while.body.lr.ph
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,4), %eax
	movslq	%eax, %r15
	decl	%edx
	subl	%r10d, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB0_9:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%r15, %rdx
	callq	memset
	addq	40(%rsp), %rbx          # 8-byte Folded Reload
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB0_9
	jmp	.LBB0_45
.LBB0_34:                               # %if.else.195
	testl	%eax, %eax
	jle	.LBB0_45
# BB#35:                                # %do.end.201
	movl	1736(%r15), %eax
	decl	%esi
	cmpl	$3, %esi
	ja	.LBB0_45
# BB#36:                                # %do.end.201
	movslq	%edx, %rcx
	movq	%rsi, %rbx
	movq	2576(%r15), %rsi
	movq	(%rsi,%rcx,8), %rsi
	jmpq	*.LJTI0_0(,%rbx,8)
.LBB0_43:                               # %do.body.278.preheader
	decl	%edx
	subl	%r10d, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	incl	%ebp
	leal	(%r12,%r12,4), %ecx
	movslq	%ecx, %rcx
	leaq	4(%rcx,%rsi), %rcx
	.align	16, 0x90
.LBB0_44:                               # %do.body.278
                                        # =>This Inner Loop Header: Depth=1
	movb	%r11b, -4(%rcx)
	movb	%r14b, -3(%rcx)
	movl	52(%rsp), %edx          # 4-byte Reload
	movb	%dl, -2(%rcx)
	movb	%dil, -1(%rcx)
	movb	%r9b, (%rcx)
	addq	%rax, %rcx
	incl	%ebp
	jne	.LBB0_44
	jmp	.LBB0_45
.LBB0_10:                               # %if.else
	movl	%r13d, 4(%rsp)          # 4-byte Spill
	movl	%r12d, %r13d
	movq	%r12, 8(%rsp)           # 8-byte Spill
	negl	%r13d
	andl	$3, %r13d
	cmpq	%r9, 2624(%r15)
	jne	.LBB0_12
# BB#11:                                # %if.then.90
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movl	2632(%r15), %ebp
	movl	2636(%r15), %edx
	movl	2640(%r15), %r12d
	movl	2644(%r15), %r8d
	movl	2648(%r15), %ecx
	jmp	.LBB0_13
.LBB0_12:                               # %do.end.104
	movzbl	%dil, %r10d
	movl	%edi, %ecx
	movl	%edi, 36(%rsp)          # 4-byte Spill
	shll	$24, %ecx
	movl	52(%rsp), %edx          # 4-byte Reload
	movzbl	%dl, %edx
	movl	%edx, %esi
	shll	$16, %esi
	movl	%r14d, %ebp
	shll	$8, %ebp
	orl	%ecx, %ebp
	orl	%r8d, %ebp
	orl	%esi, %ebp
	movl	%ebp, 2632(%r15)
	movl	%ebp, %esi
	shll	$8, %esi
	movzbl	%r9b, %ecx
	orl	%esi, %ecx
	movl	%ecx, 2648(%r15)
	movl	%ecx, %r8d
	shll	$8, %r8d
	orl	%r10d, %r8d
	movl	%r8d, 2644(%r15)
	movl	%r8d, %r12d
	shll	$8, %r12d
	orl	%edx, %r12d
	movl	%r12d, 2640(%r15)
	movl	%r12d, %edx
	shll	$8, %edx
	orl	%r14d, %edx
	movl	%edx, 2636(%r15)
	movq	%r9, 2624(%r15)
.LBB0_13:                               # %while.body.147.lr.ph
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rsi, %r10
	subl	%r13d, %r10d
	movq	8(%rsp), %r15           # 8-byte Reload
	decl	%r15d
	subl	16(%rsp), %r15d         # 4-byte Folded Reload
	movl	4(%rsp), %esi           # 4-byte Reload
	notl	%esi
	cmpl	%esi, %r15d
	cmovgel	%r15d, %esi
	movl	$-5, %r15d
	subl	%esi, %r15d
	subl	%r13d, %r15d
	movl	%r15d, 24(%rsp)         # 4-byte Spill
	movl	%r15d, %edi
	shrl	$2, %edi
	leaq	(%rdi,%rdi,4), %rsi
	leaq	20(,%rsi,4), %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%r10, %r15
	incl	%edi
	andl	$3, %edi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	%edi, %esi
	negl	%esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movl	36(%rsp), %edi          # 4-byte Reload
	.align	16, 0x90
.LBB0_14:                               # %while.body.147
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_25 Depth 2
	cmpl	$3, %r13d
	je	.LBB0_19
# BB#15:                                # %while.body.147
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$2, %r13d
	jne	.LBB0_16
# BB#18:                                # %sw.bb.151
                                        #   in Loop: Header=BB0_14 Depth=1
	movb	%r11b, (%rbx)
	movb	%r14b, 1(%rbx)
	movl	%r12d, 2(%rbx)
	movl	%edx, 6(%rbx)
	leaq	10(%rbx), %r10
	jmp	.LBB0_20
	.align	16, 0x90
.LBB0_19:                               # %sw.bb.157
                                        #   in Loop: Header=BB0_14 Depth=1
	movb	%r11b, (%rbx)
	movb	%r14b, 1(%rbx)
	movl	52(%rsp), %esi          # 4-byte Reload
	movb	%sil, 2(%rbx)
	movl	%r8d, 3(%rbx)
	movl	%r12d, 7(%rbx)
	movl	%edx, 11(%rbx)
	leaq	15(%rbx), %r10
	jmp	.LBB0_20
	.align	16, 0x90
.LBB0_16:                               # %while.body.147
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$1, %r13d
	movq	%rbx, %r10
	jne	.LBB0_20
# BB#17:                                # %sw.bb
                                        #   in Loop: Header=BB0_14 Depth=1
	movb	%r11b, (%rbx)
	movl	%edx, 1(%rbx)
	leaq	5(%rbx), %r10
	.align	16, 0x90
.LBB0_20:                               # %while.cond.166.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$4, %r15d
	jl	.LBB0_21
# BB#22:                                # %while.body.169.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	%r11, %r14
	movq	16(%rsp), %rsi          # 8-byte Reload
	testl	%esi, %esi
	movl	4(%rsp), %r11d          # 4-byte Reload
	movl	%r15d, %esi
	movq	%r10, %rdi
	je	.LBB0_24
	.align	16, 0x90
.LBB0_23:                               # %while.body.169.prol
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, (%rdi)
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	movl	%r12d, 12(%rdi)
	movl	%edx, 16(%rdi)
	addq	$20, %rdi
	addl	$-4, %esi
	incl	%r11d
	jne	.LBB0_23
.LBB0_24:                               # %while.body.169.preheader.split
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$12, 24(%rsp)           # 4-byte Folded Reload
	movq	%r14, %r11
	jb	.LBB0_26
	.align	16, 0x90
.LBB0_25:                               # %while.body.169
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, (%rdi)
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	movl	%r12d, 12(%rdi)
	movl	%edx, 16(%rdi)
	movl	%ebp, 20(%rdi)
	movl	%ecx, 24(%rdi)
	movl	%r8d, 28(%rdi)
	movl	%r12d, 32(%rdi)
	movl	%edx, 36(%rdi)
	movl	%ebp, 40(%rdi)
	movl	%ecx, 44(%rdi)
	movl	%r8d, 48(%rdi)
	movl	%r12d, 52(%rdi)
	movl	%edx, 56(%rdi)
	movl	%ebp, 60(%rdi)
	movl	%ecx, 64(%rdi)
	movl	%r8d, 68(%rdi)
	movl	%r12d, 72(%rdi)
	movl	%edx, 76(%rdi)
	addl	$-16, %esi
	addq	$80, %rdi
	cmpl	$3, %esi
	jg	.LBB0_25
.LBB0_26:                               # %while.cond.166.while.end.176_crit_edge
                                        #   in Loop: Header=BB0_14 Depth=1
	addq	8(%rsp), %r10           # 8-byte Folded Reload
	movl	32(%rsp), %r14d         # 4-byte Reload
	movl	36(%rsp), %edi          # 4-byte Reload
	jmp	.LBB0_27
	.align	16, 0x90
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%r15d, %esi
.LBB0_27:                               # %while.end.176
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$3, %esi
	je	.LBB0_32
# BB#28:                                # %while.end.176
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$2, %esi
	jne	.LBB0_29
# BB#31:                                # %sw.bb.179
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	%ebp, (%r10)
	movl	%ecx, 4(%r10)
	movb	%dil, 8(%r10)
	movb	%r9b, 9(%r10)
	jmp	.LBB0_33
	.align	16, 0x90
.LBB0_32:                               # %sw.bb.183
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	%ebp, (%r10)
	movl	%ecx, 4(%r10)
	movl	%r8d, 8(%r10)
	movl	52(%rsp), %esi          # 4-byte Reload
	movb	%sil, 12(%r10)
	movb	%dil, 13(%r10)
	movb	%r9b, 14(%r10)
	jmp	.LBB0_33
	.align	16, 0x90
.LBB0_29:                               # %while.end.176
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$1, %esi
	jne	.LBB0_33
# BB#30:                                # %sw.bb.177
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	%ebp, (%r10)
	movb	%r9b, 4(%r10)
	.align	16, 0x90
.LBB0_33:                               # %sw.epilog.190
                                        #   in Loop: Header=BB0_14 Depth=1
	addq	40(%rsp), %rbx          # 8-byte Folded Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	jg	.LBB0_14
	jmp	.LBB0_45
.LBB0_41:                               # %do.body.260.preheader
	decl	%edx
	subl	%r10d, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	incl	%ebp
	leal	(%r12,%r12,4), %ecx
	movslq	%ecx, %rcx
	leaq	9(%rcx,%rsi), %rcx
	.align	16, 0x90
.LBB0_42:                               # %do.body.260
                                        # =>This Inner Loop Header: Depth=1
	movb	%r11b, -9(%rcx)
	movb	%r11b, -4(%rcx)
	movb	%r14b, -8(%rcx)
	movb	%r14b, -3(%rcx)
	movl	52(%rsp), %edx          # 4-byte Reload
	movb	%dl, -7(%rcx)
	movb	%dl, -2(%rcx)
	movb	%dil, -6(%rcx)
	movb	%dil, -1(%rcx)
	movb	%r9b, -5(%rcx)
	movb	%r9b, (%rcx)
	addq	%rax, %rcx
	incl	%ebp
	jne	.LBB0_42
	jmp	.LBB0_45
.LBB0_39:                               # %do.body.237.preheader
	decl	%edx
	subl	%r10d, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	incl	%ebp
	leal	(%r12,%r12,4), %ecx
	movslq	%ecx, %rcx
	leaq	14(%rcx,%rsi), %rcx
	.align	16, 0x90
.LBB0_40:                               # %do.body.237
                                        # =>This Inner Loop Header: Depth=1
	movb	%r11b, -14(%rcx)
	movb	%r11b, -9(%rcx)
	movb	%r11b, -4(%rcx)
	movb	%r14b, -13(%rcx)
	movb	%r14b, -8(%rcx)
	movb	%r14b, -3(%rcx)
	movl	52(%rsp), %edx          # 4-byte Reload
	movb	%dl, -12(%rcx)
	movb	%dl, -7(%rcx)
	movb	%dl, -2(%rcx)
	movb	%dil, -11(%rcx)
	movb	%dil, -6(%rcx)
	movb	%dil, -1(%rcx)
	movb	%r9b, -10(%rcx)
	movb	%r9b, -5(%rcx)
	movb	%r9b, (%rcx)
	addq	%rax, %rcx
	incl	%ebp
	jne	.LBB0_40
	jmp	.LBB0_45
.LBB0_37:                               # %do.body.210.preheader
	decl	%edx
	subl	%r10d, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	incl	%ebp
	leal	(%r12,%r12,4), %ecx
	movslq	%ecx, %rcx
	leaq	19(%rcx,%rsi), %rcx
	.align	16, 0x90
.LBB0_38:                               # %do.body.210
                                        # =>This Inner Loop Header: Depth=1
	movb	%r11b, -19(%rcx)
	movb	%r11b, -14(%rcx)
	movb	%r11b, -9(%rcx)
	movb	%r11b, -4(%rcx)
	movb	%r14b, -18(%rcx)
	movb	%r14b, -13(%rcx)
	movb	%r14b, -8(%rcx)
	movb	%r14b, -3(%rcx)
	movl	52(%rsp), %edx          # 4-byte Reload
	movb	%dl, -17(%rcx)
	movb	%dl, -12(%rcx)
	movb	%dl, -7(%rcx)
	movb	%dl, -2(%rcx)
	movb	%dil, -16(%rcx)
	movb	%dil, -11(%rcx)
	movb	%dil, -6(%rcx)
	movb	%dil, -1(%rcx)
	movb	%r9b, -15(%rcx)
	movb	%r9b, -10(%rcx)
	movb	%r9b, -5(%rcx)
	movb	%r9b, (%rcx)
	addq	%rax, %rcx
	incl	%ebp
	jne	.LBB0_38
.LBB0_45:                               # %cleanup
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
	.size	mem_true40_fill_rectangle, .Lfunc_end0-mem_true40_fill_rectangle
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_43
	.quad	.LBB0_41
	.quad	.LBB0_39
	.quad	.LBB0_37

	.text
	.align	16, 0x90
	.type	mem_true40_copy_mono,@function
mem_true40_copy_mono:                   # @mem_true40_copy_mono
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
	movl	72(%rsp), %r8d
	movl	64(%rsp), %r12d
	movl	56(%rsp), %ebx
	movl	%ebx, %eax
	orl	%r9d, %eax
	jns	.LBB1_1
# BB#2:                                 # %if.then
	movl	%r9d, %eax
	sarl	$31, %eax
	andl	%r9d, %eax
	leal	(%r12,%rax), %r12d
	xorl	%ebp, %ebp
	testl	%r9d, %r9d
	cmovsl	%ebp, %r9d
	subl	%eax, %edx
	testl	%ebx, %ebx
	js	.LBB1_3
.LBB1_1:
	movl	%ecx, -16(%rsp)         # 4-byte Spill
	movl	%ebx, %ebp
.LBB1_4:                                # %if.end.8
	movl	832(%rdi), %r14d
	movl	836(%rdi), %r13d
	movl	%r14d, %eax
	subl	%r9d, %eax
	cmpl	%eax, %r12d
	cmovlel	%r12d, %eax
	subl	%ebp, %r13d
	cmpl	%r13d, %r8d
	cmovlel	%r8d, %r13d
	testl	%eax, %eax
	movq	%rax, %r8
	jle	.LBB1_55
# BB#5:                                 # %if.end.8
	testl	%r13d, %r13d
	jle	.LBB1_55
# BB#6:                                 # %do.end.26
	movq	88(%rsp), %rax
	movq	80(%rsp), %r11
	movl	1736(%rdi), %ecx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	movslq	%ebp, %rcx
	movq	2576(%rdi), %rdi
	movq	(%rdi,%rcx,8), %r15
	movl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rbx
	leaq	(%rsi,%rbx), %rdi
	andl	$7, %edx
	movl	$128, %ebp
	movb	%dl, %cl
	shrl	%cl, %ebp
	movq	%rbp, -40(%rsp)         # 8-byte Spill
	cmpq	$-1, %r11
	movq	%r11, %rcx
	je	.LBB1_18
# BB#7:                                 # %if.then.34
	testl	%r13d, %r13d
	movq	%rdi, %rsi
	jle	.LBB1_55
# BB#8:                                 # %while.body.lr.ph
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	movl	%ecx, %edx
	shrl	$24, %edx
	movl	%edx, -60(%rsp)         # 4-byte Spill
	movl	%ecx, %r8d
	shrl	$16, %r8d
	movl	%ecx, %r10d
	shrl	$8, %r10d
	movq	%rax, %rdx
	shrq	$32, %rax
	movl	%edx, %edi
	shrl	$24, %edi
	leal	(%r9,%r9,4), %ecx
	movslq	%ecx, %rcx
	leaq	4(%rcx,%r15), %r15
	movl	%edx, %ebp
	shrl	$16, %ebp
	decl	%r9d
	subl	%r14d, %r9d
	movl	%edx, %ecx
	movq	%rdx, %r14
	shrl	$8, %ecx
	notl	%r12d
	cmpl	%r12d, %r9d
	cmovgel	%r9d, %r12d
	movslq	-16(%rsp), %rdx         # 4-byte Folded Reload
	movq	%rdx, -72(%rsp)         # 8-byte Spill
	negl	%r12d
	movq	%r12, -56(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_9:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	movq	%r15, -32(%rsp)         # 8-byte Spill
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	movq	%r13, -16(%rsp)         # 8-byte Spill
	leaq	1(%rsi), %r12
	movzbl	(%rsi), %r11d
	movq	-56(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %r9d
	movq	-40(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %r13d
	movq	80(%rsp), %rsi
	movl	-60(%rsp), %ebx         # 4-byte Reload
	.align	16, 0x90
.LBB1_10:                               # %do.body.63
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r11d, %r13d
	je	.LBB1_13
# BB#11:                                # %if.then.65
                                        #   in Loop: Header=BB1_10 Depth=2
	cmpq	$-1, %r14
	je	.LBB1_14
# BB#12:                                # %if.then.68
                                        #   in Loop: Header=BB1_10 Depth=2
	movb	%al, -4(%r15)
	movb	%dil, -3(%r15)
	movb	%bpl, -2(%r15)
	movb	%cl, -1(%r15)
	movb	%r14b, (%r15)
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_13:                               # %if.else
                                        #   in Loop: Header=BB1_10 Depth=2
	movq	-8(%rsp), %rdx          # 8-byte Reload
	movb	%dl, -4(%r15)
	movb	%bl, -3(%r15)
	movb	%r8b, -2(%r15)
	movb	%r10b, -1(%r15)
	movb	%sil, (%r15)
.LBB1_14:                               # %if.end.80
                                        #   in Loop: Header=BB1_10 Depth=2
	sarl	%r13d
	jne	.LBB1_16
# BB#15:                                # %if.then.85
                                        #   in Loop: Header=BB1_10 Depth=2
	movzbl	(%r12), %r11d
	incq	%r12
	movl	$128, %r13d
.LBB1_16:                               # %do.cond.89
                                        #   in Loop: Header=BB1_10 Depth=2
	addq	$5, %r15
	decl	%r9d
	cmpl	$1, %r9d
	jg	.LBB1_10
# BB#17:                                # %do.end.93
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-24(%rsp), %rsi         # 8-byte Reload
	addq	-72(%rsp), %rsi         # 8-byte Folded Reload
	movq	-32(%rsp), %r15         # 8-byte Reload
	addq	-48(%rsp), %r15         # 8-byte Folded Reload
	movq	-16(%rsp), %rdx         # 8-byte Reload
	cmpl	$1, %edx
	leal	-1(%rdx), %edx
	movl	%edx, %r13d
	jg	.LBB1_9
	jmp	.LBB1_55
.LBB1_18:                               # %if.else.98
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	cmpq	$-1, %rax
	movq	%rdi, %r11
	je	.LBB1_55
# BB#19:                                # %if.then.101
	movq	-40(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rcx), %ebp
	movq	%r8, %rcx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	leal	(%rcx,%rdx), %ebx
	movl	$8, %edi
	subl	%edx, %edi
	sarl	%cl, %ebp
	negl	%ebp
	cmpl	$8, %ebx
	movl	$-1, %r8d
	cmovlel	%ebp, %r8d
	cmovlel	%ecx, %edi
	testl	%r13d, %r13d
	jle	.LBB1_55
# BB#20:                                # %while.body.135.lr.ph
	leal	(%r9,%r9,4), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r15
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%eax, %ebp
	shrl	$24, %ebp
	movl	%eax, %ebx
	shrl	$16, %ebx
	movq	%r8, -56(%rsp)          # 8-byte Spill
	movl	%eax, %r8d
	shrl	$8, %r8d
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	movq	-8(%rsp), %rdi          # 8-byte Reload
	movq	-32(%rsp), %r10         # 8-byte Reload
	subl	%r10d, %edi
	movq	%rdi, -8(%rsp)          # 8-byte Spill
	decl	%r9d
	subl	%r14d, %r9d
	notl	%r12d
	cmpl	%r12d, %r9d
	cmovgel	%r9d, %r12d
	movl	%r12d, %r9d
	subl	%edx, %r9d
	cmpl	$-10, %r9d
	movl	$-9, %edi
	cmovgl	%r9d, %edi
	leal	-8(%rdi,%rdx), %edx
	subl	%r12d, %edx
	shrl	$3, %edx
	movq	-24(%rsp), %rdi         # 8-byte Reload
	addq	%rdx, %rdi
	leaq	2(%rsi,%rdi), %r12
	movq	-40(%rsp), %rsi         # 8-byte Reload
	movq	-56(%rsp), %rdi         # 8-byte Reload
	leal	(%rdi,%rsi,2), %esi
	movq	-32(%rsp), %rdi         # 8-byte Reload
	leal	(%rdi,%rdi,4), %edi
	movslq	%edi, %rdi
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	movslq	-16(%rsp), %r14         # 4-byte Folded Reload
	leaq	(%rdx,%rdx,4), %rdx
	leaq	40(,%rdx,8), %rdx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_21:                               # %while.body.135
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_51 Depth 2
	movq	%r13, %r10
	movzbl	(%r11), %edx
	andl	%esi, %edx
	movq	%r15, %r13
	movq	-40(%rsp), %rdi         # 8-byte Reload
	je	.LBB1_25
	.align	16, 0x90
.LBB1_22:                               # %do.body.147
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%edx, %edi
	je	.LBB1_24
# BB#23:                                # %if.then.150
                                        #   in Loop: Header=BB1_22 Depth=2
	movb	%cl, (%r13)
	movb	%bpl, 1(%r13)
	movb	%bl, 2(%r13)
	movb	%r8b, 3(%r13)
	movb	%al, 4(%r13)
.LBB1_24:                               # %if.end.156
                                        #   in Loop: Header=BB1_22 Depth=2
	addq	$5, %r13
	sarl	%edi
	testl	%esi, %edi
	jne	.LBB1_22
	jmp	.LBB1_26
	.align	16, 0x90
.LBB1_25:                               # %if.else.163
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	-32(%rsp), %rdx         # 8-byte Reload
	leaq	(%r15,%rdx), %r13
.LBB1_26:                               # %while.cond.167.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	leaq	1(%r11), %rdx
	movq	-8(%rsp), %rdi          # 8-byte Reload
	cmpl	$8, %edi
	jl	.LBB1_27
# BB#28:                                # %while.body.170.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	%r15, -16(%rsp)         # 8-byte Spill
	leaq	39(%r13), %r15
	movl	%edi, %r9d
	.align	16, 0x90
.LBB1_29:                               # %while.body.170
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %edi
	testb	$-16, %dil
	je	.LBB1_38
# BB#30:                                # %if.then.175
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$-128, %dil
	je	.LBB1_32
# BB#31:                                # %if.then.178
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -39(%r15)
	movb	%bpl, -38(%r15)
	movb	%bl, -37(%r15)
	movb	%r8b, -36(%r15)
	movb	%al, -35(%r15)
.LBB1_32:                               # %if.end.184
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$64, %dil
	je	.LBB1_34
# BB#33:                                # %if.then.187
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -34(%r15)
	movb	%bpl, -33(%r15)
	movb	%bl, -32(%r15)
	movb	%r8b, -31(%r15)
	movb	%al, -30(%r15)
.LBB1_34:                               # %if.end.198
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$32, %dil
	je	.LBB1_36
# BB#35:                                # %if.then.201
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -29(%r15)
	movb	%bpl, -28(%r15)
	movb	%bl, -27(%r15)
	movb	%r8b, -26(%r15)
	movb	%al, -25(%r15)
.LBB1_36:                               # %if.end.212
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$16, %dil
	je	.LBB1_38
# BB#37:                                # %if.then.215
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -24(%r15)
	movb	%bpl, -23(%r15)
	movb	%bl, -22(%r15)
	movb	%r8b, -21(%r15)
	movb	%al, -20(%r15)
.LBB1_38:                               # %if.end.227
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$15, %dil
	je	.LBB1_47
# BB#39:                                # %if.then.230
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$8, %dil
	je	.LBB1_41
# BB#40:                                # %if.then.233
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -19(%r15)
	movb	%bpl, -18(%r15)
	movb	%bl, -17(%r15)
	movb	%r8b, -16(%r15)
	movb	%al, -15(%r15)
.LBB1_41:                               # %if.end.244
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$4, %dil
	je	.LBB1_43
# BB#42:                                # %if.then.247
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -14(%r15)
	movb	%bpl, -13(%r15)
	movb	%bl, -12(%r15)
	movb	%r8b, -11(%r15)
	movb	%al, -10(%r15)
.LBB1_43:                               # %if.end.258
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$2, %dil
	je	.LBB1_45
# BB#44:                                # %if.then.261
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -9(%r15)
	movb	%bpl, -8(%r15)
	movb	%bl, -7(%r15)
	movb	%r8b, -6(%r15)
	movb	%al, -5(%r15)
.LBB1_45:                               # %if.end.272
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$1, %dil
	je	.LBB1_47
# BB#46:                                # %if.then.275
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -4(%r15)
	movb	%bpl, -3(%r15)
	movb	%bl, -2(%r15)
	movb	%r8b, -1(%r15)
	movb	%al, (%r15)
.LBB1_47:                               # %if.end.287
                                        #   in Loop: Header=BB1_29 Depth=2
	incq	%rdx
	addl	$-8, %r9d
	addq	$40, %r15
	cmpl	$7, %r9d
	jg	.LBB1_29
# BB#48:                                # %while.cond.167.while.end.290_crit_edge
                                        #   in Loop: Header=BB1_21 Depth=1
	addq	-24(%rsp), %r13         # 8-byte Folded Reload
	movq	%r12, %rdx
	movq	-16(%rsp), %r15         # 8-byte Reload
	jmp	.LBB1_49
	.align	16, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_21 Depth=1
	movl	%edi, %r9d
.LBB1_49:                               # %while.end.290
                                        #   in Loop: Header=BB1_21 Depth=1
	testl	%r9d, %r9d
	jle	.LBB1_54
# BB#50:                                # %if.then.293
                                        #   in Loop: Header=BB1_21 Depth=1
	movzbl	(%rdx), %edx
	addq	$4, %r13
	incl	%r9d
	movl	$128, %edi
	.align	16, 0x90
.LBB1_51:                               # %do.body.297
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%edx, %edi
	je	.LBB1_53
# BB#52:                                # %if.then.300
                                        #   in Loop: Header=BB1_51 Depth=2
	movb	%cl, -4(%r13)
	movb	%bpl, -3(%r13)
	movb	%bl, -2(%r13)
	movb	%r8b, -1(%r13)
	movb	%al, (%r13)
.LBB1_53:                               # %if.end.306
                                        #   in Loop: Header=BB1_51 Depth=2
	sarl	%edi
	addq	$5, %r13
	decl	%r9d
	cmpl	$1, %r9d
	jg	.LBB1_51
.LBB1_54:                               # %if.end.314
                                        #   in Loop: Header=BB1_21 Depth=1
	addq	%r14, %r11
	addq	-48(%rsp), %r15         # 8-byte Folded Reload
	addq	%r14, %r12
	cmpl	$1, %r10d
	leal	-1(%r10), %edx
	movl	%edx, %r13d
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
	movl	%ecx, -16(%rsp)         # 4-byte Spill
	movslq	%ebx, %rax
	subq	%rax, %rsi
	jmp	.LBB1_4
.Lfunc_end1:
	.size	mem_true40_copy_mono, .Lfunc_end1-mem_true40_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_true40_copy_color,@function
mem_true40_copy_color:                  # @mem_true40_copy_color
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
	leal	(%r9,%r9,4), %esi
	movslq	%esi, %r9
	addq	(%r11,%r8,8), %r9
	movl	1736(%rdi), %esi
	leal	(%rdx,%rdx,4), %edx
	movslq	%edx, %rdx
	addq	%rdx, %r10
	leal	(%rbx,%rbx,4), %r8d
	movq	%r9, %rdi
	movq	%r10, %rdx
	movl	%eax, %r9d
	callq	bytes_copy_rectangle
.LBB2_8:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	mem_true40_copy_color, .Lfunc_end2-mem_true40_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem40_word_fill_rectangle,@function
mem40_word_fill_rectangle:              # @mem40_word_fill_rectangle
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
	leal	(,%r13,8), %eax
	leal	(%rax,%rax,4), %edx
	movl	%edx, (%rsp)            # 4-byte Spill
	leal	(,%rbx,8), %eax
	leal	(%rax,%rax,4), %r14d
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
	callq	mem_true40_fill_rectangle
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
	.size	mem40_word_fill_rectangle, .Lfunc_end3-mem40_word_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem40_word_copy_mono,@function
mem40_word_copy_mono:                   # @mem40_word_copy_mono
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
	movl	%r9d, %r15d
	movq	%rdi, %r13
	movl	160(%rsp), %r9d
	movl	152(%rsp), %edi
	movl	144(%rsp), %eax
	movl	%eax, %ebp
	orl	%r15d, %ebp
	jns	.LBB4_1
# BB#2:                                 # %if.then
	movl	%r15d, %ebx
	sarl	$31, %ebx
	andl	%r15d, %ebx
	leal	(%rdi,%rbx), %edi
	xorl	%ebp, %ebp
	testl	%r15d, %r15d
	cmovsl	%ebp, %r15d
	subl	%ebx, %edx
	testl	%eax, %eax
	js	.LBB4_3
.LBB4_1:
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%eax, %ebp
.LBB4_4:                                # %if.end.8
	movl	832(%r13), %r12d
	movl	836(%r13), %r14d
	subl	%r15d, %r12d
	cmpl	%r12d, %edi
	cmovlel	%edi, %r12d
	subl	%ebp, %r14d
	cmpl	%r14d, %r9d
	cmovlel	%r9d, %r14d
	testl	%r12d, %r12d
	jle	.LBB4_7
# BB#5:                                 # %if.end.8
	testl	%r14d, %r14d
	jle	.LBB4_7
# BB#6:                                 # %do.end.26
	movslq	%ebp, %rax
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
	leal	(,%r15,8), %eax
	leal	(%rax,%rax,4), %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	leal	(,%r12,8), %eax
	leal	(%rax,%rax,4), %ebx
	movl	%ebx, %ecx
	movl	%r14d, %r8d
	callq	mem_swap_byte_rect
	movq	176(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%ebp, (%rsp)
	movq	%r13, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movl	80(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	%r15d, %r9d
	callq	mem_true40_copy_mono
	xorl	%r9d, %r9d
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	48(%rsp), %edx          # 4-byte Reload
	movl	%ebx, %ecx
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
	.size	mem40_word_copy_mono, .Lfunc_end4-mem40_word_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem40_word_copy_color,@function
mem40_word_copy_color:                  # @mem40_word_copy_color
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
	subq	$40, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 96
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
	movl	112(%rsp), %r8d
	movl	104(%rsp), %r10d
	movl	96(%rsp), %ebx
	movl	%ebx, %eax
	orl	%r9d, %eax
	js	.LBB5_2
# BB#1:
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%r9d, %r12d
	movl	%ebx, %eax
	jmp	.LBB5_5
.LBB5_2:                                # %if.then
	movl	%r9d, %ebp
	sarl	$31, %ebp
	xorl	%eax, %eax
	testl	%r9d, %r9d
	movl	%r9d, %r12d
	cmovsl	%eax, %r12d
	andl	%r9d, %ebp
	leal	(%r10,%rbp), %r10d
	subl	%ebp, %edx
	testl	%ebx, %ebx
	js	.LBB5_4
# BB#3:
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%ebx, %eax
	jmp	.LBB5_5
.LBB5_4:                                # %if.then.5
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	addl	%ebx, %r8d
	imull	%ecx, %ebx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movslq	%ebx, %rcx
	subq	%rcx, %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
.LBB5_5:                                # %if.end.8
	movl	832(%rdi), %r14d
	movl	836(%rdi), %ebp
	subl	%r12d, %r14d
	cmpl	%r14d, %r10d
	cmovlel	%r10d, %r14d
	subl	%eax, %ebp
	cmpl	%ebp, %r8d
	cmovlel	%r8d, %ebp
	testl	%r14d, %r14d
	jle	.LBB5_8
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB5_8
# BB#7:                                 # %do.end.26
	cltq
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %r13
	movl	1736(%rdi), %ebx
	leal	(,%r12,8), %eax
	leal	(%rax,%rax,4), %edx
	movl	%edx, 12(%rsp)          # 4-byte Spill
	leal	(,%r14,8), %eax
	leal	(%rax,%rax,4), %r15d
	movl	$1, %r9d
	movq	%r13, %rdi
	movl	%ebx, %esi
	movl	%r15d, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
	leal	(%r12,%r12,4), %eax
	cltq
	leaq	(%rax,%r13), %rdi
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,4), %eax
	cltq
	movq	24(%rsp), %rdx          # 8-byte Reload
	addq	%rax, %rdx
	leal	(%r14,%r14,4), %r8d
	movl	%ebx, %esi
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	%ebp, %r9d
	callq	bytes_copy_rectangle
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movl	%ebx, %esi
	movl	12(%rsp), %edx          # 4-byte Reload
	movl	%r15d, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
.LBB5_8:                                # %cleanup
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mem40_word_copy_color, .Lfunc_end5-mem40_word_copy_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image40"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	mem_true40_device,@object # @mem_true40_device
	.section	.rodata,"a",@progbits
	.globl	mem_true40_device
	.align	8
mem_true40_device:
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
	.short	40                      # 0x28
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
	.quad	mem_true40_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_true40_copy_mono
	.quad	mem_true40_copy_color
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
	.size	mem_true40_device, 2792

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image40w"
	.size	.L.str.2, 9

	.type	mem_true40_word_device,@object # @mem_true40_word_device
	.section	.rodata,"a",@progbits
	.globl	mem_true40_word_device
	.align	8
mem_true40_word_device:
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
	.short	40                      # 0x28
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
	.quad	mem40_word_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem40_word_copy_mono
	.quad	mem40_word_copy_color
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
	.size	mem_true40_word_device, 2792


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
