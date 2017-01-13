	.text
	.file	"gdevm24.bc"
	.align	16, 0x90
	.type	mem_true24_fill_rectangle,@function
mem_true24_fill_rectangle:              # @mem_true24_fill_rectangle
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%r9, %r10
	shrq	$16, %r10
	movl	%r9d, %r8d
	shrl	$8, %r8d
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
	addl	%ebx, %ebp
	testl	%edx, %edx
	cmovsl	%eax, %edx
.LBB0_2:                                # %do.body.19
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	832(%rdi), %eax
	movl	836(%rdi), %ebx
	movl	%eax, %r11d
	subl	%esi, %r11d
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	movl	%ebx, %r13d
	subl	%edx, %r13d
	cmpl	%r13d, %ebp
	cmovlel	%ebp, %r13d
	cmpl	$5, %r11d
	jl	.LBB0_32
# BB#3:                                 # %if.then.45
	testl	%r13d, %r13d
	jle	.LBB0_43
# BB#4:                                 # %do.end.52
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	movl	1736(%rdi), %r12d
	movslq	%edx, %r14
	movq	2576(%rdi), %r15
	movq	%rdi, %rsi
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,2), %ebx
	movslq	%ebx, %rbx
	addq	(%r15,%r14,8), %rbx
	movzbl	%r10b, %r14d
	movzbl	%r8b, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movzbl	%r9b, %r15d
	movl	%r15d, 24(%rsp)         # 4-byte Spill
	movl	16(%rsp), %r15d         # 4-byte Reload
	cmpl	%r15d, %r14d
	jne	.LBB0_8
# BB#5:                                 # %do.end.52
	cmpl	24(%rsp), %r14d         # 4-byte Folded Reload
	jne	.LBB0_8
# BB#6:                                 # %while.body.lr.ph
	leal	(%r11,%r11,2), %eax
	movslq	%eax, %r15
	decl	%edx
	subl	8(%rsp), %edx           # 4-byte Folded Reload
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB0_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%r15, %rdx
	callq	memset
	addq	%r12, %rbx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB0_7
	jmp	.LBB0_43
.LBB0_32:                               # %if.else.160
	testl	%r13d, %r13d
	jle	.LBB0_43
# BB#33:                                # %do.end.166
	movl	1736(%rdi), %eax
	decl	%r11d
	cmpl	$3, %r11d
	ja	.LBB0_43
# BB#34:                                # %do.end.166
	movslq	%edx, %rsi
	movq	2576(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rsi
	jmpq	*.LJTI0_0(,%r11,8)
.LBB0_41:                               # %do.body.225.preheader
	decl	%edx
	subl	%ebx, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	incl	%ebp
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rcx,2), %edx
	movslq	%edx, %rdx
	leaq	2(%rdx,%rsi), %rcx
	.align	16, 0x90
.LBB0_42:                               # %do.body.225
                                        # =>This Inner Loop Header: Depth=1
	movb	%r10b, -2(%rcx)
	movb	%r8b, -1(%rcx)
	movb	%r9b, (%rcx)
	addq	%rax, %rcx
	incl	%ebp
	jne	.LBB0_42
	jmp	.LBB0_43
.LBB0_8:                                # %if.else
	movl	24(%rsp), %ebp          # 4-byte Reload
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r15d
	negl	%r15d
	andl	$3, %r15d
	cmpq	%r9, 2600(%rsi)
	jne	.LBB0_10
# BB#9:                                 # %if.then.76
	movl	2608(%rsi), %eax
	movl	2612(%rsi), %ebp
	movl	2616(%rsi), %edx
	jmp	.LBB0_11
.LBB0_10:                               # %do.end.86
	movq	%r10, %rdx
	shlq	$24, %rdx
	shll	$16, %ebp
	movl	%r9d, %eax
	andl	$65280, %eax            # imm = 0xFF00
	orl	%ebp, %eax
	orl	%edx, %eax
	orl	%r14d, %eax
	movl	%eax, 2608(%rsi)
	movl	%eax, %edx
	shll	$8, %edx
	addl	24(%rsp), %edx          # 4-byte Folded Reload
	movl	%edx, 2616(%rsi)
	movl	%edx, %ebp
	shll	$8, %ebp
	addl	16(%rsp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 2612(%rsi)
	movq	%r9, 2600(%rsi)
.LBB0_11:                               # %while.body.119.lr.ph
	subl	%r15d, %r11d
	movq	32(%rsp), %rsi          # 8-byte Reload
	decl	%esi
	subl	12(%rsp), %esi          # 4-byte Folded Reload
	notl	%ecx
	cmpl	%ecx, %esi
	cmovgel	%esi, %ecx
	movl	$-5, %esi
	subl	%ecx, %esi
	subl	%r15d, %esi
	movl	%esi, 32(%rsp)          # 4-byte Spill
	shrl	$2, %esi
	leaq	(%rsi,%rsi,2), %rcx
	leaq	12(,%rcx,4), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	incl	%esi
	andl	$3, %esi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%esi, %ecx
	negl	%ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB0_12:                               # %while.body.119
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_23 Depth 2
	cmpl	$3, %r15d
	je	.LBB0_17
# BB#13:                                # %while.body.119
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$2, %r15d
	jne	.LBB0_14
# BB#16:                                # %sw.bb.124
                                        #   in Loop: Header=BB0_12 Depth=1
	movb	%r10b, (%rbx)
	movb	%r8b, 1(%rbx)
	movl	%edx, 2(%rbx)
	leaq	6(%rbx), %rsi
	jmp	.LBB0_18
	.align	16, 0x90
.LBB0_17:                               # %sw.bb.129
                                        #   in Loop: Header=BB0_12 Depth=1
	movb	%r10b, (%rbx)
	movl	%ebp, 1(%rbx)
	movl	%edx, 5(%rbx)
	leaq	9(%rbx), %rsi
	jmp	.LBB0_18
	.align	16, 0x90
.LBB0_14:                               # %while.body.119
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$1, %r15d
	movq	%rbx, %rsi
	jne	.LBB0_18
# BB#15:                                # %sw.bb
                                        #   in Loop: Header=BB0_12 Depth=1
	movb	%r10b, (%rbx)
	movb	%r8b, 1(%rbx)
	movb	%r9b, 2(%rbx)
	leaq	3(%rbx), %rsi
	.align	16, 0x90
.LBB0_18:                               # %while.cond.135.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$4, %r11d
	jl	.LBB0_19
# BB#20:                                # %while.body.138.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movl	12(%rsp), %ecx          # 4-byte Reload
	movl	%r11d, %edi
	movq	%rsi, %r14
	je	.LBB0_22
	.align	16, 0x90
.LBB0_21:                               # %while.body.138.prol
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, (%r14)
	movl	%ebp, 4(%r14)
	movl	%edx, 8(%r14)
	addq	$12, %r14
	addl	$-4, %edi
	incl	%ecx
	jne	.LBB0_21
.LBB0_22:                               # %while.body.138.preheader.split
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$12, 32(%rsp)           # 4-byte Folded Reload
	jb	.LBB0_24
	.align	16, 0x90
.LBB0_23:                               # %while.body.138
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, (%r14)
	movl	%ebp, 4(%r14)
	movl	%edx, 8(%r14)
	movl	%eax, 12(%r14)
	movl	%ebp, 16(%r14)
	movl	%edx, 20(%r14)
	movl	%eax, 24(%r14)
	movl	%ebp, 28(%r14)
	movl	%edx, 32(%r14)
	movl	%eax, 36(%r14)
	movl	%ebp, 40(%r14)
	movl	%edx, 44(%r14)
	addl	$-16, %edi
	addq	$48, %r14
	cmpl	$3, %edi
	jg	.LBB0_23
.LBB0_24:                               # %while.cond.135.while.end.143_crit_edge
                                        #   in Loop: Header=BB0_12 Depth=1
	addq	16(%rsp), %rsi          # 8-byte Folded Reload
	jmp	.LBB0_25
	.align	16, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	movl	%r11d, %edi
.LBB0_25:                               # %while.end.143
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$3, %edi
	je	.LBB0_30
# BB#26:                                # %while.end.143
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$2, %edi
	jne	.LBB0_27
# BB#29:                                # %sw.bb.148
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	%eax, (%rsi)
	movb	%r8b, 4(%rsi)
	movb	%r9b, 5(%rsi)
	jmp	.LBB0_31
	.align	16, 0x90
.LBB0_30:                               # %sw.bb.151
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	%eax, (%rsi)
	movl	%ebp, 4(%rsi)
	movb	%r9b, 8(%rsi)
	jmp	.LBB0_31
	.align	16, 0x90
.LBB0_27:                               # %while.end.143
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$1, %edi
	jne	.LBB0_31
# BB#28:                                # %sw.bb.144
                                        #   in Loop: Header=BB0_12 Depth=1
	movb	%r10b, (%rsi)
	movb	%r8b, 1(%rsi)
	movb	%r9b, 2(%rsi)
	.align	16, 0x90
.LBB0_31:                               # %sw.epilog.155
                                        #   in Loop: Header=BB0_12 Depth=1
	addq	%r12, %rbx
	cmpl	$1, %r13d
	leal	-1(%r13), %ecx
	movl	%ecx, %r13d
	jg	.LBB0_12
	jmp	.LBB0_43
.LBB0_39:                               # %do.body.211.preheader
	decl	%edx
	subl	%ebx, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	incl	%ebp
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rcx,2), %edx
	movslq	%edx, %rdx
	leaq	5(%rdx,%rsi), %rcx
	.align	16, 0x90
.LBB0_40:                               # %do.body.211
                                        # =>This Inner Loop Header: Depth=1
	movb	%r10b, -5(%rcx)
	movb	%r10b, -2(%rcx)
	movb	%r8b, -4(%rcx)
	movb	%r8b, -1(%rcx)
	movb	%r9b, -3(%rcx)
	movb	%r9b, (%rcx)
	addq	%rax, %rcx
	incl	%ebp
	jne	.LBB0_40
	jmp	.LBB0_43
.LBB0_37:                               # %do.body.194.preheader
	decl	%edx
	subl	%ebx, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	incl	%ebp
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rcx,2), %edx
	movslq	%edx, %rdx
	leaq	8(%rdx,%rsi), %rcx
	.align	16, 0x90
.LBB0_38:                               # %do.body.194
                                        # =>This Inner Loop Header: Depth=1
	movb	%r10b, -8(%rcx)
	movb	%r10b, -5(%rcx)
	movb	%r10b, -2(%rcx)
	movb	%r8b, -7(%rcx)
	movb	%r8b, -4(%rcx)
	movb	%r8b, -1(%rcx)
	movb	%r9b, -6(%rcx)
	movb	%r9b, -3(%rcx)
	movb	%r9b, (%rcx)
	addq	%rax, %rcx
	incl	%ebp
	jne	.LBB0_38
	jmp	.LBB0_43
.LBB0_35:                               # %do.body.175.preheader
	decl	%edx
	subl	%ebx, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	incl	%ebp
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rcx,2), %edx
	movslq	%edx, %rdx
	leaq	11(%rdx,%rsi), %rcx
	.align	16, 0x90
.LBB0_36:                               # %do.body.175
                                        # =>This Inner Loop Header: Depth=1
	movb	%r10b, -11(%rcx)
	movb	%r10b, -8(%rcx)
	movb	%r10b, -5(%rcx)
	movb	%r10b, -2(%rcx)
	movb	%r8b, -10(%rcx)
	movb	%r8b, -7(%rcx)
	movb	%r8b, -4(%rcx)
	movb	%r8b, -1(%rcx)
	movb	%r9b, -9(%rcx)
	movb	%r9b, -6(%rcx)
	movb	%r9b, -3(%rcx)
	movb	%r9b, (%rcx)
	addq	%rax, %rcx
	incl	%ebp
	jne	.LBB0_36
.LBB0_43:                               # %cleanup
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mem_true24_fill_rectangle, .Lfunc_end0-mem_true24_fill_rectangle
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_41
	.quad	.LBB0_39
	.quad	.LBB0_37
	.quad	.LBB0_35

	.text
	.align	16, 0x90
	.type	mem_true24_copy_mono,@function
mem_true24_copy_mono:                   # @mem_true24_copy_mono
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
	movl	72(%rsp), %r10d
	movl	64(%rsp), %r13d
	movl	56(%rsp), %eax
	movl	%eax, %ebx
	orl	%r9d, %ebx
	jns	.LBB1_1
# BB#2:                                 # %if.then
	movl	%r9d, %ebp
	sarl	$31, %ebp
	andl	%r9d, %ebp
	leal	(%r13,%rbp), %r13d
	xorl	%r15d, %r15d
	testl	%r9d, %r9d
	cmovsl	%r15d, %r9d
	subl	%ebp, %edx
	testl	%eax, %eax
	js	.LBB1_3
.LBB1_1:
	movl	%ecx, -32(%rsp)         # 4-byte Spill
	movl	%eax, %r15d
.LBB1_4:                                # %if.end.8
	movl	832(%rdi), %r8d
	movl	836(%rdi), %r11d
	movl	%r8d, %ebp
	subl	%r9d, %ebp
	cmpl	%ebp, %r13d
	cmovlel	%r13d, %ebp
	movq	%rbp, -8(%rsp)          # 8-byte Spill
	subl	%r15d, %r11d
	cmpl	%r11d, %r10d
	cmovlel	%r10d, %r11d
	testl	%ebp, %ebp
	jle	.LBB1_55
# BB#5:                                 # %if.end.8
	testl	%r11d, %r11d
	jle	.LBB1_55
# BB#6:                                 # %do.end.26
	movq	88(%rsp), %r10
	movq	80(%rsp), %r14
	movl	1736(%rdi), %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movslq	%r15d, %rax
	movq	2576(%rdi), %rcx
	leal	(%r9,%r9,2), %edi
	movslq	%edi, %r12
	addq	(%rcx,%rax,8), %r12
	movl	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdi
	leaq	(%rsi,%rdi), %r15
	andl	$7, %edx
	movl	$128, %eax
	movb	%dl, %cl
	shrl	%cl, %eax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	cmpq	$-1, %r14
	je	.LBB1_18
# BB#7:                                 # %if.then.34
	testl	%r11d, %r11d
	jle	.LBB1_55
# BB#8:                                 # %while.body.lr.ph
	movq	%r14, %r13
	shrq	$16, %r13
	movl	%r14d, %edx
	shrl	$8, %edx
	movq	%r10, %rsi
	shrq	$16, %rsi
	movl	%r10d, %edi
	shrl	$8, %edi
	movslq	-32(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, -32(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_9:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #       Child Loop BB1_11 Depth 3
	movq	%r12, %rbx
	movq	%r15, %r9
	movq	-16(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	movq	-8(%rsp), %rax          # 8-byte Reload
.LBB1_10:                               # %do.body.49.outer
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_11 Depth 3
	movzbl	(%r9), %ebp
	incq	%r9
	movl	%r8d, %ecx
	.align	16, 0x90
.LBB1_11:                               # %do.body.49
                                        #   Parent Loop BB1_9 Depth=1
                                        #     Parent Loop BB1_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%ebp, %ecx
	je	.LBB1_14
# BB#12:                                # %if.then.51
                                        #   in Loop: Header=BB1_11 Depth=3
	cmpq	$-1, %r10
	je	.LBB1_15
# BB#13:                                # %if.then.54
                                        #   in Loop: Header=BB1_11 Depth=3
	movb	%sil, (%rbx)
	movb	%dil, 1(%rbx)
	movb	%r10b, 2(%rbx)
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_14:                               # %if.else
                                        #   in Loop: Header=BB1_11 Depth=3
	movb	%r13b, (%rbx)
	movb	%dl, 1(%rbx)
	movb	%r14b, 2(%rbx)
.LBB1_15:                               # %if.end.68
                                        #   in Loop: Header=BB1_11 Depth=3
	cmpl	$1, %eax
	je	.LBB1_17
# BB#16:                                # %if.end.74
                                        #   in Loop: Header=BB1_11 Depth=3
	addq	$3, %rbx
	decl	%eax
	sarl	%ecx
	movl	$128, %r8d
	jne	.LBB1_11
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_17:                               # %do.end.83
                                        #   in Loop: Header=BB1_9 Depth=1
	addq	-32(%rsp), %r15         # 8-byte Folded Reload
	addq	-24(%rsp), %r12         # 8-byte Folded Reload
	cmpl	$1, %r11d
	leal	-1(%r11), %eax
	movl	%eax, %r11d
	jg	.LBB1_9
	jmp	.LBB1_55
.LBB1_18:                               # %if.else.88
	movq	%rdi, -48(%rsp)         # 8-byte Spill
	cmpq	$-1, %r10
	je	.LBB1_55
# BB#19:                                # %if.then.91
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rax), %ebx
	movq	-8(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rdx), %edi
	movl	$8, %eax
	subl	%edx, %eax
	sarl	%cl, %ebx
	negl	%ebx
	cmpl	$8, %edi
	movl	$-1, %edi
	cmovlel	%ebx, %edi
	cmovlel	%ecx, %eax
	testl	%r11d, %r11d
	jle	.LBB1_55
# BB#20:                                # %while.body.116.lr.ph
	movq	%r10, %rcx
	shrq	$16, %rcx
	movl	%r10d, %ebp
	shrl	$8, %ebp
	movq	-16(%rsp), %rbx         # 8-byte Reload
	leal	(%rdi,%rbx,2), %edi
	leal	(%rax,%rax,2), %r14d
	movq	-8(%rsp), %rbx          # 8-byte Reload
	subl	%eax, %ebx
	movq	%rbx, -8(%rsp)          # 8-byte Spill
	movslq	%r14d, %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movslq	-32(%rsp), %r14         # 4-byte Folded Reload
	decl	%r9d
	subl	%r8d, %r9d
	notl	%r13d
	cmpl	%r13d, %r9d
	cmovgel	%r9d, %r13d
	movl	%r13d, %eax
	subl	%edx, %eax
	cmpl	$-10, %eax
	movl	$-9, %ebx
	cmovgl	%eax, %ebx
	leal	-8(%rbx,%rdx), %eax
	subl	%r13d, %eax
	shrl	$3, %eax
	leaq	(%rax,%rax,2), %rdx
	leaq	24(,%rdx,8), %rdx
	movq	%rdx, -32(%rsp)         # 8-byte Spill
	movq	-48(%rsp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	leaq	2(%rsi,%rdx), %r9
	.align	16, 0x90
.LBB1_21:                               # %while.body.116
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_51 Depth 2
	movzbl	(%r15), %eax
	andl	%edi, %eax
	movq	%r12, %rdx
	movq	-16(%rsp), %rsi         # 8-byte Reload
	je	.LBB1_25
	.align	16, 0x90
.LBB1_22:                               # %do.body.128
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%eax, %esi
	je	.LBB1_24
# BB#23:                                # %if.then.131
                                        #   in Loop: Header=BB1_22 Depth=2
	movb	%cl, (%rdx)
	movb	%bpl, 1(%rdx)
	movb	%r10b, 2(%rdx)
.LBB1_24:                               # %if.end.135
                                        #   in Loop: Header=BB1_22 Depth=2
	addq	$3, %rdx
	sarl	%esi
	testl	%edi, %esi
	jne	.LBB1_22
	jmp	.LBB1_26
	.align	16, 0x90
.LBB1_25:                               # %if.else.142
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	-40(%rsp), %rax         # 8-byte Reload
	leaq	(%r12,%rax), %rdx
.LBB1_26:                               # %while.cond.146.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	leaq	1(%r15), %r13
	movq	-8(%rsp), %rax          # 8-byte Reload
	cmpl	$8, %eax
	jl	.LBB1_27
# BB#28:                                # %while.body.149.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	%r14, %rbx
	leaq	23(%rdx), %r8
	movl	%eax, %esi
	.align	16, 0x90
.LBB1_29:                               # %while.body.149
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13), %r14d
	testb	$-16, %r14b
	je	.LBB1_38
# BB#30:                                # %if.then.154
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$-128, %r14b
	je	.LBB1_32
# BB#31:                                # %if.then.157
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -23(%r8)
	movb	%bpl, -22(%r8)
	movb	%r10b, -21(%r8)
.LBB1_32:                               # %if.end.161
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$64, %r14b
	je	.LBB1_34
# BB#33:                                # %if.then.164
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -20(%r8)
	movb	%bpl, -19(%r8)
	movb	%r10b, -18(%r8)
.LBB1_34:                               # %if.end.171
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$32, %r14b
	je	.LBB1_36
# BB#35:                                # %if.then.174
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -17(%r8)
	movb	%bpl, -16(%r8)
	movb	%r10b, -15(%r8)
.LBB1_36:                               # %if.end.181
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$16, %r14b
	je	.LBB1_38
# BB#37:                                # %if.then.184
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -14(%r8)
	movb	%bpl, -13(%r8)
	movb	%r10b, -12(%r8)
.LBB1_38:                               # %if.end.192
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$15, %r14b
	je	.LBB1_47
# BB#39:                                # %if.then.195
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$8, %r14b
	je	.LBB1_41
# BB#40:                                # %if.then.198
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -11(%r8)
	movb	%bpl, -10(%r8)
	movb	%r10b, -9(%r8)
.LBB1_41:                               # %if.end.205
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$4, %r14b
	je	.LBB1_43
# BB#42:                                # %if.then.208
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -8(%r8)
	movb	%bpl, -7(%r8)
	movb	%r10b, -6(%r8)
.LBB1_43:                               # %if.end.215
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$2, %r14b
	je	.LBB1_45
# BB#44:                                # %if.then.218
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -5(%r8)
	movb	%bpl, -4(%r8)
	movb	%r10b, -3(%r8)
.LBB1_45:                               # %if.end.225
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$1, %r14b
	je	.LBB1_47
# BB#46:                                # %if.then.228
                                        #   in Loop: Header=BB1_29 Depth=2
	movb	%cl, -2(%r8)
	movb	%bpl, -1(%r8)
	movb	%r10b, (%r8)
.LBB1_47:                               # %if.end.236
                                        #   in Loop: Header=BB1_29 Depth=2
	incq	%r13
	addl	$-8, %esi
	addq	$24, %r8
	cmpl	$7, %esi
	jg	.LBB1_29
# BB#48:                                # %while.cond.146.while.end.239_crit_edge
                                        #   in Loop: Header=BB1_21 Depth=1
	addq	-32(%rsp), %rdx         # 8-byte Folded Reload
	movq	%r9, %r13
	movq	%rbx, %r14
	jmp	.LBB1_49
	.align	16, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_21 Depth=1
	movl	%eax, %esi
.LBB1_49:                               # %while.end.239
                                        #   in Loop: Header=BB1_21 Depth=1
	testl	%esi, %esi
	jle	.LBB1_54
# BB#50:                                # %if.then.242
                                        #   in Loop: Header=BB1_21 Depth=1
	movzbl	(%r13), %eax
	addq	$2, %rdx
	incl	%esi
	movl	$128, %ebx
	.align	16, 0x90
.LBB1_51:                               # %do.body.246
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%eax, %ebx
	je	.LBB1_53
# BB#52:                                # %if.then.249
                                        #   in Loop: Header=BB1_51 Depth=2
	movb	%cl, -2(%rdx)
	movb	%bpl, -1(%rdx)
	movb	%r10b, (%rdx)
.LBB1_53:                               # %if.end.253
                                        #   in Loop: Header=BB1_51 Depth=2
	sarl	%ebx
	addq	$3, %rdx
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB1_51
.LBB1_54:                               # %if.end.261
                                        #   in Loop: Header=BB1_21 Depth=1
	addq	%r14, %r15
	addq	-24(%rsp), %r12         # 8-byte Folded Reload
	addq	%r14, %r9
	cmpl	$1, %r11d
	leal	-1(%r11), %eax
	movl	%eax, %r11d
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
	addl	%eax, %r10d
	imull	%ecx, %eax
	movl	%ecx, -32(%rsp)         # 4-byte Spill
	movslq	%eax, %rbp
	subq	%rbp, %rsi
	jmp	.LBB1_4
.Lfunc_end1:
	.size	mem_true24_copy_mono, .Lfunc_end1-mem_true24_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_true24_copy_color,@function
mem_true24_copy_color:                  # @mem_true24_copy_color
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
.LBB2_4:                                # %if.then.6
	addl	%eax, %r8d
	imull	%ecx, %eax
	cltq
	subq	%rax, %r10
.LBB2_5:                                # %if.end.9
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
# BB#6:                                 # %if.end.9
	testl	%eax, %eax
	jle	.LBB2_8
# BB#7:                                 # %do.end.29
	movslq	%r11d, %r8
	movq	2576(%rdi), %r11
	leal	(%r9,%r9,2), %esi
	movslq	%esi, %r9
	addq	(%r11,%r8,8), %r9
	movl	1736(%rdi), %esi
	leal	(%rdx,%rdx,2), %edx
	movslq	%edx, %rdx
	addq	%rdx, %r10
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
	.size	mem_true24_copy_color, .Lfunc_end2-mem_true24_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem_true24_copy_alpha,@function
mem_true24_copy_alpha:                  # @mem_true24_copy_alpha
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
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movl	72(%rsp), %r9d
	movl	64(%rsp), %ebp
	movl	56(%rsp), %ebx
	movl	%ebx, %eax
	orl	%r13d, %eax
	jns	.LBB3_1
# BB#2:                                 # %if.then
	movl	%r13d, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	leal	(%rbp,%rax), %ebp
	xorl	%r8d, %r8d
	testl	%r13d, %r13d
	cmovsl	%r8d, %r13d
	subl	%eax, %edx
	testl	%ebx, %ebx
	js	.LBB3_3
.LBB3_1:
	movq	%rdx, %r10
	movl	%ebx, %r8d
.LBB3_4:                                # %if.end.15
	movl	832(%rdi), %eax
	movl	836(%rdi), %edx
	subl	%r13d, %eax
	cmpl	%eax, %ebp
	cmovlel	%ebp, %eax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	subl	%r8d, %edx
	cmpl	%edx, %r9d
	cmovlel	%r9d, %edx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB3_17
# BB#5:                                 # %if.end.15
	movq	-32(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB3_17
# BB#6:                                 # %for.cond.preheader.lr.ph
	movq	80(%rsp), %r11
	movq	%r11, %r9
	shrq	$16, %r9
	movq	%r9, -8(%rsp)           # 8-byte Spill
	movl	%r11d, %r14d
	shrl	$8, %r14d
	movl	88(%rsp), %r12d
	movq	2576(%rdi), %rax
	movslq	%r8d, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	%r10, -40(%rsp)         # 8-byte Spill
	movq	-32(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r10), %ebx
	movslq	%ecx, %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movzbl	%r9b, %eax
	movl	%eax, -12(%rsp)         # 4-byte Spill
	movzbl	%r14b, %eax
	movl	%eax, -16(%rsp)         # 4-byte Spill
	movzbl	%r11b, %r15d
	leal	(%r10,%r10), %eax
	movl	%eax, -52(%rsp)         # 4-byte Spill
	leal	(%r13,%r13,2), %ecx
	movslq	%ecx, %rcx
	leaq	2(%rcx,%rdx), %r10
	movl	1736(%rdi), %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB3_7:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	movq	-32(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	%r10, %r9
	movl	-52(%rsp), %edx         # 4-byte Reload
	movq	-40(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	jle	.LBB3_16
	.align	16, 0x90
.LBB3_8:                                # %for.body
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r8d, %ecx
	cmpl	$2, %r12d
	jne	.LBB3_10
# BB#9:                                 # %if.then.48
                                        #   in Loop: Header=BB3_8 Depth=2
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %edi
	movl	%edx, %ecx
	notl	%ecx
	andb	$6, %cl
	shrl	%cl, %edi
	andl	$3, %edi
	leal	(%rdi,%rdi,4), %ecx
	jmp	.LBB3_11
	.align	16, 0x90
.LBB3_10:                               # %if.else
                                        #   in Loop: Header=BB3_8 Depth=2
	sarl	%ecx
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %ecx
	movl	%ecx, %edi
	andl	$15, %edi
	shrl	$4, %ecx
	testb	$1, %r8b
	cmovnel	%edi, %ecx
.LBB3_11:                               # %if.end.64
                                        #   in Loop: Header=BB3_8 Depth=2
	testl	%ecx, %ecx
	je	.LBB3_15
# BB#12:                                # %if.end.64
                                        #   in Loop: Header=BB3_8 Depth=2
	cmpl	$15, %ecx
	jne	.LBB3_14
# BB#13:                                # %if.then.67
                                        #   in Loop: Header=BB3_8 Depth=2
	movq	-8(%rsp), %rax          # 8-byte Reload
	movb	%al, -2(%r9)
	movb	%r14b, -1(%r9)
	movb	%r11b, (%r9)
	jmp	.LBB3_15
	.align	16, 0x90
.LBB3_14:                               # %if.then.74
                                        #   in Loop: Header=BB3_8 Depth=2
	movzbl	-2(%r9), %edi
	movl	-12(%rsp), %r13d        # 4-byte Reload
	subl	%edi, %r13d
	imull	%ecx, %r13d
	movslq	%r13d, %rax
	imulq	$-2004318071, %rax, %rbp # imm = 0xFFFFFFFF88888889
	shrq	$32, %rbp
	addl	%ebp, %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	shrl	$3, %eax
	addl	%ebp, %eax
	addl	%edi, %eax
	movb	%al, -2(%r9)
	movzbl	-1(%r9), %eax
	movl	-16(%rsp), %edi         # 4-byte Reload
	subl	%eax, %edi
	imull	%ecx, %edi
	movslq	%edi, %rdi
	imulq	$-2004318071, %rdi, %rbp # imm = 0xFFFFFFFF88888889
	shrq	$32, %rbp
	addl	%ebp, %edi
	movl	%edi, %ebp
	shrl	$31, %ebp
	shrl	$3, %edi
	addl	%ebp, %edi
	addl	%eax, %edi
	movb	%dil, -1(%r9)
	movzbl	(%r9), %eax
	movl	%r15d, %edi
	subl	%eax, %edi
	imull	%ecx, %edi
	movslq	%edi, %rcx
	imulq	$-2004318071, %rcx, %rdi # imm = 0xFFFFFFFF88888889
	shrq	$32, %rdi
	addl	%edi, %ecx
	movl	%ecx, %edi
	shrl	$31, %edi
	shrl	$3, %ecx
	addl	%edi, %ecx
	addl	%eax, %ecx
	movb	%cl, (%r9)
.LBB3_15:                               # %if.end.108
                                        #   in Loop: Header=BB3_8 Depth=2
	incl	%r8d
	addl	$2, %edx
	addq	$3, %r9
	cmpl	%ebx, %r8d
	jl	.LBB3_8
.LBB3_16:                               # %for.end
                                        #   in Loop: Header=BB3_7 Depth=1
	addq	-48(%rsp), %rsi         # 8-byte Folded Reload
	addq	-64(%rsp), %r10         # 8-byte Folded Reload
	movq	-24(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	jg	.LBB3_7
.LBB3_17:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_3:                                # %if.then.12
	movq	%rdx, %r10
	addl	%ebx, %r9d
	imull	%ecx, %ebx
	movslq	%ebx, %rax
	subq	%rax, %rsi
	jmp	.LBB3_4
.Lfunc_end3:
	.size	mem_true24_copy_alpha, .Lfunc_end3-mem_true24_copy_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	mem24_word_fill_rectangle,@function
mem24_word_fill_rectangle:              # @mem24_word_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 80
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
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %r15
	movl	%r12d, %eax
	orl	%r13d, %eax
	jns	.LBB4_2
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
.LBB4_2:                                # %do.body.10
	movl	832(%r15), %ebx
	movl	836(%r15), %ebp
	subl	%r13d, %ebx
	cmpl	%ebx, %ecx
	cmovlel	%ecx, %ebx
	subl	%r12d, %ebp
	cmpl	%ebp, %r8d
	cmovlel	%r8d, %ebp
	testl	%ebx, %ebx
	jle	.LBB4_5
# BB#3:                                 # %do.body.10
	testl	%ebp, %ebp
	jle	.LBB4_5
# BB#4:                                 # %do.end.34
	movslq	%r12d, %rax
	movq	2576(%r15), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	1736(%r15), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	leal	(,%r13,8), %eax
	leal	(%rax,%rax,2), %edx
	movl	%edx, (%rsp)            # 4-byte Spill
	leal	(,%rbx,8), %eax
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
	callq	mem_true24_fill_rectangle
	xorl	%r9d, %r9d
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	4(%rsp), %esi           # 4-byte Reload
	movl	(%rsp), %edx            # 4-byte Reload
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
.LBB4_5:                                # %cleanup
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	mem24_word_fill_rectangle, .Lfunc_end4-mem24_word_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem24_word_copy_mono,@function
mem24_word_copy_mono:                   # @mem24_word_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 144
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%rdi, %r13
	movl	160(%rsp), %r9d
	movl	152(%rsp), %edi
	movl	144(%rsp), %eax
	movl	%eax, %ebp
	orl	%r15d, %ebp
	jns	.LBB5_1
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
	js	.LBB5_3
.LBB5_1:
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%eax, %ebp
.LBB5_4:                                # %if.end.8
	movl	832(%r13), %r12d
	movl	836(%r13), %r14d
	subl	%r15d, %r12d
	cmpl	%r12d, %edi
	cmovlel	%edi, %r12d
	subl	%ebp, %r14d
	cmpl	%r14d, %r9d
	cmovlel	%r9d, %r14d
	testl	%r12d, %r12d
	jle	.LBB5_7
# BB#5:                                 # %if.end.8
	testl	%r14d, %r14d
	jle	.LBB5_7
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
	leal	(%rax,%rax,2), %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	leal	(,%r12,8), %eax
	leal	(%rax,%rax,2), %ebx
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
	callq	mem_true24_copy_mono
	xorl	%r9d, %r9d
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	48(%rsp), %edx          # 4-byte Reload
	movl	%ebx, %ecx
	movl	%r14d, %r8d
	callq	mem_swap_byte_rect
.LBB5_7:                                # %cleanup
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_3:                                # %if.then.5
	movl	%edx, 80(%rsp)          # 4-byte Spill
	addl	%eax, %r9d
	imull	%ecx, %eax
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movslq	%eax, %rdx
	subq	%rdx, %rsi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB5_4
.Lfunc_end5:
	.size	mem24_word_copy_mono, .Lfunc_end5-mem24_word_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem24_word_copy_color,@function
mem24_word_copy_color:                  # @mem24_word_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 96
.Ltmp72:
	.cfi_offset %rbx, -56
.Ltmp73:
	.cfi_offset %r12, -48
.Ltmp74:
	.cfi_offset %r13, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movl	112(%rsp), %r8d
	movl	104(%rsp), %r10d
	movl	96(%rsp), %ebx
	movl	%ebx, %eax
	orl	%r9d, %eax
	js	.LBB6_2
# BB#1:
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%r9d, %r12d
	movl	%ebx, %eax
	jmp	.LBB6_5
.LBB6_2:                                # %if.then
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
	js	.LBB6_4
# BB#3:
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%ebx, %eax
	jmp	.LBB6_5
.LBB6_4:                                # %if.then.5
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	addl	%ebx, %r8d
	imull	%ecx, %ebx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movslq	%ebx, %rcx
	subq	%rcx, %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
.LBB6_5:                                # %if.end.8
	movl	832(%rdi), %r14d
	movl	836(%rdi), %ebp
	subl	%r12d, %r14d
	cmpl	%r14d, %r10d
	cmovlel	%r10d, %r14d
	subl	%eax, %ebp
	cmpl	%ebp, %r8d
	cmovlel	%r8d, %ebp
	testl	%r14d, %r14d
	jle	.LBB6_8
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB6_8
# BB#7:                                 # %do.end.26
	cltq
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %r13
	movl	1736(%rdi), %ebx
	leal	(,%r12,8), %eax
	leal	(%rax,%rax,2), %edx
	movl	%edx, 12(%rsp)          # 4-byte Spill
	leal	(,%r14,8), %eax
	leal	(%rax,%rax,2), %r15d
	movl	$1, %r9d
	movq	%r13, %rdi
	movl	%ebx, %esi
	movl	%r15d, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
	leal	(%r12,%r12,2), %eax
	cltq
	leaq	(%rax,%r13), %rdi
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,2), %eax
	cltq
	movq	24(%rsp), %rdx          # 8-byte Reload
	addq	%rax, %rdx
	leal	(%r14,%r14,2), %r8d
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
.LBB6_8:                                # %cleanup
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mem24_word_copy_color, .Lfunc_end6-mem24_word_copy_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image24"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	mem_true24_device,@object # @mem_true24_device
	.section	.rodata,"a",@progbits
	.globl	mem_true24_device
	.align	8
mem_true24_device:
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
	.short	24                      # 0x18
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
	.quad	mem_true24_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_true24_copy_mono
	.quad	mem_true24_copy_color
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
	.quad	mem_true24_copy_alpha
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
	.quad	mem_gray8_rgb24_strip_copy_rop
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
	.size	mem_true24_device, 2792

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image24w"
	.size	.L.str.2, 9

	.type	mem_true24_word_device,@object # @mem_true24_word_device
	.section	.rodata,"a",@progbits
	.globl	mem_true24_word_device
	.align	8
mem_true24_word_device:
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
	.short	24                      # 0x18
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
	.quad	mem24_word_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem24_word_copy_mono
	.quad	mem24_word_copy_color
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
	.size	mem_true24_word_device, 2792


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
