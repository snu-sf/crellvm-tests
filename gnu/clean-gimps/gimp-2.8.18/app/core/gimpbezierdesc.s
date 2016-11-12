	.text
	.file	"gimpbezierdesc.bc"
	.globl	gimp_bezier_desc_get_type
	.align	16, 0x90
	.type	gimp_bezier_desc_get_type,@function
gimp_bezier_desc_get_type:              # @gimp_bezier_desc_get_type
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
	cmpq	$0, gimp_bezier_desc_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movabsq	$gimp_bezier_desc_copy, %rax
	movabsq	$gimp_bezier_desc_free, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_bezier_desc_get_type.type
.LBB0_2:                                # %if.end
	movq	gimp_bezier_desc_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_bezier_desc_get_type, .Lfunc_end0-gimp_bezier_desc_get_type
	.cfi_endproc

	.globl	gimp_bezier_desc_copy
	.align	16, 0x90
	.type	gimp_bezier_desc_copy,@function
gimp_bezier_desc_copy:                  # @gimp_bezier_desc_copy
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_desc_copy, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_6
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	16(%rcx), %rcx
	shlq	$4, %rcx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	g_memdup
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_bezier_desc_new
	movq	%rax, -8(%rbp)
.LBB1_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_bezier_desc_copy, .Lfunc_end1-gimp_bezier_desc_copy
	.cfi_endproc

	.globl	gimp_bezier_desc_free
	.align	16, 0x90
	.type	gimp_bezier_desc_free,@function
gimp_bezier_desc_free:                  # @gimp_bezier_desc_free
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_desc_free, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_7
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#6:                                 # %do.body.1
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB2_7:                                # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_bezier_desc_free, .Lfunc_end2-gimp_bezier_desc_free
	.cfi_endproc

	.globl	gimp_bezier_desc_new
	.align	16, 0x90
	.type	gimp_bezier_desc_new,@function
gimp_bezier_desc_new:                   # @gimp_bezier_desc_new
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -20(%rbp)
	je	.LBB3_3
# BB#2:                                 # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	je	.LBB3_4
.LBB3_3:                                # %if.then
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_desc_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_7
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.end
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_bezier_desc_new, .Lfunc_end3-gimp_bezier_desc_new
	.cfi_endproc

	.globl	gimp_bezier_desc_new_from_bound_segs
	.align	16, 0x90
	.type	gimp_bezier_desc_new_from_bound_segs,@function
gimp_bezier_desc_new_from_bound_segs:   # @gimp_bezier_desc_new_from_bound_segs
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_desc_new_from_bound_segs, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_22
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpl	$0, -20(%rbp)
	jle	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_desc_new_from_bound_segs, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_22
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	xorl	%eax, %eax
	movl	$16, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_new
	movl	$16, %edx
	movl	%edx, %esi
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rdi
	callq	g_malloc0_n
	movq	%rax, -40(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	movl	$0, -52(%rbp)
.LBB4_11:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB4_21
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_13
.LBB4_13:                               # %while.cond
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	movslq	-48(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-16(%rbp), %rcx
	cmpl	$-1, (%rcx)
	movb	%al, -57(%rbp)          # 1-byte Spill
	jne	.LBB4_17
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_13 Depth=2
	movb	$1, %al
	movslq	-48(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-16(%rbp), %rcx
	cmpl	$-1, 8(%rcx)
	movb	%al, -57(%rbp)          # 1-byte Spill
	jne	.LBB4_17
# BB#15:                                # %lor.lhs.false.25
                                        #   in Loop: Header=BB4_13 Depth=2
	movb	$1, %al
	movslq	-48(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-16(%rbp), %rcx
	cmpl	$-1, 4(%rcx)
	movb	%al, -57(%rbp)          # 1-byte Spill
	jne	.LBB4_17
# BB#16:                                # %lor.rhs
                                        #   in Loop: Header=BB4_13 Depth=2
	movslq	-48(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	cmpl	$-1, 12(%rax)
	setne	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB4_17:                               # %lor.end
                                        #   in Loop: Header=BB4_13 Depth=2
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_18
	jmp	.LBB4_19
.LBB4_18:                               # %while.body
                                        #   in Loop: Header=BB4_13 Depth=2
	movslq	-48(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movslq	-48(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB4_13
.LBB4_19:                               # %while.end
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	$1, %ecx
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, (%rax)
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movl	-44(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -44(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	add_polyline
	movl	$0, -44(%rbp)
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	movslq	-48(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movslq	-48(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB4_11
.LBB4_21:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_array_free
	movl	-56(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_bezier_desc_new
	movq	%rax, -8(%rbp)
.LBB4_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_bezier_desc_new_from_bound_segs, .Lfunc_end4-gimp_bezier_desc_new_from_bound_segs
	.cfi_endproc

	.align	16, 0x90
	.type	add_polyline,@function
add_polyline:                           # @add_polyline
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movl	$16, %r8d
	movl	%r8d, %r9d
	leaq	-40(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r10, %rdi
	movl	%eax, %esi
	movq	%r9, %rdx
	callq	memset
	movl	$0, -60(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB5_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB5_1 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jne	.LBB5_5
	jp	.LBB5_5
# BB#4:                                 # %lor.lhs.false.4
                                        #   in Loop: Header=BB5_1 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jne	.LBB5_5
	jp	.LBB5_5
	jmp	.LBB5_6
.LBB5_5:                                # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, %eax
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	cmpl	$0, -60(%rbp)
	movl	%eax, %esi
	cmovel	%edx, %esi
	movl	%esi, -56(%rbp)
	movl	$2, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	movl	%eax, %edx
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movslq	-60(%rbp), %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movslq	-60(%rbp), %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_array_append_vals
	movslq	-60(%rbp), %rcx
	shlq	$4, %rcx
	addq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rsi, -40(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB5_6:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end
	cmpl	$0, -24(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.23
	movl	$1, %edx
	leaq	-56(%rbp), %rax
	movl	$3, -56(%rbp)
	movl	$1, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB5_10:                               # %if.end.29
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	add_polyline, .Lfunc_end5-add_polyline
	.cfi_endproc

	.globl	gimp_bezier_desc_translate
	.align	16, 0x90
	.type	gimp_bezier_desc_translate,@function
gimp_bezier_desc_translate:             # @gimp_bezier_desc_translate
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_desc_translate, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movl	$0, -28(%rbp)
.LBB6_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB6_13
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	$1, -32(%rbp)
.LBB6_8:                                # %for.cond.2
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	8(%rdx), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB6_11
# BB#9:                                 # %for.body.4
                                        #   in Loop: Header=BB6_8 Depth=2
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	8(%rdx), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	8(%rdx), %rcx
	addsd	8(%rcx), %xmm0
	movsd	%xmm0, 8(%rcx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB6_8
.LBB6_11:                               # %for.end
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_12
.LBB6_12:                               # %for.inc.15
                                        #   in Loop: Header=BB6_6 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	8(%rcx), %rax
	movl	4(%rax), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -28(%rbp)
	jmp	.LBB6_6
.LBB6_13:                               # %for.end.22
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_bezier_desc_translate, .Lfunc_end6-gimp_bezier_desc_translate
	.cfi_endproc

	.type	gimp_bezier_desc_get_type.type,@object # @gimp_bezier_desc_get_type.type
	.local	gimp_bezier_desc_get_type.type
	.comm	gimp_bezier_desc_get_type.type,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBezierDesc"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_bezier_desc_new,@object # @__func__.gimp_bezier_desc_new
.L__func__.gimp_bezier_desc_new:
	.asciz	"gimp_bezier_desc_new"
	.size	.L__func__.gimp_bezier_desc_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"n_data == 0 || data != NULL"
	.size	.L.str.2, 28

	.type	.L__func__.gimp_bezier_desc_new_from_bound_segs,@object # @__func__.gimp_bezier_desc_new_from_bound_segs
.L__func__.gimp_bezier_desc_new_from_bound_segs:
	.asciz	"gimp_bezier_desc_new_from_bound_segs"
	.size	.L__func__.gimp_bezier_desc_new_from_bound_segs, 37

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"bound_segs != NULL"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"n_bound_segs > 0"
	.size	.L.str.4, 17

	.type	.L__func__.gimp_bezier_desc_translate,@object # @__func__.gimp_bezier_desc_translate
.L__func__.gimp_bezier_desc_translate:
	.asciz	"gimp_bezier_desc_translate"
	.size	.L__func__.gimp_bezier_desc_translate, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"desc != NULL"
	.size	.L.str.5, 13

	.type	.L__func__.gimp_bezier_desc_copy,@object # @__func__.gimp_bezier_desc_copy
.L__func__.gimp_bezier_desc_copy:
	.asciz	"gimp_bezier_desc_copy"
	.size	.L__func__.gimp_bezier_desc_copy, 22

	.type	.L__func__.gimp_bezier_desc_free,@object # @__func__.gimp_bezier_desc_free
.L__func__.gimp_bezier_desc_free:
	.asciz	"gimp_bezier_desc_free"
	.size	.L__func__.gimp_bezier_desc_free, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
