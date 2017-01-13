	.text
	.file	"gimphistogram.bc"
	.globl	gimp_histogram_new
	.align	16, 0x90
	.type	gimp_histogram_new,@function
gimp_histogram_new:                     # @gimp_histogram_new
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
	movl	$200, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_static_mutex_init
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_histogram_new, .Lfunc_end0-gimp_histogram_new
	.cfi_endproc

	.globl	gimp_histogram_ref
	.align	16, 0x90
	.type	gimp_histogram_ref,@function
gimp_histogram_ref:                     # @gimp_histogram_ref
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_ref, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_6
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_histogram_ref, .Lfunc_end1-gimp_histogram_ref
	.cfi_endproc

	.globl	gimp_histogram_unref
	.align	16, 0x90
	.type	gimp_histogram_unref,@function
gimp_histogram_unref:                   # @gimp_histogram_unref
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_unref, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_9
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB2_9
# BB#6:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	gimp_histogram_free_values
# BB#7:                                 # %do.body.4
	movl	$200, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#8:                                 # %do.end.5
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_histogram_unref, .Lfunc_end2-gimp_histogram_unref
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_free_values,@function
gimp_histogram_free_values:             # @gimp_histogram_free_values
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -12(%rbp)
	jge	.LBB3_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 72(%rcx,%rax,8)
	je	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	$0, 72(%rcx,%rax,8)
.LBB3_4:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_1
.LBB3_6:                                # %for.end
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_histogram_free_values, .Lfunc_end3-gimp_histogram_free_values
	.cfi_endproc

	.globl	gimp_histogram_duplicate
	.align	16, 0x90
	.type	gimp_histogram_duplicate,@function
gimp_histogram_duplicate:               # @gimp_histogram_duplicate
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_duplicate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	callq	gimp_histogram_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_static_mutex_get_mutex_impl
	movq	%rax, %rdi
	callq	g_mutex_lock
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdi
	movslq	4(%rdi), %rdi
	shlq	$3, %rdi
	shlq	$8, %rdi
	movl	%edi, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	g_memdup
	movq	-24(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_static_mutex_get_mutex_impl
	movq	%rax, %rdi
	callq	g_mutex_unlock
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_histogram_duplicate, .Lfunc_end4-gimp_histogram_duplicate
	.cfi_endproc

	.globl	gimp_histogram_calculate
	.align	16, 0x90
	.type	gimp_histogram_calculate,@function
gimp_histogram_calculate:               # @gimp_histogram_calculate
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_calculate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	cmpq	$0, -16(%rbp)
	jne	.LBB5_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rdi
	callq	gimp_histogram_free_values
	jmp	.LBB5_23
.LBB5_7:                                # %if.end.2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	52(%rax), %esi
	callq	gimp_histogram_alloc_values
	movl	$0, -28(%rbp)
.LBB5_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -28(%rbp)
	jge	.LBB5_13
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB5_8 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 72(%rcx,%rax,8)
	je	.LBB5_11
# BB#10:                                # %if.then.5
                                        #   in Loop: Header=BB5_8 Depth=1
	xorl	%esi, %esi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx,%rax,8), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %edx
	shll	$8, %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
.LBB5_11:                               # %if.end.10
                                        #   in Loop: Header=BB5_8 Depth=1
	jmp	.LBB5_12
.LBB5_12:                               # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_8
.LBB5_13:                               # %for.end
	movabsq	$gimp_histogram_calculate_sub_region, %rax
	movl	$2, %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	pixel_regions_process_parallel
	movl	$1, -28(%rbp)
.LBB5_14:                               # %for.cond.11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_17 Depth 2
	cmpl	$16, -28(%rbp)
	jge	.LBB5_23
# BB#15:                                # %for.body.14
                                        #   in Loop: Header=BB5_14 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 72(%rcx,%rax,8)
	je	.LBB5_21
# BB#16:                                # %if.then.19
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	$0, -32(%rbp)
.LBB5_17:                               # %for.cond.20
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %edx
	shll	$8, %edx
	cmpl	%edx, %eax
	jge	.LBB5_20
# BB#18:                                # %for.body.25
                                        #   in Loop: Header=BB5_17 Depth=2
	movslq	-32(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	72(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	addsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
# BB#19:                                # %for.inc.35
                                        #   in Loop: Header=BB5_17 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB5_17
.LBB5_20:                               # %for.end.37
                                        #   in Loop: Header=BB5_14 Depth=1
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.38
                                        #   in Loop: Header=BB5_14 Depth=1
	jmp	.LBB5_22
.LBB5_22:                               # %for.inc.39
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_14
.LBB5_23:                               # %for.end.41
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_histogram_calculate, .Lfunc_end5-gimp_histogram_calculate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_alloc_values,@function
gimp_histogram_alloc_values:            # @gimp_histogram_alloc_values
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	addl	$1, %esi
	movq	-8(%rbp), %rdi
	cmpl	4(%rdi), %esi
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_histogram_free_values
	movl	$8, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %eax
	shll	$8, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	-8(%rbp), %rsi
	movq	%rax, 72(%rsi)
.LBB6_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_histogram_alloc_values, .Lfunc_end6-gimp_histogram_alloc_values
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gimp_histogram_calculate_sub_region,@function
gimp_histogram_calculate_sub_region:    # @gimp_histogram_calculate_sub_region
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -80(%rbp)
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rdi
	callq	g_static_mutex_get_mutex_impl
	movq	%rax, %rdi
	callq	g_mutex_lock
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpb	$0, 56(%rcx,%rax)
	je	.LBB7_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB7_1
.LBB7_3:                                # %while.end
	movslq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movslq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$1, 56(%rcx,%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_static_mutex_get_mutex_impl
	movq	%rax, %rdi
	callq	g_mutex_unlock
	cmpq	$0, -64(%rbp)
	jne	.LBB7_5
# BB#4:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %eax
	shll	$8, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movslq	-80(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	%rax, 72(%rsi,%rcx,8)
	movslq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)
.LBB7_5:                                # %if.end
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -68(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_48
# BB#6:                                 # %if.then.19
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	ja	.LBB7_47
# BB#92:                                # %if.then.19
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_7:                                # %sw.bb
	jmp	.LBB7_8
.LBB7_8:                                # %while.cond.21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB7_13
# BB#9:                                 # %while.body.23
                                        #   in Loop: Header=BB7_8 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB7_10:                               # %while.cond.25
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB7_12
# BB#11:                                # %while.body.28
                                        #   in Loop: Header=BB7_10 Depth=2
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB7_10
.LBB7_12:                               # %while.end.38
                                        #   in Loop: Header=BB7_8 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_8
.LBB7_13:                               # %while.end.43
	jmp	.LBB7_47
.LBB7_14:                               # %sw.bb.44
	jmp	.LBB7_15
.LBB7_15:                               # %while.cond.45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB7_20
# BB#16:                                # %while.body.48
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB7_17:                               # %while.cond.50
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB7_19
# BB#18:                                # %while.body.53
                                        #   in Loop: Header=BB7_17 Depth=2
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-96(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	$256, %ecx              # imm = 0x100
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB7_17
.LBB7_19:                               # %while.end.78
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_15
.LBB7_20:                               # %while.end.85
	jmp	.LBB7_47
.LBB7_21:                               # %sw.bb.86
	jmp	.LBB7_22
.LBB7_22:                               # %while.cond.87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB7_33
# BB#23:                                # %while.body.90
                                        #   in Loop: Header=BB7_22 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB7_24:                               # %while.cond.92
                                        #   Parent Loop BB7_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB7_32
# BB#25:                                # %while.body.95
                                        #   in Loop: Header=BB7_24 Depth=2
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$256, %ecx              # imm = 0x100
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	$512, %ecx              # imm = 0x200
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %ecx
	addl	$768, %ecx              # imm = 0x300
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	jle	.LBB7_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB7_24 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB7_28
.LBB7_27:                               # %cond.false
                                        #   in Loop: Header=BB7_24 Depth=2
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
.LBB7_28:                               # %cond.end
                                        #   in Loop: Header=BB7_24 Depth=2
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-56(%rbp), %rcx
	movzbl	2(%rcx), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB7_30
# BB#29:                                # %if.then.132
                                        #   in Loop: Header=BB7_24 Depth=2
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	jmp	.LBB7_31
.LBB7_30:                               # %if.else
                                        #   in Loop: Header=BB7_24 Depth=2
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm0
	movsd	%xmm0, (%rdx,%rcx,8)
.LBB7_31:                               # %if.end.143
                                        #   in Loop: Header=BB7_24 Depth=2
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB7_24
.LBB7_32:                               # %while.end.146
                                        #   in Loop: Header=BB7_22 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_22
.LBB7_33:                               # %while.end.153
	jmp	.LBB7_47
.LBB7_34:                               # %sw.bb.154
	jmp	.LBB7_35
.LBB7_35:                               # %while.cond.155
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB7_46
# BB#36:                                # %while.body.158
                                        #   in Loop: Header=BB7_35 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB7_37:                               # %while.cond.160
                                        #   Parent Loop BB7_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB7_45
# BB#38:                                # %while.body.163
                                        #   in Loop: Header=BB7_37 Depth=2
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-56(%rbp), %rax
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$256, %ecx              # imm = 0x100
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	$512, %ecx              # imm = 0x200
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %ecx
	addl	$768, %ecx              # imm = 0x300
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	3(%rax), %ecx
	addl	$1024, %ecx             # imm = 0x400
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	jle	.LBB7_40
# BB#39:                                # %cond.true.207
                                        #   in Loop: Header=BB7_37 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB7_41
.LBB7_40:                               # %cond.false.210
                                        #   in Loop: Header=BB7_37 Depth=2
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
.LBB7_41:                               # %cond.end.213
                                        #   in Loop: Header=BB7_37 Depth=2
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-56(%rbp), %rcx
	movzbl	2(%rcx), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB7_43
# BB#42:                                # %if.then.219
                                        #   in Loop: Header=BB7_37 Depth=2
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	jmp	.LBB7_44
.LBB7_43:                               # %if.else.227
                                        #   in Loop: Header=BB7_37 Depth=2
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movl	-76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm0
	movsd	%xmm0, (%rdx,%rcx,8)
.LBB7_44:                               # %if.end.233
                                        #   in Loop: Header=BB7_37 Depth=2
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB7_37
.LBB7_45:                               # %while.end.236
                                        #   in Loop: Header=BB7_35 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_35
.LBB7_46:                               # %while.end.243
	jmp	.LBB7_47
.LBB7_47:                               # %sw.epilog
	jmp	.LBB7_90
.LBB7_48:                               # %if.else.244
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	ja	.LBB7_89
# BB#91:                                # %if.else.244
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_49:                               # %sw.bb.247
	jmp	.LBB7_50
.LBB7_50:                               # %while.cond.248
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_52 Depth 2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB7_55
# BB#51:                                # %while.body.251
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB7_52:                               # %while.cond.253
                                        #   Parent Loop BB7_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB7_54
# BB#53:                                # %while.body.256
                                        #   in Loop: Header=BB7_52 Depth=2
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB7_52
.LBB7_54:                               # %while.end.264
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_50
.LBB7_55:                               # %while.end.268
	jmp	.LBB7_89
.LBB7_56:                               # %sw.bb.269
	jmp	.LBB7_57
.LBB7_57:                               # %while.cond.270
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_59 Depth 2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB7_62
# BB#58:                                # %while.body.273
                                        #   in Loop: Header=BB7_57 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB7_59:                               # %while.cond.275
                                        #   Parent Loop BB7_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB7_61
# BB#60:                                # %while.body.278
                                        #   in Loop: Header=BB7_59 Depth=2
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movl	$255, %eax
	movq	-56(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-184(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdi
	addsd	(%rdi,%rcx,8), %xmm1
	movsd	%xmm1, (%rdi,%rcx,8)
	movq	-56(%rbp), %rcx
	movzbl	1(%rcx), %eax
	addl	$256, %eax              # imm = 0x100
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdi
	addsd	(%rdi,%rcx,8), %xmm0
	movsd	%xmm0, (%rdi,%rcx,8)
	movq	-56(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB7_59
.LBB7_61:                               # %while.end.297
                                        #   in Loop: Header=BB7_57 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_57
.LBB7_62:                               # %while.end.301
	jmp	.LBB7_89
.LBB7_63:                               # %sw.bb.302
	jmp	.LBB7_64
.LBB7_64:                               # %while.cond.303
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_66 Depth 2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB7_75
# BB#65:                                # %while.body.306
                                        #   in Loop: Header=BB7_64 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB7_66:                               # %while.cond.308
                                        #   Parent Loop BB7_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB7_74
# BB#67:                                # %while.body.311
                                        #   in Loop: Header=BB7_66 Depth=2
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$256, %ecx              # imm = 0x100
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	movaps	%xmm0, %xmm1
	addsd	(%rdx,%rax,8), %xmm1
	movsd	%xmm1, (%rdx,%rax,8)
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	$512, %ecx              # imm = 0x200
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	movaps	%xmm0, %xmm1
	addsd	(%rdx,%rax,8), %xmm1
	movsd	%xmm1, (%rdx,%rax,8)
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %ecx
	addl	$768, %ecx              # imm = 0x300
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	jle	.LBB7_69
# BB#68:                                # %cond.true.336
                                        #   in Loop: Header=BB7_66 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB7_70
.LBB7_69:                               # %cond.false.339
                                        #   in Loop: Header=BB7_66 Depth=2
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
.LBB7_70:                               # %cond.end.342
                                        #   in Loop: Header=BB7_66 Depth=2
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-56(%rbp), %rcx
	movzbl	2(%rcx), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB7_72
# BB#71:                                # %if.then.348
                                        #   in Loop: Header=BB7_66 Depth=2
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	jmp	.LBB7_73
.LBB7_72:                               # %if.else.355
                                        #   in Loop: Header=BB7_66 Depth=2
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movl	-76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm0
	movsd	%xmm0, (%rdx,%rcx,8)
.LBB7_73:                               # %if.end.360
                                        #   in Loop: Header=BB7_66 Depth=2
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB7_66
.LBB7_74:                               # %while.end.362
                                        #   in Loop: Header=BB7_64 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_64
.LBB7_75:                               # %while.end.366
	jmp	.LBB7_89
.LBB7_76:                               # %sw.bb.367
	jmp	.LBB7_77
.LBB7_77:                               # %while.cond.368
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_79 Depth 2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB7_88
# BB#78:                                # %while.body.371
                                        #   in Loop: Header=BB7_77 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB7_79:                               # %while.cond.373
                                        #   Parent Loop BB7_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB7_87
# BB#80:                                # %while.body.376
                                        #   in Loop: Header=BB7_79 Depth=2
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movl	$255, %eax
	movq	-56(%rbp), %rcx
	movzbl	3(%rcx), %edx
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-192(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %eax
	addl	$256, %eax              # imm = 0x100
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdi
	addsd	(%rdi,%rcx,8), %xmm1
	movsd	%xmm1, (%rdi,%rcx,8)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-56(%rbp), %rcx
	movzbl	1(%rcx), %eax
	addl	$512, %eax              # imm = 0x200
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdi
	addsd	(%rdi,%rcx,8), %xmm1
	movsd	%xmm1, (%rdi,%rcx,8)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-56(%rbp), %rcx
	movzbl	2(%rcx), %eax
	addl	$768, %eax              # imm = 0x300
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdi
	addsd	(%rdi,%rcx,8), %xmm1
	movsd	%xmm1, (%rdi,%rcx,8)
	movq	-56(%rbp), %rcx
	movzbl	3(%rcx), %eax
	addl	$1024, %eax             # imm = 0x400
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdi
	addsd	(%rdi,%rcx,8), %xmm0
	movsd	%xmm0, (%rdi,%rcx,8)
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %eax
	movq	-56(%rbp), %rcx
	movzbl	1(%rcx), %r8d
	cmpl	%r8d, %eax
	jle	.LBB7_82
# BB#81:                                # %cond.true.412
                                        #   in Loop: Header=BB7_79 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB7_83
.LBB7_82:                               # %cond.false.415
                                        #   in Loop: Header=BB7_79 Depth=2
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
.LBB7_83:                               # %cond.end.418
                                        #   in Loop: Header=BB7_79 Depth=2
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-56(%rbp), %rcx
	movzbl	2(%rcx), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB7_85
# BB#84:                                # %if.then.424
                                        #   in Loop: Header=BB7_79 Depth=2
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	jmp	.LBB7_86
.LBB7_85:                               # %if.else.431
                                        #   in Loop: Header=BB7_79 Depth=2
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm0
	movsd	%xmm0, (%rdx,%rcx,8)
.LBB7_86:                               # %if.end.436
                                        #   in Loop: Header=BB7_79 Depth=2
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB7_79
.LBB7_87:                               # %while.end.438
                                        #   in Loop: Header=BB7_77 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_77
.LBB7_88:                               # %while.end.442
	jmp	.LBB7_89
.LBB7_89:                               # %sw.epilog.443
	jmp	.LBB7_90
.LBB7_90:                               # %if.end.444
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_static_mutex_get_mutex_impl
	movq	%rax, %rdi
	callq	g_mutex_lock
	movslq	-80(%rbp), %rax
	movq	-8(%rbp), %rdi
	movb	$0, 56(%rdi,%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_static_mutex_get_mutex_impl
	movq	%rax, %rdi
	callq	g_mutex_unlock
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_histogram_calculate_sub_region, .Lfunc_end7-gimp_histogram_calculate_sub_region
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_49
	.quad	.LBB7_56
	.quad	.LBB7_63
	.quad	.LBB7_76
.LJTI7_1:
	.quad	.LBB7_7
	.quad	.LBB7_14
	.quad	.LBB7_21
	.quad	.LBB7_34

	.text
	.globl	gimp_histogram_get_maximum
	.align	16, 0x90
	.type	gimp_histogram_get_maximum,@function
gimp_histogram_get_maximum:             # @gimp_histogram_get_maximum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_get_maximum, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_36
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movq	-16(%rbp), %rax
	cmpl	$3, 4(%rax)
	jne	.LBB8_8
# BB#6:                                 # %land.lhs.true
	cmpl	$4, -20(%rbp)
	jne	.LBB8_8
# BB#7:                                 # %if.then.3
	movl	$1, -20(%rbp)
.LBB8_8:                                # %if.end.4
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB8_11
# BB#9:                                 # %lor.lhs.false
	cmpl	$5, -20(%rbp)
	je	.LBB8_12
# BB#10:                                # %land.lhs.true.6
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jb	.LBB8_12
.LBB8_11:                               # %if.then.9
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_36
.LBB8_12:                               # %if.end.10
	cmpl	$5, -20(%rbp)
	jne	.LBB8_27
# BB#13:                                # %if.then.12
	movl	$0, -36(%rbp)
.LBB8_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB8_26
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB8_14 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	ucomisd	(%rdx,%rcx,8), %xmm0
	jbe	.LBB8_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB8_14 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB8_18
.LBB8_17:                               # %cond.false
                                        #   in Loop: Header=BB8_14 Depth=1
	movl	-36(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB8_18:                               # %cond.end
                                        #   in Loop: Header=BB8_14 Depth=1
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	ucomisd	(%rdx,%rcx,8), %xmm0
	jbe	.LBB8_20
# BB#19:                                # %cond.true.29
                                        #   in Loop: Header=BB8_14 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB8_21
.LBB8_20:                               # %cond.false.30
                                        #   in Loop: Header=BB8_14 Depth=1
	movl	-36(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB8_21:                               # %cond.end.36
                                        #   in Loop: Header=BB8_14 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	$768, %eax              # imm = 0x300
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	ucomisd	(%rdx,%rcx,8), %xmm0
	jbe	.LBB8_23
# BB#22:                                # %cond.true.44
                                        #   in Loop: Header=BB8_14 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB8_24
.LBB8_23:                               # %cond.false.45
                                        #   in Loop: Header=BB8_14 Depth=1
	movl	-36(%rbp), %eax
	addl	$768, %eax              # imm = 0x300
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB8_24:                               # %cond.end.51
                                        #   in Loop: Header=BB8_14 Depth=1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB8_14 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_14
.LBB8_26:                               # %for.end
	jmp	.LBB8_35
.LBB8_27:                               # %if.else.53
	movl	$0, -36(%rbp)
.LBB8_28:                               # %for.cond.54
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB8_34
# BB#29:                                # %for.body.56
                                        #   in Loop: Header=BB8_28 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	shll	$8, %eax
	addl	-36(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	ucomisd	(%rdx,%rcx,8), %xmm0
	jbe	.LBB8_31
# BB#30:                                # %cond.true.63
                                        #   in Loop: Header=BB8_28 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB8_32
.LBB8_31:                               # %cond.false.64
                                        #   in Loop: Header=BB8_28 Depth=1
	movl	-20(%rbp), %eax
	shll	$8, %eax
	addl	-36(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB8_32:                               # %cond.end.71
                                        #   in Loop: Header=BB8_28 Depth=1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
# BB#33:                                # %for.inc.73
                                        #   in Loop: Header=BB8_28 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_28
.LBB8_34:                               # %for.end.75
	jmp	.LBB8_35
.LBB8_35:                               # %if.end.76
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB8_36:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_histogram_get_maximum, .Lfunc_end8-gimp_histogram_get_maximum
	.cfi_endproc

	.globl	gimp_histogram_get_value
	.align	16, 0x90
	.type	gimp_histogram_get_value,@function
gimp_histogram_get_value:               # @gimp_histogram_get_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_get_value, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB9_25
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movq	-16(%rbp), %rax
	cmpl	$3, 4(%rax)
	jne	.LBB9_8
# BB#6:                                 # %land.lhs.true
	cmpl	$4, -20(%rbp)
	jne	.LBB9_8
# BB#7:                                 # %if.then.3
	movl	$1, -20(%rbp)
.LBB9_8:                                # %if.end.4
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB9_15
# BB#9:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jl	.LBB9_15
# BB#10:                                # %lor.lhs.false.6
	cmpl	$256, -24(%rbp)         # imm = 0x100
	jge	.LBB9_15
# BB#11:                                # %lor.lhs.false.8
	cmpl	$5, -20(%rbp)
	jne	.LBB9_13
# BB#12:                                # %land.lhs.true.10
	movq	-16(%rbp), %rax
	cmpl	$4, 4(%rax)
	jl	.LBB9_15
.LBB9_13:                               # %lor.lhs.false.13
	cmpl	$5, -20(%rbp)
	je	.LBB9_16
# BB#14:                                # %land.lhs.true.15
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jb	.LBB9_16
.LBB9_15:                               # %if.then.18
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB9_25
.LBB9_16:                               # %if.end.19
	cmpl	$5, -20(%rbp)
	jne	.LBB9_24
# BB#17:                                # %if.then.21
	movl	-24(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-24(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_19
# BB#18:                                # %cond.true
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB9_20
.LBB9_19:                               # %cond.false
	movl	-24(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB9_20:                               # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-24(%rbp), %eax
	addl	$768, %eax              # imm = 0x300
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_22
# BB#21:                                # %cond.true.42
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB9_23
.LBB9_22:                               # %cond.false.43
	movl	-24(%rbp), %eax
	addl	$768, %eax              # imm = 0x300
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB9_23:                               # %cond.end.49
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB9_25
.LBB9_24:                               # %if.else.51
	movl	-20(%rbp), %eax
	shll	$8, %eax
	addl	-24(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB9_25:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_histogram_get_value, .Lfunc_end9-gimp_histogram_get_value
	.cfi_endproc

	.globl	gimp_histogram_get_channel
	.align	16, 0x90
	.type	gimp_histogram_get_channel,@function
gimp_histogram_get_channel:             # @gimp_histogram_get_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_get_channel, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB10_8
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$3, 4(%rax)
	jle	.LBB10_7
# BB#6:                                 # %if.then.2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB10_7:                               # %if.end.3
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gimp_histogram_get_value
	movsd	%xmm0, -8(%rbp)
.LBB10_8:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_histogram_get_channel, .Lfunc_end10-gimp_histogram_get_channel
	.cfi_endproc

	.globl	gimp_histogram_n_channels
	.align	16, 0x90
	.type	gimp_histogram_n_channels,@function
gimp_histogram_n_channels:              # @gimp_histogram_n_channels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_n_channels, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_6
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -4(%rbp)
.LBB11_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_histogram_n_channels, .Lfunc_end11-gimp_histogram_n_channels
	.cfi_endproc

	.globl	gimp_histogram_get_count
	.align	16, 0x90
	.type	gimp_histogram_get_count,@function
gimp_histogram_get_count:               # @gimp_histogram_get_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_get_count, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB12_31
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$3, 4(%rax)
	jne	.LBB12_8
# BB#6:                                 # %land.lhs.true
	cmpl	$4, -20(%rbp)
	jne	.LBB12_8
# BB#7:                                 # %if.then.3
	movl	$1, -20(%rbp)
.LBB12_8:                               # %if.end.4
	cmpl	$5, -20(%rbp)
	jne	.LBB12_10
# BB#9:                                 # %if.then.6
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	gimp_histogram_get_count
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	gimp_histogram_get_count
	movl	$3, %esi
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	gimp_histogram_get_count
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB12_31
.LBB12_10:                              # %if.end.10
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB12_13
# BB#11:                                # %lor.lhs.false
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB12_13
# BB#12:                                # %lor.lhs.false.12
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jb	.LBB12_14
.LBB12_13:                              # %if.then.15
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB12_31
.LBB12_14:                              # %if.end.16
	cmpl	$255, -24(%rbp)
	jle	.LBB12_16
# BB#15:                                # %cond.true
	movl	$255, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB12_20
.LBB12_16:                              # %cond.false
	cmpl	$0, -24(%rbp)
	jge	.LBB12_18
# BB#17:                                # %cond.true.19
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB12_19
.LBB12_18:                              # %cond.false.20
	movl	-24(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB12_19:                              # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB12_20:                              # %cond.end.21
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	cmpl	$255, -28(%rbp)
	jle	.LBB12_22
# BB#21:                                # %cond.true.24
	movl	$255, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB12_26
.LBB12_22:                              # %cond.false.25
	cmpl	$0, -28(%rbp)
	jge	.LBB12_24
# BB#23:                                # %cond.true.27
	xorl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB12_25
.LBB12_24:                              # %cond.false.28
	movl	-28(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB12_25:                              # %cond.end.29
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB12_26:                              # %cond.end.31
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB12_27:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB12_30
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB12_27 Depth=1
	movl	-20(%rbp), %eax
	shll	$8, %eax
	addl	-32(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# BB#29:                                # %for.inc
                                        #   in Loop: Header=BB12_27 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB12_27
.LBB12_30:                              # %for.end
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB12_31:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_histogram_get_count, .Lfunc_end12-gimp_histogram_get_count
	.cfi_endproc

	.globl	gimp_histogram_get_mean
	.align	16, 0x90
	.type	gimp_histogram_get_mean,@function
gimp_histogram_get_mean:                # @gimp_histogram_get_mean
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_get_mean, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB13_41
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$3, 4(%rax)
	jne	.LBB13_8
# BB#6:                                 # %land.lhs.true
	cmpl	$4, -20(%rbp)
	jne	.LBB13_8
# BB#7:                                 # %if.then.3
	movl	$1, -20(%rbp)
.LBB13_8:                               # %if.end.4
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB13_14
# BB#9:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB13_14
# BB#10:                                # %lor.lhs.false.6
	cmpl	$5, -20(%rbp)
	jne	.LBB13_12
# BB#11:                                # %land.lhs.true.8
	movq	-16(%rbp), %rax
	cmpl	$4, 4(%rax)
	jl	.LBB13_14
.LBB13_12:                              # %lor.lhs.false.11
	cmpl	$5, -20(%rbp)
	je	.LBB13_15
# BB#13:                                # %land.lhs.true.13
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jb	.LBB13_15
.LBB13_14:                              # %if.then.16
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB13_41
.LBB13_15:                              # %if.end.17
	cmpl	$255, -24(%rbp)
	jle	.LBB13_17
# BB#16:                                # %cond.true
	movl	$255, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB13_21
.LBB13_17:                              # %cond.false
	cmpl	$0, -24(%rbp)
	jge	.LBB13_19
# BB#18:                                # %cond.true.20
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB13_20
.LBB13_19:                              # %cond.false.21
	movl	-24(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB13_20:                              # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB13_21:                              # %cond.end.22
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	cmpl	$255, -28(%rbp)
	jle	.LBB13_23
# BB#22:                                # %cond.true.25
	movl	$255, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB13_27
.LBB13_23:                              # %cond.false.26
	cmpl	$0, -28(%rbp)
	jge	.LBB13_25
# BB#24:                                # %cond.true.28
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB13_26
.LBB13_25:                              # %cond.false.29
	movl	-28(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB13_26:                              # %cond.end.30
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB13_27:                              # %cond.end.32
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	cmpl	$5, -20(%rbp)
	jne	.LBB13_33
# BB#28:                                # %if.then.35
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB13_29:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB13_32
# BB#30:                                # %for.body
                                        #   in Loop: Header=BB13_29 Depth=1
	cvtsi2sdl	-32(%rbp), %xmm0
	movl	-32(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	mulsd	(%rdx,%rcx,8), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	movl	-32(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	mulsd	(%rdx,%rcx,8), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	movl	-32(%rbp), %eax
	addl	$768, %eax              # imm = 0x300
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	mulsd	(%rdx,%rcx,8), %xmm1
	addsd	%xmm1, %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# BB#31:                                # %for.inc
                                        #   in Loop: Header=BB13_29 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB13_29
.LBB13_32:                              # %for.end
	jmp	.LBB13_38
.LBB13_33:                              # %if.else.57
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB13_34:                              # %for.cond.58
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB13_37
# BB#35:                                # %for.body.61
                                        #   in Loop: Header=BB13_34 Depth=1
	cvtsi2sdl	-32(%rbp), %xmm0
	movl	-20(%rbp), %eax
	shll	$8, %eax
	addl	-32(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	mulsd	(%rdx,%rcx,8), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# BB#36:                                # %for.inc.71
                                        #   in Loop: Header=BB13_34 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB13_34
.LBB13_37:                              # %for.end.73
	jmp	.LBB13_38
.LBB13_38:                              # %if.end.74
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	gimp_histogram_get_count
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_40
# BB#39:                                # %if.then.77
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB13_41
.LBB13_40:                              # %if.end.78
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB13_41:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_histogram_get_mean, .Lfunc_end13-gimp_histogram_get_mean
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_histogram_get_median
	.align	16, 0x90
	.type	gimp_histogram_get_median,@function
gimp_histogram_get_median:              # @gimp_histogram_get_median
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_get_median, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB14_43
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$3, 4(%rax)
	jne	.LBB14_8
# BB#6:                                 # %land.lhs.true
	cmpl	$4, -20(%rbp)
	jne	.LBB14_8
# BB#7:                                 # %if.then.3
	movl	$1, -20(%rbp)
.LBB14_8:                               # %if.end.4
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB14_14
# BB#9:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB14_14
# BB#10:                                # %lor.lhs.false.6
	cmpl	$5, -20(%rbp)
	jne	.LBB14_12
# BB#11:                                # %land.lhs.true.8
	movq	-16(%rbp), %rax
	cmpl	$4, 4(%rax)
	jl	.LBB14_14
.LBB14_12:                              # %lor.lhs.false.11
	cmpl	$5, -20(%rbp)
	je	.LBB14_15
# BB#13:                                # %land.lhs.true.13
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jb	.LBB14_15
.LBB14_14:                              # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB14_43
.LBB14_15:                              # %if.end.17
	cmpl	$255, -24(%rbp)
	jle	.LBB14_17
# BB#16:                                # %cond.true
	movl	$255, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB14_21
.LBB14_17:                              # %cond.false
	cmpl	$0, -24(%rbp)
	jge	.LBB14_19
# BB#18:                                # %cond.true.20
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB14_20
.LBB14_19:                              # %cond.false.21
	movl	-24(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB14_20:                              # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB14_21:                              # %cond.end.22
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	cmpl	$255, -28(%rbp)
	jle	.LBB14_23
# BB#22:                                # %cond.true.25
	movl	$255, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB14_27
.LBB14_23:                              # %cond.false.26
	cmpl	$0, -28(%rbp)
	jge	.LBB14_25
# BB#24:                                # %cond.true.28
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB14_26
.LBB14_25:                              # %cond.false.29
	movl	-28(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB14_26:                              # %cond.end.30
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB14_27:                              # %cond.end.32
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	gimp_histogram_get_count
	movsd	%xmm0, -48(%rbp)
	cmpl	$5, -20(%rbp)
	jne	.LBB14_35
# BB#28:                                # %if.then.35
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB14_29:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB14_34
# BB#30:                                # %for.body
                                        #   in Loop: Header=BB14_29 Depth=1
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movl	-32(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	movl	-32(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	addsd	(%rdx,%rcx,8), %xmm1
	movl	-32(%rbp), %eax
	addl	$768, %eax              # imm = 0x300
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	addsd	(%rdx,%rcx,8), %xmm1
	addsd	-40(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	mulsd	-40(%rbp), %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB14_32
# BB#31:                                # %if.then.54
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_43
.LBB14_32:                              # %if.end.55
                                        #   in Loop: Header=BB14_29 Depth=1
	jmp	.LBB14_33
.LBB14_33:                              # %for.inc
                                        #   in Loop: Header=BB14_29 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB14_29
.LBB14_34:                              # %for.end
	jmp	.LBB14_42
.LBB14_35:                              # %if.else.56
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB14_36:                              # %for.cond.57
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB14_41
# BB#37:                                # %for.body.59
                                        #   in Loop: Header=BB14_36 Depth=1
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	shll	$8, %eax
	addl	-32(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	addsd	-40(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	mulsd	-40(%rbp), %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB14_39
# BB#38:                                # %if.then.69
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_43
.LBB14_39:                              # %if.end.70
                                        #   in Loop: Header=BB14_36 Depth=1
	jmp	.LBB14_40
.LBB14_40:                              # %for.inc.71
                                        #   in Loop: Header=BB14_36 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB14_36
.LBB14_41:                              # %for.end.73
	jmp	.LBB14_42
.LBB14_42:                              # %if.end.74
	movl	$-1, -4(%rbp)
.LBB14_43:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_histogram_get_median, .Lfunc_end14-gimp_histogram_get_median
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_histogram_get_threshold
	.align	16, 0x90
	.type	gimp_histogram_get_threshold,@function
gimp_histogram_get_threshold:           # @gimp_histogram_get_threshold
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movl	$127, -100(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_get_threshold, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_54
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$3, 4(%rax)
	jne	.LBB15_8
# BB#6:                                 # %land.lhs.true
	cmpl	$4, -20(%rbp)
	jne	.LBB15_8
# BB#7:                                 # %if.then.3
	movl	$1, -20(%rbp)
.LBB15_8:                               # %if.end.4
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB15_14
# BB#9:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB15_14
# BB#10:                                # %lor.lhs.false.6
	cmpl	$5, -20(%rbp)
	jne	.LBB15_12
# BB#11:                                # %land.lhs.true.8
	movq	-16(%rbp), %rax
	cmpl	$4, 4(%rax)
	jl	.LBB15_14
.LBB15_12:                              # %lor.lhs.false.11
	cmpl	$5, -20(%rbp)
	je	.LBB15_15
# BB#13:                                # %land.lhs.true.13
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jb	.LBB15_15
.LBB15_14:                              # %if.then.16
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_54
.LBB15_15:                              # %if.end.17
	cmpl	$255, -24(%rbp)
	jle	.LBB15_17
# BB#16:                                # %cond.true
	movl	$255, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB15_21
.LBB15_17:                              # %cond.false
	cmpl	$0, -24(%rbp)
	jge	.LBB15_19
# BB#18:                                # %cond.true.20
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB15_20
.LBB15_19:                              # %cond.false.21
	movl	-24(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB15_20:                              # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB15_21:                              # %cond.end.22
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
	cmpl	$255, -28(%rbp)
	jle	.LBB15_23
# BB#22:                                # %cond.true.25
	movl	$255, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB15_27
.LBB15_23:                              # %cond.false.26
	cmpl	$0, -28(%rbp)
	jge	.LBB15_25
# BB#24:                                # %cond.true.28
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB15_26
.LBB15_25:                              # %cond.false.29
	movl	-28(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB15_26:                              # %cond.end.30
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB15_27:                              # %cond.end.32
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -36(%rbp)
	incl	%eax
	movslq	%eax, %rdx
	leaq	15(,%rdx,8), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -48(%rbp)
	movl	-36(%rbp), %eax
	incl	%eax
	movslq	%eax, %rdx
	leaq	15(,%rdx,8), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -56(%rbp)
	movl	-36(%rbp), %eax
	incl	%eax
	movslq	%eax, %rdx
	leaq	15(,%rdx,8), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -64(%rbp)
	cmpl	$5, -20(%rbp)
	jne	.LBB15_33
# BB#28:                                # %if.then.42
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB15_29:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB15_32
# BB#30:                                # %for.body
                                        #   in Loop: Header=BB15_29 Depth=1
	movl	-32(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movl	-32(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	addsd	(%rdx,%rcx,8), %xmm0
	movl	-32(%rbp), %eax
	addl	$768, %eax              # imm = 0x300
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	addsd	(%rdx,%rcx,8), %xmm0
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
# BB#31:                                # %for.inc
                                        #   in Loop: Header=BB15_29 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB15_29
.LBB15_32:                              # %for.end
	jmp	.LBB15_38
.LBB15_33:                              # %if.else.64
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB15_34:                              # %for.cond.65
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB15_37
# BB#35:                                # %for.body.68
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	-20(%rbp), %eax
	shll	$8, %eax
	addl	-32(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
# BB#36:                                # %for.inc.78
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB15_34
.LBB15_37:                              # %for.end.80
	jmp	.LBB15_38
.LBB15_38:                              # %if.end.81
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -72(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -32(%rbp)
.LBB15_39:                              # %for.cond.86
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB15_44
# BB#40:                                # %for.body.89
                                        #   in Loop: Header=BB15_39 Depth=1
	movslq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB15_42
# BB#41:                                # %if.then.94
                                        #   in Loop: Header=BB15_39 Depth=1
	movslq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
.LBB15_42:                              # %if.end.97
                                        #   in Loop: Header=BB15_39 Depth=1
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm0
	movslq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	movslq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	mulsd	(%rdx,%rcx,8), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
# BB#43:                                # %for.inc.116
                                        #   in Loop: Header=BB15_39 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB15_39
.LBB15_44:                              # %for.end.118
	xorps	%xmm0, %xmm0
	movslq	-36(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movslq	-36(%rbp), %rax
	movq	-64(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movl	$0, -32(%rbp)
.LBB15_45:                              # %for.cond.123
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB15_53
# BB#46:                                # %for.body.126
                                        #   in Loop: Header=BB15_45 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_51
# BB#47:                                # %land.lhs.true.131
                                        #   in Loop: Header=BB15_45 Depth=1
	movslq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_51
# BB#48:                                # %if.then.136
                                        #   in Loop: Header=BB15_45 Depth=1
	movslq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	divsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	subsd	(%rcx,%rax,8), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	subsd	(%rcx,%rax,8), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movslq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	subsd	(%rcx,%rax,8), %xmm0
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	jbe	.LBB15_50
# BB#49:                                # %if.then.159
                                        #   in Loop: Header=BB15_45 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB15_50:                              # %if.end.161
                                        #   in Loop: Header=BB15_45 Depth=1
	jmp	.LBB15_51
.LBB15_51:                              # %if.end.162
                                        #   in Loop: Header=BB15_45 Depth=1
	jmp	.LBB15_52
.LBB15_52:                              # %for.inc.163
                                        #   in Loop: Header=BB15_45 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB15_45
.LBB15_53:                              # %for.end.165
	cvtsi2sdl	-100(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB15_54:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_histogram_get_threshold, .Lfunc_end15-gimp_histogram_get_threshold
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_histogram_get_std_dev
	.align	16, 0x90
	.type	gimp_histogram_get_std_dev,@function
gimp_histogram_get_std_dev:             # @gimp_histogram_get_std_dev
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_histogram_get_std_dev, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB16_25
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$3, 4(%rax)
	jne	.LBB16_8
# BB#6:                                 # %land.lhs.true
	cmpl	$4, -20(%rbp)
	jne	.LBB16_8
# BB#7:                                 # %if.then.3
	movl	$1, -20(%rbp)
.LBB16_8:                               # %if.end.4
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB16_14
# BB#9:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB16_14
# BB#10:                                # %lor.lhs.false.6
	cmpl	$5, -20(%rbp)
	jne	.LBB16_12
# BB#11:                                # %land.lhs.true.8
	movq	-16(%rbp), %rax
	cmpl	$4, 4(%rax)
	jl	.LBB16_14
.LBB16_12:                              # %lor.lhs.false.11
	cmpl	$5, -20(%rbp)
	je	.LBB16_15
# BB#13:                                # %land.lhs.true.13
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jb	.LBB16_15
.LBB16_14:                              # %if.then.16
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB16_25
.LBB16_15:                              # %if.end.17
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	gimp_histogram_get_mean
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	gimp_histogram_get_count
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB16_17
	jp	.LBB16_17
# BB#16:                                # %if.then.20
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB16_17:                              # %if.end.21
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB16_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB16_24
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB16_18 Depth=1
	cmpl	$5, -20(%rbp)
	jne	.LBB16_21
# BB#20:                                # %if.then.24
                                        #   in Loop: Header=BB16_18 Depth=1
	movl	-32(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movl	-32(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	addsd	(%rdx,%rcx,8), %xmm0
	movl	-32(%rbp), %eax
	addl	$768, %eax              # imm = 0x300
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	addsd	(%rdx,%rcx,8), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB16_22
.LBB16_21:                              # %if.else.40
                                        #   in Loop: Header=BB16_18 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_histogram_get_value
	movsd	%xmm0, -64(%rbp)
.LBB16_22:                              # %if.end.42
                                        #   in Loop: Header=BB16_18 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	subsd	-56(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	subsd	-56(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB16_18 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB16_18
.LBB16_24:                              # %for.end
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-48(%rbp), %xmm0
	callq	sqrt
	movsd	%xmm0, -8(%rbp)
.LBB16_25:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_histogram_get_std_dev, .Lfunc_end16-gimp_histogram_get_std_dev
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.gimp_histogram_ref,@object # @__func__.gimp_histogram_ref
.L__func__.gimp_histogram_ref:
	.asciz	"gimp_histogram_ref"
	.size	.L__func__.gimp_histogram_ref, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"histogram != NULL"
	.size	.L.str.1, 18

	.type	.L__func__.gimp_histogram_unref,@object # @__func__.gimp_histogram_unref
.L__func__.gimp_histogram_unref:
	.asciz	"gimp_histogram_unref"
	.size	.L__func__.gimp_histogram_unref, 21

	.type	.L__func__.gimp_histogram_duplicate,@object # @__func__.gimp_histogram_duplicate
.L__func__.gimp_histogram_duplicate:
	.asciz	"gimp_histogram_duplicate"
	.size	.L__func__.gimp_histogram_duplicate, 25

	.type	.L__func__.gimp_histogram_calculate,@object # @__func__.gimp_histogram_calculate
.L__func__.gimp_histogram_calculate:
	.asciz	"gimp_histogram_calculate"
	.size	.L__func__.gimp_histogram_calculate, 25

	.type	.L__func__.gimp_histogram_get_maximum,@object # @__func__.gimp_histogram_get_maximum
.L__func__.gimp_histogram_get_maximum:
	.asciz	"gimp_histogram_get_maximum"
	.size	.L__func__.gimp_histogram_get_maximum, 27

	.type	.L__func__.gimp_histogram_get_value,@object # @__func__.gimp_histogram_get_value
.L__func__.gimp_histogram_get_value:
	.asciz	"gimp_histogram_get_value"
	.size	.L__func__.gimp_histogram_get_value, 25

	.type	.L__func__.gimp_histogram_get_channel,@object # @__func__.gimp_histogram_get_channel
.L__func__.gimp_histogram_get_channel:
	.asciz	"gimp_histogram_get_channel"
	.size	.L__func__.gimp_histogram_get_channel, 27

	.type	.L__func__.gimp_histogram_n_channels,@object # @__func__.gimp_histogram_n_channels
.L__func__.gimp_histogram_n_channels:
	.asciz	"gimp_histogram_n_channels"
	.size	.L__func__.gimp_histogram_n_channels, 26

	.type	.L__func__.gimp_histogram_get_count,@object # @__func__.gimp_histogram_get_count
.L__func__.gimp_histogram_get_count:
	.asciz	"gimp_histogram_get_count"
	.size	.L__func__.gimp_histogram_get_count, 25

	.type	.L__func__.gimp_histogram_get_mean,@object # @__func__.gimp_histogram_get_mean
.L__func__.gimp_histogram_get_mean:
	.asciz	"gimp_histogram_get_mean"
	.size	.L__func__.gimp_histogram_get_mean, 24

	.type	.L__func__.gimp_histogram_get_median,@object # @__func__.gimp_histogram_get_median
.L__func__.gimp_histogram_get_median:
	.asciz	"gimp_histogram_get_median"
	.size	.L__func__.gimp_histogram_get_median, 26

	.type	.L__func__.gimp_histogram_get_threshold,@object # @__func__.gimp_histogram_get_threshold
.L__func__.gimp_histogram_get_threshold:
	.asciz	"gimp_histogram_get_threshold"
	.size	.L__func__.gimp_histogram_get_threshold, 29

	.type	.L__func__.gimp_histogram_get_std_dev,@object # @__func__.gimp_histogram_get_std_dev
.L__func__.gimp_histogram_get_std_dev:
	.asciz	"gimp_histogram_get_std_dev"
	.size	.L__func__.gimp_histogram_get_std_dev, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
