	.text
	.file	"plasma.bc"
	.globl	mkgrayplasma
	.align	16, 0x90
	.type	mkgrayplasma,@function
mkgrayplasma:                           # @mkgrayplasma
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	-8(%rbp), %rdi
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	mkplasma_red
	movq	-8(%rbp), %rdi
	imull	$3, (%rdi), %eax
	movq	-8(%rbp), %rdi
	imull	4(%rdi), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -16(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movl	-16(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	%dl, (%rcx,%rax)
	movl	-16(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	%dl, (%rcx,%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mkgrayplasma, .Lfunc_end0-mkgrayplasma
	.cfi_endproc

	.align	16, 0x90
	.type	mkplasma_red,@function
mkplasma_red:                           # @mkplasma_red
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
	movss	%xmm0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdi
	imull	$3, (%rdi), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -16(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB1_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -20(%rbp)
.LBB1_3:                                # %for.cond.2
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB1_6
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	$3, -16(%rbp), %ecx
	addl	%ecx, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	$0, (%rsi,%rdx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_7
.LBB1_7:                                # %for.inc.8
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB1_1
.LBB1_8:                                # %for.end.10
	movl	$1, %esi
	movl	$256, %edx              # imm = 0x100
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	movq	random_generator, %rdi
	callq	g_rand_int_range
	movl	$1, %esi
	movl	$256, %edx              # imm = 0x100
	movb	%al, %cl
	imull	$0, -24(%rbp), %eax
	addl	$0, %eax
	addl	$0, %eax
	movslq	%eax, %rdi
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movb	%cl, (%r8,%rdi)
	movq	random_generator, %rdi
	callq	g_rand_int_range
	movl	$1, %esi
	movl	$256, %edx              # imm = 0x100
	movb	%al, %cl
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	$0, %eax
	addl	$0, %eax
	movslq	%eax, %rdi
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movb	%cl, (%r8,%rdi)
	movq	random_generator, %rdi
	callq	g_rand_int_range
	movl	$1, %esi
	movl	$256, %edx              # imm = 0x100
	movb	%al, %cl
	imull	$0, -24(%rbp), %eax
	imull	$3, -16(%rbp), %r9d
	addl	%r9d, %eax
	addl	$0, %eax
	movslq	%eax, %rdi
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movb	%cl, (%r8,%rdi)
	movq	random_generator, %rdi
	callq	g_rand_int_range
	xorl	%edx, %edx
	movb	%al, %cl
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	$3, -16(%rbp), %esi
	addl	%esi, %eax
	addl	$0, %eax
	movslq	%eax, %rdi
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movb	%cl, (%r8,%rdi)
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %r8d
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	%edx, %esi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-28(%rbp), %ecx         # 4-byte Reload
	callq	mkplasma_sub
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mkplasma_red, .Lfunc_end1-mkplasma_red
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4611686018427387904     # double 2
.LCPI2_1:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	mkplasma_sub,@function
mkplasma_sub:                           # @mkplasma_sub
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movq	-8(%rbp), %rdi
	imull	$3, (%rdi), %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	-12(%rbp), %ecx
	subl	-16(%rbp), %ecx
	movl	%ecx, %edi
	callq	abs
	movl	%eax, -40(%rbp)
	movl	-20(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movl	%eax, -44(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB2_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -44(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_17
.LBB2_3:                                # %if.end
	movl	$2, %eax
	movl	-12(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-56(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -48(%rbp)
	movl	-20(%rbp), %eax
	addl	-24(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, -48(%rbp), %esi
	addl	%esi, %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rdi
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	cmpb	$0, (%r8,%rdi)
	jne	.LBB2_5
# BB#4:                                 # %if.then.10
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	imull	-32(%rbp), %ecx
	imull	$3, -12(%rbp), %edx
	addl	%edx, %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %ecx
	movl	-20(%rbp), %edx
	imull	-32(%rbp), %edx
	imull	$3, -16(%rbp), %r8d
	addl	%r8d, %edx
	addl	-36(%rbp), %edx
	movslq	%edx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	movq	random_generator, %rdi
	subl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm0, %xmm3
	cvtsi2sdl	-40(%rbp), %xmm4
	divsd	%xmm0, %xmm4
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	%xmm2, -72(%rbp)        # 8-byte Spill
	callq	g_rand_double_range
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	pfix
	movb	%al, %r9b
	movl	-20(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, -48(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %r10
	movq	8(%r10), %r10
	movb	%r9b, (%r10,%rsi)
.LBB2_5:                                # %if.end.48
	movl	-24(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, -48(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	cmpb	$0, (%rsi,%rdx)
	jne	.LBB2_7
# BB#6:                                 # %if.then.57
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movl	-24(%rbp), %ecx
	imull	-32(%rbp), %ecx
	imull	$3, -12(%rbp), %edx
	addl	%edx, %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %ecx
	movl	-24(%rbp), %edx
	imull	-32(%rbp), %edx
	imull	$3, -16(%rbp), %r8d
	addl	%r8d, %edx
	addl	-36(%rbp), %edx
	movslq	%edx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	movq	random_generator, %rdi
	subl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm0, %xmm3
	cvtsi2sdl	-40(%rbp), %xmm4
	divsd	%xmm0, %xmm4
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	%xmm2, -88(%rbp)        # 8-byte Spill
	callq	g_rand_double_range
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	pfix
	movb	%al, %r9b
	movl	-24(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, -48(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %r10
	movq	8(%r10), %r10
	movb	%r9b, (%r10,%rsi)
.LBB2_7:                                # %if.end.96
	movl	-52(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, -12(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	cmpb	$0, (%rsi,%rdx)
	jne	.LBB2_9
# BB#8:                                 # %if.then.105
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	imull	-32(%rbp), %ecx
	imull	$3, -12(%rbp), %edx
	addl	%edx, %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %ecx
	movl	-24(%rbp), %edx
	imull	-32(%rbp), %edx
	imull	$3, -12(%rbp), %r8d
	addl	%r8d, %edx
	addl	-36(%rbp), %edx
	movslq	%edx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	movq	random_generator, %rdi
	subl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm0, %xmm3
	cvtsi2sdl	-44(%rbp), %xmm4
	divsd	%xmm0, %xmm4
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	%xmm2, -104(%rbp)       # 8-byte Spill
	callq	g_rand_double_range
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	pfix
	movb	%al, %r9b
	movl	-52(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, -12(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %r10
	movq	8(%r10), %r10
	movb	%r9b, (%r10,%rsi)
.LBB2_9:                                # %if.end.144
	movl	-52(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, -16(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	cmpb	$0, (%rsi,%rdx)
	jne	.LBB2_11
# BB#10:                                # %if.then.153
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	imull	-32(%rbp), %ecx
	imull	$3, -16(%rbp), %edx
	addl	%edx, %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %ecx
	movl	-24(%rbp), %edx
	imull	-32(%rbp), %edx
	imull	$3, -16(%rbp), %r8d
	addl	%r8d, %edx
	addl	-36(%rbp), %edx
	movslq	%edx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	movq	random_generator, %rdi
	subl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm0, %xmm3
	cvtsi2sdl	-44(%rbp), %xmm4
	divsd	%xmm0, %xmm4
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
	callq	g_rand_double_range
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	pfix
	movb	%al, %r9b
	movl	-52(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, -16(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %r10
	movq	8(%r10), %r10
	movb	%r9b, (%r10,%rsi)
.LBB2_11:                               # %if.end.192
	movl	-52(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, -48(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	cmpb	$0, (%rsi,%rdx)
	jne	.LBB2_13
# BB#12:                                # %if.then.201
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	imull	-32(%rbp), %ecx
	imull	$3, -12(%rbp), %edx
	addl	%edx, %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %ecx
	movl	-20(%rbp), %edx
	imull	-32(%rbp), %edx
	imull	$3, -16(%rbp), %r8d
	addl	%r8d, %edx
	addl	-36(%rbp), %edx
	movslq	%edx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	addl	%edx, %ecx
	movl	-24(%rbp), %edx
	imull	-32(%rbp), %edx
	imull	$3, -12(%rbp), %r8d
	addl	%r8d, %edx
	addl	-36(%rbp), %edx
	movslq	%edx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	addl	%edx, %ecx
	movl	-24(%rbp), %edx
	imull	-32(%rbp), %edx
	imull	$3, -16(%rbp), %r8d
	addl	%r8d, %edx
	addl	-36(%rbp), %edx
	movslq	%edx, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	movq	random_generator, %rdi
	movl	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm0, %xmm3
	movl	-40(%rbp), %eax
	addl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm4
	divsd	%xmm0, %xmm4
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	%xmm2, -136(%rbp)       # 8-byte Spill
	callq	g_rand_double_range
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	pfix
	movb	%al, %r9b
	movl	-52(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, -48(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %r10
	movq	8(%r10), %r10
	movb	%r9b, (%r10,%rsi)
.LBB2_13:                               # %if.end.260
	cmpl	$1, -40(%rbp)
	jle	.LBB2_15
# BB#14:                                # %if.then.263
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	mkplasma_sub
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	mkplasma_sub
.LBB2_15:                               # %if.end.264
	cmpl	$1, -44(%rbp)
	jle	.LBB2_17
# BB#16:                                # %if.then.267
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	mkplasma_sub
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	mkplasma_sub
.LBB2_17:                               # %if.end.268
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	mkplasma_sub, .Lfunc_end2-mkplasma_sub
	.cfi_endproc

	.align	16, 0x90
	.type	pfix,@function
pfix:                                   # @pfix
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
	movl	%edi, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jge	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB3_5
.LBB3_2:                                # %if.end
	cmpl	$255, -8(%rbp)
	jle	.LBB3_4
# BB#3:                                 # %if.then.2
	movl	$255, -4(%rbp)
	jmp	.LBB3_5
.LBB3_4:                                # %if.end.3
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_5:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pfix, .Lfunc_end3-pfix
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
