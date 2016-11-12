	.text
	.file	"gimpdrawable.bc"
	.globl	gimp_drawable_get
	.align	16, 0x90
	.type	gimp_drawable_get,@function
gimp_drawable_get:                      # @gimp_drawable_get
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
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_width@PLT
	movl	%eax, -28(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_height@PLT
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_bpp@PLT
	movl	%eax, -36(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jle	.LBB0_5
# BB#2:                                 # %land.lhs.true
	cmpl	$0, -32(%rbp)
	jle	.LBB0_5
# BB#3:                                 # %land.lhs.true.4
	cmpl	$0, -36(%rbp)
	jle	.LBB0_5
# BB#4:                                 # %if.then
	jmp	.LBB0_6
.LBB0_5:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_8
.LBB0_6:                                # %if.end
	jmp	.LBB0_7
.LBB0_7:                                # %do.end
	movl	$40, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-32(%rbp), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-40(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-48(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movq	-24(%rbp), %rdi
	movl	%eax, 16(%rdi)
	movl	-28(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-52(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%esi, %esi
	movl	%esi, %edx
	movl	-60(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movq	-24(%rbp), %rdi
	movl	%eax, 20(%rdi)
	movq	-24(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB0_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_get, .Lfunc_end0-gimp_drawable_get
	.cfi_endproc

	.globl	gimp_drawable_detach
	.align	16, 0x90
	.type	gimp_drawable_detach,@function
gimp_drawable_detach:                   # @gimp_drawable_detach
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
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_detach(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_11
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush@PLT
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	je	.LBB1_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB1_7:                                # %if.end.3
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB1_9
# BB#8:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB1_9:                                # %if.end.7
	jmp	.LBB1_10
.LBB1_10:                               # %do.body.8
	movl	$40, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
.LBB1_11:                               # %do.end.9
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_detach, .Lfunc_end1-gimp_drawable_detach
	.cfi_endproc

	.globl	gimp_drawable_flush
	.align	16, 0x90
	.type	gimp_drawable_flush,@function
gimp_drawable_flush:                    # @gimp_drawable_flush
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_flush(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_24
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_14
# BB#6:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	20(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB2_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB2_13
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB2_7 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movzwl	16(%rax), %ecx
	cmpl	$0, %ecx
	jle	.LBB2_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_7 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movb	18(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB2_11
# BB#10:                                # %if.then.10
                                        #   in Loop: Header=BB2_7 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tile_flush@PLT
.LBB2_11:                               # %if.end.13
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_12
.LBB2_12:                               # %for.inc
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB2_7
.LBB2_13:                               # %for.end
	jmp	.LBB2_14
.LBB2_14:                               # %if.end.14
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB2_23
# BB#15:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	20(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB2_16:                               # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB2_22
# BB#17:                                # %for.body.24
                                        #   in Loop: Header=BB2_16 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movzwl	16(%rax), %ecx
	cmpl	$0, %ecx
	jle	.LBB2_20
# BB#18:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB2_16 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movb	18(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB2_20
# BB#19:                                # %if.then.39
                                        #   in Loop: Header=BB2_16 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tile_flush@PLT
.LBB2_20:                               # %if.end.42
                                        #   in Loop: Header=BB2_16 Depth=1
	jmp	.LBB2_21
.LBB2_21:                               # %for.inc.43
                                        #   in Loop: Header=BB2_16 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB2_16
.LBB2_22:                               # %for.end.45
	jmp	.LBB2_23
.LBB2_23:                               # %if.end.46
	movq	-8(%rbp), %rdi
	callq	_gimp_tile_cache_flush_drawable
.LBB2_24:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_flush, .Lfunc_end2-gimp_drawable_flush
	.cfi_endproc

	.globl	gimp_drawable_get_tile
	.align	16, 0x90
	.type	gimp_drawable_get_tile,@function
gimp_drawable_get_tile:                 # @gimp_drawable_get_tile
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_tile(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	cmpl	$0, -20(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.2
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB3_8:                                # %if.end.4
	cmpq	$0, -40(%rbp)
	jne	.LBB3_27
# BB#9:                                 # %if.then.6
	movl	$40, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %eax
	movq	-16(%rbp), %rcx
	imull	20(%rcx), %eax
	movl	%eax, -52(%rbp)
	movslq	-52(%rbp), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	20(%rax), %r8d
	subl	$1, %r8d
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-76(%rbp), %edx         # 4-byte Reload
	imull	%eax, %edx
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	%edx, %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %edx
	subl	$1, %edx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%edx, -84(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-84(%rbp), %edx         # 4-byte Reload
	imull	%eax, %edx
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -68(%rbp)
.LBB3_10:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jae	.LBB3_23
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB3_10 Depth=1
	movl	$0, -64(%rbp)
.LBB3_12:                               # %for.cond.19
                                        #   Parent Loop BB3_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	20(%rcx), %eax
	jae	.LBB3_21
# BB#13:                                # %for.body.23
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movslq	-68(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-68(%rbp), %ecx
	movslq	-68(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-40(%rbp), %rax
	movl	%ecx, 12(%rax)
	movslq	-68(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-40(%rbp), %rax
	movw	$0, 16(%rax)
	movslq	-68(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-40(%rbp), %rax
	movb	18(%rax), %dl
	andb	$-2, %dl
	movb	%dl, 18(%rax)
	movl	-20(%rbp), %ecx
	movslq	-68(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-40(%rbp), %rax
	movb	%cl, %dl
	movb	18(%rax), %sil
	andb	$1, %dl
	shlb	$1, %dl
	andb	$-3, %sil
	orb	%dl, %sil
	movb	%sil, 18(%rax)
	movslq	-68(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movslq	-68(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movl	-64(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	20(%rax), %r8d
	subl	$1, %r8d
	cmpl	%r8d, %ecx
	jne	.LBB3_15
# BB#14:                                # %if.then.46
                                        #   in Loop: Header=BB3_12 Depth=2
	movl	-44(%rbp), %eax
	movslq	-68(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.49
                                        #   in Loop: Header=BB3_12 Depth=2
	callq	gimp_tile_width@PLT
	movslq	-68(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB3_16:                               # %if.end.54
                                        #   in Loop: Header=BB3_12 Depth=2
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB3_18
# BB#17:                                # %if.then.59
                                        #   in Loop: Header=BB3_12 Depth=2
	movl	-48(%rbp), %eax
	movslq	-68(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-40(%rbp), %rcx
	movl	%eax, 4(%rcx)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.62
                                        #   in Loop: Header=BB3_12 Depth=2
	callq	gimp_tile_height@PLT
	movslq	-68(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-40(%rbp), %rcx
	movl	%eax, 4(%rcx)
.LBB3_19:                               # %if.end.67
                                        #   in Loop: Header=BB3_12 Depth=2
	jmp	.LBB3_20
.LBB3_20:                               # %for.inc
                                        #   in Loop: Header=BB3_12 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_12
.LBB3_21:                               # %for.end
                                        #   in Loop: Header=BB3_10 Depth=1
	jmp	.LBB3_22
.LBB3_22:                               # %for.inc.69
                                        #   in Loop: Header=BB3_10 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB3_10
.LBB3_23:                               # %for.end.71
	cmpl	$0, -20(%rbp)
	je	.LBB3_25
# BB#24:                                # %if.then.73
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB3_26
.LBB3_25:                               # %if.else.75
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB3_26:                               # %if.end.77
	jmp	.LBB3_27
.LBB3_27:                               # %if.end.78
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	20(%rcx), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)
	movslq	-56(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB3_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_get_tile, .Lfunc_end3-gimp_drawable_get_tile
	.cfi_endproc

	.globl	gimp_drawable_get_tile2
	.align	16, 0x90
	.type	gimp_drawable_get_tile2,@function
gimp_drawable_get_tile2:                # @gimp_drawable_get_tile2
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
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_tile2(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-44(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%esi, %esi
	movl	%esi, %edx
	movl	-52(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %eax
	movl	-36(%rbp), %ecx
	movl	%eax, %edx
	callq	gimp_drawable_get_tile@PLT
	movq	%rax, -8(%rbp)
.LBB4_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_drawable_get_tile2, .Lfunc_end4-gimp_drawable_get_tile2
	.cfi_endproc

	.globl	gimp_drawable_get_color_uchar
	.align	16, 0x90
	.type	gimp_drawable_get_color_uchar,@function
gimp_drawable_get_color_uchar:          # @gimp_drawable_get_color_uchar
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_color_uchar(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_16
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.3
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_color_uchar(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_16
.LBB5_9:                                # %if.end.5
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.6
	movl	-4(%rbp), %edi
	callq	gimp_drawable_type@PLT
	movl	%eax, %edi
	movl	%edi, %ecx
	subl	$3, %eax
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movl	%eax, -36(%rbp)         # 4-byte Spill
	ja	.LBB5_15
# BB#17:                                # %do.end.6
	leaq	.LJTI5_0(%rip), %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB5_11:                               # %sw.bb
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movq	%rax, %rdx
	callq	gimp_rgb_get_uchar@PLT
	movq	-24(%rbp), %rax
	movb	$-1, 3(%rax)
	jmp	.LBB5_16
.LBB5_12:                               # %sw.bb.10
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movq	-24(%rbp), %rdx
	addq	$3, %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	gimp_rgba_get_uchar@PLT
	jmp	.LBB5_16
.LBB5_13:                               # %sw.bb.15
	movq	-16(%rbp), %rdi
	callq	gimp_rgb_luminance_uchar@PLT
	movq	-24(%rbp), %rdi
	movb	%al, (%rdi)
	movq	-24(%rbp), %rdi
	movb	$-1, 1(%rdi)
	jmp	.LBB5_16
.LBB5_14:                               # %sw.bb.19
	movq	-16(%rbp), %rdi
	callq	gimp_rgb_luminance_uchar@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	addq	$1, %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	gimp_rgba_get_uchar@PLT
	jmp	.LBB5_16
.LBB5_15:                               # %sw.default
	jmp	.LBB5_16
.LBB5_16:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_drawable_get_color_uchar, .Lfunc_end5-gimp_drawable_get_color_uchar
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI5_0:
	.long	.LBB5_11-.LJTI5_0
	.long	.LBB5_12-.LJTI5_0
	.long	.LBB5_13-.LJTI5_0
	.long	.LBB5_14-.LJTI5_0

	.text
	.globl	gimp_drawable_get_thumbnail_data
	.align	16, 0x90
	.type	gimp_drawable_get_thumbnail_data,@function
gimp_drawable_get_thumbnail_data:       # @gimp_drawable_get_thumbnail_data
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
	subq	$96, %rsp
	leaq	-36(%rbp), %rax
	leaq	-40(%rbp), %r8
	leaq	-52(%rbp), %r9
	leaq	-48(%rbp), %r10
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	callq	_gimp_drawable_thumbnail
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	%edx, (%rcx)
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rcx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_drawable_get_thumbnail_data, .Lfunc_end6-gimp_drawable_get_thumbnail_data
	.cfi_endproc

	.globl	gimp_drawable_get_sub_thumbnail_data
	.align	16, 0x90
	.type	gimp_drawable_get_sub_thumbnail_data,@function
gimp_drawable_get_sub_thumbnail_data:   # @gimp_drawable_get_sub_thumbnail_data
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp24:
	.cfi_offset %rbx, -48
.Ltmp25:
	.cfi_offset %r12, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	leaq	-84(%rbp), %r11
	leaq	-88(%rbp), %rbx
	leaq	-100(%rbp), %r14
	leaq	-96(%rbp), %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	%r10, -72(%rbp)
	movq	%rax, -80(%rbp)
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movq	-64(%rbp), %rax
	movl	(%rax), %r9d
	movq	-72(%rbp), %rax
	movl	(%rax), %r12d
	movq	-80(%rbp), %rax
	movl	%r12d, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	callq	_gimp_drawable_sub_thumbnail
	movl	-84(%rbp), %ecx
	movq	-64(%rbp), %r10
	movl	%ecx, (%r10)
	movl	-88(%rbp), %ecx
	movq	-72(%rbp), %r10
	movl	%ecx, (%r10)
	movq	-96(%rbp), %r10
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movq	%r10, %rax
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_drawable_get_sub_thumbnail_data, .Lfunc_end7-gimp_drawable_get_sub_thumbnail_data
	.cfi_endproc

	.globl	gimp_drawable_is_valid
	.align	16, 0x90
	.type	gimp_drawable_is_valid,@function
gimp_drawable_is_valid:                 # @gimp_drawable_is_valid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_is_valid@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_drawable_is_valid, .Lfunc_end8-gimp_drawable_is_valid
	.cfi_endproc

	.globl	gimp_drawable_is_layer
	.align	16, 0x90
	.type	gimp_drawable_is_layer,@function
gimp_drawable_is_layer:                 # @gimp_drawable_is_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_is_layer@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_drawable_is_layer, .Lfunc_end9-gimp_drawable_is_layer
	.cfi_endproc

	.globl	gimp_drawable_is_text_layer
	.align	16, 0x90
	.type	gimp_drawable_is_text_layer,@function
gimp_drawable_is_text_layer:            # @gimp_drawable_is_text_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_is_text_layer@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_drawable_is_text_layer, .Lfunc_end10-gimp_drawable_is_text_layer
	.cfi_endproc

	.globl	gimp_drawable_is_layer_mask
	.align	16, 0x90
	.type	gimp_drawable_is_layer_mask,@function
gimp_drawable_is_layer_mask:            # @gimp_drawable_is_layer_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_is_layer_mask@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_drawable_is_layer_mask, .Lfunc_end11-gimp_drawable_is_layer_mask
	.cfi_endproc

	.globl	gimp_drawable_is_channel
	.align	16, 0x90
	.type	gimp_drawable_is_channel,@function
gimp_drawable_is_channel:               # @gimp_drawable_is_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_is_channel@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_drawable_is_channel, .Lfunc_end12-gimp_drawable_is_channel
	.cfi_endproc

	.globl	gimp_drawable_delete
	.align	16, 0x90
	.type	gimp_drawable_delete,@function
gimp_drawable_delete:                   # @gimp_drawable_delete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_delete@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_drawable_delete, .Lfunc_end13-gimp_drawable_delete
	.cfi_endproc

	.globl	gimp_drawable_get_image
	.align	16, 0x90
	.type	gimp_drawable_get_image,@function
gimp_drawable_get_image:                # @gimp_drawable_get_image
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_get_image@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_drawable_get_image, .Lfunc_end14-gimp_drawable_get_image
	.cfi_endproc

	.globl	gimp_drawable_get_name
	.align	16, 0x90
	.type	gimp_drawable_get_name,@function
gimp_drawable_get_name:                 # @gimp_drawable_get_name
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_get_name@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_drawable_get_name, .Lfunc_end15-gimp_drawable_get_name
	.cfi_endproc

	.globl	gimp_drawable_set_name
	.align	16, 0x90
	.type	gimp_drawable_set_name,@function
gimp_drawable_set_name:                 # @gimp_drawable_set_name
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_item_set_name@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_drawable_set_name, .Lfunc_end16-gimp_drawable_set_name
	.cfi_endproc

	.globl	gimp_drawable_get_visible
	.align	16, 0x90
	.type	gimp_drawable_get_visible,@function
gimp_drawable_get_visible:              # @gimp_drawable_get_visible
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_get_visible@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_drawable_get_visible, .Lfunc_end17-gimp_drawable_get_visible
	.cfi_endproc

	.globl	gimp_drawable_set_visible
	.align	16, 0x90
	.type	gimp_drawable_set_visible,@function
gimp_drawable_set_visible:              # @gimp_drawable_set_visible
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_item_set_visible@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_drawable_set_visible, .Lfunc_end18-gimp_drawable_set_visible
	.cfi_endproc

	.globl	gimp_drawable_get_linked
	.align	16, 0x90
	.type	gimp_drawable_get_linked,@function
gimp_drawable_get_linked:               # @gimp_drawable_get_linked
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_get_linked@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_drawable_get_linked, .Lfunc_end19-gimp_drawable_get_linked
	.cfi_endproc

	.globl	gimp_drawable_set_linked
	.align	16, 0x90
	.type	gimp_drawable_set_linked,@function
gimp_drawable_set_linked:               # @gimp_drawable_set_linked
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_item_set_linked@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_drawable_set_linked, .Lfunc_end20-gimp_drawable_set_linked
	.cfi_endproc

	.globl	gimp_drawable_get_tattoo
	.align	16, 0x90
	.type	gimp_drawable_get_tattoo,@function
gimp_drawable_get_tattoo:               # @gimp_drawable_get_tattoo
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_item_get_tattoo@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_drawable_get_tattoo, .Lfunc_end21-gimp_drawable_get_tattoo
	.cfi_endproc

	.globl	gimp_drawable_set_tattoo
	.align	16, 0x90
	.type	gimp_drawable_set_tattoo,@function
gimp_drawable_set_tattoo:               # @gimp_drawable_set_tattoo
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_item_set_tattoo@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_drawable_set_tattoo, .Lfunc_end22-gimp_drawable_set_tattoo
	.cfi_endproc

	.globl	gimp_drawable_parasite_find
	.align	16, 0x90
	.type	gimp_drawable_parasite_find,@function
gimp_drawable_parasite_find:            # @gimp_drawable_parasite_find
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_item_get_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_drawable_parasite_find, .Lfunc_end23-gimp_drawable_parasite_find
	.cfi_endproc

	.globl	gimp_drawable_parasite_attach
	.align	16, 0x90
	.type	gimp_drawable_parasite_attach,@function
gimp_drawable_parasite_attach:          # @gimp_drawable_parasite_attach
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_item_attach_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_drawable_parasite_attach, .Lfunc_end24-gimp_drawable_parasite_attach
	.cfi_endproc

	.globl	gimp_drawable_parasite_detach
	.align	16, 0x90
	.type	gimp_drawable_parasite_detach,@function
gimp_drawable_parasite_detach:          # @gimp_drawable_parasite_detach
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_item_detach_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_drawable_parasite_detach, .Lfunc_end25-gimp_drawable_parasite_detach
	.cfi_endproc

	.globl	gimp_drawable_parasite_list
	.align	16, 0x90
	.type	gimp_drawable_parasite_list,@function
gimp_drawable_parasite_list:            # @gimp_drawable_parasite_list
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_item_get_parasite_list@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_drawable_parasite_list, .Lfunc_end26-gimp_drawable_parasite_list
	.cfi_endproc

	.globl	gimp_drawable_attach_new_parasite
	.align	16, 0x90
	.type	gimp_drawable_attach_new_parasite,@function
gimp_drawable_attach_new_parasite:      # @gimp_drawable_attach_new_parasite
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	gimp_parasite_new@PLT
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	gimp_item_attach_parasite@PLT
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_parasite_free@PLT
	movl	-44(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_drawable_attach_new_parasite, .Lfunc_end27-gimp_drawable_attach_new_parasite
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_drawable_get,@object # @__func__.gimp_drawable_get
.L__func__.gimp_drawable_get:
	.asciz	"gimp_drawable_get"
	.size	.L__func__.gimp_drawable_get, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"width > 0 && height > 0 && bpp > 0"
	.size	.L.str.1, 35

	.type	.L__func__.gimp_drawable_detach,@object # @__func__.gimp_drawable_detach
.L__func__.gimp_drawable_detach:
	.asciz	"gimp_drawable_detach"
	.size	.L__func__.gimp_drawable_detach, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"drawable != NULL"
	.size	.L.str.2, 17

	.type	.L__func__.gimp_drawable_flush,@object # @__func__.gimp_drawable_flush
.L__func__.gimp_drawable_flush:
	.asciz	"gimp_drawable_flush"
	.size	.L__func__.gimp_drawable_flush, 20

	.type	.L__func__.gimp_drawable_get_tile,@object # @__func__.gimp_drawable_get_tile
.L__func__.gimp_drawable_get_tile:
	.asciz	"gimp_drawable_get_tile"
	.size	.L__func__.gimp_drawable_get_tile, 23

	.type	.L__func__.gimp_drawable_get_tile2,@object # @__func__.gimp_drawable_get_tile2
.L__func__.gimp_drawable_get_tile2:
	.asciz	"gimp_drawable_get_tile2"
	.size	.L__func__.gimp_drawable_get_tile2, 24

	.type	.L__func__.gimp_drawable_get_color_uchar,@object # @__func__.gimp_drawable_get_color_uchar
.L__func__.gimp_drawable_get_color_uchar:
	.asciz	"gimp_drawable_get_color_uchar"
	.size	.L__func__.gimp_drawable_get_color_uchar, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"color != NULL"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"color_uchar != NULL"
	.size	.L.str.4, 20

	.hidden	_gimp_tile_cache_flush_drawable
	.hidden	_gimp_drawable_thumbnail
	.hidden	_gimp_drawable_sub_thumbnail

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
