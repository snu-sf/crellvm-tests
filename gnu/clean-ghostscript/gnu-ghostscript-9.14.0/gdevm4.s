	.text
	.file	"gdevm4.bc"
	.align	16, 0x90
	.type	mem_mapped4_fill_rectangle,@function
mem_mapped4_fill_rectangle:             # @mem_mapped4_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
	orl	%esi, %eax
	jns	.LBB0_2
# BB#1:                                 # %if.then
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%esi, %eax
	addl	%eax, %ecx
	xorl	%r10d, %r10d
	testl	%esi, %esi
	cmovsl	%r10d, %esi
	movl	%edx, %eax
	sarl	$31, %eax
	testl	%edx, %edx
	cmovnsl	%edx, %r10d
	andl	%edx, %eax
	addl	%eax, %r8d
	movl	%r10d, %edx
.LBB0_2:                                # %do.body.10
	movl	832(%rdi), %eax
	movl	836(%rdi), %r10d
	subl	%esi, %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	subl	%edx, %r10d
	cmpl	%r10d, %r8d
	cmovlel	%r8d, %r10d
	testl	%eax, %eax
	jle	.LBB0_5
# BB#3:                                 # %do.body.10
	testl	%r10d, %r10d
	jle	.LBB0_5
# BB#4:                                 # %do.end.34
	movslq	%edx, %rcx
	movq	2576(%rdi), %rdx
	movq	(%rdx,%rcx,8), %r8
	shll	$2, %esi
	movl	1736(%rdi), %edx
	movl	tile_patterns(,%r9,4), %ecx
	shll	$2, %eax
	movq	%r8, %rdi
	movl	%eax, %r8d
	movl	%r10d, %r9d
	callq	bits_fill_rectangle
.LBB0_5:                                # %cleanup
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end0:
	.size	mem_mapped4_fill_rectangle, .Lfunc_end0-mem_mapped4_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem_mapped4_copy_mono,@function
mem_mapped4_copy_mono:                  # @mem_mapped4_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp4:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp5:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 56
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
	movl	%ecx, %r10d
	movl	72(%rsp), %r8d
	movl	64(%rsp), %r15d
	movl	56(%rsp), %ecx
	movl	%ecx, %eax
	orl	%r9d, %eax
	js	.LBB1_2
# BB#1:
	movl	%ecx, %ebx
	jmp	.LBB1_5
.LBB1_2:                                # %if.then
	movl	%r9d, %ebp
	sarl	$31, %ebp
	andl	%r9d, %ebp
	leal	(%r15,%rbp), %r15d
	xorl	%ebx, %ebx
	testl	%r9d, %r9d
	cmovsl	%ebx, %r9d
	subl	%ebp, %edx
	testl	%ecx, %ecx
	js	.LBB1_4
# BB#3:
	movl	%ecx, %ebx
	jmp	.LBB1_5
.LBB1_4:                                # %if.then.5
	addl	%ecx, %r8d
	imull	%r10d, %ecx
	movslq	%ecx, %rax
	subq	%rax, %rsi
.LBB1_5:                                # %if.end.8
	movl	832(%rdi), %ebp
	movl	836(%rdi), %r13d
	movl	%ebp, %eax
	subl	%r9d, %eax
	cmpl	%eax, %r15d
	cmovlel	%r15d, %eax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	subl	%ebx, %r13d
	cmpl	%r13d, %r8d
	cmovlel	%r8d, %r13d
	testl	%eax, %eax
	jle	.LBB1_57
# BB#6:                                 # %if.end.8
	testl	%r13d, %r13d
	jle	.LBB1_57
# BB#7:                                 # %do.end.26
	movq	88(%rsp), %r11
	movq	80(%rsp), %r8
	movl	1736(%rdi), %eax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movslq	%ebx, %rax
	movq	2576(%rdi), %rcx
	movl	%r9d, %edi
	sarl	%edi
	movslq	%edi, %r14
	addq	(%rcx,%rax,8), %r14
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	addq	%rax, %rsi
	cmpq	$-1, %r11
	movq	%r11, %rdi
	je	.LBB1_8
# BB#20:                                # %if.else
	cmpq	$-1, %r8
	je	.LBB1_21
# BB#22:                                # %if.else.52
	movl	%edx, %ebp
	xorl	%r9d, %ebp
	movl	%ebp, %eax
	andl	$1, %eax
	movl	%eax, -28(%rsp)         # 4-byte Spill
	xorl	$1, %eax
	movl	%eax, -20(%rsp)         # 4-byte Spill
	movq	%r8, %rax
	shlq	$4, %rax
	movl	%eax, %ecx
	orl	%r8d, %ecx
	movb	%cl, -4(%rsp)
	orl	%edi, %eax
	movb	%al, -3(%rsp)
	movq	%rdi, %rax
	shlq	$4, %rax
	movl	%eax, %ecx
	orl	%r8d, %ecx
	movb	%cl, -2(%rsp)
	orl	%edi, %eax
	movb	%al, -1(%rsp)
	andl	$7, %edx
	movl	%edx, -52(%rsp)         # 4-byte Spill
	movl	%edx, %ecx
	xorl	$7, %ecx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	andl	$1, %r9d
	shll	$31, %ebp
	sarl	$31, %ebp
	movl	%ebp, -24(%rsp)         # 4-byte Spill
	movslq	%r10d, %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, -68(%rsp)         # 4-byte Spill
	movq	-48(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	movl	%eax, -72(%rsp)         # 4-byte Spill
	leal	-1(%rcx), %eax
	movl	%eax, -76(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB1_23:                               # %do.body.69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
                                        #     Child Loop BB1_42 Depth 2
                                        #     Child Loop BB1_38 Depth 2
                                        #     Child Loop BB1_52 Depth 2
	leaq	1(%rsi), %r10
	testl	%r9d, %r9d
	movzbl	(%rsi), %r15d
	jne	.LBB1_25
# BB#24:                                #   in Loop: Header=BB1_23 Depth=1
	movq	%r14, %r8
	movq	-64(%rsp), %rdi         # 8-byte Reload
	movq	-48(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB1_28
	.align	16, 0x90
.LBB1_25:                               # %if.then.74
                                        #   in Loop: Header=BB1_23 Depth=1
	movzbl	(%r14), %eax
	andl	$240, %eax
	testl	-68(%rsp), %r15d        # 4-byte Folded Reload
	movq	80(%rsp), %rcx
	movq	88(%rsp), %rdx
	cmovnel	%edx, %ecx
	orl	%eax, %ecx
	movb	%cl, (%r14)
	cmpl	$7, -52(%rsp)           # 4-byte Folded Reload
	movl	-76(%rsp), %eax         # 4-byte Reload
	movl	%eax, %edi
	jne	.LBB1_27
# BB#26:                                # %if.then.86
                                        #   in Loop: Header=BB1_23 Depth=1
	leaq	2(%rsi), %r10
	movzbl	1(%rsi), %r15d
	movl	$7, %edi
.LBB1_27:                               # %if.end.89
                                        #   in Loop: Header=BB1_23 Depth=1
	leaq	1(%r14), %r8
	movl	-72(%rsp), %eax         # 4-byte Reload
	movl	%eax, %edx
.LBB1_28:                               # %if.end.91
                                        #   in Loop: Header=BB1_23 Depth=1
	movl	-20(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %r15d
	addl	-24(%rsp), %edi         # 4-byte Folded Reload
	js	.LBB1_32
# BB#29:                                # %if.end.91
                                        #   in Loop: Header=BB1_23 Depth=1
	cmpl	$2, %edx
	jl	.LBB1_32
	.align	16, 0x90
.LBB1_30:                               # %while.body
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %eax
	movb	%dil, %cl
	shrl	%cl, %eax
	andl	$3, %eax
	movb	-4(%rsp,%rax), %al
	movb	%al, (%r8)
	incq	%r8
	addl	$-2, %edx
	addl	$-2, %edi
	js	.LBB1_32
# BB#31:                                # %while.body
                                        #   in Loop: Header=BB1_30 Depth=2
	cmpl	$1, %edx
	jg	.LBB1_30
.LBB1_32:                               # %while.end
                                        #   in Loop: Header=BB1_23 Depth=1
	cmpl	$0, -28(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_33
# BB#35:                                # %if.then.107
                                        #   in Loop: Header=BB1_23 Depth=1
	cmpl	$8, %edx
	jl	.LBB1_36
# BB#37:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB1_23 Depth=1
	leal	-8(%rdx), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	leal	(,%rcx,8), %ebp
	subl	%ebp, %eax
	leaq	(,%rcx,4), %r11
	leaq	1(%r10), %r12
	movq	%r8, %rbp
	.align	16, 0x90
.LBB1_38:                               # %for.body
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r10), %r15d
	incq	%r10
	movq	%r15, %rbx
	shrq	$6, %rbx
	movb	-4(%rsp,%rbx), %bl
	movb	%bl, (%rbp)
	movl	%r15d, %ebx
	shrl	$4, %ebx
	andl	$3, %ebx
	movb	-4(%rsp,%rbx), %bl
	movb	%bl, 1(%rbp)
	movl	%r15d, %ebx
	shrl	$2, %ebx
	andl	$3, %ebx
	movb	-4(%rsp,%rbx), %bl
	movb	%bl, 2(%rbp)
	movl	%r15d, %ebx
	andl	$3, %ebx
	movb	-4(%rsp,%rbx), %bl
	movb	%bl, 3(%rbp)
	addl	$-8, %edx
	addq	$4, %rbp
	cmpl	$7, %edx
	jg	.LBB1_38
# BB#39:                                # %for.cond.for.end_crit_edge
                                        #   in Loop: Header=BB1_23 Depth=1
	leaq	4(%r8,%r11), %r8
	addq	%rcx, %r12
	movl	%eax, %edx
	movq	%r12, %r10
	jmp	.LBB1_40
	.align	16, 0x90
.LBB1_33:                               # %for.cond.135.preheader
                                        #   in Loop: Header=BB1_23 Depth=1
	cmpl	$8, %edx
	jl	.LBB1_34
# BB#41:                                # %for.body.138.lr.ph
                                        #   in Loop: Header=BB1_23 Depth=1
	movq	%r13, -88(%rsp)         # 8-byte Spill
	leal	-8(%rdx), %r12d
	movl	%r12d, %ecx
	shrl	$3, %ecx
	leal	(,%rcx,8), %eax
	subl	%eax, %r12d
	leaq	(,%rcx,4), %rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	leaq	1(%r10), %r11
	movq	%r8, %rbx
	.align	16, 0x90
.LBB1_42:                               # %for.body.138
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shll	$8, %r15d
	movzbl	(%r10), %ebp
	incq	%r10
	leal	(%r15,%rbp), %r15d
	movl	%r15d, %r13d
	shrl	$7, %r13d
	andl	$3, %r13d
	movb	-4(%rsp,%r13), %al
	movb	%al, (%rbx)
	movl	%ebp, %eax
	shrl	$5, %eax
	andl	$3, %eax
	movb	-4(%rsp,%rax), %al
	movb	%al, 1(%rbx)
	movl	%ebp, %eax
	shrl	$3, %eax
	andl	$3, %eax
	movb	-4(%rsp,%rax), %al
	movb	%al, 2(%rbx)
	shrl	%ebp
	andl	$3, %ebp
	movb	-4(%rsp,%rbp), %al
	movb	%al, 3(%rbx)
	addl	$-8, %edx
	addq	$4, %rbx
	cmpl	$7, %edx
	jg	.LBB1_42
# BB#43:                                # %for.cond.135.if.end.167.loopexit_crit_edge
                                        #   in Loop: Header=BB1_23 Depth=1
	movq	-96(%rsp), %rax         # 8-byte Reload
	leaq	4(%r8,%rax), %r8
	addq	%rcx, %r11
	movq	%r11, %r10
	movq	-88(%rsp), %r13         # 8-byte Reload
	jmp	.LBB1_44
	.align	16, 0x90
.LBB1_36:                               #   in Loop: Header=BB1_23 Depth=1
	shrl	%r15d
.LBB1_40:                               # %for.end
                                        #   in Loop: Header=BB1_23 Depth=1
	addl	%r15d, %r15d
	movl	%edx, %r12d
	jmp	.LBB1_44
	.align	16, 0x90
.LBB1_34:                               #   in Loop: Header=BB1_23 Depth=1
	movl	%edx, %r12d
.LBB1_44:                               # %if.end.167
                                        #   in Loop: Header=BB1_23 Depth=1
	testl	%r12d, %r12d
	je	.LBB1_56
# BB#45:                                # %if.end.170
                                        #   in Loop: Header=BB1_23 Depth=1
	testl	%edi, %edi
	jns	.LBB1_47
# BB#46:                                # %if.then.173
                                        #   in Loop: Header=BB1_23 Depth=1
	shll	$8, %r15d
	movzbl	(%r10), %eax
	movl	-20(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %eax
	orl	%r15d, %eax
	movl	$7, %edi
	movl	%eax, %r15d
.LBB1_47:                               # %while.cond.179.preheader
                                        #   in Loop: Header=BB1_23 Depth=1
	cmpl	$2, %r12d
	jl	.LBB1_54
# BB#48:                                # %while.body.182.lr.ph
                                        #   in Loop: Header=BB1_23 Depth=1
	leal	-2(%r12), %ebx
	movl	%ebx, %edx
	shrl	%edx
	leal	-2(%rdi), %r10d
	movl	%edx, %r11d
	btl	$1, %ebx
	jb	.LBB1_49
# BB#50:                                # %while.body.182.prol
                                        #   in Loop: Header=BB1_23 Depth=1
	movl	%r15d, %eax
	movb	%dil, %cl
	shrl	%cl, %eax
	andl	$3, %eax
	movb	-4(%rsp,%rax), %cl
	leaq	1(%r8), %rax
	movb	%cl, (%r8)
	movl	%ebx, %r12d
	movl	%r10d, %edi
	jmp	.LBB1_51
.LBB1_49:                               #   in Loop: Header=BB1_23 Depth=1
	movq	%r8, %rax
.LBB1_51:                               # %while.body.182.lr.ph.split
                                        #   in Loop: Header=BB1_23 Depth=1
	addl	%edx, %edx
	testl	%r11d, %r11d
	je	.LBB1_53
	.align	16, 0x90
.LBB1_52:                               # %while.body.182
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %ebp
	movb	%dil, %cl
	shrl	%cl, %ebp
	andl	$3, %ebp
	movb	-4(%rsp,%rbp), %cl
	movb	%cl, (%rax)
	leal	-2(%rdi), %ecx
	movl	%r15d, %ebp
	shrl	%cl, %ebp
	andl	$3, %ebp
	movb	-4(%rsp,%rbp), %cl
	movb	%cl, 1(%rax)
	addl	$-4, %r12d
	addl	$-4, %edi
	addq	$2, %rax
	cmpl	$1, %r12d
	jg	.LBB1_52
.LBB1_53:                               # %while.cond.179.while.end.190_crit_edge
                                        #   in Loop: Header=BB1_23 Depth=1
	subl	%edx, %r10d
	subl	%edx, %ebx
	leaq	1(%r8,%r11), %r8
	movl	%ebx, %r12d
	movl	%r10d, %edi
.LBB1_54:                               # %while.end.190
                                        #   in Loop: Header=BB1_23 Depth=1
	testl	%r12d, %r12d
	je	.LBB1_56
# BB#55:                                # %if.then.192
                                        #   in Loop: Header=BB1_23 Depth=1
	movzbl	(%r8), %eax
	andl	$15, %eax
	movl	$2, %edx
	movb	%dil, %cl
	shll	%cl, %edx
	testl	%r15d, %edx
	movq	80(%rsp), %rcx
	cmovneq	88(%rsp), %rcx
	shlq	$4, %rcx
	orl	%eax, %ecx
	movb	%cl, (%r8)
.LBB1_56:                               # %cleanup
                                        #   in Loop: Header=BB1_23 Depth=1
	addq	-40(%rsp), %rsi         # 8-byte Folded Reload
	addq	-16(%rsp), %r14         # 8-byte Folded Reload
	cmpl	$1, %r13d
	leal	-1(%r13), %eax
	movl	%eax, %r13d
	jg	.LBB1_23
	jmp	.LBB1_57
.LBB1_8:                                # %if.then.33
	cmpq	$-1, %r8
	je	.LBB1_57
# BB#9:                                 # %if.end.36
	movl	%r8d, %edi
	shll	$4, %edi
	orl	%r8d, %edi
	movb	$-1, %r12b
	jmp	.LBB1_10
.LBB1_21:                               # %if.then.44
	movq	%rdi, %rax
	shll	$4, %edi
	orl	%eax, %edi
	xorl	%r12d, %r12d
.LBB1_10:                               # %do.body.224.preheader
	andb	$7, %dl
	movl	$128, %eax
	movb	%dl, %cl
	shrl	%cl, %eax
	movl	%eax, -24(%rsp)         # 4-byte Spill
	testb	$1, %r9b
	movl	%r9d, %eax
	movb	$15, -20(%rsp)          # 1-byte Folded Spill
	jne	.LBB1_12
# BB#11:                                # %do.body.224.preheader
	movb	$-16, -20(%rsp)         # 1-byte Folded Spill
.LBB1_12:                               # %do.body.224.preheader
	movslq	%r10d, %r10
	decl	%eax
	subl	%ebp, %eax
	notl	%r15d
	cmpl	%r15d, %eax
	cmovgel	%eax, %r15d
	negl	%r15d
	.align	16, 0x90
.LBB1_13:                               # %do.body.224
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
	leaq	1(%rsi), %rbx
	movb	(%rsi), %al
	xorb	%r12b, %al
	movzbl	%al, %ebp
	movl	%r15d, %ecx
	movq	%r15, %r9
	movq	%r14, %rdx
	movl	-24(%rsp), %r15d        # 4-byte Reload
	movb	-20(%rsp), %r8b         # 1-byte Reload
	.align	16, 0x90
.LBB1_14:                               # %do.body.240
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ebp, %r15d
	je	.LBB1_16
# BB#15:                                # %if.then.243
                                        #   in Loop: Header=BB1_14 Depth=2
	movb	%r8b, %al
	notb	%al
	andb	(%rdx), %al
	movb	%r8b, %r11b
	andb	%dil, %r11b
	orb	%al, %r11b
	movb	%r11b, (%rdx)
.LBB1_16:                               # %if.end.253
                                        #   in Loop: Header=BB1_14 Depth=2
	sarl	%r15d
	jne	.LBB1_18
# BB#17:                                # %if.then.257
                                        #   in Loop: Header=BB1_14 Depth=2
	movb	(%rbx), %al
	xorb	%r12b, %al
	incq	%rbx
	movzbl	%al, %ebp
	movl	$128, %r15d
.LBB1_18:                               # %if.end.262
                                        #   in Loop: Header=BB1_14 Depth=2
	notb	%r8b
	movzbl	%r8b, %eax
	shrq	$7, %rax
	addq	%rax, %rdx
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB1_14
# BB#19:                                # %do.end.274
                                        #   in Loop: Header=BB1_13 Depth=1
	addq	%r10, %rsi
	addq	-16(%rsp), %r14         # 8-byte Folded Reload
	cmpl	$1, %r13d
	leal	-1(%r13), %eax
	movl	%eax, %r13d
	movq	%r9, %r15
	jg	.LBB1_13
.LBB1_57:                               # %cleanup.284
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mem_mapped4_copy_mono, .Lfunc_end1-mem_mapped4_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_mapped4_copy_color,@function
mem_mapped4_copy_color:                 # @mem_mapped4_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 64
.Ltmp15:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	64(%rsp), %r10d
	movl	80(%rsp), %edi
	shll	$2, 832(%rbx)
	movl	72(%rsp), %eax
	shll	$2, %edx
	shll	$2, %r9d
	shll	$2, %eax
	movl	%edi, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r10d, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	%rbx, %rdi
	callq	*mem_mono_device+1216(%rip)
	sarl	$2, 832(%rbx)
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end2:
	.size	mem_mapped4_copy_color, .Lfunc_end2-mem_mapped4_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem4_word_fill_rectangle,@function
mem4_word_fill_rectangle:               # @mem4_word_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp20:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 64
.Ltmp23:
	.cfi_offset %rbx, -56
.Ltmp24:
	.cfi_offset %r12, -48
.Ltmp25:
	.cfi_offset %r13, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%esi, %r15d
	movl	%edx, %eax
	orl	%r15d, %eax
	jns	.LBB3_2
# BB#1:                                 # %if.then
	movl	%r15d, %eax
	sarl	$31, %eax
	andl	%r15d, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%r15d, %r15d
	cmovsl	%eax, %r15d
	movl	%edx, %esi
	sarl	$31, %esi
	andl	%edx, %esi
	addl	%esi, %r8d
	testl	%edx, %edx
	cmovsl	%eax, %edx
.LBB3_2:                                # %do.body.10
	movl	832(%rdi), %ebp
	movl	836(%rdi), %ebx
	subl	%r15d, %ebp
	cmpl	%ebp, %ecx
	cmovlel	%ecx, %ebp
	subl	%edx, %ebx
	cmpl	%ebx, %r8d
	cmovlel	%r8d, %ebx
	testl	%ebp, %ebp
	jle	.LBB3_5
# BB#3:                                 # %do.body.10
	testl	%ebx, %ebx
	jle	.LBB3_5
# BB#4:                                 # %do.end.34
	movslq	%edx, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %r12
	movl	1736(%rdi), %r13d
	shll	$2, %r15d
	shll	$2, %ebp
	movl	$1, %r9d
	movq	%r12, %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
	movl	tile_patterns(,%r14,4), %ecx
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%r13d, %edx
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	bits_fill_rectangle
	movl	$1, %r9d
	movq	%r12, %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
.LBB3_5:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mem4_word_fill_rectangle, .Lfunc_end3-mem4_word_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem4_word_copy_mono,@function
mem4_word_copy_mono:                    # @mem4_word_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 144
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
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
	leal	(,%r15,4), %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	leal	(,%r12,4), %ebx
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
	callq	mem_mapped4_copy_mono
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
	.size	mem4_word_copy_mono, .Lfunc_end4-mem4_word_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem4_word_copy_color,@function
mem4_word_copy_color:                   # @mem4_word_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 80
.Ltmp46:
	.cfi_offset %rbx, -32
.Ltmp47:
	.cfi_offset %r14, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	96(%rsp), %r11d
	movl	88(%rsp), %ebp
	movl	80(%rsp), %eax
	movl	%eax, %edi
	orl	%r9d, %edi
	js	.LBB5_2
# BB#1:
	movl	%eax, %r10d
	movl	%ebp, %edi
	jmp	.LBB5_5
.LBB5_2:                                # %if.then
	movl	%r9d, %edi
	sarl	$31, %edi
	andl	%r9d, %edi
	subl	%edi, %edx
	xorl	%r10d, %r10d
	testl	%r9d, %r9d
	cmovsl	%r10d, %r9d
	addl	%ebp, %edi
	testl	%eax, %eax
	js	.LBB5_4
# BB#3:
	movl	%eax, %r10d
	jmp	.LBB5_5
.LBB5_4:                                # %if.then.5
	addl	%eax, %r11d
	imull	%ecx, %eax
	cltq
	subq	%rax, %rsi
	xorl	%r8d, %r8d
.LBB5_5:                                # %if.end.8
	movl	832(%r14), %ebx
	movl	836(%r14), %ebp
	movl	%ebx, %eax
	subl	%r9d, %eax
	cmpl	%eax, %edi
	cmovlel	%edi, %eax
	subl	%r10d, %ebp
	cmpl	%ebp, %r11d
	cmovlel	%r11d, %ebp
	testl	%eax, %eax
	jle	.LBB5_8
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB5_8
# BB#7:                                 # %do.end.26
	shll	$2, %ebx
	movl	%ebx, 832(%r14)
	shll	$2, %edx
	shll	$2, %r9d
	shll	$2, %eax
	movl	%ebp, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r10d, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	%r14, %rdi
	callq	*mem_mono_word_device+1216(%rip)
	sarl	$2, 832(%r14)
	jmp	.LBB5_9
.LBB5_8:                                # %cleanup
	xorl	%eax, %eax
.LBB5_9:                                # %cleanup
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mem4_word_copy_color, .Lfunc_end5-mem4_word_copy_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image4"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceCMYK"
	.size	.L.str.1, 11

	.type	mem_mapped4_device,@object # @mem_mapped4_device
	.section	.rodata,"a",@progbits
	.globl	mem_mapped4_device
	.align	8
mem_mapped4_device:
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
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	4                       # 0x4
	.byte	3                       # 0x3
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
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
	.quad	mem_mapped_map_rgb_color
	.quad	mem_mapped_map_color_rgb
	.quad	mem_mapped4_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_mapped4_copy_mono
	.quad	mem_mapped4_copy_color
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
	.quad	mem_gray_strip_copy_rop
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
	.size	mem_mapped4_device, 2792

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image4w"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"DeviceRGB"
	.size	.L.str.3, 10

	.type	mem_mapped4_word_device,@object # @mem_mapped4_word_device
	.section	.rodata,"a",@progbits
	.globl	mem_mapped4_word_device
	.align	8
mem_mapped4_word_device:
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
	.short	4                       # 0x4
	.byte	255                     # 0xff
	.zero	1
	.long	15                      # 0xf
	.long	15                      # 0xf
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.3
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
	.quad	mem_mapped_map_rgb_color
	.quad	mem_mapped_map_color_rgb
	.quad	mem4_word_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem4_word_copy_mono
	.quad	mem4_word_copy_color
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
	.size	mem_mapped4_word_device, 2792

	.type	tile_patterns,@object   # @tile_patterns
	.align	16
tile_patterns:
	.long	0                       # 0x0
	.long	286331153               # 0x11111111
	.long	572662306               # 0x22222222
	.long	858993459               # 0x33333333
	.long	1145324612              # 0x44444444
	.long	1431655765              # 0x55555555
	.long	1717986918              # 0x66666666
	.long	2004318071              # 0x77777777
	.long	2290649224              # 0x88888888
	.long	2576980377              # 0x99999999
	.long	2863311530              # 0xaaaaaaaa
	.long	3149642683              # 0xbbbbbbbb
	.long	3435973836              # 0xcccccccc
	.long	3722304989              # 0xdddddddd
	.long	4008636142              # 0xeeeeeeee
	.long	4294967295              # 0xffffffff
	.size	tile_patterns, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
