	.text
	.file	"curves.bc"
	.globl	curves_init
	.align	16, 0x90
	.type	curves_init,@function
curves_init:                            # @curves_init
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
	movabsq	$.L__func__.curves_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movl	$0, -12(%rbp)
.LBB0_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	cmpl	$4, -12(%rbp)
	ja	.LBB0_13
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$0, -16(%rbp)
.LBB0_8:                                # %for.cond.2
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jge	.LBB0_11
# BB#9:                                 # %for.body.4
                                        #   in Loop: Header=BB0_8 Depth=2
	movl	-16(%rbp), %eax
	movb	%al, %cl
	movslq	-16(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	shlq	$8, %rsi
	addq	%rsi, %rdi
	movb	%cl, (%rdi,%rdx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB0_8 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_8
.LBB0_11:                               # %for.end
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               # %for.inc.7
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_6
.LBB0_13:                               # %for.end.9
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	curves_init, .Lfunc_end0-curves_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4643176031446892544     # double 255
	.text
	.globl	curves_lut_func
	.align	16, 0x90
	.type	curves_lut_func,@function
curves_lut_func:                        # @curves_lut_func
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
	movl	%eax, -52(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB1_3:                                # %if.end
	cvtss2sd	-28(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB1_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jl	.LBB1_18
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB1_4 Depth=1
	cmpl	$0, -52(%rbp)
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
	cvtsd2ss	-48(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB1_19
.LBB1_10:                               # %if.end.14
                                        #   in Loop: Header=BB1_4 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB1_12
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$8, %rax
	addq	%rax, %rcx
	movzbl	(%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB1_16
.LBB1_12:                               # %if.else.21
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_14
# BB#13:                                # %if.then.24
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$8, %rax
	addq	%rax, %rcx
	movzbl	255(%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB1_15
.LBB1_14:                               # %if.else.32
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	mulsd	-48(%rbp), %xmm2
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	cvtss2sd	-32(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movslq	-36(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	-16(%rbp), %rsi
	shlq	$8, %rdx
	addq	%rdx, %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movslq	-52(%rbp), %rdx
	movq	-16(%rbp), %rsi
	shlq	$8, %rdx
	addq	%rdx, %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
.LBB1_15:                               # %if.end.60
                                        #   in Loop: Header=BB1_4 Depth=1
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.61
                                        #   in Loop: Header=BB1_4 Depth=1
	jmp	.LBB1_17
.LBB1_17:                               # %for.inc
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	-52(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB1_4
.LBB1_18:                               # %for.end
	cvtsd2ss	-48(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
.LBB1_19:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	curves_lut_func, .Lfunc_end1-curves_lut_func
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.curves_init,@object # @__func__.curves_init
.L__func__.curves_init:
	.asciz	"curves_init"
	.size	.L__func__.curves_init, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"curves != NULL"
	.size	.L.str.1, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
