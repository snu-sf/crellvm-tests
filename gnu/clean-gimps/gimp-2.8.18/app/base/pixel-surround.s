	.text
	.file	"pixel-surround.bc"
	.globl	pixel_surround_new
	.align	16, 0x90
	.type	pixel_surround_new,@function
pixel_surround_new:                     # @pixel_surround_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.pixel_surround_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_16
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpl	$64, -20(%rbp)
	jge	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.pixel_surround_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_16
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.7
	cmpl	$64, -24(%rbp)
	jge	.LBB0_13
# BB#12:                                # %if.then.9
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.pixel_surround_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_16
.LBB0_14:                               # %if.end.11
	jmp	.LBB0_15
.LBB0_15:                               # %do.end.12
	movl	$88, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	tile_manager_width
	subl	$1, %eax
	movq	-40(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	tile_manager_height
	subl	$1, %eax
	movq	-40(%rbp), %rdi
	movl	%eax, 12(%rdi)
	movq	-16(%rbp), %rdi
	callq	tile_manager_bpp
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movl	%eax, 16(%rdi)
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, 20(%rdi)
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, 24(%rdi)
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rdi
	imull	16(%rdi), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, 56(%rdi)
	movq	-40(%rbp), %rdi
	movl	56(%rdi), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-40(%rbp), %rax
	movl	56(%rax), %ecx
	imull	-24(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	-40(%rbp), %rsi
	movq	%rax, 72(%rsi)
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 80(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pixel_surround_new, .Lfunc_end0-pixel_surround_new
	.cfi_endproc

	.globl	pixel_surround_set_bg
	.align	16, 0x90
	.type	pixel_surround_set_bg,@function
pixel_surround_set_bg:                  # @pixel_surround_set_bg
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	20(%rsi), %eax
	movq	-8(%rbp), %rsi
	imull	24(%rsi), %eax
	movl	%eax, -28(%rbp)
.LBB1_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB1_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -32(%rbp)
.LBB1_3:                                # %for.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB1_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=2
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_1
.LBB1_7:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pixel_surround_set_bg, .Lfunc_end1-pixel_surround_set_bg
	.cfi_endproc

	.globl	pixel_surround_lock
	.align	16, 0x90
	.type	pixel_surround_lock,@function
pixel_surround_lock:                    # @pixel_surround_lock
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
	subq	$96, %rsp
	leaq	-44(%rbp), %rax
	leaq	-48(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %r9
	movq	%rax, %rcx
	callq	pixel_surround_get_data
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	cmpl	20(%rax), %edx
	jl	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jl	.LBB2_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_24
.LBB2_3:                                # %if.else
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	jmp	.LBB2_8
.LBB2_4:                                # %while.cond
                                        #   in Loop: Header=BB2_6 Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	20(%rcx), %eax
	jge	.LBB2_22
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB2_6 Depth=2
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movl	-64(%rbp), %ecx
	movq	-16(%rbp), %rdx
	imull	16(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	$0, -68(%rbp)
.LBB2_6:                                # %for.cond
                                        #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB2_21
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB2_8 Depth=1
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-24(%rbp), %edx
	addl	-68(%rbp), %edx
	movq	-32(%rbp), %r9
	movl	%eax, %esi
	callq	pixel_surround_get_data
	movq	%rax, -40(%rbp)
.LBB2_8:                                # %start
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
                                        #     Child Loop BB2_6 Depth 2
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	20(%rcx), %edx
	subl	-64(%rbp), %edx
	cmpl	%edx, %eax
	jge	.LBB2_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %cond.false
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	subl	-64(%rbp), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
.LBB2_11:                               # %cond.end
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	-68(%rbp), %edx
	cmpl	%edx, %eax
	jge	.LBB2_13
# BB#12:                                # %cond.true.19
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB2_14
.LBB2_13:                               # %cond.false.20
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	subl	-68(%rbp), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB2_14:                               # %cond.end.23
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB2_15:                               # %while.cond.25
                                        #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB2_17
# BB#16:                                # %while.body.26
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	16(%rcx), %eax
	movslq	%eax, %rdx
	callq	memcpy
	movq	-32(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movl	56(%rcx), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB2_15
.LBB2_17:                               # %while.end
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-48(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB2_19
# BB#18:                                # %cond.true.37
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB2_20
.LBB2_19:                               # %cond.false.38
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB2_20:                               # %cond.end.39
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	jmp	.LBB2_6
.LBB2_21:                               # %for.end
                                        #   in Loop: Header=BB2_6 Depth=2
	movl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB2_4
.LBB2_22:                               # %while.end.42
	jmp	.LBB2_23
.LBB2_23:                               # %if.end
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB2_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pixel_surround_lock, .Lfunc_end2-pixel_surround_lock
	.cfi_endproc

	.align	16, 0x90
	.type	pixel_surround_get_data,@function
pixel_surround_get_data:                # @pixel_surround_get_data
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 32(%rcx)
	je	.LBB3_7
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jl	.LBB3_5
# BB#2:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	40(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	48(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_5
# BB#3:                                 # %lor.lhs.false.3
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jl	.LBB3_5
# BB#4:                                 # %lor.lhs.false.5
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	44(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	52(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB3_6
.LBB3_5:                                # %if.then.9
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_release
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB3_6:                                # %if.end
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.12
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB3_11
# BB#8:                                 # %if.then.15
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	tile_manager_get_tile
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB3_10
# BB#9:                                 # %if.then.19
	movl	-20(%rbp), %eax
	andl	$-64, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movl	-24(%rbp), %eax
	andl	$-64, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	tile_ewidth
	movq	-16(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	tile_eheight
	movq	-16(%rbp), %rcx
	movl	%eax, 52(%rcx)
.LBB3_10:                               # %if.end.29
	jmp	.LBB3_11
.LBB3_11:                               # %if.end.30
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB3_13
# BB#12:                                # %if.then.33
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	48(%rax), %ecx
	subl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	52(%rax), %ecx
	subl	-24(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	16(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -8(%rbp)
	jmp	.LBB3_48
.LBB3_13:                               # %if.end.44
	cmpl	$0, -20(%rbp)
	jge	.LBB3_18
# BB#14:                                # %if.then.46
	xorl	%eax, %eax
	subl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	20(%rcx), %eax
	jge	.LBB3_16
# BB#15:                                # %cond.true
	xorl	%eax, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB3_17
.LBB3_16:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB3_17:                               # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB3_19:                               # %if.end.53
	cmpl	$0, -24(%rbp)
	jge	.LBB3_24
# BB#20:                                # %if.then.55
	xorl	%eax, %eax
	subl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB3_22
# BB#21:                                # %cond.true.59
	xorl	%eax, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB3_23
.LBB3_22:                               # %cond.false.61
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB3_23:                               # %cond.end.63
	movl	-88(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB3_25
.LBB3_24:                               # %if.else.65
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB3_25:                               # %if.end.67
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 80(%rax)
	jne	.LBB3_47
# BB#26:                                # %if.then.70
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	$0, -80(%rbp)
	cmpl	$0, -60(%rbp)
	jge	.LBB3_28
# BB#27:                                # %if.then.72
	movl	$0, -60(%rbp)
	movl	-80(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB3_31
.LBB3_28:                               # %if.else.73
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB3_30
# BB#29:                                # %if.then.75
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movl	-80(%rbp), %ecx
	orl	$2, %ecx
	movl	%ecx, -80(%rbp)
.LBB3_30:                               # %if.end.78
	jmp	.LBB3_31
.LBB3_31:                               # %if.end.79
	cmpl	$0, -64(%rbp)
	jge	.LBB3_33
# BB#32:                                # %if.then.81
	movl	$0, -64(%rbp)
	movl	-80(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB3_36
.LBB3_33:                               # %if.else.83
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jle	.LBB3_35
# BB#34:                                # %if.then.85
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movl	-80(%rbp), %ecx
	orl	$8, %ecx
	movl	%ecx, -80(%rbp)
.LBB3_35:                               # %if.end.88
	jmp	.LBB3_36
.LBB3_36:                               # %if.end.89
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-76(%rbp), %r9
	callq	pixel_surround_get_data
	movq	%rax, -56(%rbp)
	movl	-80(%rbp), %edx
	movl	%edx, %esi
	decl	%esi
	subl	$2, %esi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%esi, -96(%rbp)         # 4-byte Spill
	jb	.LBB3_42
	jmp	.LBB3_49
.LBB3_49:                               # %if.end.89
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB3_38
	jmp	.LBB3_50
.LBB3_50:                               # %if.end.89
	movl	-92(%rbp), %eax         # 4-byte Reload
	addl	$-5, %eax
	subl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jb	.LBB3_37
	jmp	.LBB3_51
.LBB3_51:                               # %if.end.89
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB3_38
	jmp	.LBB3_52
.LBB3_52:                               # %if.end.89
	movl	-92(%rbp), %eax         # 4-byte Reload
	addl	$-9, %eax
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	ja	.LBB3_46
	jmp	.LBB3_37
.LBB3_37:                               # %sw.bb
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	pixel_surround_set_bg
	jmp	.LBB3_46
.LBB3_38:                               # %sw.bb.91
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-68(%rbp), %edx
	callq	pixel_surround_fill_row
	movq	-32(%rbp), %rsi
	movl	(%rsi), %edx
	cmpl	-68(%rbp), %edx
	jge	.LBB3_40
# BB#39:                                # %cond.true.93
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB3_41
.LBB3_40:                               # %cond.false.94
	movl	-68(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB3_41:                               # %cond.end.95
	movl	-116(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB3_46
.LBB3_42:                               # %sw.bb.97
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-72(%rbp), %ecx
	callq	pixel_surround_fill_col
	movq	-40(%rbp), %rsi
	movl	(%rsi), %ecx
	cmpl	-72(%rbp), %ecx
	jge	.LBB3_44
# BB#43:                                # %cond.true.99
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB3_45
.LBB3_44:                               # %cond.false.100
	movl	-72(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB3_45:                               # %cond.end.101
	movl	-120(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB3_46:                               # %sw.epilog
	jmp	.LBB3_47
.LBB3_47:                               # %if.end.103
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB3_48:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pixel_surround_get_data, .Lfunc_end3-pixel_surround_get_data
	.cfi_endproc

	.globl	pixel_surround_release
	.align	16, 0x90
	.type	pixel_surround_release,@function
pixel_surround_release:                 # @pixel_surround_release
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_release
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.LBB4_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pixel_surround_release, .Lfunc_end4-pixel_surround_release
	.cfi_endproc

	.globl	pixel_surround_destroy
	.align	16, 0x90
	.type	pixel_surround_destroy,@function
pixel_surround_destroy:                 # @pixel_surround_destroy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.pixel_surround_destroy, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_7
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movq	-8(%rbp), %rdi
	callq	pixel_surround_release
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	64(%rdi), %rdi
	callq	g_free
# BB#6:                                 # %do.body.1
	movl	$88, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB5_7:                                # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pixel_surround_destroy, .Lfunc_end5-pixel_surround_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	pixel_surround_fill_row,@function
pixel_surround_fill_row:                # @pixel_surround_fill_row
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rsi
	cmpl	20(%rsi), %edx
	jge	.LBB6_2
# BB#1:                                 # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB6_3:                                # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %eax
	movl	%eax, -40(%rbp)
.LBB6_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, %eax
	je	.LBB6_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-36(%rbp), %rdx
	callq	memcpy
	movq	-8(%rbp), %rdx
	movl	56(%rdx), %eax
	movq	-32(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	jmp	.LBB6_4
.LBB6_6:                                # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pixel_surround_fill_row, .Lfunc_end6-pixel_surround_fill_row
	.cfi_endproc

	.align	16, 0x90
	.type	pixel_surround_fill_col,@function
pixel_surround_fill_col:                # @pixel_surround_fill_col
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movl	20(%rsi), %ecx
	movl	%ecx, -36(%rbp)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rsi
	cmpl	24(%rsi), %ecx
	jge	.LBB7_2
# BB#1:                                 # %cond.true
	movl	-24(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB7_3:                                # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
.LBB7_4:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB7_9
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -60(%rbp)
.LBB7_6:                                # %while.cond.3
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	je	.LBB7_8
# BB#7:                                 # %while.body.6
                                        #   in Loop: Header=BB7_6 Depth=2
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movslq	16(%rax), %rdx
	callq	memcpy
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB7_6
.LBB7_8:                                # %while.end
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_4
.LBB7_9:                                # %while.end.13
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pixel_surround_fill_col, .Lfunc_end7-pixel_surround_fill_col
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.pixel_surround_new,@object # @__func__.pixel_surround_new
.L__func__.pixel_surround_new:
	.asciz	"pixel_surround_new"
	.size	.L__func__.pixel_surround_new, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tiles != NULL"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"width < TILE_WIDTH"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"height < TILE_WIDTH"
	.size	.L.str.3, 20

	.type	.L__func__.pixel_surround_destroy,@object # @__func__.pixel_surround_destroy
.L__func__.pixel_surround_destroy:
	.asciz	"pixel_surround_destroy"
	.size	.L__func__.pixel_surround_destroy, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"surround != NULL"
	.size	.L.str.4, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
