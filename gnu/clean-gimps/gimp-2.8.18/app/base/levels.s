	.text
	.file	"levels.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	levels_init
	.align	16, 0x90
	.type	levels_init,@function
levels_init:                            # @levels_init
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.levels_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_9
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movl	$0, -12(%rbp)
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	ja	.LBB0_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	$0, 40(%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	$255, 60(%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	$0, 80(%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	$255, 100(%rdx,%rcx,4)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_6
.LBB0_9:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	levels_init, .Lfunc_end0-levels_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4643176031446892544     # double 255
.LCPI1_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	levels_lut_func
	.align	16, 0x90
	.type	levels_lut_func,@function
levels_lut_func:                        # @levels_lut_func
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	cmpl	$2, -20(%rbp)
	jg	.LBB1_2
# BB#1:                                 # %if.then
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB1_3:                                # %if.end
	cvtss2sd	-28(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB1_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jl	.LBB1_28
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB1_4 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB1_10
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_4 Depth=1
	cmpl	$2, -20(%rbp)
	je	.LBB1_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB1_4 Depth=1
	cmpl	$4, -20(%rbp)
	jne	.LBB1_10
.LBB1_8:                                # %land.lhs.true.9
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_10
# BB#9:                                 # %if.then.12
	cvtsd2ss	-40(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB1_29
.LBB1_10:                               # %if.end.14
                                        #   in Loop: Header=BB1_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx,%rax,4), %edx
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx,%rax,4), %edx
	je	.LBB1_12
# BB#11:                                # %if.then.19
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	cvtsi2sdl	40(%rcx,%rax,4), %xmm1
	subsd	%xmm1, %xmm0
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx,%rax,4), %edx
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	subl	40(%rcx,%rax,4), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB1_13
.LBB1_12:                               # %if.else.33
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	cvtsi2sdl	40(%rcx,%rax,4), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB1_13:                               # %if.end.40
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB1_19
.LBB1_15:                               # %cond.false
                                        #   in Loop: Header=BB1_4 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB1_17
# BB#16:                                # %cond.true.45
                                        #   in Loop: Header=BB1_4 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB1_18
.LBB1_17:                               # %cond.false.46
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB1_18:                               # %cond.end
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB1_19:                               # %cond.end.47
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -40(%rbp)
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_20
	jp	.LBB1_20
	jmp	.LBB1_21
.LBB1_20:                               # %if.then.53
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	divsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -40(%rbp)
.LBB1_21:                               # %if.end.58
                                        #   in Loop: Header=BB1_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	100(%rcx,%rax,4), %edx
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	80(%rcx,%rax,4), %edx
	jl	.LBB1_23
# BB#22:                                # %if.then.65
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	100(%rcx,%rax,4), %edx
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	subl	80(%rcx,%rax,4), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	cvtsi2sdl	80(%rcx,%rax,4), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB1_26
.LBB1_23:                               # %if.else.80
                                        #   in Loop: Header=BB1_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	100(%rcx,%rax,4), %edx
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	80(%rcx,%rax,4), %edx
	jge	.LBB1_25
# BB#24:                                # %if.then.89
                                        #   in Loop: Header=BB1_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	cvtsi2sdl	80(%rcx,%rax,4), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	80(%rcx,%rax,4), %edx
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	subl	100(%rcx,%rax,4), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB1_25:                               # %if.end.104
                                        #   in Loop: Header=BB1_4 Depth=1
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.105
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	-44(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB1_4
.LBB1_28:                               # %for.end
	cvtsd2ss	-40(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
.LBB1_29:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	levels_lut_func, .Lfunc_end1-levels_lut_func
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.levels_init,@object # @__func__.levels_init
.L__func__.levels_init:
	.asciz	"levels_init"
	.size	.L__func__.levels_init, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"levels != NULL"
	.size	.L.str.1, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
