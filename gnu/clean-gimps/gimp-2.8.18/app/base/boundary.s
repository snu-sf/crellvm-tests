	.text
	.file	"boundary.bc"
	.globl	boundary_find
	.align	16, 0x90
	.type	boundary_find,@function
boundary_find:                          # @boundary_find
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
	subq	$64, %rsp
	movq	24(%rbp), %rax
	movb	16(%rbp), %r10b
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movb	%r10b, -37(%rbp)
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.boundary_find, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_11
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -48(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.boundary_find, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_11
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movzbl	-37(%rbp), %eax
	movl	%eax, (%rsp)
	callq	generate_boundary
	xorl	%esi, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rdi
	callq	boundary_free
	movq	%rax, -8(%rbp)
.LBB0_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	boundary_find, .Lfunc_end0-boundary_find
	.cfi_endproc

	.align	16, 0x90
	.type	generate_boundary,@function
generate_boundary:                      # @generate_boundary
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movb	16(%rbp), %al
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movb	%al, -45(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movq	-24(%rbp), %rdi
	callq	boundary_new
	movq	%rax, -56(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	-36(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB1_5
.LBB1_2:                                # %if.else
	cmpl	$1, -28(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	48(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.4
	leaq	-92(%rbp), %r8
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movq	-56(%rbp), %rcx
	movq	40(%rcx), %rdx
	movq	-56(%rbp), %rcx
	movl	48(%rcx), %ecx
	movl	-28(%rbp), %r9d
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %r10d
	movl	-40(%rbp), %r11d
	movl	-44(%rbp), %ebx
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movzbl	-45(%rbp), %eax
	movl	%eax, 32(%rsp)
	callq	find_empty_segs
	leaq	-88(%rbp), %r8
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-56(%rbp), %r14
	movl	48(%r14), %ecx
	movl	-28(%rbp), %r9d
	movl	-32(%rbp), %eax
	movl	-36(%rbp), %r10d
	movl	-40(%rbp), %r11d
	movl	-44(%rbp), %ebx
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movzbl	-45(%rbp), %eax
	movl	%eax, 32(%rsp)
	callq	find_empty_segs
	movl	-68(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB1_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB1_13
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	leaq	-84(%rbp), %r8
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movq	-56(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	-56(%rbp), %rcx
	movl	48(%rcx), %ecx
	movl	-28(%rbp), %r9d
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %r10d
	movl	-40(%rbp), %r11d
	movl	-44(%rbp), %ebx
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movzbl	-45(%rbp), %eax
	movl	%eax, 32(%rsp)
	callq	find_empty_segs
	movl	$1, -64(%rbp)
.LBB1_8:                                # %for.cond.9
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movl	-88(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_11
# BB#9:                                 # %for.body.12
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$1, %eax
	movq	-56(%rbp), %rdi
	movslq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	(%rdx,%rcx,4), %esi
	movl	-64(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rcx
	movq	-56(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	(%rdx,%rcx,4), %edx
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %r9
	movq	40(%r9), %r8
	movl	-92(%rbp), %r9d
	movl	$1, (%rsp)
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	make_horiz_segs
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movslq	-64(%rbp), %r8
	movq	-56(%rbp), %r10
	movq	32(%r10), %r10
	movl	(%r10,%r8,4), %esi
	movl	-64(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %r8
	movq	-56(%rbp), %r10
	movq	32(%r10), %r10
	movl	(%r10,%r8,4), %edx
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movq	-56(%rbp), %r8
	movq	24(%r8), %r8
	movl	-84(%rbp), %r9d
	movl	$0, (%rsp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	make_horiz_segs
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB1_8
.LBB1_11:                               # %for.end
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	-88(%rbp), %edx
	movl	%edx, -92(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	-84(%rbp), %edx
	movl	%edx, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 24(%rcx)
# BB#12:                                # %for.inc.35
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_6
.LBB1_13:                               # %for.end.36
	movq	-56(%rbp), %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	generate_boundary, .Lfunc_end1-generate_boundary
	.cfi_endproc

	.align	16, 0x90
	.type	boundary_free,@function
boundary_free:                          # @boundary_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB2_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#4:                                 # %do.body
	movl	$56, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#5:                                 # %do.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	boundary_free, .Lfunc_end2-boundary_free
	.cfi_endproc

	.globl	boundary_sort
	.align	16, 0x90
	.type	boundary_sort,@function
boundary_sort:                          # @boundary_sort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %land.lhs.true
	cmpl	$0, -20(%rbp)
	je	.LBB3_5
.LBB3_3:                                # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true.3
	cmpl	$0, -20(%rbp)
	jle	.LBB3_6
.LBB3_5:                                # %if.then
	jmp	.LBB3_7
.LBB3_6:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.boundary_sort, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_40
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %do.end
	jmp	.LBB3_9
.LBB3_9:                                # %do.body.5
	cmpq	$0, -32(%rbp)
	je	.LBB3_11
# BB#10:                                # %if.then.7
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.8
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.boundary_sort, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_40
.LBB3_12:                               # %if.end.9
	jmp	.LBB3_13
.LBB3_13:                               # %do.end.10
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$0, -20(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.12
	movq	$0, -8(%rbp)
	jmp	.LBB3_40
.LBB3_15:                               # %if.end.13
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-20(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movslq	-20(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB3_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	-16(%rbp), %rax
	movslq	-60(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-16(%rbp), %rax
	movslq	-60(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-60(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB3_16
.LBB3_19:                               # %for.end
	movl	$8, %eax
	movl	%eax, %edx
	movabsq	$cmp_segptr_xy1_addr, %rcx
	movq	-48(%rbp), %rsi
	movslq	-20(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	qsort
	movl	$8, %eax
	movl	%eax, %edx
	movabsq	$cmp_segptr_xy2_addr, %rcx
	movq	-56(%rbp), %rsi
	movslq	-20(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	qsort
	movl	$0, -60(%rbp)
.LBB3_20:                               # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_23
# BB#21:                                # %for.body.27
                                        #   in Loop: Header=BB3_20 Depth=1
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movb	16(%rax), %cl
	andb	$-3, %cl
	movb	%cl, 16(%rax)
# BB#22:                                # %for.inc.30
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB3_20
.LBB3_23:                               # %for.end.32
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	boundary_new
	movq	%rax, -40(%rbp)
	movl	$0, -60(%rbp)
.LBB3_24:                               # %for.cond.34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_28 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_39
# BB#25:                                # %for.body.37
                                        #   in Loop: Header=BB3_24 Depth=1
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movb	16(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB3_27
# BB#26:                                # %if.then.43
                                        #   in Loop: Header=BB3_24 Depth=1
	jmp	.LBB3_38
.LBB3_27:                               # %if.end.44
                                        #   in Loop: Header=BB3_24 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movl	(%rax), %esi
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movl	12(%rax), %r8d
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movb	16(%rax), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	callq	boundary_add_seg
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movb	16(%rax), %r10b
	andb	$-3, %r10b
	orb	$2, %r10b
	movb	%r10b, 16(%rax)
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movslq	-60(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -68(%rbp)
.LBB3_28:                               # %while.cond
                                        #   Parent Loop BB3_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	callq	find_segment
	movq	%rax, -88(%rbp)
	cmpq	$0, %rax
	je	.LBB3_34
# BB#29:                                # %while.body
                                        #   in Loop: Header=BB3_28 Depth=2
	movl	-64(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	.LBB3_32
# BB#30:                                # %land.lhs.true.81
                                        #   in Loop: Header=BB3_28 Depth=2
	movl	-68(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB3_32
# BB#31:                                # %if.then.85
                                        #   in Loop: Header=BB3_28 Depth=2
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	(%rax), %esi
	movq	-88(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	12(%rax), %r8d
	movq	-88(%rbp), %rax
	movb	16(%rax), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	callq	boundary_add_seg
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-88(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -68(%rbp)
	jmp	.LBB3_33
.LBB3_32:                               # %if.else.96
                                        #   in Loop: Header=BB3_28 Depth=2
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	8(%rax), %esi
	movq	-88(%rbp), %rax
	movl	12(%rax), %edx
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-88(%rbp), %rax
	movb	16(%rax), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	callq	boundary_add_seg
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -68(%rbp)
.LBB3_33:                               # %if.end.107
                                        #   in Loop: Header=BB3_28 Depth=2
	movq	-88(%rbp), %rax
	movb	16(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 16(%rax)
	jmp	.LBB3_28
.LBB3_34:                               # %while.end
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	-64(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.LBB3_36
# BB#35:                                # %lor.lhs.false.114
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.LBB3_37
.LBB3_36:                               # %if.then.117
                                        #   in Loop: Header=BB3_24 Depth=1
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	g_warning
.LBB3_37:                               # %if.end.118
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movq	-32(%rbp), %rcx
	movl	%edx, (%rcx)
	movq	-40(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	boundary_add_seg
.LBB3_38:                               # %for.inc.119
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB3_24
.LBB3_39:                               # %for.end.121
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	boundary_free
	movq	%rax, -8(%rbp)
.LBB3_40:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	boundary_sort, .Lfunc_end3-boundary_sort
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_segptr_xy1_addr,@function
cmp_segptr_xy1_addr:                    # @cmp_segptr_xy1_addr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movl	(%rsi), %edi
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %esi
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	callq	cmp_xy
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB4_7
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB4_3
# BB#2:                                 # %if.then.4
	movl	$-1, -36(%rbp)
	jmp	.LBB4_6
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.LBB4_5
# BB#4:                                 # %if.then.6
	movl	$1, -36(%rbp)
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %if.end.7
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.8
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cmp_segptr_xy1_addr, .Lfunc_end4-cmp_segptr_xy1_addr
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_segptr_xy2_addr,@function
cmp_segptr_xy2_addr:                    # @cmp_segptr_xy2_addr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %edi
	movq	-24(%rbp), %rsi
	movl	12(%rsi), %esi
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	callq	cmp_xy
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB5_7
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB5_3
# BB#2:                                 # %if.then.4
	movl	$-1, -36(%rbp)
	jmp	.LBB5_6
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.LBB5_5
# BB#4:                                 # %if.then.6
	movl	$1, -36(%rbp)
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.7
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.8
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cmp_segptr_xy2_addr, .Lfunc_end5-cmp_segptr_xy2_addr
	.cfi_endproc

	.align	16, 0x90
	.type	boundary_new,@function
boundary_new:                           # @boundary_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$56, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB6_6
# BB#1:                                 # %if.then
	movl	$4, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	movq	-8(%rbp), %rcx
	addl	36(%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	$0, -20(%rbp)
.LBB6_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	36(%rcx), %edx
	cmpl	%edx, %eax
	jg	.LBB6_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	$-1, (%rcx,%rax,4)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_2
.LBB6_5:                                # %for.end
	movl	$4, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	addl	$3, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-16(%rbp), %rcx
	movslq	48(%rcx), %rdi
	callq	g_malloc_n
	movl	$4, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movslq	48(%rax), %rdi
	callq	g_malloc_n
	movl	$4, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movslq	48(%rax), %rdi
	callq	g_malloc_n
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB6_6:                                # %if.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	boundary_new, .Lfunc_end6-boundary_new
	.cfi_endproc

	.align	16, 0x90
	.type	boundary_add_seg,@function
boundary_add_seg:                       # @boundary_add_seg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %ecx
	movq	-8(%rbp), %rdi
	cmpl	12(%rdi), %ecx
	jl	.LBB7_2
# BB#1:                                 # %if.then
	movl	$20, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %eax
	addl	$2048, %eax             # imm = 0x800
	movl	%eax, 12(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rsi
	movslq	12(%rsi), %rsi
	movq	%rcx, %rdi
	callq	g_realloc_n
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB7_2:                                # %if.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	imulq	$20, %rcx, %rcx
	addq	(%rdx), %rcx
	movl	%eax, (%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	imulq	$20, %rcx, %rcx
	addq	(%rdx), %rcx
	movl	%eax, 4(%rcx)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	imulq	$20, %rcx, %rcx
	addq	(%rdx), %rcx
	movl	%eax, 8(%rcx)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	imulq	$20, %rcx, %rcx
	addq	(%rdx), %rcx
	movl	%eax, 12(%rcx)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	imulq	$20, %rcx, %rcx
	addq	(%rdx), %rcx
	movb	%al, %sil
	movb	16(%rcx), %dil
	andb	$1, %sil
	andb	$-2, %dil
	orb	%sil, %dil
	movb	%dil, 16(%rcx)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 8(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	boundary_add_seg, .Lfunc_end7-boundary_add_seg
	.cfi_endproc

	.align	16, 0x90
	.type	find_segment,@function
find_segment:                           # @find_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-80(%rbp), %rax
	movabsq	$cmp_segptr_xy1, %r9
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	-32(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movl	%ecx, -80(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	%ecx, -76(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	%rax, %rdx
	movq	%r9, %rcx
	callq	find_segment_with_func
	leaq	-80(%rbp), %rdx
	movabsq	$cmp_segptr_xy2, %rcx
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	find_segment_with_func
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB8_6
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -56(%rbp)
	je	.LBB8_6
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB8_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB8_5:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB8_13
.LBB8_6:                                # %if.else
	cmpq	$0, -48(%rbp)
	je	.LBB8_8
# BB#7:                                 # %if.then.5
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_13
.LBB8_8:                                # %if.else.6
	cmpq	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_13
.LBB8_10:                               # %if.end
	jmp	.LBB8_11
.LBB8_11:                               # %if.end.9
	jmp	.LBB8_12
.LBB8_12:                               # %if.end.10
	movq	$0, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	find_segment, .Lfunc_end8-find_segment
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB9_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB9_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.globl	boundary_simplify
	.align	16, 0x90
	.type	boundary_simplify,@function
boundary_simplify:                      # @boundary_simplify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %land.lhs.true
	cmpl	$0, -20(%rbp)
	je	.LBB10_5
.LBB10_3:                               # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true.3
	cmpl	$0, -20(%rbp)
	jle	.LBB10_6
.LBB10_5:                               # %if.then
	jmp	.LBB10_7
.LBB10_6:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.boundary_simplify, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_31
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %do.end
	jmp	.LBB10_9
.LBB10_9:                               # %do.body.5
	cmpq	$0, -32(%rbp)
	je	.LBB10_11
# BB#10:                                # %if.then.7
	jmp	.LBB10_12
.LBB10_11:                              # %if.else.8
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.boundary_simplify, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_31
.LBB10_12:                              # %if.end.9
	jmp	.LBB10_13
.LBB10_13:                              # %do.end.10
	xorl	%eax, %eax
	movl	$20, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_new
	movq	%rax, -40(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
.LBB10_14:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_16 Depth 2
                                        #     Child Loop BB10_24 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB10_30
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB10_14 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB10_16:                              # %while.cond
                                        #   Parent Loop BB10_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	movslq	-48(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-16(%rbp), %rcx
	cmpl	$-1, (%rcx)
	movb	%al, -93(%rbp)          # 1-byte Spill
	jne	.LBB10_20
# BB#17:                                # %lor.lhs.false.13
                                        #   in Loop: Header=BB10_16 Depth=2
	movb	$1, %al
	movslq	-48(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-16(%rbp), %rcx
	cmpl	$-1, 8(%rcx)
	movb	%al, -93(%rbp)          # 1-byte Spill
	jne	.LBB10_20
# BB#18:                                # %lor.lhs.false.17
                                        #   in Loop: Header=BB10_16 Depth=2
	movb	$1, %al
	movslq	-48(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-16(%rbp), %rcx
	cmpl	$-1, 4(%rcx)
	movb	%al, -93(%rbp)          # 1-byte Spill
	jne	.LBB10_20
# BB#19:                                # %lor.rhs
                                        #   in Loop: Header=BB10_16 Depth=2
	movslq	-48(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	cmpl	$-1, 12(%rax)
	setne	%cl
	movb	%cl, -93(%rbp)          # 1-byte Spill
.LBB10_20:                              # %lor.end
                                        #   in Loop: Header=BB10_16 Depth=2
	movb	-93(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_21
	jmp	.LBB10_22
.LBB10_21:                              # %while.body
                                        #   in Loop: Header=BB10_16 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB10_16
.LBB10_22:                              # %while.end
                                        #   in Loop: Header=BB10_14 Depth=1
	cmpl	$0, -56(%rbp)
	jle	.LBB10_28
# BB#23:                                # %if.then.26
                                        #   in Loop: Header=BB10_14 Depth=1
	xorl	%eax, %eax
	movl	$4, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_new
	leaq	-64(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movslq	-48(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %r8
	movq	%r8, -88(%rbp)
	movq	8(%rax), %r8
	movq	%r8, -80(%rbp)
	movl	16(%rax), %edx
	movl	%edx, -72(%rbp)
	movslq	-48(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movslq	-52(%rbp), %r8
	imulq	$20, %r8, %r8
	addq	-16(%rbp), %r8
	movq	(%r8), %r9
	movq	%r9, (%rax)
	movq	8(%r8), %r9
	movq	%r9, 8(%rax)
	movl	16(%r8), %edx
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-52(%rbp), %edx
	addl	-56(%rbp), %edx
	callq	simplify_subdivide
	movslq	-48(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-80(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	-72(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	$0, -92(%rbp)
.LBB10_24:                              # %for.cond.36
                                        #   Parent Loop BB10_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB10_27
# BB#25:                                # %for.body.38
                                        #   in Loop: Header=BB10_24 Depth=2
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	movslq	-92(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	(%rcx,%rax,4), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -104(%rbp)        # 8-byte Spill
# BB#26:                                # %for.inc
                                        #   in Loop: Header=BB10_24 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB10_24
.LBB10_27:                              # %for.end
                                        #   in Loop: Header=BB10_14 Depth=1
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	movslq	-48(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, %esi
	movq	-64(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_array_free
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB10_28:                              # %if.end.49
                                        #   in Loop: Header=BB10_14 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
# BB#29:                                # %for.inc.51
                                        #   in Loop: Header=BB10_14 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB10_14
.LBB10_30:                              # %for.end.53
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -8(%rbp)
.LBB10_31:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	boundary_simplify, .Lfunc_end10-boundary_simplify
	.cfi_endproc

	.align	16, 0x90
	.type	simplify_subdivide,@function
simplify_subdivide:                     # @simplify_subdivide
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-16(%rbp), %edx
	subl	-12(%rbp), %edx
	cmpl	$2, %edx
	jge	.LBB11_2
# BB#1:                                 # %if.then
	movl	$1, %edx
	leaq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB11_21
.LBB11_2:                               # %if.end
	movl	$0, -32(%rbp)
	movslq	-12(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-16(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	cmpl	(%rax), %ecx
	jne	.LBB11_11
# BB#3:                                 # %land.lhs.true
	movslq	-12(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movslq	-16(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	cmpl	4(%rax), %ecx
	jne	.LBB11_11
# BB#4:                                 # %if.then.11
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB11_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB11_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB11_5 Depth=1
	movslq	-40(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-12(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	subl	(%rax), %ecx
	movslq	-40(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	movl	(%rax), %edx
	movslq	-12(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	subl	(%rax), %edx
	imull	%edx, %ecx
	movslq	-40(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movslq	-12(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	subl	4(%rax), %edx
	movslq	-40(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	movl	4(%rax), %esi
	movslq	-12(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	subl	4(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	jle	.LBB11_8
# BB#7:                                 # %if.then.44
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB11_8:                               # %if.end.45
                                        #   in Loop: Header=BB11_5 Depth=1
	jmp	.LBB11_9
.LBB11_9:                               # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_5
.LBB11_10:                              # %for.end
	movl	$1, -36(%rbp)
	jmp	.LBB11_18
.LBB11_11:                              # %if.else
	movslq	-16(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-12(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	subl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movslq	-16(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movslq	-12(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	subl	4(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -40(%rbp)
.LBB11_12:                              # %for.cond.61
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB11_17
# BB#13:                                # %for.body.63
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	-44(%rbp), %eax
	movslq	-12(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-8(%rbp), %rcx
	movl	4(%rcx), %edx
	movslq	-40(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-8(%rbp), %rcx
	subl	4(%rcx), %edx
	imull	%edx, %eax
	movl	-48(%rbp), %edx
	movslq	-12(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-8(%rbp), %rcx
	movl	(%rcx), %esi
	movslq	-40(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-8(%rbp), %rcx
	subl	(%rcx), %esi
	imull	%esi, %edx
	subl	%edx, %eax
	movl	%eax, %edi
	callq	abs
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB11_15
# BB#14:                                # %if.then.84
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB11_15:                              # %if.end.85
                                        #   in Loop: Header=BB11_12 Depth=1
	jmp	.LBB11_16
.LBB11_16:                              # %for.inc.86
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_12
.LBB11_17:                              # %for.end.88
	movl	-44(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	imull	-48(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -36(%rbp)
.LBB11_18:                              # %if.end.92
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB11_20
# BB#19:                                # %if.then.94
	movl	$1, %edx
	leaq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB11_21
.LBB11_20:                              # %if.end.96
	movl	$2, %eax
	movl	-12(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %edx
	callq	simplify_subdivide
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	simplify_subdivide
.LBB11_21:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	simplify_subdivide, .Lfunc_end11-simplify_subdivide
	.cfi_endproc

	.globl	boundary_offset
	.align	16, 0x90
	.type	boundary_offset,@function
boundary_offset:                        # @boundary_offset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB12_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB12_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	cmpl	$-1, 4(%rax)
	jne	.LBB12_6
# BB#4:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB12_1 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	cmpl	$-1, 8(%rax)
	jne	.LBB12_6
# BB#5:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB12_1 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-8(%rbp), %rax
	cmpl	$-1, 12(%rax)
	je	.LBB12_7
.LBB12_6:                               # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-16(%rbp), %eax
	movslq	-24(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-8(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-20(%rbp), %eax
	movslq	-24(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-8(%rbp), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
	movl	-16(%rbp), %eax
	movslq	-24(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-8(%rbp), %rcx
	addl	8(%rcx), %eax
	movl	%eax, 8(%rcx)
	movl	-20(%rbp), %eax
	movslq	-24(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-8(%rbp), %rcx
	addl	12(%rcx), %eax
	movl	%eax, 12(%rcx)
.LBB12_7:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_8
.LBB12_8:                               # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB12_1
.LBB12_9:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end12:
	.size	boundary_offset, .Lfunc_end12-boundary_offset
	.cfi_endproc

	.align	16, 0x90
	.type	find_empty_segs,@function
find_empty_segs:                        # @find_empty_segs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp44:
	.cfi_offset %rbx, -32
.Ltmp45:
	.cfi_offset %r14, -24
	movb	48(%rbp), %al
	movl	40(%rbp), %r10d
	movl	32(%rbp), %r11d
	movl	24(%rbp), %ebx
	movl	16(%rbp), %r14d
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movl	%r14d, -64(%rbp)
	movl	%ebx, -68(%rbp)
	movl	%r11d, -72(%rbp)
	movl	%r10d, -76(%rbp)
	movb	%al, -77(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movl	$-1, -116(%rbp)
	movl	$-1, -120(%rbp)
	movq	-56(%rbp), %rdx
	movl	$0, (%rdx)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	cmpl	40(%rdx), %ecx
	jl	.LBB13_2
# BB#1:                                 # %lor.lhs.false
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %edx
	movq	-24(%rbp), %rcx
	addl	48(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB13_3
.LBB13_2:                               # %if.then
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movslq	%ecx, %rax
	movq	-40(%rbp), %rsi
	movl	$0, (%rsi,%rax,4)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movslq	%ecx, %rax
	movq	-40(%rbp), %rsi
	movl	$2147483647, (%rsi,%rax,4) # imm = 0x7FFFFFFF
	jmp	.LBB13_59
.LBB13_3:                               # %if.end
	cmpl	$0, -60(%rbp)
	jne	.LBB13_8
# BB#4:                                 # %if.then.9
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.LBB13_6
# BB#5:                                 # %lor.lhs.false.11
	movl	-28(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.LBB13_7
.LBB13_6:                               # %if.then.13
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movslq	%ecx, %rax
	movq	-40(%rbp), %rsi
	movl	$0, (%rsi,%rax,4)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movslq	%ecx, %rax
	movq	-40(%rbp), %rsi
	movl	$2147483647, (%rsi,%rax,4) # imm = 0x7FFFFFFF
	jmp	.LBB13_59
.LBB13_7:                               # %if.end.20
	movl	-64(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB13_14
.LBB13_8:                               # %if.else
	cmpl	$1, -60(%rbp)
	jne	.LBB13_13
# BB#9:                                 # %if.then.22
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	44(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movl	-28(%rbp), %ecx
	cmpl	-68(%rbp), %ecx
	jl	.LBB13_11
# BB#10:                                # %lor.lhs.false.27
	movl	-28(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.LBB13_12
.LBB13_11:                              # %if.then.29
	movl	$-1, -72(%rbp)
.LBB13_12:                              # %if.end.30
	jmp	.LBB13_13
.LBB13_13:                              # %if.end.31
	jmp	.LBB13_14
.LBB13_14:                              # %if.end.32
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movslq	%ecx, %rax
	movq	-40(%rbp), %rsi
	movl	$0, (%rsi,%rax,4)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -124(%rbp)
	movq	-24(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -112(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB13_16
# BB#15:                                # %if.then.36
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	imull	32(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	-104(%rbp), %ecx
	movl	%ecx, -108(%rbp)
.LBB13_16:                              # %if.end.38
	movl	-100(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB13_17:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_31 Depth 2
                                        #     Child Loop BB13_45 Depth 2
	movl	-128(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB13_55
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB13_27
# BB#19:                                # %if.then.42
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	$64, %eax
	movl	-128(%rbp), %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-140(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	-116(%rbp), %eax
	je	.LBB13_23
# BB#20:                                # %if.then.44
                                        #   in Loop: Header=BB13_17 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.46
                                        #   in Loop: Header=BB13_17 Depth=1
	xorl	%esi, %esi
	movq	-96(%rbp), %rdi
	callq	tile_release
.LBB13_22:                              # %if.end.47
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-128(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movl	-128(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	tile_data_pointer
	movl	$64, %ecx
	movslq	-112(%rbp), %rdi
	addq	%rdi, %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	movl	-128(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -116(%rbp)
.LBB13_23:                              # %if.end.54
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	$64, %eax
	movl	-128(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-144(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	subl	%edx, %esi
	addl	%esi, %ecx
	movl	%ecx, -108(%rbp)
	movl	-104(%rbp), %ecx
	cmpl	-108(%rbp), %ecx
	jge	.LBB13_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB13_26
.LBB13_25:                              # %cond.false
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB13_26:                              # %cond.end
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)
.LBB13_27:                              # %if.end.57
                                        #   in Loop: Header=BB13_17 Depth=1
	cmpl	$1, -60(%rbp)
	jne	.LBB13_44
# BB#28:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	-108(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.LBB13_30
# BB#29:                                # %lor.lhs.false.60
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	-128(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB13_44
.LBB13_30:                              # %if.then.62
                                        #   in Loop: Header=BB13_17 Depth=1
	jmp	.LBB13_31
.LBB13_31:                              # %for.cond.63
                                        #   Parent Loop BB13_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-128(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB13_43
# BB#32:                                # %for.body.65
                                        #   in Loop: Header=BB13_31 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movzbl	-77(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB13_38
# BB#33:                                # %if.then.69
                                        #   in Loop: Header=BB13_31 Depth=2
	movl	-128(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.LBB13_36
# BB#34:                                # %land.lhs.true.72
                                        #   in Loop: Header=BB13_31 Depth=2
	movl	-128(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB13_36
# BB#35:                                # %if.then.75
                                        #   in Loop: Header=BB13_31 Depth=2
	movl	$-1, -132(%rbp)
	jmp	.LBB13_37
.LBB13_36:                              # %if.else.76
                                        #   in Loop: Header=BB13_31 Depth=2
	movl	$1, -132(%rbp)
.LBB13_37:                              # %if.end.77
                                        #   in Loop: Header=BB13_31 Depth=2
	jmp	.LBB13_39
.LBB13_38:                              # %if.else.78
                                        #   in Loop: Header=BB13_31 Depth=2
	movl	$-1, -132(%rbp)
.LBB13_39:                              # %if.end.79
                                        #   in Loop: Header=BB13_31 Depth=2
	movl	-112(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movl	-120(%rbp), %eax
	cmpl	-132(%rbp), %eax
	je	.LBB13_41
# BB#40:                                # %if.then.84
                                        #   in Loop: Header=BB13_31 Depth=2
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	movslq	%ecx, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
.LBB13_41:                              # %if.end.88
                                        #   in Loop: Header=BB13_31 Depth=2
	movl	-132(%rbp), %eax
	movl	%eax, -120(%rbp)
# BB#42:                                # %for.inc
                                        #   in Loop: Header=BB13_31 Depth=2
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB13_31
.LBB13_43:                              # %for.end
                                        #   in Loop: Header=BB13_17 Depth=1
	jmp	.LBB13_54
.LBB13_44:                              # %if.else.90
                                        #   in Loop: Header=BB13_17 Depth=1
	jmp	.LBB13_45
.LBB13_45:                              # %for.cond.91
                                        #   Parent Loop BB13_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-128(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB13_53
# BB#46:                                # %for.body.94
                                        #   in Loop: Header=BB13_45 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movzbl	-77(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB13_48
# BB#47:                                # %if.then.100
                                        #   in Loop: Header=BB13_45 Depth=2
	movl	$1, -136(%rbp)
	jmp	.LBB13_49
.LBB13_48:                              # %if.else.101
                                        #   in Loop: Header=BB13_45 Depth=2
	movl	$-1, -136(%rbp)
.LBB13_49:                              # %if.end.102
                                        #   in Loop: Header=BB13_45 Depth=2
	movl	-112(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movl	-120(%rbp), %eax
	cmpl	-136(%rbp), %eax
	je	.LBB13_51
# BB#50:                                # %if.then.107
                                        #   in Loop: Header=BB13_45 Depth=2
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	movslq	%ecx, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
.LBB13_51:                              # %if.end.111
                                        #   in Loop: Header=BB13_45 Depth=2
	movl	-136(%rbp), %eax
	movl	%eax, -120(%rbp)
# BB#52:                                # %for.inc.112
                                        #   in Loop: Header=BB13_45 Depth=2
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB13_45
.LBB13_53:                              # %for.end.114
                                        #   in Loop: Header=BB13_17 Depth=1
	jmp	.LBB13_54
.LBB13_54:                              # %if.end.115
                                        #   in Loop: Header=BB13_17 Depth=1
	jmp	.LBB13_17
.LBB13_55:                              # %for.end.116
	movl	-124(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$0, -120(%rbp)
	jle	.LBB13_57
# BB#56:                                # %if.then.119
	movl	-128(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, (%rcx)
	movslq	%edx, %rcx
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi,%rcx,4)
.LBB13_57:                              # %if.end.123
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movslq	%ecx, %rax
	movq	-40(%rbp), %rsi
	movl	$2147483647, (%rsi,%rax,4) # imm = 0x7FFFFFFF
	cmpq	$0, -96(%rbp)
	je	.LBB13_59
# BB#58:                                # %if.then.128
	xorl	%esi, %esi
	movq	-96(%rbp), %rdi
	callq	tile_release
.LBB13_59:                              # %if.end.129
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	find_empty_segs, .Lfunc_end13-find_empty_segs
	.cfi_endproc

	.align	16, 0x90
	.type	make_horiz_segs,@function
make_horiz_segs:                        # @make_horiz_segs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB14_19
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -32(%rbp)
	movl	(%rax), %edx
	movl	%edx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -32(%rbp)
	movl	(%rax), %edx
	movl	%edx, -52(%rbp)
	movl	-48(%rbp), %edx
	cmpl	-12(%rbp), %edx
	jg	.LBB14_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.LBB14_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-40(%rbp), %r9d
	callq	process_horiz_seg
	jmp	.LBB14_17
.LBB14_5:                               # %if.else
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB14_7
# BB#6:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.LBB14_9
.LBB14_7:                               # %lor.lhs.false
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB14_16
# BB#8:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB14_16
.LBB14_9:                               # %if.then.10
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %eax
	cmpl	-12(%rbp), %eax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jle	.LBB14_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB14_12
.LBB14_11:                              # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB14_12:                              # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	-20(%rbp), %edx
	movl	-52(%rbp), %ecx
	cmpl	-16(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	jge	.LBB14_14
# BB#13:                                # %cond.true.13
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB14_15
.LBB14_14:                              # %cond.false.14
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB14_15:                              # %cond.end.15
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	-20(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-72(%rbp), %esi         # 4-byte Reload
	movl	-76(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	process_horiz_seg
.LBB14_16:                              # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_17
.LBB14_17:                              # %if.end.17
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_18
.LBB14_18:                              # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_1
.LBB14_19:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	make_horiz_segs, .Lfunc_end14-make_horiz_segs
	.cfi_endproc

	.align	16, 0x90
	.type	process_horiz_seg,@function
process_horiz_seg:                      # @process_horiz_seg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$0, (%rax,%rdi,4)
	jl	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	cmpl	$0, -28(%rbp)
	setne	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	callq	boundary_add_seg
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	$-1, (%rdi,%rax,4)
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movl	-16(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
.LBB15_3:                               # %if.end
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jl	.LBB15_5
# BB#4:                                 # %if.then.14
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	callq	boundary_add_seg
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	$-1, (%rdi,%rax,4)
	jmp	.LBB15_6
.LBB15_5:                               # %if.else.21
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
.LBB15_6:                               # %if.end.25
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	callq	boundary_add_seg
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	process_horiz_seg, .Lfunc_end15-process_horiz_seg
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_xy,@function
cmp_xy:                                 # @cmp_xy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-12(%rbp), %ecx
	cmpl	-20(%rbp), %ecx
	jge	.LBB16_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB16_9
.LBB16_2:                               # %if.else
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB16_4
# BB#3:                                 # %if.then.2
	movl	$1, -4(%rbp)
	jmp	.LBB16_9
.LBB16_4:                               # %if.else.3
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB16_6
# BB#5:                                 # %if.then.5
	movl	$-1, -4(%rbp)
	jmp	.LBB16_9
.LBB16_6:                               # %if.else.6
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB16_8
# BB#7:                                 # %if.then.8
	movl	$1, -4(%rbp)
	jmp	.LBB16_9
.LBB16_8:                               # %if.else.9
	movl	$0, -4(%rbp)
.LBB16_9:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	cmp_xy, .Lfunc_end16-cmp_xy
	.cfi_endproc

	.align	16, 0x90
	.type	find_segment_with_func,@function
find_segment_with_func:                 # @find_segment_with_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$8, %eax
	movl	%eax, %r8d
	leaq	-24(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	bsearch
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB17_15
# BB#1:                                 # %if.then
	jmp	.LBB17_2
.LBB17_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	-8(%rbp), %rdx
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jbe	.LBB17_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB17_2 Depth=1
	leaq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	$-8, %rdx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	callq	*%rcx
	cmpl	$0, %eax
	sete	%r8b
	movb	%r8b, -57(%rbp)         # 1-byte Spill
.LBB17_4:                               # %land.end
                                        #   in Loop: Header=BB17_2 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_5
	jmp	.LBB17_6
.LBB17_5:                               # %while.body
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-40(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB17_2
.LBB17_6:                               # %while.end
	jmp	.LBB17_7
.LBB17_7:                               # %while.cond.7
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movslq	-12(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -58(%rbp)          # 1-byte Spill
	je	.LBB17_9
# BB#8:                                 # %land.rhs.11
                                        #   in Loop: Header=BB17_7 Depth=1
	leaq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	callq	*%rcx
	cmpl	$0, %eax
	sete	%r8b
	movb	%r8b, -58(%rbp)         # 1-byte Spill
.LBB17_9:                               # %land.end.15
                                        #   in Loop: Header=BB17_7 Depth=1
	movb	-58(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_10
	jmp	.LBB17_14
.LBB17_10:                              # %while.body.16
                                        #   in Loop: Header=BB17_7 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movb	16(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB17_12
# BB#11:                                # %if.then.17
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB17_14
.LBB17_12:                              # %if.else
                                        #   in Loop: Header=BB17_7 Depth=1
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
# BB#13:                                # %if.end
                                        #   in Loop: Header=BB17_7 Depth=1
	jmp	.LBB17_7
.LBB17_14:                              # %while.end.19
	jmp	.LBB17_15
.LBB17_15:                              # %if.end.20
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	find_segment_with_func, .Lfunc_end17-find_segment_with_func
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_segptr_xy1,@function
cmp_segptr_xy1:                         # @cmp_segptr_xy1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movl	(%rsi), %edi
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %esi
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	callq	cmp_xy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	cmp_segptr_xy1, .Lfunc_end18-cmp_segptr_xy1
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_segptr_xy2,@function
cmp_segptr_xy2:                         # @cmp_segptr_xy2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %edi
	movq	-24(%rbp), %rsi
	movl	12(%rsi), %esi
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	callq	cmp_xy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	cmp_segptr_xy2, .Lfunc_end19-cmp_segptr_xy2
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.boundary_find,@object # @__func__.boundary_find
.L__func__.boundary_find:
	.asciz	"boundary_find"
	.size	.L__func__.boundary_find, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"maskPR != NULL"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"num_segs != NULL"
	.size	.L.str.2, 17

	.type	.L__func__.boundary_sort,@object # @__func__.boundary_sort
.L__func__.boundary_sort:
	.asciz	"boundary_sort"
	.size	.L__func__.boundary_sort, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(segs == NULL && num_segs == 0) || (segs != NULL && num_segs > 0)"
	.size	.L.str.3, 66

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"num_groups != NULL"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"sort_boundary(): Unconnected boundary group!"
	.size	.L.str.5, 45

	.type	.L__func__.boundary_simplify,@object # @__func__.boundary_simplify
.L__func__.boundary_simplify:
	.asciz	"boundary_simplify"
	.size	.L__func__.boundary_simplify, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(sorted_segs == NULL && num_groups == 0) || (sorted_segs != NULL && num_groups > 0)"
	.size	.L.str.6, 84


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
