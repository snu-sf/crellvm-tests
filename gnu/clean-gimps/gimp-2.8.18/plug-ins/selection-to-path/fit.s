	.text
	.file	"fit.bc"
	.globl	fitted_splines
	.align	16, 0x90
	.type	fitted_splines,@function
fitted_splines:                         # @fitted_splines
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
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -40(%rbp)
	callq	new_spline_list_array
	movq	%rax, -56(%rbp)
	movl	%edx, -48(%rbp)
	movq	-32(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	split_at_corners
	movq	%rax, -72(%rbp)
	movl	%edx, -64(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jae	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	shlq	$4, %rcx
	addq	-72(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -104(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	fit_curve_list
	leaq	-56(%rbp), %rdi
	movq	%rax, -120(%rbp)
	movl	%edx, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rsi
	movl	-80(%rbp), %edx
	callq	append_spline_list
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	leaq	-72(%rbp), %rdi
	callq	free_curve_list_array
	movl	$0, -36(%rbp)
.LBB0_5:                                # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB0_8
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	shlq	$4, %rcx
	addq	-56(%rbp), %rcx
	movl	8(%rcx), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
# BB#7:                                 # %for.inc.11
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                # %for.end.13
	movups	-56(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fitted_splines, .Lfunc_end0-fitted_splines
	.cfi_endproc

	.align	16, 0x90
	.type	split_at_corners,@function
split_at_corners:                       # @split_at_corners
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
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	callq	new_curve_list_array
	movq	%rax, -56(%rbp)
	movl	%edx, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_12 Depth 2
                                        #       Child Loop BB1_14 Depth 3
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_24 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB1_30
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	callq	new_curve_list
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, %eax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	-116(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	movl	-120(%rbp), %ecx
	movl	corner_surround, %esi
	shll	$1, %esi
	addl	$2, %esi
	cmpl	%esi, %ecx
	jbe	.LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	find_corners
	movq	%rax, -144(%rbp)
	movl	%edx, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	$0, -88(%rbp)
	movl	$0, -80(%rbp)
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	callq	new_curve
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpl	$0, -80(%rbp)
	jne	.LBB1_11
# BB#6:                                 # %if.then.11
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -92(%rbp)
.LBB1_7:                                # %for.cond.12
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jae	.LBB1_10
# BB#8:                                 # %for.body.15
                                        #   in Loop: Header=BB1_7 Depth=2
	movq	-64(%rbp), %rdi
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	append_pixel
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB1_7 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB1_7
.LBB1_10:                               # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.LBB1_28
.LBB1_11:                               # %if.else.19
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -96(%rbp)
.LBB1_12:                               # %for.cond.20
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_14 Depth 3
	movl	-96(%rbp), %eax
	movl	-80(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB1_19
# BB#13:                                # %for.body.23
                                        #   in Loop: Header=BB1_12 Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-96(%rbp), %ecx
	movl	%ecx, %eax
	movq	-88(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	movl	%ecx, -156(%rbp)
	movl	-96(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-88(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	movl	%ecx, -160(%rbp)
	movl	-156(%rbp), %ecx
	movl	%ecx, -92(%rbp)
.LBB1_14:                               # %for.cond.31
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-92(%rbp), %eax
	cmpl	-160(%rbp), %eax
	ja	.LBB1_17
# BB#15:                                # %for.body.33
                                        #   in Loop: Header=BB1_14 Depth=3
	movq	-64(%rbp), %rdi
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	append_pixel
# BB#16:                                # %for.inc.37
                                        #   in Loop: Header=BB1_14 Depth=3
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB1_14
.LBB1_17:                               # %for.end.39
                                        #   in Loop: Header=BB1_12 Depth=2
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	append_curve
	callq	new_curve
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-152(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-152(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rax, 32(%rsi)
# BB#18:                                # %for.inc.41
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB1_12
.LBB1_19:                               # %for.end.43
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-80(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -92(%rbp)
.LBB1_20:                               # %for.cond.49
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jae	.LBB1_23
# BB#21:                                # %for.body.52
                                        #   in Loop: Header=BB1_20 Depth=2
	movq	-64(%rbp), %rdi
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	append_pixel
# BB#22:                                # %for.inc.56
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB1_20
.LBB1_23:                               # %for.end.58
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -92(%rbp)
.LBB1_24:                               # %for.cond.59
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	(%rcx), %eax
	ja	.LBB1_27
# BB#25:                                # %for.body.63
                                        #   in Loop: Header=BB1_24 Depth=2
	movq	-64(%rbp), %rdi
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	append_pixel
# BB#26:                                # %for.inc.67
                                        #   in Loop: Header=BB1_24 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB1_24
.LBB1_27:                               # %for.end.69
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_28
.LBB1_28:                               # %if.end.70
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	append_curve
	leaq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rsi, 40(%rax)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	append_curve_list
# BB#29:                                # %for.inc.73
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_1
.LBB1_30:                               # %for.end.75
	movups	-56(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	split_at_corners, .Lfunc_end1-split_at_corners
	.cfi_endproc

	.align	16, 0x90
	.type	fit_curve_list,@function
fit_curve_list:                         # @fit_curve_list
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
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)
	callq	new_spline_list
	movq	(%rax), %rsi
	movq	%rsi, -72(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpl	$0, keep_knees
	jne	.LBB2_6
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB2_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movl	-20(%rbp), %esi
	callq	remove_knee_points
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB2_2
.LBB2_5:                                # %for.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end
	movl	$0, -44(%rbp)
.LBB2_7:                                # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB2_10
# BB#8:                                 # %for.body.4
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	filter
# BB#9:                                 # %for.inc.8
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB2_7
.LBB2_10:                               # %for.end.10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB2_13
# BB#11:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	je	.LBB2_13
# BB#12:                                # %if.then.16
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	append_point
.LBB2_13:                               # %if.end.18
	movl	$0, -44(%rbp)
.LBB2_14:                               # %for.cond.19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB2_24
# BB#15:                                # %for.body.21
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	fit_curve
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_17
# BB#16:                                # %if.then.27
                                        #   in Loop: Header=BB2_14 Depth=1
	movabsq	$.L.str, %rdi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB2_22
.LBB2_17:                               # %if.else
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	$0, -48(%rbp)
.LBB2_18:                               # %for.cond.29
                                        #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB2_21
# BB#19:                                # %for.body.32
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_20
.LBB2_20:                               # %for.inc.33
                                        #   in Loop: Header=BB2_18 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_18
.LBB2_21:                               # %for.end.35
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	-80(%rbp), %rdi
	callq	change_bad_lines
	leaq	-72(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	callq	concat_spline_lists
.LBB2_22:                               # %if.end.36
                                        #   in Loop: Header=BB2_14 Depth=1
	jmp	.LBB2_23
.LBB2_23:                               # %for.inc.37
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB2_14
.LBB2_24:                               # %for.end.39
	leaq	-72(%rbp), %rdi
	callq	align
	movups	-72(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fit_curve_list, .Lfunc_end2-fit_curve_list
	.cfi_endproc

	.globl	fit_set_params
	.align	16, 0x90
	.type	fit_set_params,@function
fit_set_params:                         # @fit_set_params
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
	movq	%rdi, -8(%rbp)
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, align_threshold(%rip)
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, corner_always_threshold(%rip)
	movq	-8(%rbp), %rdi
	cvttsd2si	16(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, corner_surround(%rip)
	movq	-8(%rbp), %rdi
	movsd	24(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, corner_threshold(%rip)
	movq	-8(%rbp), %rdi
	movsd	32(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, error_threshold(%rip)
	movq	-8(%rbp), %rdi
	cvttsd2si	40(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, filter_alternative_surround(%rip)
	movq	-8(%rbp), %rdi
	movsd	48(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, filter_epsilon(%rip)
	movq	-8(%rbp), %rdi
	cvttsd2si	56(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, filter_iteration_count(%rip)
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, filter_percent(%rip)
	movq	-8(%rbp), %rdi
	cvttsd2si	72(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, filter_secondary_surround(%rip)
	movq	-8(%rbp), %rdi
	cvttsd2si	80(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, filter_surround(%rip)
	movq	-8(%rbp), %rdi
	movl	88(%rdi), %eax
	movl	%eax, keep_knees(%rip)
	movq	-8(%rbp), %rdi
	movsd	96(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, line_reversion_threshold(%rip)
	movq	-8(%rbp), %rdi
	movsd	104(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, line_threshold(%rip)
	movq	-8(%rbp), %rdi
	movsd	112(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, reparameterize_improvement(%rip)
	movq	-8(%rbp), %rdi
	movsd	120(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, reparameterize_threshold(%rip)
	movq	-8(%rbp), %rdi
	movsd	128(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, subdivide_search(%rip)
	movq	-8(%rbp), %rdi
	cvttsd2si	136(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, subdivide_surround(%rip)
	movq	-8(%rbp), %rdi
	movsd	144(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, subdivide_threshold(%rip)
	movq	-8(%rbp), %rdi
	cvttsd2si	152(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, tangent_surround
	popq	%rbp
	retq
.Lfunc_end3:
	.size	fit_set_params, .Lfunc_end3-fit_set_params
	.cfi_endproc

	.globl	fit_set_default_params
	.align	16, 0x90
	.type	fit_set_default_params,@function
fit_set_default_params:                 # @fit_set_default_params
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
	movq	%rdi, -8(%rbp)
	movsd	align_threshold(%rip), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, (%rdi)
	movsd	corner_always_threshold(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movl	corner_surround(%rip), %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	corner_threshold(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movsd	error_threshold(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movl	filter_alternative_surround(%rip), %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movsd	filter_epsilon(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 48(%rdi)
	movl	filter_iteration_count(%rip), %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 56(%rdi)
	movsd	filter_percent(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 64(%rdi)
	movl	filter_secondary_surround(%rip), %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 72(%rdi)
	movl	filter_surround(%rip), %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 80(%rdi)
	movl	keep_knees(%rip), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 88(%rdi)
	movsd	line_reversion_threshold(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 96(%rdi)
	movsd	line_threshold(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 104(%rdi)
	movsd	reparameterize_improvement(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 112(%rdi)
	movsd	reparameterize_threshold(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 120(%rdi)
	movsd	subdivide_search(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 128(%rdi)
	movl	subdivide_surround(%rip), %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 136(%rdi)
	movsd	subdivide_threshold(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 144(%rdi)
	movl	tangent_surround(%rip), %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 152(%rdi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fit_set_default_params, .Lfunc_end4-fit_set_default_params
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4616189618054758400    # double -1
.LCPI5_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	remove_knee_points,@function
remove_knee_points:                     # @remove_knee_points
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
	subq	$144, %rsp
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 12(%rdi)
	cmovnel	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_5
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB5_3
# BB#2:                                 # %cond.true.3
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB5_4
.LBB5_3:                                # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB5_4
.LBB5_4:                                # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB5_6
.LBB5_5:                                # %cond.false.6
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB5_6:                                # %cond.end.8
	movl	-112(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	real_to_int_coord
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	copy_most_of_curve
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB5_8
# BB#7:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	real_to_int_coord
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	append_pixel
.LBB5_8:                                # %if.end
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB5_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	-20(%rbp), %edx
	cmpl	%edx, %eax
	jae	.LBB5_46
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB5_9 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	(%rcx), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	real_to_int_coord
	movq	%rax, -56(%rbp)
	movl	-16(%rbp), %edx
	addl	$1, %edx
	movq	-8(%rbp), %rax
	cmpl	8(%rax), %edx
	jl	.LBB5_15
# BB#11:                                # %cond.true.28
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB5_13
# BB#12:                                # %cond.true.31
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	8(%rcx)
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB5_14
.LBB5_13:                               # %cond.false.34
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB5_14:                               # %cond.end.36
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB5_16
.LBB5_15:                               # %cond.false.38
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB5_16:                               # %cond.end.40
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	real_to_int_coord
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	IPsubtract
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	IPsubtract
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm1, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jne	.LBB5_18
	jp	.LBB5_18
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_9 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_20
	jp	.LBB5_20
.LBB5_18:                               # %lor.lhs.false
                                        #   in Loop: Header=BB5_9 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_43
	jp	.LBB5_43
# BB#19:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB5_9 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_20
	jp	.LBB5_20
	jmp	.LBB5_43
.LBB5_20:                               # %land.lhs.true.56
                                        #   in Loop: Header=BB5_9 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_22
	jp	.LBB5_22
# BB#21:                                # %land.lhs.true.59
                                        #   in Loop: Header=BB5_9 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_24
	jp	.LBB5_24
.LBB5_22:                               # %lor.lhs.false.62
                                        #   in Loop: Header=BB5_9 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_43
	jp	.LBB5_43
# BB#23:                                # %land.lhs.true.65
                                        #   in Loop: Header=BB5_9 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_24
	jp	.LBB5_24
	jmp	.LBB5_43
.LBB5_24:                               # %land.lhs.true.68
                                        #   in Loop: Header=BB5_9 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB5_33
# BB#25:                                # %land.lhs.true.70
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_27
	jp	.LBB5_27
# BB#26:                                # %land.lhs.true.73
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_27
	jp	.LBB5_27
	jmp	.LBB5_42
.LBB5_27:                               # %lor.lhs.false.76
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_29
	jp	.LBB5_29
# BB#28:                                # %land.lhs.true.79
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_29
	jp	.LBB5_29
	jmp	.LBB5_42
.LBB5_29:                               # %lor.lhs.false.82
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_31
	jp	.LBB5_31
# BB#30:                                # %land.lhs.true.85
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_31
	jp	.LBB5_31
	jmp	.LBB5_42
.LBB5_31:                               # %lor.lhs.false.88
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_33
	jp	.LBB5_33
# BB#32:                                # %land.lhs.true.91
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_33
	jp	.LBB5_33
	jmp	.LBB5_42
.LBB5_33:                               # %lor.lhs.false.94
                                        #   in Loop: Header=BB5_9 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB5_43
# BB#34:                                # %land.lhs.true.96
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_36
	jp	.LBB5_36
# BB#35:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_36
	jp	.LBB5_36
	jmp	.LBB5_42
.LBB5_36:                               # %lor.lhs.false.102
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_38
	jp	.LBB5_38
# BB#37:                                # %land.lhs.true.105
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_38
	jp	.LBB5_38
	jmp	.LBB5_42
.LBB5_38:                               # %lor.lhs.false.108
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_40
	jp	.LBB5_40
# BB#39:                                # %land.lhs.true.111
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_40
	jp	.LBB5_40
	jmp	.LBB5_42
.LBB5_40:                               # %lor.lhs.false.114
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_43
	jp	.LBB5_43
# BB#41:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB5_9 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_43
	jp	.LBB5_43
.LBB5_42:                               # %if.then.120
                                        #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_44
.LBB5_43:                               # %if.else
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	append_pixel
.LBB5_44:                               # %if.end.121
                                        #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_45
.LBB5_45:                               # %for.inc
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB5_9
.LBB5_46:                               # %for.end
	movq	-8(%rbp), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB5_48
# BB#47:                                # %if.then.124
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	imulq	$24, %rax, %rax
	addq	(%rdx), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	real_to_int_coord
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	append_pixel
.LBB5_48:                               # %if.end.133
	movq	-8(%rbp), %rdi
	callq	free_curve
	movl	$48, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	memcpy
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	remove_knee_points, .Lfunc_end5-remove_knee_points
	.cfi_endproc

	.align	16, 0x90
	.type	filter,@function
filter:                                 # @filter
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
	subq	$192, %rsp
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 12(%rdi)
	cmovnel	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$5, 8(%rdi)
	jge	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_20
.LBB6_2:                                # %if.end
	movl	$0, -12(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	movl	-12(%rbp), %eax
	cmpl	filter_iteration_count, %eax
	jae	.LBB6_20
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-8(%rbp), %rdi
	callq	copy_most_of_curve
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB6_6
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	append_point
.LBB6_6:                                # %if.end.4
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB6_7:                                # %for.cond.5
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	-20(%rbp), %edx
	cmpl	%edx, %eax
	jae	.LBB6_16
# BB#8:                                 # %for.body.8
                                        #   in Loop: Header=BB6_7 Depth=2
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %r8
	leaq	-132(%rbp), %r9
	movl	-16(%rbp), %edi
	movq	-8(%rbp), %rsi
	movl	filter_surround, %edx
	callq	find_curve_vectors
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	filter_angle
	leaq	-80(%rbp), %rcx
	leaq	-112(%rbp), %r8
	leaq	-136(%rbp), %r9
	movsd	%xmm0, -40(%rbp)
	movl	-16(%rbp), %edi
	movq	-8(%rbp), %rsi
	movl	filter_alternative_surround, %edx
	callq	find_curve_vectors
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	filter_angle
	movsd	%xmm0, -48(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	Vadd
	movsd	%xmm0, -176(%rbp)
	movsd	%xmm1, -168(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	ucomisd	filter_epsilon, %xmm0
	jb	.LBB6_14
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_7 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_10
	jp	.LBB6_10
	jmp	.LBB6_14
.LBB6_10:                               # %land.lhs.true.15
                                        #   in Loop: Header=BB6_7 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_11
	jp	.LBB6_11
	jmp	.LBB6_14
.LBB6_11:                               # %if.then.17
                                        #   in Loop: Header=BB6_7 Depth=2
	jmp	.LBB6_12
.LBB6_12:                               # %do.body
                                        #   in Loop: Header=BB6_7 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-136(%rbp), %ecx
	movl	%ecx, -132(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
# BB#13:                                # %do.end
                                        #   in Loop: Header=BB6_7 Depth=2
	jmp	.LBB6_14
.LBB6_14:                               # %if.end.18
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	movups	(%rdx,%rcx,8), %xmm0
	movaps	%xmm0, -160(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	Vadd
	movsd	%xmm0, -192(%rbp)
	movsd	%xmm1, -184(%rbp)
	movups	-192(%rbp), %xmm0
	movaps	%xmm0, -128(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	filter_percent(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	filter_percent(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-32(%rbp), %rdi
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	append_point
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_7
.LBB6_16:                               # %for.end
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB6_18
# BB#17:                                # %if.then.31
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	imulq	$24, %rax, %rax
	addq	(%rdx), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	append_point
.LBB6_18:                               # %if.end.38
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-8(%rbp), %rdi
	callq	free_curve
	movl	$48, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	memcpy
# BB#19:                                # %for.inc.39
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_3
.LBB6_20:                               # %for.end.41
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	filter, .Lfunc_end6-filter
	.cfi_endproc

	.align	16, 0x90
	.type	fit_curve,@function
fit_curve:                              # @fit_curve
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
	movq	-16(%rbp), %rdi
	cmpl	$2, 8(%rdi)
	jge	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movq	$0, -8(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB7_6
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpl	$4, 8(%rax)
	jge	.LBB7_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	fit_with_line
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	movq	-16(%rbp), %rdi
	callq	fit_with_least_squares
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB7_5:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	fit_curve, .Lfunc_end7-fit_curve
	.cfi_endproc

	.align	16, 0x90
	.type	change_bad_lines,@function
change_bad_lines:                       # @change_bad_lines
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -12(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB8_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$80, %rcx, %rcx
	addq	(%rdx), %rcx
	cmpl	$3, 64(%rcx)
	jne	.LBB8_4
# BB#3:                                 # %if.then
	movl	$1, -16(%rbp)
	jmp	.LBB8_6
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB8_1
.LBB8_6:                                # %for.end
	cmpl	$0, -16(%rbp)
	je	.LBB8_16
# BB#7:                                 # %if.then.3
	movl	$0, -12(%rbp)
.LBB8_8:                                # %for.cond.4
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB8_15
# BB#9:                                 # %for.body.6
                                        #   in Loop: Header=BB8_8 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-104(%rbp), %rcx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	imulq	$80, %rsi, %rsi
	addq	(%rdi), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	cmpl	$1, -40(%rbp)
	jne	.LBB8_13
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB8_8 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	line_reversion_threshold, %xmm0
	jbe	.LBB8_12
# BB#11:                                # %if.then.14
                                        #   in Loop: Header=BB8_8 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$80, %rcx, %rcx
	addq	(%rdx), %rcx
	movl	$3, 64(%rcx)
.LBB8_12:                               # %if.end.19
                                        #   in Loop: Header=BB8_8 Depth=1
	jmp	.LBB8_13
.LBB8_13:                               # %if.end.20
                                        #   in Loop: Header=BB8_8 Depth=1
	jmp	.LBB8_14
.LBB8_14:                               # %for.inc.21
                                        #   in Loop: Header=BB8_8 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB8_8
.LBB8_15:                               # %for.end.23
	jmp	.LBB8_17
.LBB8_16:                               # %if.else
	jmp	.LBB8_17
.LBB8_17:                               # %if.end.24
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	change_bad_lines, .Lfunc_end8-change_bad_lines
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	align,@function
align:                                  # @align
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, -20(%rbp)
.LBB9_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_2 Depth 2
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB9_2:                                # %for.cond
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB9_23
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	$0, -24(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$80, %rcx, %rcx
	addq	(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -48(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rdx
	movq	%rdx, -64(%rbp)
	movq	56(%rcx), %rcx
	movq	%rcx, -56(%rbp)
# BB#4:                                 # %do.body.5
                                        #   in Loop: Header=BB9_2 Depth=2
	xorps	%xmm1, %xmm1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movapd	.LCPI9_0(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	epsilon_equal
	cmpl	$0, %eax
	jne	.LBB9_10
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_2 Depth=2
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	align_threshold, %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_10
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	xorl	%edx, %edx
	divl	8(%rcx)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-8(%rbp), %rsi
	imulq	$80, %rcx, %rcx
	addq	(%rsi), %rcx
	movq	%rcx, -80(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB9_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB9_2 Depth=2
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB9_9
.LBB9_8:                                # %cond.false
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB9_9:                                # %cond.end
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	-116(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$80, %rcx, %rcx
	addq	(%rdx), %rcx
	movq	%rcx, -88(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	-80(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movq	-88(%rbp), %rcx
	movsd	%xmm1, 48(%rcx)
	movq	-32(%rbp), %rcx
	movsd	%xmm1, 48(%rcx)
	movq	-32(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movl	$1, -24(%rbp)
.LBB9_10:                               # %if.end
                                        #   in Loop: Header=BB9_2 Depth=2
	jmp	.LBB9_11
.LBB9_11:                               # %do.end
                                        #   in Loop: Header=BB9_2 Depth=2
	jmp	.LBB9_12
.LBB9_12:                               # %do.body.35
                                        #   in Loop: Header=BB9_2 Depth=2
	xorps	%xmm1, %xmm1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movapd	.LCPI9_0(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	epsilon_equal
	cmpl	$0, %eax
	jne	.LBB9_18
# BB#13:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB9_2 Depth=2
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	align_threshold, %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_18
# BB#14:                                # %if.then.44
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	xorl	%edx, %edx
	divl	8(%rcx)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-8(%rbp), %rsi
	imulq	$80, %rcx, %rcx
	addq	(%rsi), %rcx
	movq	%rcx, -104(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB9_16
# BB#15:                                # %cond.true.54
                                        #   in Loop: Header=BB9_2 Depth=2
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB9_17
.LBB9_16:                               # %cond.false.57
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB9_17:                               # %cond.end.59
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	-120(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$80, %rcx, %rcx
	addq	(%rdx), %rcx
	movq	%rcx, -112(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	-104(%rbp), %rcx
	movsd	%xmm1, 8(%rcx)
	movq	-112(%rbp), %rcx
	movsd	%xmm1, 56(%rcx)
	movq	-32(%rbp), %rcx
	movsd	%xmm1, 56(%rcx)
	movq	-32(%rbp), %rcx
	movsd	%xmm1, 8(%rcx)
	movl	$1, -24(%rbp)
.LBB9_18:                               # %if.end.80
                                        #   in Loop: Header=BB9_2 Depth=2
	jmp	.LBB9_19
.LBB9_19:                               # %do.end.81
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	$0, -24(%rbp)
	je	.LBB9_21
# BB#20:                                # %if.then.83
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	-24(%rbp), %eax
	orl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB9_21:                               # %if.end.84
                                        #   in Loop: Header=BB9_2 Depth=2
	jmp	.LBB9_22
.LBB9_22:                               # %for.inc
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_2
.LBB9_23:                               # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_24
.LBB9_24:                               # %do.cond
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB9_1
# BB#25:                                # %do.end.86
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	align, .Lfunc_end9-align
	.cfi_endproc

	.align	16, 0x90
	.type	find_curve_vectors,@function
find_curve_vectors:                     # @find_curve_vectors
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
	subq	$304, %rsp              # imm = 0x130
	xorps	%xmm0, %xmm0
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	movq	-16(%rbp), %rsi
	imulq	$24, %rcx, %rcx
	addq	(%rsi), %rcx
	movq	(%rcx), %rsi
	movq	%rsi, -80(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movl	-4(%rbp), %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_5
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB10_3
# BB#2:                                 # %cond.true.1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	addl	-4(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB10_4
.LBB10_3:                               # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB10_4
.LBB10_4:                               # %cond.end
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false.3
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB10_6:                               # %cond.end.5
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	$0, -64(%rbp)
.LBB10_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -52(%rbp)
	movb	%cl, -185(%rbp)         # 1-byte Spill
	jl	.LBB10_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	setb	%cl
	movb	%cl, -185(%rbp)         # 1-byte Spill
.LBB10_9:                               # %land.end
                                        #   in Loop: Header=BB10_7 Depth=1
	movb	-185(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_10
	jmp	.LBB10_18
.LBB10_10:                              # %for.body
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	-16(%rbp), %rsi
	imulq	$24, %rdx, %rdx
	addq	(%rsi), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	Psubtract
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm1, -88(%rbp)
	movq	-208(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	Vadd
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm1, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rcx)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB10_16
# BB#12:                                # %cond.true.16
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB10_14
# BB#13:                                # %cond.true.19
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	addl	-52(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB10_15
.LBB10_14:                              # %cond.false.23
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB10_15
.LBB10_15:                              # %cond.end.24
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false.26
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB10_17:                              # %cond.end.28
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB10_7
.LBB10_18:                              # %for.end
	xorps	%xmm0, %xmm0
	movl	-64(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jb	.LBB10_23
# BB#19:                                # %cond.true.35
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB10_21
# BB#20:                                # %cond.true.38
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	xorl	%edx, %edx
	divl	8(%rcx)
	movl	%edx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB10_22
.LBB10_21:                              # %cond.false.41
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
.LBB10_22:                              # %cond.end.43
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB10_24
.LBB10_23:                              # %cond.false.45
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB10_24:                              # %cond.end.47
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	$0, -64(%rbp)
.LBB10_25:                              # %for.cond.49
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rdx
	cmpl	8(%rdx), %eax
	movb	%cl, -225(%rbp)         # 1-byte Spill
	jge	.LBB10_28
# BB#26:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_25 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	movb	%cl, -225(%rbp)         # 1-byte Spill
	jae	.LBB10_28
# BB#27:                                # %land.rhs.53
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	setb	%cl
	movb	%cl, -225(%rbp)         # 1-byte Spill
.LBB10_28:                              # %land.end.55
                                        #   in Loop: Header=BB10_25 Depth=1
	movb	-225(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_29
	jmp	.LBB10_37
.LBB10_29:                              # %for.body.56
                                        #   in Loop: Header=BB10_25 Depth=1
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	-16(%rbp), %rsi
	imulq	$24, %rdx, %rdx
	addq	(%rsi), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	Psubtract
	movsd	%xmm0, -128(%rbp)
	movsd	%xmm1, -120(%rbp)
	movq	-248(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-120(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	Vadd
	movsd	%xmm0, -144(%rbp)
	movsd	%xmm1, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rcx)
# BB#30:                                # %for.inc.65
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jl	.LBB10_35
# BB#31:                                # %cond.true.69
                                        #   in Loop: Header=BB10_25 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB10_33
# BB#32:                                # %cond.true.72
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	8(%rcx)
	movl	%edx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB10_34
.LBB10_33:                              # %cond.false.76
                                        #   in Loop: Header=BB10_25 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
.LBB10_34:                              # %cond.end.78
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB10_36
.LBB10_35:                              # %cond.false.80
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB10_36:                              # %cond.end.82
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB10_25
.LBB10_37:                              # %for.end.85
	movl	-64(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB10_57
# BB#38:                                # %if.then
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_43
# BB#39:                                # %cond.true.91
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB10_41
# BB#40:                                # %cond.true.94
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	addl	-4(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB10_42
.LBB10_41:                              # %cond.false.98
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB10_42
.LBB10_42:                              # %cond.end.99
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB10_44
.LBB10_43:                              # %cond.false.101
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB10_44:                              # %cond.end.103
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	$0, -64(%rbp)
.LBB10_45:                              # %for.cond.105
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -52(%rbp)
	movb	%cl, -265(%rbp)         # 1-byte Spill
	jl	.LBB10_47
# BB#46:                                # %land.rhs.107
                                        #   in Loop: Header=BB10_45 Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	setb	%cl
	movb	%cl, -265(%rbp)         # 1-byte Spill
.LBB10_47:                              # %land.end.109
                                        #   in Loop: Header=BB10_45 Depth=1
	movb	-265(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_48
	jmp	.LBB10_56
.LBB10_48:                              # %for.body.110
                                        #   in Loop: Header=BB10_45 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	-16(%rbp), %rsi
	imulq	$24, %rdx, %rdx
	addq	(%rsi), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	Psubtract
	movsd	%xmm0, -160(%rbp)
	movsd	%xmm1, -152(%rbp)
	movq	-288(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	-160(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-152(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	Vadd
	movsd	%xmm0, -176(%rbp)
	movsd	%xmm1, -168(%rbp)
	movq	-176(%rbp), %rax
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rcx)
# BB#49:                                # %for.inc.119
                                        #   in Loop: Header=BB10_45 Depth=1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB10_54
# BB#50:                                # %cond.true.122
                                        #   in Loop: Header=BB10_45 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB10_52
# BB#51:                                # %cond.true.125
                                        #   in Loop: Header=BB10_45 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	addl	-52(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	jmp	.LBB10_53
.LBB10_52:                              # %cond.false.129
                                        #   in Loop: Header=BB10_45 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB10_53
.LBB10_53:                              # %cond.end.130
                                        #   in Loop: Header=BB10_45 Depth=1
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB10_55
.LBB10_54:                              # %cond.false.132
                                        #   in Loop: Header=BB10_45 Depth=1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB10_55:                              # %cond.end.134
                                        #   in Loop: Header=BB10_45 Depth=1
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB10_45
.LBB10_56:                              # %for.end.137
	movl	-64(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB10_57:                              # %if.end
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB10_59
# BB#58:                                # %cond.true.139
	jmp	.LBB10_60
.LBB10_59:                              # %cond.false.140
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$1046, %edx             # imm = 0x416
	movabsq	$.L__PRETTY_FUNCTION__.find_curve_vectors, %rcx
	callq	__assert_fail
.LBB10_60:                              # %cond.end.141
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end10:
	.size	find_curve_vectors, .Lfunc_end10-find_curve_vectors
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4631530004285489152     # double 45
.LCPI11_1:
	.quad	4656466928003448832     # double 1990
.LCPI11_2:
	.quad	4636033603912859648     # double 90
	.text
	.align	16, 0x90
	.type	filter_angle,@function
filter_angle:                           # @filter_angle
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
	subq	$48, %rsp
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	Vangle
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movsd	.LCPI11_2, %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB11_2:                               # %if.end
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	filter_angle, .Lfunc_end11-filter_angle
	.cfi_endproc

	.align	16, 0x90
	.type	fit_with_line,@function
fit_with_line:                          # @fit_with_line
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
	subq	$176, %rsp
	leaq	-88(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	new_spline
	leaq	-88(%rbp), %rax
	xorps	%xmm0, %xmm0
	movl	$1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rcx
	movq	%rcx, -72(%rbp)
	movq	8(%rdi), %rcx
	movq	%rcx, -64(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rdi
	imulq	$24, %rcx, %rcx
	addq	(%rdi), %rcx
	movq	(%rcx), %rdi
	movq	%rdi, -56(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -16(%rbp)
	movups	-24(%rbp), %xmm0
	movq	%rsp, %rcx
	movups	%xmm0, 64(%rcx)
	movups	-88(%rbp), %xmm0
	movups	-72(%rbp), %xmm1
	movups	-56(%rbp), %xmm2
	movups	-40(%rbp), %xmm3
	movups	%xmm3, 48(%rcx)
	movups	%xmm2, 32(%rcx)
	movups	%xmm1, 16(%rcx)
	movups	%xmm0, (%rcx)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	init_spline_list
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	fit_with_line, .Lfunc_end12-fit_with_line
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	5183643170566569984     # double 3.4028234663852886E+38
.LCPI13_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	fit_with_least_squares,@function
fit_with_least_squares:                 # @fit_with_least_squares
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
	subq	$496, %rsp              # imm = 0x1F0
	movl	$1, %esi
	xorl	%eax, %eax
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-192(%rbp), %r8
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	$0, -208(%rbp)
	movsd	%xmm0, -216(%rbp)
	movsd	%xmm0, -224(%rbp)
	movq	%r8, %rdi
	movl	%esi, -348(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	memset
	movq	-16(%rbp), %rdi
	movl	-348(%rbp), %esi        # 4-byte Reload
	movl	-352(%rbp), %edx        # 4-byte Reload
	callq	find_tangent
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	find_tangent
	movq	-16(%rbp), %rdi
	callq	set_initial_parameter_values
.LBB13_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-304(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fit_one_spline
	leaq	-112(%rbp), %rsi
	leaq	-204(%rbp), %rdi
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-304(%rbp), %rcx
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-16(%rbp), %rdi
	movups	-48(%rbp), %xmm0
	movq	%rsp, %rcx
	movups	%xmm0, 64(%rcx)
	movups	-112(%rbp), %xmm0
	movups	-96(%rbp), %xmm1
	movups	-80(%rbp), %xmm2
	movups	-64(%rbp), %xmm3
	movups	%xmm3, 48(%rcx)
	movups	%xmm2, 32(%rcx)
	movups	%xmm1, 16(%rcx)
	movups	%xmm0, (%rcx)
	leaq	-204(%rbp), %rsi
	callq	find_error
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-216(%rbp), %xmm0
	jbe	.LBB13_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	leaq	-192(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-216(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -224(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	reparameterize_improvement, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB13_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	reparameterize_threshold, %xmm0
	jbe	.LBB13_7
.LBB13_6:                               # %if.then.3
	jmp	.LBB13_10
.LBB13_7:                               # %if.end.4
                                        #   in Loop: Header=BB13_1 Depth=1
	leaq	-112(%rbp), %rax
	movl	-208(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -208(%rbp)
	movq	-16(%rbp), %rdi
	movups	-48(%rbp), %xmm0
	movq	%rsp, %rdx
	movups	%xmm0, 64(%rdx)
	movups	-112(%rbp), %xmm0
	movups	-96(%rbp), %xmm1
	movups	-80(%rbp), %xmm2
	movups	-64(%rbp), %xmm3
	movups	%xmm3, 48(%rdx)
	movups	%xmm2, 32(%rdx)
	movups	%xmm1, 16(%rdx)
	movups	%xmm0, (%rdx)
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	reparameterize
	cmpl	$0, %eax
	jne	.LBB13_9
# BB#8:                                 # %if.then.6
	jmp	.LBB13_10
.LBB13_9:                               # %if.end.7
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	jmp	.LBB13_1
.LBB13_10:                              # %while.end
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-192(%rbp), %rcx
	leaq	-112(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	error_threshold, %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_14
# BB#11:                                # %if.then.9
	leaq	-112(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	spline_linear_enough
	cmpl	$0, %eax
	je	.LBB13_13
# BB#12:                                # %if.then.12
	movl	$1, -48(%rbp)
.LBB13_13:                              # %if.end.13
	leaq	-112(%rbp), %rax
	movups	-48(%rbp), %xmm0
	movq	%rsp, %rcx
	movups	%xmm0, 64(%rcx)
	movups	-112(%rbp), %xmm0
	movups	-96(%rbp), %xmm1
	movups	-80(%rbp), %xmm2
	movups	-64(%rbp), %xmm3
	movups	%xmm3, 48(%rcx)
	movups	%xmm2, 32(%rcx)
	movups	%xmm1, 16(%rcx)
	movups	%xmm0, (%rcx)
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	init_spline_list
	movq	%rax, -200(%rbp)
	jmp	.LBB13_28
.LBB13_14:                              # %if.else.15
	callq	new_curve
	movq	%rax, -336(%rbp)
	callq	new_curve
	movq	%rax, -344(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-344(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-336(%rbp), %rax
	movq	-344(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-344(%rbp), %rax
	movq	-336(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	-336(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-336(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rdi
	movl	-204(%rbp), %esi
	callq	find_subdivision
	xorl	%esi, %esi
	movl	$1, %edx
	movl	%eax, -308(%rbp)
	movl	-308(%rbp), %eax
	addl	$1, %eax
	movq	-336(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %eax
	subl	-308(%rbp), %eax
	movq	-344(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-336(%rbp), %rdi
	movq	%rcx, (%rdi)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	-308(%rbp), %eax
	movl	%eax, %edi
	imulq	$24, %rdi, %rdi
	addq	%rdi, %rcx
	movq	-344(%rbp), %rdi
	movq	%rcx, (%rdi)
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-336(%rbp), %rdi
	movq	%rcx, 16(%rdi)
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-344(%rbp), %rdi
	movq	%rcx, 24(%rdi)
	movq	-336(%rbp), %rdi
	callq	find_tangent
	movq	-336(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-344(%rbp), %rdi
	movq	%rcx, 16(%rdi)
	movq	-336(%rbp), %rdi
	callq	fit_curve
	movq	%rax, -320(%rbp)
	movq	-344(%rbp), %rdi
	callq	fit_curve
	movq	%rax, -328(%rbp)
	cmpq	$0, -320(%rbp)
	jne	.LBB13_17
# BB#15:                                # %land.lhs.true
	cmpq	$0, -328(%rbp)
	jne	.LBB13_17
# BB#16:                                # %if.then.42
	movq	$0, -8(%rbp)
	jmp	.LBB13_29
.LBB13_17:                              # %if.end.43
	callq	new_spline_list
	movq	%rax, -200(%rbp)
	cmpq	$0, -320(%rbp)
	jne	.LBB13_21
# BB#18:                                # %if.then.46
	jmp	.LBB13_19
.LBB13_19:                              # %do.body
	movabsq	$.L.str.4, %rdi
	movq	stderr, %rsi
	callq	fputs
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rdx
	movq	stderr, %rdi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.7, %rdi
	movq	stderr, %rsi
	movl	%eax, -384(%rbp)        # 4-byte Spill
	callq	fputs
	movq	stderr, %rdi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	fflush
	movl	%eax, -392(%rbp)        # 4-byte Spill
# BB#20:                                # %do.end
	jmp	.LBB13_22
.LBB13_21:                              # %if.else.51
	movq	-200(%rbp), %rdi
	movq	-320(%rbp), %rax
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	callq	concat_spline_lists
.LBB13_22:                              # %if.end.52
	cmpq	$0, -328(%rbp)
	jne	.LBB13_26
# BB#23:                                # %if.then.54
	jmp	.LBB13_24
.LBB13_24:                              # %do.body.55
	movabsq	$.L.str.4, %rdi
	movq	stderr, %rsi
	callq	fputs
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.8, %rdx
	movq	stderr, %rdi
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.7, %rdi
	movq	stderr, %rsi
	movl	%eax, -400(%rbp)        # 4-byte Spill
	callq	fputs
	movq	stderr, %rdi
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	fflush
	movl	%eax, -408(%rbp)        # 4-byte Spill
# BB#25:                                # %do.end.60
	jmp	.LBB13_27
.LBB13_26:                              # %if.else.61
	movq	-200(%rbp), %rdi
	movq	-328(%rbp), %rax
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	callq	concat_spline_lists
.LBB13_27:                              # %if.end.62
	jmp	.LBB13_28
.LBB13_28:                              # %if.end.63
	movq	-200(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_29:                              # %return
	movq	-8(%rbp), %rax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end13:
	.size	fit_with_least_squares, .Lfunc_end13-fit_with_least_squares
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	find_tangent,@function
find_tangent:                           # @find_tangent
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB14_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB14_3:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB14_13
# BB#4:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	leaq	-44(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	find_half_tangent
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB14_9
# BB#5:                                 # %if.then.3
	cmpl	$0, -12(%rbp)
	je	.LBB14_7
# BB#6:                                 # %cond.true.5
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false.6
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB14_8:                               # %cond.end.7
	movq	-136(%rbp), %rax        # 8-byte Reload
	leaq	-44(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	cmpl	$0, -12(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	find_half_tangent
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm1, -80(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	Vadd
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm1, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB14_9:                               # %if.end
	cmpl	$0, -44(%rbp)
	jbe	.LBB14_11
# BB#10:                                # %cond.true.14
	jmp	.LBB14_12
.LBB14_11:                              # %cond.false.15
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$1652, %edx             # imm = 0x674
	movabsq	$.L__PRETTY_FUNCTION__.find_tangent, %rcx
	callq	__assert_fail
.LBB14_12:                              # %cond.end.16
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	cvtsi2sdq	%rdx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-144(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	Vmult_scalar
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm1, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-112(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.LBB14_14
.LBB14_13:                              # %if.else
	jmp	.LBB14_14
.LBB14_14:                              # %if.end.19
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	find_tangent, .Lfunc_end14-find_tangent
	.cfi_endproc

	.align	16, 0x90
	.type	set_initial_parameter_values,@function
set_initial_parameter_values:           # @set_initial_parameter_values
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
	subq	$64, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movsd	%xmm0, 16(%rdi)
	movl	$1, -12(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB15_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -32(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -48(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	distance
	movsd	%xmm0, -56(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	%xmm0, 16(%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_1
.LBB15_4:                               # %for.end
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	imulq	$24, %rax, %rax
	addq	(%rdx), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB15_5
	jp	.LBB15_5
	jmp	.LBB15_6
.LBB15_5:                               # %cond.true
	jmp	.LBB15_7
.LBB15_6:                               # %cond.false
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$1608, %edx             # imm = 0x648
	movabsq	$.L__PRETTY_FUNCTION__.set_initial_parameter_values, %rcx
	callq	__assert_fail
.LBB15_7:                               # %cond.end
	movl	$1, -12(%rbp)
.LBB15_8:                               # %for.cond.23
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB15_11
# BB#9:                                 # %for.body.26
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	divsd	16(%rcx), %xmm0
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	%xmm0, 16(%rcx)
# BB#10:                                # %for.inc.41
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_8
.LBB15_11:                              # %for.end.43
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	set_initial_parameter_values, .Lfunc_end15-set_initial_parameter_values
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
.LCPI16_1:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	fit_one_spline,@function
fit_one_spline:                         # @fit_one_spline
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
	pushq	%rbx
	subq	$728, %rsp              # imm = 0x2D8
.Ltmp51:
	.cfi_offset %rbx, -24
	movq	%rdi, %rax
	movl	$16, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	leaq	-256(%rbp), %r8
	movl	$32, %r9d
	movl	%r9d, %r10d
	leaq	-240(%rbp), %r11
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	(%rsi), %rbx
	movq	%rbx, -192(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -184(%rbp)
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	(%rsi), %rbx
	movq	%rbx, -208(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -200(%rbp)
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movl	%ecx, %esi
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	movq	%r8, -672(%rbp)         # 8-byte Spill
	callq	memset
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-660(%rbp), %esi        # 4-byte Reload
	movq	-648(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -260(%rbp)
	movl	-260(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdi
	movq	-648(%rbp), %rsi        # 8-byte Reload
	callq	g_malloc0_n
	xorps	%xmm0, %xmm0
	movq	%rax, -272(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	imulq	$24, %rax, %rax
	addq	(%rdx), %rax
	movq	(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	make_vector
	movsd	%xmm0, -288(%rbp)
	movsd	%xmm1, -280(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -144(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	make_vector
	movsd	%xmm0, -304(%rbp)
	movsd	%xmm1, -296(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -172(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-172(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB16_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_1, %xmm1        # xmm1 = mem[0],zero
	movl	-172(%rbp), %eax
	shll	$1, %eax
	addl	$0, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$4, %rcx
	addq	-272(%rbp), %rcx
	movl	-172(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	imulq	$24, %rdx, %rdx
	addq	(%rsi), %rdx
	mulsd	16(%rdx), %xmm1
	movl	-172(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	imulq	$24, %rdx, %rdx
	addq	(%rsi), %rdx
	movaps	%xmm0, %xmm2
	subsd	16(%rdx), %xmm2
	movl	-172(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	imulq	$24, %rdx, %rdx
	addq	(%rsi), %rdx
	subsd	16(%rdx), %xmm0
	mulsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm1, -680(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-680(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	callq	Vmult_scalar
	movsd	.LCPI16_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI16_1, %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -320(%rbp)
	movsd	%xmm1, -312(%rbp)
	movq	-320(%rbp), %rcx
	movq	-688(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	-312(%rbp), %rcx
	movq	%rcx, 8(%rdx)
	movl	-172(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$4, %rcx
	addq	-272(%rbp), %rcx
	movl	-172(%rbp), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	imulq	$24, %rsi, %rsi
	addq	(%rdi), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movl	-172(%rbp), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	imulq	$24, %rsi, %rsi
	addq	(%rdi), %rsi
	mulsd	16(%rsi), %xmm0
	mulsd	%xmm0, %xmm3
	movl	-172(%rbp), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	imulq	$24, %rsi, %rsi
	addq	(%rdi), %rsi
	subsd	16(%rsi), %xmm2
	mulsd	%xmm2, %xmm3
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movaps	%xmm3, %xmm2
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	callq	Vmult_scalar
	movsd	%xmm0, -336(%rbp)
	movsd	%xmm1, -328(%rbp)
	movq	-336(%rbp), %rcx
	movq	-696(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	-328(%rbp), %rcx
	movq	%rcx, 8(%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB16_1
.LBB16_4:                               # %for.end
	movl	$0, -172(%rbp)
.LBB16_5:                               # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movl	-172(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB16_8
# BB#6:                                 # %for.body.64
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	-172(%rbp), %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$4, %rcx
	addq	-272(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-424(%rbp), %rcx
	movq	-424(%rbp), %rdx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movsd	(%rdx), %xmm2           # xmm2 = mem[0],zero
	movsd	8(%rdx), %xmm3          # xmm3 = mem[0],zero
	callq	Vdot
	addsd	-240(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
	movq	-424(%rbp), %rcx
	movq	-424(%rbp), %rdx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rdx), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%rdx), %xmm3         # xmm3 = mem[0],zero
	callq	Vdot
	addsd	-232(%rbp), %xmm0
	movsd	%xmm0, -232(%rbp)
	movq	-424(%rbp), %rcx
	movq	-424(%rbp), %rdx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	16(%rdx), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%rdx), %xmm3         # xmm3 = mem[0],zero
	callq	Vdot
	movsd	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero
	addsd	-216(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movaps	%xmm1, %xmm0
	subsd	16(%rcx), %xmm0
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movaps	%xmm1, %xmm2
	subsd	16(%rcx), %xmm2
	mulsd	%xmm2, %xmm0
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	subsd	16(%rcx), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-704(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	Vmult_scalar
	movsd	.LCPI16_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI16_1, %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -440(%rbp)
	movsd	%xmm1, -432(%rbp)
	movq	-440(%rbp), %rcx
	movq	%rcx, -368(%rbp)
	movq	-432(%rbp), %rcx
	movq	%rcx, -360(%rbp)
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	mulsd	16(%rcx), %xmm3
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movaps	%xmm2, %xmm0
	subsd	16(%rcx), %xmm0
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	subsd	16(%rcx), %xmm2
	mulsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm3
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movaps	%xmm3, %xmm2
	callq	Vmult_scalar
	movsd	.LCPI16_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI16_1, %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -456(%rbp)
	movsd	%xmm1, -448(%rbp)
	movq	-456(%rbp), %rcx
	movq	%rcx, -384(%rbp)
	movq	-448(%rbp), %rcx
	movq	%rcx, -376(%rbp)
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	mulsd	16(%rcx), %xmm0
	mulsd	%xmm0, %xmm3
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	subsd	16(%rcx), %xmm2
	mulsd	%xmm2, %xmm3
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	movaps	%xmm3, %xmm2
	callq	Vmult_scalar
	movsd	%xmm0, -472(%rbp)
	movsd	%xmm1, -464(%rbp)
	movq	-472(%rbp), %rcx
	movq	%rcx, -400(%rbp)
	movq	-464(%rbp), %rcx
	movq	%rcx, -392(%rbp)
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	mulsd	16(%rcx), %xmm0
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	mulsd	16(%rcx), %xmm0
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-160(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -712(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-712(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	Vmult_scalar
	movsd	%xmm0, -488(%rbp)
	movsd	%xmm1, -480(%rbp)
	movq	-488(%rbp), %rcx
	movq	%rcx, -416(%rbp)
	movq	-480(%rbp), %rcx
	movq	%rcx, -408(%rbp)
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	-400(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-392(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-416(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-408(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	callq	Vadd
	movsd	%xmm0, -552(%rbp)
	movsd	%xmm1, -544(%rbp)
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-552(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-544(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	Vadd
	movsd	%xmm0, -536(%rbp)
	movsd	%xmm1, -528(%rbp)
	movsd	-368(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-360(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-536(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-528(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	Vadd
	movsd	%xmm0, -520(%rbp)
	movsd	%xmm1, -512(%rbp)
	movq	-720(%rbp), %rcx        # 8-byte Reload
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movsd	-520(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-512(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	Vsubtract_point
	movsd	%xmm0, -504(%rbp)
	movsd	%xmm1, -496(%rbp)
	movsd	-504(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-496(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	make_vector
	movsd	%xmm0, -568(%rbp)
	movsd	%xmm1, -560(%rbp)
	movq	-568(%rbp), %rcx
	movq	%rcx, -352(%rbp)
	movq	-560(%rbp), %rcx
	movq	%rcx, -344(%rbp)
	movq	-424(%rbp), %rcx
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	(%rcx), %xmm2           # xmm2 = mem[0],zero
	movsd	8(%rcx), %xmm3          # xmm3 = mem[0],zero
	callq	Vdot
	addsd	-256(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
	movq	-424(%rbp), %rcx
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	16(%rcx), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%rcx), %xmm3         # xmm3 = mem[0],zero
	callq	Vdot
	addsd	-248(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
# BB#7:                                 # %for.inc.179
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB16_5
.LBB16_8:                               # %for.end.181
	xorps	%xmm0, %xmm0
	movsd	-232(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -224(%rbp)
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-216(%rbp), %xmm1
	movsd	-248(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-232(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-248(%rbp), %xmm1
	movsd	-232(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-256(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-216(%rbp), %xmm1
	movsd	-224(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-232(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB16_11
	jp	.LBB16_11
# BB#9:                                 # %if.then
	jmp	.LBB16_10
.LBB16_10:                              # %do.body
	movabsq	$.L.str.11, %rdi
	movq	stderr, %rsi
	callq	fputs
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.12, %rdx
	movq	stderr, %rdi
	movl	%eax, -724(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.7, %rdi
	movq	stderr, %rsi
	movl	%eax, -728(%rbp)        # 4-byte Spill
	callq	fputs
	movl	$1, %edi
	movl	%eax, -732(%rbp)        # 4-byte Spill
	callq	exit
.LBB16_11:                              # %if.end
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	Vmult_scalar
	movsd	%xmm0, -584(%rbp)
	movsd	%xmm1, -576(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-584(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-576(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	Vadd_point
	movsd	%xmm0, -600(%rbp)
	movsd	%xmm1, -592(%rbp)
	movq	-600(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-592(%rbp), %rax
	movq	%rax, -112(%rbp)
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	Vmult_scalar
	movsd	%xmm0, -616(%rbp)
	movsd	%xmm1, -608(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-616(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-608(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	Vadd_point
	movsd	%xmm0, -632(%rbp)
	movsd	%xmm1, -624(%rbp)
	movq	-632(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$3, -72(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-136(%rbp), %rax
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movq	-656(%rbp), %rax        # 8-byte Reload
	addq	$728, %rsp              # imm = 0x2D8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	fit_one_spline, .Lfunc_end16-fit_one_spline
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4039728865751334912     # double 1.1754943508222875E-38
	.text
	.align	16, 0x90
	.type	find_error,@function
find_error:                             # @find_error
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
	subq	$192, %rsp
	leaq	16(%rbp), %rax
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	8(%rsi), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rsi
	movl	%ecx, (%rsi)
	movl	$0, -20(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB17_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -56(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movups	64(%rcx), %xmm1
	movq	%rsp, %rdx
	movups	%xmm1, 64(%rdx)
	movups	(%rcx), %xmm1
	movups	16(%rcx), %xmm2
	movups	32(%rcx), %xmm3
	movups	48(%rcx), %xmm4
	movups	%xmm4, 48(%rdx)
	movups	%xmm3, 32(%rdx)
	movups	%xmm2, 16(%rdx)
	movups	%xmm1, (%rdx)
	callq	evaluate_spline
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -72(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	distance
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB17_1
.LBB17_6:                               # %for.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB17_11
# BB#7:                                 # %if.then.12
	xorps	%xmm1, %xmm1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	epsilon_equal
	cmpl	$0, %eax
	je	.LBB17_9
# BB#8:                                 # %if.then.14
	jmp	.LBB17_10
.LBB17_9:                               # %if.else
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB17_10:                              # %if.end.16
	jmp	.LBB17_12
.LBB17_11:                              # %if.else.17
	jmp	.LBB17_12
.LBB17_12:                              # %if.end.18
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	find_error, .Lfunc_end17-find_error
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	-4616189618054758400    # double -1
.LCPI18_1:
	.quad	4611686018427387904     # double 2
.LCPI18_2:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	reparameterize,@function
reparameterize:                         # @reparameterize
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
	subq	$448, %rsp              # imm = 0x1C0
	leaq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	$0, -24(%rbp)
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -24(%rbp)
	jae	.LBB18_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	leaq	-104(%rbp), %rax
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	movq	-344(%rbp), %rsi        # 8-byte Reload
	addq	%rdx, %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	movq	-344(%rbp), %rsi        # 8-byte Reload
	addq	%rdx, %rsi
	subsd	(%rsi), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movsd	%xmm2, (%rsi)
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	movq	-344(%rbp), %rsi        # 8-byte Reload
	addq	%rdx, %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	movq	-344(%rbp), %rsi        # 8-byte Reload
	addq	%rdx, %rsi
	subsd	8(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movsd	%xmm0, 8(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-104(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movsd	%xmm0, 8(%rsi)
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movsd	%xmm0, (%rax)
	movl	$2, -40(%rbp)
	movl	$0, -24(%rbp)
.LBB18_5:                               # %for.cond.31
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -24(%rbp)
	jae	.LBB18_8
# BB#6:                                 # %for.body.33
                                        #   in Loop: Header=BB18_5 Depth=1
	leaq	-184(%rbp), %rax
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-104(%rbp), %rcx
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %esi
	shlq	$4, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	shlq	$4, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subsd	(%rdi), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	shlq	$4, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movsd	%xmm2, (%rdi)
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %esi
	shlq	$4, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	shlq	$4, %rsi
	addq	%rsi, %rcx
	subsd	8(%rcx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	-24(%rbp), %edx
	movl	%edx, %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movsd	%xmm0, 8(%rax)
# BB#7:                                 # %for.inc.64
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB18_5
.LBB18_8:                               # %for.end.66
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	%xmm0, -136(%rbp)
	movsd	%xmm0, -144(%rbp)
	movsd	%xmm0, -152(%rbp)
	movl	$1, -120(%rbp)
	movl	$0, -20(%rbp)
.LBB18_9:                               # %for.cond.80
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB18_14
# BB#10:                                # %for.body.82
                                        #   in Loop: Header=BB18_9 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -232(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -224(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movups	64(%rcx), %xmm1
	movq	%rsp, %rdx
	movups	%xmm1, 64(%rdx)
	movups	(%rcx), %xmm1
	movups	16(%rcx), %xmm2
	movups	32(%rcx), %xmm3
	movups	48(%rcx), %xmm4
	movups	%xmm4, 48(%rdx)
	movups	%xmm3, 32(%rdx)
	movups	%xmm2, 16(%rdx)
	movups	%xmm1, (%rdx)
	callq	evaluate_spline
	leaq	-104(%rbp), %rcx
	movsd	%xmm0, -256(%rbp)
	movsd	%xmm1, -248(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movups	-40(%rbp), %xmm1
	movq	%rsp, %rdx
	movups	%xmm1, 64(%rdx)
	movups	-104(%rbp), %xmm1
	movups	-88(%rbp), %xmm2
	movups	-72(%rbp), %xmm3
	movups	-56(%rbp), %xmm4
	movups	%xmm4, 48(%rdx)
	movups	%xmm3, 32(%rdx)
	movups	%xmm2, 16(%rdx)
	movups	%xmm1, (%rdx)
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	evaluate_spline
	leaq	-184(%rbp), %rcx
	movsd	%xmm0, -272(%rbp)
	movsd	%xmm1, -264(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movups	-120(%rbp), %xmm1
	movq	%rsp, %rdx
	movups	%xmm1, 64(%rdx)
	movups	-184(%rbp), %xmm1
	movups	-168(%rbp), %xmm2
	movups	-152(%rbp), %xmm3
	movups	-136(%rbp), %xmm4
	movups	%xmm4, 48(%rdx)
	movups	%xmm3, 32(%rdx)
	movups	%xmm2, 16(%rdx)
	movups	%xmm1, (%rdx)
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	evaluate_spline
	movsd	%xmm0, -288(%rbp)
	movsd	%xmm1, -280(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-232(%rbp), %xmm0
	movsd	%xmm0, -304(%rbp)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-224(%rbp), %xmm0
	movsd	%xmm0, -296(%rbp)
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-272(%rbp), %xmm0
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-264(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -312(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-272(%rbp), %xmm0
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-288(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-264(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-280(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -320(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-248(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-232(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-224(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	distance
	movsd	%xmm0, -200(%rbp)
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-320(%rbp), %xmm0
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rcx)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movups	64(%rcx), %xmm1
	movq	%rsp, %rdx
	movups	%xmm1, 64(%rdx)
	movups	(%rcx), %xmm1
	movups	16(%rcx), %xmm2
	movups	32(%rcx), %xmm3
	movups	48(%rcx), %xmm4
	movups	%xmm4, 48(%rdx)
	movups	%xmm3, 32(%rdx)
	movups	%xmm2, 16(%rdx)
	movups	%xmm1, (%rdx)
	callq	evaluate_spline
	movsd	%xmm0, -336(%rbp)
	movsd	%xmm1, -328(%rbp)
	movq	-336(%rbp), %rcx
	movq	%rcx, -216(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, -208(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-232(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-224(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	distance
	movsd	%xmm0, -192(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-200(%rbp), %xmm0
	jbe	.LBB18_12
# BB#11:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB18_15
.LBB18_12:                              # %if.end
                                        #   in Loop: Header=BB18_9 Depth=1
	jmp	.LBB18_13
.LBB18_13:                              # %for.inc.134
                                        #   in Loop: Header=BB18_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB18_9
.LBB18_14:                              # %for.end.136
	movl	$1, -4(%rbp)
.LBB18_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end18:
	.size	reparameterize, .Lfunc_end18-reparameterize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI19_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	spline_linear_enough,@function
spline_linear_enough:                   # @spline_linear_enough
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
	subq	$176, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	48(%rsi), %xmm1         # xmm1 = mem[0],zero
	callq	epsilon_equal
	cmpl	$0, %eax
	je	.LBB19_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB19_3
.LBB19_2:                               # %if.else
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	8(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	(%rax), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB19_3:                               # %if.end
	movl	$0, -52(%rbp)
.LBB19_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB19_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB19_4 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rcx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movups	64(%rcx), %xmm1
	movq	%rsp, %rdx
	movups	%xmm1, 64(%rdx)
	movups	(%rcx), %xmm1
	movups	16(%rcx), %xmm2
	movups	32(%rcx), %xmm3
	movups	48(%rcx), %xmm4
	movups	%xmm4, 48(%rdx)
	movups	%xmm3, 32(%rdx)
	movups	%xmm2, 16(%rdx)
	movups	%xmm1, (%rdx)
	callq	evaluate_spline
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm1, -80(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	addsd	-40(%rbp), %xmm0
	movapd	.LCPI19_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	-64(%rbp), %xmm1
	movsd	%xmm1, -64(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB19_4 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB19_4
.LBB19_7:                               # %for.end
	movq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	line_threshold, %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	spline_linear_enough, .Lfunc_end19-spline_linear_enough
	.cfi_endproc

	.align	16, 0x90
	.type	find_subdivision,@function
find_subdivision:                       # @find_subdivision
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$-1, -32(%rbp)
	movups	.Lfind_subdivision.best(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movsd	subdivide_search(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	cvtsi2sdl	8(%rdi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rdi
	movl	%edi, %esi
	movl	%esi, -52(%rbp)
	movl	-20(%rbp), %esi
	movl	%esi, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -24(%rbp)
	movb	%cl, -53(%rbp)          # 1-byte Spill
	jbe	.LBB20_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	setb	%cl
	movb	%cl, -53(%rbp)          # 1-byte Spill
.LBB20_3:                               # %land.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	-53(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB20_4
	jmp	.LBB20_14
.LBB20_4:                               # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	test_subdivision_point
	cmpl	$0, %eax
	je	.LBB20_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB20_6:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_7
.LBB20_7:                               # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB20_12
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB20_10
# BB#9:                                 # %cond.true.8
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB20_11
.LBB20_10:                              # %cond.false
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB20_11
.LBB20_11:                              # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB20_13
.LBB20_12:                              # %cond.false.11
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB20_13:                              # %cond.end.13
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB20_1
.LBB20_14:                              # %for.end
	cmpl	$-1, -32(%rbp)
	je	.LBB20_16
# BB#15:                                # %if.then.17
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB20_40
.LBB20_16:                              # %if.end.18
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jb	.LBB20_21
# BB#17:                                # %cond.true.23
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB20_19
# BB#18:                                # %cond.true.26
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	xorl	%edx, %edx
	divl	8(%rcx)
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB20_20
.LBB20_19:                              # %cond.false.29
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB20_20:                              # %cond.end.31
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB20_22
.LBB20_21:                              # %cond.false.33
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB20_22:                              # %cond.end.35
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB20_23:                              # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %esi
	subl	$1, %esi
	cmpl	%esi, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jae	.LBB20_25
# BB#24:                                # %land.rhs.42
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	setb	%cl
	movb	%cl, -73(%rbp)          # 1-byte Spill
.LBB20_25:                              # %land.end.45
                                        #   in Loop: Header=BB20_23 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB20_26
	jmp	.LBB20_36
.LBB20_26:                              # %for.body.46
                                        #   in Loop: Header=BB20_23 Depth=1
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	test_subdivision_point
	cmpl	$0, %eax
	je	.LBB20_28
# BB#27:                                # %if.then.49
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB20_28:                              # %if.end.50
                                        #   in Loop: Header=BB20_23 Depth=1
	jmp	.LBB20_29
.LBB20_29:                              # %for.inc.51
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jb	.LBB20_34
# BB#30:                                # %cond.true.56
                                        #   in Loop: Header=BB20_23 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB20_32
# BB#31:                                # %cond.true.59
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	xorl	%edx, %edx
	divl	8(%rcx)
	movl	%edx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB20_33
.LBB20_32:                              # %cond.false.63
                                        #   in Loop: Header=BB20_23 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB20_33:                              # %cond.end.65
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB20_35
.LBB20_34:                              # %cond.false.67
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB20_35:                              # %cond.end.69
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB20_23
.LBB20_36:                              # %for.end.72
	cmpl	$-1, -32(%rbp)
	jne	.LBB20_38
# BB#37:                                # %cond.true.75
	movl	-20(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB20_39
.LBB20_38:                              # %cond.false.76
	movl	-32(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB20_39:                              # %cond.end.77
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB20_40:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	find_subdivision, .Lfunc_end20-find_subdivision
	.cfi_endproc

	.align	16, 0x90
	.type	find_half_tangent,@function
find_half_tangent:                      # @find_half_tangent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	cmpl	$0, -28(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB21_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB21_3
.LBB21_2:                               # %cond.false
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
.LBB21_3:                               # %cond.end
	movl	-164(%rbp), %eax        # 4-byte Reload
	xorps	%xmm0, %xmm0
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -72(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm0, -80(%rbp)
	movl	$1, -44(%rbp)
.LBB21_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	tangent_surround, %eax
	ja	.LBB21_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jl	.LBB21_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	-92(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jl	.LBB21_8
.LBB21_7:                               # %if.then
	jmp	.LBB21_10
.LBB21_8:                               # %if.end
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -112(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	Psubtract
	movsd	%xmm0, -144(%rbp)
	movsd	%xmm1, -136(%rbp)
	cvtsi2sdl	-48(%rbp), %xmm2
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	Vmult_scalar
	movsd	%xmm0, -128(%rbp)
	movsd	%xmm1, -120(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-120(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	Vadd
	movsd	%xmm0, -160(%rbp)
	movsd	%xmm1, -152(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %eax
	addl	$1, %eax
	movl	%eax, (%rcx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB21_4
.LBB21_10:                              # %for.end
	movups	-88(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	find_half_tangent, .Lfunc_end21-find_half_tangent
	.cfi_endproc

	.align	16, 0x90
	.type	test_subdivision_point,@function
test_subdivision_point:                 # @test_subdivision_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-48(%rbp), %rcx
	leaq	-64(%rbp), %r8
	leaq	-28(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -68(%rbp)
	movl	-12(%rbp), %edi
	movq	-8(%rbp), %rsi
	movl	subdivide_surround, %edx
	callq	find_curve_vectors
	movl	-28(%rbp), %edx
	cmpl	subdivide_surround, %edx
	jne	.LBB22_38
# BB#1:                                 # %if.then
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	Vabs
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm1, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	Vabs
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm1, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	subdivide_threshold, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_3
# BB#2:                                 # %land.lhs.true
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	subdivide_threshold, %xmm0
	ja	.LBB22_5
.LBB22_3:                               # %lor.lhs.false
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	subdivide_threshold, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_7
# BB#4:                                 # %land.lhs.true.7
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	subdivide_threshold, %xmm0
	jbe	.LBB22_7
.LBB22_5:                               # %land.lhs.true.10
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	subdivide_threshold, %xmm0
	jbe	.LBB22_7
# BB#6:                                 # %land.lhs.true.13
	movb	$1, %al
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	subdivide_threshold, %xmm0
	movb	%al, -105(%rbp)         # 1-byte Spill
	ja	.LBB22_15
.LBB22_7:                               # %lor.rhs
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	subdivide_threshold, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_9
# BB#8:                                 # %land.lhs.true.18
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	subdivide_threshold, %xmm0
	ja	.LBB22_11
.LBB22_9:                               # %lor.lhs.false.21
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	subdivide_threshold, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -106(%rbp)         # 1-byte Spill
	jbe	.LBB22_14
# BB#10:                                # %land.lhs.true.24
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	subdivide_threshold, %xmm0
	movb	%cl, -106(%rbp)         # 1-byte Spill
	jbe	.LBB22_14
.LBB22_11:                              # %land.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	subdivide_threshold, %xmm0
	movb	%cl, -107(%rbp)         # 1-byte Spill
	jbe	.LBB22_13
# BB#12:                                # %land.rhs.29
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	subdivide_threshold, %xmm0
	seta	%al
	movb	%al, -107(%rbp)         # 1-byte Spill
.LBB22_13:                              # %land.end
	movb	-107(%rbp), %al         # 1-byte Reload
	movb	%al, -106(%rbp)         # 1-byte Spill
.LBB22_14:                              # %land.end.32
	movb	-106(%rbp), %al         # 1-byte Reload
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB22_15:                              # %lor.end
	movb	-105(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB22_37
# BB#16:                                # %if.then.33
	jmp	.LBB22_17
.LBB22_17:                              # %do.body
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	subdivide_threshold, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_20
# BB#18:                                # %land.lhs.true.36
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_20
# BB#19:                                # %if.then.40
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB22_20:                              # %if.end
	jmp	.LBB22_21
.LBB22_21:                              # %do.end
	jmp	.LBB22_22
.LBB22_22:                              # %do.body.43
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	subdivide_threshold, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_25
# BB#23:                                # %land.lhs.true.46
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_25
# BB#24:                                # %if.then.50
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
.LBB22_25:                              # %if.end.53
	jmp	.LBB22_26
.LBB22_26:                              # %do.end.54
	jmp	.LBB22_27
.LBB22_27:                              # %do.body.55
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	subdivide_threshold, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_30
# BB#28:                                # %land.lhs.true.58
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_30
# BB#29:                                # %if.then.62
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB22_30:                              # %if.end.65
	jmp	.LBB22_31
.LBB22_31:                              # %do.end.66
	jmp	.LBB22_32
.LBB22_32:                              # %do.body.67
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	subdivide_threshold, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_35
# BB#33:                                # %land.lhs.true.70
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_35
# BB#34:                                # %if.then.74
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
.LBB22_35:                              # %if.end.77
	jmp	.LBB22_36
.LBB22_36:                              # %do.end.78
	jmp	.LBB22_37
.LBB22_37:                              # %if.end.79
	jmp	.LBB22_38
.LBB22_38:                              # %if.end.80
	movl	-68(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	test_subdivision_point, .Lfunc_end22-test_subdivision_point
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI23_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	find_corners,@function
find_corners:                           # @find_corners
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	callq	new_index_list
	movq	%rax, -56(%rbp)
	movl	%edx, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_4 Depth 2
                                        #     Child Loop BB23_23 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB23_35
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	leaq	-80(%rbp), %rcx
	leaq	-96(%rbp), %r8
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	find_vectors
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	Vangle
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI23_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	corner_threshold, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB23_33
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -108(%rbp)
	callq	new_index_list
	movq	%rax, -128(%rbp)
	movl	%edx, -120(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, -132(%rbp)
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -136(%rbp)
.LBB23_4:                               # %while.body
                                        #   Parent Loop BB23_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	corner_always_threshold, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB23_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_4 Depth=2
	movl	-132(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.LBB23_9
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB23_4 Depth=2
	jmp	.LBB23_7
.LBB23_7:                               # %do.body
                                        #   in Loop: Header=BB23_4 Depth=2
	leaq	-56(%rbp), %rdi
	movl	-132(%rbp), %esi
	callq	append_index
# BB#8:                                 # %do.end
                                        #   in Loop: Header=BB23_4 Depth=2
	jmp	.LBB23_9
.LBB23_9:                               # %if.end
                                        #   in Loop: Header=BB23_4 Depth=2
	movl	-136(%rbp), %eax
	movl	-108(%rbp), %ecx
	addl	corner_surround, %ecx
	cmpl	%ecx, %eax
	jae	.LBB23_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB23_4 Depth=2
	movl	-136(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jb	.LBB23_12
.LBB23_11:                              # %if.then.12
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_18
.LBB23_12:                              # %if.end.13
                                        #   in Loop: Header=BB23_4 Depth=2
	leaq	-80(%rbp), %rcx
	leaq	-96(%rbp), %r8
	movl	-136(%rbp), %eax
	xorl	%edx, %edx
	divl	-24(%rbp)
	movl	%edx, -132(%rbp)
	movl	-132(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	find_vectors
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	Vangle
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	epsilon_equal
	cmpl	$0, %eax
	je	.LBB23_14
# BB#13:                                # %if.then.17
                                        #   in Loop: Header=BB23_4 Depth=2
	leaq	-128(%rbp), %rdi
	movl	-132(%rbp), %esi
	callq	append_index
	jmp	.LBB23_17
.LBB23_14:                              # %if.else
                                        #   in Loop: Header=BB23_4 Depth=2
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_16
# BB#15:                                # %if.then.19
                                        #   in Loop: Header=BB23_4 Depth=2
	leaq	-128(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	%eax, -136(%rbp)
	callq	free_index_list
	callq	new_index_list
	movq	%rax, -152(%rbp)
	movl	%edx, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB23_16:                              # %if.end.21
                                        #   in Loop: Header=BB23_4 Depth=2
	jmp	.LBB23_17
.LBB23_17:                              # %if.end.22
                                        #   in Loop: Header=BB23_4 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB23_4
.LBB23_18:                              # %while.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	corner_always_threshold, %xmm0
	jbe	.LBB23_29
# BB#19:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-108(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.LBB23_29
# BB#20:                                # %if.then.26
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_21
.LBB23_21:                              # %do.body.28
                                        #   in Loop: Header=BB23_1 Depth=1
	leaq	-56(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	append_index
# BB#22:                                # %do.end.29
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$0, -156(%rbp)
.LBB23_23:                              # %for.cond.30
                                        #   Parent Loop BB23_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jae	.LBB23_28
# BB#24:                                # %for.body.33
                                        #   in Loop: Header=BB23_23 Depth=2
	jmp	.LBB23_25
.LBB23_25:                              # %do.body.34
                                        #   in Loop: Header=BB23_23 Depth=2
	leaq	-56(%rbp), %rdi
	movl	-156(%rbp), %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	callq	append_index
# BB#26:                                # %do.end.35
                                        #   in Loop: Header=BB23_23 Depth=2
	jmp	.LBB23_27
.LBB23_27:                              # %for.inc
                                        #   in Loop: Header=BB23_23 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB23_23
.LBB23_28:                              # %for.end
                                        #   in Loop: Header=BB23_1 Depth=1
	leaq	-128(%rbp), %rdi
	callq	free_index_list
.LBB23_29:                              # %if.end.37
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-132(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	.LBB23_31
# BB#30:                                # %cond.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB23_32
.LBB23_31:                              # %cond.false
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB23_32:                              # %cond.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
.LBB23_33:                              # %if.end.40
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_34
.LBB23_34:                              # %for.inc.41
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB23_1
.LBB23_35:                              # %for.end.43
	cmpl	$0, -48(%rbp)
	jbe	.LBB23_37
# BB#36:                                # %if.then.46
	leaq	-56(%rbp), %rdi
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %esi
	callq	remove_adjacent_corners
.LBB23_37:                              # %if.end.48
	movups	-56(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	find_corners, .Lfunc_end23-find_corners
	.cfi_endproc

	.align	16, 0x90
	.type	new_index_list,@function
new_index_list:                         # @new_index_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	movq	$0, -32(%rbp)
	movl	$0, -24(%rbp)
	movups	-32(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	new_index_list, .Lfunc_end24-new_index_list
	.cfi_endproc

	.align	16, 0x90
	.type	find_vectors,@function
find_vectors:                           # @find_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorps	%xmm0, %xmm0
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	%edi, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	-20(%rbp), %edi
	movl	%edi, %ecx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -56(%rbp)
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	cmpl	$0, -20(%rbp)
	jne	.LBB25_2
# BB#1:                                 # %cond.true
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB25_3
.LBB25_2:                               # %cond.false
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB25_3:                               # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB25_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	corner_surround, %eax
	jae	.LBB25_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	IPsubtract
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -64(%rbp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	Vadd
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm1, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rcx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB25_4 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB25_8
# BB#7:                                 # %cond.true.10
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB25_9
.LBB25_8:                               # %cond.false.13
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB25_9:                               # %cond.end.15
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB25_4
.LBB25_10:                              # %for.end
	movl	-20(%rbp), %eax
	addl	$1, %eax
	xorl	%edx, %edx
	divl	-8(%rbp)
	movl	%edx, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB25_11:                              # %for.cond.18
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	corner_surround, %eax
	jae	.LBB25_14
# BB#12:                                # %for.body.20
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	IPsubtract
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm1, -96(%rbp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	Vadd
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm1, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	movq	%rax, 8(%rcx)
# BB#13:                                # %for.inc.28
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	xorl	%edx, %edx
	divl	-8(%rbp)
	movl	%edx, -44(%rbp)
	movl	-48(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -48(%rbp)
	jmp	.LBB25_11
.LBB25_14:                              # %for.end.33
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	find_vectors, .Lfunc_end25-find_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	append_index,@function
append_index:                           # @append_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %esi
	addl	$1, %esi
	movl	%esi, 8(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movl	%esi, %eax
	shlq	$2, %rax
	movq	%rax, %rsi
	callq	g_realloc
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%ecx, (%rsi,%rax,4)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	append_index, .Lfunc_end26-append_index
	.cfi_endproc

	.align	16, 0x90
	.type	free_index_list,@function
free_index_list:                        # @free_index_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 8(%rdi)
	jbe	.LBB27_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
.LBB27_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	free_index_list, .Lfunc_end27-free_index_list
	.cfi_endproc

	.align	16, 0x90
	.type	remove_adjacent_corners,@function
remove_adjacent_corners:                # @remove_adjacent_corners
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	callq	new_index_list
	movq	%rax, -40(%rbp)
	movl	%edx, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, -16(%rbp)
.LBB28_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_3 Depth 2
	cmpl	$0, -16(%rbp)
	jbe	.LBB28_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -44(%rbp)
.LBB28_3:                               # %for.cond.1
                                        #   Parent Loop BB28_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jae	.LBB28_8
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB28_3 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-52(%rbp), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jbe	.LBB28_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB28_3 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB28_6:                               # %if.end
                                        #   in Loop: Header=BB28_3 Depth=2
	jmp	.LBB28_7
.LBB28_7:                               # %for.inc
                                        #   in Loop: Header=BB28_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB28_3
.LBB28_8:                               # %for.end
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.LBB28_10
# BB#9:                                 # %if.then.9
                                        #   in Loop: Header=BB28_1 Depth=1
	movabsq	$.L.str.14, %rdi
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-16(%rbp), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-48(%rbp), %eax
	movl	-52(%rbp), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movb	$0, %al
	callq	printf
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB28_10:                              # %if.end.23
                                        #   in Loop: Header=BB28_1 Depth=1
	jmp	.LBB28_11
.LBB28_11:                              # %for.inc.24
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB28_1
.LBB28_12:                              # %for.end.25
	movl	$0, -16(%rbp)
.LBB28_13:                              # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jae	.LBB28_21
# BB#14:                                # %for.body.30
                                        #   in Loop: Header=BB28_13 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.LBB28_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB28_13 Depth=1
	jmp	.LBB28_17
.LBB28_16:                              # %cond.false
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$757, %edx              # imm = 0x2F5
	movabsq	$.L__PRETTY_FUNCTION__.remove_adjacent_corners, %rcx
	callq	__assert_fail
.LBB28_17:                              # %cond.end
                                        #   in Loop: Header=BB28_13 Depth=1
	leaq	-40(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	append_index
	movl	-60(%rbp), %esi
	movl	-56(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	.LBB28_19
# BB#18:                                # %if.then.40
                                        #   in Loop: Header=BB28_13 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB28_19:                              # %if.end.42
                                        #   in Loop: Header=BB28_13 Depth=1
	jmp	.LBB28_20
.LBB28_20:                              # %for.inc.43
                                        #   in Loop: Header=BB28_13 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB28_13
.LBB28_21:                              # %for.end.45
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	(%rdx,%rax,4), %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB28_25
# BB#22:                                # %lor.lhs.false
	movl	-20(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB28_26
# BB#23:                                # %lor.lhs.false.60
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB28_25
# BB#24:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, (%rax)
	je	.LBB28_26
.LBB28_25:                              # %if.then.65
	leaq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	append_index
.LBB28_26:                              # %if.end.66
	movq	-8(%rbp), %rdi
	callq	free_index_list
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rdi)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	remove_adjacent_corners, .Lfunc_end28-remove_adjacent_corners
	.cfi_endproc

	.type	align_threshold,@object # @align_threshold
	.data
	.globl	align_threshold
	.align	8
align_threshold:
	.quad	4602678819172646912     # double 0.5
	.size	align_threshold, 8

	.type	corner_always_threshold,@object # @corner_always_threshold
	.globl	corner_always_threshold
	.align	8
corner_always_threshold:
	.quad	4633641066610819072     # double 60
	.size	corner_always_threshold, 8

	.type	corner_surround,@object # @corner_surround
	.globl	corner_surround
	.align	4
corner_surround:
	.long	4                       # 0x4
	.size	corner_surround, 4

	.type	corner_threshold,@object # @corner_threshold
	.globl	corner_threshold
	.align	8
corner_threshold:
	.quad	4636737291354636288     # double 100
	.size	corner_threshold, 8

	.type	error_threshold,@object # @error_threshold
	.globl	error_threshold
	.align	8
error_threshold:
	.quad	4600877379321698714     # double 0.40000000000000002
	.size	error_threshold, 8

	.type	filter_alternative_surround,@object # @filter_alternative_surround
	.globl	filter_alternative_surround
	.align	4
filter_alternative_surround:
	.long	1                       # 0x1
	.size	filter_alternative_surround, 4

	.type	filter_epsilon,@object  # @filter_epsilon
	.globl	filter_epsilon
	.align	8
filter_epsilon:
	.quad	4621819117588971520     # double 10
	.size	filter_epsilon, 8

	.type	filter_iteration_count,@object # @filter_iteration_count
	.globl	filter_iteration_count
	.align	4
filter_iteration_count:
	.long	4                       # 0x4
	.size	filter_iteration_count, 4

	.type	filter_percent,@object  # @filter_percent
	.globl	filter_percent
	.align	8
filter_percent:
	.quad	4599616371426034975     # double 0.33000000000000002
	.size	filter_percent, 8

	.type	filter_surround,@object # @filter_surround
	.globl	filter_surround
	.align	4
filter_surround:
	.long	2                       # 0x2
	.size	filter_surround, 4

	.type	keep_knees,@object      # @keep_knees
	.bss
	.globl	keep_knees
	.align	4
keep_knees:
	.long	0                       # 0x0
	.size	keep_knees, 4

	.type	line_reversion_threshold,@object # @line_reversion_threshold
	.data
	.globl	line_reversion_threshold
	.align	8
line_reversion_threshold:
	.quad	4576918229304087675     # double 0.01
	.size	line_reversion_threshold, 8

	.type	line_threshold,@object  # @line_threshold
	.globl	line_threshold
	.align	8
line_threshold:
	.quad	4602678819172646912     # double 0.5
	.size	line_threshold, 8

	.type	reparameterize_improvement,@object # @reparameterize_improvement
	.globl	reparameterize_improvement
	.align	8
reparameterize_improvement:
	.quad	4576918229304087675     # double 0.01
	.size	reparameterize_improvement, 8

	.type	reparameterize_threshold,@object # @reparameterize_threshold
	.globl	reparameterize_threshold
	.align	8
reparameterize_threshold:
	.quad	4607182418800017408     # double 1
	.size	reparameterize_threshold, 8

	.type	subdivide_search,@object # @subdivide_search
	.globl	subdivide_search
	.align	8
subdivide_search:
	.quad	4591870180066957722     # double 0.10000000000000001
	.size	subdivide_search, 8

	.type	subdivide_surround,@object # @subdivide_surround
	.globl	subdivide_surround
	.align	4
subdivide_surround:
	.long	4                       # 0x4
	.size	subdivide_surround, 4

	.type	subdivide_threshold,@object # @subdivide_threshold
	.globl	subdivide_threshold
	.align	8
subdivide_threshold:
	.quad	4584304132692975288     # double 0.029999999999999999
	.size	subdivide_threshold, 8

	.type	tangent_surround,@object # @tangent_surround
	.globl	tangent_surround
	.align	4
tangent_surround:
	.long	3                       # 0x3
	.size	tangent_surround, 4

	.type	filter_secondary_surround,@object # @filter_secondary_surround
	.align	4
filter_secondary_surround:
	.long	3                       # 0x3
	.size	filter_secondary_surround, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Could not fit curve #%u"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"in_count == out_count"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"fit.c"
	.size	.L.str.2, 6

	.type	.L__PRETTY_FUNCTION__.find_curve_vectors,@object # @__PRETTY_FUNCTION__.find_curve_vectors
.L__PRETTY_FUNCTION__.find_curve_vectors:
	.asciz	"void find_curve_vectors(unsigned int, curve_type, unsigned int, vector_type *, vector_type *, unsigned int *)"
	.size	.L__PRETTY_FUNCTION__.find_curve_vectors, 110

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Tried to fit curve with less than two points"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"warning: "
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"could not fit left spline list"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	".\n"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"could not fit right spline list"
	.size	.L.str.8, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"n_points > 0"
	.size	.L.str.9, 13

	.type	.L__PRETTY_FUNCTION__.find_tangent,@object # @__PRETTY_FUNCTION__.find_tangent
.L__PRETTY_FUNCTION__.find_tangent:
	.asciz	"void find_tangent(curve_type, boolean, boolean)"
	.size	.L__PRETTY_FUNCTION__.find_tangent, 48

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"((curve)->point_list[(curve)->length-1].t) != 0.0"
	.size	.L.str.10, 50

	.type	.L__PRETTY_FUNCTION__.set_initial_parameter_values,@object # @__PRETTY_FUNCTION__.set_initial_parameter_values
.L__PRETTY_FUNCTION__.set_initial_parameter_values:
	.asciz	"void set_initial_parameter_values(curve_type)"
	.size	.L__PRETTY_FUNCTION__.set_initial_parameter_values, 46

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"fatal: "
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"zero determinant of C0*C1"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"No worst point found; something is wrong"
	.size	.L.str.13, 41

	.type	.Lfind_subdivision.best,@object # @find_subdivision.best
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.Lfind_subdivision.best:
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.size	.Lfind_subdivision.best, 16

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"needed exchange"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"current != next"
	.size	.L.str.15, 16

	.type	.L__PRETTY_FUNCTION__.remove_adjacent_corners,@object # @__PRETTY_FUNCTION__.remove_adjacent_corners
.L__PRETTY_FUNCTION__.remove_adjacent_corners:
	.asciz	"void remove_adjacent_corners(index_list_type *, unsigned int)"
	.size	.L__PRETTY_FUNCTION__.remove_adjacent_corners, 62


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
