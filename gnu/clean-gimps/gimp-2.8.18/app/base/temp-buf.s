	.text
	.file	"temp-buf.bc"
	.globl	temp_buf_new
	.align	16, 0x90
	.type	temp_buf_new,@function
temp_buf_new:                           # @temp_buf_new
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
	subq	$80, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jle	.LBB0_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, -16(%rbp)
	jle	.LBB0_4
# BB#3:                                 # %if.then
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_33
.LBB0_5:                                # %if.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.end
	jmp	.LBB0_7
.LBB0_7:                                # %do.body.2
	cmpl	$0, -20(%rbp)
	jle	.LBB0_9
# BB#8:                                 # %if.then.4
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_33
.LBB0_10:                               # %if.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.end.7
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-12(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-16(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-28(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	-48(%rbp), %rsi
	movq	%rax, 24(%rsi)
	cmpq	$0, -40(%rbp)
	je	.LBB0_32
# BB#12:                                # %if.then.15
	movq	$1, -56(%rbp)
.LBB0_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB0_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB0_16
# BB#15:                                # %if.then.24
	jmp	.LBB0_18
.LBB0_16:                               # %if.end.25
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               # %for.inc
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_13
.LBB0_18:                               # %for.end
	movq	-56(%rbp), %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_20
# BB#19:                                # %if.then.29
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movb	%cl, %dl
	movl	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rax
	movzbl	%dl, %esi
	movq	%rax, %rdx
	callq	memset
	jmp	.LBB0_31
.LBB0_20:                               # %if.else.35
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	%rax, -56(%rbp)
.LBB0_21:                               # %for.cond.38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
	cmpq	$0, -56(%rbp)
	jl	.LBB0_27
# BB#22:                                # %for.body.41
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -76(%rbp)
.LBB0_23:                               # %while.cond
                                        #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB0_25
# BB#24:                                # %while.body
                                        #   in Loop: Header=BB0_23 Depth=2
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	(%rax), %dl
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB0_23
.LBB0_25:                               # %while.end
                                        #   in Loop: Header=BB0_21 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               # %for.inc.44
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_21
.LBB0_27:                               # %for.end.46
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB0_28:                               # %while.cond.48
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	je	.LBB0_30
# BB#29:                                # %while.body.51
                                        #   in Loop: Header=BB0_28 Depth=1
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rsi
	movslq	-20(%rbp), %rdx
	callq	memcpy
	movl	-20(%rbp), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_28
.LBB0_30:                               # %while.end.54
	jmp	.LBB0_31
.LBB0_31:                               # %if.end.55
	jmp	.LBB0_32
.LBB0_32:                               # %if.end.56
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_33:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	temp_buf_new, .Lfunc_end0-temp_buf_new
	.cfi_endproc

	.globl	temp_buf_copy
	.align	16, 0x90
	.type	temp_buf_copy,@function
temp_buf_copy:                          # @temp_buf_copy
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_copy, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_36
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB1_9
# BB#7:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	4(%rax), %ecx
	jne	.LBB1_10
# BB#8:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	8(%rax), %ecx
	jne	.LBB1_10
.LBB1_9:                                # %if.then.6
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.7
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_copy, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_36
.LBB1_11:                               # %if.end.8
	jmp	.LBB1_12
.LBB1_12:                               # %do.end.9
	cmpq	$0, -24(%rbp)
	jne	.LBB1_14
# BB#13:                                # %if.then.11
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %edi
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %esi
	movq	-16(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	%rax, -24(%rbp)
.LBB1_14:                               # %if.end.14
	cmpq	$0, -24(%rbp)
	jne	.LBB1_16
# BB#15:                                # %if.then.16
	movq	$0, -8(%rbp)
	jmp	.LBB1_36
.LBB1_16:                               # %if.end.17
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	(%rax), %ecx
	je	.LBB1_34
# BB#17:                                # %if.then.21
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB1_20
# BB#18:                                # %land.lhs.true.24
	movq	-24(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB1_20
# BB#19:                                # %if.then.27
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	temp_buf_to_gray
	jmp	.LBB1_33
.LBB1_20:                               # %if.else.28
	movq	-16(%rbp), %rax
	cmpl	$3, (%rax)
	jne	.LBB1_23
# BB#21:                                # %land.lhs.true.31
	movq	-24(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB1_23
# BB#22:                                # %if.then.34
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	temp_buf_to_gray
	jmp	.LBB1_32
.LBB1_23:                               # %if.else.35
	movq	-16(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB1_26
# BB#24:                                # %land.lhs.true.38
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB1_26
# BB#25:                                # %if.then.41
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	temp_buf_to_color
	jmp	.LBB1_31
.LBB1_26:                               # %if.else.42
	movq	-16(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB1_29
# BB#27:                                # %land.lhs.true.45
	movq	-24(%rbp), %rax
	cmpl	$3, (%rax)
	jne	.LBB1_29
# BB#28:                                # %if.then.48
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	temp_buf_to_color
	jmp	.LBB1_30
.LBB1_29:                               # %if.else.49
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	g_warning
.LBB1_30:                               # %if.end.50
	jmp	.LBB1_31
.LBB1_31:                               # %if.end.51
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.52
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.53
	jmp	.LBB1_35
.LBB1_34:                               # %if.else.54
	movq	-24(%rbp), %rdi
	callq	temp_buf_get_data
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	temp_buf_get_data
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	temp_buf_get_data_size
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
.LBB1_35:                               # %if.end.58
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_36:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	temp_buf_copy, .Lfunc_end1-temp_buf_copy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
.LCPI2_1:
	.quad	4589866978952703325     # double 0.0722
.LCPI2_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI2_3:
	.quad	4596827742536767164     # double 0.21260000000000001
	.text
	.align	16, 0x90
	.type	temp_buf_to_gray,@function
temp_buf_to_gray:                       # @temp_buf_to_gray
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	8(%rax), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	je	.LBB2_1
	jmp	.LBB2_22
.LBB2_22:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB2_10
	jmp	.LBB2_19
.LBB2_1:                                # %sw.bb
	jmp	.LBB2_2
.LBB2_2:                                # %do.body
	movq	-8(%rbp), %rax
	cmpl	$3, (%rax)
	jne	.LBB2_4
# BB#3:                                 # %if.then
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_to_gray, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_21
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.end
	jmp	.LBB2_7
.LBB2_7:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB2_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB2_7 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm3         # xmm3 = mem[0],zero
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm3, %xmm4
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm4
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm4
	addsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	movb	%cl, %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_7
.LBB2_9:                                # %while.end
	jmp	.LBB2_21
.LBB2_10:                               # %sw.bb.19
	jmp	.LBB2_11
.LBB2_11:                               # %do.body.20
	movq	-8(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB2_13
# BB#12:                                # %if.then.24
	jmp	.LBB2_14
.LBB2_13:                               # %if.else.25
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_to_gray, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_21
.LBB2_14:                               # %if.end.26
	jmp	.LBB2_15
.LBB2_15:                               # %do.end.27
	jmp	.LBB2_16
.LBB2_16:                               # %while.cond.28
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB2_18
# BB#17:                                # %while.body.31
                                        #   in Loop: Header=BB2_16 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm3         # xmm3 = mem[0],zero
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm3, %xmm4
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm4
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm4
	addsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %ecx
	movl	%ecx, -48(%rbp)
	movl	-48(%rbp), %ecx
	movb	%cl, %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movb	3(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_16
.LBB2_18:                               # %while.end.54
	jmp	.LBB2_21
.LBB2_19:                               # %sw.default
	jmp	.LBB2_20
.LBB2_20:                               # %do.body.55
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	movl	$499, %r8d              # imm = 0x1F3
	movabsq	$.L__func__.temp_buf_to_gray, %r9
	movb	$0, %al
	callq	g_log
.LBB2_21:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	temp_buf_to_gray, .Lfunc_end2-temp_buf_to_gray
	.cfi_endproc

	.align	16, 0x90
	.type	temp_buf_to_color,@function
temp_buf_to_color:                      # @temp_buf_to_color
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	8(%rax), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$3, %edx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%edx, -52(%rbp)         # 4-byte Spill
	je	.LBB3_1
	jmp	.LBB3_22
.LBB3_22:                               # %entry
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB3_10
	jmp	.LBB3_19
.LBB3_1:                                # %sw.bb
	jmp	.LBB3_2
.LBB3_2:                                # %do.body
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB3_4
# BB#3:                                 # %if.then
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_to_color, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_21
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.end
	jmp	.LBB3_7
.LBB3_7:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB3_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	movb	-41(%rbp), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	movb	-41(%rbp), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB3_7
.LBB3_9:                                # %while.end
	jmp	.LBB3_21
.LBB3_10:                               # %sw.bb.7
	jmp	.LBB3_11
.LBB3_11:                               # %do.body.8
	movq	-8(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB3_13
# BB#12:                                # %if.then.12
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.13
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_to_color, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_21
.LBB3_14:                               # %if.end.14
	jmp	.LBB3_15
.LBB3_15:                               # %do.end.15
	jmp	.LBB3_16
.LBB3_16:                               # %while.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB3_18
# BB#17:                                # %while.body.19
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movb	%dl, -42(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	movb	-42(%rbp), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	movb	-42(%rbp), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB3_16
.LBB3_18:                               # %while.end.28
	jmp	.LBB3_21
.LBB3_19:                               # %sw.default
	jmp	.LBB3_20
.LBB3_20:                               # %do.body.29
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	movl	$453, %r8d              # imm = 0x1C5
	movabsq	$.L__func__.temp_buf_to_color, %r9
	movb	$0, %al
	callq	g_log
.LBB3_21:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	temp_buf_to_color, .Lfunc_end3-temp_buf_to_color
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB4_2
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
.LBB4_2:                                # %entry
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
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.globl	temp_buf_get_data
	.align	16, 0x90
	.type	temp_buf_get_data,@function
temp_buf_get_data:                      # @temp_buf_get_data
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
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	temp_buf_get_data, .Lfunc_end5-temp_buf_get_data
	.cfi_endproc

	.globl	temp_buf_get_data_size
	.align	16, 0x90
	.type	temp_buf_get_data_size,@function
temp_buf_get_data_size:                 # @temp_buf_get_data_size
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
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	movq	-8(%rbp), %rdi
	imull	4(%rdi), %eax
	movq	-8(%rbp), %rdi
	imull	8(%rdi), %eax
	cltq
	popq	%rbp
	retq
.Lfunc_end6:
	.size	temp_buf_get_data_size, .Lfunc_end6-temp_buf_get_data_size
	.cfi_endproc

	.globl	temp_buf_resize
	.align	16, 0x90
	.type	temp_buf_resize,@function
temp_buf_resize:                        # @temp_buf_resize
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -32(%rbp)
	jle	.LBB7_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, -36(%rbp)
	jle	.LBB7_4
# BB#3:                                 # %if.then
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_resize, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_12
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.end
	cmpq	$0, -16(%rbp)
	jne	.LBB7_8
# BB#7:                                 # %if.then.2
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	temp_buf_new
	movq	%rax, -16(%rbp)
	jmp	.LBB7_11
.LBB7_8:                                # %if.else.3
	movl	-32(%rbp), %eax
	imull	-36(%rbp), %eax
	imull	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %eax
	movq	-16(%rbp), %rdx
	imull	8(%rdx), %eax
	movq	-16(%rbp), %rdx
	imull	(%rdx), %eax
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	je	.LBB7_10
# BB#9:                                 # %if.then.13
	movl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	-48(%rbp), %rsi
	callq	g_realloc_n
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB7_10:                               # %if.end.16
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_11:                               # %if.end.22
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	temp_buf_resize, .Lfunc_end7-temp_buf_resize
	.cfi_endproc

	.globl	temp_buf_scale
	.align	16, 0x90
	.type	temp_buf_scale,@function
temp_buf_scale:                         # @temp_buf_scale
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_scale, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_24
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.body.1
	cmpl	$0, -20(%rbp)
	jle	.LBB8_9
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -24(%rbp)
	jle	.LBB8_9
# BB#8:                                 # %if.then.4
	jmp	.LBB8_10
.LBB8_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_scale, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_24
.LBB8_10:                               # %if.end.6
	jmp	.LBB8_11
.LBB8_11:                               # %do.end.7
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB8_12:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_14 Depth 2
                                        #       Child Loop BB8_16 Depth 3
	movl	-68(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB8_23
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB8_12 Depth=1
	movl	$0, -72(%rbp)
.LBB8_14:                               # %for.cond.16
                                        #   Parent Loop BB8_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_16 Depth 3
	movl	-72(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB8_21
# BB#15:                                # %for.body.19
                                        #   in Loop: Header=BB8_14 Depth=2
	movq	-40(%rbp), %rax
	cvtsi2sdl	-72(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-16(%rbp), %rdx
	imull	(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-16(%rbp), %rdx
	imull	(%rdx), %ecx
	movq	-16(%rbp), %rdx
	imull	4(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %ecx
	movq	-16(%rbp), %rdx
	imull	(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -92(%rbp)
.LBB8_16:                               # %for.cond.38
                                        #   Parent Loop BB8_12 Depth=1
                                        #     Parent Loop BB8_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-92(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB8_19
# BB#17:                                # %for.body.42
                                        #   in Loop: Header=BB8_16 Depth=3
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	(%rax), %dl
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	%dl, (%rax)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB8_16 Depth=3
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB8_16
.LBB8_19:                               # %for.end
                                        #   in Loop: Header=BB8_14 Depth=2
	jmp	.LBB8_20
.LBB8_20:                               # %for.inc.44
                                        #   in Loop: Header=BB8_14 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB8_14
.LBB8_21:                               # %for.end.46
                                        #   in Loop: Header=BB8_12 Depth=1
	jmp	.LBB8_22
.LBB8_22:                               # %for.inc.47
                                        #   in Loop: Header=BB8_12 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB8_12
.LBB8_23:                               # %for.end.49
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	temp_buf_scale, .Lfunc_end8-temp_buf_scale
	.cfi_endproc

	.globl	temp_buf_copy_area
	.align	16, 0x90
	.type	temp_buf_copy_area,@function
temp_buf_copy_area:                     # @temp_buf_copy_area
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	xorl	%r11d, %r11d
	movl	$4, %ebx
	movl	%ebx, %r14d
	leaq	-228(%rbp), %r15
	movl	$64, %ebx
	movl	%ebx, %r12d
	leaq	-224(%rbp), %r13
	leaq	-160(%rbp), %rbx
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movl	%r9d, -80(%rbp)
	movl	%r10d, -84(%rbp)
	movl	%eax, -88(%rbp)
	movq	%rbx, %rdi
	movl	%r11d, %esi
	movq	%r12, %rdx
	movq	%r13, -256(%rbp)        # 8-byte Spill
	movl	%r11d, -260(%rbp)       # 4-byte Spill
	movq	%r14, -272(%rbp)        # 8-byte Spill
	movq	%r15, -280(%rbp)        # 8-byte Spill
	movq	%r12, -288(%rbp)        # 8-byte Spill
	callq	memset
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	-288(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	callq	memset
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_copy_area, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	-64(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	jmp	.LBB9_64
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	jmp	.LBB9_6
.LBB9_6:                                # %do.body.1
	cmpq	$0, -64(%rbp)
	je	.LBB9_8
# BB#7:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	cmpl	(%rax), %ecx
	jne	.LBB9_9
.LBB9_8:                                # %if.then.4
	jmp	.LBB9_10
.LBB9_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_copy_area, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	-64(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	jmp	.LBB9_64
.LBB9_10:                               # %if.end.6
	jmp	.LBB9_11
.LBB9_11:                               # %do.end.7
	jmp	.LBB9_12
.LBB9_12:                               # %do.body.8
	movl	-76(%rbp), %eax
	addl	-84(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB9_14
# BB#13:                                # %if.then.10
	jmp	.LBB9_15
.LBB9_14:                               # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_copy_area, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	-64(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	jmp	.LBB9_64
.LBB9_15:                               # %if.end.12
	jmp	.LBB9_16
.LBB9_16:                               # %do.end.13
	jmp	.LBB9_17
.LBB9_17:                               # %do.body.14
	movl	-80(%rbp), %eax
	addl	-88(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB9_19
# BB#18:                                # %if.then.17
	jmp	.LBB9_20
.LBB9_19:                               # %if.else.18
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_copy_area, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	-64(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	jmp	.LBB9_64
.LBB9_20:                               # %if.end.19
	jmp	.LBB9_21
.LBB9_21:                               # %do.end.20
	jmp	.LBB9_22
.LBB9_22:                               # %do.body.21
	cmpq	$0, -64(%rbp)
	je	.LBB9_24
# BB#23:                                # %lor.lhs.false.23
	movq	-64(%rbp), %rax
	movl	4(%rax), %ecx
	movl	-76(%rbp), %edx
	addl	-84(%rbp), %edx
	cmpl	%edx, %ecx
	jl	.LBB9_25
.LBB9_24:                               # %if.then.27
	jmp	.LBB9_26
.LBB9_25:                               # %if.else.28
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_copy_area, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	-64(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	jmp	.LBB9_64
.LBB9_26:                               # %if.end.29
	jmp	.LBB9_27
.LBB9_27:                               # %do.end.30
	jmp	.LBB9_28
.LBB9_28:                               # %do.body.31
	cmpq	$0, -64(%rbp)
	je	.LBB9_30
# BB#29:                                # %lor.lhs.false.33
	movq	-64(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-80(%rbp), %edx
	addl	-88(%rbp), %edx
	cmpl	%edx, %ecx
	jl	.LBB9_31
.LBB9_30:                               # %if.then.37
	jmp	.LBB9_32
.LBB9_31:                               # %if.else.38
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_copy_area, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	-64(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	jmp	.LBB9_64
.LBB9_32:                               # %if.end.39
	jmp	.LBB9_33
.LBB9_33:                               # %do.end.40
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB9_35
# BB#34:                                # %cond.true
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	jmp	.LBB9_39
.LBB9_35:                               # %cond.false
	cmpl	$0, -68(%rbp)
	jge	.LBB9_37
# BB#36:                                # %cond.true.46
	xorl	%eax, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB9_38
.LBB9_37:                               # %cond.false.47
	movl	-68(%rbp), %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB9_38:                               # %cond.end
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB9_39:                               # %cond.end.48
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -232(%rbp)
	movl	-72(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB9_41
# BB#40:                                # %cond.true.53
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB9_45
.LBB9_41:                               # %cond.false.56
	cmpl	$0, -72(%rbp)
	jge	.LBB9_43
# BB#42:                                # %cond.true.58
	xorl	%eax, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB9_44
.LBB9_43:                               # %cond.false.59
	movl	-72(%rbp), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB9_44:                               # %cond.end.60
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB9_45:                               # %cond.end.62
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)
	movl	-68(%rbp), %eax
	addl	-76(%rbp), %eax
	subl	$1, %eax
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB9_47
# BB#46:                                # %cond.true.69
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	jmp	.LBB9_51
.LBB9_47:                               # %cond.false.72
	movl	-68(%rbp), %eax
	addl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB9_49
# BB#48:                                # %cond.true.76
	xorl	%eax, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB9_50
.LBB9_49:                               # %cond.false.77
	movl	-68(%rbp), %eax
	addl	-76(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB9_50:                               # %cond.end.80
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB9_51:                               # %cond.end.82
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)
	movl	-72(%rbp), %eax
	addl	-80(%rbp), %eax
	subl	$1, %eax
	movq	-56(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB9_53
# BB#52:                                # %cond.true.89
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	jmp	.LBB9_57
.LBB9_53:                               # %cond.false.92
	movl	-72(%rbp), %eax
	addl	-80(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB9_55
# BB#54:                                # %cond.true.96
	xorl	%eax, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB9_56
.LBB9_55:                               # %cond.false.97
	movl	-72(%rbp), %eax
	addl	-80(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB9_56:                               # %cond.end.100
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB9_57:                               # %cond.end.102
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)
	movl	-240(%rbp), %eax
	subl	-232(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_59
# BB#58:                                # %lor.lhs.false.106
	movl	-244(%rbp), %eax
	subl	-236(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB9_60
.LBB9_59:                               # %if.then.109
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB9_64
.LBB9_60:                               # %if.end.110
	movl	-240(%rbp), %eax
	subl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	movl	-244(%rbp), %eax
	subl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB9_62
# BB#61:                                # %if.then.116
	xorl	%eax, %eax
	leaq	-228(%rbp), %r9
	movl	-76(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movl	-80(%rbp), %edx
	addl	-88(%rbp), %edx
	movq	-56(%rbp), %rsi
	movl	(%rsi), %edi
	movl	%edi, -324(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	%edx, %esi
	movl	-324(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	%rax, -96(%rbp)
	jmp	.LBB9_63
.LBB9_62:                               # %if.else.120
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB9_63:                               # %if.end.121
	leaq	-160(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-232(%rbp), %edx
	movl	-236(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	callq	pixel_region_init_temp_buf
	leaq	-224(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	callq	pixel_region_init_temp_buf
	leaq	-160(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	callq	copy_region
	movq	-96(%rbp), %rsi
	movq	%rsi, -48(%rbp)
.LBB9_64:                               # %return
	movq	-48(%rbp), %rax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	temp_buf_copy_area, .Lfunc_end9-temp_buf_copy_area
	.cfi_endproc

	.globl	temp_buf_demultiply
	.align	16, 0x90
	.type	temp_buf_demultiply,@function
temp_buf_demultiply:                    # @temp_buf_demultiply
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_demultiply, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_18
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	ja	.LBB10_16
# BB#19:                                # %do.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_6:                               # %sw.bb
	jmp	.LBB10_18
.LBB10_7:                               # %sw.bb.1
	movq	-8(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	8(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB10_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB10_10
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB10_8 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	$1, %edx
	movl	%ecx, %eax
	movl	%edx, -40(%rbp)         # 4-byte Spill
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movb	%al, %sil
	movq	-16(%rbp), %rdi
	movb	%sil, (%rdi)
	movq	-16(%rbp), %rdi
	addq	$2, %rdi
	movq	%rdi, -16(%rbp)
	jmp	.LBB10_8
.LBB10_10:                              # %while.end
	jmp	.LBB10_18
.LBB10_11:                              # %sw.bb.6
	jmp	.LBB10_18
.LBB10_12:                              # %sw.bb.7
	movq	-8(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	8(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB10_13:                              # %while.cond.12
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB10_15
# BB#14:                                # %while.body.15
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	$1, %edx
	movl	%ecx, %eax
	movl	%edx, -44(%rbp)         # 4-byte Spill
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movb	%al, %sil
	movq	-16(%rbp), %rdi
	movb	%sil, (%rdi)
	movq	-16(%rbp), %rdi
	movzbl	1(%rdi), %eax
	shll	$8, %eax
	movq	-16(%rbp), %rdi
	movzbl	3(%rdi), %r8d
	addl	$1, %r8d
	cltd
	idivl	%r8d
	movb	%al, %sil
	movq	-16(%rbp), %rdi
	movb	%sil, 1(%rdi)
	movq	-16(%rbp), %rdi
	movzbl	2(%rdi), %eax
	shll	$8, %eax
	movq	-16(%rbp), %rdi
	movzbl	3(%rdi), %r8d
	addl	$1, %r8d
	cltd
	idivl	%r8d
	movb	%al, %sil
	movq	-16(%rbp), %rdi
	movb	%sil, 2(%rdi)
	movq	-16(%rbp), %rdi
	addq	$4, %rdi
	movq	%rdi, -16(%rbp)
	jmp	.LBB10_13
.LBB10_15:                              # %while.end.44
	jmp	.LBB10_18
.LBB10_16:                              # %sw.default
	jmp	.LBB10_17
.LBB10_17:                              # %do.body.45
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	movl	$339, %r8d              # imm = 0x153
	movabsq	$.L__func__.temp_buf_demultiply, %r9
	movb	$0, %al
	callq	g_log
.LBB10_18:                              # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	temp_buf_demultiply, .Lfunc_end10-temp_buf_demultiply
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_6
	.quad	.LBB10_7
	.quad	.LBB10_11
	.quad	.LBB10_12

	.text
	.globl	temp_buf_free
	.align	16, 0x90
	.type	temp_buf_free,@function
temp_buf_free:                          # @temp_buf_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_free, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_9
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB11_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free
.LBB11_7:                               # %if.end.3
	jmp	.LBB11_8
.LBB11_8:                               # %do.body.4
	movl	$32, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB11_9:                               # %do.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	temp_buf_free, .Lfunc_end11-temp_buf_free
	.cfi_endproc

	.globl	temp_buf_data_clear
	.align	16, 0x90
	.type	temp_buf_data_clear,@function
temp_buf_data_clear:                    # @temp_buf_data_clear
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
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	4(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	(%rax), %ecx
	movslq	%ecx, %rdx
	callq	memset
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	temp_buf_data_clear, .Lfunc_end12-temp_buf_data_clear
	.cfi_endproc

	.globl	temp_buf_get_memsize
	.align	16, 0x90
	.type	temp_buf_get_memsize,@function
temp_buf_get_memsize:                   # @temp_buf_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	temp_buf_get_data_size
	addq	$32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB13_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	temp_buf_get_memsize, .Lfunc_end13-temp_buf_get_memsize
	.cfi_endproc

	.globl	temp_buf_dump
	.align	16, 0x90
	.type	temp_buf_dump,@function
temp_buf_dump:                          # @temp_buf_dump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$577, %eax              # imm = 0x241
	movl	$438, %edx              # imm = 0x1B6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	open
	movl	%eax, -20(%rbp)
# BB#1:                                 # %do.body
	cmpl	$-1, -20(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_dump, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_16
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	jmp	.LBB14_6
.LBB14_6:                               # %do.body.1
	cmpq	$0, -8(%rbp)
	je	.LBB14_8
# BB#7:                                 # %if.then.3
	jmp	.LBB14_9
.LBB14_8:                               # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_dump, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_16
.LBB14_9:                               # %if.end.5
	jmp	.LBB14_10
.LBB14_10:                              # %do.end.6
	jmp	.LBB14_11
.LBB14_11:                              # %do.body.7
	movq	-8(%rbp), %rdi
	callq	temp_buf_get_data
	cmpq	$0, %rax
	je	.LBB14_13
# BB#12:                                # %if.then.10
	jmp	.LBB14_14
.LBB14_13:                              # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.temp_buf_dump, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_16
.LBB14_14:                              # %if.end.12
	jmp	.LBB14_15
.LBB14_15:                              # %do.end.13
	movl	-20(%rbp), %edi
	movq	-8(%rbp), %rax
	movl	%edi, -24(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	temp_buf_get_data
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	temp_buf_get_data_size
	movl	-24(%rbp), %edi         # 4-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movl	-20(%rbp), %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	close
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB14_16:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	temp_buf_dump, .Lfunc_end14-temp_buf_dump
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.temp_buf_new,@object # @__func__.temp_buf_new
.L__func__.temp_buf_new:
	.asciz	"temp_buf_new"
	.size	.L__func__.temp_buf_new, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"width > 0 && height > 0"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"bytes > 0"
	.size	.L.str.2, 10

	.type	.L__func__.temp_buf_copy,@object # @__func__.temp_buf_copy
.L__func__.temp_buf_copy:
	.asciz	"temp_buf_copy"
	.size	.L__func__.temp_buf_copy, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"src != NULL"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"! dest || (dest->width == src->width && dest->height == src->height)"
	.size	.L.str.4, 69

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"temp_buf_copy(): unimplemented color conversion"
	.size	.L.str.5, 48

	.type	.L__func__.temp_buf_resize,@object # @__func__.temp_buf_resize
.L__func__.temp_buf_resize:
	.asciz	"temp_buf_resize"
	.size	.L__func__.temp_buf_resize, 16

	.type	.L__func__.temp_buf_scale,@object # @__func__.temp_buf_scale
.L__func__.temp_buf_scale:
	.asciz	"temp_buf_scale"
	.size	.L__func__.temp_buf_scale, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"new_width > 0 && new_height > 0"
	.size	.L.str.6, 32

	.type	.L__func__.temp_buf_copy_area,@object # @__func__.temp_buf_copy_area
.L__func__.temp_buf_copy_area:
	.asciz	"temp_buf_copy_area"
	.size	.L__func__.temp_buf_copy_area, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"!dest || dest->bytes == src->bytes"
	.size	.L.str.7, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"width + dest_x > 0"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"height + dest_y > 0"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"!dest || dest->width >= width + dest_x"
	.size	.L.str.10, 39

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"!dest || dest->height >= height + dest_y"
	.size	.L.str.11, 41

	.type	.L__func__.temp_buf_demultiply,@object # @__func__.temp_buf_demultiply
.L__func__.temp_buf_demultiply:
	.asciz	"temp_buf_demultiply"
	.size	.L__func__.temp_buf_demultiply, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"buf != NULL"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.13, 45

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"temp-buf.c"
	.size	.L.str.14, 11

	.type	.L__func__.temp_buf_free,@object # @__func__.temp_buf_free
.L__func__.temp_buf_free:
	.asciz	"temp_buf_free"
	.size	.L__func__.temp_buf_free, 14

	.type	.L__func__.temp_buf_dump,@object # @__func__.temp_buf_dump
.L__func__.temp_buf_dump:
	.asciz	"temp_buf_dump"
	.size	.L__func__.temp_buf_dump, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"fd != -1"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"temp_buf_get_data (buf) != NULL"
	.size	.L.str.16, 32

	.type	.L__func__.temp_buf_to_color,@object # @__func__.temp_buf_to_color
.L__func__.temp_buf_to_color:
	.asciz	"temp_buf_to_color"
	.size	.L__func__.temp_buf_to_color, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"src_buf->bytes == 1"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"src_buf->bytes == 2"
	.size	.L.str.18, 20

	.type	.L__func__.temp_buf_to_gray,@object # @__func__.temp_buf_to_gray
.L__func__.temp_buf_to_gray:
	.asciz	"temp_buf_to_gray"
	.size	.L__func__.temp_buf_to_gray, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"src_buf->bytes == 3"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"src_buf->bytes == 4"
	.size	.L.str.20, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
