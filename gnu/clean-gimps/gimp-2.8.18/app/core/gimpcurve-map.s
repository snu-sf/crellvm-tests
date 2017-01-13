	.text
	.file	"gimpcurve-map.bc"
	.globl	gimp_curve_map_value
	.align	16, 0x90
	.type	gimp_curve_map_value,@function
gimp_curve_map_value:                   # @gimp_curve_map_value
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
	movsd	%xmm0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_curve_map_value, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_map_value_inline
	movsd	%xmm0, -8(%rbp)
.LBB0_13:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_curve_map_value, .Lfunc_end0-gimp_curve_map_value
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_curve_map_value_inline,@function
gimp_curve_map_value_inline:            # @gimp_curve_map_value_inline
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 64(%rdi)
	je	.LBB1_10
# BB#1:                                 # %if.then
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	finite
	cmpl	$0, %eax
	je	.LBB1_9
# BB#2:                                 # %if.then.2
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_4
# BB#3:                                 # %cond.true
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_4:                                # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB1_6
# BB#5:                                 # %cond.true.4
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %cond.false.5
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB1_7:                                # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB1_8:                                # %cond.end.6
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB1_16
.LBB1_9:                                # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB1_16
.LBB1_10:                               # %if.end.8
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_13
# BB#11:                                # %land.lhs.true
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB1_13
# BB#12:                                # %if.then.11
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, -24(%rbp)
	cvttsd2si	-24(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	subsd	-32(%rbp), %xmm0
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdx
	mulsd	(%rdx,%rax,8), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdx
	mulsd	(%rdx,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB1_16
.LBB1_13:                               # %if.else
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_15
# BB#14:                                # %if.then.24
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.30
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB1_16:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_curve_map_value_inline, .Lfunc_end1-gimp_curve_map_value_inline
	.cfi_endproc

	.globl	gimp_curve_map_pixels
	.align	16, 0x90
	.type	gimp_curve_map_pixels,@function
gimp_curve_map_pixels:                  # @gimp_curve_map_pixels
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
	subq	$224, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_curve_map_pixels, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_90
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.35
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_curve_map_pixels, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_90
.LBB2_23:                               # %if.end.37
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.38
	jmp	.LBB2_25
.LBB2_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB2_27
# BB#26:                                # %if.then.48
	movl	$0, -132(%rbp)
	jmp	.LBB2_32
.LBB2_27:                               # %if.else.49
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_30
# BB#28:                                # %land.lhs.true.52
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB2_30
# BB#29:                                # %if.then.56
	movl	$1, -132(%rbp)
	jmp	.LBB2_31
.LBB2_30:                               # %if.else.57
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB2_31:                               # %if.end.59
	jmp	.LBB2_32
.LBB2_32:                               # %if.end.60
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB2_34
# BB#33:                                # %if.then.63
	jmp	.LBB2_35
.LBB2_34:                               # %if.else.64
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_curve_map_pixels, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_90
.LBB2_35:                               # %if.end.65
	jmp	.LBB2_36
.LBB2_36:                               # %do.end.66
	jmp	.LBB2_37
.LBB2_37:                               # %do.body.67
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB2_39
# BB#38:                                # %if.then.76
	movl	$0, -156(%rbp)
	jmp	.LBB2_44
.LBB2_39:                               # %if.else.77
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_42
# BB#40:                                # %land.lhs.true.80
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB2_42
# BB#41:                                # %if.then.84
	movl	$1, -156(%rbp)
	jmp	.LBB2_43
.LBB2_42:                               # %if.else.85
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB2_43:                               # %if.end.87
	jmp	.LBB2_44
.LBB2_44:                               # %if.end.88
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB2_46
# BB#45:                                # %if.then.91
	jmp	.LBB2_47
.LBB2_46:                               # %if.else.92
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_curve_map_pixels, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_90
.LBB2_47:                               # %if.end.93
	jmp	.LBB2_48
.LBB2_48:                               # %do.end.94
	jmp	.LBB2_49
.LBB2_49:                               # %do.body.95
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB2_51
# BB#50:                                # %if.then.104
	movl	$0, -180(%rbp)
	jmp	.LBB2_56
.LBB2_51:                               # %if.else.105
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_54
# BB#52:                                # %land.lhs.true.108
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB2_54
# BB#53:                                # %if.then.112
	movl	$1, -180(%rbp)
	jmp	.LBB2_55
.LBB2_54:                               # %if.else.113
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB2_55:                               # %if.end.115
	jmp	.LBB2_56
.LBB2_56:                               # %if.end.116
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB2_58
# BB#57:                                # %if.then.119
	jmp	.LBB2_59
.LBB2_58:                               # %if.else.120
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_curve_map_pixels, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_90
.LBB2_59:                               # %if.end.121
	jmp	.LBB2_60
.LBB2_60:                               # %do.end.122
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	gimp_curve_get_apply_mask
	movl	%eax, %r9d
	movl	%r9d, %ecx
	subl	$16, %eax
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movl	%eax, -196(%rbp)        # 4-byte Spill
	ja	.LBB2_86
# BB#91:                                # %do.end.122
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	.LJTI2_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_61:                               # %sw.bb
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rdx
	shlq	$2, %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	jmp	.LBB2_90
.LBB2_62:                               # %sw.bb.125
	jmp	.LBB2_63
.LBB2_63:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB2_65
# BB#64:                                # %while.body
                                        #   in Loop: Header=BB2_63 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtss2sd	(%rax), %xmm0
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtss2sd	4(%rax), %xmm0
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtss2sd	8(%rax), %xmm0
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-48(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_63
.LBB2_65:                               # %while.end
	jmp	.LBB2_90
.LBB2_66:                               # %sw.bb.143
	jmp	.LBB2_67
.LBB2_67:                               # %while.cond.144
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB2_69
# BB#68:                                # %while.body.147
                                        #   in Loop: Header=BB2_67 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtss2sd	(%rax), %xmm0
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-48(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-48(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_67
.LBB2_69:                               # %while.end.161
	jmp	.LBB2_90
.LBB2_70:                               # %sw.bb.162
	jmp	.LBB2_71
.LBB2_71:                               # %while.cond.163
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB2_73
# BB#72:                                # %while.body.166
                                        #   in Loop: Header=BB2_71 Depth=1
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtss2sd	4(%rax), %xmm0
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-48(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-48(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_71
.LBB2_73:                               # %while.end.180
	jmp	.LBB2_90
.LBB2_74:                               # %sw.bb.181
	jmp	.LBB2_75
.LBB2_75:                               # %while.cond.182
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB2_77
# BB#76:                                # %while.body.185
                                        #   in Loop: Header=BB2_75 Depth=1
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtss2sd	8(%rax), %xmm0
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-48(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_75
.LBB2_77:                               # %while.end.199
	jmp	.LBB2_90
.LBB2_78:                               # %sw.bb.200
	jmp	.LBB2_79
.LBB2_79:                               # %while.cond.201
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB2_81
# BB#80:                                # %while.body.204
                                        #   in Loop: Header=BB2_79 Depth=1
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-48(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtss2sd	12(%rax), %xmm0
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_79
.LBB2_81:                               # %while.end.218
	jmp	.LBB2_90
.LBB2_82:                               # %sw.bb.219
	jmp	.LBB2_83
.LBB2_83:                               # %while.cond.220
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB2_85
# BB#84:                                # %while.body.223
                                        #   in Loop: Header=BB2_83 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtss2sd	(%rax), %xmm0
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtss2sd	4(%rax), %xmm0
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtss2sd	8(%rax), %xmm0
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-48(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_83
.LBB2_85:                               # %while.end.243
	jmp	.LBB2_90
.LBB2_86:                               # %sw.default
	jmp	.LBB2_87
.LBB2_87:                               # %while.cond.244
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB2_89
# BB#88:                                # %while.body.247
                                        #   in Loop: Header=BB2_87 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	cvtss2sd	(%rcx), %xmm0
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_curve_map_value_inline
	movq	-208(%rbp), %rdi        # 8-byte Reload
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	cvtss2sd	4(%rcx), %xmm0
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_curve_map_value_inline
	movq	-216(%rbp), %rdi        # 8-byte Reload
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	cvtss2sd	8(%rcx), %xmm0
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_curve_map_value_inline
	movq	-224(%rbp), %rdi        # 8-byte Reload
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtss2sd	12(%rax), %xmm0
	callq	gimp_curve_map_value_inline
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_87
.LBB2_89:                               # %while.end.273
	jmp	.LBB2_90
.LBB2_90:                               # %sw.epilog
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_curve_map_pixels, .Lfunc_end2-gimp_curve_map_pixels
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_61
	.quad	.LBB2_62
	.quad	.LBB2_66
	.quad	.LBB2_86
	.quad	.LBB2_70
	.quad	.LBB2_86
	.quad	.LBB2_86
	.quad	.LBB2_86
	.quad	.LBB2_74
	.quad	.LBB2_86
	.quad	.LBB2_86
	.quad	.LBB2_86
	.quad	.LBB2_86
	.quad	.LBB2_86
	.quad	.LBB2_82
	.quad	.LBB2_86
	.quad	.LBB2_78

	.text
	.align	16, 0x90
	.type	gimp_curve_get_apply_mask,@function
gimp_curve_get_apply_mask:              # @gimp_curve_get_apply_mask
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_curve_is_identity
	movl	$1, %r9d
	xorl	%r10d, %r10d
	cmpl	$0, %eax
	cmovnel	%r10d, %r9d
	movq	-16(%rbp), %rdi
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	callq	gimp_curve_is_identity
	movl	$2, %r9d
	xorl	%r10d, %r10d
	cmpl	$0, %eax
	cmovnel	%r10d, %r9d
	movl	-44(%rbp), %eax         # 4-byte Reload
	orl	%r9d, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gimp_curve_is_identity
	movl	$4, %r9d
	xorl	%r10d, %r10d
	cmpl	$0, %eax
	cmovnel	%r10d, %r9d
	movl	-48(%rbp), %eax         # 4-byte Reload
	orl	%r9d, %eax
	movq	-32(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_curve_is_identity
	movl	$8, %r9d
	xorl	%r10d, %r10d
	cmpl	$0, %eax
	cmovnel	%r10d, %r9d
	movl	-52(%rbp), %eax         # 4-byte Reload
	orl	%r9d, %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gimp_curve_is_identity
	movl	$16, %r9d
	xorl	%r10d, %r10d
	cmpl	$0, %eax
	cmovnel	%r10d, %r9d
	movl	-56(%rbp), %eax         # 4-byte Reload
	orl	%r9d, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_curve_get_apply_mask, .Lfunc_end3-gimp_curve_get_apply_mask
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_curve_map_value,@object # @__func__.gimp_curve_map_value
.L__func__.gimp_curve_map_value:
	.asciz	"gimp_curve_map_value"
	.size	.L__func__.gimp_curve_map_value, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_CURVE (curve)"
	.size	.L.str.1, 22

	.type	.L__func__.gimp_curve_map_pixels,@object # @__func__.gimp_curve_map_pixels
.L__func__.gimp_curve_map_pixels:
	.asciz	"gimp_curve_map_pixels"
	.size	.L__func__.gimp_curve_map_pixels, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CURVE (curve_colors)"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CURVE (curve_red)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_CURVE (curve_green)"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_CURVE (curve_blue)"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_CURVE (curve_alpha)"
	.size	.L.str.6, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
