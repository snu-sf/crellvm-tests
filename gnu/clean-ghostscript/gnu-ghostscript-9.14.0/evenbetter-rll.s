	.text
	.file	"evenbetter-rll.bc"
	.globl	eb_malloc_aligned
	.align	16, 0x90
	.type	eb_malloc_aligned,@function
eb_malloc_aligned:                      # @eb_malloc_aligned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	addl	%esi, %edi
	movslq	%edi, %rdi
	callq	malloc
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB0_2
# BB#1:                                 # %if.end
	leal	12(%rax), %edx
	andl	$15, %edx
	leaq	4(%rdx), %rsi
	leaq	4(%rax,%rdx), %rcx
	movl	%esi, (%rax,%rdx)
.LBB0_2:                                # %cleanup
	movq	%rcx, %rax
	popq	%rdx
	retq
.Lfunc_end0:
	.size	eb_malloc_aligned, .Lfunc_end0-eb_malloc_aligned
	.cfi_endproc

	.globl	eb_free_aligned
	.align	16, 0x90
	.type	eb_free_aligned,@function
eb_free_aligned:                        # @eb_free_aligned
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	-4(%rdi), %rax
	subq	%rax, %rdi
	jmp	free                    # TAILCALL
.Lfunc_end1:
	.size	eb_free_aligned, .Lfunc_end1-eb_free_aligned
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	even_better_line_rll
	.align	16, 0x90
	.type	even_better_line_rll,@function
even_better_line_rll:                   # @even_better_line_rll
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
	subq	$1064, %rsp             # imm = 0x428
.Ltmp7:
	.cfi_def_cfa_offset 1120
.Ltmp8:
	.cfi_offset %rbx, -56
.Ltmp9:
	.cfi_offset %r12, -48
.Ltmp10:
	.cfi_offset %r13, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	movq	%rdi, %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	72(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB2_5
# BB#1:                                 # %land.lhs.true
	cmpl	$3, 80(%rdx)
	jb	.LBB2_5
# BB#2:                                 # %for.cond.preheader
	cmpl	$0, 8(%rdx)
	jle	.LBB2_5
# BB#3:                                 # %for.body.lr.ph
	movq	(%r14), %rdi
	movq	%rdx, %rbx
	movslq	(%rbx), %rdx
	movl	$4, %esi
	callq	fwrite
	movq	%rbx, %rdx
	movl	$1, %ebx
	cmpl	$2, 8(%rdx)
	jl	.LBB2_5
	.align	16, 0x90
.LBB2_4:                                # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rdx), %rcx
	movq	(%r14,%rbx,8), %rdi
	movq	%rdx, %rbp
	movslq	(%rbp), %rdx
	movl	$4, %esi
	callq	fwrite
	movq	%rbp, %rdx
	incq	%rbx
	movslq	8(%rdx), %rax
	cmpq	%rax, %rbx
	jl	.LBB2_4
.LBB2_5:                                # %if.end
	cmpl	$0, 60(%rdx)
	jne	.LBB2_89
# BB#6:                                 # %if.else
	movq	%r14, 88(%rsp)          # 8-byte Spill
	movl	64(%rdx), %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movl	68(%rdx), %eax
	movl	%eax, 172(%rsp)         # 4-byte Spill
	movl	8(%rdx), %r12d
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movl	12(%rdx), %ecx
	decl	%ecx
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movl	$1073741824, %eax       # imm = 0x40000000
	movq	%rdx, %rsi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	24(%rsi), %r15d
	imull	%r15d, %r15d
	movq	32(%rsi), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	40(%rsi), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movl	44(%rsi), %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movq	48(%rsi), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	56(%rsi), %r8d
	leal	14(%r8), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movslq	4(%rsi), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB2_14
# BB#7:                                 # %for.body.i.preheader
	leal	-1(%r12), %edx
	leaq	1(%rdx), %rcx
	xorl	%r9d, %r9d
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	movq	%rcx, %rsi
	andq	%rax, %rsi
	je	.LBB2_11
# BB#8:                                 # %vector.ph
	movd	%r15d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	incq	%rdx
	andq	%rax, %rdx
	xorl	%edi, %edi
	movaps	.LCPI2_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	xorps	%xmm2, %xmm2
	.align	16, 0x90
.LBB2_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm1, 992(%rsp,%rdi,4)
	movaps	%xmm1, 1008(%rsp,%rdi,4)
	movdqa	%xmm0, 928(%rsp,%rdi,4)
	movdqa	%xmm0, 944(%rsp,%rdi,4)
	movaps	%xmm2, 544(%rsp,%rdi,4)
	movaps	%xmm2, 560(%rsp,%rdi,4)
	movaps	%xmm2, 800(%rsp,%rdi,4)
	movaps	%xmm2, 816(%rsp,%rdi,4)
	movaps	%xmm2, 864(%rsp,%rdi,4)
	movaps	%xmm2, 880(%rsp,%rdi,4)
	movaps	%xmm2, 736(%rsp,%rdi,4)
	movaps	%xmm2, 752(%rsp,%rdi,4)
	movaps	%xmm2, 416(%rsp,%rdi,4)
	movaps	%xmm2, 432(%rsp,%rdi,4)
	movaps	%xmm2, 352(%rsp,%rdi,4)
	movaps	%xmm2, 368(%rsp,%rdi,4)
	addq	$8, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB2_9
# BB#10:
	movq	%rsi, %r9
.LBB2_11:                               # %middle.block
	cmpq	%r9, %rcx
	je	.LBB2_14
# BB#12:                                # %for.body.i.preheader88
	movl	%r12d, %r11d
	subl	%r9d, %r11d
	leaq	352(%rsp,%r9,4), %r10
	leaq	416(%rsp,%r9,4), %r14
	leaq	736(%rsp,%r9,4), %rdi
	leaq	864(%rsp,%r9,4), %rbp
	leaq	800(%rsp,%r9,4), %rbx
	leaq	544(%rsp,%r9,4), %rax
	leaq	928(%rsp,%r9,4), %rdx
	leaq	992(%rsp,%r9,4), %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB2_13:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, (%rcx,%rsi,4)
	movl	%r15d, (%rdx,%rsi,4)
	movl	$0, (%rax,%rsi,4)
	movl	$0, (%rbx,%rsi,4)
	movl	$0, (%rbp,%rsi,4)
	movl	$0, (%rdi,%rsi,4)
	movl	$0, (%r14,%rsi,4)
	movl	$0, (%r10,%rsi,4)
	incq	%rsi
	cmpl	%esi, %r11d
	jne	.LBB2_13
.LBB2_14:                               # %for.cond.27.preheader.i
	movq	%r15, 136(%rsp)         # 8-byte Spill
	movq	16(%rsp), %rdi          # 8-byte Reload
	testl	%edi, %edi
	jle	.LBB2_15
# BB#20:                                # %for.body.29.lr.ph.i
	movl	132(%rsp), %eax         # 4-byte Reload
	shll	$8, %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	leal	-1(%rdi), %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movl	$16, %eax
	subl	%r8d, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movl	%edi, %eax
	notl	%eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%ecx, %ecx
	pxor	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movq	48(%rsp), %r14          # 8-byte Reload
	movl	176(%rsp), %r8d         # 4-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB2_21:                               # %for.body.29.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_23 Depth 2
                                        #       Child Loop BB2_36 Depth 3
                                        #       Child Loop BB2_39 Depth 3
                                        #       Child Loop BB2_32 Depth 3
                                        #     Child Loop BB2_48 Depth 2
                                        #       Child Loop BB2_50 Depth 3
                                        #       Child Loop BB2_59 Depth 3
	movl	%edi, %r11d
	subl	%ecx, %r11d
	cmpl	$16, %r11d
	movl	$16, %eax
	cmovgl	%eax, %r11d
	testl	%r12d, %r12d
	movq	%rcx, %rdi
	jle	.LBB2_95
# BB#22:                                # %for.body.35.lr.ph.i
                                        #   in Loop: Header=BB2_21 Depth=1
	movl	%edi, %eax
	sarl	$4, %eax
	movslq	%eax, %r13
	movl	%edi, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	leal	2(%rax), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	leal	3(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movslq	%edi, %r10
	movslq	%r11d, %r9
	movq	%r14, %rsi
	movq	8(%rsp), %rcx           # 8-byte Reload
	leal	(%rdi,%rcx), %edx
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	cmpl	$-18, %edx
	movl	$-17, %eax
	cmovgl	%edx, %eax
	movl	%eax, 160(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	notl	%ecx
	movslq	%ecx, %rdi
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	movl	%eax, %ecx
	xorl	$-32, %ecx
	movslq	%ecx, %r15
	leaq	-32(%r15), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	shrl	$5, %eax
	incl	%eax
	andq	$-32, %rdi
	movq	%rdi, 176(%rsp)         # 8-byte Spill
	andl	$3, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	addl	$-32, %r15d
	shrl	$5, %r15d
	incl	%r15d
	andl	$3, %r15d
	negq	%r15
	cmpl	$-18, %edx
	movl	$-17, %ecx
	cmovlel	%ecx, %edx
	notl	%edx
	movslq	%edx, %rax
	andq	$-32, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	.LBB2_23
.LBB2_27:                               # %if.end.i
                                        #   in Loop: Header=BB2_23 Depth=2
	movq	%rbx, %rax
	movq	%r14, %rbp
	movl	%edx, %r14d
	movl	(%rcx,%r13,4), %edx
	leal	1(%rdx), %ebx
	movl	%ebx, (%rcx,%r13,4)
	cmpl	$15, %edx
	movl	%r14d, %edx
	movq	%rbp, %r14
	jl	.LBB2_26
# BB#28:                                # %if.then.54.i
                                        #   in Loop: Header=BB2_23 Depth=2
	cmpl	$16, %r11d
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rsi,8), %rbx
	jne	.LBB2_29
# BB#42:                                # %if.then.58.i
                                        #   in Loop: Header=BB2_23 Depth=2
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	$0, (%rbx,%rcx,4)
	movq	200(%rsp), %rcx         # 8-byte Reload
	movl	$0, (%rbx,%rcx,4)
	movq	192(%rsp), %rcx         # 8-byte Reload
	movl	$0, (%rbx,%rcx,4)
	movq	184(%rsp), %rcx         # 8-byte Reload
	movl	$0, (%rbx,%rcx,4)
	jmp	.LBB2_43
.LBB2_29:                               # %for.cond.76.preheader.i
                                        #   in Loop: Header=BB2_23 Depth=2
	testl	%r11d, %r11d
	jle	.LBB2_43
# BB#30:                                # %for.body.78.i.preheader
                                        #   in Loop: Header=BB2_23 Depth=2
	cmpl	$-1, 160(%rsp)          # 4-byte Folded Reload
	movl	$0, %ebp
	je	.LBB2_31
# BB#33:                                # %overflow.checked65
                                        #   in Loop: Header=BB2_23 Depth=2
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movq	%r14, %r12
	cmpq	$0, 176(%rsp)           # 8-byte Folded Reload
	movl	$0, %ebp
	je	.LBB2_41
# BB#34:                                # %vector.body61.preheader
                                        #   in Loop: Header=BB2_23 Depth=2
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	je	.LBB2_37
# BB#35:                                # %vector.body61.prol.preheader
                                        #   in Loop: Header=BB2_23 Depth=2
	leaq	16(%rbx,%r10), %rbp
	movq	%r15, %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_36:                               # %vector.body61.prol
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	%xmm0, -16(%rbp,%rdx)
	movdqu	%xmm0, (%rbp,%rdx)
	addq	$32, %rdx
	incq	%rcx
	jne	.LBB2_36
.LBB2_37:                               # %vector.body61.preheader.split
                                        #   in Loop: Header=BB2_23 Depth=2
	cmpq	$96, 96(%rsp)           # 8-byte Folded Reload
	movq	176(%rsp), %rbp         # 8-byte Reload
	jb	.LBB2_41
# BB#38:                                # %vector.body61.preheader.split.split
                                        #   in Loop: Header=BB2_23 Depth=2
	movq	24(%rsp), %rbp          # 8-byte Reload
	subq	%rdx, %rbp
	leaq	(%rbx,%r10), %rcx
	leaq	112(%rdx,%rcx), %rdx
	.align	16, 0x90
.LBB2_39:                               # %vector.body61
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	%xmm0, -112(%rdx)
	movdqu	%xmm0, -96(%rdx)
	movdqu	%xmm0, -80(%rdx)
	movdqu	%xmm0, -64(%rdx)
	movdqu	%xmm0, -48(%rdx)
	movdqu	%xmm0, -32(%rdx)
	movdqu	%xmm0, -16(%rdx)
	movdqu	%xmm0, (%rdx)
	subq	$-128, %rdx
	addq	$-128, %rbp
	jne	.LBB2_39
# BB#40:                                #   in Loop: Header=BB2_23 Depth=2
	movq	176(%rsp), %rbp         # 8-byte Reload
.LBB2_41:                               # %middle.block62
                                        #   in Loop: Header=BB2_23 Depth=2
	cmpq	%rbp, 152(%rsp)         # 8-byte Folded Reload
	movq	%r12, %r14
	movq	56(%rsp), %r12          # 8-byte Reload
	movl	76(%rsp), %edx          # 4-byte Reload
	je	.LBB2_43
.LBB2_31:                               # %for.body.78.i.preheader87
                                        #   in Loop: Header=BB2_23 Depth=2
	addq	%r10, %rbx
	.align	16, 0x90
.LBB2_32:                               # %for.body.78.i
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$0, (%rbx,%rbp)
	incq	%rbp
	cmpq	%r9, %rbp
	jl	.LBB2_32
.LBB2_43:                               # %if.end.85.i
                                        #   in Loop: Header=BB2_23 Depth=2
	subl	%r11d, %edi
	movl	%edi, 416(%rsp,%rsi,4)
	jmp	.LBB2_44
	.align	16, 0x90
.LBB2_23:                               # %for.body.35.i
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_36 Depth 3
                                        #       Child Loop BB2_39 Depth 3
                                        #       Child Loop BB2_32 Depth 3
	movq	16(%r14), %rcx
	movq	(%rcx,%rsi,8), %rcx
	movq	96(%rcx), %rcx
	movl	416(%rsp,%rsi,4), %edi
	cmpl	$16, %edi
	jl	.LBB2_25
# BB#24:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_23 Depth=2
	cmpl	$0, 672(%rsp,%rsi,4)
	je	.LBB2_27
.LBB2_25:                               # %if.end.thread.i
                                        #   in Loop: Header=BB2_23 Depth=2
	movq	%rbx, %rax
	movl	$0, (%rcx,%r13,4)
.LBB2_26:                               # %if.else.89.i
                                        #   in Loop: Header=BB2_23 Depth=2
	movslq	%edx, %rcx
	incl	%edx
	movl	%esi, 224(%rsp,%rcx,4)
.LBB2_44:                               # %if.end.93.i
                                        #   in Loop: Header=BB2_23 Depth=2
	movq	%rax, %rbx
	incq	%rsi
	cmpl	%r12d, %esi
	jne	.LBB2_23
# BB#45:                                # %for.end.96.i
                                        #   in Loop: Header=BB2_21 Depth=1
	testl	%edx, %edx
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	je	.LBB2_95
# BB#46:                                # %for.cond.101.preheader.i
                                        #   in Loop: Header=BB2_21 Depth=1
	testl	%r11d, %r11d
	movl	%r11d, 36(%rsp)         # 4-byte Spill
	jle	.LBB2_76
# BB#47:                                # %for.body.103.lr.ph.i
                                        #   in Loop: Header=BB2_21 Depth=1
	movl	%edx, %edi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	.align	16, 0x90
.LBB2_48:                               # %for.body.103.i
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_50 Depth 3
                                        #       Child Loop BB2_59 Depth 3
	movq	%r10, 208(%rsp)         # 8-byte Spill
	addl	(%rbp,%r10,4), %ebx
	testl	%edx, %edx
	jle	.LBB2_74
# BB#49:                                # %for.body.109.lr.ph.i
                                        #   in Loop: Header=BB2_48 Depth=2
	movl	%esi, 64(%rsp)          # 4-byte Spill
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movq	%rbx, 200(%rsp)         # 8-byte Spill
	movl	%r8d, 176(%rsp)         # 4-byte Spill
	movq	16(%r14), %r13
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_50:                               # %for.body.109.i
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	224(%rsp,%rax,4), %rsi
	movq	(%r13,%rsi,8), %rdx
	movq	24(%rdx), %rbx
	movq	32(%rdx), %r11
	movq	40(%rdx), %r9
	movl	416(%rsp,%rsi,4), %ebp
	testl	%ebp, %ebp
	jne	.LBB2_52
# BB#51:                                # %if.then.120.i
                                        #   in Loop: Header=BB2_50 Depth=3
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rsi,8), %rcx
	movq	%rdi, %r12
	movslq	352(%rsp,%rsi,4), %rdi
	leal	1(%rdi), %ebp
	movl	%ebp, 352(%rsp,%rsi,4)
	movq	72(%rdx), %r14
	movq	80(%rdx), %r15
	movq	88(%rdx), %rdx
	movzwl	(%rcx,%rdi,4), %ebp
	movl	%ebp, 416(%rsp,%rsi,4)
	movzbl	2(%rcx,%rdi,4), %ecx
	movl	(%r14,%rcx,4), %edi
	movl	%edi, 672(%rsp,%rsi,4)
	movl	(%r15,%rcx,4), %edi
	movl	%edi, 608(%rsp,%rsi,4)
	movq	%r12, %rdi
	movsbl	(%rdx,%rcx), %ecx
	movl	%ecx, 288(%rsp,%rsi,4)
.LBB2_52:                               # %if.end.142.i
                                        #   in Loop: Header=BB2_50 Depth=3
	decl	%ebp
	movl	%ebp, 416(%rsp,%rsi,4)
	movl	992(%rsp,%rsi,4), %edx
	movl	544(%rsp,%rsi,4), %ebp
	addl	%edx, %ebp
	movl	(%rbx,%r10,4), %ebx
	cmpl	%ebx, %ebp
	jge	.LBB2_54
# BB#53:                                # %if.then.154.i
                                        #   in Loop: Header=BB2_50 Depth=3
	movl	%ebp, 544(%rsp,%rsi,4)
	addl	$2, %edx
	movl	%edx, 992(%rsp,%rsi,4)
	jmp	.LBB2_55
	.align	16, 0x90
.LBB2_54:                               # %if.else.163.i
                                        #   in Loop: Header=BB2_50 Depth=3
	movl	(%r11,%r10,4), %ecx
	movl	%ecx, 992(%rsp,%rsi,4)
	movl	(%r9,%r10,4), %ecx
	movl	%ecx, 928(%rsp,%rsi,4)
	movl	%ebx, 544(%rsp,%rsi,4)
	movl	%ebx, %ebp
.LBB2_55:                               # %if.end.176.i
                                        #   in Loop: Header=BB2_50 Depth=3
	xorl	%ecx, %ecx
	cmpl	$0, 672(%rsp,%rsi,4)
	je	.LBB2_57
# BB#56:                                # %if.else.184.i
                                        #   in Loop: Header=BB2_50 Depth=3
	movl	144(%rsp), %ecx         # 4-byte Reload
	cmpl	%ecx, %ebp
	cmovgl	%ecx, %ebp
	movl	104(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %ebp
	movl	608(%rsp,%rsi,4), %ecx
	movl	%ebp, %edx
	subl	%ecx, %edx
	sarl	$3, %edx
	subl	%ecx, %ebp
	cmovgl	%edx, %ebp
	movl	%ebp, %ecx
.LBB2_57:                               # %if.end.203.i
                                        #   in Loop: Header=BB2_50 Depth=3
	movl	%ecx, 480(%rsp,%rsi,4)
	incq	%rax
	cmpl	%eax, %edi
	jne	.LBB2_50
# BB#58:                                # %for.body.210.lr.ph.i
                                        #   in Loop: Header=BB2_48 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	cltq
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	224(%rsp), %r15
	movq	%r15, %rax
	movl	76(%rsp), %r11d         # 4-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movl	176(%rsp), %r15d        # 4-byte Reload
	jmp	.LBB2_59
	.align	16, 0x90
.LBB2_73:                               # %if.end.335.i.for.body.210.i_crit_edge
                                        #   in Loop: Header=BB2_59 Depth=3
	movq	%r13, 216(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rax         # 8-byte Reload
	addq	$4, %rax
	movq	16(%r8), %r13
	movq	%r9, 200(%rsp)          # 8-byte Spill
.LBB2_59:                               # %for.body.210.i
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, 184(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	cmpl	148(%rsp), %r10d        # 4-byte Folded Reload
	movslq	(%rax), %r12
	movq	(%r13,%r12,8), %rsi
	movq	216(%rsp), %r13         # 8-byte Reload
	movq	(%r13,%r12,8), %rax
	movq	16(%rsi), %rbx
	movq	24(%rsi), %rdx
	movq	32(%rsi), %rdi
	movq	%rdi, 192(%rsp)         # 8-byte Spill
	movq	40(%rsi), %r10
	movl	672(%rsp,%r12,4), %r9d
	movl	800(%rsp,%r12,4), %ebp
	movl	736(%rsp,%r12,4), %edi
	movl	%edi, 800(%rsp,%r12,4)
	je	.LBB2_61
# BB#60:                                # %cond.false.238.i
                                        #   in Loop: Header=BB2_59 Depth=3
	movq	96(%rsp), %rcx          # 8-byte Reload
	movl	(%rbx,%rcx,4), %ecx
.LBB2_61:                               # %cond.end.242.i
                                        #   in Loop: Header=BB2_59 Depth=3
	movl	%ecx, 736(%rsp,%r12,4)
	imull	$7, 864(%rsp,%r12,4), %esi
	leal	(%rbp,%rbp,2), %ebp
	leal	(%rdi,%rdi,4), %r14d
	addl	%ebp, %r14d
	addl	%ecx, %r14d
	addl	%esi, %r14d
	sarl	$4, %r14d
	testl	%r9d, %r9d
	je	.LBB2_62
# BB#63:                                # %if.end.322.i
                                        #   in Loop: Header=BB2_59 Depth=3
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movl	480(%rsp,%r12,4), %esi
	addl	%r14d, %esi
	movl	172(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	addl	%r15d, %ecx
	movl	%r15d, 176(%rsp)        # 4-byte Spill
	sbbb	%bl, %bl
	cmpl	%edx, %ecx
	sbbb	%dl, %dl
	orb	%bl, %dl
	andb	$1, %dl
	movzbl	%dl, %r15d
	addl	%ecx, %r15d
	movb	288(%rsp,%r12,4), %cl
	movl	%r15d, %edx
	shrl	%cl, %edx
	movl	$-2147483648, %ebx      # imm = 0xFFFFFFFF80000000
	shrl	%cl, %ebx
	subl	%edx, %ebx
	addl	%esi, %ebx
	movl	112(%rsp), %ecx         # 4-byte Reload
	cmpl	%ecx, %ebx
	movl	%ebx, %edx
	cmovgl	%ecx, %edx
	movl	116(%rsp), %ecx         # 4-byte Reload
	cmpl	%ecx, %ebx
	cmovll	%ecx, %edx
	movq	200(%rsp), %rbx         # 8-byte Reload
	leal	(%r9,%rbx), %ecx
	addl	%edx, %ecx
	imull	108(%rsp), %ecx         # 4-byte Folded Reload
	addl	$8388608, %ecx          # imm = 0x800000
	sarl	$24, %ecx
	movl	132(%rsp), %edx         # 4-byte Reload
	cmpl	%edx, %ecx
	movl	%ecx, %r13d
	cmovgl	%edx, %r13d
	movb	%dl, %sil
	jg	.LBB2_65
# BB#64:                                # %if.end.322.i
                                        #   in Loop: Header=BB2_59 Depth=3
	movb	%cl, %sil
.LBB2_65:                               # %if.end.322.i
                                        #   in Loop: Header=BB2_59 Depth=3
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	cmovsl	%ebp, %r13d
	js	.LBB2_67
# BB#66:                                # %if.end.322.i
                                        #   in Loop: Header=BB2_59 Depth=3
	movb	%sil, %bpl
.LBB2_67:                               # %if.end.322.i
                                        #   in Loop: Header=BB2_59 Depth=3
	movq	208(%rsp), %rcx         # 8-byte Reload
	movb	%bpl, (%rax,%rcx)
	imull	128(%rsp), %r13d        # 4-byte Folded Reload
	sarl	$14, %r13d
	subl	%r13d, %r9d
	leal	(%r14,%r9), %r14d
	movq	120(%rsp), %rax         # 8-byte Reload
	imull	(%rax,%r12,4), %r9d
	sarl	$8, %r9d
	addl	%ebx, %r9d
	testb	%bpl, %bpl
	movl	176(%rsp), %ebp         # 4-byte Reload
	je	.LBB2_68
# BB#70:                                # %if.then.328.i
                                        #   in Loop: Header=BB2_59 Depth=3
	movl	$1, 992(%rsp,%r12,4)
	movq	136(%rsp), %rsi         # 8-byte Reload
	movl	%esi, 928(%rsp,%r12,4)
	movl	$0, 544(%rsp,%r12,4)
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	%ebp, 172(%rsp)         # 4-byte Spill
	movl	%esi, %ebp
	movq	216(%rsp), %r13         # 8-byte Reload
	movq	160(%rsp), %rbx         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	192(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB2_71
	.align	16, 0x90
.LBB2_62:                               # %if.end.322.thread.i
                                        #   in Loop: Header=BB2_59 Depth=3
	movq	208(%rsp), %rcx         # 8-byte Reload
	movb	$0, (%rax,%rcx)
	movq	200(%rsp), %r9          # 8-byte Reload
	jmp	.LBB2_69
	.align	16, 0x90
.LBB2_68:                               #   in Loop: Header=BB2_59 Depth=3
	movl	%ebp, 172(%rsp)         # 4-byte Spill
	movq	216(%rsp), %r13         # 8-byte Reload
	movq	160(%rsp), %rbx         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
.LBB2_69:                               # %if.end.322.if.end.335_crit_edge.i
                                        #   in Loop: Header=BB2_59 Depth=3
	movq	192(%rsp), %rsi         # 8-byte Reload
	movl	992(%rsp,%r12,4), %eax
	movl	928(%rsp,%r12,4), %ebp
	movl	544(%rsp,%r12,4), %ecx
.LBB2_71:                               # %if.end.335.i
                                        #   in Loop: Header=BB2_59 Depth=3
	movq	208(%rsp), %rdi         # 8-byte Reload
	movl	%eax, (%rsi,%rdi,4)
	movl	%ebp, (%r10,%rdi,4)
	movq	%rdi, %r10
	movl	%ecx, (%rdx,%r10,4)
	movl	%r14d, (%rbx,%r10,4)
	movl	%r14d, 864(%rsp,%r12,4)
	decl	%r11d
	jne	.LBB2_73
# BB#72:                                #   in Loop: Header=BB2_48 Depth=2
	movq	%r8, %r14
	movq	%r13, 216(%rsp)         # 8-byte Spill
	movl	%r15d, %r8d
	movl	%r9d, %ebx
	movq	56(%rsp), %r12          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	movl	36(%rsp), %r11d         # 4-byte Reload
	movl	76(%rsp), %edx          # 4-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	64(%rsp), %esi          # 4-byte Reload
	jmp	.LBB2_75
	.align	16, 0x90
.LBB2_74:                               # %for.cond.207.preheader.for.end.354_crit_edge.i
                                        #   in Loop: Header=BB2_48 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
.LBB2_75:                               # %for.end.354.i
                                        #   in Loop: Header=BB2_48 Depth=2
	sarl	%ebx
	movl	%ebx, (%rbp,%r10,4)
	incl	%esi
	incq	%r10
	cmpl	%r11d, %esi
	jl	.LBB2_48
	jmp	.LBB2_76
	.align	16, 0x90
.LBB2_95:                               # %if.then.98.i
                                        #   in Loop: Header=BB2_21 Depth=1
	addl	%r11d, %edi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
.LBB2_76:                               # %cleanup.i
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %edi
	jg	.LBB2_21
# BB#77:                                # %for.body.370.lr.ph.i
	movq	%r14, 48(%rsp)          # 8-byte Spill
	leaq	1(%rdi), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_78:                               # %for.body.370.i
                                        # =>This Inner Loop Header: Depth=1
	addl	-8(%rbp,%rax,4), %ecx
	movl	%ecx, %edx
	sarl	%edx
	sarl	$5, %ecx
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, -8(%rbp,%rax,4)
	decq	%rax
	cmpq	$1, %rax
	movl	%edx, %ecx
	jg	.LBB2_78
	jmp	.LBB2_16
.LBB2_15:                               # %for.end.365.thread.i
	leal	-1(%rdi), %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movl	176(%rsp), %r8d         # 4-byte Reload
.LBB2_16:                               # %for.cond.382.preheader.i
	movl	%r8d, 176(%rsp)         # 4-byte Spill
	testl	%r12d, %r12d
	movq	48(%rsp), %rdx          # 8-byte Reload
	jle	.LBB2_88
# BB#17:                                # %for.body.385.lr.ph.i
	movq	16(%rdx), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movl	148(%rsp), %eax         # 4-byte Reload
	andl	$15, %eax
	incl	%eax
	movl	%eax, 184(%rsp)         # 4-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	addl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_18:                               # %for.body.385.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_80 Depth 2
                                        #       Child Loop BB2_82 Depth 3
	testl	%edi, %edi
	jle	.LBB2_87
# BB#19:                                #   in Loop: Header=BB2_18 Depth=1
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	96(%rax), %r14
	movq	24(%rax), %r15
	movq	32(%rax), %rsi
	movq	%rsi, 208(%rsp)         # 8-byte Spill
	movq	40(%rax), %r12
	movl	$1, %r9d
	movl	184(%rsp), %r11d        # 4-byte Reload
	xorl	%esi, %esi
	movl	$1, %r10d
	movl	148(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	.align	16, 0x90
.LBB2_80:                               # %for.body.402.i
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_82 Depth 3
	movl	%ebp, %eax
	sarl	$4, %eax
	cltq
	cmpl	$15, (%r14,%rax,4)
	jle	.LBB2_81
# BB#86:                                # %if.else.450.i
                                        #   in Loop: Header=BB2_80 Depth=2
	subl	%r11d, %ebp
	movl	$16, %r11d
	jns	.LBB2_80
	jmp	.LBB2_87
.LBB2_81:                               # %for.cond.409.preheader.i
                                        #   in Loop: Header=BB2_80 Depth=2
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movslq	%ebp, %rbp
	movq	208(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbp,4), %rdi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_82:                               # %for.body.412.i
                                        #   Parent Loop BB2_18 Depth=1
                                        #     Parent Loop BB2_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rcx
	leal	(%r9,%rsi), %ebx
	addl	%r10d, %ebx
	movl	(%r15,%rcx,4), %ebp
	movl	(%r12,%rcx,4), %r13d
	leal	(%r13,%rbp), %edx
	cmpl	%edx, %ebx
	jge	.LBB2_84
# BB#83:                                # %if.then.422.i
                                        #   in Loop: Header=BB2_82 Depth=3
	leal	(%rsi,%r10), %ebp
	addl	$2, %r10d
	movq	%rdi, %r8
	jmp	.LBB2_85
	.align	16, 0x90
.LBB2_84:                               # %if.else.425.i
                                        #   in Loop: Header=BB2_82 Depth=3
	movq	208(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,4), %r8
	movl	(%rdi), %r10d
	movl	%r13d, %r9d
.LBB2_85:                               # %if.end.432.i
                                        #   in Loop: Header=BB2_82 Depth=3
	movq	136(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movl	144(%rsp), %ebx         # 4-byte Reload
	cmpl	%ebx, %ebp
	movl	%ebp, %esi
	cmovgl	%ebx, %esi
	movl	%r10d, (%r8)
	leal	(%r9,%rdx), %edx
	movl	%edx, (%r12,%rcx,4)
	leal	(%rsi,%r9), %edx
	movl	%edx, (%r15,%rcx,4)
	incl	%eax
	leaq	-1(%rcx), %rbp
	addq	$-4, %rdi
	cmpl	%r11d, %eax
	jl	.LBB2_82
# BB#79:                                # %for.cond.399.loopexit.i
                                        #   in Loop: Header=BB2_80 Depth=2
	movl	$16, %r11d
	testl	%ecx, %ecx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	176(%rsp), %r8d         # 4-byte Reload
	movq	200(%rsp), %rcx         # 8-byte Reload
	jg	.LBB2_80
	.align	16, 0x90
.LBB2_87:                               # %for.end.453.i
                                        #   in Loop: Header=BB2_18 Depth=1
	incq	%rcx
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ecx
	movq	16(%rsp), %rdi          # 8-byte Reload
	jne	.LBB2_18
.LBB2_88:                               # %even_better_line_hi.exit
	movl	%r8d, 64(%rdx)
	movl	172(%rsp), %eax         # 4-byte Reload
	movl	%eax, 68(%rdx)
.LBB2_89:                               # %if.end.5
	movq	72(%rdx), %rcx
	testq	%rcx, %rcx
	movq	216(%rsp), %r14         # 8-byte Reload
	je	.LBB2_94
# BB#90:                                # %land.lhs.true.8
	cmpl	$3, 80(%rdx)
	jb	.LBB2_94
# BB#91:                                # %for.cond.14.preheader
	cmpl	$0, 8(%rdx)
	jle	.LBB2_94
# BB#92:                                # %for.body.18.lr.ph
	movq	(%r14), %rdi
	movq	%rdx, %rbp
	movslq	4(%rbp), %rdx
	movl	$1, %ebx
	movl	$1, %esi
	callq	fwrite
	movq	%rbp, %rdx
	cmpl	$2, 8(%rdx)
	jl	.LBB2_94
	.align	16, 0x90
.LBB2_93:                               # %for.body.18.for.body.18_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rdx), %rcx
	movq	(%r14,%rbx,8), %rdi
	movq	%rdx, %rbp
	movslq	4(%rbp), %rdx
	movl	$1, %esi
	callq	fwrite
	movq	%rbp, %rdx
	incq	%rbx
	movslq	8(%rdx), %rax
	cmpq	%rax, %rbx
	jl	.LBB2_93
.LBB2_94:                               # %if.end.27
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	even_better_line_rll, .Lfunc_end2-even_better_line_rll
	.cfi_endproc

	.globl	even_better_line
	.align	16, 0x90
	.type	even_better_line,@function
even_better_line:                       # @even_better_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 256
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movl	(%rbp), %r14d
	cmpl	$0, 8(%rbp)
	jle	.LBB3_18
# BB#1:                                 # %for.body.lr.ph
	movl	4(%rbp), %ecx
	movslq	%r14d, %rsi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, %r13d
	movl	%ecx, %eax
	cltd
	idivl	%r14d
	movl	%edx, %r12d
	movl	$65535, %r15d           # imm = 0xFFFF
	subl	%r13d, %r15d
	leaq	(,%rsi,4), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	%esi, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	-1(%r14), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #     Child Loop BB3_10 Depth 2
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	malloc
	testl	%r12d, %r12d
	movq	%rax, 64(%rsp,%rbx,8)
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rbx,8), %r9
	movb	(%r9), %bl
	je	.LBB3_7
# BB#3:                                 # %for.cond.15.preheader.i
                                        #   in Loop: Header=BB3_2 Depth=1
	xorl	%r8d, %r8d
	cmpl	$1, %r14d
	movl	$1, %ebp
	movl	%r12d, %edi
	movl	%r13d, %esi
	movb	%bl, %r10b
	movq	24(%rsp), %r11          # 8-byte Reload
	jle	.LBB3_17
	.align	16, 0x90
.LBB3_4:                                # %for.body.18.i
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r9,%rbp), %r10b
	cmpl	%r15d, %esi
	jge	.LBB3_15
# BB#5:                                 # %for.body.18.i
                                        #   in Loop: Header=BB3_4 Depth=2
	movzbl	%bl, %ecx
	movzbl	%r10b, %edx
	cmpl	%ecx, %edx
	jne	.LBB3_15
# BB#6:                                 #   in Loop: Header=BB3_4 Depth=2
	movb	%bl, %r10b
	jmp	.LBB3_16
	.align	16, 0x90
.LBB3_15:                               # %if.then.30.i
                                        #   in Loop: Header=BB3_4 Depth=2
	movslq	%r8d, %r8
	movw	%si, (%rax,%r8,4)
	movb	%bl, 2(%rax,%r8,4)
	incl	%r8d
	xorl	%esi, %esi
.LBB3_16:                               # %if.end.39.i
                                        #   in Loop: Header=BB3_4 Depth=2
	addl	%r12d, %edi
	cmpl	%r14d, %edi
	setge	%cl
	movzbl	%cl, %ecx
	movl	%r14d, %edx
	movl	$0, %ebx
	cmovll	%ebx, %edx
	addl	%r13d, %ecx
	addl	%ecx, %esi
	subl	%edx, %edi
	incq	%rbp
	cmpl	%ebp, %r11d
	movb	%r10b, %bl
	jne	.LBB3_4
	jmp	.LBB3_17
	.align	16, 0x90
.LBB3_7:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB3_2 Depth=1
	xorl	%r8d, %r8d
	cmpl	$2, %r14d
	jl	.LBB3_8
# BB#9:                                 # %for.body.i.preheader
                                        #   in Loop: Header=BB3_2 Depth=1
	incq	%r9
	xorl	%r8d, %r8d
	movl	20(%rsp), %edi          # 4-byte Reload
	movl	%r13d, %esi
	.align	16, 0x90
.LBB3_10:                               # %for.body.i
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r9), %r10b
	cmpl	%r15d, %esi
	jg	.LBB3_13
# BB#11:                                # %for.body.i
                                        #   in Loop: Header=BB3_10 Depth=2
	movzbl	%bl, %ebp
	movzbl	%r10b, %ecx
	cmpl	%ebp, %ecx
	jne	.LBB3_13
# BB#12:                                #   in Loop: Header=BB3_10 Depth=2
	movb	%bl, %r10b
	jmp	.LBB3_14
	.align	16, 0x90
.LBB3_13:                               # %if.then.8.i
                                        #   in Loop: Header=BB3_10 Depth=2
	movslq	%r8d, %r8
	movw	%si, (%rax,%r8,4)
	movb	%bl, 2(%rax,%r8,4)
	incl	%r8d
	xorl	%esi, %esi
.LBB3_14:                               # %if.end.i
                                        #   in Loop: Header=BB3_10 Depth=2
	addl	%r13d, %esi
	incq	%r9
	decl	%edi
	movb	%r10b, %bl
	jne	.LBB3_10
	jmp	.LBB3_17
.LBB3_8:                                #   in Loop: Header=BB3_2 Depth=1
	movb	%bl, %r10b
	movl	%r13d, %esi
	.align	16, 0x90
.LBB3_17:                               # %even_better_compress_rll.exit
                                        #   in Loop: Header=BB3_2 Depth=1
	movslq	%r8d, %rcx
	movw	%si, (%rax,%rcx,4)
	movb	%r10b, 2(%rax,%rcx,4)
	movq	56(%rsp), %rbx          # 8-byte Reload
	incq	%rbx
	movq	48(%rsp), %rbp          # 8-byte Reload
	movslq	8(%rbp), %rax
	cmpq	%rax, %rbx
	jl	.LBB3_2
.LBB3_18:                               # %for.end
	leaq	64(%rsp), %rdx
	movq	%rbp, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	even_better_line_rll
	xorl	%ebx, %ebx
	cmpl	$0, 8(%rbp)
	jle	.LBB3_20
	.align	16, 0x90
.LBB3_19:                               # %for.body.12
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp,%rbx,8), %rdi
	callq	free
	incq	%rbx
	movslq	8(%rbp), %rax
	cmpq	%rax, %rbx
	jl	.LBB3_19
.LBB3_20:                               # %for.end.17
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	even_better_line, .Lfunc_end3-even_better_line
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.long	1885618757              # 0x70644245
	.long	1296910665              # 0x4d4d4949
	.long	133                     # 0x85
	.long	255                     # 0xff
.LCPI4_4:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4615288898129284301     # double 3.600000e+00
.LCPI4_6:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	4675637133136048947     # double 39321.599999999999
.LCPI4_2:
	.quad	4606732058837280358     # double 0.94999999999999996
.LCPI4_3:
	.quad	4610785298501913805     # double 1.8
.LCPI4_5:
	.quad	0                       # double 0
	.text
	.globl	even_better_new
	.align	16, 0x90
	.type	even_better_new,@function
even_better_new:                        # @even_better_new
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
	subq	$136, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 192
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
	movq	%rdi, %r12
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movl	$88, %edi
	callq	malloc
	movq	%rax, %rbp
	movl	8(%r12), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movslq	%eax, %r14
	movq	64(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB4_6
# BB#1:                                 # %if.then
	movaps	.LCPI4_0(%rip), %xmm0   # xmm0 = [1885618757,1296910665,133,255]
	movaps	%xmm0, 112(%rsp)
	movl	$1, 128(%rsp)
	leaq	112(%rsp), %rdi
	movl	$4, %esi
	movl	$5, %edx
	callq	fwrite
	cmpl	$0, 72(%r12)
	je	.LBB4_6
# BB#2:                                 # %if.end
	movq	64(%r12), %rcx
	movl	$1, %esi
	movl	$88, %edx
	movq	%r12, %rdi
	callq	fwrite
	cmpl	$2, 72(%r12)
	jb	.LBB4_6
# BB#3:                                 # %for.cond.preheader
	cmpl	$0, 8(%r12)
	jle	.LBB4_6
# BB#4:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB4_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r12), %rax
	movq	64(%r12), %rcx
	movq	(%rax,%rbx,8), %rdi
	movl	$4, %esi
	movl	$256, %edx              # imm = 0x100
	callq	fwrite
	incq	%rbx
	movslq	8(%r12), %rax
	cmpq	%rax, %rbx
	jl	.LBB4_5
.LBB4_6:                                # %if.end.21
	movl	(%r12), %eax
	movl	%eax, (%rbp)
	movl	4(%r12), %eax
	movl	%eax, 4(%rbp)
	movl	%r14d, 8(%rbp)
	movl	12(%r12), %eax
	movl	%eax, 12(%rbp)
	movl	32(%r12), %ecx
	movl	%ecx, 24(%rbp)
	decl	%eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 44(%rbp)
	negl	%eax
	movl	%eax, 40(%rbp)
	leaq	(,%r14,4), %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, 32(%rbp)
	movq	40(%r12), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movl	12(%r12), %eax
	movl	$6, %ebx
	cmpl	$2, %eax
	jl	.LBB4_10
# BB#7:
	movl	$-1, %ebx
	.align	16, 0x90
.LBB4_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	sarl	%eax
	incl	%ebx
	cmpl	$1, %eax
	jg	.LBB4_8
# BB#9:                                 # %even_log2.exit.loopexit
	addl	$7, %ebx
.LBB4_10:                               # %even_log2.exit
	movl	32(%r12), %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	jl	.LBB4_12
	.align	16, 0x90
.LBB4_11:                               # %for.body.i.69
                                        # =>This Inner Loop Header: Depth=1
	incl	%eax
	sarl	%ecx
	cmpl	$1, %ecx
	jg	.LBB4_11
.LBB4_12:                               # %even_log2.exit72
	addl	%eax, %ebx
	subl	52(%r12), %ebx
	movl	%ebx, 56(%rbp)
	movl	56(%r12), %eax
	movl	%eax, 60(%rbp)
	movslq	4(%r12), %rdi
	movl	$4, %esi
	callq	calloc
	movq	%rax, 48(%rbp)
	movabsq	$-5220506199700240481, %rax # imm = 0xB78D09455324879F
	movq	%rax, 64(%rbp)
	movq	64(%r12), %rax
	movq	%rax, 72(%rbp)
	movl	72(%r12), %eax
	movl	%eax, 80(%rbp)
	leaq	(,%r14,8), %rdi
	callq	malloc
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rax, 16(%rbp)
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB4_54
# BB#13:                                # %for.body.61.lr.ph
	leal	14(%rbx), %ecx
	movl	$1, %eax
	movl	$1, %edx
	shll	%cl, %edx
	movl	$32, %ecx
	subl	%ebx, %ecx
	shll	%cl, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movl	$16, %ecx
	subl	%ebx, %ecx
	shll	%cl, %edx
	movl	%edx, 36(%rsp)          # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB4_14:                               # %for.body.61
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_19 Depth 2
                                        #     Child Loop BB4_25 Depth 2
                                        #     Child Loop BB4_28 Depth 2
                                        #     Child Loop BB4_50 Depth 2
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	(%r12), %r14d
	movl	4(%r12), %r15d
	movq	16(%r12), %rax
	movq	(%rax,%rcx,8), %rbx
	movsd	24(%r12), %xmm0         # xmm0 = mem[0],zero
	ucomisd	.LCPI4_5, %xmm0
	jne	.LBB4_18
	jp	.LBB4_18
# BB#15:                                # %if.then.i.i
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	32(%r12), %eax
	cmpl	$1, %eax
	movsd	.LCPI4_2(%rip), %xmm0   # xmm0 = mem[0],zero
	je	.LBB4_18
# BB#16:                                # %cond.false.i.i
                                        #   in Loop: Header=BB4_14 Depth=1
	cmpl	$2, %eax
	movsd	.LCPI4_3(%rip), %xmm0   # xmm0 = mem[0],zero
	je	.LBB4_18
# BB#17:                                # %cond.false.6.i.i
                                        #   in Loop: Header=BB4_14 Depth=1
	cmpl	$4, %eax
	sete	%al
	movzbl	%al, %eax
	movsd	.LCPI4_4(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB4_18:                               # %eb_compute_rbscale.exit.i
                                        #   in Loop: Header=BB4_14 Depth=1
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movslq	%r15d, %rbp
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movl	56(%r12), %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	$104, %edi
	callq	malloc
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	%r14d, (%rax)
	movl	%ebp, 4(%rax)
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movq	%rax, %rbp
	movl	$65793, %eax            # imm = 0x10101
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB4_19:                               # %for.body.i.61
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB4_20
# BB#21:                                # %if.else.i
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	(%rbx,%rcx,4), %edx
	jmp	.LBB4_22
	.align	16, 0x90
.LBB4_20:                               # %if.then.i
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	%ecx, %edx
	sarl	$7, %edx
	leal	-65793(%rax,%rdx), %edx
.LBB4_22:                               # %if.end.i
                                        #   in Loop: Header=BB4_19 Depth=2
	sarl	$8, %edx
	movl	$65536, %esi            # imm = 0x10000
	subl	%edx, %esi
	testq	%rbx, %rbx
	movl	%esi, (%rbp,%rcx,4)
	je	.LBB4_55
# BB#23:                                # %if.else.i.1
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	4(%rbx,%rcx,4), %edx
	jmp	.LBB4_56
	.align	16, 0x90
.LBB4_55:                               # %if.then.i.1
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	%ecx, %edx
	sarl	$7, %edx
	leal	(%rdx,%rax), %edx
.LBB4_56:                               # %if.end.i.1
                                        #   in Loop: Header=BB4_19 Depth=2
	sarl	$8, %edx
	movl	$65536, %esi            # imm = 0x10000
	subl	%edx, %esi
	movl	%esi, 4(%rbp,%rcx,4)
	addq	$2, %rcx
	addl	$131586, %eax           # imm = 0x20202
	cmpq	$256, %rcx              # imm = 0x100
	jne	.LBB4_19
# BB#24:                                # %for.end.i
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movq	%rax, %r14
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movl	12(%r12), %r9d
	movl	$19, %r10d
	movl	$-1, %ecx
	cmpl	$2, %r9d
	movl	%r9d, %edx
	jl	.LBB4_27
	.align	16, 0x90
.LBB4_25:                               # %for.body.i.i
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sarl	%edx
	incl	%ecx
	cmpl	$1, %edx
	jg	.LBB4_25
# BB#26:                                # %even_log2.exit.loopexit.i
                                        #   in Loop: Header=BB4_14 Depth=1
	addl	$20, %ecx
	movl	%ecx, %r10d
.LBB4_27:                               # %even_log2.exit.i
                                        #   in Loop: Header=BB4_14 Depth=1
	subl	48(%r12), %r10d
	movq	%r12, %rcx
	leal	-1(%r9), %r12d
	leal	-1(%r10), %r13d
	movl	56(%rcx), %r11d
	movsd	96(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	24(%rsp), %xmm4         # 8-byte Folded Reload
	shll	$16, %r9d
	leal	-65536(%r9), %ecx
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	addl	$-81920, %r9d           # imm = 0xFFFFFFFFFFFEC000
	movq	%r9, 88(%rsp)           # 8-byte Spill
	xorl	%ecx, %ecx
	movl	36(%rsp), %r8d          # 4-byte Reload
	movsd	16(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	.align	16, 0x90
.LBB4_28:                               # %for.body.24.i
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp,%rcx,4), %esi
	movl	%esi, %ebx
	imull	%r12d, %ebx
	xorpd	%xmm0, %xmm0
	testl	%ebx, %ebx
	je	.LBB4_31
# BB#29:                                # %if.else.32.i
                                        #   in Loop: Header=BB4_28 Depth=2
	cvtsi2sdl	%ebx, %xmm1
	movapd	%xmm4, %xmm0
	divsd	%xmm1, %xmm0
	ucomisd	%xmm3, %xmm0
	jbe	.LBB4_31
# BB#30:                                # %if.then.42.i
                                        #   in Loop: Header=BB4_28 Depth=2
	movapd	%xmm3, %xmm0
.LBB4_31:                               # %if.end.47.i
                                        #   in Loop: Header=BB4_28 Depth=2
	leal	-5761(%rbx), %edx
	cmpl	$2495, %edx             # imm = 0x9BF
	movl	%r13d, %edi
	jb	.LBB4_41
# BB#32:                                # %if.end.47.i
                                        #   in Loop: Header=BB4_28 Depth=2
	leal	-10369(%rbx), %edx
	cmpl	$1151, %edx             # imm = 0x47F
	movl	%r13d, %edi
	jb	.LBB4_41
# BB#33:                                # %if.else.i.i
                                        #   in Loop: Header=BB4_28 Depth=2
	leal	-20545(%rbx), %edx
	cmpl	$2558, %edx             # imm = 0x9FE
	ja	.LBB4_35
# BB#34:                                # %if.then.8.i.i
                                        #   in Loop: Header=BB4_28 Depth=2
	addl	$-21185, %ebx           # imm = 0xFFFFFFFFFFFFAD3F
	cmpl	$1278, %ebx             # imm = 0x4FE
	seta	%dl
	movzbl	%dl, %edx
	leal	-2(%rdx,%r10), %edi
	jmp	.LBB4_41
	.align	16, 0x90
.LBB4_35:                               # %if.else.15.i.i
                                        #   in Loop: Header=BB4_28 Depth=2
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	setne	%dl
	cmpl	%ebx, 96(%rsp)          # 4-byte Folded Reload
	sete	%dil
	cmpl	%ebx, %r9d
	jge	.LBB4_37
# BB#36:                                # %if.else.15.i.i
                                        #   in Loop: Header=BB4_28 Depth=2
	orb	%dil, %dl
	movl	%r10d, %edi
	jne	.LBB4_41
.LBB4_37:                               # %if.else.24.i.i
                                        #   in Loop: Header=BB4_28 Depth=2
	cmpl	$49153, %ebx            # imm = 0xC001
	jl	.LBB4_39
# BB#38:                                # %if.then.26.i.i
                                        #   in Loop: Header=BB4_28 Depth=2
	leal	16384(%rbx), %edx
	andl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	subl	%edx, %ebx
	movl	%ebx, %edx
	negl	%edx
	cmovll	%ebx, %edx
	cmpl	$4096, %edx             # imm = 0x1000
	setl	%bl
	movzbl	%bl, %edi
	movl	%r10d, %ebx
	subl	%edi, %ebx
	cmpl	$2048, %edx             # imm = 0x800
	movl	%r8d, %r9d
	movl	$0, %r8d
	movl	$-1, %edi
	cmovll	%edi, %r8d
	addl	%ebx, %r8d
	cmpl	$1024, %edx             # imm = 0x400
	movl	$0, %edi
	movl	$-1, %edx
	cmovll	%edx, %edi
	addl	%r8d, %edi
	movl	%r9d, %r8d
	jmp	.LBB4_40
.LBB4_39:                               # %if.else.44.i.i
                                        #   in Loop: Header=BB4_28 Depth=2
	leal	16384(%rbx), %edx
	cmpl	$24576, %ebx            # imm = 0x6000
	cmovgel	%ebx, %edx
	leal	-32768(%rdx), %edi
	movl	$32768, %ebx            # imm = 0x8000
	subl	%edx, %ebx
	cmpl	$32768, %edx            # imm = 0x8000
	cmovgel	%edi, %ebx
	cmpl	$4096, %ebx             # imm = 0x1000
	setl	%dl
	movzbl	%dl, %edx
	movl	%r10d, %edi
	subl	%edx, %edi
	cmpl	$2048, %ebx             # imm = 0x800
	movl	$0, %edx
	movl	$-1, %r9d
	cmovll	%r9d, %edx
	addl	%edi, %edx
	cmpl	$1024, %ebx             # imm = 0x400
	movl	$0, %edi
	cmovll	%r9d, %edi
	addl	%edx, %edi
.LBB4_40:                               # %eb_compute_randshift.exit.i
                                        #   in Loop: Header=BB4_28 Depth=2
	movq	88(%rsp), %r9           # 8-byte Reload
	.align	16, 0x90
.LBB4_41:                               # %eb_compute_randshift.exit.i
                                        #   in Loop: Header=BB4_28 Depth=2
	testl	%r11d, %r11d
	movb	%dil, (%rax,%rcx)
	je	.LBB4_44
# BB#42:                                # %if.then.54.i
                                        #   in Loop: Header=BB4_28 Depth=2
	movl	$65536, %edi            # imm = 0x10000
	subl	%esi, %edi
	imull	%r12d, %edi
	xorpd	%xmm1, %xmm1
	testl	%edi, %edi
	je	.LBB4_45
# BB#43:                                # %if.else.64.i
                                        #   in Loop: Header=BB4_28 Depth=2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	movapd	%xmm4, %xmm2
	divsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	cmpl	%r8d, %edx
	cmovgl	%r8d, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	subsd	%xmm1, %xmm0
.LBB4_44:                               # %if.end.83.i
                                        #   in Loop: Header=BB4_28 Depth=2
	movapd	%xmm0, %xmm1
.LBB4_45:                               # %if.end.83.i
                                        #   in Loop: Header=BB4_28 Depth=2
	cvttsd2si	%xmm1, %edx
	movl	%edx, (%r14,%rcx,4)
	incq	%rcx
	cmpq	$256, %rcx              # imm = 0x100
	jne	.LBB4_28
# BB#46:                                # %for.end.89.i
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	80(%rsp), %rbx          # 8-byte Reload
	movq	%rbp, 72(%rbx)
	movq	%r14, 80(%rbx)
	movq	%rax, 88(%rbx)
	movl	$4, %esi
	movq	64(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	callq	calloc
	movq	%rax, 8(%rbx)
	movl	$4, %esi
	movq	%r12, %rdi
	callq	calloc
	movq	%rax, %r14
	movq	%r14, 16(%rbx)
	movl	$4, %esi
	movq	%r12, %rdi
	callq	calloc
	movq	%rax, 24(%rbx)
	movl	$4, %esi
	movq	%r12, %rdi
	callq	calloc
	movq	%rax, %r13
	movq	%r13, 32(%rbx)
	movl	$4, %esi
	movq	%r12, %rdi
	callq	calloc
	movq	%rax, %rbp
	movq	%rbp, 40(%rbx)
	leal	15(%r12), %eax
	sarl	$4, %eax
	movslq	%eax, %rdi
	movl	$4, %esi
	callq	calloc
	movq	%rax, 96(%rbx)
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	je	.LBB4_48
# BB#47:                                # %if.then.108.i
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	$4, %esi
	movq	%r12, %rdi
	callq	calloc
	movq	%rax, 48(%rbx)
	movl	$4, %esi
	movq	%r12, %rdi
	callq	calloc
	movq	%r12, %rdi
	movq	%rax, %r12
	movq	%r12, 56(%rbx)
	movl	$4, %esi
	callq	calloc
	movq	%rbx, %rcx
	movq	%rax, %rbx
	movq	%rbx, 64(%rcx)
	jmp	.LBB4_49
	.align	16, 0x90
.LBB4_48:                               # %if.else.115.i
                                        #   in Loop: Header=BB4_14 Depth=1
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 48(%rbx)
	movq	$0, 64(%rbx)
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
.LBB4_49:                               # %for.cond.120.preheader.i
                                        #   in Loop: Header=BB4_14 Depth=1
	testl	%r15d, %r15d
	jle	.LBB4_53
	.align	16, 0x90
.LBB4_50:                               # %for.body.123.i
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, (%r13)
	movl	$1, (%rbp)
	callq	rand
	shll	$6, %eax
	andl	$2097088, %eax          # imm = 0x1FFFC0
	negl	%eax
	sarl	$8, %eax
	movl	%eax, (%r14)
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	je	.LBB4_52
# BB#51:                                # %if.then.138.i
                                        #   in Loop: Header=BB4_50 Depth=2
	movl	$1, (%r12)
	movl	$1, (%rbx)
.LBB4_52:                               # %for.inc.146.i
                                        #   in Loop: Header=BB4_50 Depth=2
	addq	$4, %rbx
	addq	$4, %r12
	addq	$4, %r14
	addq	$4, %rbp
	addq	$4, %r13
	decl	%r15d
	jne	.LBB4_50
.LBB4_53:                               # %even_better_plane_new.exit
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, (%rax,%rcx,8)
	incq	%rcx
	cmpl	52(%rsp), %ecx          # 4-byte Folded Reload
	movq	56(%rsp), %r12          # 8-byte Reload
	jne	.LBB4_14
.LBB4_54:                               # %if.end.69
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	even_better_new, .Lfunc_end4-even_better_new
	.cfi_endproc

	.globl	even_better_free
	.align	16, 0x90
	.type	even_better_free,@function
even_better_free:                       # @even_better_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp44:
	.cfi_def_cfa_offset 48
.Ltmp45:
	.cfi_offset %rbx, -40
.Ltmp46:
	.cfi_offset %r12, -32
.Ltmp47:
	.cfi_offset %r14, -24
.Ltmp48:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	8(%r14), %r15d
	movq	72(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_2
# BB#1:                                 # %if.then
	callq	fclose
.LBB5_2:                                # %for.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB5_5
# BB#3:                                 # %for.body.preheader
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r14), %rax
	movq	(%rax,%r12,8), %rbx
	movq	8(%rbx), %rdi
	callq	free
	movq	16(%rbx), %rdi
	callq	free
	movq	24(%rbx), %rdi
	callq	free
	movq	32(%rbx), %rdi
	callq	free
	movq	40(%rbx), %rdi
	callq	free
	movq	72(%rbx), %rdi
	callq	free
	movq	80(%rbx), %rdi
	callq	free
	movq	88(%rbx), %rdi
	callq	free
	movq	96(%rbx), %rdi
	callq	free
	movq	%rbx, %rdi
	callq	free
	incq	%r12
	cmpl	%r12d, %r15d
	jne	.LBB5_4
.LBB5_5:                                # %for.end
	movq	16(%r14), %rdi
	callq	free
	movq	32(%r14), %rdi
	callq	free
	movq	48(%r14), %rdi
	callq	free
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	free                    # TAILCALL
.Lfunc_end5:
	.size	even_better_free, .Lfunc_end5-even_better_free
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
