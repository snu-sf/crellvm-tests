	.text
	.file	"gimppreviewcache.bc"
	.globl	gimp_preview_cache_invalidate
	.align	16, 0x90
	.type	gimp_preview_cache_invalidate,@function
gimp_preview_cache_invalidate:          # @gimp_preview_cache_invalidate
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
	subq	$16, %rsp
	movabsq	$temp_buf_free, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, %rsi
	callq	g_slist_free_full
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_preview_cache_invalidate, .Lfunc_end0-gimp_preview_cache_invalidate
	.cfi_endproc

	.globl	gimp_preview_cache_add
	.align	16, 0x90
	.type	gimp_preview_cache_add,@function
gimp_preview_cache_add:                 # @gimp_preview_cache_add
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	g_slist_length
	cmpl	$5, %eax
	jb	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	preview_cache_remove_smallest
.LBB1_2:                                # %if.end
	movabsq	$preview_cache_compare, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_insert_sorted
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_preview_cache_add, .Lfunc_end1-gimp_preview_cache_add
	.cfi_endproc

	.align	16, 0x90
	.type	preview_cache_remove_smallest,@function
preview_cache_remove_smallest:          # @preview_cache_remove_smallest
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB2_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_7
.LBB2_4:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	imull	4(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB2_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB2_6:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.7
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_8
.LBB2_8:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_1
.LBB2_9:                                # %for.end
	cmpq	$0, -24(%rbp)
	je	.LBB2_11
# BB#10:                                # %if.then.9
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rdi
	callq	temp_buf_free
.LBB2_11:                               # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	preview_cache_remove_smallest, .Lfunc_end2-preview_cache_remove_smallest
	.cfi_endproc

	.align	16, 0x90
	.type	preview_cache_compare,@function
preview_cache_compare:                  # @preview_cache_compare
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movl	4(%rsi), %eax
	movq	-40(%rbp), %rsi
	cmpl	4(%rsi), %eax
	jle	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	8(%rax), %ecx
	jle	.LBB3_3
# BB#2:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB3_4
.LBB3_3:                                # %if.end
	movl	$1, -4(%rbp)
.LBB3_4:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	preview_cache_compare, .Lfunc_end3-preview_cache_compare
	.cfi_endproc

	.globl	gimp_preview_cache_get
	.align	16, 0x90
	.type	gimp_preview_cache_get,@function
gimp_preview_cache_get:                 # @gimp_preview_cache_get
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
	subq	$128, %rsp
	movabsq	$preview_cache_find_exact, %rax
	leaq	-40(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	$0, -40(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -32(%rbp)
	movl	-24(%rbp), %edx
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_slist_foreach
	cmpq	$0, -40(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_23
.LBB4_2:                                # %if.end
	movabsq	$preview_cache_find_biggest, %rsi
	leaq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, %rdx
	callq	g_slist_foreach
	cmpq	$0, -40(%rbp)
	je	.LBB4_22
# BB#3:                                 # %if.then.7
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-40(%rbp), %rdx
	movl	4(%rdx), %ecx
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rdx
	movl	8(%rdx), %ecx
	movl	%ecx, -56(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movq	-40(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	%rax, -48(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB4_5
# BB#4:                                 # %if.then.14
	cvtsi2sdl	-52(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB4_6:                                # %if.end.16
	cmpl	$0, -24(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.18
	cvtsi2sdl	-56(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.22
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB4_9:                                # %if.end.23
	movq	-40(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -88(%rbp)
	movl	$0, -92(%rbp)
.LBB4_10:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_14 Depth 3
	movl	-92(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB4_21
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	$0, -96(%rbp)
.LBB4_12:                               # %for.cond.28
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
	movl	-96(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_19
# BB#13:                                # %for.body.31
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	-80(%rbp), %rax
	cvtsi2sdl	-96(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-48(%rbp), %rdx
	imull	(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	cvtsi2sdl	-92(%rbp), %xmm0
	mulsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	imull	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	imull	(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movl	-96(%rbp), %ecx
	movl	-92(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %ecx
	movq	-48(%rbp), %rdx
	imull	(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movl	$0, -100(%rbp)
.LBB4_14:                               # %for.cond.49
                                        #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-100(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB4_17
# BB#15:                                # %for.body.53
                                        #   in Loop: Header=BB4_14 Depth=3
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	movb	%dl, (%rax)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=3
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB4_14
.LBB4_17:                               # %for.end
                                        #   in Loop: Header=BB4_12 Depth=2
	jmp	.LBB4_18
.LBB4_18:                               # %for.inc.55
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB4_12
.LBB4_19:                               # %for.end.57
                                        #   in Loop: Header=BB4_10 Depth=1
	jmp	.LBB4_20
.LBB4_20:                               # %for.inc.58
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB4_10
.LBB4_21:                               # %for.end.60
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_preview_cache_add
	movq	-48(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	jmp	.LBB4_23
.LBB4_22:                               # %if.end.61
	movq	$0, -8(%rbp)
.LBB4_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_preview_cache_get, .Lfunc_end4-gimp_preview_cache_get
	.cfi_endproc

	.align	16, 0x90
	.type	preview_cache_find_exact,@function
preview_cache_find_exact:               # @preview_cache_find_exact
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_5
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	8(%rax), %ecx
	jne	.LBB5_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	12(%rax), %ecx
	jne	.LBB5_5
# BB#4:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB5_5:                                # %if.end.7
	popq	%rbp
	retq
.Lfunc_end5:
	.size	preview_cache_find_exact, .Lfunc_end5-preview_cache_find_exact
	.cfi_endproc

	.align	16, 0x90
	.type	preview_cache_find_biggest,@function
preview_cache_find_biggest:             # @preview_cache_find_biggest
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %eax
	movq	-32(%rbp), %rsi
	cmpl	8(%rsi), %eax
	jl	.LBB6_8
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	12(%rax), %ecx
	jl	.LBB6_8
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_7
# BB#3:                                 # %if.then.5
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	4(%rax), %ecx
	jle	.LBB6_6
# BB#4:                                 # %land.lhs.true.10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	8(%rax), %ecx
	jle	.LBB6_6
# BB#5:                                 # %if.then.15
	jmp	.LBB6_8
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.16
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB6_8:                                # %if.end.18
	popq	%rbp
	retq
.Lfunc_end6:
	.size	preview_cache_find_biggest, .Lfunc_end6-preview_cache_find_biggest
	.cfi_endproc

	.globl	gimp_preview_cache_get_memsize
	.align	16, 0x90
	.type	gimp_preview_cache_get_memsize,@function
gimp_preview_cache_get_memsize:         # @gimp_preview_cache_get_memsize
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_7
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB7_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	temp_buf_get_memsize
	addq	$16, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_preview_cache_get_memsize, .Lfunc_end7-gimp_preview_cache_get_memsize
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
