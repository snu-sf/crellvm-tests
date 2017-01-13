	.text
	.file	"scroll.bc"
	.globl	scrolling_1
	.align	16, 0x90
	.type	scrolling_1,@function
scrolling_1:                            # @scrolling_1
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
	subq	$128, %rsp
	movl	32(%rbp), %eax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%r11, -48(%rbp)
	movq	%r10, -56(%rbp)
	movl	%eax, -60(%rbp)
	movq	$16384, -72(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -80(%rbp)
	movb	$0, -81(%rbp)
# BB#1:                                 # %do.body
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	shrq	$4, %rdx
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	%rdx, %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	divq	%rsi
	cmpq	%rax, %rcx
	ja	.LBB0_3
# BB#2:                                 # %if.then
	movl	-12(%rbp), %eax
	incl	%eax
	movslq	%eax, %rcx
	imulq	%rcx, %rcx
	shlq	$4, %rcx
	movq	-72(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -72(%rbp)
	movl	-12(%rbp), %eax
	incl	%eax
	movslq	%eax, %rcx
	imulq	%rcx, %rcx
	shlq	$4, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -96(%rbp)
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	movq	%rcx, %rsi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -96(%rbp)
	movb	$1, -81(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB0_7
# BB#6:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB0_8
.LBB0_7:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                # %cond.false
	callq	emacs_abort
.LBB0_9:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_11
# BB#10:                                # %if.then.35
	movq	-8(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %r10
	movl	-60(%rbp), %r11d
	subq	$32, %rsp
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	calculate_direct_scrolling
	addq	$32, %rsp
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	200(%rax), %rsi
	movq	-96(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	callq	do_direct_scrolling
	jmp	.LBB0_12
.LBB0_11:                               # %if.else.36
	movq	-8(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %r10d
	subq	$16, %rsp
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	calculate_scrolling
	addq	$16, %rsp
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	200(%rax), %rsi
	movq	-96(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	callq	do_scrolling
.LBB0_12:                               # %if.end.38
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.39
	testb	$1, -81(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.40
	xorl	%edi, %edi
	movb	$0, -81(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB0_15:                               # %if.end.43
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.44
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	scrolling_1, .Lfunc_end0-scrolling_1
	.cfi_endproc

	.align	16, 0x90
	.type	calculate_direct_scrolling,@function
calculate_direct_scrolling:             # @calculate_direct_scrolling
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
	subq	$160, %rsp
	movl	32(%rbp), %eax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%r11, -48(%rbp)
	movq	%r10, -56(%rbp)
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rsi
	movl	284(%rsi), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	shlq	$2, %rsi
	addq	240(%rdi), %rsi
	movq	%rsi, -112(%rbp)
	movl	-72(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	shlq	$2, %rsi
	addq	248(%rdi), %rsi
	movq	%rsi, -120(%rbp)
	movl	-72(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	shlq	$2, %rsi
	addq	256(%rdi), %rsi
	movq	%rsi, -128(%rbp)
	movl	-72(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	shlq	$2, %rsi
	addq	264(%rdi), %rsi
	movq	%rsi, -136(%rbp)
	movq	globals+3048, %rax
	imull	$40, -72(%rbp), %ecx
	movslq	%ecx, %rsi
	cqto
	idivq	%rsi
	movl	%eax, %ecx
	movl	%ecx, -144(%rbp)
	cmpq	$0, globals+3048
	jg	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, -144(%rbp)
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB1_4
# BB#3:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_5
.LBB1_4:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false
	callq	emacs_abort
.LBB1_6:                                # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	8792(%rax), %ecx
	addl	-144(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movq	-16(%rbp), %rdx
	movl	$0, (%rdx)
	movq	-16(%rbp), %rdx
	movl	$1000000, 4(%rdx)       # imm = 0xF4240
	movq	-16(%rbp), %rdx
	movl	$1000000, 8(%rdx)       # imm = 0xF4240
	movq	-16(%rbp), %rdx
	movb	$0, 14(%rdx)
	movq	-16(%rbp), %rdx
	movb	$0, 12(%rdx)
	movq	-16(%rbp), %rdx
	movb	$0, 13(%rdx)
	movl	$0, -92(%rbp)
	movl	$1, -64(%rbp)
.LBB1_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB1_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-16(%rbp), %rax
	movl	-64(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, -80(%rbp)
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rsi
	movl	(%rsi,%rax,4), %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-92(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-80(%rbp), %rax
	movl	$1000000, (%rax)        # imm = 0xF4240
	movq	-80(%rbp), %rax
	movl	$1000000, 8(%rax)       # imm = 0xF4240
	movl	-64(%rbp), %ecx
	movb	%cl, %dil
	movq	-80(%rbp), %rax
	movb	%dil, 12(%rax)
	movq	-80(%rbp), %rax
	movb	$0, 14(%rax)
	movq	-80(%rbp), %rax
	movb	$0, 13(%rax)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB1_7
.LBB1_10:                               # %for.end
	movl	$1, -68(%rbp)
.LBB1_11:                               # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB1_14
# BB#12:                                # %for.body.38
                                        #   in Loop: Header=BB1_11 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movl	$1000000, (%rax)        # imm = 0xF4240
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movl	$1000000, 4(%rax)       # imm = 0xF4240
	movl	-68(%rbp), %ecx
	movb	%cl, %dl
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movb	%dl, 13(%rax)
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movb	$0, 14(%rax)
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movb	$0, 12(%rax)
# BB#13:                                # %for.inc.58
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_11
.LBB1_14:                               # %for.end.60
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, -80(%rbp)
	movl	$1, -64(%rbp)
.LBB1_15:                               # %for.cond.64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB1_52
# BB#16:                                # %for.body.67
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	$1, -68(%rbp)
.LBB1_17:                               # %for.cond.68
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB1_50
# BB#18:                                # %for.body.71
                                        #   in Loop: Header=BB1_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	addq	$-32, %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB1_20
# BB#19:                                # %if.then.79
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -92(%rbp)
.LBB1_20:                               # %if.end.81
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -96(%rbp)
	movl	-64(%rbp), %ecx
	cmpl	-68(%rbp), %ecx
	jne	.LBB1_27
# BB#21:                                # %if.then.85
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	-92(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jle	.LBB1_23
# BB#22:                                # %if.then.88
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	-96(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-88(%rbp), %rcx
	movzbl	14(%rcx), %eax
	addl	$1, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rcx
	movb	%dl, 14(%rcx)
	jmp	.LBB1_24
.LBB1_23:                               # %if.else
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-80(%rbp), %rax
	movb	$1, 14(%rax)
.LBB1_24:                               # %if.end.95
                                        #   in Loop: Header=BB1_17 Depth=2
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpl	(%rcx,%rax,4), %edx
	je	.LBB1_26
# BB#25:                                # %if.then.102
                                        #   in Loop: Header=BB1_17 Depth=2
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-92(%rbp), %edx
	movl	%edx, -92(%rbp)
.LBB1_26:                               # %if.end.106
                                        #   in Loop: Header=BB1_17 Depth=2
	jmp	.LBB1_36
.LBB1_27:                               # %if.else.107
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB1_29
# BB#28:                                # %if.then.110
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	-64(%rbp), %edx
	subl	-68(%rbp), %edx
	movl	%edx, -100(%rbp)
	movl	-140(%rbp), %edx
	movl	%ecx, %esi
	subl	-100(%rbp), %esi
	movslq	%esi, %rdi
	movq	-112(%rbp), %r8
	addl	(%r8,%rdi,4), %edx
	movl	-100(%rbp), %esi
	subl	$1, %esi
	movl	%ecx, %r9d
	subl	-100(%rbp), %r9d
	movslq	%r9d, %rdi
	movq	-128(%rbp), %r8
	movl	(%r8,%rdi,4), %r9d
	addl	-144(%rbp), %r9d
	imull	%r9d, %esi
	addl	%esi, %edx
	addl	-92(%rbp), %edx
	movl	%edx, -92(%rbp)
	movl	%ecx, %edx
	subl	-68(%rbp), %edx
	movslq	%edx, %rdi
	movq	-112(%rbp), %r8
	movl	(%r8,%rdi,4), %edx
	movl	%eax, %esi
	subl	-68(%rbp), %esi
	movslq	%esi, %rdi
	movq	-112(%rbp), %r8
	subl	(%r8,%rdi,4), %edx
	movl	-100(%rbp), %esi
	subl	$1, %esi
	subl	-68(%rbp), %ecx
	movslq	%ecx, %rdi
	movq	-128(%rbp), %r8
	movl	(%r8,%rdi,4), %ecx
	subl	-68(%rbp), %eax
	movslq	%eax, %rdi
	movq	-128(%rbp), %r8
	subl	(%r8,%rdi,4), %ecx
	imull	%ecx, %esi
	addl	%esi, %edx
	addl	-96(%rbp), %edx
	movl	%edx, -96(%rbp)
	jmp	.LBB1_30
.LBB1_29:                               # %if.else.142
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	-68(%rbp), %edx
	subl	-64(%rbp), %edx
	movl	%edx, -100(%rbp)
	movl	-140(%rbp), %edx
	movl	%ecx, %esi
	subl	-100(%rbp), %esi
	movslq	%esi, %rdi
	movq	-120(%rbp), %r8
	addl	(%r8,%rdi,4), %edx
	movl	-100(%rbp), %esi
	subl	$1, %esi
	movl	%ecx, %r9d
	subl	-100(%rbp), %r9d
	movslq	%r9d, %rdi
	movq	-136(%rbp), %r8
	movl	(%r8,%rdi,4), %r9d
	addl	-144(%rbp), %r9d
	imull	%r9d, %esi
	addl	%esi, %edx
	addl	-92(%rbp), %edx
	movl	%edx, -92(%rbp)
	movl	%ecx, %edx
	subl	-64(%rbp), %edx
	movslq	%edx, %rdi
	movq	-120(%rbp), %r8
	movl	(%r8,%rdi,4), %edx
	movl	%eax, %esi
	subl	-64(%rbp), %esi
	movslq	%esi, %rdi
	movq	-120(%rbp), %r8
	subl	(%r8,%rdi,4), %edx
	movl	-100(%rbp), %esi
	subl	$1, %esi
	subl	-64(%rbp), %ecx
	movslq	%ecx, %rdi
	movq	-136(%rbp), %r8
	movl	(%r8,%rdi,4), %ecx
	subl	-64(%rbp), %eax
	movslq	%eax, %rdi
	movq	-136(%rbp), %r8
	subl	(%r8,%rdi,4), %ecx
	imull	%ecx, %esi
	addl	%esi, %edx
	addl	-96(%rbp), %edx
	movl	%edx, -96(%rbp)
.LBB1_30:                               # %if.end.174
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB1_32
# BB#31:                                # %if.then.177
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	-96(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-88(%rbp), %rcx
	movzbl	14(%rcx), %eax
	addl	$1, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rcx
	movb	%dl, 14(%rcx)
	jmp	.LBB1_33
.LBB1_32:                               # %if.else.183
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-80(%rbp), %rax
	movb	$1, 14(%rax)
.LBB1_33:                               # %if.end.185
                                        #   in Loop: Header=BB1_17 Depth=2
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpl	(%rcx,%rax,4), %edx
	je	.LBB1_35
# BB#34:                                # %if.then.192
                                        #   in Loop: Header=BB1_17 Depth=2
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	addl	(%rcx,%rax,4), %edx
	addl	-92(%rbp), %edx
	movl	%edx, -92(%rbp)
.LBB1_35:                               # %if.end.199
                                        #   in Loop: Header=BB1_17 Depth=2
	jmp	.LBB1_36
.LBB1_36:                               # %if.end.200
                                        #   in Loop: Header=BB1_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-92(%rbp), %eax
	movq	-80(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-80(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	addq	$-16, %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -92(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB1_39
# BB#37:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-92(%rbp), %ecx
	jge	.LBB1_39
# BB#38:                                # %if.then.212
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -92(%rbp)
.LBB1_39:                               # %if.end.214
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-92(%rbp), %ecx
	jg	.LBB1_41
# BB#40:                                # %if.then.218
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-88(%rbp), %rax
	movzbl	12(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movq	-80(%rbp), %rax
	movb	%dl, 12(%rax)
	jmp	.LBB1_42
.LBB1_41:                               # %if.else.225
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-80(%rbp), %rax
	movb	$1, 12(%rax)
.LBB1_42:                               # %if.end.227
                                        #   in Loop: Header=BB1_17 Depth=2
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-92(%rbp), %edx
	movl	%edx, -92(%rbp)
	movl	-92(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-80(%rbp), %rax
	addq	$-16, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, -92(%rbp)
	movl	-64(%rbp), %edx
	cmpl	-68(%rbp), %edx
	jge	.LBB1_45
# BB#43:                                # %land.lhs.true.236
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-92(%rbp), %ecx
	jge	.LBB1_45
# BB#44:                                # %if.then.240
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -92(%rbp)
.LBB1_45:                               # %if.end.242
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -96(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-92(%rbp), %ecx
	jg	.LBB1_47
# BB#46:                                # %if.then.247
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-88(%rbp), %rax
	movzbl	13(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movq	-80(%rbp), %rax
	movb	%dl, 13(%rax)
	jmp	.LBB1_48
.LBB1_47:                               # %if.else.254
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-80(%rbp), %rax
	movb	$1, 13(%rax)
.LBB1_48:                               # %if.end.256
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	-92(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, 8(%rcx)
# BB#49:                                # %for.inc.258
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-80(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB1_17
.LBB1_50:                               # %for.end.260
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_51
.LBB1_51:                               # %for.inc.261
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	-80(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB1_15
.LBB1_52:                               # %for.end.264
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	calculate_direct_scrolling, .Lfunc_end1-calculate_direct_scrolling
	.cfi_endproc

	.align	16, 0x90
	.type	do_direct_scrolling,@function
do_direct_scrolling:                    # @do_direct_scrolling
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	$16384, -56(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
# BB#1:                                 # %do.body
	movl	$12, %eax
	movl	%eax, %ecx
	movslq	-28(%rbp), %rdx
	movq	-56(%rbp), %rax
	xorl	%esi, %esi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	divq	%rcx
	shrq	$0, %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	ja	.LBB2_3
# BB#2:                                 # %if.then
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movslq	-28(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -80(%rbp)
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movl	$12, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -80(%rbp)
	movb	$1, -65(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movb	$0, -89(%rbp)
	movb	$1, -90(%rbp)
# BB#6:                                 # %do.body.8
	movslq	-28(%rbp), %rax
	movq	-56(%rbp), %rcx
	shrq	$2, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB2_8
# BB#7:                                 # %if.then.14
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movslq	-28(%rbp), %rax
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -104(%rbp)
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.20
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -104(%rbp)
	movb	$1, -65(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB2_9:                                # %if.end.23
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.24
	movslq	-28(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jg	.LBB2_12
# BB#11:                                # %cond.true
	movslq	-28(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movslq	-28(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB2_13
.LBB2_12:                               # %cond.false
	movb	$1, -65(%rbp)
	movslq	-28(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB2_13:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	xorl	%esi, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memset
	movl	-28(%rbp), %esi
	movl	%esi, -48(%rbp)
	movl	%esi, -44(%rbp)
.LBB2_14:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_32 Depth 2
	movb	$1, %al
	cmpl	$0, -44(%rbp)
	movb	%al, -137(%rbp)         # 1-byte Spill
	jg	.LBB2_16
# BB#15:                                # %lor.rhs
                                        #   in Loop: Header=BB2_14 Depth=1
	cmpl	$0, -48(%rbp)
	setg	%al
	movb	%al, -137(%rbp)         # 1-byte Spill
.LBB2_16:                               # %lor.end
                                        #   in Loop: Header=BB2_14 Depth=1
	movb	-137(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_17
	jmp	.LBB2_37
.LBB2_17:                               # %while.body
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movslq	-48(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	(%rax), %ecx
	jge	.LBB2_22
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	8(%rax), %ecx
	jge	.LBB2_22
# BB#19:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB2_14 Depth=1
	testb	$1, -90(%rbp)
	jne	.LBB2_21
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB2_22
.LBB2_21:                               # %if.then.51
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
	movl	-44(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %edx
	subl	%edx, %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-88(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %ecx
	movl	-44(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -44(%rbp)
	movb	$0, -90(%rbp)
	jmp	.LBB2_36
.LBB2_22:                               # %if.else.57
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	(%rax), %ecx
	jge	.LBB2_26
# BB#23:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB2_14 Depth=1
	testb	$1, -90(%rbp)
	jne	.LBB2_25
# BB#24:                                # %lor.lhs.false.65
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB2_26
.LBB2_25:                               # %if.then.68
                                        #   in Loop: Header=BB2_14 Depth=1
	movb	$0, -90(%rbp)
	movq	-40(%rbp), %rax
	movzbl	13(%rax), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	jmp	.LBB2_35
.LBB2_26:                               # %if.else.71
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	-40(%rbp), %rax
	movzbl	14(%rax), %ecx
	movl	%ecx, -116(%rbp)
	movb	$1, -90(%rbp)
	movl	-44(%rbp), %ecx
	cmpl	-48(%rbp), %ecx
	jle	.LBB2_28
# BB#27:                                # %if.then.75
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, %esi
	callq	set_terminal_window
	movb	$1, -89(%rbp)
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %eax
	subl	-116(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-44(%rbp), %esi
	subl	-48(%rbp), %esi
	movl	%esi, -144(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-144(%rbp), %edx        # 4-byte Reload
	callq	ins_del_lines
	jmp	.LBB2_31
.LBB2_28:                               # %if.else.80
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB2_30
# BB#29:                                # %if.then.83
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	-44(%rbp), %eax
	subl	-116(%rbp), %eax
	addl	-32(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-48(%rbp), %eax
	addl	-32(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	-44(%rbp), %eax
	subl	-48(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-88(%rbp), %rcx
	addq	$12, %rcx
	movq	%rcx, -88(%rbp)
.LBB2_30:                               # %if.end.92
                                        #   in Loop: Header=BB2_14 Depth=1
	jmp	.LBB2_31
.LBB2_31:                               # %if.end.93
                                        #   in Loop: Header=BB2_14 Depth=1
	jmp	.LBB2_32
.LBB2_32:                               # %while.cond.94
                                        #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -116(%rbp)
	jle	.LBB2_34
# BB#33:                                # %while.body.97
                                        #   in Loop: Header=BB2_32 Depth=2
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	movl	-116(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -116(%rbp)
	movl	-48(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movslq	-48(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	jmp	.LBB2_32
.LBB2_34:                               # %while.end
                                        #   in Loop: Header=BB2_14 Depth=1
	jmp	.LBB2_35
.LBB2_35:                               # %if.end.102
                                        #   in Loop: Header=BB2_14 Depth=1
	jmp	.LBB2_36
.LBB2_36:                               # %if.end.103
                                        #   in Loop: Header=BB2_14 Depth=1
	jmp	.LBB2_14
.LBB2_37:                               # %while.end.104
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jbe	.LBB2_52
# BB#38:                                # %if.then.107
	movl	$-1, -120(%rbp)
.LBB2_39:                               # %do.body.108
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_42 Depth 2
                                        #       Child Loop BB2_44 Depth 3
	movq	-88(%rbp), %rax
	addq	$-12, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB2_41
# BB#40:                                # %if.then.112
                                        #   in Loop: Header=BB2_39 Depth=1
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	8(%rax), %esi
	callq	set_terminal_window
	movb	$1, -89(%rbp)
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	4(%rax), %esi
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	callq	ins_del_lines
	jmp	.LBB2_49
.LBB2_41:                               # %if.else.116
                                        #   in Loop: Header=BB2_39 Depth=1
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -48(%rbp)
.LBB2_42:                               # %for.cond
                                        #   Parent Loop BB2_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_44 Depth 3
	movl	-48(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jl	.LBB2_48
# BB#43:                                # %for.body
                                        #   in Loop: Header=BB2_42 Depth=2
	jmp	.LBB2_44
.LBB2_44:                               # %while.cond.122
                                        #   Parent Loop BB2_39 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	movslq	%eax, %rcx
	movq	-112(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB2_46
# BB#45:                                # %while.body.126
                                        #   in Loop: Header=BB2_44 Depth=3
	jmp	.LBB2_44
.LBB2_46:                               # %while.end.127
                                        #   in Loop: Header=BB2_42 Depth=2
	movl	-120(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#47:                                # %for.inc
                                        #   in Loop: Header=BB2_42 Depth=2
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_42
.LBB2_48:                               # %for.end
                                        #   in Loop: Header=BB2_39 Depth=1
	jmp	.LBB2_49
.LBB2_49:                               # %if.end.131
                                        #   in Loop: Header=BB2_39 Depth=1
	jmp	.LBB2_50
.LBB2_50:                               # %do.cond
                                        #   in Loop: Header=BB2_39 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	ja	.LBB2_39
# BB#51:                                # %do.end.134
	jmp	.LBB2_52
.LBB2_52:                               # %if.end.135
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	-104(%rbp), %rcx
	movq	-112(%rbp), %r8
	callq	mirrored_line_dance
	testb	$1, -89(%rbp)
	je	.LBB2_54
# BB#53:                                # %if.then.137
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	set_terminal_window
.LBB2_54:                               # %if.end.138
	jmp	.LBB2_55
.LBB2_55:                               # %do.body.139
	testb	$1, -65(%rbp)
	je	.LBB2_57
# BB#56:                                # %if.then.141
	xorl	%edi, %edi
	movb	$0, -65(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB2_57:                               # %if.end.144
	jmp	.LBB2_58
.LBB2_58:                               # %do.end.146
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	do_direct_scrolling, .Lfunc_end2-do_direct_scrolling
	.cfi_endproc

	.align	16, 0x90
	.type	calculate_scrolling,@function
calculate_scrolling:                    # @calculate_scrolling
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
	subq	$176, %rsp
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%r10, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rsi
	movl	284(%rsi), %eax
	movl	%eax, -64(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rsi
	shrq	$23, %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	cmpl	$1, %ecx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_3
.LBB3_2:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB3_4
.LBB3_3:                                # %cond.false
	callq	emacs_abort
.LBB3_4:                                # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB3_6
# BB#5:                                 # %cond.true.11
	xorl	%eax, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB3_7
.LBB3_6:                                # %cond.false.12
	movl	-24(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB3_7:                                # %cond.end.13
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	-136(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -92(%rbp)
	movl	-64(%rbp), %eax
	subl	$1, %eax
	subl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	shlq	$2, %rdx
	addq	240(%rsi), %rdx
	movq	%rdx, -104(%rbp)
	movl	-64(%rbp), %eax
	subl	$1, %eax
	subl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	shlq	$2, %rdx
	addq	248(%rsi), %rdx
	movq	%rdx, -112(%rbp)
	movl	-64(%rbp), %eax
	subl	$1, %eax
	subl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	shlq	$2, %rdx
	addq	256(%rsi), %rdx
	movq	%rdx, -120(%rbp)
	movl	-64(%rbp), %eax
	subl	$1, %eax
	subl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	shlq	$2, %rdx
	addq	264(%rsi), %rdx
	movq	%rdx, -128(%rbp)
	movq	globals+3048, %rax
	imull	$40, -64(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	cqto
	movq	-160(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movl	%eax, %ecx
	movl	%ecx, -132(%rbp)
	cmpq	$0, globals+3048
	jg	.LBB3_9
# BB#8:                                 # %if.then
	movl	$1, -132(%rbp)
.LBB3_9:                                # %if.end
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$1000000, 4(%rax)       # imm = 0xF4240
	movq	-16(%rbp), %rax
	movl	$1000000, 8(%rax)       # imm = 0xF4240
	movq	-16(%rbp), %rax
	movb	$0, 12(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 13(%rax)
	movq	-104(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-120(%rbp), %rax
	subl	4(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movl	$1, -56(%rbp)
.LBB3_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB3_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB3_10 Depth=1
	movq	-16(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, -72(%rbp)
	movslq	-56(%rbp), %rax
	movq	-32(%rbp), %rsi
	movl	(%rsi,%rax,4), %ecx
	movslq	-56(%rbp), %rax
	movq	-120(%rbp), %rsi
	addl	(%rsi,%rax,4), %ecx
	addl	-132(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-84(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-72(%rbp), %rax
	movl	$1000000, (%rax)        # imm = 0xF4240
	movq	-72(%rbp), %rax
	movl	$1000000, 8(%rax)       # imm = 0xF4240
	movl	-56(%rbp), %ecx
	movb	%cl, %dil
	movq	-72(%rbp), %rax
	movb	%dil, 12(%rax)
	movq	-72(%rbp), %rax
	movb	$0, 13(%rax)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB3_10 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB3_10
.LBB3_13:                               # %for.end
	movq	-112(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-128(%rbp), %rax
	subl	4(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movl	$1, -60(%rbp)
.LBB3_14:                               # %for.cond.54
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB3_17
# BB#15:                                # %for.body.57
                                        #   in Loop: Header=BB3_14 Depth=1
	movslq	-60(%rbp), %rax
	movq	-128(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-84(%rbp), %edx
	movl	%edx, -84(%rbp)
	movl	-84(%rbp), %edx
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movl	$1000000, (%rax)        # imm = 0xF4240
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movl	$1000000, 4(%rax)       # imm = 0xF4240
	movl	-60(%rbp), %edx
	movb	%dl, %sil
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movb	%sil, 13(%rax)
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movb	$0, 12(%rax)
# BB#16:                                # %for.inc.77
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB3_14
.LBB3_17:                               # %for.end.79
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, -72(%rbp)
	movl	$1, -56(%rbp)
.LBB3_18:                               # %for.cond.83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_20 Depth 2
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB3_53
# BB#19:                                # %for.body.86
                                        #   in Loop: Header=BB3_18 Depth=1
	movl	$1, -60(%rbp)
.LBB3_20:                               # %for.cond.87
                                        #   Parent Loop BB3_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB3_51
# BB#21:                                # %for.body.90
                                        #   in Loop: Header=BB3_20 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	addq	$-32, %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jle	.LBB3_23
# BB#22:                                # %if.then.98
                                        #   in Loop: Header=BB3_20 Depth=2
	movq	-80(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -84(%rbp)
.LBB3_23:                               # %if.end.100
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB3_25
# BB#24:                                # %if.then.104
                                        #   in Loop: Header=BB3_20 Depth=2
	movq	-80(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -84(%rbp)
.LBB3_25:                               # %if.end.106
                                        #   in Loop: Header=BB3_20 Depth=2
	movslq	-60(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	(%rcx,%rax,4), %edx
	je	.LBB3_27
# BB#26:                                # %if.then.113
                                        #   in Loop: Header=BB3_20 Depth=2
	movslq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-84(%rbp), %edx
	movl	%edx, -84(%rbp)
.LBB3_27:                               # %if.end.117
                                        #   in Loop: Header=BB3_20 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-84(%rbp), %eax
	movq	-72(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	addq	$-16, %rdx
	movq	%rdx, -80(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jne	.LBB3_29
# BB#28:                                # %if.then.125
                                        #   in Loop: Header=BB3_20 Depth=2
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -88(%rbp)
	jmp	.LBB3_32
.LBB3_29:                               # %if.else
                                        #   in Loop: Header=BB3_20 Depth=2
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-56(%rbp), %rax
	movq	-104(%rbp), %rdx
	addl	(%rdx,%rax,4), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rax
	movzbl	12(%rax), %ecx
	cmpl	-56(%rbp), %ecx
	jle	.LBB3_31
# BB#30:                                # %if.then.136
	callq	emacs_abort
.LBB3_31:                               # %if.end.137
                                        #   in Loop: Header=BB3_20 Depth=2
	movq	-80(%rbp), %rax
	movl	4(%rax), %ecx
	movl	-56(%rbp), %edx
	movq	-80(%rbp), %rax
	movzbl	12(%rax), %esi
	subl	%esi, %edx
	movslq	%edx, %rax
	movq	-120(%rbp), %rdi
	addl	(%rdi,%rax,4), %ecx
	movl	%ecx, -88(%rbp)
.LBB3_32:                               # %if.end.145
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB3_34
# BB#33:                                # %cond.true.148
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB3_35
.LBB3_34:                               # %cond.false.149
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB3_35:                               # %cond.end.150
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-164(%rbp), %eax        # 4-byte Reload
	movslq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addl	(%rdx,%rcx,4), %eax
	addl	-132(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB3_37
# BB#36:                                # %cond.true.159
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	$1, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB3_38
.LBB3_37:                               # %cond.false.160
                                        #   in Loop: Header=BB3_20 Depth=2
	movq	-80(%rbp), %rax
	movzbl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
.LBB3_38:                               # %cond.end.164
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-168(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movb	%cl, 12(%rdx)
	movq	-72(%rbp), %rdx
	movzbl	12(%rdx), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB3_40
# BB#39:                                # %if.then.172
	callq	emacs_abort
.LBB3_40:                               # %if.end.173
                                        #   in Loop: Header=BB3_20 Depth=2
	movq	-72(%rbp), %rax
	addq	$-16, %rax
	movq	%rax, -80(%rbp)
	movl	-52(%rbp), %ecx
	cmpl	-56(%rbp), %ecx
	jne	.LBB3_42
# BB#41:                                # %if.then.177
                                        #   in Loop: Header=BB3_20 Depth=2
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -88(%rbp)
	jmp	.LBB3_43
.LBB3_42:                               # %if.else.180
                                        #   in Loop: Header=BB3_20 Depth=2
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-56(%rbp), %rax
	movq	-112(%rbp), %rdx
	addl	(%rdx,%rax,4), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rax
	movl	8(%rax), %ecx
	movslq	-56(%rbp), %rax
	movq	-128(%rbp), %rdx
	addl	(%rdx,%rax,4), %ecx
	movl	%ecx, -88(%rbp)
.LBB3_43:                               # %if.end.189
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB3_45
# BB#44:                                # %cond.true.192
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB3_46
.LBB3_45:                               # %cond.false.193
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB3_46:                               # %cond.end.194
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-172(%rbp), %eax        # 4-byte Reload
	movq	-72(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB3_48
# BB#47:                                # %cond.true.199
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	$1, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB3_49
.LBB3_48:                               # %cond.false.200
                                        #   in Loop: Header=BB3_20 Depth=2
	movq	-80(%rbp), %rax
	movzbl	13(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB3_49:                               # %cond.end.204
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-176(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movb	%cl, 13(%rdx)
# BB#50:                                # %for.inc.208
                                        #   in Loop: Header=BB3_20 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-72(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB3_20
.LBB3_51:                               # %for.end.210
                                        #   in Loop: Header=BB3_18 Depth=1
	jmp	.LBB3_52
.LBB3_52:                               # %for.inc.211
                                        #   in Loop: Header=BB3_18 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movq	-72(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB3_18
.LBB3_53:                               # %for.end.214
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	calculate_scrolling, .Lfunc_end3-calculate_scrolling
	.cfi_endproc

	.align	16, 0x90
	.type	do_scrolling,@function
do_scrolling:                           # @do_scrolling
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	$16384, -64(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -72(%rbp)
	movb	$0, -73(%rbp)
	movb	$0, -74(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movslq	24(%rax), %rax
	movq	-64(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB4_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movslq	24(%rax), %rax
	shlq	$3, %rax
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -64(%rbp)
	movq	-16(%rbp), %rax
	movslq	24(%rax), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -88(%rbp)
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movslq	24(%rcx), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -88(%rbp)
	movb	$1, -73(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movslq	-28(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jg	.LBB4_7
# BB#6:                                 # %cond.true
	movslq	-28(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -64(%rbp)
	movslq	-28(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
	movb	$1, -73(%rbp)
	movslq	-28(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB4_8:                                # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
# BB#9:                                 # %do.body.19
	movslq	-28(%rbp), %rax
	movq	-64(%rbp), %rcx
	shrq	$2, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB4_11
# BB#10:                                # %if.then.25
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -64(%rbp)
	movslq	-28(%rbp), %rax
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -112(%rbp)
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.31
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -112(%rbp)
	movb	$1, -73(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB4_12:                               # %if.end.34
	jmp	.LBB4_13
.LBB4_13:                               # %do.end.35
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memset
	movl	$0, -52(%rbp)
.LBB4_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB4_14 Depth=1
	movslq	-52(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB4_14
.LBB4_17:                               # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	%eax, -44(%rbp)
.LBB4_18:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	cmpl	$0, -44(%rbp)
	movb	%al, -129(%rbp)         # 1-byte Spill
	jg	.LBB4_20
# BB#19:                                # %lor.rhs
                                        #   in Loop: Header=BB4_18 Depth=1
	cmpl	$0, -48(%rbp)
	setg	%al
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB4_20:                               # %lor.end
                                        #   in Loop: Header=BB4_18 Depth=1
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_21
	jmp	.LBB4_31
.LBB4_21:                               # %while.body
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movslq	-48(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	(%rax), %ecx
	jge	.LBB4_24
# BB#22:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	8(%rax), %ecx
	jge	.LBB4_24
# BB#23:                                # %if.then.52
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-44(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %edx
	subl	%edx, %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %ecx
	movl	-44(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -44(%rbp)
	jmp	.LBB4_30
.LBB4_24:                               # %if.else.61
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	(%rax), %ecx
	jge	.LBB4_28
# BB#25:                                # %if.then.66
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-40(%rbp), %rax
	movzbl	13(%rax), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	testb	$1, -74(%rbp)
	jne	.LBB4_27
# BB#26:                                # %if.then.69
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, %esi
	callq	set_terminal_window
	movb	$1, -74(%rbp)
.LBB4_27:                               # %if.end.71
                                        #   in Loop: Header=BB4_18 Depth=1
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movzbl	13(%rdx), %esi
	subl	%esi, %eax
	movl	%ecx, %esi
	movl	%eax, %edx
	callq	ins_del_lines
	jmp	.LBB4_29
.LBB4_28:                               # %if.else.76
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movslq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
.LBB4_29:                               # %if.end.82
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_30
.LBB4_30:                               # %if.end.83
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_18
.LBB4_31:                               # %while.end
	movq	-96(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jbe	.LBB4_45
# BB#32:                                # %if.then.86
	movl	$-1, -116(%rbp)
	testb	$1, -74(%rbp)
	jne	.LBB4_34
# BB#33:                                # %if.then.88
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, %esi
	callq	set_terminal_window
	movb	$1, -74(%rbp)
.LBB4_34:                               # %if.end.90
	jmp	.LBB4_35
.LBB4_35:                               # %do.body.91
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_36 Depth 2
                                        #       Child Loop BB4_38 Depth 3
	movq	-96(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rdi
	movq	-96(%rbp), %rax
	movl	4(%rax), %esi
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	callq	ins_del_lines
	movq	-96(%rbp), %rax
	movl	4(%rax), %edx
	subl	-32(%rbp), %edx
	movl	%edx, -52(%rbp)
	movl	$0, -48(%rbp)
.LBB4_36:                               # %for.cond.97
                                        #   Parent Loop BB4_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_38 Depth 3
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB4_42
# BB#37:                                # %for.body.101
                                        #   in Loop: Header=BB4_36 Depth=2
	jmp	.LBB4_38
.LBB4_38:                               # %while.cond.102
                                        #   Parent Loop BB4_35 Depth=1
                                        #     Parent Loop BB4_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	movslq	%eax, %rcx
	movq	-104(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB4_40
# BB#39:                                # %while.body.107
                                        #   in Loop: Header=BB4_38 Depth=3
	jmp	.LBB4_38
.LBB4_40:                               # %while.end.108
                                        #   in Loop: Header=BB4_36 Depth=2
	movl	-116(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-112(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
# BB#41:                                # %for.inc.112
                                        #   in Loop: Header=BB4_36 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_36
.LBB4_42:                               # %for.end.114
                                        #   in Loop: Header=BB4_35 Depth=1
	jmp	.LBB4_43
.LBB4_43:                               # %do.cond
                                        #   in Loop: Header=BB4_35 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-88(%rbp), %rax
	ja	.LBB4_35
# BB#44:                                # %do.end.117
	jmp	.LBB4_45
.LBB4_45:                               # %if.end.118
	movl	$0, -52(%rbp)
.LBB4_46:                               # %for.cond.119
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_49
# BB#47:                                # %for.body.122
                                        #   in Loop: Header=BB4_46 Depth=1
	jmp	.LBB4_48
.LBB4_48:                               # %for.inc.123
                                        #   in Loop: Header=BB4_46 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB4_46
.LBB4_49:                               # %for.end.125
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %r8
	callq	mirrored_line_dance
	testb	$1, -74(%rbp)
	je	.LBB4_51
# BB#50:                                # %if.then.127
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	set_terminal_window
.LBB4_51:                               # %if.end.128
	jmp	.LBB4_52
.LBB4_52:                               # %do.body.129
	testb	$1, -73(%rbp)
	je	.LBB4_54
# BB#53:                                # %if.then.131
	xorl	%edi, %edi
	movb	$0, -73(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB4_54:                               # %if.end.134
	jmp	.LBB4_55
.LBB4_55:                               # %do.end.136
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	do_scrolling, .Lfunc_end4-do_scrolling
	.cfi_endproc

	.globl	scrolling_max_lines_saved
	.align	16, 0x90
	.type	scrolling_max_lines_saved,@function
scrolling_max_lines_saved:              # @scrolling_max_lines_saved
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
	subq	$4160, %rsp             # imm = 0x1040
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	$0, -4140(%rbp)
	movl	$0, -4144(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, -4132(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4132(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-4132(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-4144(%rbp), %edx
	movl	%edx, -4144(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-4132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4132(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	xorl	%esi, %esi
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %edx
	leaq	-4128(%rbp), %rcx
	movl	$4, %eax
	movl	-8(%rbp), %edi
	subl	-4(%rbp), %edi
	movl	-4144(%rbp), %r8d
	movl	%eax, -4152(%rbp)       # 4-byte Spill
	movl	%r8d, %eax
	movq	%rdx, -4160(%rbp)       # 8-byte Spill
	cltd
	idivl	%edi
	movl	%eax, -4144(%rbp)
	movl	-4144(%rbp), %eax
	cltd
	movl	-4152(%rbp), %edi       # 4-byte Reload
	idivl	%edi
	movl	%eax, -4148(%rbp)
	movq	%rcx, %rdi
	movq	-4160(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, %rdx
	callq	memset
	movl	-4(%rbp), %eax
	movl	%eax, -4132(%rbp)
.LBB5_5:                                # %for.cond.2
                                        # =>This Inner Loop Header: Depth=1
	movl	-4132(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB5_10
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB5_5 Depth=1
	movslq	-4132(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-4148(%rbp), %edx
	jle	.LBB5_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB5_5 Depth=1
	movslq	-4132(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$511, %edx              # imm = 0x1FF
	movl	%edx, -4136(%rbp)
	movslq	-4132(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-4136(%rbp), %rax
	movl	%edx, -4128(%rbp,%rax,8)
	movslq	-4136(%rbp), %rax
	movl	-4124(%rbp,%rax,8), %edx
	addl	$1, %edx
	movl	%edx, -4124(%rbp,%rax,8)
.LBB5_8:                                # %if.end
                                        #   in Loop: Header=BB5_5 Depth=1
	jmp	.LBB5_9
.LBB5_9:                                # %for.inc.17
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-4132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4132(%rbp)
	jmp	.LBB5_5
.LBB5_10:                               # %for.end.19
	movl	-4(%rbp), %eax
	movl	%eax, -4132(%rbp)
.LBB5_11:                               # %for.cond.20
                                        # =>This Inner Loop Header: Depth=1
	movl	-4132(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB5_18
# BB#12:                                # %for.body.22
                                        #   in Loop: Header=BB5_11 Depth=1
	movslq	-4132(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$511, %edx              # imm = 0x1FF
	movl	%edx, -4136(%rbp)
	movslq	-4132(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-4136(%rbp), %rax
	cmpl	-4128(%rbp,%rax,8), %edx
	jne	.LBB5_16
# BB#13:                                # %if.then.32
                                        #   in Loop: Header=BB5_11 Depth=1
	movl	-4140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4140(%rbp)
	movslq	-4136(%rbp), %rcx
	movl	-4124(%rbp,%rcx,8), %eax
	addl	$-1, %eax
	movl	%eax, -4124(%rbp,%rcx,8)
	cmpl	$0, %eax
	jne	.LBB5_15
# BB#14:                                # %if.then.38
                                        #   in Loop: Header=BB5_11 Depth=1
	movslq	-4136(%rbp), %rax
	movl	$0, -4128(%rbp,%rax,8)
.LBB5_15:                               # %if.end.42
                                        #   in Loop: Header=BB5_11 Depth=1
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.43
                                        #   in Loop: Header=BB5_11 Depth=1
	jmp	.LBB5_17
.LBB5_17:                               # %for.inc.44
                                        #   in Loop: Header=BB5_11 Depth=1
	movl	-4132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4132(%rbp)
	jmp	.LBB5_11
.LBB5_18:                               # %for.end.46
	movl	-4140(%rbp), %eax
	addq	$4160, %rsp             # imm = 0x1040
	popq	%rbp
	retq
.Lfunc_end5:
	.size	scrolling_max_lines_saved, .Lfunc_end5-scrolling_max_lines_saved
	.cfi_endproc

	.globl	do_line_insertion_deletion_costs
	.align	16, 0x90
	.type	do_line_insertion_deletion_costs,@function
do_line_insertion_deletion_costs:       # @do_line_insertion_deletion_costs
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp21:
	.cfi_offset %rbx, -24
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movl	$4, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rcx
	movl	284(%rcx), %eax
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rcx
	movq	240(%rcx), %rcx
	movslq	-72(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	callq	xnrealloc
	movl	$4, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movslq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	xnrealloc
	movl	$4, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rcx
	movq	%rax, 264(%rcx)
	movq	-16(%rbp), %rax
	movq	256(%rax), %rax
	movslq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	xnrealloc
	movl	$4, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movslq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	xnrealloc
	movq	-16(%rbp), %rcx
	movq	%rax, 248(%rcx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-16(%rbp), %rax
	movq	240(%rax), %r9
	movq	-16(%rbp), %rax
	movq	256(%rax), %rax
	movl	-68(%rbp), %r11d
	movq	%rax, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	ins_del_costs
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-16(%rbp), %rax
	movq	248(%rax), %r9
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movl	-68(%rbp), %r11d
	movq	%rax, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	ins_del_costs
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	do_line_insertion_deletion_costs, .Lfunc_end6-do_line_insertion_deletion_costs
	.cfi_endproc

	.align	16, 0x90
	.type	ins_del_costs,@function
ins_del_costs:                          # @ins_del_costs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movl	%eax, -60(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	string_cost
	imull	-60(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	per_line_cost
	xorl	%ecx, %ecx
	imull	-60(%rbp), %eax
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	line_ins_del
	jmp	.LBB7_6
.LBB7_2:                                # %if.else
	cmpq	$0, -16(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	string_cost
	movq	-40(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	string_cost
	movl	-108(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	callq	string_cost
	movq	-16(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	per_line_cost
	xorl	%edx, %edx
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	-112(%rbp), %esi        # 4-byte Reload
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	line_ins_del
	jmp	.LBB7_5
.LBB7_4:                                # %if.else.9
	movl	$9999, %eax             # imm = 0x270F
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-140(%rbp), %r8d        # 4-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	line_ins_del
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.10
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ins_del_costs, .Lfunc_end7-ins_del_costs
	.cfi_endproc

	.align	16, 0x90
	.type	line_ins_del,@function
line_ins_del:                           # @line_ins_del
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
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	284(%rax), %ecx
	movl	%ecx, -48(%rbp)
	imull	$10, -12(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	imull	$10, -20(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -44(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jl	.LBB8_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$10, %eax
	movl	-56(%rbp), %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movslq	-44(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
	movl	-24(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	-56(%rbp), %eax
	cltd
	idivl	%ecx
	movslq	-44(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
	movl	-16(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end8:
	.size	line_ins_del, .Lfunc_end8-line_ins_del
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
