	.text
	.file	"tile-pyramid.bc"
	.globl	tile_pyramid_new
	.align	16, 0x90
	.type	tile_pyramid_new,@function
tile_pyramid_new:                       # @tile_pyramid_new
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
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -16(%rbp)
	jle	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_18
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpl	$0, -20(%rbp)
	jle	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_18
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	movl	$104, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	subq	$5, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	ja	.LBB0_17
# BB#19:                                # %do.end.6
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_11:                               # %sw.bb
	movq	-32(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.LBB0_17
.LBB0_12:                               # %sw.bb.10
	movq	-32(%rbp), %rax
	movl	$2, 12(%rax)
	jmp	.LBB0_17
.LBB0_13:                               # %sw.bb.12
	movq	-32(%rbp), %rax
	movl	$3, 12(%rax)
	jmp	.LBB0_17
.LBB0_14:                               # %sw.bb.14
	movq	-32(%rbp), %rax
	movl	$4, 12(%rax)
	jmp	.LBB0_17
.LBB0_15:                               # %sw.bb.16
	jmp	.LBB0_16
.LBB0_16:                               # %do.body.17
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$116, %edx
	movabsq	$.L__func__.tile_pyramid_new, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB0_17:                               # %sw.epilog
	movl	-16(%rbp), %edi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	callq	tile_manager_new
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tile_pyramid_new, .Lfunc_end0-tile_pyramid_new
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_13
	.quad	.LBB0_14
	.quad	.LBB0_11
	.quad	.LBB0_12
	.quad	.LBB0_15
	.quad	.LBB0_15

	.text
	.globl	tile_pyramid_destroy
	.align	16, 0x90
	.type	tile_pyramid_destroy,@function
tile_pyramid_destroy:                   # @tile_pyramid_destroy
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_destroy, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_11
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movl	$0, -12(%rbp)
.LBB1_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jg	.LBB1_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx,%rax,8), %rdi
	callq	tile_manager_unref
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_6
.LBB1_9:                                # %for.end
	jmp	.LBB1_10
.LBB1_10:                               # %do.body.2
	movl	$104, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_11:                               # %do.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tile_pyramid_destroy, .Lfunc_end1-tile_pyramid_destroy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	tile_pyramid_get_level
	.align	16, 0x90
	.type	tile_pyramid_get_level,@function
tile_pyramid_get_level:                 # @tile_pyramid_get_level
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
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, -28(%rbp)
	movl	-8(%rbp), %esi
	movl	%esi, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -36(%rbp)
	jge	.LBB2_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB2_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB2_5
.LBB2_4:                                # %if.then
	jmp	.LBB2_12
.LBB2_5:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$64, -28(%rbp)
	ja	.LBB2_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$64, -32(%rbp)
	ja	.LBB2_8
# BB#7:                                 # %if.then.6
	jmp	.LBB2_12
.LBB2_8:                                # %if.end.7
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_10
# BB#9:                                 # %if.then.9
	jmp	.LBB2_12
.LBB2_10:                               # %if.end.10
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_11
.LBB2_11:                               # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB2_1
.LBB2_12:                               # %for.end
	movl	-36(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tile_pyramid_get_level, .Lfunc_end2-tile_pyramid_get_level
	.cfi_endproc

	.globl	tile_pyramid_get_tiles
	.align	16, 0x90
	.type	tile_pyramid_get_tiles,@function
tile_pyramid_get_tiles:                 # @tile_pyramid_get_tiles
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
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_get_tiles, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	tile_pyramid_alloc_levels
	movl	%eax, -20(%rbp)
# BB#6:                                 # %do.body.1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 16(%rcx,%rax,8)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_get_tiles, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	cmpq	$0, -32(%rbp)
	je	.LBB3_12
# BB#11:                                # %if.then.7
	cmpl	$0, -20(%rbp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, (%rdx)
.LBB3_12:                               # %if.end.9
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tile_pyramid_get_tiles, .Lfunc_end3-tile_pyramid_get_tiles
	.cfi_endproc

	.align	16, 0x90
	.type	tile_pyramid_alloc_levels,@function
tile_pyramid_alloc_levels:              # @tile_pyramid_alloc_levels
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$9, -20(%rbp)
	jge	.LBB4_2
# BB#1:                                 # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movl	$9, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jg	.LBB4_5
# BB#4:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_19
.LBB4_5:                                # %if.end
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB4_18
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	-24(%rbp), %edx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-48(%rbp), %edx         # 4-byte Reload
	shrl	%cl, %edx
	movl	%edx, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movl	-24(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shrl	%cl, %edx
	movl	%edx, -40(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB4_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_6 Depth=1
	cmpl	$0, -40(%rbp)
	jne	.LBB4_10
.LBB4_9:                                # %if.then.10
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB4_19
.LBB4_10:                               # %if.end.12
                                        #   in Loop: Header=BB4_6 Depth=1
	cmpl	$32, -36(%rbp)
	jg	.LBB4_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_6 Depth=1
	cmpl	$32, -40(%rbp)
	jg	.LBB4_13
# BB#12:                                # %if.then.15
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB4_19
.LBB4_13:                               # %if.end.17
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 96(%rcx)
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	callq	tile_manager_new
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	%rax, 16(%r8,%rcx,8)
	cmpl	$1, -24(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
                                        #   in Loop: Header=BB4_6 Depth=1
	movabsq	$tile_pyramid_validate_tile, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_16
.LBB4_15:                               # %if.else
                                        #   in Loop: Header=BB4_6 Depth=1
	movabsq	$tile_pyramid_validate_upper_tile, %rax
	movq	%rax, -32(%rbp)
.LBB4_16:                               # %if.end.21
                                        #   in Loop: Header=BB4_6 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx,%rax,8), %rdi
	movq	-32(%rbp), %rsi
	movl	-24(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx,%rax,8), %rax
	movq	%rax, %rdx
	callq	tile_manager_set_validate_proc
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB4_6
.LBB4_18:                               # %for.end
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB4_19:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tile_pyramid_alloc_levels, .Lfunc_end4-tile_pyramid_alloc_levels
	.cfi_endproc

	.globl	tile_pyramid_invalidate_area
	.align	16, 0x90
	.type	tile_pyramid_invalidate_area,@function
tile_pyramid_invalidate_area:           # @tile_pyramid_invalidate_area
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_invalidate_area, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_30
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpl	$0, -12(%rbp)
	jl	.LBB5_9
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -16(%rbp)
	jl	.LBB5_9
# BB#8:                                 # %if.then.4
	jmp	.LBB5_10
.LBB5_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_invalidate_area, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_30
.LBB5_10:                               # %if.end.6
	jmp	.LBB5_11
.LBB5_11:                               # %do.end.7
	jmp	.LBB5_12
.LBB5_12:                               # %do.body.8
	cmpl	$0, -20(%rbp)
	jl	.LBB5_15
# BB#13:                                # %land.lhs.true.10
	cmpl	$0, -24(%rbp)
	jl	.LBB5_15
# BB#14:                                # %if.then.12
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.13
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_invalidate_area, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_30
.LBB5_16:                               # %if.end.14
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.15
	cmpl	$0, -20(%rbp)
	je	.LBB5_19
# BB#18:                                # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jne	.LBB5_20
.LBB5_19:                               # %if.then.18
	jmp	.LBB5_30
.LBB5_20:                               # %if.end.19
	movl	$0, -28(%rbp)
.LBB5_21:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jg	.LBB5_30
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB5_21 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx,%rax,8), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	cmpl	$1, -20(%rbp)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	jle	.LBB5_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB5_25
.LBB5_24:                               # %cond.false
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB5_25
.LBB5_25:                               # %cond.end
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	cmpl	$1, -24(%rbp)
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jle	.LBB5_27
# BB#26:                                # %cond.true.23
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB5_28
.LBB5_27:                               # %cond.false.24
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB5_28
.LBB5_28:                               # %cond.end.25
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	tile_manager_invalidate_area
	movl	-12(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -24(%rbp)
# BB#29:                                # %for.inc
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_21
.LBB5_30:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	tile_pyramid_invalidate_area, .Lfunc_end5-tile_pyramid_invalidate_area
	.cfi_endproc

	.globl	tile_pyramid_set_validate_proc
	.align	16, 0x90
	.type	tile_pyramid_set_validate_proc,@function
tile_pyramid_set_validate_proc:         # @tile_pyramid_set_validate_proc
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_set_validate_proc, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_6
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	tile_manager_set_validate_proc
.LBB6_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tile_pyramid_set_validate_proc, .Lfunc_end6-tile_pyramid_set_validate_proc
	.cfi_endproc

	.globl	tile_pyramid_get_width
	.align	16, 0x90
	.type	tile_pyramid_get_width,@function
tile_pyramid_get_width:                 # @tile_pyramid_get_width
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_get_width, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_6
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tile_pyramid_get_width, .Lfunc_end7-tile_pyramid_get_width
	.cfi_endproc

	.globl	tile_pyramid_get_height
	.align	16, 0x90
	.type	tile_pyramid_get_height,@function
tile_pyramid_get_height:                # @tile_pyramid_get_height
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_get_height, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_6
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB8_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	tile_pyramid_get_height, .Lfunc_end8-tile_pyramid_get_height
	.cfi_endproc

	.globl	tile_pyramid_get_bpp
	.align	16, 0x90
	.type	tile_pyramid_get_bpp,@function
tile_pyramid_get_bpp:                   # @tile_pyramid_get_bpp
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_get_bpp, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_6
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tile_pyramid_get_bpp, .Lfunc_end9-tile_pyramid_get_bpp
	.cfi_endproc

	.globl	tile_pyramid_get_memsize
	.align	16, 0x90
	.type	tile_pyramid_get_memsize,@function
tile_pyramid_get_memsize:               # @tile_pyramid_get_memsize
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
	movq	$104, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_pyramid_get_memsize, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_10
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movl	$0, -28(%rbp)
.LBB10_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jg	.LBB10_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	$1, %esi
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx,%rax,8), %rdi
	callq	tile_manager_get_memsize
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB10_6
.LBB10_9:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tile_pyramid_get_memsize, .Lfunc_end10-tile_pyramid_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	tile_pyramid_validate_tile,@function
tile_pyramid_validate_tile:             # @tile_pyramid_validate_tile
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
	leaq	-28(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, %rdx
	callq	tile_manager_get_tile_col_row
	movl	$0, -36(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	cmpl	$2, -36(%rbp)
	jge	.LBB11_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$0, -40(%rbp)
.LBB11_3:                               # %for.cond.1
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -40(%rbp)
	jge	.LBB11_8
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %eax
	shll	$1, %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %edx
	shll	$1, %edx
	addl	-40(%rbp), %edx
	movl	%eax, %esi
	callq	tile_manager_get_at
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB11_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	tile_pyramid_write_quarter
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	tile_release
.LBB11_6:                               # %if.end
                                        #   in Loop: Header=BB11_3 Depth=2
	jmp	.LBB11_7
.LBB11_7:                               # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_3
.LBB11_8:                               # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_9
.LBB11_9:                               # %for.inc.6
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB11_1
.LBB11_10:                              # %for.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tile_pyramid_validate_tile, .Lfunc_end11-tile_pyramid_validate_tile
	.cfi_endproc

	.align	16, 0x90
	.type	tile_pyramid_validate_upper_tile,@function
tile_pyramid_validate_upper_tile:       # @tile_pyramid_validate_upper_tile
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
	subq	$48, %rsp
	leaq	-28(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, %rdx
	callq	tile_manager_get_tile_col_row
	movl	$0, -36(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	cmpl	$2, -36(%rbp)
	jge	.LBB12_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$0, -40(%rbp)
.LBB12_3:                               # %for.cond.1
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -40(%rbp)
	jge	.LBB12_8
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB12_3 Depth=2
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %eax
	shll	$1, %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %edx
	shll	$1, %edx
	addl	-40(%rbp), %edx
	movl	%eax, %esi
	callq	tile_manager_get_at
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB12_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB12_3 Depth=2
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	tile_pyramid_write_upper_quarter
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	tile_release
.LBB12_6:                               # %if.end
                                        #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_7
.LBB12_7:                               # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB12_3
.LBB12_8:                               # %for.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_9
.LBB12_9:                               # %for.inc.6
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_1
.LBB12_10:                              # %for.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	tile_pyramid_validate_upper_tile, .Lfunc_end12-tile_pyramid_validate_upper_tile
	.cfi_endproc

	.align	16, 0x90
	.type	tile_pyramid_write_quarter,@function
tile_pyramid_write_quarter:             # @tile_pyramid_write_quarter
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
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	movl	$2, %ecx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	shll	$6, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-24(%rbp), %esi
	shll	$6, %esi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-136(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_data_pointer
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_ewidth
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_eheight
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_ewidth
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_bpp
	movl	%eax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_23 Depth 2
                                        #     Child Loop BB13_18 Depth 2
                                        #     Child Loop BB13_9 Depth 2
                                        #     Child Loop BB13_4 Depth 2
	movl	$2, %eax
	movl	-60(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-140(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB13_33
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movslq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	-44(%rbp), %esi
	imull	%esi, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	-44(%rbp), %esi
	imull	%esi, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-56(%rbp), %edx
	decl	%edx
	movl	%edx, %eax
	subl	$3, %edx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	%edx, -156(%rbp)        # 4-byte Spill
	ja	.LBB13_31
# BB#34:                                # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	.LJTI13_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB13_3:                               # %sw.bb
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$0, -108(%rbp)
.LBB13_4:                               # %for.cond.15
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-160(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB13_7
# BB#5:                                 # %for.body.18
                                        #   in Loop: Header=BB13_4 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, (%rax)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB13_4
.LBB13_7:                               # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_31
.LBB13_8:                               # %sw.bb.35
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$0, -108(%rbp)
.LBB13_9:                               # %for.cond.36
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-164(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB13_16
# BB#10:                                # %for.body.40
                                        #   in Loop: Header=BB13_9 Depth=2
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -112(%rbp)
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	je	.LBB13_11
	jmp	.LBB13_36
.LBB13_36:                              # %for.body.40
                                        #   in Loop: Header=BB13_9 Depth=2
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$1020, %eax             # imm = 0x3FC
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB13_12
	jmp	.LBB13_13
.LBB13_11:                              # %sw.bb.52
                                        #   in Loop: Header=BB13_9 Depth=2
	movq	-104(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-104(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB13_14
.LBB13_12:                              # %sw.bb.55
                                        #   in Loop: Header=BB13_9 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, (%rax)
	movq	-104(%rbp), %rax
	movb	$-1, 1(%rax)
	jmp	.LBB13_14
.LBB13_13:                              # %sw.default
                                        #   in Loop: Header=BB13_9 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %esi
	addl	$1, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %esi
	addl	$1, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %esi
	addl	$1, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$10, %ecx
	movb	%cl, %dil
	movq	-104(%rbp), %rax
	movb	%dil, (%rax)
	movl	-112(%rbp), %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	movb	%cl, %dil
	movq	-104(%rbp), %rax
	movb	%dil, 1(%rax)
.LBB13_14:                              # %sw.epilog
                                        #   in Loop: Header=BB13_9 Depth=2
	movq	-104(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
# BB#15:                                # %for.inc.111
                                        #   in Loop: Header=BB13_9 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB13_9
.LBB13_16:                              # %for.end.113
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_31
.LBB13_17:                              # %sw.bb.114
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$0, -108(%rbp)
.LBB13_18:                              # %for.cond.115
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-176(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB13_21
# BB#19:                                # %for.body.119
                                        #   in Loop: Header=BB13_18 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, (%rax)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-104(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -96(%rbp)
# BB#20:                                # %for.inc.170
                                        #   in Loop: Header=BB13_18 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB13_18
.LBB13_21:                              # %for.end.172
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_31
.LBB13_22:                              # %sw.bb.173
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$0, -108(%rbp)
.LBB13_23:                              # %for.cond.174
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-180(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB13_30
# BB#24:                                # %for.body.178
                                        #   in Loop: Header=BB13_23 Depth=2
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -116(%rbp)
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	je	.LBB13_25
	jmp	.LBB13_35
.LBB13_35:                              # %for.body.178
                                        #   in Loop: Header=BB13_23 Depth=2
	movl	-184(%rbp), %eax        # 4-byte Reload
	subl	$1020, %eax             # imm = 0x3FC
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB13_26
	jmp	.LBB13_27
.LBB13_25:                              # %sw.bb.191
                                        #   in Loop: Header=BB13_23 Depth=2
	movq	-104(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-104(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-104(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-104(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB13_28
.LBB13_26:                              # %sw.bb.196
                                        #   in Loop: Header=BB13_23 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, (%rax)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-104(%rbp), %rax
	movb	$-1, 3(%rax)
	jmp	.LBB13_28
.LBB13_27:                              # %sw.default.243
                                        #   in Loop: Header=BB13_23 Depth=2
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -120(%rbp)
	movq	-80(%rbp), %rax
	movzbl	3(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -124(%rbp)
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -128(%rbp)
	movq	-96(%rbp), %rax
	movzbl	3(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -132(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	-120(%rbp), %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	imull	-124(%rbp), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	imull	-128(%rbp), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	imull	-132(%rbp), %edx
	addl	%edx, %ecx
	shrl	$10, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, (%rax)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	imull	-120(%rbp), %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	-124(%rbp), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	-128(%rbp), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	-132(%rbp), %edx
	addl	%edx, %ecx
	shrl	$10, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %ecx
	imull	-120(%rbp), %ecx
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %edx
	imull	-124(%rbp), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	imull	-128(%rbp), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	imull	-132(%rbp), %edx
	addl	%edx, %ecx
	shrl	$10, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 2(%rax)
	movl	-116(%rbp), %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 3(%rax)
.LBB13_28:                              # %sw.epilog.314
                                        #   in Loop: Header=BB13_23 Depth=2
	movq	-104(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
# BB#29:                                # %for.inc.320
                                        #   in Loop: Header=BB13_23 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB13_23
.LBB13_30:                              # %for.end.322
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_31
.LBB13_31:                              # %sw.epilog.323
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movl	-44(%rbp), %eax
	imull	-56(%rbp), %eax
	shll	$1, %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
# BB#32:                                # %for.inc.331
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB13_1
.LBB13_33:                              # %for.end.333
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	tile_pyramid_write_quarter, .Lfunc_end13-tile_pyramid_write_quarter
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_3
	.quad	.LBB13_8
	.quad	.LBB13_17
	.quad	.LBB13_22

	.text
	.align	16, 0x90
	.type	tile_pyramid_write_upper_quarter,@function
tile_pyramid_write_upper_quarter:       # @tile_pyramid_write_upper_quarter
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	movl	$2, %ecx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	shll	$6, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-24(%rbp), %esi
	shll	$6, %esi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-112(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_data_pointer
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_ewidth
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_eheight
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_ewidth
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_bpp
	movl	%eax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_19 Depth 2
                                        #     Child Loop BB14_14 Depth 2
                                        #     Child Loop BB14_9 Depth 2
                                        #     Child Loop BB14_4 Depth 2
	movl	$2, %eax
	movl	-60(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-116(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB14_25
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movslq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	-44(%rbp), %esi
	imull	%esi, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	-44(%rbp), %esi
	imull	%esi, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-56(%rbp), %edx
	decl	%edx
	movl	%edx, %eax
	subl	$3, %edx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%edx, -132(%rbp)        # 4-byte Spill
	ja	.LBB14_23
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_3:                               # %sw.bb
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$0, -108(%rbp)
.LBB14_4:                               # %for.cond.15
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-136(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB14_7
# BB#5:                                 # %for.body.18
                                        #   in Loop: Header=BB14_4 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, (%rax)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB14_4 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB14_4
.LBB14_7:                               # %for.end
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_23
.LBB14_8:                               # %sw.bb.35
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$0, -108(%rbp)
.LBB14_9:                               # %for.cond.36
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-140(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB14_12
# BB#10:                                # %for.body.40
                                        #   in Loop: Header=BB14_9 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, (%rax)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-104(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
# BB#11:                                # %for.inc.76
                                        #   in Loop: Header=BB14_9 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB14_9
.LBB14_12:                              # %for.end.78
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_23
.LBB14_13:                              # %sw.bb.79
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$0, -108(%rbp)
.LBB14_14:                              # %for.cond.80
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-144(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB14_17
# BB#15:                                # %for.body.84
                                        #   in Loop: Header=BB14_14 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, (%rax)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-104(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -96(%rbp)
# BB#16:                                # %for.inc.135
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB14_14
.LBB14_17:                              # %for.end.137
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_23
.LBB14_18:                              # %sw.bb.138
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$0, -108(%rbp)
.LBB14_19:                              # %for.cond.139
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-148(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB14_22
# BB#20:                                # %for.body.143
                                        #   in Loop: Header=BB14_19 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, (%rax)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-104(%rbp), %rax
	movb	%sil, 3(%rax)
	movq	-104(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
# BB#21:                                # %for.inc.209
                                        #   in Loop: Header=BB14_19 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB14_19
.LBB14_22:                              # %for.end.211
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_23
.LBB14_23:                              # %sw.epilog
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movl	-44(%rbp), %eax
	imull	-56(%rbp), %eax
	shll	$1, %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
# BB#24:                                # %for.inc.219
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB14_1
.LBB14_25:                              # %for.end.221
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	tile_pyramid_write_upper_quarter, .Lfunc_end14-tile_pyramid_write_upper_quarter
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_3
	.quad	.LBB14_8
	.quad	.LBB14_13
	.quad	.LBB14_18

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.tile_pyramid_new,@object # @__func__.tile_pyramid_new
.L__func__.tile_pyramid_new:
	.asciz	"tile_pyramid_new"
	.size	.L__func__.tile_pyramid_new, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"width > 0"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"height > 0"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"tile-pyramid.c"
	.size	.L.str.3, 15

	.type	.L__func__.tile_pyramid_destroy,@object # @__func__.tile_pyramid_destroy
.L__func__.tile_pyramid_destroy:
	.asciz	"tile_pyramid_destroy"
	.size	.L__func__.tile_pyramid_destroy, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pyramid != NULL"
	.size	.L.str.4, 16

	.type	.L__func__.tile_pyramid_get_tiles,@object # @__func__.tile_pyramid_get_tiles
.L__func__.tile_pyramid_get_tiles:
	.asciz	"tile_pyramid_get_tiles"
	.size	.L__func__.tile_pyramid_get_tiles, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pyramid->tiles[level] != NULL"
	.size	.L.str.5, 30

	.type	.L__func__.tile_pyramid_invalidate_area,@object # @__func__.tile_pyramid_invalidate_area
.L__func__.tile_pyramid_invalidate_area:
	.asciz	"tile_pyramid_invalidate_area"
	.size	.L__func__.tile_pyramid_invalidate_area, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"x >= 0 && y >= 0"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"width >= 0 && height >= 0"
	.size	.L.str.7, 26

	.type	.L__func__.tile_pyramid_set_validate_proc,@object # @__func__.tile_pyramid_set_validate_proc
.L__func__.tile_pyramid_set_validate_proc:
	.asciz	"tile_pyramid_set_validate_proc"
	.size	.L__func__.tile_pyramid_set_validate_proc, 31

	.type	.L__func__.tile_pyramid_get_width,@object # @__func__.tile_pyramid_get_width
.L__func__.tile_pyramid_get_width:
	.asciz	"tile_pyramid_get_width"
	.size	.L__func__.tile_pyramid_get_width, 23

	.type	.L__func__.tile_pyramid_get_height,@object # @__func__.tile_pyramid_get_height
.L__func__.tile_pyramid_get_height:
	.asciz	"tile_pyramid_get_height"
	.size	.L__func__.tile_pyramid_get_height, 24

	.type	.L__func__.tile_pyramid_get_bpp,@object # @__func__.tile_pyramid_get_bpp
.L__func__.tile_pyramid_get_bpp:
	.asciz	"tile_pyramid_get_bpp"
	.size	.L__func__.tile_pyramid_get_bpp, 21

	.type	.L__func__.tile_pyramid_get_memsize,@object # @__func__.tile_pyramid_get_memsize
.L__func__.tile_pyramid_get_memsize:
	.asciz	"tile_pyramid_get_memsize"
	.size	.L__func__.tile_pyramid_get_memsize, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
