	.text
	.file	"gimpscanconvert.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_scan_convert_new
	.align	16, 0x90
	.type	gimp_scan_convert_new,@function
gimp_scan_convert_new:                  # @gimp_scan_convert_new
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
	movl	$80, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	xorl	%ecx, %ecx
	movl	$16, %edx
	movq	%rax, -8(%rbp)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	g_array_new
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %r8
	movq	%rax, 72(%r8)
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_scan_convert_new, .Lfunc_end0-gimp_scan_convert_new
	.cfi_endproc

	.globl	gimp_scan_convert_free
	.align	16, 0x90
	.type	gimp_scan_convert_free,@function
gimp_scan_convert_free:                 # @gimp_scan_convert_free
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_scan_convert_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_11
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB1_7
# BB#6:                                 # %if.then.1
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_array_free
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB1_7:                                # %if.end.3
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB1_9
# BB#8:                                 # %if.then.5
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_array_free
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB1_9:                                # %if.end.8
	jmp	.LBB1_10
.LBB1_10:                               # %do.body.9
	movl	$80, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_11:                               # %do.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_scan_convert_free, .Lfunc_end1-gimp_scan_convert_free
	.cfi_endproc

	.globl	gimp_scan_convert_set_pixel_ratio
	.align	16, 0x90
	.type	gimp_scan_convert_set_pixel_ratio,@function
gimp_scan_convert_set_pixel_ratio:      # @gimp_scan_convert_set_pixel_ratio
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
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_scan_convert_set_pixel_ratio, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_6
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB2_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_scan_convert_set_pixel_ratio, .Lfunc_end2-gimp_scan_convert_set_pixel_ratio
	.cfi_endproc

	.globl	gimp_scan_convert_set_clip_rectangle
	.align	16, 0x90
	.type	gimp_scan_convert_set_clip_rectangle,@function
gimp_scan_convert_set_clip_rectangle:   # @gimp_scan_convert_set_clip_rectangle
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_scan_convert_set_clip_rectangle, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 20(%rax)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
.LBB3_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_scan_convert_set_clip_rectangle, .Lfunc_end3-gimp_scan_convert_set_clip_rectangle
	.cfi_endproc

	.globl	gimp_scan_convert_add_polyline
	.align	16, 0x90
	.type	gimp_scan_convert_add_polyline,@function
gimp_scan_convert_add_polyline:         # @gimp_scan_convert_add_polyline
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	$16, %r8d
	movl	%r8d, %r9d
	leaq	-48(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r10, %rdi
	movl	%eax, %esi
	movq	%r9, %rdx
	callq	memset
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_scan_convert_add_polyline, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_scan_convert_add_polyline, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	jmp	.LBB4_11
.LBB4_11:                               # %do.body.7
	cmpl	$0, -12(%rbp)
	jbe	.LBB4_13
# BB#12:                                # %if.then.9
	jmp	.LBB4_14
.LBB4_13:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_scan_convert_add_polyline, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_14:                               # %if.end.11
	jmp	.LBB4_15
.LBB4_15:                               # %do.end.12
	movl	$0, -68(%rbp)
.LBB4_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB4_23
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB4_16 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB4_20
# BB#18:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_16 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jne	.LBB4_20
	jp	.LBB4_20
# BB#19:                                # %lor.lhs.false.17
                                        #   in Loop: Header=BB4_16 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jne	.LBB4_20
	jp	.LBB4_20
	jmp	.LBB4_21
.LBB4_20:                               # %if.then.22
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	$1, %eax
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	cmpl	$0, -68(%rbp)
	movl	%eax, %esi
	cmovel	%edx, %esi
	movl	%esi, -64(%rbp)
	movl	$2, -60(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rcx, %rsi
	movl	%eax, %edx
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	%rax, 72(%rsi)
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	%rcx, %rsi
	callq	g_array_append_vals
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB4_21:                               # %if.end.40
                                        #   in Loop: Header=BB4_16 Depth=1
	jmp	.LBB4_22
.LBB4_22:                               # %for.inc
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB4_16
.LBB4_23:                               # %for.end
	cmpl	$0, -28(%rbp)
	je	.LBB4_25
# BB#24:                                # %if.then.41
	movl	$1, %edx
	leaq	-64(%rbp), %rax
	movl	$3, -64(%rbp)
	movl	$1, -60(%rbp)
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB4_25:                               # %if.end.49
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_scan_convert_add_polyline, .Lfunc_end4-gimp_scan_convert_add_polyline
	.cfi_endproc

	.globl	gimp_scan_convert_add_bezier
	.align	16, 0x90
	.type	gimp_scan_convert_add_bezier,@function
gimp_scan_convert_add_bezier:           # @gimp_scan_convert_add_bezier
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_scan_convert_add_bezier, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_11
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.3
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_scan_convert_add_bezier, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_11
.LBB5_9:                                # %if.end.5
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.6
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %edx
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB5_11:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_scan_convert_add_bezier, .Lfunc_end5-gimp_scan_convert_add_bezier
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_scan_convert_stroke
	.align	16, 0x90
	.type	gimp_scan_convert_stroke,@function
gimp_scan_convert_stroke:               # @gimp_scan_convert_stroke
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, 28(%rcx)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 32(%rcx)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rcx
	movl	%edx, 40(%rcx)
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rcx
	movl	%edx, 44(%rcx)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 48(%rcx)
	movq	-8(%rbp), %rcx
	cmpq	$0, 64(%rcx)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_array_free
	movq	-8(%rbp), %rdi
	movq	$0, 64(%rdi)
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB6_2:                                # %if.end
	cmpq	$0, -48(%rbp)
	je	.LBB6_30
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$2, 8(%rax)
	jb	.LBB6_30
# BB#4:                                 # %if.then.9
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jbe	.LBB6_6
# BB#5:                                 # %cond.true
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB6_7
.LBB6_6:                                # %cond.false
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB6_7
.LBB6_7:                                # %cond.end
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$8, %eax
	movl	%eax, %esi
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-48(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB6_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB6_14
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB6_8 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_11
# BB#10:                                # %cond.true.19
                                        #   in Loop: Header=BB6_8 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false.20
                                        #   in Loop: Header=BB6_8 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB6_12
.LBB6_12:                               # %cond.end.21
                                        #   in Loop: Header=BB6_8 Depth=1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	movslq	-68(%rbp), %rax
	movq	-64(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB6_8 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB6_8
.LBB6_14:                               # %for.end
	xorps	%xmm0, %xmm0
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_25
	jp	.LBB6_25
# BB#15:                                # %if.then.29
	movq	-64(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movl	$0, -68(%rbp)
.LBB6_16:                               # %for.cond.31
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$2, %edx
	cmpl	%edx, %eax
	jae	.LBB6_19
# BB#17:                                # %for.body.35
                                        #   in Loop: Header=BB6_16 Depth=1
	movl	-68(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
	movslq	-68(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# BB#18:                                # %for.inc.43
                                        #   in Loop: Header=BB6_16 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB6_16
.LBB6_19:                               # %for.end.45
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$1, %ecx
	cmpl	$1, %ecx
	jne	.LBB6_21
# BB#20:                                # %if.then.49
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-64(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rax,8)
	movl	-52(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB6_24
.LBB6_21:                               # %if.else
	movq	-48(%rbp), %rax
	cmpl	$2, 8(%rax)
	jbe	.LBB6_23
# BB#22:                                # %if.then.57
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$3, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-64(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	movl	-52(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -52(%rbp)
.LBB6_23:                               # %if.end.64
	jmp	.LBB6_24
.LBB6_24:                               # %if.end.65
	jmp	.LBB6_25
.LBB6_25:                               # %if.end.66
	movl	$2, %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-124(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$1, %edx
	jne	.LBB6_27
# BB#26:                                # %if.then.70
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
.LBB6_27:                               # %if.end.78
	cmpl	$2, -52(%rbp)
	jl	.LBB6_29
# BB#28:                                # %if.then.81
	xorl	%eax, %eax
	movl	$8, %edx
	movl	-52(%rbp), %ecx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_sized_new
	movq	-8(%rbp), %r8
	movq	%rax, 64(%r8)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-64(%rbp), %rax
	movl	-52(%rbp), %edx
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	-8(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 56(%rax)
.LBB6_29:                               # %if.end.88
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB6_30:                               # %if.end.89
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_scan_convert_stroke, .Lfunc_end6-gimp_scan_convert_stroke
	.cfi_endproc

	.globl	gimp_scan_convert_render
	.align	16, 0x90
	.type	gimp_scan_convert_render,@function
gimp_scan_convert_render:               # @gimp_scan_convert_render
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
	movl	$1, %eax
	movl	$255, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	%r8d, -32(%rbp)         # 4-byte Spill
	movl	%eax, %r8d
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%eax, %r9d
	movl	$255, (%rsp)
	callq	gimp_scan_convert_render_full
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_scan_convert_render, .Lfunc_end7-gimp_scan_convert_render
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4643176031446892544     # double 255
.LCPI8_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_scan_convert_render_full
	.align	16, 0x90
	.type	gimp_scan_convert_render_full,@function
gimp_scan_convert_render_full:          # @gimp_scan_convert_render_full
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
	movb	16(%rbp), %al
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movb	%al, -73(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_scan_convert_render_full, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_52
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.body.1
	cmpq	$0, -56(%rbp)
	je	.LBB8_8
# BB#7:                                 # %if.then.3
	jmp	.LBB8_9
.LBB8_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_scan_convert_render_full, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_52
.LBB8_9:                                # %if.end.5
	jmp	.LBB8_10
.LBB8_10:                               # %do.end.6
	movl	$0, -196(%rbp)
	movl	$0, -200(%rbp)
	movq	-56(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -204(%rbp)
	movq	-56(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -208(%rbp)
	movq	-48(%rbp), %rdi
	cmpl	$0, 8(%rdi)
	je	.LBB8_13
# BB#11:                                # %land.lhs.true
	leaq	-196(%rbp), %rax
	leaq	-200(%rbp), %rcx
	leaq	-204(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movl	-196(%rbp), %edi
	movl	-200(%rbp), %r8d
	movl	-204(%rbp), %r9d
	movl	-208(%rbp), %r10d
	movq	-48(%rbp), %r11
	movl	12(%r11), %ebx
	movq	-48(%rbp), %r11
	movl	16(%r11), %r14d
	movq	-48(%rbp), %r11
	movl	20(%r11), %r15d
	movq	-48(%rbp), %r11
	movl	24(%r11), %r12d
	subq	$48, %rsp
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movl	%r9d, %edx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%ebx, %r8d
	movl	%r14d, %r9d
	movl	%r15d, (%rsp)
	movl	%r12d, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-288(%rbp), %r11        # 8-byte Reload
	movq	%r11, 32(%rsp)
	movq	-280(%rbp), %r13        # 8-byte Reload
	movq	%r13, 40(%rsp)
	callq	gimp_rectangle_intersect
	addq	$48, %rsp
	cmpl	$0, %eax
	jne	.LBB8_13
# BB#12:                                # %if.then.10
	jmp	.LBB8_52
.LBB8_13:                               # %if.end.11
	leaq	-144(%rbp), %rdi
	movl	$1, %eax
	movq	-56(%rbp), %rsi
	movl	-196(%rbp), %edx
	movl	-200(%rbp), %ecx
	movl	-204(%rbp), %r8d
	movl	-208(%rbp), %r9d
	subq	$16, %rsp
	movl	$1, (%rsp)
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	addq	$16, %rsp
# BB#14:                                # %do.body.12
	cmpl	$1, -92(%rbp)
	jne	.LBB8_16
# BB#15:                                # %if.then.14
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_scan_convert_render_full, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_52
.LBB8_17:                               # %if.end.16
	jmp	.LBB8_18
.LBB8_18:                               # %do.end.17
	movl	$1, %edi
	leaq	-144(%rbp), %rsi
	movl	$0, -192(%rbp)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -176(%rbp)
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -152(%rbp)
.LBB8_19:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_23 Depth 2
                                        #     Child Loop BB8_46 Depth 2
	cmpq	$0, -152(%rbp)
	je	.LBB8_52
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	$2, %edi
	movq	$0, -216(%rbp)
	movl	-100(%rbp), %esi
	callq	cairo_format_stride_for_width
	movl	%eax, -220(%rbp)
	movl	-112(%rbp), %eax
	cmpl	-220(%rbp), %eax
	je	.LBB8_28
# BB#21:                                # %if.then.24
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -232(%rbp)
	movl	-220(%rbp), %ecx
	movl	-96(%rbp), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -216(%rbp)
	movq	%rsi, -240(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.LBB8_27
# BB#22:                                # %if.then.27
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	$0, -244(%rbp)
.LBB8_23:                               # %for.cond.28
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-244(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB8_26
# BB#24:                                # %for.body.32
                                        #   in Loop: Header=BB8_23 Depth=2
	movq	-240(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movslq	-100(%rbp), %rdx
	callq	memcpy
	movl	-112(%rbp), %eax
	movq	-232(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -232(%rbp)
	movl	-220(%rbp), %eax
	movq	-240(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -240(%rbp)
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB8_23 Depth=2
	movl	-244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -244(%rbp)
	jmp	.LBB8_23
.LBB8_26:                               # %for.end
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_27
.LBB8_27:                               # %if.end.38
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_28
.LBB8_28:                               # %if.end.39
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -216(%rbp)
	je	.LBB8_30
# BB#29:                                # %cond.true
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB8_31
.LBB8_30:                               # %cond.false
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB8_31:                               # %cond.end
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	$2, %esi
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %ecx
	movl	-220(%rbp), %r8d
	movq	%rax, %rdi
	callq	cairo_image_surface_create_for_data
	xorl	%ecx, %ecx
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	movl	%ecx, %edx
	subl	-60(%rbp), %edx
	subl	-108(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	subl	-64(%rbp), %ecx
	subl	-104(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_surface_set_device_offset
	movq	-168(%rbp), %rdi
	callq	cairo_create
	movl	$1, %esi
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	cairo_set_operator
	cmpl	$0, -68(%rbp)
	je	.LBB8_33
# BB#32:                                # %if.then.54
                                        #   in Loop: Header=BB8_19 Depth=1
	xorps	%xmm0, %xmm0
	movq	-160(%rbp), %rdi
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movsd	-320(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-320(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-320(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-160(%rbp), %rdi
	callq	cairo_paint
.LBB8_33:                               # %if.end.55
                                        #   in Loop: Header=BB8_19 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movq	-160(%rbp), %rdi
	movzbl	-73(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	movsd	-328(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-328(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm2, -336(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm2
	movsd	-336(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	cairo_set_source_rgba
	leaq	-192(%rbp), %rsi
	movq	-160(%rbp), %rdi
	callq	cairo_append_path
	movl	$1, %eax
	movl	$2, %ecx
	movq	-160(%rbp), %rdi
	cmpl	$0, -72(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	callq	cairo_set_antialias
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movsd	48(%rdx), %xmm0         # xmm0 = mem[0],zero
	callq	cairo_set_miter_limit
	movq	-48(%rbp), %rdx
	cmpl	$0, 28(%rdx)
	je	.LBB8_43
# BB#34:                                # %if.then.61
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %rax
	cmpl	$0, 44(%rax)
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	jne	.LBB8_36
# BB#35:                                # %cond.true.64
                                        #   in Loop: Header=BB8_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB8_37
.LBB8_36:                               # %cond.false.65
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	$2, %eax
	movl	$1, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$1, 44(%rdx)
	cmovel	%ecx, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB8_37:                               # %cond.end.70
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	cairo_set_line_cap
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %rcx
	cmpl	$0, 40(%rcx)
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	jne	.LBB8_39
# BB#38:                                # %cond.true.74
                                        #   in Loop: Header=BB8_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB8_40
.LBB8_39:                               # %cond.false.75
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	$2, %eax
	movl	$1, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$1, 40(%rdx)
	cmovel	%ecx, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB8_40:                               # %cond.end.80
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	cairo_set_line_join
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	cairo_set_line_width
	movq	-48(%rbp), %rcx
	cmpq	$0, 64(%rcx)
	je	.LBB8_42
# BB#41:                                # %if.then.84
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	64(%rcx), %rcx
	movl	8(%rcx), %edx
	movq	-48(%rbp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rsi
	callq	cairo_set_dash
.LBB8_42:                               # %if.end.89
                                        #   in Loop: Header=BB8_19 Depth=1
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	callq	cairo_scale
	movq	-160(%rbp), %rdi
	callq	cairo_stroke
	jmp	.LBB8_44
.LBB8_43:                               # %if.else.90
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	$1, %esi
	movq	-160(%rbp), %rdi
	callq	cairo_set_fill_rule
	movq	-160(%rbp), %rdi
	callq	cairo_fill
.LBB8_44:                               # %if.end.91
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-160(%rbp), %rdi
	callq	cairo_destroy
	movq	-168(%rbp), %rdi
	callq	cairo_surface_destroy
	cmpq	$0, -216(%rbp)
	je	.LBB8_50
# BB#45:                                # %if.then.93
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -264(%rbp)
	movl	$0, -268(%rbp)
.LBB8_46:                               # %for.cond.98
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-268(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB8_49
# BB#47:                                # %for.body.102
                                        #   in Loop: Header=BB8_46 Depth=2
	movq	-256(%rbp), %rdi
	movq	-264(%rbp), %rsi
	movslq	-100(%rbp), %rdx
	callq	memcpy
	movl	-220(%rbp), %eax
	movq	-264(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -264(%rbp)
	movl	-112(%rbp), %eax
	movq	-256(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -256(%rbp)
# BB#48:                                # %for.inc.110
                                        #   in Loop: Header=BB8_46 Depth=2
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	.LBB8_46
.LBB8_49:                               # %for.end.112
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_50
.LBB8_50:                               # %if.end.113
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_51
.LBB8_51:                               # %for.inc.114
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -152(%rbp)
	jmp	.LBB8_19
.LBB8_52:                               # %for.end.116
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_scan_convert_render_full, .Lfunc_end8-gimp_scan_convert_render_full
	.cfi_endproc

	.globl	gimp_scan_convert_render_value
	.align	16, 0x90
	.type	gimp_scan_convert_render_value,@function
gimp_scan_convert_render_value:         # @gimp_scan_convert_render_value
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
	subq	$48, %rsp
	movb	%r8b, %al
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movzbl	-25(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	gimp_scan_convert_render_full
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_scan_convert_render_value, .Lfunc_end9-gimp_scan_convert_render_value
	.cfi_endproc

	.globl	gimp_scan_convert_compose
	.align	16, 0x90
	.type	gimp_scan_convert_compose,@function
gimp_scan_convert_compose:              # @gimp_scan_convert_compose
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
	xorl	%eax, %eax
	movl	$255, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	%r8d, -28(%rbp)         # 4-byte Spill
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$255, (%rsp)
	callq	gimp_scan_convert_render_full
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_scan_convert_compose, .Lfunc_end10-gimp_scan_convert_compose
	.cfi_endproc

	.globl	gimp_scan_convert_compose_value
	.align	16, 0x90
	.type	gimp_scan_convert_compose_value,@function
gimp_scan_convert_compose_value:        # @gimp_scan_convert_compose_value
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movb	%r8b, %r9b
	movl	%eax, %r8d
	movb	%r9b, -29(%rbp)         # 1-byte Spill
	movl	%eax, %r9d
	movb	-29(%rbp), %r10b        # 1-byte Reload
	movzbl	%r10b, %eax
	movl	%eax, (%rsp)
	callq	gimp_scan_convert_render_full
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_scan_convert_compose_value, .Lfunc_end11-gimp_scan_convert_compose_value
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_scan_convert_free,@object # @__func__.gimp_scan_convert_free
.L__func__.gimp_scan_convert_free:
	.asciz	"gimp_scan_convert_free"
	.size	.L__func__.gimp_scan_convert_free, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"sc != NULL"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_scan_convert_set_pixel_ratio,@object # @__func__.gimp_scan_convert_set_pixel_ratio
.L__func__.gimp_scan_convert_set_pixel_ratio:
	.asciz	"gimp_scan_convert_set_pixel_ratio"
	.size	.L__func__.gimp_scan_convert_set_pixel_ratio, 34

	.type	.L__func__.gimp_scan_convert_set_clip_rectangle,@object # @__func__.gimp_scan_convert_set_clip_rectangle
.L__func__.gimp_scan_convert_set_clip_rectangle:
	.asciz	"gimp_scan_convert_set_clip_rectangle"
	.size	.L__func__.gimp_scan_convert_set_clip_rectangle, 37

	.type	.L__func__.gimp_scan_convert_add_polyline,@object # @__func__.gimp_scan_convert_add_polyline
.L__func__.gimp_scan_convert_add_polyline:
	.asciz	"gimp_scan_convert_add_polyline"
	.size	.L__func__.gimp_scan_convert_add_polyline, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"points != NULL"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"n_points > 0"
	.size	.L.str.3, 13

	.type	.L__func__.gimp_scan_convert_add_bezier,@object # @__func__.gimp_scan_convert_add_bezier
.L__func__.gimp_scan_convert_add_bezier:
	.asciz	"gimp_scan_convert_add_bezier"
	.size	.L__func__.gimp_scan_convert_add_bezier, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"bezier != NULL"
	.size	.L.str.4, 15

	.type	.L__func__.gimp_scan_convert_render_full,@object # @__func__.gimp_scan_convert_render_full
.L__func__.gimp_scan_convert_render_full:
	.asciz	"gimp_scan_convert_render_full"
	.size	.L__func__.gimp_scan_convert_render_full, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tile_manager != NULL"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"maskPR.bytes == 1"
	.size	.L.str.6, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
