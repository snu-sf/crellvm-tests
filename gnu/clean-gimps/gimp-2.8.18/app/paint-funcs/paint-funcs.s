	.text
	.file	"paint-funcs.bc"
	.globl	color_pixels
	.align	16, 0x90
	.type	color_pixels,@function
color_pixels:                           # @color_pixels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	decl	%ecx
	movl	%ecx, %esi
	subl	$3, %ecx
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	ja	.LBB0_14
# BB#19:                                # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movb	%cl, %dl
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	movzbl	%dl, %esi
	movq	%rax, %rdx
	callq	memset
	jmp	.LBB0_18
.LBB0_2:                                # %sw.bb.2
	movq	-16(%rbp), %rax
	movw	(%rax), %cx
	movw	%cx, -26(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB0_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movw	-26(%rbp), %ax
	movq	-40(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-40(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB0_3
.LBB0_5:                                # %while.end
	jmp	.LBB0_18
.LBB0_6:                                # %sw.bb.3
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -41(%rbp)
	movq	-16(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -42(%rbp)
	movq	-16(%rbp), %rax
	movb	2(%rax), %cl
	movb	%cl, -43(%rbp)
.LBB0_7:                                # %while.cond.7
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB0_9
# BB#8:                                 # %while.body.10
                                        #   in Loop: Header=BB0_7 Depth=1
	movb	-41(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-42(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-43(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, 2(%rcx)
	movq	-8(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB0_7
.LBB0_9:                                # %while.end.14
	jmp	.LBB0_18
.LBB0_10:                               # %sw.bb.15
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB0_11:                               # %while.cond.17
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB0_13
# BB#12:                                # %while.body.20
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	-48(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-56(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB0_11
.LBB0_13:                               # %while.end.22
	jmp	.LBB0_18
.LBB0_14:                               # %sw.default
	jmp	.LBB0_15
.LBB0_15:                               # %while.cond.23
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB0_17
# BB#16:                                # %while.body.26
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	callq	memcpy
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB0_15
.LBB0_17:                               # %while.end.29
	jmp	.LBB0_18
.LBB0_18:                               # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	color_pixels, .Lfunc_end0-color_pixels
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_1
	.quad	.LBB0_2
	.quad	.LBB0_6
	.quad	.LBB0_10

	.text
	.globl	color_pixels_mask
	.align	16, 0x90
	.type	color_pixels_mask,@function
color_pixels_mask:                      # @color_pixels_mask
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	decl	%r8d
	movl	%r8d, %edx
	subl	$3, %r8d
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	ja	.LBB1_14
# BB#15:                                # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movb	%cl, %dl
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movzbl	%dl, %esi
	movq	%rax, %rdx
	callq	memset
	jmp	.LBB1_14
.LBB1_2:                                # %sw.bb.2
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -33(%rbp)
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB1_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movb	-33(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-8(%rbp), %rcx
	movb	%al, 1(%rcx)
	movq	-8(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB1_3
.LBB1_5:                                # %while.end
	jmp	.LBB1_14
.LBB1_6:                                # %sw.bb.5
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -33(%rbp)
	movq	-24(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -34(%rbp)
	movq	-24(%rbp), %rax
	movb	2(%rax), %cl
	movb	%cl, -35(%rbp)
.LBB1_7:                                # %while.cond.9
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB1_9
# BB#8:                                 # %while.body.12
                                        #   in Loop: Header=BB1_7 Depth=1
	movb	-33(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-34(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-35(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, 2(%rcx)
	movq	-8(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB1_7
.LBB1_9:                                # %while.end.17
	jmp	.LBB1_14
.LBB1_10:                               # %sw.bb.18
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -33(%rbp)
	movq	-24(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -34(%rbp)
	movq	-24(%rbp), %rax
	movb	2(%rax), %cl
	movb	%cl, -35(%rbp)
.LBB1_11:                               # %while.cond.22
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB1_13
# BB#12:                                # %while.body.25
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	-33(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-34(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-35(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, 2(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-8(%rbp), %rcx
	movb	%al, 3(%rcx)
	movq	-8(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB1_11
.LBB1_13:                               # %while.end.32
	jmp	.LBB1_14
.LBB1_14:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	color_pixels_mask, .Lfunc_end1-color_pixels_mask
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_1
	.quad	.LBB1_2
	.quad	.LBB1_6
	.quad	.LBB1_10

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4643176031446892544     # double 255
	.text
	.globl	pattern_pixels_mask
	.align	16, 0x90
	.type	pattern_pixels_mask,@function
pattern_pixels_mask:                    # @pattern_pixels_mask
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
	subq	$112, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	-32(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB2_2
# BB#1:                                 # %cond.true
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movl	-32(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB2_3:                                # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-40(%rbp), %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	8(%rdi)
	movq	-24(%rbp), %rdi
	imull	4(%rdi), %edx
	movq	-24(%rbp), %rdi
	imull	(%rdi), %edx
	movslq	%edx, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB2_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB2_18
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-104(%rbp), %rsi        # 8-byte Reload
	divl	4(%rsi)
	movq	-24(%rbp), %rdi
	imull	(%rdi), %edx
	movl	%edx, %ecx
	movl	%ecx, %edi
	movq	-96(%rbp), %r8          # 8-byte Reload
	addq	%rdi, %r8
	movq	%r8, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB2_6:                                # %for.cond.9
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB2_9
# BB#7:                                 # %for.body.11
                                        #   in Loop: Header=BB2_6 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB2_6 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB2_6
.LBB2_9:                                # %for.end
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-32(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB2_16
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB2_12
# BB#11:                                # %if.then.18
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movl	-44(%rbp), %esi
	movl	%esi, %eax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	jmp	.LBB2_13
.LBB2_12:                               # %if.else
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
.LBB2_13:                               # %if.end
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	xorl	$-1, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB2_15
# BB#14:                                # %if.then.27
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
.LBB2_15:                               # %if.end.38
                                        #   in Loop: Header=BB2_4 Depth=1
	jmp	.LBB2_16
.LBB2_16:                               # %if.end.39
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
# BB#17:                                # %for.inc.42
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_4
.LBB2_18:                               # %for.end.44
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pattern_pixels_mask, .Lfunc_end2-pattern_pixels_mask
	.cfi_endproc

	.globl	blend_pixels
	.align	16, 0x90
	.type	blend_pixels,@function
blend_pixels:                           # @blend_pixels
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
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	%al, -25(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-36(%rbp), %ecx
	xorl	$-1, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB3_16
# BB#1:                                 # %if.then
	movl	$255, %eax
	movzbl	-25(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movzbl	-25(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB3_2:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
                                        #     Child Loop BB3_10 Depth 2
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, %eax
	je	.LBB3_15
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	-40(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB3_9
# BB#4:                                 # %if.then.11
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$0, -64(%rbp)
.LBB3_5:                                # %for.cond
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	.LBB3_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB3_5
.LBB3_8:                                # %for.end
                                        #   in Loop: Header=BB3_2 Depth=1
	jmp	.LBB3_14
.LBB3_9:                                # %if.else
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$0, -64(%rbp)
.LBB3_10:                               # %for.cond.15
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB3_13
# BB#11:                                # %for.body.18
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-64(%rbp), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	-52(%rbp), %esi
	movl	-64(%rbp), %edi
	movl	%edi, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	imull	-56(%rbp), %edi
	addl	%edi, %esi
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %r8d
	imull	%r8d, %edi
	subl	%edi, %esi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	-60(%rbp)
	movl	-76(%rbp), %esi         # 4-byte Reload
	addl	%eax, %esi
	movb	%sil, %r9b
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %r10
	movb	%r9b, (%r10,%rcx)
# BB#12:                                # %for.inc.40
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB3_10
.LBB3_13:                               # %for.end.42
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	-60(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB3_14:                               # %if.end
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB3_2
.LBB3_15:                               # %while.end
	jmp	.LBB3_24
.LBB3_16:                               # %if.else.50
	movl	$255, %eax
	movzbl	-25(%rbp), %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -65(%rbp)
.LBB3_17:                               # %while.cond.55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_19 Depth 2
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, %eax
	je	.LBB3_23
# BB#18:                                # %while.body.58
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	$0, -72(%rbp)
.LBB3_19:                               # %for.cond.60
                                        #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	.LBB3_22
# BB#20:                                # %for.body.63
                                        #   in Loop: Header=BB3_19 Depth=2
	movl	$255, %eax
	movl	-72(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-72(%rbp), %edi
	movl	%edi, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	movzbl	-65(%rbp), %r8d
	imull	%r8d, %edi
	movl	-72(%rbp), %r8d
	movl	%r8d, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %r8d
	movzbl	-25(%rbp), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edi
	movl	-72(%rbp), %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %r8d
	imull	$255, %r8d, %r8d
	subl	%r8d, %edi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-80(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	addl	%eax, %ecx
	movb	%cl, %r10b
	movl	-72(%rbp), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %r11
	movb	%r10b, (%r11,%rsi)
# BB#21:                                # %for.inc.88
                                        #   in Loop: Header=BB3_19 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB3_19
.LBB3_22:                               # %for.end.90
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB3_17
.LBB3_23:                               # %while.end.97
	jmp	.LBB3_24
.LBB3_24:                               # %if.end.98
	popq	%rbp
	retq
.Lfunc_end3:
	.size	blend_pixels, .Lfunc_end3-blend_pixels
	.cfi_endproc

	.globl	shade_pixels
	.align	16, 0x90
	.type	shade_pixels,@function
shade_pixels:                           # @shade_pixels
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
	movb	%cl, %al
	movl	16(%rbp), %ecx
	movl	$255, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	%al, -25(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movzbl	-25(%rbp), %ecx
	subl	%ecx, %r10d
	movb	%r10b, %al
	movb	%al, -41(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_2
# BB#1:                                 # %cond.true
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movl	-36(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB4_3:                                # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
.LBB4_4:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, %eax
	je	.LBB4_12
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$0, -52(%rbp)
.LBB4_6:                                # %for.cond
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB4_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=2
	movl	$255, %eax
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movzbl	-41(%rbp), %edi
	imull	%edi, %ecx
	movl	-52(%rbp), %edi
	movl	%edi, %edx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	movzbl	-25(%rbp), %r8d
	imull	%r8d, %edi
	addl	%edi, %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movb	%al, %r9b
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %r10
	movb	%r9b, (%r10,%rsi)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB4_6
.LBB4_9:                                # %for.end
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB4_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB4_11:                               # %if.end
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB4_4
.LBB4_12:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end4:
	.size	shade_pixels, .Lfunc_end4-shade_pixels
	.cfi_endproc

	.globl	extract_alpha_pixels
	.align	16, 0x90
	.type	extract_alpha_pixels,@function
extract_alpha_pixels:                   # @extract_alpha_pixels
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB5_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB5_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	sarl	$8, %eax
	addl	-52(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %dil
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%dil, (%rcx)
	movq	-48(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB5_2
.LBB5_4:                                # %while.end
	jmp	.LBB5_9
.LBB5_5:                                # %if.else
	jmp	.LBB5_6
.LBB5_6:                                # %while.cond.7
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB5_8
# BB#7:                                 # %while.body.10
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$255, %eax, %eax
	addl	$128, %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	sarl	$8, %eax
	addl	-56(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %sil
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%sil, (%rcx)
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB5_6
.LBB5_8:                                # %while.end.25
	jmp	.LBB5_9
.LBB5_9:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end5:
	.size	extract_alpha_pixels, .Lfunc_end5-extract_alpha_pixels
	.cfi_endproc

	.globl	swap_pixels
	.align	16, 0x90
	.type	swap_pixels,@function
swap_pixels:                            # @swap_pixels
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB6_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -21(%rbp)
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movb	-21(%rbp), %cl
	movq	-8(%rbp), %rax
	movb	%cl, (%rax)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB6_1
.LBB6_3:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end6:
	.size	swap_pixels, .Lfunc_end6-swap_pixels
	.cfi_endproc

	.globl	scale_pixels
	.align	16, 0x90
	.type	scale_pixels,@function
scale_pixels:                           # @scale_pixels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB7_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	-24(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	sarl	$8, %ecx
	addl	-28(%rbp), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_1
.LBB7_3:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end7:
	.size	scale_pixels, .Lfunc_end7-scale_pixels
	.cfi_endproc

	.globl	add_alpha_pixels
	.align	16, 0x90
	.type	add_alpha_pixels,@function
add_alpha_pixels:                       # @add_alpha_pixels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB8_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -32(%rbp)
.LBB8_3:                                # %for.cond
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB8_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_3
.LBB8_6:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB8_1
.LBB8_7:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end8:
	.size	add_alpha_pixels, .Lfunc_end8-add_alpha_pixels
	.cfi_endproc

	.globl	flatten_pixels
	.align	16, 0x90
	.type	flatten_pixels,@function
flatten_pixels:                         # @flatten_pixels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB9_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, -40(%rbp)
.LBB9_3:                                # %for.cond
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	.LBB9_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	$255, %eax
	movl	-40(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-36(%rbp), %edi
	movl	%edi, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	%edi, %ecx
	addl	$128, %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	sarl	$8, %ecx
	addl	-44(%rbp), %ecx
	sarl	$8, %ecx
	movl	-40(%rbp), %edi
	movl	%edi, %edx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	movl	-36(%rbp), %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %r8d
	subl	%r8d, %eax
	imull	%eax, %edi
	addl	$128, %edi
	movl	%edi, -48(%rbp)
	movl	-48(%rbp), %eax
	sarl	$8, %eax
	addl	-48(%rbp), %eax
	sarl	$8, %eax
	addl	%eax, %ecx
	movb	%cl, %r9b
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	movb	%r9b, (%rsi,%rdx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB9_1
.LBB9_7:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end9:
	.size	flatten_pixels, .Lfunc_end9-flatten_pixels
	.cfi_endproc

	.globl	gray_to_rgb_pixels
	.align	16, 0x90
	.type	gray_to_rgb_pixels,@function
gray_to_rgb_pixels:                     # @gray_to_rgb_pixels
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
	movl	$3, %eax
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$1, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	cmpl	$2, -24(%rbp)
	cmovel	%r10d, %r9d
	movl	%r9d, -28(%rbp)
	cmpl	$0, -28(%rbp)
	cmovnel	%r8d, %eax
	movl	%eax, -32(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB10_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$0, -36(%rbp)
.LBB10_3:                               # %for.cond
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB10_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_3
.LBB10_6:                               # %for.end
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB10_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movb	1(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB10_8:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB10_1
.LBB10_9:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gray_to_rgb_pixels, .Lfunc_end10-gray_to_rgb_pixels
	.cfi_endproc

	.globl	apply_mask_to_alpha_channel
	.align	16, 0x90
	.type	apply_mask_to_alpha_channel,@function
apply_mask_to_alpha_channel:            # @apply_mask_to_alpha_channel
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rsi
	movq	%rsi, -8(%rbp)
	cmpl	$255, -20(%rbp)
	jne	.LBB11_5
# BB#1:                                 # %if.then
	jmp	.LBB11_2
.LBB11_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB11_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movslq	%ecx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	sarq	$8, %rax
	addq	-40(%rbp), %rax
	sarq	$8, %rax
	movb	%al, %sil
	movq	-8(%rbp), %rax
	movb	%sil, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_2
.LBB11_4:                               # %while.end
	jmp	.LBB11_9
.LBB11_5:                               # %if.else
	jmp	.LBB11_6
.LBB11_6:                               # %while.cond.8
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB11_8
# BB#7:                                 # %while.body.11
                                        #   in Loop: Header=BB11_6 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	imull	-20(%rbp), %ecx
	addl	$32603, %ecx            # imm = 0x7F5B
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	sarq	$7, %rax
	addq	-48(%rbp), %rax
	sarq	$16, %rax
	movb	%al, %sil
	movq	-8(%rbp), %rax
	movb	%sil, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_6
.LBB11_8:                               # %while.end.27
	jmp	.LBB11_9
.LBB11_9:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end11:
	.size	apply_mask_to_alpha_channel, .Lfunc_end11-apply_mask_to_alpha_channel
	.cfi_endproc

	.globl	combine_mask_and_alpha_channel_stipple
	.align	16, 0x90
	.type	combine_mask_and_alpha_channel_stipple,@function
combine_mask_and_alpha_channel_stipple: # @combine_mask_and_alpha_channel_stipple
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rsi
	movq	%rsi, -8(%rbp)
	cmpl	$255, -20(%rbp)
	je	.LBB12_5
# BB#1:                                 # %if.then
	jmp	.LBB12_2
.LBB12_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB12_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	$255, %eax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	-20(%rbp), %edx
	addl	$128, %edx
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %edx
	sarl	$8, %edx
	addl	-32(%rbp), %edx
	sarl	$8, %edx
	movl	%edx, -36(%rbp)
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %edx
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	imull	-36(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	sarl	$8, %eax
	addl	-32(%rbp), %eax
	sarl	$8, %eax
	addl	%eax, %edx
	movb	%dl, %dil
	movq	-8(%rbp), %rcx
	movb	%dil, (%rcx)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %r8d
	addq	%r8, %rcx
	movq	%rcx, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB12_2
.LBB12_4:                               # %while.end
	jmp	.LBB12_9
.LBB12_5:                               # %if.else
	jmp	.LBB12_6
.LBB12_6:                               # %while.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB12_8
# BB#7:                                 # %while.body.19
                                        #   in Loop: Header=BB12_6 Depth=1
	movl	$255, %eax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %edx
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	sarl	$8, %eax
	addl	-40(%rbp), %eax
	sarl	$8, %eax
	addl	%eax, %edx
	movb	%dl, %dil
	movq	-8(%rbp), %rcx
	movb	%dil, (%rcx)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %r8d
	addq	%r8, %rcx
	movq	%rcx, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB12_6
.LBB12_8:                               # %while.end.36
	jmp	.LBB12_9
.LBB12_9:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end12:
	.size	combine_mask_and_alpha_channel_stipple, .Lfunc_end12-combine_mask_and_alpha_channel_stipple
	.cfi_endproc

	.globl	combine_mask_and_alpha_channel_stroke
	.align	16, 0x90
	.type	combine_mask_and_alpha_channel_stroke,@function
combine_mask_and_alpha_channel_stroke:  # @combine_mask_and_alpha_channel_stroke
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rsi
	movq	%rsi, -8(%rbp)
	cmpl	$255, -20(%rbp)
	je	.LBB13_7
# BB#1:                                 # %if.then
	jmp	.LBB13_2
.LBB13_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB13_6
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jbe	.LBB13_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	-20(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	sarl	$8, %ecx
	addl	-32(%rbp), %ecx
	sarl	$8, %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	imull	-36(%rbp), %edx
	addl	$128, %edx
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %edx
	sarl	$8, %edx
	addl	-32(%rbp), %edx
	sarl	$8, %edx
	addl	%edx, %ecx
	movb	%cl, %dil
	movq	-8(%rbp), %rax
	movb	%dil, (%rax)
.LBB13_5:                               # %if.end
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB13_2
.LBB13_6:                               # %while.end
	jmp	.LBB13_11
.LBB13_7:                               # %if.else
	jmp	.LBB13_8
.LBB13_8:                               # %while.cond.20
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB13_10
# BB#9:                                 # %while.body.23
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	$255, %eax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %edx
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	sarl	$8, %eax
	addl	-40(%rbp), %eax
	sarl	$8, %eax
	addl	%eax, %edx
	movb	%dl, %dil
	movq	-8(%rbp), %rcx
	movb	%dil, (%rcx)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %r8d
	addq	%r8, %rcx
	movq	%rcx, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB13_8
.LBB13_10:                              # %while.end.40
	jmp	.LBB13_11
.LBB13_11:                              # %if.end.41
	popq	%rbp
	retq
.Lfunc_end13:
	.size	combine_mask_and_alpha_channel_stroke, .Lfunc_end13-combine_mask_and_alpha_channel_stroke
	.cfi_endproc

	.globl	copy_gray_to_inten_a_pixels
	.align	16, 0x90
	.type	copy_gray_to_inten_a_pixels,@function
copy_gray_to_inten_a_pixels:            # @copy_gray_to_inten_a_pixels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -28(%rbp)
.LBB14_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB14_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$0, -32(%rbp)
.LBB14_3:                               # %for.cond
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB14_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB14_3 Depth=2
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movl	-32(%rbp), %edx
	movl	%edx, %eax
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB14_3
.LBB14_6:                               # %for.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB14_1
.LBB14_7:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end14:
	.size	copy_gray_to_inten_a_pixels, .Lfunc_end14-copy_gray_to_inten_a_pixels
	.cfi_endproc

	.globl	initial_channel_pixels
	.align	16, 0x90
	.type	initial_channel_pixels,@function
initial_channel_pixels:                 # @initial_channel_pixels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -28(%rbp)
.LBB15_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB15_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$0, -32(%rbp)
.LBB15_3:                               # %for.cond
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB15_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=2
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movl	-32(%rbp), %edx
	movl	%edx, %eax
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB15_3
.LBB15_6:                               # %for.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB15_1
.LBB15_7:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end15:
	.size	initial_channel_pixels, .Lfunc_end15-initial_channel_pixels
	.cfi_endproc

	.globl	initial_indexed_pixels
	.align	16, 0x90
	.type	initial_indexed_pixels,@function
initial_indexed_pixels:                 # @initial_indexed_pixels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
.LBB16_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB16_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rax), %edx
	imull	$3, %edx, %edx
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -32(%rbp)
	movslq	%edx, %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dil
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%dil, (%rax)
	movl	-32(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -32(%rbp)
	movslq	%edx, %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dil
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%dil, (%rax)
	movl	-32(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -32(%rbp)
	movslq	%edx, %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dil
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%dil, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$-1, (%rax)
	jmp	.LBB16_1
.LBB16_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end16:
	.size	initial_indexed_pixels, .Lfunc_end16-initial_indexed_pixels
	.cfi_endproc

	.globl	initial_indexed_a_pixels
	.align	16, 0x90
	.type	initial_indexed_a_pixels,@function
initial_indexed_a_pixels:               # @initial_indexed_a_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB17_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB17_3
.LBB17_2:                               # %cond.false
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB17_3:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
.LBB17_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, %eax
	je	.LBB17_8
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB17_4 Depth=1
	xorl	%eax, %eax
	movl	$255, %ecx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movzbl	(%rdx), %edi
	imull	$3, %edi, %edi
	movl	%edi, -60(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %edi
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %r8d
	imull	%r8d, %edi
	imull	-44(%rbp), %edi
	addl	$32603, %edi            # imm = 0x7F5B
	movl	%edi, %edi
	movl	%edi, %edx
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rdx
	sarq	$7, %rdx
	addq	-72(%rbp), %rdx
	sarq	$16, %rdx
	movb	%dl, %r9b
	movb	%r9b, -73(%rbp)
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movl	-60(%rbp), %edi
	movl	%edi, %r8d
	addl	$1, %r8d
	movl	%r8d, -60(%rbp)
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movb	(%rsi,%rdx), %r9b
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%r9b, (%rdx)
	movl	-60(%rbp), %edi
	movl	%edi, %r8d
	addl	$1, %r8d
	movl	%r8d, -60(%rbp)
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movb	(%rsi,%rdx), %r9b
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%r9b, (%rdx)
	movl	-60(%rbp), %edi
	movl	%edi, %r8d
	addl	$1, %r8d
	movl	%r8d, -60(%rbp)
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movb	(%rsi,%rdx), %r9b
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%r9b, (%rdx)
	movzbl	-73(%rbp), %edi
	cmpl	$127, %edi
	cmovgl	%ecx, %eax
	movb	%al, %r9b
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%r9b, (%rdx)
	cmpq	$0, -24(%rbp)
	je	.LBB17_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB17_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB17_7:                               # %if.end
                                        #   in Loop: Header=BB17_4 Depth=1
	jmp	.LBB17_4
.LBB17_8:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end17:
	.size	initial_indexed_a_pixels, .Lfunc_end17-initial_indexed_a_pixels
	.cfi_endproc

	.globl	initial_inten_pixels
	.align	16, 0x90
	.type	initial_inten_pixels,@function
initial_inten_pixels:                   # @initial_inten_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB18_42
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	cmpl	$3, -56(%rbp)
	jne	.LBB18_17
# BB#2:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB18_17
# BB#3:                                 # %land.lhs.true.2
	movq	-48(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB18_17
# BB#4:                                 # %land.lhs.true.5
	movq	-48(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB18_17
# BB#5:                                 # %if.then.8
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jne	.LBB18_7
# BB#6:                                 # %if.then.11
	movl	$0, -36(%rbp)
.LBB18_7:                               # %if.end
	movq	-16(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB18_12
# BB#8:                                 # %if.then.13
	jmp	.LBB18_9
.LBB18_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB18_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB18_9 Depth=1
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-8(%rbp), %rax
	movb	1(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-8(%rbp), %rax
	movb	2(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 2(%rax)
	movl	-36(%rbp), %edx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	$128, %edx
	movl	%edx, -100(%rbp)
	movl	-100(%rbp), %edx
	sarl	$8, %edx
	addl	-100(%rbp), %edx
	sarl	$8, %edx
	movb	%dl, %cl
	movq	-16(%rbp), %rax
	movb	%cl, 3(%rax)
	movl	-56(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %edi
	addq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movl	-68(%rbp), %edx
	movq	-16(%rbp), %rax
	movslq	%edx, %rdi
	addq	%rdi, %rax
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB18_9
.LBB18_11:                              # %while.end
	jmp	.LBB18_16
.LBB18_12:                              # %if.else
	jmp	.LBB18_13
.LBB18_13:                              # %while.cond.30
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB18_15
# BB#14:                                # %while.body.33
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-8(%rbp), %rax
	movb	1(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-8(%rbp), %rax
	movb	2(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 2(%rax)
	movl	-36(%rbp), %edx
	movb	%dl, %cl
	movq	-16(%rbp), %rax
	movb	%cl, 3(%rax)
	movl	-56(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %esi
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
	movl	-68(%rbp), %edx
	movq	-16(%rbp), %rax
	movslq	%edx, %rsi
	addq	%rsi, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB18_13
.LBB18_15:                              # %while.end.46
	jmp	.LBB18_16
.LBB18_16:                              # %if.end.47
	jmp	.LBB18_71
.LBB18_17:                              # %if.end.48
	movl	$0, -84(%rbp)
.LBB18_18:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_21 Depth 2
                                        #     Child Loop BB18_25 Depth 2
	movl	-84(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB18_30
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB18_18 Depth=1
	movq	-16(%rbp), %rax
	movslq	-84(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movslq	-84(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, -88(%rbp)
	movslq	-84(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB18_24
# BB#20:                                # %if.then.58
                                        #   in Loop: Header=BB18_18 Depth=1
	jmp	.LBB18_21
.LBB18_21:                              # %while.cond.59
                                        #   Parent Loop BB18_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$0, %eax
	je	.LBB18_23
# BB#22:                                # %while.body.62
                                        #   in Loop: Header=BB18_21 Depth=2
	movq	-64(%rbp), %rax
	movb	(%rax), %cl
	movq	-80(%rbp), %rax
	movb	%cl, (%rax)
	movl	-56(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %esi
	addq	%rsi, %rax
	movq	%rax, -64(%rbp)
	movl	-68(%rbp), %edx
	movq	-80(%rbp), %rax
	movslq	%edx, %rsi
	addq	%rsi, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB18_21
.LBB18_23:                              # %while.end.67
                                        #   in Loop: Header=BB18_18 Depth=1
	jmp	.LBB18_28
.LBB18_24:                              # %if.else.68
                                        #   in Loop: Header=BB18_18 Depth=1
	jmp	.LBB18_25
.LBB18_25:                              # %while.cond.69
                                        #   Parent Loop BB18_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$0, %eax
	je	.LBB18_27
# BB#26:                                # %while.body.72
                                        #   in Loop: Header=BB18_25 Depth=2
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	movl	-68(%rbp), %ecx
	movq	-80(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB18_25
.LBB18_27:                              # %while.end.75
                                        #   in Loop: Header=BB18_18 Depth=1
	jmp	.LBB18_28
.LBB18_28:                              # %if.end.76
                                        #   in Loop: Header=BB18_18 Depth=1
	jmp	.LBB18_29
.LBB18_29:                              # %for.inc
                                        #   in Loop: Header=BB18_18 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB18_18
.LBB18_30:                              # %for.end
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jne	.LBB18_32
# BB#31:                                # %if.then.80
	movl	$0, -36(%rbp)
.LBB18_32:                              # %if.end.81
	movq	-16(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB18_37
# BB#33:                                # %if.then.86
	jmp	.LBB18_34
.LBB18_34:                              # %while.cond.87
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB18_36
# BB#35:                                # %while.body.90
                                        #   in Loop: Header=BB18_34 Depth=1
	movl	-36(%rbp), %eax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	addl	$128, %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	sarl	$8, %eax
	addl	-104(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %sil
	movq	-80(%rbp), %rcx
	movb	%sil, (%rcx)
	movl	-68(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -80(%rbp)
	movq	-96(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	jmp	.LBB18_34
.LBB18_36:                              # %while.end.103
	jmp	.LBB18_41
.LBB18_37:                              # %if.else.104
	jmp	.LBB18_38
.LBB18_38:                              # %while.cond.105
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB18_40
# BB#39:                                # %while.body.108
                                        #   in Loop: Header=BB18_38 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-68(%rbp), %eax
	movq	-80(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -80(%rbp)
	jmp	.LBB18_38
.LBB18_40:                              # %while.end.112
	jmp	.LBB18_41
.LBB18_41:                              # %if.end.113
	jmp	.LBB18_71
.LBB18_42:                              # %if.else.114
	cmpl	$3, -56(%rbp)
	jne	.LBB18_52
# BB#43:                                # %land.lhs.true.117
	movq	-48(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB18_52
# BB#44:                                # %land.lhs.true.120
	movq	-48(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB18_52
# BB#45:                                # %land.lhs.true.123
	movq	-48(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB18_52
# BB#46:                                # %if.then.126
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jne	.LBB18_48
# BB#47:                                # %if.then.130
	movl	$0, -36(%rbp)
.LBB18_48:                              # %if.end.131
	movq	-16(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
.LBB18_49:                              # %while.cond.134
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB18_51
# BB#50:                                # %while.body.137
                                        #   in Loop: Header=BB18_49 Depth=1
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-8(%rbp), %rax
	movb	1(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-8(%rbp), %rax
	movb	2(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 2(%rax)
	movl	-36(%rbp), %edx
	movb	%dl, %cl
	movq	-16(%rbp), %rax
	movb	%cl, 3(%rax)
	movl	-56(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %esi
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
	movl	-68(%rbp), %edx
	movq	-16(%rbp), %rax
	movslq	%edx, %rsi
	addq	%rsi, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB18_49
.LBB18_51:                              # %while.end.150
	jmp	.LBB18_71
.LBB18_52:                              # %if.end.151
	movl	$0, -84(%rbp)
.LBB18_53:                              # %for.cond.152
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_56 Depth 2
                                        #     Child Loop BB18_60 Depth 2
	movl	-84(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB18_65
# BB#54:                                # %for.body.155
                                        #   in Loop: Header=BB18_53 Depth=1
	movq	-16(%rbp), %rax
	movslq	-84(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movslq	-84(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, -88(%rbp)
	movslq	-84(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB18_59
# BB#55:                                # %if.then.163
                                        #   in Loop: Header=BB18_53 Depth=1
	jmp	.LBB18_56
.LBB18_56:                              # %while.cond.164
                                        #   Parent Loop BB18_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$0, %eax
	je	.LBB18_58
# BB#57:                                # %while.body.167
                                        #   in Loop: Header=BB18_56 Depth=2
	movq	-64(%rbp), %rax
	movb	(%rax), %cl
	movq	-80(%rbp), %rax
	movb	%cl, (%rax)
	movl	-56(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %esi
	addq	%rsi, %rax
	movq	%rax, -64(%rbp)
	movl	-68(%rbp), %edx
	movq	-80(%rbp), %rax
	movslq	%edx, %rsi
	addq	%rsi, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB18_56
.LBB18_58:                              # %while.end.172
                                        #   in Loop: Header=BB18_53 Depth=1
	jmp	.LBB18_63
.LBB18_59:                              # %if.else.173
                                        #   in Loop: Header=BB18_53 Depth=1
	jmp	.LBB18_60
.LBB18_60:                              # %while.cond.174
                                        #   Parent Loop BB18_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$0, %eax
	je	.LBB18_62
# BB#61:                                # %while.body.177
                                        #   in Loop: Header=BB18_60 Depth=2
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	movl	-68(%rbp), %ecx
	movq	-80(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB18_60
.LBB18_62:                              # %while.end.180
                                        #   in Loop: Header=BB18_53 Depth=1
	jmp	.LBB18_63
.LBB18_63:                              # %if.end.181
                                        #   in Loop: Header=BB18_53 Depth=1
	jmp	.LBB18_64
.LBB18_64:                              # %for.inc.182
                                        #   in Loop: Header=BB18_53 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB18_53
.LBB18_65:                              # %for.end.184
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jne	.LBB18_67
# BB#66:                                # %if.then.188
	movl	$0, -36(%rbp)
.LBB18_67:                              # %if.end.189
	movq	-16(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
.LBB18_68:                              # %while.cond.192
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB18_70
# BB#69:                                # %while.body.195
                                        #   in Loop: Header=BB18_68 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-68(%rbp), %eax
	movq	-80(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -80(%rbp)
	jmp	.LBB18_68
.LBB18_70:                              # %while.end.199
	jmp	.LBB18_71
.LBB18_71:                              # %if.end.200
	popq	%rbp
	retq
.Lfunc_end18:
	.size	initial_inten_pixels, .Lfunc_end18-initial_inten_pixels
	.cfi_endproc

	.globl	initial_inten_a_pixels
	.align	16, 0x90
	.type	initial_inten_a_pixels,@function
initial_inten_a_pixels:                 # @initial_inten_a_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB19_12
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB19_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_4 Depth 2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB19_11
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	$0, -68(%rbp)
.LBB19_4:                               # %for.cond
                                        #   Parent Loop BB19_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB19_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB19_4 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-68(%rbp), %esi
	movl	%esi, %ecx
	movq	-40(%rbp), %rdx
	imull	(%rdx,%rcx,4), %eax
	movb	%al, %dil
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB19_4 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB19_4
.LBB19_7:                               # %for.end
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB19_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	-28(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %ecx
	imull	%ecx, %eax
	addl	$32603, %eax            # imm = 0x7F5B
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdx
	sarq	$7, %rdx
	addq	-80(%rbp), %rdx
	sarq	$16, %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB19_10
.LBB19_9:                               # %cond.false
                                        #   in Loop: Header=BB19_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB19_10
.LBB19_10:                              # %cond.end
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movl	-52(%rbp), %edx
	movl	%edx, %eax
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	-48(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %esi
	addq	%rsi, %rax
	movq	%rax, -16(%rbp)
	movl	-48(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %esi
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_2
.LBB19_11:                              # %while.end
	jmp	.LBB19_23
.LBB19_12:                              # %if.else
	jmp	.LBB19_13
.LBB19_13:                              # %while.cond.24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_15 Depth 2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB19_22
# BB#14:                                # %while.body.27
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	$0, -84(%rbp)
.LBB19_15:                              # %for.cond.32
                                        #   Parent Loop BB19_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB19_18
# BB#16:                                # %for.body.35
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-84(%rbp), %esi
	movl	%esi, %ecx
	movq	-40(%rbp), %rdx
	imull	(%rdx,%rcx,4), %eax
	movb	%al, %dil
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#17:                                # %for.inc.45
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB19_15
.LBB19_18:                              # %for.end.47
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB19_20
# BB#19:                                # %cond.true.51
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	-28(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rdx
	sarq	$8, %rdx
	addq	-96(%rbp), %rdx
	sarq	$8, %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB19_21
.LBB19_20:                              # %cond.false.61
                                        #   in Loop: Header=BB19_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB19_21
.LBB19_21:                              # %cond.end.62
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movl	-52(%rbp), %edx
	movl	%edx, %eax
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
	movl	-48(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %esi
	addq	%rsi, %rax
	movq	%rax, -16(%rbp)
	movl	-48(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %esi
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_13
.LBB19_22:                              # %while.end.71
	jmp	.LBB19_23
.LBB19_23:                              # %if.end
	popq	%rbp
	retq
.Lfunc_end19:
	.size	initial_inten_a_pixels, .Lfunc_end19-initial_inten_a_pixels
	.cfi_endproc

	.globl	copy_component_pixels
	.align	16, 0x90
	.type	copy_component_pixels,@function
copy_component_pixels:                  # @copy_component_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rsi
	movq	%rsi, -8(%rbp)
.LBB20_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB20_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %esi
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB20_1
.LBB20_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end20:
	.size	copy_component_pixels, .Lfunc_end20-copy_component_pixels
	.cfi_endproc

	.globl	copy_color_pixels
	.align	16, 0x90
	.type	copy_color_pixels,@function
copy_color_pixels:                      # @copy_color_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -28(%rbp)
.LBB21_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB21_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$0, -32(%rbp)
.LBB21_3:                               # %for.cond
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB21_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB21_3
.LBB21_6:                               # %for.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB21_1
.LBB21_7:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end21:
	.size	copy_color_pixels, .Lfunc_end21-copy_color_pixels
	.cfi_endproc

	.globl	paint_funcs_setup
	.align	16, 0x90
	.type	paint_funcs_setup,@function
paint_funcs_setup:                      # @paint_funcs_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	paint_funcs_setup, .Lfunc_end22-paint_funcs_setup
	.cfi_endproc

	.globl	paint_funcs_free
	.align	16, 0x90
	.type	paint_funcs_free,@function
paint_funcs_free:                       # @paint_funcs_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	paint_funcs_free, .Lfunc_end23-paint_funcs_free
	.cfi_endproc

	.globl	combine_indexed_and_indexed_pixels
	.align	16, 0x90
	.type	combine_indexed_and_indexed_pixels,@function
combine_indexed_and_indexed_pixels:     # @combine_indexed_and_indexed_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB24_13
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB24_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_4 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB24_12
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB24_2 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	-36(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	shrq	$8, %rax
	addq	-72(%rbp), %rax
	shrq	$8, %rax
	movb	%al, %dl
	movb	%dl, -73(%rbp)
	movl	$0, -80(%rbp)
.LBB24_4:                               # %for.cond
                                        #   Parent Loop BB24_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB24_11
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB24_4 Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB24_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB24_4 Depth=2
	movzbl	-73(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB24_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB24_4 Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB24_9
.LBB24_8:                               # %cond.false
                                        #   in Loop: Header=BB24_4 Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB24_9:                               # %cond.end
                                        #   in Loop: Header=BB24_4 Depth=2
	movl	-88(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-80(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB24_4 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB24_4
.LBB24_11:                              # %for.end
                                        #   in Loop: Header=BB24_2 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-56(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-56(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB24_2
.LBB24_12:                              # %while.end
	jmp	.LBB24_25
.LBB24_13:                              # %if.else
	jmp	.LBB24_14
.LBB24_14:                              # %while.cond.26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_16 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB24_24
# BB#15:                                # %while.body.29
                                        #   in Loop: Header=BB24_14 Depth=1
	movl	$0, -84(%rbp)
.LBB24_16:                              # %for.cond.32
                                        #   Parent Loop BB24_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB24_23
# BB#17:                                # %for.body.35
                                        #   in Loop: Header=BB24_16 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB24_20
# BB#18:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB24_16 Depth=2
	cmpl	$127, -36(%rbp)
	jbe	.LBB24_20
# BB#19:                                # %cond.true.42
                                        #   in Loop: Header=BB24_16 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB24_21
.LBB24_20:                              # %cond.false.46
                                        #   in Loop: Header=BB24_16 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB24_21:                              # %cond.end.50
                                        #   in Loop: Header=BB24_16 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#22:                                # %for.inc.55
                                        #   in Loop: Header=BB24_16 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB24_16
.LBB24_23:                              # %for.end.57
                                        #   in Loop: Header=BB24_14 Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB24_14
.LBB24_24:                              # %while.end.64
	jmp	.LBB24_25
.LBB24_25:                              # %if.end
	popq	%rbp
	retq
.Lfunc_end24:
	.size	combine_indexed_and_indexed_pixels, .Lfunc_end24-combine_indexed_and_indexed_pixels
	.cfi_endproc

	.globl	combine_indexed_and_indexed_a_pixels
	.align	16, 0x90
	.type	combine_indexed_and_indexed_a_pixels,@function
combine_indexed_and_indexed_a_pixels:   # @combine_indexed_and_indexed_a_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	$1, -60(%rbp)
	movl	$2, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB25_13
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB25_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_4 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB25_12
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	imull	-36(%rbp), %ecx
	addl	$32603, %ecx            # imm = 0x7F5B
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	shrq	$7, %rax
	addq	-80(%rbp), %rax
	shrq	$16, %rax
	movb	%al, %sil
	movb	%sil, -81(%rbp)
	movl	$0, -88(%rbp)
.LBB25_4:                               # %for.cond
                                        #   Parent Loop BB25_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB25_11
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB25_4 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB25_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB25_4 Depth=2
	movzbl	-81(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB25_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB25_4 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB25_9
.LBB25_8:                               # %cond.false
                                        #   in Loop: Header=BB25_4 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB25_9:                               # %cond.end
                                        #   in Loop: Header=BB25_4 Depth=2
	movl	-108(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-88(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB25_4 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB25_4
.LBB25_11:                              # %for.end
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movl	-56(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	movl	-56(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB25_2
.LBB25_12:                              # %while.end
	jmp	.LBB25_25
.LBB25_13:                              # %if.else
	jmp	.LBB25_14
.LBB25_14:                              # %while.cond.28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_16 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB25_24
# BB#15:                                # %while.body.31
                                        #   in Loop: Header=BB25_14 Depth=1
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	imull	-36(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	shrq	$8, %rax
	addq	-96(%rbp), %rax
	shrq	$8, %rax
	movb	%al, %dl
	movb	%dl, -97(%rbp)
	movl	$0, -104(%rbp)
.LBB25_16:                              # %for.cond.47
                                        #   Parent Loop BB25_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-104(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB25_23
# BB#17:                                # %for.body.50
                                        #   in Loop: Header=BB25_16 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB25_20
# BB#18:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB25_16 Depth=2
	movzbl	-97(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB25_20
# BB#19:                                # %cond.true.58
                                        #   in Loop: Header=BB25_16 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB25_21
.LBB25_20:                              # %cond.false.62
                                        #   in Loop: Header=BB25_16 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB25_21:                              # %cond.end.66
                                        #   in Loop: Header=BB25_16 Depth=2
	movl	-112(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#22:                                # %for.inc.71
                                        #   in Loop: Header=BB25_16 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB25_16
.LBB25_23:                              # %for.end.73
                                        #   in Loop: Header=BB25_14 Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB25_14
.LBB25_24:                              # %while.end.79
	jmp	.LBB25_25
.LBB25_25:                              # %if.end
	popq	%rbp
	retq
.Lfunc_end25:
	.size	combine_indexed_and_indexed_a_pixels, .Lfunc_end25-combine_indexed_and_indexed_a_pixels
	.cfi_endproc

	.globl	combine_indexed_a_and_indexed_a_pixels
	.align	16, 0x90
	.type	combine_indexed_a_and_indexed_a_pixels,@function
combine_indexed_a_and_indexed_a_pixels: # @combine_indexed_a_and_indexed_a_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	$1, -60(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB26_17
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB26_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_4 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB26_16
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB26_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	imull	-36(%rbp), %ecx
	addl	$32603, %ecx            # imm = 0x7F5B
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	shrq	$7, %rax
	addq	-80(%rbp), %rax
	shrq	$16, %rax
	movb	%al, %sil
	movb	%sil, -81(%rbp)
	movl	$0, -88(%rbp)
.LBB26_4:                               # %for.cond
                                        #   Parent Loop BB26_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, -88(%rbp)
	jae	.LBB26_11
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB26_4 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB26_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB26_4 Depth=2
	movzbl	-81(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB26_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB26_4 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB26_9
.LBB26_8:                               # %cond.false
                                        #   in Loop: Header=BB26_4 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB26_9:                               # %cond.end
                                        #   in Loop: Header=BB26_4 Depth=2
	movl	-108(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-88(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB26_4 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB26_4
.LBB26_11:                              # %for.end
                                        #   in Loop: Header=BB26_2 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB26_14
# BB#12:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB26_2 Depth=1
	movzbl	-81(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB26_14
# BB#13:                                # %cond.true.31
                                        #   in Loop: Header=BB26_2 Depth=1
	movl	$255, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB26_15
.LBB26_14:                              # %cond.false.32
                                        #   in Loop: Header=BB26_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB26_15:                              # %cond.end.35
                                        #   in Loop: Header=BB26_2 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	jmp	.LBB26_2
.LBB26_16:                              # %while.end
	jmp	.LBB26_33
.LBB26_17:                              # %if.else
	jmp	.LBB26_18
.LBB26_18:                              # %while.cond.43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_20 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB26_32
# BB#19:                                # %while.body.46
                                        #   in Loop: Header=BB26_18 Depth=1
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	imull	-36(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	shrq	$8, %rax
	addq	-96(%rbp), %rax
	shrq	$8, %rax
	movb	%al, %dl
	movb	%dl, -97(%rbp)
	movl	$0, -104(%rbp)
.LBB26_20:                              # %for.cond.62
                                        #   Parent Loop BB26_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, -104(%rbp)
	jae	.LBB26_27
# BB#21:                                # %for.body.65
                                        #   in Loop: Header=BB26_20 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB26_24
# BB#22:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB26_20 Depth=2
	movzbl	-97(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB26_24
# BB#23:                                # %cond.true.73
                                        #   in Loop: Header=BB26_20 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB26_25
.LBB26_24:                              # %cond.false.77
                                        #   in Loop: Header=BB26_20 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB26_25:                              # %cond.end.81
                                        #   in Loop: Header=BB26_20 Depth=2
	movl	-116(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#26:                                # %for.inc.86
                                        #   in Loop: Header=BB26_20 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB26_20
.LBB26_27:                              # %for.end.88
                                        #   in Loop: Header=BB26_18 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB26_30
# BB#28:                                # %land.lhs.true.91
                                        #   in Loop: Header=BB26_18 Depth=1
	movzbl	-97(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB26_30
# BB#29:                                # %cond.true.95
                                        #   in Loop: Header=BB26_18 Depth=1
	movl	$255, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB26_31
.LBB26_30:                              # %cond.false.96
                                        #   in Loop: Header=BB26_18 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB26_31:                              # %cond.end.99
                                        #   in Loop: Header=BB26_18 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	jmp	.LBB26_18
.LBB26_32:                              # %while.end.109
	jmp	.LBB26_33
.LBB26_33:                              # %if.end
	popq	%rbp
	retq
.Lfunc_end26:
	.size	combine_indexed_a_and_indexed_a_pixels, .Lfunc_end26-combine_indexed_a_and_indexed_a_pixels
	.cfi_endproc

	.globl	combine_inten_a_and_indexed_pixels
	.align	16, 0x90
	.type	combine_inten_a_and_indexed_pixels,@function
combine_inten_a_and_indexed_pixels:     # @combine_inten_a_and_indexed_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%r10d, -48(%rbp)
	movl	%eax, -52(%rbp)
	movl	$1, -56(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB27_15
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB27_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_4 Depth 2
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, %eax
	je	.LBB27_14
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB27_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -76(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$255, %ecx, %ecx
	imull	-44(%rbp), %ecx
	addl	$32603, %ecx            # imm = 0x7F5B
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	shrq	$7, %rax
	addq	-72(%rbp), %rax
	shrq	$16, %rax
	movb	%al, %dl
	movb	%dl, -77(%rbp)
	movl	$0, -84(%rbp)
.LBB27_4:                               # %for.cond
                                        #   Parent Loop BB27_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB27_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB27_4 Depth=2
	movzbl	-77(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB27_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB27_4 Depth=2
	movl	-76(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB27_8
.LBB27_7:                               # %cond.false
                                        #   in Loop: Header=BB27_4 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB27_8:                               # %cond.end
                                        #   in Loop: Header=BB27_4 Depth=2
	movl	-112(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB27_4 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB27_4
.LBB27_10:                              # %for.end
                                        #   in Loop: Header=BB27_2 Depth=1
	movzbl	-77(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB27_12
# BB#11:                                # %cond.true.28
                                        #   in Loop: Header=BB27_2 Depth=1
	movl	$255, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB27_13
.LBB27_12:                              # %cond.false.29
                                        #   in Loop: Header=BB27_2 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB27_13:                              # %cond.end.33
                                        #   in Loop: Header=BB27_2 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movq	-64(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	jmp	.LBB27_2
.LBB27_14:                              # %while.end
	jmp	.LBB27_29
.LBB27_15:                              # %if.else
	jmp	.LBB27_16
.LBB27_16:                              # %while.cond.41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_18 Depth 2
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, %eax
	je	.LBB27_28
# BB#17:                                # %while.body.44
                                        #   in Loop: Header=BB27_16 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -100(%rbp)
	imull	$255, -44(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	shrq	$8, %rax
	addq	-96(%rbp), %rax
	shrq	$8, %rax
	movb	%al, %dl
	movb	%dl, -101(%rbp)
	movl	$0, -108(%rbp)
.LBB27_18:                              # %for.cond.63
                                        #   Parent Loop BB27_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB27_24
# BB#19:                                # %for.body.67
                                        #   in Loop: Header=BB27_18 Depth=2
	movzbl	-101(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB27_21
# BB#20:                                # %cond.true.71
                                        #   in Loop: Header=BB27_18 Depth=2
	movl	-100(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB27_22
.LBB27_21:                              # %cond.false.76
                                        #   in Loop: Header=BB27_18 Depth=2
	movl	-108(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB27_22:                              # %cond.end.80
                                        #   in Loop: Header=BB27_18 Depth=2
	movl	-120(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-108(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#23:                                # %for.inc.85
                                        #   in Loop: Header=BB27_18 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB27_18
.LBB27_24:                              # %for.end.87
                                        #   in Loop: Header=BB27_16 Depth=1
	movzbl	-101(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB27_26
# BB#25:                                # %cond.true.91
                                        #   in Loop: Header=BB27_16 Depth=1
	movl	$255, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB27_27
.LBB27_26:                              # %cond.false.92
                                        #   in Loop: Header=BB27_16 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB27_27:                              # %cond.end.96
                                        #   in Loop: Header=BB27_16 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-108(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	jmp	.LBB27_16
.LBB27_28:                              # %while.end.106
	jmp	.LBB27_29
.LBB27_29:                              # %if.end
	popq	%rbp
	retq
.Lfunc_end27:
	.size	combine_inten_a_and_indexed_pixels, .Lfunc_end27-combine_inten_a_and_indexed_pixels
	.cfi_endproc

	.globl	combine_inten_a_and_indexed_a_pixels
	.align	16, 0x90
	.type	combine_inten_a_and_indexed_a_pixels,@function
combine_inten_a_and_indexed_a_pixels:   # @combine_inten_a_and_indexed_a_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	pushq	%rax
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%r10d, -48(%rbp)
	movl	%eax, -52(%rbp)
	movl	$1, -56(%rbp)
	movl	$2, -60(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB28_15
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB28_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_4 Depth 2
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, %eax
	je	.LBB28_14
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -84(%rbp)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	imull	-44(%rbp), %ecx
	addl	$32603, %ecx            # imm = 0x7F5B
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	shrq	$7, %rax
	addq	-80(%rbp), %rax
	shrq	$16, %rax
	movb	%al, %sil
	movb	%sil, -85(%rbp)
	movl	$0, -92(%rbp)
.LBB28_4:                               # %for.cond
                                        #   Parent Loop BB28_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB28_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB28_4 Depth=2
	movzbl	-85(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB28_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB28_4 Depth=2
	movl	-84(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB28_8
.LBB28_7:                               # %cond.false
                                        #   in Loop: Header=BB28_4 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB28_8:                               # %cond.end
                                        #   in Loop: Header=BB28_4 Depth=2
	movl	-120(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-92(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB28_4 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB28_4
.LBB28_10:                              # %for.end
                                        #   in Loop: Header=BB28_2 Depth=1
	movzbl	-85(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB28_12
# BB#11:                                # %cond.true.30
                                        #   in Loop: Header=BB28_2 Depth=1
	movl	$255, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB28_13
.LBB28_12:                              # %cond.false.31
                                        #   in Loop: Header=BB28_2 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB28_13:                              # %cond.end.35
                                        #   in Loop: Header=BB28_2 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-92(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -16(%rbp)
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	jmp	.LBB28_2
.LBB28_14:                              # %while.end
	jmp	.LBB28_29
.LBB28_15:                              # %if.else
	jmp	.LBB28_16
.LBB28_16:                              # %while.cond.43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_18 Depth 2
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, %eax
	je	.LBB28_28
# BB#17:                                # %while.body.46
                                        #   in Loop: Header=BB28_16 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -108(%rbp)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	imull	-44(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	shrq	$8, %rax
	addq	-104(%rbp), %rax
	shrq	$8, %rax
	movb	%al, %dl
	movb	%dl, -109(%rbp)
	movl	$0, -116(%rbp)
.LBB28_18:                              # %for.cond.67
                                        #   Parent Loop BB28_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-116(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB28_24
# BB#19:                                # %for.body.71
                                        #   in Loop: Header=BB28_18 Depth=2
	movzbl	-109(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB28_21
# BB#20:                                # %cond.true.75
                                        #   in Loop: Header=BB28_18 Depth=2
	movl	-108(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB28_22
.LBB28_21:                              # %cond.false.80
                                        #   in Loop: Header=BB28_18 Depth=2
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB28_22:                              # %cond.end.84
                                        #   in Loop: Header=BB28_18 Depth=2
	movl	-128(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-116(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#23:                                # %for.inc.89
                                        #   in Loop: Header=BB28_18 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB28_18
.LBB28_24:                              # %for.end.91
                                        #   in Loop: Header=BB28_16 Depth=1
	movzbl	-109(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB28_26
# BB#25:                                # %cond.true.95
                                        #   in Loop: Header=BB28_16 Depth=1
	movl	$255, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB28_27
.LBB28_26:                              # %cond.false.96
                                        #   in Loop: Header=BB28_16 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB28_27:                              # %cond.end.100
                                        #   in Loop: Header=BB28_16 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-116(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -16(%rbp)
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	jmp	.LBB28_16
.LBB28_28:                              # %while.end.110
	jmp	.LBB28_29
.LBB28_29:                              # %if.end
	addq	$8, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	combine_inten_a_and_indexed_a_pixels, .Lfunc_end28-combine_inten_a_and_indexed_a_pixels
	.cfi_endproc

	.globl	combine_inten_and_inten_pixels
	.align	16, 0x90
	.type	combine_inten_and_inten_pixels,@function
combine_inten_and_inten_pixels:         # @combine_inten_and_inten_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB29_12
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB29_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_4 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB29_11
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB29_2 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	-36(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	shrq	$8, %rax
	addq	-72(%rbp), %rax
	shrq	$8, %rax
	movb	%al, %dl
	movb	%dl, -73(%rbp)
	movl	$0, -80(%rbp)
.LBB29_4:                               # %for.cond
                                        #   Parent Loop BB29_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB29_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB29_4 Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB29_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB29_4 Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-80(%rbp), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	movzbl	-73(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	shrq	$8, %rcx
	addq	-72(%rbp), %rcx
	shrq	$8, %rcx
	movl	-80(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rdx), %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB29_8
.LBB29_7:                               # %cond.false
                                        #   in Loop: Header=BB29_4 Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
.LBB29_8:                               # %cond.end
                                        #   in Loop: Header=BB29_4 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movl	-80(%rbp), %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB29_4 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB29_4
.LBB29_10:                              # %for.end
                                        #   in Loop: Header=BB29_2 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-56(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-56(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB29_2
.LBB29_11:                              # %while.end
	jmp	.LBB29_23
.LBB29_12:                              # %if.else
	jmp	.LBB29_13
.LBB29_13:                              # %while.cond.37
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_15 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB29_22
# BB#14:                                # %while.body.40
                                        #   in Loop: Header=BB29_13 Depth=1
	movl	$0, -92(%rbp)
.LBB29_15:                              # %for.cond.45
                                        #   Parent Loop BB29_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB29_21
# BB#16:                                # %for.body.48
                                        #   in Loop: Header=BB29_15 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB29_18
# BB#17:                                # %cond.true.52
                                        #   in Loop: Header=BB29_15 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-92(%rbp), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	imull	-36(%rbp), %eax
	addl	$128, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rcx
	shrq	$8, %rcx
	addq	-88(%rbp), %rcx
	shrq	$8, %rcx
	movl	-92(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rdx), %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB29_19
.LBB29_18:                              # %cond.false.70
                                        #   in Loop: Header=BB29_15 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
.LBB29_19:                              # %cond.end.74
                                        #   in Loop: Header=BB29_15 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movl	-92(%rbp), %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
# BB#20:                                # %for.inc.79
                                        #   in Loop: Header=BB29_15 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB29_15
.LBB29_21:                              # %for.end.81
                                        #   in Loop: Header=BB29_13 Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB29_13
.LBB29_22:                              # %while.end.88
	jmp	.LBB29_23
.LBB29_23:                              # %if.end
	popq	%rbp
	retq
.Lfunc_end29:
	.size	combine_inten_and_inten_pixels, .Lfunc_end29-combine_inten_and_inten_pixels
	.cfi_endproc

	.globl	combine_inten_and_inten_a_pixels
	.align	16, 0x90
	.type	combine_inten_and_inten_a_pixels,@function
combine_inten_and_inten_a_pixels:       # @combine_inten_and_inten_a_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	pushq	%rax
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB30_12
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB30_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_4 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB30_11
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB30_2 Depth=1
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	imull	-36(%rbp), %edx
	addl	$32603, %edx            # imm = 0x7F5B
	movl	%edx, %edx
	movl	%edx, %eax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	sarq	$7, %rax
	addq	-80(%rbp), %rax
	sarq	$16, %rax
	movb	%al, %dil
	movb	%dil, -81(%rbp)
	movl	$0, -88(%rbp)
.LBB30_4:                               # %for.cond
                                        #   Parent Loop BB30_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB30_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB30_4 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB30_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB30_4 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-88(%rbp), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	movzbl	-81(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	sarq	$8, %rcx
	addq	-80(%rbp), %rcx
	sarq	$8, %rcx
	movl	-88(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rdx), %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB30_8
.LBB30_7:                               # %cond.false
                                        #   in Loop: Header=BB30_4 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
.LBB30_8:                               # %cond.end
                                        #   in Loop: Header=BB30_4 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movl	-88(%rbp), %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB30_4 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB30_4
.LBB30_10:                              # %for.end
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movl	-56(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-64(%rbp), %ecx
	movq	-16(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-56(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB30_2
.LBB30_11:                              # %while.end
	jmp	.LBB30_32
.LBB30_12:                              # %if.else
	cmpl	$3, -56(%rbp)
	jne	.LBB30_20
# BB#13:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB30_20
# BB#14:                                # %land.lhs.true.44
	movq	-48(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB30_20
# BB#15:                                # %land.lhs.true.47
	movq	-48(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB30_20
# BB#16:                                # %if.then.50
	jmp	.LBB30_17
.LBB30_17:                              # %while.cond.51
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB30_19
# BB#18:                                # %while.body.54
                                        #   in Loop: Header=BB30_17 Depth=1
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	imull	-36(%rbp), %edx
	addl	$128, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	sarq	$8, %rax
	addq	-96(%rbp), %rax
	sarq	$8, %rax
	movb	%al, %sil
	movb	%sil, -97(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edi
	subl	%edi, %edx
	movzbl	-97(%rbp), %edi
	imull	%edi, %edx
	addl	$128, %edx
	movslq	%edx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	sarq	$8, %rax
	addq	-96(%rbp), %rax
	sarq	$8, %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movb	%al, %sil
	movq	-24(%rbp), %rax
	movb	%sil, (%rax)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edi
	subl	%edi, %edx
	movzbl	-97(%rbp), %edi
	imull	%edi, %edx
	addl	$128, %edx
	movslq	%edx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	sarq	$8, %rax
	addq	-96(%rbp), %rax
	sarq	$8, %rax
	movq	-8(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movb	%al, %sil
	movq	-24(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %edi
	subl	%edi, %edx
	movzbl	-97(%rbp), %edi
	imull	%edi, %edx
	addl	$128, %edx
	movslq	%edx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	sarq	$8, %rax
	addq	-96(%rbp), %rax
	sarq	$8, %rax
	movq	-8(%rbp), %rcx
	movzbl	2(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movb	%al, %sil
	movq	-24(%rbp), %rax
	movb	%sil, 2(%rax)
	movl	-56(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movl	-64(%rbp), %edx
	movq	-16(%rbp), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movl	-56(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB30_17
.LBB30_19:                              # %while.end.124
	jmp	.LBB30_31
.LBB30_20:                              # %if.else.125
	jmp	.LBB30_21
.LBB30_21:                              # %while.cond.126
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_23 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB30_30
# BB#22:                                # %while.body.129
                                        #   in Loop: Header=BB30_21 Depth=1
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	imull	-36(%rbp), %edx
	addl	$128, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	sarq	$8, %rax
	addq	-112(%rbp), %rax
	sarq	$8, %rax
	movb	%al, %sil
	movb	%sil, -113(%rbp)
	movl	$0, -120(%rbp)
.LBB30_23:                              # %for.cond.143
                                        #   Parent Loop BB30_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-120(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB30_29
# BB#24:                                # %for.body.146
                                        #   in Loop: Header=BB30_23 Depth=2
	movl	-120(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB30_26
# BB#25:                                # %cond.true.150
                                        #   in Loop: Header=BB30_23 Depth=2
	movl	-120(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-120(%rbp), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	movzbl	-113(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	sarq	$8, %rcx
	addq	-112(%rbp), %rcx
	sarq	$8, %rcx
	movl	-120(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rdx), %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB30_27
.LBB30_26:                              # %cond.false.169
                                        #   in Loop: Header=BB30_23 Depth=2
	movl	-120(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB30_27:                              # %cond.end.173
                                        #   in Loop: Header=BB30_23 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movl	-120(%rbp), %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
# BB#28:                                # %for.inc.178
                                        #   in Loop: Header=BB30_23 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB30_23
.LBB30_29:                              # %for.end.180
                                        #   in Loop: Header=BB30_21 Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB30_21
.LBB30_30:                              # %while.end.187
	jmp	.LBB30_31
.LBB30_31:                              # %if.end
	jmp	.LBB30_32
.LBB30_32:                              # %if.end.188
	addq	$8, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	combine_inten_and_inten_a_pixels, .Lfunc_end30-combine_inten_and_inten_a_pixels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4607182418800017408     # double 1
.LCPI31_1:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	combine_inten_a_and_inten_pixels
	.align	16, 0x90
	.type	combine_inten_a_and_inten_pixels,@function
combine_inten_a_and_inten_pixels:       # @combine_inten_a_and_inten_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r11d, -52(%rbp)
	movl	%r10d, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -68(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB31_71
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpl	$255, -36(%rbp)
	jne	.LBB31_36
# BB#2:                                 # %if.then.2
	jmp	.LBB31_3
.LBB31_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_8 Depth 2
                                        #     Child Loop BB31_15 Depth 2
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, %eax
	je	.LBB31_35
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB31_3 Depth=1
	movl	$255, %eax
	movq	-88(%rbp), %rcx
	movb	(%rcx), %dl
	movb	%dl, -97(%rbp)
	movslq	-68(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edi
	movl	%edi, %ecx
	movslq	-68(%rbp), %rsi
	movq	-8(%rbp), %r8
	movzbl	(%r8,%rsi), %edi
	subl	%edi, %eax
	movzbl	-97(%rbp), %edi
	imull	%edi, %eax
	addl	$128, %eax
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	movq	-96(%rbp), %rsi
	shrq	$8, %rsi
	addq	-96(%rbp), %rsi
	shrq	$8, %rsi
	addq	%rsi, %rcx
	movb	%cl, %dl
	movb	%dl, -98(%rbp)
	movzbl	-97(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB31_22
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB31_3 Depth=1
	movzbl	-98(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB31_22
# BB#6:                                 # %if.then.22
                                        #   in Loop: Header=BB31_3 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movzbl	-97(%rbp), %eax
	movzbl	-98(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB31_14
# BB#7:                                 # %if.then.27
                                        #   in Loop: Header=BB31_3 Depth=1
	jmp	.LBB31_8
.LBB31_8:                               # %do.body
                                        #   Parent Loop BB31_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	movslq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB31_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB31_8 Depth=2
	movslq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
	jmp	.LBB31_11
.LBB31_10:                              # %cond.false
                                        #   in Loop: Header=BB31_8 Depth=2
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
.LBB31_11:                              # %cond.end
                                        #   in Loop: Header=BB31_8 Depth=2
	movl	-136(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-72(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#12:                                # %do.cond
                                        #   in Loop: Header=BB31_8 Depth=2
	cmpl	$0, -72(%rbp)
	jne	.LBB31_8
# BB#13:                                # %do.end
                                        #   in Loop: Header=BB31_3 Depth=1
	jmp	.LBB31_21
.LBB31_14:                              # %if.else
                                        #   in Loop: Header=BB31_3 Depth=1
	movsd	.LCPI31_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-97(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-98(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -76(%rbp)
	cvtss2sd	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
.LBB31_15:                              # %do.body.48
                                        #   Parent Loop BB31_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	movslq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB31_17
# BB#16:                                # %cond.true.53
                                        #   in Loop: Header=BB31_15 Depth=2
	movslq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm0
	movss	-76(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm1
	movss	-80(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI31_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movzbl	%sil, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB31_18
.LBB31_17:                              # %cond.false.69
                                        #   in Loop: Header=BB31_15 Depth=2
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
.LBB31_18:                              # %cond.end.73
                                        #   in Loop: Header=BB31_15 Depth=2
	movl	-140(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-72(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#19:                                # %do.cond.78
                                        #   in Loop: Header=BB31_15 Depth=2
	cmpl	$0, -72(%rbp)
	jne	.LBB31_15
# BB#20:                                # %do.end.80
                                        #   in Loop: Header=BB31_3 Depth=1
	jmp	.LBB31_21
.LBB31_21:                              # %if.end
                                        #   in Loop: Header=BB31_3 Depth=1
	jmp	.LBB31_22
.LBB31_22:                              # %if.end.81
                                        #   in Loop: Header=BB31_3 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB31_27
# BB#23:                                # %if.then.83
                                        #   in Loop: Header=BB31_3 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB31_25
# BB#24:                                # %cond.true.87
                                        #   in Loop: Header=BB31_3 Depth=1
	movzbl	-98(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB31_26
.LBB31_25:                              # %cond.false.89
                                        #   in Loop: Header=BB31_3 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
.LBB31_26:                              # %cond.end.93
                                        #   in Loop: Header=BB31_3 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB31_34
.LBB31_27:                              # %if.else.98
                                        #   in Loop: Header=BB31_3 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB31_29
# BB#28:                                # %cond.true.103
                                        #   in Loop: Header=BB31_3 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB31_33
.LBB31_29:                              # %cond.false.107
                                        #   in Loop: Header=BB31_3 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB31_31
# BB#30:                                # %cond.true.111
                                        #   in Loop: Header=BB31_3 Depth=1
	movzbl	-98(%rbp), %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB31_32
.LBB31_31:                              # %cond.false.113
                                        #   in Loop: Header=BB31_3 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -152(%rbp)        # 4-byte Spill
.LBB31_32:                              # %cond.end.117
                                        #   in Loop: Header=BB31_3 Depth=1
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB31_33:                              # %cond.end.119
                                        #   in Loop: Header=BB31_3 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB31_34:                              # %if.end.124
                                        #   in Loop: Header=BB31_3 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-64(%rbp), %ecx
	movq	-16(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB31_3
.LBB31_35:                              # %while.end
	jmp	.LBB31_70
.LBB31_36:                              # %if.else.129
	jmp	.LBB31_37
.LBB31_37:                              # %while.cond.130
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_42 Depth 2
                                        #     Child Loop BB31_49 Depth 2
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, %eax
	je	.LBB31_69
# BB#38:                                # %while.body.133
                                        #   in Loop: Header=BB31_37 Depth=1
	movl	$255, %eax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	-36(%rbp), %edx
	addl	$128, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	shrq	$8, %rcx
	addq	-112(%rbp), %rcx
	shrq	$8, %rcx
	movb	%cl, %sil
	movb	%sil, -113(%rbp)
	movslq	-68(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rcx), %edx
	movl	%edx, %ecx
	movslq	-68(%rbp), %rdi
	movq	-8(%rbp), %r8
	movzbl	(%r8,%rdi), %edx
	subl	%edx, %eax
	movzbl	-113(%rbp), %edx
	imull	%edx, %eax
	addl	$128, %eax
	movslq	%eax, %rdi
	movq	%rdi, -112(%rbp)
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	addq	-112(%rbp), %rdi
	shrq	$8, %rdi
	addq	%rdi, %rcx
	movb	%cl, %sil
	movb	%sil, -114(%rbp)
	movzbl	-113(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB31_56
# BB#39:                                # %land.lhs.true.167
                                        #   in Loop: Header=BB31_37 Depth=1
	movzbl	-114(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB31_56
# BB#40:                                # %if.then.171
                                        #   in Loop: Header=BB31_37 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movzbl	-113(%rbp), %eax
	movzbl	-114(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB31_48
# BB#41:                                # %if.then.176
                                        #   in Loop: Header=BB31_37 Depth=1
	jmp	.LBB31_42
.LBB31_42:                              # %do.body.177
                                        #   Parent Loop BB31_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	movslq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB31_44
# BB#43:                                # %cond.true.182
                                        #   in Loop: Header=BB31_42 Depth=2
	movslq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
	jmp	.LBB31_45
.LBB31_44:                              # %cond.false.186
                                        #   in Loop: Header=BB31_42 Depth=2
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
.LBB31_45:                              # %cond.end.190
                                        #   in Loop: Header=BB31_42 Depth=2
	movl	-156(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-72(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#46:                                # %do.cond.195
                                        #   in Loop: Header=BB31_42 Depth=2
	cmpl	$0, -72(%rbp)
	jne	.LBB31_42
# BB#47:                                # %do.end.197
                                        #   in Loop: Header=BB31_37 Depth=1
	jmp	.LBB31_55
.LBB31_48:                              # %if.else.198
                                        #   in Loop: Header=BB31_37 Depth=1
	movsd	.LCPI31_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-113(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-114(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -76(%rbp)
	cvtss2sd	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
.LBB31_49:                              # %do.body.206
                                        #   Parent Loop BB31_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	movslq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB31_51
# BB#50:                                # %cond.true.211
                                        #   in Loop: Header=BB31_49 Depth=2
	movslq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm0
	movss	-76(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm1
	movss	-80(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI31_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movzbl	%sil, %edx
	movl	%edx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB31_52
.LBB31_51:                              # %cond.false.227
                                        #   in Loop: Header=BB31_49 Depth=2
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -160(%rbp)        # 4-byte Spill
.LBB31_52:                              # %cond.end.231
                                        #   in Loop: Header=BB31_49 Depth=2
	movl	-160(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-72(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#53:                                # %do.cond.236
                                        #   in Loop: Header=BB31_49 Depth=2
	cmpl	$0, -72(%rbp)
	jne	.LBB31_49
# BB#54:                                # %do.end.238
                                        #   in Loop: Header=BB31_37 Depth=1
	jmp	.LBB31_55
.LBB31_55:                              # %if.end.239
                                        #   in Loop: Header=BB31_37 Depth=1
	jmp	.LBB31_56
.LBB31_56:                              # %if.end.240
                                        #   in Loop: Header=BB31_37 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB31_61
# BB#57:                                # %if.then.242
                                        #   in Loop: Header=BB31_37 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB31_59
# BB#58:                                # %cond.true.246
                                        #   in Loop: Header=BB31_37 Depth=1
	movzbl	-114(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB31_60
.LBB31_59:                              # %cond.false.248
                                        #   in Loop: Header=BB31_37 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -164(%rbp)        # 4-byte Spill
.LBB31_60:                              # %cond.end.252
                                        #   in Loop: Header=BB31_37 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB31_68
.LBB31_61:                              # %if.else.257
                                        #   in Loop: Header=BB31_37 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB31_63
# BB#62:                                # %cond.true.262
                                        #   in Loop: Header=BB31_37 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB31_67
.LBB31_63:                              # %cond.false.266
                                        #   in Loop: Header=BB31_37 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB31_65
# BB#64:                                # %cond.true.270
                                        #   in Loop: Header=BB31_37 Depth=1
	movzbl	-114(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB31_66
.LBB31_65:                              # %cond.false.272
                                        #   in Loop: Header=BB31_37 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -172(%rbp)        # 4-byte Spill
.LBB31_66:                              # %cond.end.276
                                        #   in Loop: Header=BB31_37 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB31_67:                              # %cond.end.278
                                        #   in Loop: Header=BB31_37 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB31_68:                              # %if.end.283
                                        #   in Loop: Header=BB31_37 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-64(%rbp), %ecx
	movq	-16(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB31_37
.LBB31_69:                              # %while.end.291
	jmp	.LBB31_70
.LBB31_70:                              # %if.end.292
	jmp	.LBB31_105
.LBB31_71:                              # %if.else.293
	jmp	.LBB31_72
.LBB31_72:                              # %while.cond.294
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_77 Depth 2
                                        #     Child Loop BB31_84 Depth 2
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, %eax
	je	.LBB31_104
# BB#73:                                # %while.body.297
                                        #   in Loop: Header=BB31_72 Depth=1
	movl	$255, %eax
	movl	-36(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -129(%rbp)
	movslq	-68(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rsi), %ecx
	movl	%ecx, %esi
	movslq	-68(%rbp), %rdi
	movq	-8(%rbp), %r8
	movzbl	(%r8,%rdi), %ecx
	subl	%ecx, %eax
	movzbl	-129(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movslq	%eax, %rdi
	movq	%rdi, -128(%rbp)
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	addq	-128(%rbp), %rdi
	shrq	$8, %rdi
	addq	%rdi, %rsi
	movb	%sil, %dl
	movb	%dl, -130(%rbp)
	movzbl	-129(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB31_91
# BB#74:                                # %land.lhs.true.324
                                        #   in Loop: Header=BB31_72 Depth=1
	movzbl	-130(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB31_91
# BB#75:                                # %if.then.328
                                        #   in Loop: Header=BB31_72 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movzbl	-129(%rbp), %eax
	movzbl	-130(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB31_83
# BB#76:                                # %if.then.333
                                        #   in Loop: Header=BB31_72 Depth=1
	jmp	.LBB31_77
.LBB31_77:                              # %do.body.334
                                        #   Parent Loop BB31_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	movslq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB31_79
# BB#78:                                # %cond.true.339
                                        #   in Loop: Header=BB31_77 Depth=2
	movslq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB31_80
.LBB31_79:                              # %cond.false.343
                                        #   in Loop: Header=BB31_77 Depth=2
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -176(%rbp)        # 4-byte Spill
.LBB31_80:                              # %cond.end.347
                                        #   in Loop: Header=BB31_77 Depth=2
	movl	-176(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-72(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#81:                                # %do.cond.352
                                        #   in Loop: Header=BB31_77 Depth=2
	cmpl	$0, -72(%rbp)
	jne	.LBB31_77
# BB#82:                                # %do.end.354
                                        #   in Loop: Header=BB31_72 Depth=1
	jmp	.LBB31_90
.LBB31_83:                              # %if.else.355
                                        #   in Loop: Header=BB31_72 Depth=1
	movsd	.LCPI31_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-129(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-130(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -76(%rbp)
	cvtss2sd	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
.LBB31_84:                              # %do.body.363
                                        #   Parent Loop BB31_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	movslq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB31_86
# BB#85:                                # %cond.true.368
                                        #   in Loop: Header=BB31_84 Depth=2
	movslq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm0
	movss	-76(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm1
	movss	-80(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI31_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movzbl	%sil, %edx
	movl	%edx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB31_87
.LBB31_86:                              # %cond.false.384
                                        #   in Loop: Header=BB31_84 Depth=2
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -180(%rbp)        # 4-byte Spill
.LBB31_87:                              # %cond.end.388
                                        #   in Loop: Header=BB31_84 Depth=2
	movl	-180(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-72(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#88:                                # %do.cond.393
                                        #   in Loop: Header=BB31_84 Depth=2
	cmpl	$0, -72(%rbp)
	jne	.LBB31_84
# BB#89:                                # %do.end.395
                                        #   in Loop: Header=BB31_72 Depth=1
	jmp	.LBB31_90
.LBB31_90:                              # %if.end.396
                                        #   in Loop: Header=BB31_72 Depth=1
	jmp	.LBB31_91
.LBB31_91:                              # %if.end.397
                                        #   in Loop: Header=BB31_72 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB31_96
# BB#92:                                # %if.then.399
                                        #   in Loop: Header=BB31_72 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB31_94
# BB#93:                                # %cond.true.403
                                        #   in Loop: Header=BB31_72 Depth=1
	movzbl	-130(%rbp), %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB31_95
.LBB31_94:                              # %cond.false.405
                                        #   in Loop: Header=BB31_72 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -184(%rbp)        # 4-byte Spill
.LBB31_95:                              # %cond.end.409
                                        #   in Loop: Header=BB31_72 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB31_103
.LBB31_96:                              # %if.else.414
                                        #   in Loop: Header=BB31_72 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB31_98
# BB#97:                                # %cond.true.419
                                        #   in Loop: Header=BB31_72 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB31_102
.LBB31_98:                              # %cond.false.423
                                        #   in Loop: Header=BB31_72 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB31_100
# BB#99:                                # %cond.true.427
                                        #   in Loop: Header=BB31_72 Depth=1
	movzbl	-130(%rbp), %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB31_101
.LBB31_100:                             # %cond.false.429
                                        #   in Loop: Header=BB31_72 Depth=1
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
.LBB31_101:                             # %cond.end.433
                                        #   in Loop: Header=BB31_72 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB31_102:                             # %cond.end.435
                                        #   in Loop: Header=BB31_72 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB31_103:                             # %if.end.440
                                        #   in Loop: Header=BB31_72 Depth=1
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB31_72
.LBB31_104:                             # %while.end.447
	jmp	.LBB31_105
.LBB31_105:                             # %if.end.448
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	combine_inten_a_and_inten_pixels, .Lfunc_end31-combine_inten_a_and_inten_pixels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4607182418800017408     # double 1
.LCPI32_1:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	combine_inten_a_and_inten_a_pixels
	.align	16, 0x90
	.type	combine_inten_a_and_inten_a_pixels,@function
combine_inten_a_and_inten_a_pixels:     # @combine_inten_a_and_inten_a_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$280, %rsp              # imm = 0x118
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r11d, -52(%rbp)
	movl	%r10d, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB32_229
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpl	$255, -36(%rbp)
	jne	.LBB32_115
# BB#2:                                 # %if.then.1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$4, %rcx
	jb	.LBB32_81
# BB#3:                                 # %if.then.4
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	movslq	%ecx, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB32_38
# BB#4:                                 # %if.then.10
	movl	$4, %eax
	movl	%eax, %ecx
	movslq	-100(%rbp), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	movl	-56(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -56(%rbp)
.LBB32_5:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_10 Depth 2
                                        #     Child Loop BB32_17 Depth 2
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB32_37
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	$255, %eax
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	imull	%edi, %ecx
	addl	$128, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, -112(%rbp)
	movq	-112(%rbp), %rdx
	shrq	$8, %rdx
	addq	-112(%rbp), %rdx
	shrq	$8, %rdx
	movb	%dl, %r8b
	movb	%r8b, -113(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %r9
	movzbl	(%r9,%rsi), %ecx
	subl	%ecx, %eax
	movzbl	-113(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	movq	-112(%rbp), %rsi
	shrq	$8, %rsi
	addq	-112(%rbp), %rsi
	shrq	$8, %rsi
	addq	%rsi, %rdx
	movb	%dl, %r8b
	movb	%r8b, -114(%rbp)
	movzbl	-113(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_24
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB32_5 Depth=1
	movzbl	-114(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_24
# BB#8:                                 # %if.then.46
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	movzbl	-113(%rbp), %eax
	movzbl	-114(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB32_16
# BB#9:                                 # %if.then.51
                                        #   in Loop: Header=BB32_5 Depth=1
	jmp	.LBB32_10
.LBB32_10:                              # %do.body
                                        #   Parent Loop BB32_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB32_10 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB32_13
.LBB32_12:                              # %cond.false
                                        #   in Loop: Header=BB32_10 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB32_13:                              # %cond.end
                                        #   in Loop: Header=BB32_10 Depth=2
	movl	-248(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#14:                                # %do.cond
                                        #   in Loop: Header=BB32_10 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_10
# BB#15:                                # %do.end
                                        #   in Loop: Header=BB32_5 Depth=1
	jmp	.LBB32_23
.LBB32_16:                              # %if.else
                                        #   in Loop: Header=BB32_5 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-113(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-114(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -72(%rbp)
	cvtss2sd	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
.LBB32_17:                              # %do.body.72
                                        #   Parent Loop BB32_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_19
# BB#18:                                # %cond.true.77
                                        #   in Loop: Header=BB32_17 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-72(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI32_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %sil
	movzbl	%sil, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB32_20
.LBB32_19:                              # %cond.false.93
                                        #   in Loop: Header=BB32_17 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB32_20:                              # %cond.end.97
                                        #   in Loop: Header=BB32_17 Depth=2
	movl	-252(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#21:                                # %do.cond.102
                                        #   in Loop: Header=BB32_17 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_17
# BB#22:                                # %do.end.104
                                        #   in Loop: Header=BB32_5 Depth=1
	jmp	.LBB32_23
.LBB32_23:                              # %if.end
                                        #   in Loop: Header=BB32_5 Depth=1
	jmp	.LBB32_24
.LBB32_24:                              # %if.end.105
                                        #   in Loop: Header=BB32_5 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB32_29
# BB#25:                                # %if.then.107
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_27
# BB#26:                                # %cond.true.111
                                        #   in Loop: Header=BB32_5 Depth=1
	movzbl	-114(%rbp), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB32_28
.LBB32_27:                              # %cond.false.113
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB32_28:                              # %cond.end.117
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-256(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB32_36
.LBB32_29:                              # %if.else.122
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB32_31
# BB#30:                                # %cond.true.127
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB32_35
.LBB32_31:                              # %cond.false.131
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_33
# BB#32:                                # %cond.true.135
                                        #   in Loop: Header=BB32_5 Depth=1
	movzbl	-114(%rbp), %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB32_34
.LBB32_33:                              # %cond.false.137
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB32_34:                              # %cond.end.141
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB32_35:                              # %cond.end.143
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB32_36:                              # %if.end.148
                                        #   in Loop: Header=BB32_5 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-60(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB32_5
.LBB32_37:                              # %while.end
	jmp	.LBB32_38
.LBB32_38:                              # %if.end.153
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, %eax
	shrq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, %eax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
.LBB32_39:                              # %while.cond.159
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_42 Depth 2
                                        #       Child Loop BB32_47 Depth 3
                                        #       Child Loop BB32_54 Depth 3
                                        #     Child Loop BB32_76 Depth 2
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB32_80
# BB#40:                                # %while.body.162
                                        #   in Loop: Header=BB32_39 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB32_75
# BB#41:                                # %if.then.164
                                        #   in Loop: Header=BB32_39 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$4, -104(%rbp)
.LBB32_42:                              # %while.cond.165
                                        #   Parent Loop BB32_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_47 Depth 3
                                        #       Child Loop BB32_54 Depth 3
	movl	-104(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -104(%rbp)
	cmpl	$0, %eax
	je	.LBB32_74
# BB#43:                                # %while.body.168
                                        #   in Loop: Header=BB32_42 Depth=2
	movl	$255, %eax
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	imull	%edi, %ecx
	addl	$128, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, -128(%rbp)
	movq	-128(%rbp), %rdx
	shrq	$8, %rdx
	addq	-128(%rbp), %rdx
	shrq	$8, %rdx
	movb	%dl, %r8b
	movb	%r8b, -129(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %r9
	movzbl	(%r9,%rsi), %ecx
	subl	%ecx, %eax
	movzbl	-129(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	movq	-128(%rbp), %rsi
	shrq	$8, %rsi
	addq	-128(%rbp), %rsi
	shrq	$8, %rsi
	addq	%rsi, %rdx
	movb	%dl, %r8b
	movb	%r8b, -130(%rbp)
	movzbl	-129(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_61
# BB#44:                                # %land.lhs.true.205
                                        #   in Loop: Header=BB32_42 Depth=2
	movzbl	-130(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_61
# BB#45:                                # %if.then.209
                                        #   in Loop: Header=BB32_42 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	movzbl	-129(%rbp), %eax
	movzbl	-130(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB32_53
# BB#46:                                # %if.then.214
                                        #   in Loop: Header=BB32_42 Depth=2
	jmp	.LBB32_47
.LBB32_47:                              # %do.body.215
                                        #   Parent Loop BB32_39 Depth=1
                                        #     Parent Loop BB32_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_49
# BB#48:                                # %cond.true.220
                                        #   in Loop: Header=BB32_47 Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB32_50
.LBB32_49:                              # %cond.false.224
                                        #   in Loop: Header=BB32_47 Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB32_50:                              # %cond.end.228
                                        #   in Loop: Header=BB32_47 Depth=3
	movl	-268(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#51:                                # %do.cond.233
                                        #   in Loop: Header=BB32_47 Depth=3
	cmpl	$0, -68(%rbp)
	jne	.LBB32_47
# BB#52:                                # %do.end.235
                                        #   in Loop: Header=BB32_42 Depth=2
	jmp	.LBB32_60
.LBB32_53:                              # %if.else.236
                                        #   in Loop: Header=BB32_42 Depth=2
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-129(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-130(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -72(%rbp)
	cvtss2sd	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
.LBB32_54:                              # %do.body.244
                                        #   Parent Loop BB32_39 Depth=1
                                        #     Parent Loop BB32_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_56
# BB#55:                                # %cond.true.249
                                        #   in Loop: Header=BB32_54 Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-72(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI32_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %sil
	movzbl	%sil, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB32_57
.LBB32_56:                              # %cond.false.265
                                        #   in Loop: Header=BB32_54 Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB32_57:                              # %cond.end.269
                                        #   in Loop: Header=BB32_54 Depth=3
	movl	-272(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#58:                                # %do.cond.274
                                        #   in Loop: Header=BB32_54 Depth=3
	cmpl	$0, -68(%rbp)
	jne	.LBB32_54
# BB#59:                                # %do.end.276
                                        #   in Loop: Header=BB32_42 Depth=2
	jmp	.LBB32_60
.LBB32_60:                              # %if.end.277
                                        #   in Loop: Header=BB32_42 Depth=2
	jmp	.LBB32_61
.LBB32_61:                              # %if.end.278
                                        #   in Loop: Header=BB32_42 Depth=2
	cmpl	$0, -52(%rbp)
	je	.LBB32_66
# BB#62:                                # %if.then.280
                                        #   in Loop: Header=BB32_42 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_64
# BB#63:                                # %cond.true.284
                                        #   in Loop: Header=BB32_42 Depth=2
	movzbl	-130(%rbp), %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB32_65
.LBB32_64:                              # %cond.false.286
                                        #   in Loop: Header=BB32_42 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB32_65:                              # %cond.end.290
                                        #   in Loop: Header=BB32_42 Depth=2
	movl	-276(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB32_73
.LBB32_66:                              # %if.else.295
                                        #   in Loop: Header=BB32_42 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB32_68
# BB#67:                                # %cond.true.300
                                        #   in Loop: Header=BB32_42 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB32_72
.LBB32_68:                              # %cond.false.304
                                        #   in Loop: Header=BB32_42 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_70
# BB#69:                                # %cond.true.308
                                        #   in Loop: Header=BB32_42 Depth=2
	movzbl	-130(%rbp), %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB32_71
.LBB32_70:                              # %cond.false.310
                                        #   in Loop: Header=BB32_42 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB32_71:                              # %cond.end.314
                                        #   in Loop: Header=BB32_42 Depth=2
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB32_72:                              # %cond.end.316
                                        #   in Loop: Header=BB32_42 Depth=2
	movl	-280(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB32_73:                              # %if.end.321
                                        #   in Loop: Header=BB32_42 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-60(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB32_42
.LBB32_74:                              # %while.end.329
                                        #   in Loop: Header=BB32_39 Depth=1
	jmp	.LBB32_79
.LBB32_75:                              # %if.else.330
                                        #   in Loop: Header=BB32_39 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB32_76:                              # %while.cond.336
                                        #   Parent Loop BB32_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -104(%rbp)
	cmpl	$0, %eax
	je	.LBB32_78
# BB#77:                                # %while.body.339
                                        #   in Loop: Header=BB32_76 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB32_76
.LBB32_78:                              # %while.end.342
                                        #   in Loop: Header=BB32_39 Depth=1
	jmp	.LBB32_79
.LBB32_79:                              # %if.end.343
                                        #   in Loop: Header=BB32_39 Depth=1
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB32_39
.LBB32_80:                              # %while.end.345
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB32_81:                              # %if.end.346
	jmp	.LBB32_82
.LBB32_82:                              # %while.cond.347
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_87 Depth 2
                                        #     Child Loop BB32_94 Depth 2
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, %eax
	je	.LBB32_114
# BB#83:                                # %while.body.350
                                        #   in Loop: Header=BB32_82 Depth=1
	movl	$255, %eax
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	imull	%edi, %ecx
	addl	$128, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, -144(%rbp)
	movq	-144(%rbp), %rdx
	shrq	$8, %rdx
	addq	-144(%rbp), %rdx
	shrq	$8, %rdx
	movb	%dl, %r8b
	movb	%r8b, -145(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %r9
	movzbl	(%r9,%rsi), %ecx
	subl	%ecx, %eax
	movzbl	-145(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movslq	%eax, %rsi
	movq	%rsi, -144(%rbp)
	movq	-144(%rbp), %rsi
	shrq	$8, %rsi
	addq	-144(%rbp), %rsi
	shrq	$8, %rsi
	addq	%rsi, %rdx
	movb	%dl, %r8b
	movb	%r8b, -146(%rbp)
	movzbl	-145(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_101
# BB#84:                                # %land.lhs.true.387
                                        #   in Loop: Header=BB32_82 Depth=1
	movzbl	-146(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_101
# BB#85:                                # %if.then.391
                                        #   in Loop: Header=BB32_82 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	movzbl	-145(%rbp), %eax
	movzbl	-146(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB32_93
# BB#86:                                # %if.then.396
                                        #   in Loop: Header=BB32_82 Depth=1
	jmp	.LBB32_87
.LBB32_87:                              # %do.body.397
                                        #   Parent Loop BB32_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_89
# BB#88:                                # %cond.true.402
                                        #   in Loop: Header=BB32_87 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB32_90
.LBB32_89:                              # %cond.false.406
                                        #   in Loop: Header=BB32_87 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB32_90:                              # %cond.end.410
                                        #   in Loop: Header=BB32_87 Depth=2
	movl	-288(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#91:                                # %do.cond.415
                                        #   in Loop: Header=BB32_87 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_87
# BB#92:                                # %do.end.417
                                        #   in Loop: Header=BB32_82 Depth=1
	jmp	.LBB32_100
.LBB32_93:                              # %if.else.418
                                        #   in Loop: Header=BB32_82 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-145(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-146(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -72(%rbp)
	cvtss2sd	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
.LBB32_94:                              # %do.body.426
                                        #   Parent Loop BB32_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_96
# BB#95:                                # %cond.true.431
                                        #   in Loop: Header=BB32_94 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-72(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI32_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %sil
	movzbl	%sil, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB32_97
.LBB32_96:                              # %cond.false.447
                                        #   in Loop: Header=BB32_94 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB32_97:                              # %cond.end.451
                                        #   in Loop: Header=BB32_94 Depth=2
	movl	-292(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#98:                                # %do.cond.456
                                        #   in Loop: Header=BB32_94 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_94
# BB#99:                                # %do.end.458
                                        #   in Loop: Header=BB32_82 Depth=1
	jmp	.LBB32_100
.LBB32_100:                             # %if.end.459
                                        #   in Loop: Header=BB32_82 Depth=1
	jmp	.LBB32_101
.LBB32_101:                             # %if.end.460
                                        #   in Loop: Header=BB32_82 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB32_106
# BB#102:                               # %if.then.462
                                        #   in Loop: Header=BB32_82 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_104
# BB#103:                               # %cond.true.466
                                        #   in Loop: Header=BB32_82 Depth=1
	movzbl	-146(%rbp), %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB32_105
.LBB32_104:                             # %cond.false.468
                                        #   in Loop: Header=BB32_82 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB32_105:                             # %cond.end.472
                                        #   in Loop: Header=BB32_82 Depth=1
	movl	-296(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB32_113
.LBB32_106:                             # %if.else.477
                                        #   in Loop: Header=BB32_82 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB32_108
# BB#107:                               # %cond.true.482
                                        #   in Loop: Header=BB32_82 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB32_112
.LBB32_108:                             # %cond.false.486
                                        #   in Loop: Header=BB32_82 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_110
# BB#109:                               # %cond.true.490
                                        #   in Loop: Header=BB32_82 Depth=1
	movzbl	-146(%rbp), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB32_111
.LBB32_110:                             # %cond.false.492
                                        #   in Loop: Header=BB32_82 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB32_111:                             # %cond.end.496
                                        #   in Loop: Header=BB32_82 Depth=1
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB32_112:                             # %cond.end.498
                                        #   in Loop: Header=BB32_82 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB32_113:                             # %if.end.503
                                        #   in Loop: Header=BB32_82 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-60(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB32_82
.LBB32_114:                             # %while.end.511
	jmp	.LBB32_228
.LBB32_115:                             # %if.else.512
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$4, %rcx
	jb	.LBB32_194
# BB#116:                               # %if.then.522
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	movslq	%ecx, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -164(%rbp)
	cmpl	$0, -164(%rbp)
	je	.LBB32_151
# BB#117:                               # %if.then.529
	movl	$4, %eax
	movl	%eax, %ecx
	movslq	-164(%rbp), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	movl	-56(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -56(%rbp)
.LBB32_118:                             # %while.cond.534
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_123 Depth 2
                                        #     Child Loop BB32_130 Depth 2
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -164(%rbp)
	cmpl	$0, %eax
	je	.LBB32_150
# BB#119:                               # %while.body.537
                                        #   in Loop: Header=BB32_118 Depth=1
	movl	$255, %eax
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	imull	%edi, %ecx
	imull	-36(%rbp), %ecx
	addl	$32603, %ecx            # imm = 0x7F5B
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdx, -176(%rbp)
	movq	-176(%rbp), %rdx
	shrq	$7, %rdx
	addq	-176(%rbp), %rdx
	shrq	$16, %rdx
	movb	%dl, %r8b
	movb	%r8b, -177(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %r9
	movzbl	(%r9,%rsi), %ecx
	subl	%ecx, %eax
	movzbl	-177(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movslq	%eax, %rsi
	movq	%rsi, -176(%rbp)
	movq	-176(%rbp), %rsi
	shrq	$8, %rsi
	addq	-176(%rbp), %rsi
	shrq	$8, %rsi
	addq	%rsi, %rdx
	movb	%dl, %r8b
	movb	%r8b, -178(%rbp)
	movzbl	-177(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_137
# BB#120:                               # %land.lhs.true.575
                                        #   in Loop: Header=BB32_118 Depth=1
	movzbl	-178(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_137
# BB#121:                               # %if.then.579
                                        #   in Loop: Header=BB32_118 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	movzbl	-177(%rbp), %eax
	movzbl	-178(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB32_129
# BB#122:                               # %if.then.584
                                        #   in Loop: Header=BB32_118 Depth=1
	jmp	.LBB32_123
.LBB32_123:                             # %do.body.585
                                        #   Parent Loop BB32_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_125
# BB#124:                               # %cond.true.590
                                        #   in Loop: Header=BB32_123 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB32_126
.LBB32_125:                             # %cond.false.594
                                        #   in Loop: Header=BB32_123 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB32_126:                             # %cond.end.598
                                        #   in Loop: Header=BB32_123 Depth=2
	movl	-308(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#127:                               # %do.cond.603
                                        #   in Loop: Header=BB32_123 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_123
# BB#128:                               # %do.end.605
                                        #   in Loop: Header=BB32_118 Depth=1
	jmp	.LBB32_136
.LBB32_129:                             # %if.else.606
                                        #   in Loop: Header=BB32_118 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-177(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-178(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -72(%rbp)
	cvtss2sd	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
.LBB32_130:                             # %do.body.614
                                        #   Parent Loop BB32_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_132
# BB#131:                               # %cond.true.619
                                        #   in Loop: Header=BB32_130 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-72(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI32_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %sil
	movzbl	%sil, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB32_133
.LBB32_132:                             # %cond.false.635
                                        #   in Loop: Header=BB32_130 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB32_133:                             # %cond.end.639
                                        #   in Loop: Header=BB32_130 Depth=2
	movl	-312(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#134:                               # %do.cond.644
                                        #   in Loop: Header=BB32_130 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_130
# BB#135:                               # %do.end.646
                                        #   in Loop: Header=BB32_118 Depth=1
	jmp	.LBB32_136
.LBB32_136:                             # %if.end.647
                                        #   in Loop: Header=BB32_118 Depth=1
	jmp	.LBB32_137
.LBB32_137:                             # %if.end.648
                                        #   in Loop: Header=BB32_118 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB32_142
# BB#138:                               # %if.then.650
                                        #   in Loop: Header=BB32_118 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_140
# BB#139:                               # %cond.true.654
                                        #   in Loop: Header=BB32_118 Depth=1
	movzbl	-178(%rbp), %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB32_141
.LBB32_140:                             # %cond.false.656
                                        #   in Loop: Header=BB32_118 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB32_141:                             # %cond.end.660
                                        #   in Loop: Header=BB32_118 Depth=1
	movl	-316(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB32_149
.LBB32_142:                             # %if.else.665
                                        #   in Loop: Header=BB32_118 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB32_144
# BB#143:                               # %cond.true.670
                                        #   in Loop: Header=BB32_118 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB32_148
.LBB32_144:                             # %cond.false.674
                                        #   in Loop: Header=BB32_118 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_146
# BB#145:                               # %cond.true.678
                                        #   in Loop: Header=BB32_118 Depth=1
	movzbl	-178(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB32_147
.LBB32_146:                             # %cond.false.680
                                        #   in Loop: Header=BB32_118 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB32_147:                             # %cond.end.684
                                        #   in Loop: Header=BB32_118 Depth=1
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB32_148:                             # %cond.end.686
                                        #   in Loop: Header=BB32_118 Depth=1
	movl	-320(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB32_149:                             # %if.end.691
                                        #   in Loop: Header=BB32_118 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-60(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB32_118
.LBB32_150:                             # %while.end.699
	jmp	.LBB32_151
.LBB32_151:                             # %if.end.700
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, %eax
	shrq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -164(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, %eax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
.LBB32_152:                             # %while.cond.707
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_155 Depth 2
                                        #       Child Loop BB32_160 Depth 3
                                        #       Child Loop BB32_167 Depth 3
                                        #     Child Loop BB32_189 Depth 2
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -164(%rbp)
	cmpl	$0, %eax
	je	.LBB32_193
# BB#153:                               # %while.body.710
                                        #   in Loop: Header=BB32_152 Depth=1
	movq	-160(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB32_188
# BB#154:                               # %if.then.712
                                        #   in Loop: Header=BB32_152 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$4, -168(%rbp)
.LBB32_155:                             # %while.cond.713
                                        #   Parent Loop BB32_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_160 Depth 3
                                        #       Child Loop BB32_167 Depth 3
	movl	-168(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -168(%rbp)
	cmpl	$0, %eax
	je	.LBB32_187
# BB#156:                               # %while.body.716
                                        #   in Loop: Header=BB32_155 Depth=2
	movl	$255, %eax
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	imull	%edi, %ecx
	imull	-36(%rbp), %ecx
	addl	$32603, %ecx            # imm = 0x7F5B
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdx, -192(%rbp)
	movq	-192(%rbp), %rdx
	shrq	$7, %rdx
	addq	-192(%rbp), %rdx
	shrq	$16, %rdx
	movb	%dl, %r8b
	movb	%r8b, -193(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %r9
	movzbl	(%r9,%rsi), %ecx
	subl	%ecx, %eax
	movzbl	-193(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movslq	%eax, %rsi
	movq	%rsi, -192(%rbp)
	movq	-192(%rbp), %rsi
	shrq	$8, %rsi
	addq	-192(%rbp), %rsi
	shrq	$8, %rsi
	addq	%rsi, %rdx
	movb	%dl, %r8b
	movb	%r8b, -194(%rbp)
	movzbl	-193(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_174
# BB#157:                               # %land.lhs.true.754
                                        #   in Loop: Header=BB32_155 Depth=2
	movzbl	-194(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_174
# BB#158:                               # %if.then.758
                                        #   in Loop: Header=BB32_155 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	movzbl	-193(%rbp), %eax
	movzbl	-194(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB32_166
# BB#159:                               # %if.then.763
                                        #   in Loop: Header=BB32_155 Depth=2
	jmp	.LBB32_160
.LBB32_160:                             # %do.body.764
                                        #   Parent Loop BB32_152 Depth=1
                                        #     Parent Loop BB32_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_162
# BB#161:                               # %cond.true.769
                                        #   in Loop: Header=BB32_160 Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB32_163
.LBB32_162:                             # %cond.false.773
                                        #   in Loop: Header=BB32_160 Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB32_163:                             # %cond.end.777
                                        #   in Loop: Header=BB32_160 Depth=3
	movl	-328(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#164:                               # %do.cond.782
                                        #   in Loop: Header=BB32_160 Depth=3
	cmpl	$0, -68(%rbp)
	jne	.LBB32_160
# BB#165:                               # %do.end.784
                                        #   in Loop: Header=BB32_155 Depth=2
	jmp	.LBB32_173
.LBB32_166:                             # %if.else.785
                                        #   in Loop: Header=BB32_155 Depth=2
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-193(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-194(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -72(%rbp)
	cvtss2sd	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
.LBB32_167:                             # %do.body.793
                                        #   Parent Loop BB32_152 Depth=1
                                        #     Parent Loop BB32_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_169
# BB#168:                               # %cond.true.798
                                        #   in Loop: Header=BB32_167 Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-72(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI32_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %sil
	movzbl	%sil, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB32_170
.LBB32_169:                             # %cond.false.814
                                        #   in Loop: Header=BB32_167 Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB32_170:                             # %cond.end.818
                                        #   in Loop: Header=BB32_167 Depth=3
	movl	-332(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#171:                               # %do.cond.823
                                        #   in Loop: Header=BB32_167 Depth=3
	cmpl	$0, -68(%rbp)
	jne	.LBB32_167
# BB#172:                               # %do.end.825
                                        #   in Loop: Header=BB32_155 Depth=2
	jmp	.LBB32_173
.LBB32_173:                             # %if.end.826
                                        #   in Loop: Header=BB32_155 Depth=2
	jmp	.LBB32_174
.LBB32_174:                             # %if.end.827
                                        #   in Loop: Header=BB32_155 Depth=2
	cmpl	$0, -52(%rbp)
	je	.LBB32_179
# BB#175:                               # %if.then.829
                                        #   in Loop: Header=BB32_155 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_177
# BB#176:                               # %cond.true.833
                                        #   in Loop: Header=BB32_155 Depth=2
	movzbl	-194(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB32_178
.LBB32_177:                             # %cond.false.835
                                        #   in Loop: Header=BB32_155 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB32_178:                             # %cond.end.839
                                        #   in Loop: Header=BB32_155 Depth=2
	movl	-336(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB32_186
.LBB32_179:                             # %if.else.844
                                        #   in Loop: Header=BB32_155 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB32_181
# BB#180:                               # %cond.true.849
                                        #   in Loop: Header=BB32_155 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB32_185
.LBB32_181:                             # %cond.false.853
                                        #   in Loop: Header=BB32_155 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_183
# BB#182:                               # %cond.true.857
                                        #   in Loop: Header=BB32_155 Depth=2
	movzbl	-194(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB32_184
.LBB32_183:                             # %cond.false.859
                                        #   in Loop: Header=BB32_155 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB32_184:                             # %cond.end.863
                                        #   in Loop: Header=BB32_155 Depth=2
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB32_185:                             # %cond.end.865
                                        #   in Loop: Header=BB32_155 Depth=2
	movl	-340(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB32_186:                             # %if.end.870
                                        #   in Loop: Header=BB32_155 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-60(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB32_155
.LBB32_187:                             # %while.end.878
                                        #   in Loop: Header=BB32_152 Depth=1
	jmp	.LBB32_192
.LBB32_188:                             # %if.else.879
                                        #   in Loop: Header=BB32_152 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB32_189:                             # %while.cond.885
                                        #   Parent Loop BB32_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-168(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -168(%rbp)
	cmpl	$0, %eax
	je	.LBB32_191
# BB#190:                               # %while.body.888
                                        #   in Loop: Header=BB32_189 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB32_189
.LBB32_191:                             # %while.end.891
                                        #   in Loop: Header=BB32_152 Depth=1
	jmp	.LBB32_192
.LBB32_192:                             # %if.end.892
                                        #   in Loop: Header=BB32_152 Depth=1
	movq	-160(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB32_152
.LBB32_193:                             # %while.end.894
	movq	-160(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB32_194:                             # %if.end.895
	jmp	.LBB32_195
.LBB32_195:                             # %while.cond.896
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_200 Depth 2
                                        #     Child Loop BB32_207 Depth 2
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, %eax
	je	.LBB32_227
# BB#196:                               # %while.body.899
                                        #   in Loop: Header=BB32_195 Depth=1
	movl	$255, %eax
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	imull	%edi, %ecx
	imull	-36(%rbp), %ecx
	addl	$32603, %ecx            # imm = 0x7F5B
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdx, -208(%rbp)
	movq	-208(%rbp), %rdx
	shrq	$7, %rdx
	addq	-208(%rbp), %rdx
	shrq	$16, %rdx
	movb	%dl, %r8b
	movb	%r8b, -209(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %r9
	movzbl	(%r9,%rsi), %ecx
	subl	%ecx, %eax
	movzbl	-209(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movslq	%eax, %rsi
	movq	%rsi, -208(%rbp)
	movq	-208(%rbp), %rsi
	shrq	$8, %rsi
	addq	-208(%rbp), %rsi
	shrq	$8, %rsi
	addq	%rsi, %rdx
	movb	%dl, %r8b
	movb	%r8b, -210(%rbp)
	movzbl	-209(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_214
# BB#197:                               # %land.lhs.true.937
                                        #   in Loop: Header=BB32_195 Depth=1
	movzbl	-210(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_214
# BB#198:                               # %if.then.941
                                        #   in Loop: Header=BB32_195 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	movzbl	-209(%rbp), %eax
	movzbl	-210(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB32_206
# BB#199:                               # %if.then.946
                                        #   in Loop: Header=BB32_195 Depth=1
	jmp	.LBB32_200
.LBB32_200:                             # %do.body.947
                                        #   Parent Loop BB32_195 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_202
# BB#201:                               # %cond.true.952
                                        #   in Loop: Header=BB32_200 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB32_203
.LBB32_202:                             # %cond.false.956
                                        #   in Loop: Header=BB32_200 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB32_203:                             # %cond.end.960
                                        #   in Loop: Header=BB32_200 Depth=2
	movl	-348(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#204:                               # %do.cond.965
                                        #   in Loop: Header=BB32_200 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_200
# BB#205:                               # %do.end.967
                                        #   in Loop: Header=BB32_195 Depth=1
	jmp	.LBB32_213
.LBB32_206:                             # %if.else.968
                                        #   in Loop: Header=BB32_195 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-209(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-210(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -72(%rbp)
	cvtss2sd	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
.LBB32_207:                             # %do.body.976
                                        #   Parent Loop BB32_195 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_209
# BB#208:                               # %cond.true.981
                                        #   in Loop: Header=BB32_207 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-72(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI32_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %sil
	movzbl	%sil, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB32_210
.LBB32_209:                             # %cond.false.997
                                        #   in Loop: Header=BB32_207 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB32_210:                             # %cond.end.1001
                                        #   in Loop: Header=BB32_207 Depth=2
	movl	-352(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#211:                               # %do.cond.1006
                                        #   in Loop: Header=BB32_207 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_207
# BB#212:                               # %do.end.1008
                                        #   in Loop: Header=BB32_195 Depth=1
	jmp	.LBB32_213
.LBB32_213:                             # %if.end.1009
                                        #   in Loop: Header=BB32_195 Depth=1
	jmp	.LBB32_214
.LBB32_214:                             # %if.end.1010
                                        #   in Loop: Header=BB32_195 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB32_219
# BB#215:                               # %if.then.1012
                                        #   in Loop: Header=BB32_195 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_217
# BB#216:                               # %cond.true.1016
                                        #   in Loop: Header=BB32_195 Depth=1
	movzbl	-210(%rbp), %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB32_218
.LBB32_217:                             # %cond.false.1018
                                        #   in Loop: Header=BB32_195 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB32_218:                             # %cond.end.1022
                                        #   in Loop: Header=BB32_195 Depth=1
	movl	-356(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB32_226
.LBB32_219:                             # %if.else.1027
                                        #   in Loop: Header=BB32_195 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB32_221
# BB#220:                               # %cond.true.1032
                                        #   in Loop: Header=BB32_195 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB32_225
.LBB32_221:                             # %cond.false.1036
                                        #   in Loop: Header=BB32_195 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_223
# BB#222:                               # %cond.true.1040
                                        #   in Loop: Header=BB32_195 Depth=1
	movzbl	-210(%rbp), %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB32_224
.LBB32_223:                             # %cond.false.1042
                                        #   in Loop: Header=BB32_195 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB32_224:                             # %cond.end.1046
                                        #   in Loop: Header=BB32_195 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB32_225:                             # %cond.end.1048
                                        #   in Loop: Header=BB32_195 Depth=1
	movl	-360(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB32_226:                             # %if.end.1053
                                        #   in Loop: Header=BB32_195 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-60(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB32_195
.LBB32_227:                             # %while.end.1061
	jmp	.LBB32_228
.LBB32_228:                             # %if.end.1062
	jmp	.LBB32_299
.LBB32_229:                             # %if.else.1063
	cmpl	$255, -36(%rbp)
	jne	.LBB32_264
# BB#230:                               # %if.then.1066
	jmp	.LBB32_231
.LBB32_231:                             # %while.cond.1067
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_236 Depth 2
                                        #     Child Loop BB32_243 Depth 2
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, %eax
	je	.LBB32_263
# BB#232:                               # %while.body.1070
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	$255, %eax
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movb	%dil, -225(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %r8
	movzbl	(%r8,%rsi), %ecx
	subl	%ecx, %eax
	movzbl	-225(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movslq	%eax, %rsi
	movq	%rsi, -224(%rbp)
	movq	-224(%rbp), %rsi
	shrq	$8, %rsi
	addq	-224(%rbp), %rsi
	shrq	$8, %rsi
	addq	%rsi, %rdx
	movb	%dl, %dil
	movb	%dil, -226(%rbp)
	movzbl	-225(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_250
# BB#233:                               # %land.lhs.true.1098
                                        #   in Loop: Header=BB32_231 Depth=1
	movzbl	-226(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_250
# BB#234:                               # %if.then.1102
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	movzbl	-225(%rbp), %eax
	movzbl	-226(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB32_242
# BB#235:                               # %if.then.1107
                                        #   in Loop: Header=BB32_231 Depth=1
	jmp	.LBB32_236
.LBB32_236:                             # %do.body.1108
                                        #   Parent Loop BB32_231 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_238
# BB#237:                               # %cond.true.1113
                                        #   in Loop: Header=BB32_236 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB32_239
.LBB32_238:                             # %cond.false.1117
                                        #   in Loop: Header=BB32_236 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB32_239:                             # %cond.end.1121
                                        #   in Loop: Header=BB32_236 Depth=2
	movl	-368(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#240:                               # %do.cond.1126
                                        #   in Loop: Header=BB32_236 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_236
# BB#241:                               # %do.end.1128
                                        #   in Loop: Header=BB32_231 Depth=1
	jmp	.LBB32_249
.LBB32_242:                             # %if.else.1129
                                        #   in Loop: Header=BB32_231 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-225(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-226(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -72(%rbp)
	cvtss2sd	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
.LBB32_243:                             # %do.body.1137
                                        #   Parent Loop BB32_231 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_245
# BB#244:                               # %cond.true.1142
                                        #   in Loop: Header=BB32_243 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-72(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI32_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %sil
	movzbl	%sil, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jmp	.LBB32_246
.LBB32_245:                             # %cond.false.1158
                                        #   in Loop: Header=BB32_243 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB32_246:                             # %cond.end.1162
                                        #   in Loop: Header=BB32_243 Depth=2
	movl	-372(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#247:                               # %do.cond.1167
                                        #   in Loop: Header=BB32_243 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_243
# BB#248:                               # %do.end.1169
                                        #   in Loop: Header=BB32_231 Depth=1
	jmp	.LBB32_249
.LBB32_249:                             # %if.end.1170
                                        #   in Loop: Header=BB32_231 Depth=1
	jmp	.LBB32_250
.LBB32_250:                             # %if.end.1171
                                        #   in Loop: Header=BB32_231 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB32_255
# BB#251:                               # %if.then.1173
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_253
# BB#252:                               # %cond.true.1177
                                        #   in Loop: Header=BB32_231 Depth=1
	movzbl	-226(%rbp), %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB32_254
.LBB32_253:                             # %cond.false.1179
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB32_254:                             # %cond.end.1183
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	-376(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB32_262
.LBB32_255:                             # %if.else.1188
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB32_257
# BB#256:                               # %cond.true.1193
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB32_261
.LBB32_257:                             # %cond.false.1197
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_259
# BB#258:                               # %cond.true.1201
                                        #   in Loop: Header=BB32_231 Depth=1
	movzbl	-226(%rbp), %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB32_260
.LBB32_259:                             # %cond.false.1203
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB32_260:                             # %cond.end.1207
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB32_261:                             # %cond.end.1209
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	-380(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB32_262:                             # %if.end.1214
                                        #   in Loop: Header=BB32_231 Depth=1
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB32_231
.LBB32_263:                             # %while.end.1221
	jmp	.LBB32_298
.LBB32_264:                             # %if.else.1222
	jmp	.LBB32_265
.LBB32_265:                             # %while.cond.1223
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_270 Depth 2
                                        #     Child Loop BB32_277 Depth 2
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, %eax
	je	.LBB32_297
# BB#266:                               # %while.body.1226
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	$255, %eax
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	-36(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdx, -240(%rbp)
	movq	-240(%rbp), %rdx
	shrq	$8, %rdx
	addq	-240(%rbp), %rdx
	shrq	$8, %rdx
	movb	%dl, %dil
	movb	%dil, -241(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %r8
	movzbl	(%r8,%rsi), %ecx
	subl	%ecx, %eax
	movzbl	-241(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movslq	%eax, %rsi
	movq	%rsi, -240(%rbp)
	movq	-240(%rbp), %rsi
	shrq	$8, %rsi
	addq	-240(%rbp), %rsi
	shrq	$8, %rsi
	addq	%rsi, %rdx
	movb	%dl, %dil
	movb	%dil, -242(%rbp)
	movzbl	-241(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_284
# BB#267:                               # %land.lhs.true.1262
                                        #   in Loop: Header=BB32_265 Depth=1
	movzbl	-242(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB32_284
# BB#268:                               # %if.then.1266
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	movzbl	-241(%rbp), %eax
	movzbl	-242(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB32_276
# BB#269:                               # %if.then.1271
                                        #   in Loop: Header=BB32_265 Depth=1
	jmp	.LBB32_270
.LBB32_270:                             # %do.body.1272
                                        #   Parent Loop BB32_265 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_272
# BB#271:                               # %cond.true.1277
                                        #   in Loop: Header=BB32_270 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB32_273
.LBB32_272:                             # %cond.false.1281
                                        #   in Loop: Header=BB32_270 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB32_273:                             # %cond.end.1285
                                        #   in Loop: Header=BB32_270 Depth=2
	movl	-388(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#274:                               # %do.cond.1290
                                        #   in Loop: Header=BB32_270 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_270
# BB#275:                               # %do.end.1292
                                        #   in Loop: Header=BB32_265 Depth=1
	jmp	.LBB32_283
.LBB32_276:                             # %if.else.1293
                                        #   in Loop: Header=BB32_265 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-241(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-242(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -72(%rbp)
	cvtss2sd	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
.LBB32_277:                             # %do.body.1301
                                        #   Parent Loop BB32_265 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_279
# BB#278:                               # %cond.true.1306
                                        #   in Loop: Header=BB32_277 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-72(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI32_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %sil
	movzbl	%sil, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB32_280
.LBB32_279:                             # %cond.false.1322
                                        #   in Loop: Header=BB32_277 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB32_280:                             # %cond.end.1326
                                        #   in Loop: Header=BB32_277 Depth=2
	movl	-392(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#281:                               # %do.cond.1331
                                        #   in Loop: Header=BB32_277 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB32_277
# BB#282:                               # %do.end.1333
                                        #   in Loop: Header=BB32_265 Depth=1
	jmp	.LBB32_283
.LBB32_283:                             # %if.end.1334
                                        #   in Loop: Header=BB32_265 Depth=1
	jmp	.LBB32_284
.LBB32_284:                             # %if.end.1335
                                        #   in Loop: Header=BB32_265 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB32_289
# BB#285:                               # %if.then.1337
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_287
# BB#286:                               # %cond.true.1341
                                        #   in Loop: Header=BB32_265 Depth=1
	movzbl	-242(%rbp), %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB32_288
.LBB32_287:                             # %cond.false.1343
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB32_288:                             # %cond.end.1347
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	-396(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB32_296
.LBB32_289:                             # %if.else.1352
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB32_291
# BB#290:                               # %cond.true.1357
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	jmp	.LBB32_295
.LBB32_291:                             # %cond.false.1361
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB32_293
# BB#292:                               # %cond.true.1365
                                        #   in Loop: Header=BB32_265 Depth=1
	movzbl	-242(%rbp), %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB32_294
.LBB32_293:                             # %cond.false.1367
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB32_294:                             # %cond.end.1371
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -400(%rbp)        # 4-byte Spill
.LBB32_295:                             # %cond.end.1373
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	-400(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB32_296:                             # %if.end.1378
                                        #   in Loop: Header=BB32_265 Depth=1
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB32_265
.LBB32_297:                             # %while.end.1385
	jmp	.LBB32_298
.LBB32_298:                             # %if.end.1386
	jmp	.LBB32_299
.LBB32_299:                             # %if.end.1387
	addq	$280, %rsp              # imm = 0x118
	popq	%rbp
	retq
.Lfunc_end32:
	.size	combine_inten_a_and_inten_a_pixels, .Lfunc_end32-combine_inten_a_and_inten_a_pixels
	.cfi_endproc

	.globl	combine_inten_a_and_channel_mask_pixels
	.align	16, 0x90
	.type	combine_inten_a_and_channel_mask_pixels,@function
combine_inten_a_and_channel_mask_pixels: # @combine_inten_a_and_channel_mask_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB33_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_6 Depth 2
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, %eax
	je	.LBB33_12
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	$255, %eax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	%edx, %eax
	imull	-36(%rbp), %eax
	addl	$128, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	shrq	$8, %rcx
	addq	-56(%rbp), %rcx
	shrq	$8, %rcx
	movb	%cl, %sil
	movb	%sil, -57(%rbp)
	cmpb	$0, -57(%rbp)
	je	.LBB33_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	$255, %eax
	movslq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	movslq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rdx), %esi
	subl	%esi, %eax
	movzbl	-57(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	shrq	$8, %rdx
	addq	-56(%rbp), %rdx
	shrq	$8, %rdx
	addq	%rdx, %rcx
	movb	%cl, %r8b
	movb	%r8b, -73(%rbp)
	movzbl	-73(%rbp), %eax
	cmpl	$255, %eax
	je	.LBB33_5
# BB#4:                                 # %if.then.23
                                        #   in Loop: Header=BB33_1 Depth=1
	movzbl	-57(%rbp), %eax
	imull	$255, %eax, %eax
	movzbl	-73(%rbp), %ecx
	cltd
	idivl	%ecx
	movb	%al, %sil
	movb	%sil, -57(%rbp)
.LBB33_5:                               # %if.end
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	$255, %eax
	movzbl	-57(%rbp), %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -74(%rbp)
	movl	$0, -80(%rbp)
.LBB33_6:                               # %for.cond
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB33_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB33_6 Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movzbl	-57(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	shrq	$8, %rcx
	addq	-56(%rbp), %rcx
	shrq	$8, %rcx
	movl	-80(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rdx), %eax
	movzbl	-74(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rdx
	shrq	$8, %rdx
	addq	-72(%rbp), %rdx
	shrq	$8, %rdx
	addq	%rdx, %rcx
	movb	%cl, %r8b
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	%r8b, (%rdx,%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB33_6 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB33_6
.LBB33_9:                               # %for.end
                                        #   in Loop: Header=BB33_1 Depth=1
	movb	-73(%rbp), %al
	movl	-80(%rbp), %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
	jmp	.LBB33_11
.LBB33_10:                              # %if.else
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	callq	memcpy
.LBB33_11:                              # %if.end.60
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB33_1
.LBB33_12:                              # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	combine_inten_a_and_channel_mask_pixels, .Lfunc_end33-combine_inten_a_and_channel_mask_pixels
	.cfi_endproc

	.globl	combine_inten_a_and_channel_selection_pixels
	.align	16, 0x90
	.type	combine_inten_a_and_channel_selection_pixels,@function
combine_inten_a_and_channel_selection_pixels: # @combine_inten_a_and_channel_selection_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB34_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_6 Depth 2
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, %eax
	je	.LBB34_12
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	-36(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	shrq	$8, %rax
	addq	-56(%rbp), %rax
	shrq	$8, %rax
	movb	%al, %dl
	movb	%dl, -57(%rbp)
	cmpb	$0, -57(%rbp)
	je	.LBB34_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$255, %eax
	movslq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	movslq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rdx), %esi
	subl	%esi, %eax
	movzbl	-57(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	shrq	$8, %rdx
	addq	-56(%rbp), %rdx
	shrq	$8, %rdx
	addq	%rdx, %rcx
	movb	%cl, %r8b
	movb	%r8b, -73(%rbp)
	movzbl	-73(%rbp), %eax
	cmpl	$255, %eax
	je	.LBB34_5
# BB#4:                                 # %if.then.22
                                        #   in Loop: Header=BB34_1 Depth=1
	movzbl	-57(%rbp), %eax
	imull	$255, %eax, %eax
	movzbl	-73(%rbp), %ecx
	cltd
	idivl	%ecx
	movb	%al, %sil
	movb	%sil, -57(%rbp)
.LBB34_5:                               # %if.end
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$255, %eax
	movzbl	-57(%rbp), %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -74(%rbp)
	movl	$0, -80(%rbp)
.LBB34_6:                               # %for.cond
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB34_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB34_6 Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movzbl	-57(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	shrq	$8, %rcx
	addq	-56(%rbp), %rcx
	shrq	$8, %rcx
	movl	-80(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rdx), %eax
	movzbl	-74(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rdx
	shrq	$8, %rdx
	addq	-72(%rbp), %rdx
	shrq	$8, %rdx
	addq	%rdx, %rcx
	movb	%cl, %r8b
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	%r8b, (%rdx,%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB34_6 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB34_6
.LBB34_9:                               # %for.end
                                        #   in Loop: Header=BB34_1 Depth=1
	movb	-73(%rbp), %al
	movl	-80(%rbp), %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
	jmp	.LBB34_11
.LBB34_10:                              # %if.else
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	callq	memcpy
.LBB34_11:                              # %if.end.59
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB34_1
.LBB34_12:                              # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	combine_inten_a_and_channel_selection_pixels, .Lfunc_end34-combine_inten_a_and_channel_selection_pixels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI35_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	paint_funcs_color_erase_helper
	.align	16, 0x90
	.type	paint_funcs_color_erase_helper,@function
paint_funcs_color_erase_helper:         # @paint_funcs_color_erase_helper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -24(%rbp)
	movq	-16(%rbp), %rsi
	ucomisd	(%rsi), %xmm0
	jbe	.LBB35_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB35_9
.LBB35_2:                               # %if.else
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB35_4
# BB#3:                                 # %if.then.7
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm1
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB35_8
.LBB35_4:                               # %if.else.13
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_6
# BB#5:                                 # %if.then.17
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	(%rax), %xmm0
	movq	-16(%rbp), %rax
	divsd	(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.24
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.26
	jmp	.LBB35_9
.LBB35_9:                               # %if.end.27
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB35_11
# BB#10:                                # %if.then.29
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB35_18
.LBB35_11:                              # %if.else.32
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB35_13
# BB#12:                                # %if.then.36
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm1
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	jmp	.LBB35_17
.LBB35_13:                              # %if.else.44
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_15
# BB#14:                                # %if.then.48
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	8(%rax), %xmm0
	movq	-16(%rbp), %rax
	divsd	8(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB35_16
.LBB35_15:                              # %if.else.55
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB35_16:                              # %if.end.57
	jmp	.LBB35_17
.LBB35_17:                              # %if.end.58
	jmp	.LBB35_18
.LBB35_18:                              # %if.end.59
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB35_20
# BB#19:                                # %if.then.61
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB35_27
.LBB35_20:                              # %if.else.64
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB35_22
# BB#21:                                # %if.then.68
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	16(%rax), %xmm1
	movq	-16(%rbp), %rax
	subsd	16(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	jmp	.LBB35_26
.LBB35_22:                              # %if.else.76
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_24
# BB#23:                                # %if.then.80
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm0
	movq	-16(%rbp), %rax
	divsd	16(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB35_25
.LBB35_24:                              # %if.else.87
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB35_25:                              # %if.end.89
	jmp	.LBB35_26
.LBB35_26:                              # %if.end.90
	jmp	.LBB35_27
.LBB35_27:                              # %if.end.91
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB35_32
# BB#28:                                # %if.then.95
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB35_30
# BB#29:                                # %if.then.99
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	jmp	.LBB35_31
.LBB35_30:                              # %if.else.102
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB35_31:                              # %if.end.105
	jmp	.LBB35_36
.LBB35_32:                              # %if.else.106
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB35_34
# BB#33:                                # %if.then.110
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	jmp	.LBB35_35
.LBB35_34:                              # %if.else.113
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB35_35:                              # %if.end.116
	jmp	.LBB35_36
.LBB35_36:                              # %if.end.117
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI35_1, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	24(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	24(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 24(%rax)
	movq	-8(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jbe	.LBB35_38
# BB#37:                                # %if.then.125
	jmp	.LBB35_39
.LBB35_38:                              # %if.end.126
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	24(%rax), %xmm0
	movq	-16(%rbp), %rax
	addsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	24(%rax), %xmm0
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	24(%rax), %xmm0
	movq	-16(%rbp), %rax
	addsd	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	24(%rax), %xmm0
	movsd	%xmm0, 24(%rax)
.LBB35_39:                              # %return
	popq	%rbp
	retq
.Lfunc_end35:
	.size	paint_funcs_color_erase_helper, .Lfunc_end35-paint_funcs_color_erase_helper
	.cfi_endproc

	.globl	extract_from_inten_pixels
	.align	16, 0x90
	.type	extract_from_inten_pixels,@function
extract_from_inten_pixels:              # @extract_from_inten_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB36_2
# BB#1:                                 # %cond.true
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB36_3
.LBB36_2:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB36_3:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB36_5
# BB#4:                                 # %cond.true.2
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB36_6
.LBB36_5:                               # %cond.false.3
	movabsq	$no_mask, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB36_6
.LBB36_6:                               # %cond.end.4
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
.LBB36_7:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_9 Depth 2
                                        #     Child Loop BB36_20 Depth 2
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, %eax
	je	.LBB36_28
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	$0, -68(%rbp)
.LBB36_9:                               # %for.cond
                                        #   Parent Loop BB36_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB36_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB36_9 Depth=2
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-68(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB36_9 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB36_9
.LBB36_12:                              # %for.end
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB36_16
# BB#13:                                # %if.then
                                        #   in Loop: Header=BB36_7 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	$128, %ecx
	movl	%ecx, -72(%rbp)
	movl	-72(%rbp), %ecx
	sarl	$8, %ecx
	addl	-72(%rbp), %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rdx
	movb	%dil, (%rdx,%rax)
	cmpl	$0, -36(%rbp)
	je	.LBB36_15
# BB#14:                                # %if.then.21
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	$255, %eax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	%edx, %eax
	movslq	-52(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	imull	%edx, %eax
	addl	$128, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	sarl	$8, %eax
	addl	-72(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %dil
	movslq	-52(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movb	%dil, (%rsi,%rcx)
.LBB36_15:                              # %if.end
                                        #   in Loop: Header=BB36_7 Depth=1
	jmp	.LBB36_25
.LBB36_16:                              # %if.else
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	-48(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB36_18
# BB#17:                                # %if.then.38
                                        #   in Loop: Header=BB36_7 Depth=1
	movq	-64(%rbp), %rax
	movb	(%rax), %cl
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
.LBB36_18:                              # %if.end.41
                                        #   in Loop: Header=BB36_7 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB36_24
# BB#19:                                # %if.then.43
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	$0, -68(%rbp)
.LBB36_20:                              # %for.cond.44
                                        #   Parent Loop BB36_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB36_23
# BB#21:                                # %for.body.47
                                        #   in Loop: Header=BB36_20 Depth=2
	movslq	-68(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movq	-64(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	$128, %edx
	movl	%edx, -72(%rbp)
	movl	-72(%rbp), %edx
	sarl	$8, %edx
	addl	-72(%rbp), %edx
	sarl	$8, %edx
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	%esi, %edx
	movb	%dl, %dil
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%dil, (%rcx,%rax)
# BB#22:                                # %for.inc.68
                                        #   in Loop: Header=BB36_20 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB36_20
.LBB36_23:                              # %for.end.70
                                        #   in Loop: Header=BB36_7 Depth=1
	jmp	.LBB36_24
.LBB36_24:                              # %if.end.71
                                        #   in Loop: Header=BB36_7 Depth=1
	jmp	.LBB36_25
.LBB36_25:                              # %if.end.72
                                        #   in Loop: Header=BB36_7 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB36_27
# BB#26:                                # %if.then.74
                                        #   in Loop: Header=BB36_7 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB36_27:                              # %if.end.75
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB36_7
.LBB36_28:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end36:
	.size	extract_from_inten_pixels, .Lfunc_end36-extract_from_inten_pixels
	.cfi_endproc

	.globl	extract_from_indexed_pixels
	.align	16, 0x90
	.type	extract_from_indexed_pixels,@function
extract_from_indexed_pixels:            # @extract_from_indexed_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%r11d, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB37_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB37_3
.LBB37_2:                               # %cond.false
	movabsq	$no_mask, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB37_3
.LBB37_3:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
.LBB37_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_6 Depth 2
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, %eax
	je	.LBB37_24
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -76(%rbp)
	movl	$0, -68(%rbp)
.LBB37_6:                               # %for.cond
                                        #   Parent Loop BB37_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -68(%rbp)
	jge	.LBB37_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB37_6 Depth=2
	movl	-76(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-68(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB37_6 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB37_6
.LBB37_9:                               # %for.end
                                        #   in Loop: Header=BB37_4 Depth=1
	movl	-52(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB37_13
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -72(%rbp)
	movl	-72(%rbp), %ecx
	sarl	$8, %ecx
	addl	-72(%rbp), %ecx
	sarl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 3(%rax)
	cmpl	$0, -44(%rbp)
	je	.LBB37_12
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB37_4 Depth=1
	movl	$255, %eax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	%edx, %eax
	movq	-8(%rbp), %rcx
	movzbl	1(%rcx), %edx
	imull	%edx, %eax
	addl	$128, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	sarl	$8, %eax
	addl	-72(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %sil
	movq	-8(%rbp), %rcx
	movb	%sil, 1(%rcx)
.LBB37_12:                              # %if.end
                                        #   in Loop: Header=BB37_4 Depth=1
	jmp	.LBB37_21
.LBB37_13:                              # %if.else
                                        #   in Loop: Header=BB37_4 Depth=1
	movl	-56(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB37_15
# BB#14:                                # %if.then.31
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	-64(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB37_15:                              # %if.end.33
                                        #   in Loop: Header=BB37_4 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB37_20
# BB#16:                                # %if.then.35
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$127, %ecx
	jle	.LBB37_18
# BB#17:                                # %cond.true.39
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB37_19
.LBB37_18:                              # %cond.false.42
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB37_19:                              # %cond.end.45
                                        #   in Loop: Header=BB37_4 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB37_20:                              # %if.end.49
                                        #   in Loop: Header=BB37_4 Depth=1
	jmp	.LBB37_21
.LBB37_21:                              # %if.end.50
                                        #   in Loop: Header=BB37_4 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB37_23
# BB#22:                                # %if.then.52
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB37_23:                              # %if.end.53
                                        #   in Loop: Header=BB37_4 Depth=1
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB37_4
.LBB37_24:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end37:
	.size	extract_from_indexed_pixels, .Lfunc_end37-extract_from_indexed_pixels
	.cfi_endproc

	.globl	clear_region
	.align	16, 0x90
	.type	clear_region,@function
clear_region:                           # @clear_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -16(%rbp)
.LBB38_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_5 Depth 2
	cmpq	$0, -16(%rbp)
	je	.LBB38_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	52(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	32(%rax), %ecx
	jne	.LBB38_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB38_1 Depth=1
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	48(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	52(%rax), %ecx
	movslq	%ecx, %rdx
	callq	memset
	jmp	.LBB38_8
.LBB38_4:                               # %if.else
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB38_5:                               # %while.cond
                                        #   Parent Loop BB38_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB38_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB38_5 Depth=2
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	52(%rax), %ecx
	movslq	%ecx, %rdx
	callq	memset
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB38_5
.LBB38_7:                               # %while.end
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_8
.LBB38_8:                               # %if.end
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_9
.LBB38_9:                               # %for.inc
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -16(%rbp)
	jmp	.LBB38_1
.LBB38_10:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	clear_region, .Lfunc_end38-clear_region
	.cfi_endproc

	.globl	color_region
	.align	16, 0x90
	.type	color_region,@function
color_region:                           # @color_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -24(%rbp)
.LBB39_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_5 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB39_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	52(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	32(%rax), %ecx
	jne	.LBB39_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	imull	-36(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movl	%edx, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-40(%rbp), %ecx         # 4-byte Reload
	callq	color_pixels
	jmp	.LBB39_8
.LBB39_4:                               # %if.else
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_5
.LBB39_5:                               # %while.cond
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB39_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB39_5 Depth=2
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	callq	color_pixels
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB39_5
.LBB39_7:                               # %while.end
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_8
.LBB39_8:                               # %if.end
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_9
.LBB39_9:                               # %for.inc
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -24(%rbp)
	jmp	.LBB39_1
.LBB39_10:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	color_region, .Lfunc_end39-color_region
	.cfi_endproc

	.globl	color_region_mask
	.align	16, 0x90
	.type	color_region_mask,@function
color_region_mask:                      # @color_region_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -32(%rbp)
.LBB40_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_6 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB40_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	52(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	32(%rax), %ecx
	jne	.LBB40_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	52(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	32(%rax), %ecx
	jne	.LBB40_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	imull	-52(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	52(%rax), %r8d
	callq	color_pixels_mask
	jmp	.LBB40_9
.LBB40_5:                               # %if.else
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_6
.LBB40_6:                               # %while.cond
                                        #   Parent Loop BB40_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB40_8
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB40_6 Depth=2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	52(%rax), %r8d
	callq	color_pixels_mask
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB40_6
.LBB40_8:                               # %while.end
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_9
.LBB40_9:                               # %if.end
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_10
.LBB40_10:                              # %for.inc
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -32(%rbp)
	jmp	.LBB40_1
.LBB40_11:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	color_region_mask, .Lfunc_end40-color_region_mask
	.cfi_endproc

	.globl	pattern_region
	.align	16, 0x90
	.type	pattern_region,@function
pattern_region:                         # @pattern_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -40(%rbp)
.LBB41_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_6 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB41_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB41_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB41_5
.LBB41_4:                               # %cond.false
                                        #   in Loop: Header=BB41_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB41_5
.LBB41_5:                               # %cond.end
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB41_6:                               # %for.cond.2
                                        #   Parent Loop BB41_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB41_11
# BB#7:                                 # %for.body.4
                                        #   in Loop: Header=BB41_6 Depth=2
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	52(%rax), %r8d
	movl	-28(%rbp), %r9d
	movq	-8(%rbp), %rax
	addl	36(%rax), %r9d
	movl	-32(%rbp), %r10d
	movq	-8(%rbp), %rax
	addl	40(%rax), %r10d
	addl	-60(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	pattern_pixels_mask
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB41_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB41_6 Depth=2
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
.LBB41_9:                               # %if.end
                                        #   in Loop: Header=BB41_6 Depth=2
	jmp	.LBB41_10
.LBB41_10:                              # %for.inc
                                        #   in Loop: Header=BB41_6 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB41_6
.LBB41_11:                              # %for.end
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_12
.LBB41_12:                              # %for.inc.12
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -40(%rbp)
	jmp	.LBB41_1
.LBB41_13:                              # %for.end.14
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	pattern_region, .Lfunc_end41-pattern_region
	.cfi_endproc

	.globl	blend_region
	.align	16, 0x90
	.type	blend_region,@function
blend_region:                           # @blend_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%cl, %al
	movl	$3, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -40(%rbp)
.LBB42_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_3 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB42_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -68(%rbp)
.LBB42_3:                               # %while.cond
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB42_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB42_3 Depth=2
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movb	-25(%rbp), %al
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %r8d
	movq	-8(%rbp), %rcx
	movl	52(%rcx), %r9d
	movzbl	%al, %ecx
	callq	blend_pixels
	movq	-8(%rbp), %rdx
	movl	32(%rdx), %ecx
	movq	-48(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdx
	movl	32(%rdx), %ecx
	movq	-56(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movl	32(%rdx), %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	jmp	.LBB42_3
.LBB42_5:                               # %while.end
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_6
.LBB42_6:                               # %for.inc
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -40(%rbp)
	jmp	.LBB42_1
.LBB42_7:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	blend_region, .Lfunc_end42-blend_region
	.cfi_endproc

	.globl	shade_region
	.align	16, 0x90
	.type	shade_region,@function
shade_region:                           # @shade_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %ecx
	movl	%ecx, -52(%rbp)
.LBB43_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB43_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	-25(%rbp), %al
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %r8d
	movq	-8(%rbp), %rcx
	movl	52(%rcx), %r9d
	movzbl	%al, %ecx
	callq	blend_pixels
	movq	-8(%rbp), %rdx
	movl	32(%rdx), %ecx
	movq	-40(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movl	32(%rdx), %ecx
	movq	-48(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -48(%rbp)
	jmp	.LBB43_1
.LBB43_3:                               # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	shade_region, .Lfunc_end43-shade_region
	.cfi_endproc

	.globl	copy_region
	.align	16, 0x90
	.type	copy_region,@function
copy_region:                            # @copy_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -24(%rbp)
.LBB44_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_16 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB44_21
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB44_15
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB44_15
# BB#4:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB44_15
# BB#5:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB44_15
# BB#6:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB44_15
# BB#7:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB44_15
# BB#8:                                 # %land.lhs.true.13
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB44_15
# BB#9:                                 # %land.lhs.true.15
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB44_15
# BB#10:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	tile_ewidth
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB44_15
# BB#11:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	callq	tile_ewidth
	movl	-56(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB44_15
# BB#12:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	tile_eheight
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB44_15
# BB#13:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	callq	tile_eheight
	movl	-64(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB44_15
# BB#14:                                # %if.then
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	callq	tile_manager_map_over_tile
	jmp	.LBB44_19
.LBB44_15:                              # %if.else
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	52(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB44_16:                              # %while.cond
                                        #   Parent Loop BB44_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB44_18
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB44_16 Depth=2
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
	movq	-8(%rbp), %rdx
	movl	32(%rdx), %eax
	movq	-32(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movl	32(%rdx), %eax
	movq	-40(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -40(%rbp)
	jmp	.LBB44_16
.LBB44_18:                              # %while.end
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_19
.LBB44_19:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_20
.LBB44_20:                              # %for.inc
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -24(%rbp)
	jmp	.LBB44_1
.LBB44_21:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	copy_region, .Lfunc_end44-copy_region
	.cfi_endproc

	.globl	copy_region_nocow
	.align	16, 0x90
	.type	copy_region_nocow,@function
copy_region_nocow:                      # @copy_region_nocow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -24(%rbp)
.LBB45_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_3 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB45_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	52(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB45_3:                               # %while.cond
                                        #   Parent Loop BB45_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, %eax
	je	.LBB45_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB45_3 Depth=2
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movslq	-44(%rbp), %rdx
	callq	memcpy
	movq	-8(%rbp), %rdx
	movl	32(%rdx), %eax
	movq	-32(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movl	32(%rdx), %eax
	movq	-40(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -40(%rbp)
	jmp	.LBB45_3
.LBB45_5:                               # %while.end
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_6
.LBB45_6:                               # %for.inc
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -24(%rbp)
	jmp	.LBB45_1
.LBB45_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	copy_region_nocow, .Lfunc_end45-copy_region_nocow
	.cfi_endproc

	.globl	add_alpha_region
	.align	16, 0x90
	.type	add_alpha_region,@function
add_alpha_region:                       # @add_alpha_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -24(%rbp)
.LBB46_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_3 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB46_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB46_3:                               # %while.cond
                                        #   Parent Loop BB46_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB46_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB46_3 Depth=2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	callq	add_alpha_pixels
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB46_3
.LBB46_5:                               # %while.end
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_6
.LBB46_6:                               # %for.inc
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -24(%rbp)
	jmp	.LBB46_1
.LBB46_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	add_alpha_region, .Lfunc_end46-add_alpha_region
	.cfi_endproc

	.globl	flatten_region
	.align	16, 0x90
	.type	flatten_region,@function
flatten_region:                         # @flatten_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -32(%rbp)
.LBB47_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_3 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB47_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB47_3:                               # %while.cond
                                        #   Parent Loop BB47_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB47_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB47_3 Depth=2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	52(%rax), %r8d
	callq	flatten_pixels
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB47_3
.LBB47_5:                               # %while.end
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_6
.LBB47_6:                               # %for.inc
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -32(%rbp)
	jmp	.LBB47_1
.LBB47_7:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	flatten_region, .Lfunc_end47-flatten_region
	.cfi_endproc

	.globl	extract_alpha_region
	.align	16, 0x90
	.type	extract_alpha_region,@function
extract_alpha_region:                   # @extract_alpha_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$3, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -32(%rbp)
.LBB48_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_6 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB48_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB48_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB48_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB48_5
.LBB48_4:                               # %cond.false
                                        #   in Loop: Header=BB48_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB48_5
.LBB48_5:                               # %cond.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -60(%rbp)
.LBB48_6:                               # %while.cond
                                        #   Parent Loop BB48_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	je	.LBB48_10
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB48_6 Depth=2
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	52(%rax), %r8d
	callq	extract_alpha_pixels
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB48_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB48_6 Depth=2
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.LBB48_9:                               # %if.end
                                        #   in Loop: Header=BB48_6 Depth=2
	jmp	.LBB48_6
.LBB48_10:                              # %while.end
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_11
.LBB48_11:                              # %for.inc
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -32(%rbp)
	jmp	.LBB48_1
.LBB48_12:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	extract_alpha_region, .Lfunc_end48-extract_alpha_region
	.cfi_endproc

	.globl	extract_from_region
	.align	16, 0x90
	.type	extract_from_region,@function
extract_from_region:                    # @extract_from_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$136, %rsp
.Ltmp150:
	.cfi_offset %rbx, -24
	movl	16(%rbp), %eax
	movl	$3, %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	%r10d, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -64(%rbp)
.LBB49_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_6 Depth 2
	cmpq	$0, -64(%rbp)
	je	.LBB49_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB49_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB49_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB49_5
.LBB49_4:                               # %cond.false
                                        #   in Loop: Header=BB49_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB49_5
.LBB49_5:                               # %cond.end
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -92(%rbp)
.LBB49_6:                               # %while.cond
                                        #   Parent Loop BB49_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -92(%rbp)
	cmpl	$0, %eax
	je	.LBB49_13
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB49_6 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	jb	.LBB49_8
	jmp	.LBB49_16
.LBB49_16:                              # %while.body
                                        #   in Loop: Header=BB49_6 Depth=2
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB49_9
	jmp	.LBB49_10
.LBB49_8:                               # %sw.bb
                                        #   in Loop: Header=BB49_6 Depth=2
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-56(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	44(%rax), %r9d
	movq	-16(%rbp), %rax
	movl	52(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	extract_from_inten_pixels
	jmp	.LBB49_10
.LBB49_9:                               # %sw.bb.6
                                        #   in Loop: Header=BB49_6 Depth=2
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movl	-56(%rbp), %r9d
	movq	-16(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-16(%rbp), %rax
	movl	52(%rax), %r11d
	movq	-24(%rbp), %rax
	movl	52(%rax), %ebx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	extract_from_indexed_pixels
.LBB49_10:                              # %sw.epilog
                                        #   in Loop: Header=BB49_6 Depth=2
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-80(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB49_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB49_6 Depth=2
	movq	-32(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-72(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
.LBB49_12:                              # %if.end
                                        #   in Loop: Header=BB49_6 Depth=2
	jmp	.LBB49_6
.LBB49_13:                              # %while.end
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_14
.LBB49_14:                              # %for.inc
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -64(%rbp)
	jmp	.LBB49_1
.LBB49_15:                              # %for.end
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end49:
	.size	extract_from_region, .Lfunc_end49-extract_from_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI50_0:
	.quad	4643176031446892544     # double 255
.LCPI50_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	convolve_region
	.align	16, 0x90
	.type	convolve_region,@function
convolve_region:                        # @convolve_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -64(%rbp)
	movq	-8(%rbp), %rdx
	movl	52(%rdx), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -72(%rbp)
	movq	-8(%rbp), %rdx
	movl	32(%rdx), %ecx
	movl	%ecx, -76(%rbp)
	movl	-28(%rbp), %ecx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-292(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rsi
	movl	36(%rsi), %eax
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rsi
	movl	40(%rsi), %eax
	movl	%eax, -88(%rbp)
	movq	-8(%rbp), %rsi
	movl	36(%rsi), %eax
	movq	-8(%rbp), %rsi
	addl	44(%rsi), %eax
	subl	$1, %eax
	movl	%eax, -92(%rbp)
	movq	-8(%rbp), %rsi
	movl	40(%rsi), %eax
	movq	-8(%rbp), %rsi
	addl	48(%rsi), %eax
	subl	$1, %eax
	movl	%eax, -96(%rbp)
	cmpl	$2, -44(%rbp)
	jne	.LBB50_2
# BB#1:                                 # %if.then
	movl	$128, -108(%rbp)
	movl	$0, -44(%rbp)
	jmp	.LBB50_3
.LBB50_2:                               # %if.else
	movl	$0, -108(%rbp)
.LBB50_3:                               # %if.end
	movl	$0, -104(%rbp)
.LBB50_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_7 Depth 2
                                        #       Child Loop BB50_9 Depth 3
                                        #         Child Loop BB50_11 Depth 4
                                        #           Child Loop BB50_26 Depth 5
                                        #       Child Loop BB50_37 Depth 3
                                        #       Child Loop BB50_41 Depth 3
                                        #     Child Loop BB50_57 Depth 2
                                        #       Child Loop BB50_59 Depth 3
                                        #         Child Loop BB50_61 Depth 4
                                        #           Child Loop BB50_75 Depth 5
                                        #       Child Loop BB50_83 Depth 3
	movl	-104(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB50_100
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB50_4 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB50_56
# BB#6:                                 # %if.then.13
                                        #   in Loop: Header=BB50_4 Depth=1
	movl	$0, -100(%rbp)
.LBB50_7:                               # %for.cond.14
                                        #   Parent Loop BB50_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB50_9 Depth 3
                                        #         Child Loop BB50_11 Depth 4
                                        #           Child Loop BB50_26 Depth 5
                                        #       Child Loop BB50_37 Depth 3
                                        #       Child Loop BB50_41 Depth 3
	movl	-100(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB50_55
# BB#8:                                 # %for.body.17
                                        #   in Loop: Header=BB50_7 Depth=2
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)
	movq	%rcx, %rdi
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movl	-104(%rbp), %eax
	subl	-80(%rbp), %eax
	movl	%eax, -176(%rbp)
.LBB50_9:                               # %for.cond.19
                                        #   Parent Loop BB50_4 Depth=1
                                        #     Parent Loop BB50_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB50_11 Depth 4
                                        #           Child Loop BB50_26 Depth 5
	movl	-176(%rbp), %eax
	movl	-104(%rbp), %ecx
	addl	-80(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB50_34
# BB#10:                                # %for.body.22
                                        #   in Loop: Header=BB50_9 Depth=3
	movl	-100(%rbp), %eax
	subl	-80(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB50_11:                              # %for.cond.24
                                        #   Parent Loop BB50_4 Depth=1
                                        #     Parent Loop BB50_7 Depth=2
                                        #       Parent Loop BB50_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB50_26 Depth 5
	movl	-172(%rbp), %eax
	movl	-100(%rbp), %ecx
	addl	-80(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB50_32
# BB#12:                                # %for.body.27
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-172(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.LBB50_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-92(%rbp), %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB50_18
.LBB50_14:                              # %cond.false
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-172(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB50_16
# BB#15:                                # %cond.true.30
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-84(%rbp), %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB50_17
.LBB50_16:                              # %cond.false.31
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-172(%rbp), %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB50_17:                              # %cond.end
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB50_18:                              # %cond.end.32
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)
	movl	-176(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jle	.LBB50_20
# BB#19:                                # %cond.true.35
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-96(%rbp), %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB50_24
.LBB50_20:                              # %cond.false.36
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-176(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB50_22
# BB#21:                                # %cond.true.38
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-88(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB50_23
.LBB50_22:                              # %cond.false.39
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-176(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB50_23:                              # %cond.end.40
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB50_24:                              # %cond.end.42
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
	movq	-56(%rbp), %rcx
	movl	-188(%rbp), %eax
	imull	-76(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movl	-184(%rbp), %eax
	imull	-68(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -200(%rbp)
	movslq	-72(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -201(%rbp)
	cmpb	$0, -201(%rbp)
	je	.LBB50_30
# BB#25:                                # %if.then.48
                                        #   in Loop: Header=BB50_11 Depth=4
	movq	-128(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movzbl	-201(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -216(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-168(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movl	$0, -180(%rbp)
.LBB50_26:                              # %for.cond.53
                                        #   Parent Loop BB50_4 Depth=1
                                        #     Parent Loop BB50_7 Depth=2
                                        #       Parent Loop BB50_9 Depth=3
                                        #         Parent Loop BB50_11 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-180(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB50_29
# BB#27:                                # %for.body.56
                                        #   in Loop: Header=BB50_26 Depth=5
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-180(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-180(%rbp), %rax
	addsd	-160(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -160(%rbp,%rax,8)
# BB#28:                                # %for.inc
                                        #   in Loop: Header=BB50_26 Depth=5
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB50_26
.LBB50_29:                              # %for.end
                                        #   in Loop: Header=BB50_11 Depth=4
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-72(%rbp), %rax
	addsd	-160(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -160(%rbp,%rax,8)
.LBB50_30:                              # %if.end.68
                                        #   in Loop: Header=BB50_11 Depth=4
	jmp	.LBB50_31
.LBB50_31:                              # %for.inc.69
                                        #   in Loop: Header=BB50_11 Depth=4
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	movq	-128(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB50_11
.LBB50_32:                              # %for.end.71
                                        #   in Loop: Header=BB50_9 Depth=3
	jmp	.LBB50_33
.LBB50_33:                              # %for.inc.72
                                        #   in Loop: Header=BB50_9 Depth=3
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB50_9
.LBB50_34:                              # %for.end.74
                                        #   in Loop: Header=BB50_7 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB50_36
	jp	.LBB50_36
# BB#35:                                # %if.then.77
                                        #   in Loop: Header=BB50_7 Depth=2
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
.LBB50_36:                              # %if.end.78
                                        #   in Loop: Header=BB50_7 Depth=2
	movl	$0, -180(%rbp)
.LBB50_37:                              # %for.cond.79
                                        #   Parent Loop BB50_4 Depth=1
                                        #     Parent Loop BB50_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-180(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB50_40
# BB#38:                                # %for.body.82
                                        #   in Loop: Header=BB50_37 Depth=3
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-180(%rbp), %rax
	movsd	-160(%rbp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp,%rax,8)
# BB#39:                                # %for.inc.86
                                        #   in Loop: Header=BB50_37 Depth=3
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB50_37
.LBB50_40:                              # %for.end.88
                                        #   in Loop: Header=BB50_7 Depth=2
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-72(%rbp), %rax
	movsd	-160(%rbp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp,%rax,8)
	movl	$0, -180(%rbp)
.LBB50_41:                              # %for.cond.92
                                        #   Parent Loop BB50_4 Depth=1
                                        #     Parent Loop BB50_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-180(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB50_53
# BB#42:                                # %for.body.95
                                        #   in Loop: Header=BB50_41 Depth=3
	cvtsi2sdl	-108(%rbp), %xmm0
	movslq	-180(%rbp), %rax
	addsd	-160(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -160(%rbp,%rax,8)
	cmpl	$0, -44(%rbp)
	je	.LBB50_45
# BB#43:                                # %land.lhs.true
                                        #   in Loop: Header=BB50_41 Depth=3
	xorps	%xmm0, %xmm0
	movslq	-180(%rbp), %rax
	ucomisd	-160(%rbp,%rax,8), %xmm0
	jbe	.LBB50_45
# BB#44:                                # %if.then.106
                                        #   in Loop: Header=BB50_41 Depth=3
	movslq	-180(%rbp), %rax
	movsd	-160(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movslq	-180(%rbp), %rax
	movsd	%xmm0, -160(%rbp,%rax,8)
.LBB50_45:                              # %if.end.112
                                        #   in Loop: Header=BB50_41 Depth=3
	xorps	%xmm0, %xmm0
	movslq	-180(%rbp), %rax
	ucomisd	-160(%rbp,%rax,8), %xmm0
	jbe	.LBB50_47
# BB#46:                                # %if.then.117
                                        #   in Loop: Header=BB50_41 Depth=3
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	movb	$0, (%rax)
	jmp	.LBB50_51
.LBB50_47:                              # %if.else.119
                                        #   in Loop: Header=BB50_41 Depth=3
	movsd	.LCPI50_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-180(%rbp), %rax
	movsd	-160(%rbp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB50_49
# BB#48:                                # %cond.true.124
                                        #   in Loop: Header=BB50_41 Depth=3
	movl	$255, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB50_50
.LBB50_49:                              # %cond.false.125
                                        #   in Loop: Header=BB50_41 Depth=3
	movsd	.LCPI50_1, %xmm0        # xmm0 = mem[0],zero
	movslq	-180(%rbp), %rax
	addsd	-160(%rbp,%rax,8), %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
.LBB50_50:                              # %cond.end.132
                                        #   in Loop: Header=BB50_41 Depth=3
	movl	-324(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -120(%rbp)
	movb	%cl, (%rdx)
.LBB50_51:                              # %if.end.136
                                        #   in Loop: Header=BB50_41 Depth=3
	jmp	.LBB50_52
.LBB50_52:                              # %for.inc.137
                                        #   in Loop: Header=BB50_41 Depth=3
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB50_41
.LBB50_53:                              # %for.end.139
                                        #   in Loop: Header=BB50_7 Depth=2
	jmp	.LBB50_54
.LBB50_54:                              # %for.inc.140
                                        #   in Loop: Header=BB50_7 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB50_7
.LBB50_55:                              # %for.end.142
                                        #   in Loop: Header=BB50_4 Depth=1
	jmp	.LBB50_98
.LBB50_56:                              # %if.else.143
                                        #   in Loop: Header=BB50_4 Depth=1
	movl	$0, -100(%rbp)
.LBB50_57:                              # %for.cond.144
                                        #   Parent Loop BB50_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB50_59 Depth 3
                                        #         Child Loop BB50_61 Depth 4
                                        #           Child Loop BB50_75 Depth 5
                                        #       Child Loop BB50_83 Depth 3
	movl	-100(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB50_97
# BB#58:                                # %for.body.148
                                        #   in Loop: Header=BB50_57 Depth=2
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-256(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rdi, -224(%rbp)
	movq	%rcx, %rdi
	callq	memset
	movl	-104(%rbp), %eax
	subl	-80(%rbp), %eax
	movl	%eax, -264(%rbp)
.LBB50_59:                              # %for.cond.155
                                        #   Parent Loop BB50_4 Depth=1
                                        #     Parent Loop BB50_57 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB50_61 Depth 4
                                        #           Child Loop BB50_75 Depth 5
	movl	-264(%rbp), %eax
	movl	-104(%rbp), %ecx
	addl	-80(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB50_82
# BB#60:                                # %for.body.159
                                        #   in Loop: Header=BB50_59 Depth=3
	movl	-100(%rbp), %eax
	subl	-80(%rbp), %eax
	movl	%eax, -260(%rbp)
.LBB50_61:                              # %for.cond.161
                                        #   Parent Loop BB50_4 Depth=1
                                        #     Parent Loop BB50_57 Depth=2
                                        #       Parent Loop BB50_59 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB50_75 Depth 5
	movl	-260(%rbp), %eax
	movl	-100(%rbp), %ecx
	addl	-80(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB50_80
# BB#62:                                # %for.body.165
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-260(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.LBB50_64
# BB#63:                                # %cond.true.169
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-92(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB50_68
.LBB50_64:                              # %cond.false.170
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-260(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB50_66
# BB#65:                                # %cond.true.173
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-84(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB50_67
.LBB50_66:                              # %cond.false.174
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-260(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB50_67:                              # %cond.end.175
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB50_68:                              # %cond.end.177
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)
	movl	-264(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jle	.LBB50_70
# BB#69:                                # %cond.true.182
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-96(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB50_74
.LBB50_70:                              # %cond.false.183
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-264(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB50_72
# BB#71:                                # %cond.true.186
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-88(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB50_73
.LBB50_72:                              # %cond.false.187
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-264(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB50_73:                              # %cond.end.188
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB50_74:                              # %cond.end.190
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)
	movq	-56(%rbp), %rcx
	movl	-276(%rbp), %eax
	imull	-76(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movl	-272(%rbp), %eax
	imull	-68(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -288(%rbp)
	movl	$0, -268(%rbp)
.LBB50_75:                              # %for.cond.199
                                        #   Parent Loop BB50_4 Depth=1
                                        #     Parent Loop BB50_57 Depth=2
                                        #       Parent Loop BB50_59 Depth=3
                                        #         Parent Loop BB50_61 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-268(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB50_78
# BB#76:                                # %for.body.202
                                        #   in Loop: Header=BB50_75 Depth=5
	movq	-224(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movslq	-268(%rbp), %rax
	movq	-288(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movslq	-268(%rbp), %rax
	addsd	-256(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -256(%rbp,%rax,8)
# BB#77:                                # %for.inc.212
                                        #   in Loop: Header=BB50_75 Depth=5
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	.LBB50_75
.LBB50_78:                              # %for.end.214
                                        #   in Loop: Header=BB50_61 Depth=4
	jmp	.LBB50_79
.LBB50_79:                              # %for.inc.215
                                        #   in Loop: Header=BB50_61 Depth=4
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	movq	-224(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -224(%rbp)
	jmp	.LBB50_61
.LBB50_80:                              # %for.end.218
                                        #   in Loop: Header=BB50_59 Depth=3
	jmp	.LBB50_81
.LBB50_81:                              # %for.inc.219
                                        #   in Loop: Header=BB50_59 Depth=3
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	jmp	.LBB50_59
.LBB50_82:                              # %for.end.221
                                        #   in Loop: Header=BB50_57 Depth=2
	movl	$0, -268(%rbp)
.LBB50_83:                              # %for.cond.222
                                        #   Parent Loop BB50_4 Depth=1
                                        #     Parent Loop BB50_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-268(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB50_95
# BB#84:                                # %for.body.225
                                        #   in Loop: Header=BB50_83 Depth=3
	movslq	-268(%rbp), %rax
	movsd	-256(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	divsd	-40(%rbp), %xmm0
	cvtsi2sdl	-108(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-268(%rbp), %rax
	movsd	%xmm0, -256(%rbp,%rax,8)
	cmpl	$0, -44(%rbp)
	je	.LBB50_87
# BB#85:                                # %land.lhs.true.235
                                        #   in Loop: Header=BB50_83 Depth=3
	xorps	%xmm0, %xmm0
	movslq	-268(%rbp), %rax
	ucomisd	-256(%rbp,%rax,8), %xmm0
	jbe	.LBB50_87
# BB#86:                                # %if.then.240
                                        #   in Loop: Header=BB50_83 Depth=3
	movslq	-268(%rbp), %rax
	movsd	-256(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movslq	-268(%rbp), %rax
	movsd	%xmm0, -256(%rbp,%rax,8)
.LBB50_87:                              # %if.end.246
                                        #   in Loop: Header=BB50_83 Depth=3
	xorps	%xmm0, %xmm0
	movslq	-268(%rbp), %rax
	ucomisd	-256(%rbp,%rax,8), %xmm0
	jbe	.LBB50_89
# BB#88:                                # %if.then.251
                                        #   in Loop: Header=BB50_83 Depth=3
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	movb	$0, (%rax)
	jmp	.LBB50_93
.LBB50_89:                              # %if.else.253
                                        #   in Loop: Header=BB50_83 Depth=3
	movsd	.LCPI50_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-268(%rbp), %rax
	movsd	-256(%rbp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB50_91
# BB#90:                                # %cond.true.258
                                        #   in Loop: Header=BB50_83 Depth=3
	movl	$255, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB50_92
.LBB50_91:                              # %cond.false.259
                                        #   in Loop: Header=BB50_83 Depth=3
	movsd	.LCPI50_1, %xmm0        # xmm0 = mem[0],zero
	movslq	-268(%rbp), %rax
	addsd	-256(%rbp,%rax,8), %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -344(%rbp)        # 4-byte Spill
.LBB50_92:                              # %cond.end.266
                                        #   in Loop: Header=BB50_83 Depth=3
	movl	-344(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -120(%rbp)
	movb	%cl, (%rdx)
.LBB50_93:                              # %if.end.270
                                        #   in Loop: Header=BB50_83 Depth=3
	jmp	.LBB50_94
.LBB50_94:                              # %for.inc.271
                                        #   in Loop: Header=BB50_83 Depth=3
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	.LBB50_83
.LBB50_95:                              # %for.end.273
                                        #   in Loop: Header=BB50_57 Depth=2
	jmp	.LBB50_96
.LBB50_96:                              # %for.inc.274
                                        #   in Loop: Header=BB50_57 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB50_57
.LBB50_97:                              # %for.end.276
                                        #   in Loop: Header=BB50_4 Depth=1
	jmp	.LBB50_98
.LBB50_98:                              # %if.end.277
                                        #   in Loop: Header=BB50_4 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
# BB#99:                                # %for.inc.281
                                        #   in Loop: Header=BB50_4 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB50_4
.LBB50_100:                             # %for.end.283
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end50:
	.size	convolve_region, .Lfunc_end50-convolve_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI51_0:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI51_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	multiply_alpha_region
	.align	16, 0x90
	.type	multiply_alpha_region,@function
multiply_alpha_region:                  # @multiply_alpha_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	48(%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	52(%rdi), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movl	$0, -32(%rbp)
.LBB51_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_3 Depth 2
                                        #       Child Loop BB51_5 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB51_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB51_3:                               # %for.cond.2
                                        #   Parent Loop BB51_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB51_5 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB51_10
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB51_3 Depth=2
	movsd	.LCPI51_0, %xmm0        # xmm0 = mem[0],zero
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movl	$0, -44(%rbp)
.LBB51_5:                               # %for.cond.6
                                        #   Parent Loop BB51_1 Depth=1
                                        #     Parent Loop BB51_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB51_8
# BB#6:                                 # %for.body.10
                                        #   in Loop: Header=BB51_5 Depth=3
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI51_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB51_5 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB51_5
.LBB51_8:                               # %for.end
                                        #   in Loop: Header=BB51_3 Depth=2
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
# BB#9:                                 # %for.inc.19
                                        #   in Loop: Header=BB51_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB51_3
.LBB51_10:                              # %for.end.21
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-16(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
# BB#11:                                # %for.inc.24
                                        #   in Loop: Header=BB51_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB51_1
.LBB51_12:                              # %for.end.26
	popq	%rbp
	retq
.Lfunc_end51:
	.size	multiply_alpha_region, .Lfunc_end51-multiply_alpha_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI52_0:
	.quad	4643176031446892544     # double 255
.LCPI52_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	separate_alpha_region
	.align	16, 0x90
	.type	separate_alpha_region,@function
separate_alpha_region:                  # @separate_alpha_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	48(%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	52(%rdi), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movl	$0, -32(%rbp)
.LBB52_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_3 Depth 2
                                        #       Child Loop BB52_7 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB52_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB52_3:                               # %for.cond.2
                                        #   Parent Loop BB52_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB52_7 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB52_16
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB52_3 Depth=2
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB52_14
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB52_3 Depth=2
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB52_14
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB52_3 Depth=2
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$0, -44(%rbp)
.LBB52_7:                               # %for.cond.18
                                        #   Parent Loop BB52_1 Depth=1
                                        #     Parent Loop BB52_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_13
# BB#8:                                 # %for.body.22
                                        #   in Loop: Header=BB52_7 Depth=3
	movsd	.LCPI52_1, %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -60(%rbp)
	cmpl	$255, -60(%rbp)
	jge	.LBB52_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB52_7 Depth=3
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB52_11
.LBB52_10:                              # %cond.false
                                        #   in Loop: Header=BB52_7 Depth=3
	movl	$255, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB52_11
.LBB52_11:                              # %cond.end
                                        #   in Loop: Header=BB52_7 Depth=3
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB52_7 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB52_7
.LBB52_13:                              # %for.end
                                        #   in Loop: Header=BB52_3 Depth=2
	jmp	.LBB52_14
.LBB52_14:                              # %if.end
                                        #   in Loop: Header=BB52_3 Depth=2
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
# BB#15:                                # %for.inc.33
                                        #   in Loop: Header=BB52_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB52_3
.LBB52_16:                              # %for.end.35
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-16(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
# BB#17:                                # %for.inc.38
                                        #   in Loop: Header=BB52_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB52_1
.LBB52_18:                              # %for.end.40
	popq	%rbp
	retq
.Lfunc_end52:
	.size	separate_alpha_region, .Lfunc_end52-separate_alpha_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI53_0:
	.quad	-4600943510690911480    # double -11.082527089999999
	.text
	.globl	gaussian_blur_region
	.align	16, 0x90
	.type	gaussian_blur_region,@function
gaussian_blur_region:                   # @gaussian_blur_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp162:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	xorps	%xmm2, %xmm2
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jne	.LBB53_3
	jp	.LBB53_3
# BB#1:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB53_3
	jp	.LBB53_3
# BB#2:                                 # %if.then
	jmp	.LBB53_68
.LBB53_3:                               # %if.end
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	48(%rax), %ecx
	jle	.LBB53_5
# BB#4:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB53_6
.LBB53_5:                               # %cond.false
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB53_6:                               # %cond.end
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx
	imull	52(%rdx), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movslq	-160(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movslq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -164(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jle	.LBB53_8
# BB#7:                                 # %cond.true.14
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB53_9
.LBB53_8:                               # %cond.false.15
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB53_9:                               # %cond.end.16
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %esi
	shlq	$1, %rax
	movq	%rax, %rdi
	callq	g_malloc_n
	xorps	%xmm0, %xmm0
	movq	%rax, -96(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB53_10
	jp	.LBB53_10
	jmp	.LBB53_38
.LBB53_10:                              # %if.then.22
	leaq	-160(%rbp), %rdi
	movsd	.LCPI53_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	make_curve
	movl	$4, %edx
	movl	%edx, %esi
	movq	%rax, -144(%rbp)
	movl	-160(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, -116(%rbp)
.LBB53_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movl	-160(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB53_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB53_11 Depth=1
	movl	-116(%rbp), %eax
	subl	-160(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-116(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-152(%rbp), %rdx
	addl	(%rdx,%rcx,4), %eax
	movslq	-116(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB53_11 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB53_11
.LBB53_14:                              # %for.end
	xorl	%eax, %eax
	movl	-160(%rbp), %ecx
	movq	-152(%rbp), %rdx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -152(%rbp)
	movslq	-160(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movl	(%rsi,%rdx,4), %ecx
	subl	-160(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rsi
	subl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -112(%rbp)
	movl	$0, -124(%rbp)
.LBB53_15:                              # %for.cond.49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB53_17 Depth 2
                                        #       Child Loop BB53_27 Depth 3
	movslq	-124(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB53_37
# BB#16:                                # %for.body.53
                                        #   in Loop: Header=BB53_15 Depth=1
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movl	-124(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	36(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	40(%rcx), %edx
	movq	-40(%rbp), %rcx
	movl	%ecx, %esi
	movq	-56(%rbp), %r8
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-188(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_get_col
	movq	-56(%rbp), %rdi
	movslq	-164(%rbp), %r8
	addq	%r8, %rdi
	movq	%rdi, -64(%rbp)
	movq	-64(%rbp), %rdi
	movzbl	(%rdi), %eax
	movl	%eax, -168(%rbp)
	movq	-40(%rbp), %rdi
	subq	$1, %rdi
	movl	-44(%rbp), %eax
	movl	%eax, %r8d
	imulq	%r8, %rdi
	movq	-64(%rbp), %r8
	movzbl	(%r8,%rdi), %eax
	movl	%eax, -172(%rbp)
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-40(%rbp), %r8
	movl	%r8d, %eax
	movl	-44(%rbp), %ecx
	movl	%eax, %edx
	callq	run_length_encode
	movl	$0, -120(%rbp)
.LBB53_17:                              # %for.cond.66
                                        #   Parent Loop BB53_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB53_27 Depth 3
	movslq	-120(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB53_35
# BB#18:                                # %for.body.70
                                        #   in Loop: Header=BB53_17 Depth=2
	movl	-120(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB53_20
# BB#19:                                # %cond.true.73
                                        #   in Loop: Header=BB53_17 Depth=2
	xorl	%eax, %eax
	subl	-120(%rbp), %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB53_21
.LBB53_20:                              # %cond.false.75
                                        #   in Loop: Header=BB53_17 Depth=2
	xorl	%eax, %eax
	subl	-160(%rbp), %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB53_21:                              # %cond.end.77
                                        #   in Loop: Header=BB53_17 Depth=2
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)
	movq	-40(%rbp), %rcx
	movl	-120(%rbp), %eax
	addl	-160(%rbp), %eax
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB53_23
# BB#22:                                # %cond.true.83
                                        #   in Loop: Header=BB53_17 Depth=2
	movq	-40(%rbp), %rax
	movslq	-120(%rbp), %rcx
	subq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB53_24
.LBB53_23:                              # %cond.false.87
                                        #   in Loop: Header=BB53_17 Depth=2
	movslq	-160(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB53_24:                              # %cond.end.89
                                        #   in Loop: Header=BB53_17 Depth=2
	movq	-200(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	%eax, %esi
	movl	%esi, -132(%rbp)
	movl	-112(%rbp), %eax
	movl	%edx, -204(%rbp)        # 4-byte Spill
	cltd
	movl	-204(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -156(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -116(%rbp)
	movq	-96(%rbp), %rdi
	movl	-120(%rbp), %eax
	addl	-116(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	movq	%rdi, -104(%rbp)
	movl	-128(%rbp), %eax
	subl	-160(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB53_26
# BB#25:                                # %if.then.100
                                        #   in Loop: Header=BB53_17 Depth=2
	xorl	%eax, %eax
	movl	-168(%rbp), %ecx
	movslq	-128(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movl	(%rsi,%rdx,4), %edi
	subl	-160(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rsi
	subl	(%rsi,%rdx,4), %edi
	imull	%edi, %ecx
	addl	-156(%rbp), %ecx
	movl	%ecx, -156(%rbp)
.LBB53_26:                              # %if.end.109
                                        #   in Loop: Header=BB53_17 Depth=2
	jmp	.LBB53_27
.LBB53_27:                              # %while.cond
                                        #   Parent Loop BB53_15 Depth=1
                                        #     Parent Loop BB53_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB53_31
# BB#28:                                # %while.body
                                        #   in Loop: Header=BB53_27 Depth=3
	movq	-104(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -108(%rbp)
	movl	-108(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	movl	-116(%rbp), %ecx
	cmpl	-132(%rbp), %ecx
	jle	.LBB53_30
# BB#29:                                # %if.then.116
                                        #   in Loop: Header=BB53_27 Depth=3
	movl	-132(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB53_30:                              # %if.end.117
                                        #   in Loop: Header=BB53_27 Depth=3
	movq	-104(%rbp), %rax
	movl	4(%rax), %ecx
	movslq	-116(%rbp), %rax
	movq	-152(%rbp), %rdx
	movl	(%rdx,%rax,4), %esi
	movslq	-128(%rbp), %rax
	movq	-152(%rbp), %rdx
	subl	(%rdx,%rax,4), %esi
	imull	%esi, %ecx
	addl	-156(%rbp), %ecx
	movl	%ecx, -156(%rbp)
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movl	-116(%rbp), %ecx
	movl	%ecx, -128(%rbp)
	jmp	.LBB53_27
.LBB53_31:                              # %while.end
                                        #   in Loop: Header=BB53_17 Depth=2
	movl	-132(%rbp), %eax
	cmpl	-160(%rbp), %eax
	je	.LBB53_33
# BB#32:                                # %if.then.131
                                        #   in Loop: Header=BB53_17 Depth=2
	movl	-172(%rbp), %eax
	movslq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movslq	-132(%rbp), %rcx
	movq	-152(%rbp), %rdx
	subl	(%rdx,%rcx,4), %esi
	imull	%esi, %eax
	addl	-156(%rbp), %eax
	movl	%eax, -156(%rbp)
.LBB53_33:                              # %if.end.139
                                        #   in Loop: Header=BB53_17 Depth=2
	movl	-156(%rbp), %eax
	cltd
	idivl	-112(%rbp)
	movb	%al, %cl
	movl	-120(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#34:                                # %for.inc.145
                                        #   in Loop: Header=BB53_17 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB53_17
.LBB53_35:                              # %for.end.147
                                        #   in Loop: Header=BB53_15 Depth=1
	movq	-8(%rbp), %rdi
	movl	-124(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	36(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	40(%rcx), %edx
	movq	-40(%rbp), %rcx
	movl	%ecx, %esi
	movq	-56(%rbp), %r8
	movl	%esi, -208(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-208(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_set_col
# BB#36:                                # %for.inc.152
                                        #   in Loop: Header=BB53_15 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB53_15
.LBB53_37:                              # %for.end.154
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	movslq	-160(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-144(%rbp), %rdx
	movslq	-160(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	g_free
.LBB53_38:                              # %if.end.160
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB53_39
	jp	.LBB53_39
	jmp	.LBB53_67
.LBB53_39:                              # %if.then.163
	leaq	-160(%rbp), %rdi
	movsd	.LCPI53_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	make_curve
	movl	$4, %edx
	movl	%edx, %esi
	movq	%rax, -144(%rbp)
	movl	-160(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, -116(%rbp)
.LBB53_40:                              # %for.cond.173
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movl	-160(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB53_43
# BB#41:                                # %for.body.177
                                        #   in Loop: Header=BB53_40 Depth=1
	movl	-116(%rbp), %eax
	subl	-160(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-116(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-152(%rbp), %rdx
	addl	(%rdx,%rcx,4), %eax
	movslq	-116(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#42:                                # %for.inc.188
                                        #   in Loop: Header=BB53_40 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB53_40
.LBB53_43:                              # %for.end.190
	xorl	%eax, %eax
	movl	-160(%rbp), %ecx
	movq	-152(%rbp), %rdx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -152(%rbp)
	movslq	-160(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movl	(%rsi,%rdx,4), %ecx
	subl	-160(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rsi
	subl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -112(%rbp)
	movl	$0, -120(%rbp)
.LBB53_44:                              # %for.cond.199
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB53_46 Depth 2
                                        #       Child Loop BB53_56 Depth 3
	movslq	-120(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB53_66
# BB#45:                                # %for.body.203
                                        #   in Loop: Header=BB53_44 Depth=1
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movl	-120(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	40(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %r8
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-212(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_get_row
	movq	-56(%rbp), %rax
	movslq	-164(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movslq	-164(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -168(%rbp)
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movl	-44(%rbp), %ecx
	movl	%ecx, %edi
	imulq	%rdi, %rax
	movq	-64(%rbp), %rdi
	movzbl	(%rdi,%rax), %ecx
	movl	%ecx, -172(%rbp)
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movl	-44(%rbp), %edx
	movl	%edx, -216(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-216(%rbp), %ecx        # 4-byte Reload
	callq	run_length_encode
	movl	$0, -124(%rbp)
.LBB53_46:                              # %for.cond.220
                                        #   Parent Loop BB53_44 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB53_56 Depth 3
	movslq	-124(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB53_64
# BB#47:                                # %for.body.224
                                        #   in Loop: Header=BB53_46 Depth=2
	movl	-124(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB53_49
# BB#48:                                # %cond.true.227
                                        #   in Loop: Header=BB53_46 Depth=2
	xorl	%eax, %eax
	subl	-124(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB53_50
.LBB53_49:                              # %cond.false.229
                                        #   in Loop: Header=BB53_46 Depth=2
	xorl	%eax, %eax
	subl	-160(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB53_50:                              # %cond.end.231
                                        #   in Loop: Header=BB53_46 Depth=2
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)
	movq	-32(%rbp), %rcx
	movl	-124(%rbp), %eax
	addl	-160(%rbp), %eax
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB53_52
# BB#51:                                # %cond.true.237
                                        #   in Loop: Header=BB53_46 Depth=2
	movq	-32(%rbp), %rax
	movslq	-124(%rbp), %rcx
	subq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB53_53
.LBB53_52:                              # %cond.false.241
                                        #   in Loop: Header=BB53_46 Depth=2
	movslq	-160(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB53_53:                              # %cond.end.243
                                        #   in Loop: Header=BB53_46 Depth=2
	movq	-232(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	%eax, %esi
	movl	%esi, -132(%rbp)
	movl	-112(%rbp), %eax
	movl	%edx, -236(%rbp)        # 4-byte Spill
	cltd
	movl	-236(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -156(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -116(%rbp)
	movq	-96(%rbp), %rdi
	movl	-124(%rbp), %eax
	addl	-116(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	movq	%rdi, -104(%rbp)
	movl	-128(%rbp), %eax
	subl	-160(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB53_55
# BB#54:                                # %if.then.254
                                        #   in Loop: Header=BB53_46 Depth=2
	xorl	%eax, %eax
	movl	-168(%rbp), %ecx
	movslq	-128(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movl	(%rsi,%rdx,4), %edi
	subl	-160(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rsi
	subl	(%rsi,%rdx,4), %edi
	imull	%edi, %ecx
	addl	-156(%rbp), %ecx
	movl	%ecx, -156(%rbp)
.LBB53_55:                              # %if.end.263
                                        #   in Loop: Header=BB53_46 Depth=2
	jmp	.LBB53_56
.LBB53_56:                              # %while.cond.264
                                        #   Parent Loop BB53_44 Depth=1
                                        #     Parent Loop BB53_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB53_60
# BB#57:                                # %while.body.267
                                        #   in Loop: Header=BB53_56 Depth=3
	movq	-104(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -108(%rbp)
	movl	-108(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	movl	-116(%rbp), %ecx
	cmpl	-132(%rbp), %ecx
	jle	.LBB53_59
# BB#58:                                # %if.then.272
                                        #   in Loop: Header=BB53_56 Depth=3
	movl	-132(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB53_59:                              # %if.end.273
                                        #   in Loop: Header=BB53_56 Depth=3
	movq	-104(%rbp), %rax
	movl	4(%rax), %ecx
	movslq	-116(%rbp), %rax
	movq	-152(%rbp), %rdx
	movl	(%rdx,%rax,4), %esi
	movslq	-128(%rbp), %rax
	movq	-152(%rbp), %rdx
	subl	(%rdx,%rax,4), %esi
	imull	%esi, %ecx
	addl	-156(%rbp), %ecx
	movl	%ecx, -156(%rbp)
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movl	-116(%rbp), %ecx
	movl	%ecx, -128(%rbp)
	jmp	.LBB53_56
.LBB53_60:                              # %while.end.285
                                        #   in Loop: Header=BB53_46 Depth=2
	movl	-132(%rbp), %eax
	cmpl	-160(%rbp), %eax
	je	.LBB53_62
# BB#61:                                # %if.then.288
                                        #   in Loop: Header=BB53_46 Depth=2
	movl	-172(%rbp), %eax
	movslq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movslq	-132(%rbp), %rcx
	movq	-152(%rbp), %rdx
	subl	(%rdx,%rcx,4), %esi
	imull	%esi, %eax
	addl	-156(%rbp), %eax
	movl	%eax, -156(%rbp)
.LBB53_62:                              # %if.end.296
                                        #   in Loop: Header=BB53_46 Depth=2
	movl	-156(%rbp), %eax
	cltd
	idivl	-112(%rbp)
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
	movb	%al, %cl
	movl	-124(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#63:                                # %for.inc.302
                                        #   in Loop: Header=BB53_46 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB53_46
.LBB53_64:                              # %for.end.304
                                        #   in Loop: Header=BB53_44 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movl	-120(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	40(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %r8
	movl	%edx, -240(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-240(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_set_row
# BB#65:                                # %for.inc.309
                                        #   in Loop: Header=BB53_44 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB53_44
.LBB53_66:                              # %for.end.311
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	movslq	-160(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-144(%rbp), %rdx
	movslq	-160(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	g_free
.LBB53_67:                              # %if.end.318
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
.LBB53_68:                              # %return
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gaussian_blur_region, .Lfunc_end53-gaussian_blur_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI54_0:
	.quad	4611686018427387904     # double 2
.LCPI54_1:
	.quad	-4605447110318281976    # double -5.5412635449999996
.LCPI54_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	make_curve,@function
make_curve:                             # @make_curve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$2, %eax
	movsd	.LCPI54_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI54_1, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rdi
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rdi
	movd	%rdi, %xmm0
	mulsd	%xmm2, %xmm0
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cltd
	movl	-56(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB54_2
# BB#1:                                 # %if.then
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB54_2:                               # %if.end
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-48(%rbp), %rdi
	callq	g_malloc_n
	movl	$2, %ecx
	movq	%rax, -40(%rbp)
	movl	-48(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-40(%rbp), %rsi
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movl	$255, (%rsi)
	movl	$1, -44(%rbp)
.LBB54_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB54_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB54_3 Depth=1
	xorl	%eax, %eax
	movl	-44(%rbp), %ecx
	imull	-44(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-24(%rbp), %xmm0
	callq	exp
	xorl	%eax, %eax
	movsd	.LCPI54_2, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %ecx
	subl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
	movl	-52(%rbp), %eax
	movslq	-44(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB54_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB54_3
.LBB54_6:                               # %for.end
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	make_curve, .Lfunc_end54-make_curve
	.cfi_endproc

	.align	16, 0x90
	.type	run_length_encode,@function
run_length_encode:                      # @run_length_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movb	(%rsi), %al
	movb	%al, -37(%rbp)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rsi
	movq	%rsi, -8(%rbp)
	movl	$0, -28(%rbp)
	movl	$1, -32(%rbp)
.LBB55_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_4 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB55_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movzbl	-37(%rbp), %edx
	cmpl	%edx, %ecx
	je	.LBB55_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB55_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB55_4:                               # %for.cond.4
                                        #   Parent Loop BB55_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jae	.LBB55_7
# BB#5:                                 # %for.body.7
                                        #   in Loop: Header=BB55_4 Depth=2
	movl	-32(%rbp), %eax
	subl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
	movzbl	-37(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB55_4 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB55_4
.LBB55_7:                               # %for.end
                                        #   in Loop: Header=BB55_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rcx
	movb	(%rcx), %dl
	movb	%dl, -37(%rbp)
.LBB55_8:                               # %if.end
                                        #   in Loop: Header=BB55_1 Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
# BB#9:                                 # %for.inc.12
                                        #   in Loop: Header=BB55_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB55_1
.LBB55_10:                              # %for.end.14
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB55_11:                              # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jae	.LBB55_14
# BB#12:                                # %for.body.18
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	-32(%rbp), %eax
	subl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
	movzbl	-37(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
# BB#13:                                # %for.inc.23
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB55_11
.LBB55_14:                              # %for.end.25
	popq	%rbp
	retq
.Lfunc_end55:
	.size	run_length_encode, .Lfunc_end55-run_length_encode
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI56_0:
	.long	1132396544              # float 255
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI56_1:
	.quad	4643211215818981376     # double 256
	.text
	.globl	shapeburst_region
	.align	16, 0x90
	.type	shapeburst_region,@function
shapeburst_region:                      # @shapeburst_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	$4, %eax
	movl	%eax, %r8d
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movss	%xmm0, -52(%rbp)
	movl	$0, -152(%rbp)
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	movq	-8(%rbp), %rcx
	imull	48(%rcx), %eax
	movl	%eax, -156(%rbp)
	movl	$0, -160(%rbp)
	movq	-16(%rbp), %rcx
	movl	44(%rcx), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rdi
	movq	%r8, %rsi
	callq	g_malloc_n
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -112(%rbp)
.LBB56_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-112(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB56_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB56_1 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-112(%rbp), %rax
	movq	-72(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB56_1 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB56_1
.LBB56_4:                               # %for.end
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movslq	-108(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movl	$0, -112(%rbp)
.LBB56_5:                               # %for.cond.24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_7 Depth 2
                                        #       Child Loop BB56_21 Depth 3
                                        #         Child Loop BB56_23 Depth 4
                                        #           Child Loop BB56_31 Depth 5
	movl	-112(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB56_57
# BB#6:                                 # %for.body.28
                                        #   in Loop: Header=BB56_5 Depth=1
	xorl	%esi, %esi
	movq	-64(%rbp), %rax
	addq	$-4, %rax
	movl	-108(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	callq	memset
	movl	$0, -116(%rbp)
.LBB56_7:                               # %for.cond.32
                                        #   Parent Loop BB56_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB56_21 Depth 3
                                        #         Child Loop BB56_23 Depth 4
                                        #           Child Loop BB56_31 Depth 5
	movl	-116(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB56_53
# BB#8:                                 # %for.body.36
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-116(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	-116(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB56_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-116(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -168(%rbp)       # 4-byte Spill
	jmp	.LBB56_11
.LBB56_10:                              # %cond.false
                                        #   in Loop: Header=BB56_7 Depth=2
	movslq	-116(%rbp), %rax
	movq	-72(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -168(%rbp)       # 4-byte Spill
.LBB56_11:                              # %cond.end
                                        #   in Loop: Header=BB56_7 Depth=2
	movss	-168(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	subl	-116(%rbp), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	subl	-112(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jge	.LBB56_13
# BB#12:                                # %cond.true.57
                                        #   in Loop: Header=BB56_7 Depth=2
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	subl	-116(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB56_14
.LBB56_13:                              # %cond.false.61
                                        #   in Loop: Header=BB56_7 Depth=2
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	subl	-112(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
.LBB56_14:                              # %cond.end.65
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
	cvtsi2ssl	-104(%rbp), %xmm0
	movss	-92(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB56_16
# BB#15:                                # %cond.true.70
                                        #   in Loop: Header=BB56_7 Depth=2
	cvtsi2ssl	-104(%rbp), %xmm0
	movss	%xmm0, -176(%rbp)       # 4-byte Spill
	jmp	.LBB56_17
.LBB56_16:                              # %cond.false.72
                                        #   in Loop: Header=BB56_7 Depth=2
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -176(%rbp)       # 4-byte Spill
.LBB56_17:                              # %cond.end.73
                                        #   in Loop: Header=BB56_7 Depth=2
	movss	-176(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %eax
	movl	%eax, -100(%rbp)
	movl	$255, -124(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB56_19
# BB#18:                                # %cond.true.76
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB56_20
.LBB56_19:                              # %cond.false.78
                                        #   in Loop: Header=BB56_7 Depth=2
	xorl	%eax, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB56_20
.LBB56_20:                              # %cond.end.79
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
.LBB56_21:                              # %for.cond.81
                                        #   Parent Loop BB56_5 Depth=1
                                        #     Parent Loop BB56_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB56_23 Depth 4
                                        #           Child Loop BB56_31 Depth 5
	movl	-120(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jg	.LBB56_40
# BB#22:                                # %for.body.84
                                        #   in Loop: Header=BB56_21 Depth=3
	movl	-116(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-112(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	subl	-120(%rbp), %eax
	movl	%eax, -140(%rbp)
.LBB56_23:                              # %while.cond
                                        #   Parent Loop BB56_5 Depth=1
                                        #     Parent Loop BB56_7 Depth=2
                                        #       Parent Loop BB56_21 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB56_31 Depth 5
	movl	-136(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jl	.LBB56_38
# BB#24:                                # %while.body
                                        #   in Loop: Header=BB56_23 Depth=4
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	tile_ewidth
	movl	$64, %ecx
	movl	%eax, -164(%rbp)
	movl	-136(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-164(%rbp), %esi
	movl	-132(%rbp), %r8d
	movl	%r8d, %eax
	movl	%edx, -184(%rbp)        # 4-byte Spill
	cltd
	idivl	%ecx
	subl	%edx, %esi
	subl	$1, %esi
	movl	-184(%rbp), %ecx        # 4-byte Reload
	cmpl	%esi, %ecx
	jge	.LBB56_26
# BB#25:                                # %cond.true.98
                                        #   in Loop: Header=BB56_23 Depth=4
	movl	$64, %eax
	movl	-136(%rbp), %ecx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-188(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -192(%rbp)        # 4-byte Spill
	jmp	.LBB56_27
.LBB56_26:                              # %cond.false.100
                                        #   in Loop: Header=BB56_23 Depth=4
	movl	$64, %eax
	movl	-164(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-196(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	subl	%edx, %ecx
	subl	$1, %ecx
	movl	%ecx, -192(%rbp)        # 4-byte Spill
.LBB56_27:                              # %cond.end.104
                                        #   in Loop: Header=BB56_23 Depth=4
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
	movl	-136(%rbp), %ecx
	subl	-140(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB56_29
# BB#28:                                # %cond.true.109
                                        #   in Loop: Header=BB56_23 Depth=4
	movl	-144(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB56_30
.LBB56_29:                              # %cond.false.110
                                        #   in Loop: Header=BB56_23 Depth=4
	movl	-136(%rbp), %eax
	subl	-140(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB56_30:                              # %cond.end.112
                                        #   in Loop: Header=BB56_23 Depth=4
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	subl	-164(%rbp), %ecx
	movl	%ecx, -148(%rbp)
.LBB56_31:                              # %while.cond.116
                                        #   Parent Loop BB56_5 Depth=1
                                        #     Parent Loop BB56_7 Depth=2
                                        #       Parent Loop BB56_21 Depth=3
                                        #         Parent Loop BB56_23 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-144(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -144(%rbp)
	cmpl	$0, %eax
	je	.LBB56_37
# BB#32:                                # %while.body.118
                                        #   in Loop: Header=BB56_31 Depth=5
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -152(%rbp)
	cmpl	$0, -152(%rbp)
	jne	.LBB56_34
# BB#33:                                # %if.then
                                        #   in Loop: Header=BB56_23 Depth=4
	movl	-120(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	$-1, -136(%rbp)
	jmp	.LBB56_37
.LBB56_34:                              # %if.end
                                        #   in Loop: Header=BB56_31 Depth=5
	movl	-152(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB56_36
# BB#35:                                # %if.then.124
                                        #   in Loop: Header=BB56_31 Depth=5
	movl	-152(%rbp), %eax
	movl	%eax, -124(%rbp)
.LBB56_36:                              # %if.end.125
                                        #   in Loop: Header=BB56_31 Depth=5
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -136(%rbp)
	movl	-148(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB56_31
.LBB56_37:                              # %while.end
                                        #   in Loop: Header=BB56_23 Depth=4
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	tile_release
	jmp	.LBB56_23
.LBB56_38:                              # %while.end.130
                                        #   in Loop: Header=BB56_21 Depth=3
	jmp	.LBB56_39
.LBB56_39:                              # %for.inc.131
                                        #   in Loop: Header=BB56_21 Depth=3
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB56_21
.LBB56_40:                              # %for.end.133
                                        #   in Loop: Header=BB56_7 Depth=2
	cmpl	$0, -152(%rbp)
	je	.LBB56_49
# BB#41:                                # %if.then.136
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	je	.LBB56_48
# BB#42:                                # %if.then.139
                                        #   in Loop: Header=BB56_7 Depth=2
	movss	.LCPI56_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-92(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtsi2ssl	-100(%rbp), %xmm2
	subss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -128(%rbp)
	cmpl	$255, -128(%rbp)
	jne	.LBB56_44
# BB#43:                                # %if.then.146
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	$0, -128(%rbp)
.LBB56_44:                              # %if.end.147
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-124(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB56_46
# BB#45:                                # %cond.true.150
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-124(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB56_47
.LBB56_46:                              # %cond.false.151
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-128(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB56_47:                              # %cond.end.152
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)
.LBB56_48:                              # %if.end.154
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
.LBB56_49:                              # %if.end.156
                                        #   in Loop: Header=BB56_7 Depth=2
	movsd	.LCPI56_1, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-100(%rbp), %xmm1
	cvtsi2sdl	-124(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movslq	-116(%rbp), %rax
	movq	-64(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	movss	%xmm0, -96(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-52(%rbp), %xmm0
	jbe	.LBB56_51
# BB#50:                                # %if.then.165
                                        #   in Loop: Header=BB56_7 Depth=2
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
.LBB56_51:                              # %if.end.166
                                        #   in Loop: Header=BB56_7 Depth=2
	jmp	.LBB56_52
.LBB56_52:                              # %for.inc.167
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB56_7
.LBB56_53:                              # %for.end.169
                                        #   in Loop: Header=BB56_5 Depth=1
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	36(%rax), %esi
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-112(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	44(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, -208(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	pixel_region_set_row
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB56_55
# BB#54:                                # %if.then.175
                                        #   in Loop: Header=BB56_5 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	addl	-160(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	movq	-24(%rbp), %rax
	movl	-156(%rbp), %esi
	movl	-160(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
.LBB56_55:                              # %if.end.178
                                        #   in Loop: Header=BB56_5 Depth=1
	jmp	.LBB56_56
.LBB56_56:                              # %for.inc.179
                                        #   in Loop: Header=BB56_5 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB56_5
.LBB56_57:                              # %for.end.181
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	shapeburst_region, .Lfunc_end56-shapeburst_region
	.cfi_endproc

	.globl	fatten_region
	.align	16, 0x90
	.type	fatten_region,@function
fatten_region:                          # @fatten_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movw	%dx, %ax
	movw	%si, %cx
	movq	%rdi, -8(%rbp)
	movw	%cx, -10(%rbp)
	movw	%ax, -12(%rbp)
	movswl	-10(%rbp), %edx
	cmpl	$0, %edx
	jle	.LBB57_2
# BB#1:                                 # %lor.lhs.false
	movswl	-12(%rbp), %eax
	cmpl	$0, %eax
	jg	.LBB57_3
.LBB57_2:                               # %if.then
	jmp	.LBB57_89
.LBB57_3:                               # %if.end
	movl	$8, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	movswl	-10(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movswl	-12(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movl	$0, -16(%rbp)
.LBB57_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movswl	-12(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB57_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB57_4 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movslq	44(%rcx), %rdi
	callq	g_malloc_n
	movslq	-16(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB57_4 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB57_4
.LBB57_7:                               # %for.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	movswl	-10(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %eax
	movswl	-12(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -80(%rbp)
	movl	$0, -16(%rbp)
.LBB57_8:                               # %for.cond.27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_16 Depth 2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movswl	-10(%rbp), %esi
	shll	$1, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB57_21
# BB#9:                                 # %for.body.34
                                        #   in Loop: Header=BB57_8 Depth=1
	movl	-16(%rbp), %eax
	movswl	-10(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB57_11
# BB#10:                                # %if.then.38
                                        #   in Loop: Header=BB57_8 Depth=1
	movq	-80(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB57_15
.LBB57_11:                              # %if.else
                                        #   in Loop: Header=BB57_8 Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movswl	-10(%rbp), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB57_13
# BB#12:                                # %if.then.46
                                        #   in Loop: Header=BB57_8 Depth=1
	movswl	-12(%rbp), %eax
	addl	$1, %eax
	movl	-16(%rbp), %ecx
	movswl	-10(%rbp), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rsi
	addq	-80(%rbp), %rsi
	movslq	-16(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	%rsi, (%r8,%rdi,8)
	jmp	.LBB57_14
.LBB57_13:                              # %if.else.55
                                        #   in Loop: Header=BB57_8 Depth=1
	movswl	-12(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movswl	-10(%rbp), %esi
	addl	%esi, %edx
	subl	$1, %edx
	imull	%edx, %eax
	movslq	%eax, %rcx
	addq	-80(%rbp), %rcx
	movslq	-16(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	%rcx, (%r8,%rdi,8)
.LBB57_14:                              # %if.end.67
                                        #   in Loop: Header=BB57_8 Depth=1
	jmp	.LBB57_15
.LBB57_15:                              # %if.end.68
                                        #   in Loop: Header=BB57_8 Depth=1
	movl	$0, -20(%rbp)
.LBB57_16:                              # %for.cond.69
                                        #   Parent Loop BB57_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movswl	-10(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB57_19
# BB#17:                                # %for.body.74
                                        #   in Loop: Header=BB57_16 Depth=2
	movslq	-20(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movb	$0, (%rcx,%rax)
# BB#18:                                # %for.inc.79
                                        #   in Loop: Header=BB57_16 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB57_16
.LBB57_19:                              # %for.end.81
                                        #   in Loop: Header=BB57_8 Depth=1
	jmp	.LBB57_20
.LBB57_20:                              # %for.inc.82
                                        #   in Loop: Header=BB57_8 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB57_8
.LBB57_21:                              # %for.end.84
	movl	$1, %eax
	movl	%eax, %esi
	movswl	-10(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movslq	44(%rcx), %rdi
	callq	g_malloc_n
	movl	$2, %r8d
	movl	%r8d, %esi
	movq	%rax, -48(%rbp)
	movswl	-10(%rbp), %r8d
	shll	$1, %r8d
	addl	$1, %r8d
	movslq	%r8d, %rdi
	callq	g_malloc_n
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movw	-10(%rbp), %r9w
	movzwl	%r9w, %esi
	movzwl	-12(%rbp), %edx
	callq	compute_border
	xorl	%esi, %esi
	movswl	-10(%rbp), %edx
	movq	-64(%rbp), %rax
	movslq	%edx, %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rdx
	callq	memset
	movl	$0, -16(%rbp)
.LBB57_22:                              # %for.cond.100
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	movswl	-12(%rbp), %edx
	cmpl	%edx, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jge	.LBB57_24
# BB#23:                                # %land.rhs
                                        #   in Loop: Header=BB57_22 Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	setl	%dl
	movb	%dl, -81(%rbp)          # 1-byte Spill
.LBB57_24:                              # %land.end
                                        #   in Loop: Header=BB57_22 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB57_25
	jmp	.LBB57_27
.LBB57_25:                              # %for.body.106
                                        #   in Loop: Header=BB57_22 Depth=1
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movl	-16(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rax
	movq	-40(%rbp), %r10
	movq	(%r10,%rax,8), %r8
	movl	%edx, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-88(%rbp), %ecx         # 4-byte Reload
	callq	pixel_region_get_row
# BB#26:                                # %for.inc.114
                                        #   in Loop: Header=BB57_22 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB57_22
.LBB57_27:                              # %for.end.116
	movl	$0, -24(%rbp)
.LBB57_28:                              # %for.cond.117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_30 Depth 2
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB57_38
# BB#29:                                # %for.body.121
                                        #   in Loop: Header=BB57_28 Depth=1
	movslq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movb	$0, (%rax)
	movslq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movb	%dl, 1(%rax)
	movl	$2, -20(%rbp)
.LBB57_30:                              # %for.cond.131
                                        #   Parent Loop BB57_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movswl	-12(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB57_36
# BB#31:                                # %for.body.136
                                        #   in Loop: Header=BB57_30 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %esi
	movl	-20(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rax
	movslq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %edi
	cmpl	%edi, %esi
	jle	.LBB57_33
# BB#32:                                # %cond.true
                                        #   in Loop: Header=BB57_30 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %esi
	movl	%esi, -92(%rbp)         # 4-byte Spill
	jmp	.LBB57_34
.LBB57_33:                              # %cond.false
                                        #   in Loop: Header=BB57_30 Depth=2
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB57_34:                              # %cond.end
                                        #   in Loop: Header=BB57_30 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-20(%rbp), %rdx
	movslq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#35:                                # %for.inc.166
                                        #   in Loop: Header=BB57_30 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB57_30
.LBB57_36:                              # %for.end.168
                                        #   in Loop: Header=BB57_28 Depth=1
	jmp	.LBB57_37
.LBB57_37:                              # %for.inc.169
                                        #   in Loop: Header=BB57_28 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB57_28
.LBB57_38:                              # %for.end.171
	movl	$0, -28(%rbp)
.LBB57_39:                              # %for.cond.172
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_44 Depth 2
                                        #       Child Loop BB57_46 Depth 3
                                        #     Child Loop BB57_61 Depth 2
                                        #       Child Loop BB57_66 Depth 3
                                        #       Child Loop BB57_74 Depth 3
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB57_84
# BB#40:                                # %for.body.176
                                        #   in Loop: Header=BB57_39 Depth=1
	movq	-40(%rbp), %rdi
	movswl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	rotate_pointers
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	48(%rdi), %esi
	movswl	-12(%rbp), %ecx
	subl	%ecx, %esi
	cmpl	%esi, %eax
	jge	.LBB57_42
# BB#41:                                # %if.then.184
                                        #   in Loop: Header=BB57_39 Depth=1
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-28(%rbp), %ecx
	movswl	-12(%rbp), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movswq	-12(%rbp), %rax
	movq	-40(%rbp), %r8
	movq	(%r8,%rax,8), %r8
	movl	%edx, -96(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-96(%rbp), %ecx         # 4-byte Reload
	callq	pixel_region_get_row
	jmp	.LBB57_43
.LBB57_42:                              # %if.else.193
                                        #   in Loop: Header=BB57_39 Depth=1
	xorl	%esi, %esi
	movswq	-12(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rdx
	callq	memset
.LBB57_43:                              # %if.end.198
                                        #   in Loop: Header=BB57_39 Depth=1
	movl	$0, -24(%rbp)
.LBB57_44:                              # %for.cond.199
                                        #   Parent Loop BB57_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB57_46 Depth 3
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB57_60
# BB#45:                                # %for.body.203
                                        #   in Loop: Header=BB57_44 Depth=2
	movswl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB57_46:                              # %for.cond.205
                                        #   Parent Loop BB57_39 Depth=1
                                        #     Parent Loop BB57_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, -16(%rbp)
	jle	.LBB57_58
# BB#47:                                # %for.body.208
                                        #   in Loop: Header=BB57_46 Depth=3
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-24(%rbp), %rcx
	movl	-16(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %edi
	cmpl	%edi, %eax
	jle	.LBB57_49
# BB#48:                                # %cond.true.223
                                        #   in Loop: Header=BB57_46 Depth=3
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB57_50
.LBB57_49:                              # %cond.false.230
                                        #   in Loop: Header=BB57_46 Depth=3
	movslq	-24(%rbp), %rax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB57_50:                              # %cond.end.237
                                        #   in Loop: Header=BB57_46 Depth=3
	movl	-100(%rbp), %eax        # 4-byte Reload
	movslq	-24(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %edi
	cmpl	%edi, %eax
	jle	.LBB57_55
# BB#51:                                # %cond.true.246
                                        #   in Loop: Header=BB57_46 Depth=3
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-24(%rbp), %rcx
	movl	-16(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %edi
	cmpl	%edi, %eax
	jle	.LBB57_53
# BB#52:                                # %cond.true.261
                                        #   in Loop: Header=BB57_46 Depth=3
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB57_54
.LBB57_53:                              # %cond.false.268
                                        #   in Loop: Header=BB57_46 Depth=3
	movslq	-24(%rbp), %rax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB57_54:                              # %cond.end.275
                                        #   in Loop: Header=BB57_46 Depth=3
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB57_56
.LBB57_55:                              # %cond.false.277
                                        #   in Loop: Header=BB57_46 Depth=3
	movslq	-24(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %esi
	movl	%esi, -108(%rbp)        # 4-byte Spill
.LBB57_56:                              # %cond.end.283
                                        #   in Loop: Header=BB57_46 Depth=3
	movl	-108(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-16(%rbp), %rdx
	movslq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#57:                                # %for.inc.290
                                        #   in Loop: Header=BB57_46 Depth=3
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB57_46
.LBB57_58:                              # %for.end.291
                                        #   in Loop: Header=BB57_44 Depth=2
	movslq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movb	%dl, (%rax)
# BB#59:                                # %for.inc.298
                                        #   in Loop: Header=BB57_44 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB57_44
.LBB57_60:                              # %for.end.300
                                        #   in Loop: Header=BB57_39 Depth=1
	movq	-64(%rbp), %rax
	movswq	-2(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movzbl	%dl, %esi
	movw	%si, %di
	movw	%di, -66(%rbp)
	movw	$1, -68(%rbp)
	movl	$0, -24(%rbp)
.LBB57_61:                              # %for.cond.306
                                        #   Parent Loop BB57_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB57_66 Depth 3
                                        #       Child Loop BB57_74 Depth 3
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB57_82
# BB#62:                                # %for.body.310
                                        #   in Loop: Header=BB57_61 Depth=2
	movw	-68(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -68(%rbp)
	movswl	-68(%rbp), %ecx
	cmpl	$0, %ecx
	jl	.LBB57_73
# BB#63:                                # %if.then.315
                                        #   in Loop: Header=BB57_61 Depth=2
	movswl	-66(%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB57_65
# BB#64:                                # %if.then.319
                                        #   in Loop: Header=BB57_61 Depth=2
	movslq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	jmp	.LBB57_72
.LBB57_65:                              # %if.else.322
                                        #   in Loop: Header=BB57_61 Depth=2
	movw	$0, -66(%rbp)
	movswl	-10(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB57_66:                              # %for.cond.324
                                        #   Parent Loop BB57_39 Depth=1
                                        #     Parent Loop BB57_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, -16(%rbp)
	jl	.LBB57_71
# BB#67:                                # %for.body.327
                                        #   in Loop: Header=BB57_66 Depth=3
	movswl	-66(%rbp), %eax
	movslq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movswq	(%rdx,%rcx,2), %rcx
	movl	-24(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rdx
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB57_69
# BB#68:                                # %if.then.339
                                        #   in Loop: Header=BB57_66 Depth=3
	movslq	-16(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movswq	(%rdx,%rax,2), %rax
	movl	-24(%rbp), %esi
	addl	%ecx, %esi
	movslq	%esi, %rdx
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movb	(%rdx,%rax), %r8b
	movzbl	%r8b, %ecx
	movw	%cx, %r9w
	movw	%r9w, -66(%rbp)
	movl	-16(%rbp), %ecx
	movw	%cx, %r9w
	movw	%r9w, -68(%rbp)
.LBB57_69:                              # %if.end.349
                                        #   in Loop: Header=BB57_66 Depth=3
	jmp	.LBB57_70
.LBB57_70:                              # %for.inc.350
                                        #   in Loop: Header=BB57_66 Depth=3
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB57_66
.LBB57_71:                              # %for.end.352
                                        #   in Loop: Header=BB57_61 Depth=2
	movw	-66(%rbp), %ax
	movb	%al, %cl
	movslq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB57_72:                              # %if.end.356
                                        #   in Loop: Header=BB57_61 Depth=2
	jmp	.LBB57_80
.LBB57_73:                              # %if.else.357
                                        #   in Loop: Header=BB57_61 Depth=2
	movw	-10(%rbp), %ax
	movw	%ax, -68(%rbp)
	movswl	-10(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-64(%rbp), %rsi
	movswq	(%rsi,%rdx,2), %rdx
	movl	-24(%rbp), %edi
	addl	%ecx, %edi
	movslq	%edi, %rsi
	movq	-56(%rbp), %r8
	movq	(%r8,%rsi,8), %rsi
	movb	(%rsi,%rdx), %r9b
	movzbl	%r9b, %ecx
	movw	%cx, %ax
	movw	%ax, -66(%rbp)
	movswl	-10(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -16(%rbp)
.LBB57_74:                              # %for.cond.369
                                        #   Parent Loop BB57_39 Depth=1
                                        #     Parent Loop BB57_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movl	-16(%rbp), %ecx
	movswl	-10(%rbp), %edx
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jl	.LBB57_79
# BB#75:                                # %for.body.374
                                        #   in Loop: Header=BB57_74 Depth=3
	movswl	-66(%rbp), %eax
	movslq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movswq	(%rdx,%rcx,2), %rcx
	movl	-24(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rdx
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB57_77
# BB#76:                                # %if.then.386
                                        #   in Loop: Header=BB57_74 Depth=3
	movslq	-16(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movswq	(%rdx,%rax,2), %rax
	movl	-24(%rbp), %esi
	addl	%ecx, %esi
	movslq	%esi, %rdx
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movb	(%rdx,%rax), %r8b
	movzbl	%r8b, %ecx
	movw	%cx, %r9w
	movw	%r9w, -66(%rbp)
	movl	-16(%rbp), %ecx
	movw	%cx, %r9w
	movw	%r9w, -68(%rbp)
.LBB57_77:                              # %if.end.396
                                        #   in Loop: Header=BB57_74 Depth=3
	jmp	.LBB57_78
.LBB57_78:                              # %for.inc.397
                                        #   in Loop: Header=BB57_74 Depth=3
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB57_74
.LBB57_79:                              # %for.end.399
                                        #   in Loop: Header=BB57_61 Depth=2
	movw	-66(%rbp), %ax
	movb	%al, %cl
	movslq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB57_80:                              # %if.end.403
                                        #   in Loop: Header=BB57_61 Depth=2
	jmp	.LBB57_81
.LBB57_81:                              # %for.inc.404
                                        #   in Loop: Header=BB57_61 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB57_61
.LBB57_82:                              # %for.end.406
                                        #   in Loop: Header=BB57_39 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-48(%rbp), %r8
	movl	%edx, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-112(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_set_row
# BB#83:                                # %for.inc.411
                                        #   in Loop: Header=BB57_39 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB57_39
.LBB57_84:                              # %for.end.413
	xorl	%eax, %eax
	movl	%eax, %ecx
	movswl	-10(%rbp), %eax
	movq	-64(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	shlq	$1, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -64(%rbp)
	movswl	-10(%rbp), %eax
	movq	-56(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
	movl	$0, -16(%rbp)
.LBB57_85:                              # %for.cond.421
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movswl	-12(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB57_88
# BB#86:                                # %for.body.426
                                        #   in Loop: Header=BB57_85 Depth=1
	movslq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#87:                                # %for.inc.429
                                        #   in Loop: Header=BB57_85 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB57_85
.LBB57_88:                              # %for.end.431
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB57_89:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	fatten_region, .Lfunc_end57-fatten_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI58_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	compute_border,@function
compute_border:                         # @compute_border
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movw	%dx, %ax
	movw	%si, %cx
	movq	%rdi, -8(%rbp)
	movw	%cx, -10(%rbp)
	movw	%ax, -12(%rbp)
	movzwl	-10(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	movl	$0, -16(%rbp)
.LBB58_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB58_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	-16(%rbp), %eax
	movzwl	-10(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB58_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB58_1 Depth=1
	movsd	.LCPI58_0, %xmm0        # xmm0 = mem[0],zero
	movl	-16(%rbp), %eax
	movzwl	-10(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	jmp	.LBB58_8
.LBB58_4:                               # %if.else
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	-16(%rbp), %eax
	movzwl	-10(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB58_6
# BB#5:                                 # %if.then.11
                                        #   in Loop: Header=BB58_1 Depth=1
	movsd	.LCPI58_0, %xmm0        # xmm0 = mem[0],zero
	movzwl	-10(%rbp), %eax
	subl	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	jmp	.LBB58_7
.LBB58_6:                               # %if.else.16
                                        #   in Loop: Header=BB58_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB58_7:                               # %if.end
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_8
.LBB58_8:                               # %if.end.17
                                        #   in Loop: Header=BB58_1 Depth=1
	movzwl	-12(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	-10(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	imull	%eax, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	rint
	movaps	%xmm0, %xmm1
	cvttsd2si	%xmm0, %eax
	movw	%ax, %cx
	movslq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movw	%cx, (%rsi,%rdx,2)
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB58_1
.LBB58_10:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	compute_border, .Lfunc_end58-compute_border
	.cfi_endproc

	.align	16, 0x90
	.type	rotate_pointers,@function
rotate_pointers:                        # @rotate_pointers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movl	$0, -16(%rbp)
.LBB59_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB59_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rsi
	movq	%rcx, (%rsi,%rdx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB59_1
.LBB59_4:                               # %for.end
	movq	-24(%rbp), %rax
	movl	-16(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
	popq	%rbp
	retq
.Lfunc_end59:
	.size	rotate_pointers, .Lfunc_end59-rotate_pointers
	.cfi_endproc

	.globl	thin_region
	.align	16, 0x90
	.type	thin_region,@function
thin_region:                            # @thin_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movw	%dx, %ax
	movw	%si, %r8w
	movq	%rdi, -8(%rbp)
	movw	%r8w, -10(%rbp)
	movw	%ax, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movswl	-10(%rbp), %ecx
	cmpl	$0, %ecx
	jle	.LBB60_2
# BB#1:                                 # %lor.lhs.false
	movswl	-12(%rbp), %eax
	cmpl	$0, %eax
	jg	.LBB60_3
.LBB60_2:                               # %if.then
	jmp	.LBB60_106
.LBB60_3:                               # %if.end
	movl	$8, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	movswl	-10(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movswl	-12(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
.LBB60_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movswl	-12(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB60_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB60_4 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movslq	44(%rcx), %rdi
	callq	g_malloc_n
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB60_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB60_4
.LBB60_7:                               # %for.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	movswl	-10(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %eax
	addl	$1, %eax
	movswl	-12(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %eax
	movl	%eax, -84(%rbp)
	movslq	-84(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -80(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB60_9
# BB#8:                                 # %if.then.28
	movl	$255, %esi
	movq	-80(%rbp), %rdi
	movslq	-84(%rbp), %rdx
	callq	memset
	jmp	.LBB60_10
.LBB60_9:                               # %if.else
	xorl	%esi, %esi
	movq	-80(%rbp), %rdi
	movslq	-84(%rbp), %rdx
	callq	memset
.LBB60_10:                              # %if.end.31
	movl	$0, -20(%rbp)
.LBB60_11:                              # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movswl	-10(%rbp), %esi
	shll	$1, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB60_26
# BB#12:                                # %for.body.39
                                        #   in Loop: Header=BB60_11 Depth=1
	movl	-20(%rbp), %eax
	movswl	-10(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB60_17
# BB#13:                                # %if.then.43
                                        #   in Loop: Header=BB60_11 Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB60_15
# BB#14:                                # %if.then.45
                                        #   in Loop: Header=BB60_11 Depth=1
	movq	-80(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB60_16
.LBB60_15:                              # %if.else.48
                                        #   in Loop: Header=BB60_11 Depth=1
	movswl	-12(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movswl	-10(%rbp), %esi
	addl	%esi, %edx
	imull	%edx, %eax
	movslq	%eax, %rcx
	addq	-80(%rbp), %rcx
	movslq	-20(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	%rcx, (%r8,%rdi,8)
.LBB60_16:                              # %if.end.59
                                        #   in Loop: Header=BB60_11 Depth=1
	jmp	.LBB60_24
.LBB60_17:                              # %if.else.60
                                        #   in Loop: Header=BB60_11 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movswl	-10(%rbp), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB60_19
# BB#18:                                # %if.then.66
                                        #   in Loop: Header=BB60_11 Depth=1
	movswl	-12(%rbp), %eax
	addl	$1, %eax
	movl	-20(%rbp), %ecx
	movswl	-10(%rbp), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rsi
	addq	-80(%rbp), %rsi
	movslq	-20(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	%rsi, (%r8,%rdi,8)
	jmp	.LBB60_23
.LBB60_19:                              # %if.else.75
                                        #   in Loop: Header=BB60_11 Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB60_21
# BB#20:                                # %if.then.77
                                        #   in Loop: Header=BB60_11 Depth=1
	movswl	-12(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movswl	-10(%rbp), %esi
	addl	%esi, %edx
	subl	$1, %edx
	imull	%edx, %eax
	movslq	%eax, %rcx
	addq	-80(%rbp), %rcx
	movslq	-20(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	%rcx, (%r8,%rdi,8)
	jmp	.LBB60_22
.LBB60_21:                              # %if.else.89
                                        #   in Loop: Header=BB60_11 Depth=1
	movswl	-12(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movswl	-10(%rbp), %esi
	addl	%esi, %edx
	imull	%edx, %eax
	movslq	%eax, %rcx
	addq	-80(%rbp), %rcx
	movslq	-20(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	%rcx, (%r8,%rdi,8)
.LBB60_22:                              # %if.end.100
                                        #   in Loop: Header=BB60_11 Depth=1
	jmp	.LBB60_23
.LBB60_23:                              # %if.end.101
                                        #   in Loop: Header=BB60_11 Depth=1
	jmp	.LBB60_24
.LBB60_24:                              # %if.end.102
                                        #   in Loop: Header=BB60_11 Depth=1
	jmp	.LBB60_25
.LBB60_25:                              # %for.inc.103
                                        #   in Loop: Header=BB60_11 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB60_11
.LBB60_26:                              # %for.end.105
	cmpl	$0, -16(%rbp)
	jne	.LBB60_32
# BB#27:                                # %if.then.107
	movl	$0, -24(%rbp)
.LBB60_28:                              # %for.cond.108
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movswl	-10(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB60_31
# BB#29:                                # %for.body.113
                                        #   in Loop: Header=BB60_28 Depth=1
	movslq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	$0, (%rcx,%rax)
# BB#30:                                # %for.inc.117
                                        #   in Loop: Header=BB60_28 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB60_28
.LBB60_31:                              # %for.end.119
	jmp	.LBB60_32
.LBB60_32:                              # %if.end.120
	movl	$1, %eax
	movl	%eax, %esi
	movswl	-10(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movslq	44(%rcx), %rdi
	callq	g_malloc_n
	movl	$2, %r8d
	movl	%r8d, %esi
	movq	%rax, -48(%rbp)
	movswl	-10(%rbp), %r8d
	shll	$1, %r8d
	addl	$1, %r8d
	movslq	%r8d, %rdi
	callq	g_malloc_n
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movw	-10(%rbp), %r9w
	movzwl	%r9w, %esi
	movzwl	-12(%rbp), %edx
	callq	compute_border
	movswl	-10(%rbp), %edx
	movq	-64(%rbp), %rax
	movslq	%edx, %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movl	$0, -20(%rbp)
.LBB60_33:                              # %for.cond.133
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-20(%rbp), %eax
	movswl	-12(%rbp), %edx
	cmpl	%edx, %eax
	movb	%cl, -85(%rbp)          # 1-byte Spill
	jge	.LBB60_35
# BB#34:                                # %land.rhs
                                        #   in Loop: Header=BB60_33 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	setl	%dl
	movb	%dl, -85(%rbp)          # 1-byte Spill
.LBB60_35:                              # %land.end
                                        #   in Loop: Header=BB60_33 Depth=1
	movb	-85(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB60_36
	jmp	.LBB60_38
.LBB60_36:                              # %for.body.139
                                        #   in Loop: Header=BB60_33 Depth=1
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movl	-20(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rax
	movq	-40(%rbp), %r10
	movq	(%r10,%rax,8), %r8
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-92(%rbp), %ecx         # 4-byte Reload
	callq	pixel_region_get_row
# BB#37:                                # %for.inc.147
                                        #   in Loop: Header=BB60_33 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB60_33
.LBB60_38:                              # %for.end.149
	cmpl	$0, -16(%rbp)
	je	.LBB60_40
# BB#39:                                # %if.then.151
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rdx
	callq	memcpy
	jmp	.LBB60_41
.LBB60_40:                              # %if.else.156
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rdx
	callq	memset
.LBB60_41:                              # %if.end.160
	movl	$0, -28(%rbp)
.LBB60_42:                              # %for.cond.161
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_44 Depth 2
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB60_52
# BB#43:                                # %for.body.165
                                        #   in Loop: Header=BB60_42 Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-28(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movb	%dl, (%rax)
	movl	$1, -24(%rbp)
.LBB60_44:                              # %for.cond.172
                                        #   Parent Loop BB60_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movswl	-12(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB60_50
# BB#45:                                # %for.body.177
                                        #   in Loop: Header=BB60_44 Depth=2
	movslq	-28(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %esi
	movl	-24(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rax
	movslq	-28(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %edi
	cmpl	%edi, %esi
	jge	.LBB60_47
# BB#46:                                # %cond.true
                                        #   in Loop: Header=BB60_44 Depth=2
	movslq	-28(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %esi
	movl	%esi, -96(%rbp)         # 4-byte Spill
	jmp	.LBB60_48
.LBB60_47:                              # %cond.false
                                        #   in Loop: Header=BB60_44 Depth=2
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	-28(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB60_48:                              # %cond.end
                                        #   in Loop: Header=BB60_44 Depth=2
	movl	-96(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-24(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#49:                                # %for.inc.207
                                        #   in Loop: Header=BB60_44 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB60_44
.LBB60_50:                              # %for.end.209
                                        #   in Loop: Header=BB60_42 Depth=1
	jmp	.LBB60_51
.LBB60_51:                              # %for.inc.210
                                        #   in Loop: Header=BB60_42 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB60_42
.LBB60_52:                              # %for.end.212
	movl	$0, -32(%rbp)
.LBB60_53:                              # %for.cond.213
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_61 Depth 2
                                        #       Child Loop BB60_63 Depth 3
                                        #     Child Loop BB60_78 Depth 2
                                        #       Child Loop BB60_83 Depth 3
                                        #       Child Loop BB60_91 Depth 3
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB60_101
# BB#54:                                # %for.body.217
                                        #   in Loop: Header=BB60_53 Depth=1
	movq	-40(%rbp), %rdi
	movswl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	rotate_pointers
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	48(%rdi), %esi
	movswl	-12(%rbp), %ecx
	subl	%ecx, %esi
	cmpl	%esi, %eax
	jge	.LBB60_56
# BB#55:                                # %if.then.225
                                        #   in Loop: Header=BB60_53 Depth=1
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-32(%rbp), %ecx
	movswl	-12(%rbp), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movswq	-12(%rbp), %rax
	movq	-40(%rbp), %r8
	movq	(%r8,%rax,8), %r8
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_get_row
	jmp	.LBB60_60
.LBB60_56:                              # %if.else.234
                                        #   in Loop: Header=BB60_53 Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB60_58
# BB#57:                                # %if.then.236
                                        #   in Loop: Header=BB60_53 Depth=1
	movswq	-12(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movswl	-12(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rdx
	callq	memcpy
	jmp	.LBB60_59
.LBB60_58:                              # %if.else.245
                                        #   in Loop: Header=BB60_53 Depth=1
	xorl	%esi, %esi
	movswq	-12(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rdx
	callq	memset
.LBB60_59:                              # %if.end.250
                                        #   in Loop: Header=BB60_53 Depth=1
	jmp	.LBB60_60
.LBB60_60:                              # %if.end.251
                                        #   in Loop: Header=BB60_53 Depth=1
	movl	$0, -28(%rbp)
.LBB60_61:                              # %for.cond.252
                                        #   Parent Loop BB60_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB60_63 Depth 3
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB60_77
# BB#62:                                # %for.body.256
                                        #   in Loop: Header=BB60_61 Depth=2
	movswl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB60_63:                              # %for.cond.258
                                        #   Parent Loop BB60_53 Depth=1
                                        #     Parent Loop BB60_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, -20(%rbp)
	jle	.LBB60_75
# BB#64:                                # %for.body.261
                                        #   in Loop: Header=BB60_63 Depth=3
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	-28(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-28(%rbp), %rcx
	movl	-20(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %edi
	cmpl	%edi, %eax
	jge	.LBB60_66
# BB#65:                                # %cond.true.276
                                        #   in Loop: Header=BB60_63 Depth=3
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	-28(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB60_67
.LBB60_66:                              # %cond.false.283
                                        #   in Loop: Header=BB60_63 Depth=3
	movslq	-28(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB60_67:                              # %cond.end.290
                                        #   in Loop: Header=BB60_63 Depth=3
	movl	-104(%rbp), %eax        # 4-byte Reload
	movslq	-28(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %edi
	cmpl	%edi, %eax
	jge	.LBB60_72
# BB#68:                                # %cond.true.299
                                        #   in Loop: Header=BB60_63 Depth=3
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	-28(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-28(%rbp), %rcx
	movl	-20(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %edi
	cmpl	%edi, %eax
	jge	.LBB60_70
# BB#69:                                # %cond.true.314
                                        #   in Loop: Header=BB60_63 Depth=3
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	-28(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB60_71
.LBB60_70:                              # %cond.false.321
                                        #   in Loop: Header=BB60_63 Depth=3
	movslq	-28(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB60_71:                              # %cond.end.328
                                        #   in Loop: Header=BB60_63 Depth=3
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB60_73
.LBB60_72:                              # %cond.false.330
                                        #   in Loop: Header=BB60_63 Depth=3
	movslq	-28(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %esi
	movl	%esi, -112(%rbp)        # 4-byte Spill
.LBB60_73:                              # %cond.end.336
                                        #   in Loop: Header=BB60_63 Depth=3
	movl	-112(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-20(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#74:                                # %for.inc.343
                                        #   in Loop: Header=BB60_63 Depth=3
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB60_63
.LBB60_75:                              # %for.end.344
                                        #   in Loop: Header=BB60_61 Depth=2
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-28(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movb	%dl, (%rax)
# BB#76:                                # %for.inc.351
                                        #   in Loop: Header=BB60_61 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB60_61
.LBB60_77:                              # %for.end.353
                                        #   in Loop: Header=BB60_53 Depth=1
	movq	-64(%rbp), %rax
	movswq	-2(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movzbl	%dl, %esi
	movw	%si, %di
	movw	%di, -66(%rbp)
	movw	$0, -68(%rbp)
	movl	$0, -28(%rbp)
.LBB60_78:                              # %for.cond.359
                                        #   Parent Loop BB60_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB60_83 Depth 3
                                        #       Child Loop BB60_91 Depth 3
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB60_99
# BB#79:                                # %for.body.363
                                        #   in Loop: Header=BB60_78 Depth=2
	movw	-68(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -68(%rbp)
	movswl	-68(%rbp), %ecx
	cmpl	$0, %ecx
	jl	.LBB60_90
# BB#80:                                # %if.then.368
                                        #   in Loop: Header=BB60_78 Depth=2
	movswl	-66(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB60_82
# BB#81:                                # %if.then.372
                                        #   in Loop: Header=BB60_78 Depth=2
	movslq	-28(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB60_89
.LBB60_82:                              # %if.else.375
                                        #   in Loop: Header=BB60_78 Depth=2
	movw	$255, -66(%rbp)
	movswl	-10(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB60_83:                              # %for.cond.377
                                        #   Parent Loop BB60_53 Depth=1
                                        #     Parent Loop BB60_78 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, -20(%rbp)
	jl	.LBB60_88
# BB#84:                                # %for.body.380
                                        #   in Loop: Header=BB60_83 Depth=3
	movswl	-66(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movswq	(%rdx,%rcx,2), %rcx
	movl	-28(%rbp), %esi
	addl	-20(%rbp), %esi
	movslq	%esi, %rdx
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jle	.LBB60_86
# BB#85:                                # %if.then.392
                                        #   in Loop: Header=BB60_83 Depth=3
	movslq	-20(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movswq	(%rdx,%rax,2), %rax
	movl	-28(%rbp), %esi
	addl	%ecx, %esi
	movslq	%esi, %rdx
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movb	(%rdx,%rax), %r8b
	movzbl	%r8b, %ecx
	movw	%cx, %r9w
	movw	%r9w, -66(%rbp)
	movl	-20(%rbp), %ecx
	movw	%cx, %r9w
	movw	%r9w, -68(%rbp)
.LBB60_86:                              # %if.end.402
                                        #   in Loop: Header=BB60_83 Depth=3
	jmp	.LBB60_87
.LBB60_87:                              # %for.inc.403
                                        #   in Loop: Header=BB60_83 Depth=3
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB60_83
.LBB60_88:                              # %for.end.405
                                        #   in Loop: Header=BB60_78 Depth=2
	movw	-66(%rbp), %ax
	movb	%al, %cl
	movslq	-28(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB60_89:                              # %if.end.409
                                        #   in Loop: Header=BB60_78 Depth=2
	jmp	.LBB60_97
.LBB60_90:                              # %if.else.410
                                        #   in Loop: Header=BB60_78 Depth=2
	movw	-10(%rbp), %ax
	movw	%ax, -68(%rbp)
	movswl	-10(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-64(%rbp), %rsi
	movswq	(%rsi,%rdx,2), %rdx
	movl	-28(%rbp), %edi
	addl	%ecx, %edi
	movslq	%edi, %rsi
	movq	-56(%rbp), %r8
	movq	(%r8,%rsi,8), %rsi
	movb	(%rsi,%rdx), %r9b
	movzbl	%r9b, %ecx
	movw	%cx, %ax
	movw	%ax, -66(%rbp)
	movswl	-10(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -20(%rbp)
.LBB60_91:                              # %for.cond.422
                                        #   Parent Loop BB60_53 Depth=1
                                        #     Parent Loop BB60_78 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	movswl	-10(%rbp), %edx
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jl	.LBB60_96
# BB#92:                                # %for.body.427
                                        #   in Loop: Header=BB60_91 Depth=3
	movswl	-66(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movswq	(%rdx,%rcx,2), %rcx
	movl	-28(%rbp), %esi
	addl	-20(%rbp), %esi
	movslq	%esi, %rdx
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jle	.LBB60_94
# BB#93:                                # %if.then.439
                                        #   in Loop: Header=BB60_91 Depth=3
	movslq	-20(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movswq	(%rdx,%rax,2), %rax
	movl	-28(%rbp), %esi
	addl	%ecx, %esi
	movslq	%esi, %rdx
	movq	-56(%rbp), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movb	(%rdx,%rax), %r8b
	movzbl	%r8b, %ecx
	movw	%cx, %r9w
	movw	%r9w, -66(%rbp)
	movl	-20(%rbp), %ecx
	movw	%cx, %r9w
	movw	%r9w, -68(%rbp)
.LBB60_94:                              # %if.end.449
                                        #   in Loop: Header=BB60_91 Depth=3
	jmp	.LBB60_95
.LBB60_95:                              # %for.inc.450
                                        #   in Loop: Header=BB60_91 Depth=3
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB60_91
.LBB60_96:                              # %for.end.452
                                        #   in Loop: Header=BB60_78 Depth=2
	movw	-66(%rbp), %ax
	movb	%al, %cl
	movslq	-28(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB60_97:                              # %if.end.456
                                        #   in Loop: Header=BB60_78 Depth=2
	jmp	.LBB60_98
.LBB60_98:                              # %for.inc.457
                                        #   in Loop: Header=BB60_78 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB60_78
.LBB60_99:                              # %for.end.459
                                        #   in Loop: Header=BB60_53 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-48(%rbp), %r8
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_set_row
# BB#100:                               # %for.inc.464
                                        #   in Loop: Header=BB60_53 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB60_53
.LBB60_101:                             # %for.end.466
	xorl	%eax, %eax
	movl	%eax, %ecx
	movswl	-10(%rbp), %eax
	movq	-64(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	shlq	$1, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -64(%rbp)
	movswl	-10(%rbp), %eax
	movq	-56(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
	movl	$0, -20(%rbp)
.LBB60_102:                             # %for.cond.474
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movswl	-12(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB60_105
# BB#103:                               # %for.body.479
                                        #   in Loop: Header=BB60_102 Depth=1
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#104:                               # %for.inc.482
                                        #   in Loop: Header=BB60_102 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB60_102
.LBB60_105:                             # %for.end.484
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB60_106:                             # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	thin_region, .Lfunc_end60-thin_region
	.cfi_endproc

	.globl	smooth_region
	.align	16, 0x90
	.type	smooth_region,@function
smooth_region:                          # @smooth_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB61_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -24(%rbp)
	jge	.LBB61_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB61_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movslq	-24(%rbp), %rsi
	movq	%rax, -48(%rbp,%rsi,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB61_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB61_1
.LBB61_4:                               # %for.end
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-20(%rbp), %rdi
	callq	g_malloc_n
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %edx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %r8
	callq	pixel_region_get_row
	movq	-48(%rbp), %rax
	movb	1(%rax), %r10b
	movq	-48(%rbp), %rax
	movb	%r10b, (%rax)
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rdi
	movb	(%rdi,%rax), %r10b
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-48(%rbp), %rdi
	movb	%r10b, (%rdi,%rax)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	callq	memcpy
	movl	$0, -16(%rbp)
.LBB61_5:                               # %for.cond.21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_10 Depth 2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB61_15
# BB#6:                                 # %for.body.24
                                        #   in Loop: Header=BB61_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB61_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB61_5 Depth=1
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-16(%rbp), %ecx
	addl	$1, %ecx
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	pixel_region_get_row
	movq	-32(%rbp), %rax
	movb	1(%rax), %r10b
	movq	-32(%rbp), %rax
	movb	%r10b, (%rax)
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rdi
	movb	(%rdi,%rax), %r10b
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rdi
	movb	%r10b, (%rdi,%rax)
	jmp	.LBB61_9
.LBB61_8:                               # %if.else
                                        #   in Loop: Header=BB61_5 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	callq	memcpy
.LBB61_9:                               # %if.end
                                        #   in Loop: Header=BB61_5 Depth=1
	movl	$0, -12(%rbp)
.LBB61_10:                              # %for.cond.50
                                        #   Parent Loop BB61_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB61_13
# BB#11:                                # %for.body.53
                                        #   in Loop: Header=BB61_10 Depth=2
	movl	$9, %eax
	movslq	-12(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	-12(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	addl	%edi, %esi
	movl	-12(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	addl	%edi, %esi
	movslq	-12(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	addl	%edi, %esi
	movl	-12(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	addl	%edi, %esi
	movl	-12(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	addl	%edi, %esi
	movslq	-12(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	addl	%edi, %esi
	movl	-12(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	addl	%edi, %esi
	movl	-12(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	addl	%edi, %esi
	movl	%esi, -60(%rbp)
	movl	-60(%rbp), %esi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-68(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movb	%al, %r8b
	movslq	-12(%rbp), %rcx
	movq	-56(%rbp), %r9
	movb	%r8b, (%r9,%rcx)
# BB#12:                                # %for.inc.107
                                        #   in Loop: Header=BB61_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB61_10
.LBB61_13:                              # %for.end.109
                                        #   in Loop: Header=BB61_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %r8
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-72(%rbp), %ecx         # 4-byte Reload
	callq	pixel_region_set_row
	movl	$3, %esi
	leaq	-48(%rbp), %rdi
	callq	rotate_pointers
# BB#14:                                # %for.inc.113
                                        #   in Loop: Header=BB61_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB61_5
.LBB61_15:                              # %for.end.115
	movl	$0, -24(%rbp)
.LBB61_16:                              # %for.cond.116
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -24(%rbp)
	jge	.LBB61_19
# BB#17:                                # %for.body.119
                                        #   in Loop: Header=BB61_16 Depth=1
	movslq	-24(%rbp), %rax
	movq	-48(%rbp,%rax,8), %rdi
	callq	g_free
# BB#18:                                # %for.inc.122
                                        #   in Loop: Header=BB61_16 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB61_16
.LBB61_19:                              # %for.end.124
	movq	-56(%rbp), %rdi
	callq	g_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	smooth_region, .Lfunc_end61-smooth_region
	.cfi_endproc

	.globl	erode_region
	.align	16, 0x90
	.type	erode_region,@function
erode_region:                           # @erode_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB62_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -24(%rbp)
	jge	.LBB62_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB62_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movslq	-24(%rbp), %rsi
	movq	%rax, -48(%rbp,%rsi,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB62_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB62_1
.LBB62_4:                               # %for.end
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-20(%rbp), %rdi
	callq	g_malloc_n
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %edx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %r8
	callq	pixel_region_get_row
	movq	-48(%rbp), %rax
	movb	1(%rax), %r10b
	movq	-48(%rbp), %rax
	movb	%r10b, (%rax)
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rdi
	movb	(%rdi,%rax), %r10b
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-48(%rbp), %rdi
	movb	%r10b, (%rdi,%rax)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	callq	memcpy
	movl	$0, -16(%rbp)
.LBB62_5:                               # %for.cond.21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_10 Depth 2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB62_25
# BB#6:                                 # %for.body.24
                                        #   in Loop: Header=BB62_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB62_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB62_5 Depth=1
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-16(%rbp), %ecx
	addl	$1, %ecx
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	pixel_region_get_row
	movq	-32(%rbp), %rax
	movb	1(%rax), %r10b
	movq	-32(%rbp), %rax
	movb	%r10b, (%rax)
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rdi
	movb	(%rdi,%rax), %r10b
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rdi
	movb	%r10b, (%rdi,%rax)
	jmp	.LBB62_9
.LBB62_8:                               # %if.else
                                        #   in Loop: Header=BB62_5 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	callq	memcpy
.LBB62_9:                               # %if.end
                                        #   in Loop: Header=BB62_5 Depth=1
	movl	$0, -12(%rbp)
.LBB62_10:                              # %for.cond.50
                                        #   Parent Loop BB62_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB62_23
# BB#11:                                # %for.body.53
                                        #   in Loop: Header=BB62_10 Depth=2
	movl	$255, -60(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB62_13
# BB#12:                                # %if.then.61
                                        #   in Loop: Header=BB62_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -60(%rbp)
.LBB62_13:                              # %if.end.67
                                        #   in Loop: Header=BB62_10 Depth=2
	movslq	-12(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	-60(%rbp), %edx
	jge	.LBB62_15
# BB#14:                                # %if.then.74
                                        #   in Loop: Header=BB62_10 Depth=2
	movslq	-12(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -60(%rbp)
.LBB62_15:                              # %if.end.79
                                        #   in Loop: Header=BB62_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB62_17
# BB#16:                                # %if.then.87
                                        #   in Loop: Header=BB62_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -60(%rbp)
.LBB62_17:                              # %if.end.93
                                        #   in Loop: Header=BB62_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB62_19
# BB#18:                                # %if.then.101
                                        #   in Loop: Header=BB62_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -60(%rbp)
.LBB62_19:                              # %if.end.107
                                        #   in Loop: Header=BB62_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB62_21
# BB#20:                                # %if.then.115
                                        #   in Loop: Header=BB62_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -60(%rbp)
.LBB62_21:                              # %if.end.121
                                        #   in Loop: Header=BB62_10 Depth=2
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movslq	-12(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#22:                                # %for.inc.125
                                        #   in Loop: Header=BB62_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB62_10
.LBB62_23:                              # %for.end.127
                                        #   in Loop: Header=BB62_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %r8
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	callq	pixel_region_set_row
	movl	$3, %esi
	leaq	-48(%rbp), %rdi
	callq	rotate_pointers
# BB#24:                                # %for.inc.131
                                        #   in Loop: Header=BB62_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB62_5
.LBB62_25:                              # %for.end.133
	movl	$0, -24(%rbp)
.LBB62_26:                              # %for.cond.134
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -24(%rbp)
	jge	.LBB62_29
# BB#27:                                # %for.body.137
                                        #   in Loop: Header=BB62_26 Depth=1
	movslq	-24(%rbp), %rax
	movq	-48(%rbp,%rax,8), %rdi
	callq	g_free
# BB#28:                                # %for.inc.140
                                        #   in Loop: Header=BB62_26 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB62_26
.LBB62_29:                              # %for.end.142
	movq	-56(%rbp), %rdi
	callq	g_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	erode_region, .Lfunc_end62-erode_region
	.cfi_endproc

	.globl	dilate_region
	.align	16, 0x90
	.type	dilate_region,@function
dilate_region:                          # @dilate_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB63_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -24(%rbp)
	jge	.LBB63_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB63_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movslq	-24(%rbp), %rsi
	movq	%rax, -48(%rbp,%rsi,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB63_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB63_1
.LBB63_4:                               # %for.end
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-20(%rbp), %rdi
	callq	g_malloc_n
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %edx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %r8
	callq	pixel_region_get_row
	movq	-48(%rbp), %rax
	movb	1(%rax), %r10b
	movq	-48(%rbp), %rax
	movb	%r10b, (%rax)
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rdi
	movb	(%rdi,%rax), %r10b
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-48(%rbp), %rdi
	movb	%r10b, (%rdi,%rax)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	callq	memcpy
	movl	$0, -16(%rbp)
.LBB63_5:                               # %for.cond.21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_10 Depth 2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB63_25
# BB#6:                                 # %for.body.24
                                        #   in Loop: Header=BB63_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB63_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB63_5 Depth=1
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-16(%rbp), %ecx
	addl	$1, %ecx
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	pixel_region_get_row
	movq	-32(%rbp), %rax
	movb	1(%rax), %r10b
	movq	-32(%rbp), %rax
	movb	%r10b, (%rax)
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rdi
	movb	(%rdi,%rax), %r10b
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rdi
	movb	%r10b, (%rdi,%rax)
	jmp	.LBB63_9
.LBB63_8:                               # %if.else
                                        #   in Loop: Header=BB63_5 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	callq	memcpy
.LBB63_9:                               # %if.end
                                        #   in Loop: Header=BB63_5 Depth=1
	movl	$0, -12(%rbp)
.LBB63_10:                              # %for.cond.50
                                        #   Parent Loop BB63_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB63_23
# BB#11:                                # %for.body.53
                                        #   in Loop: Header=BB63_10 Depth=2
	movl	$0, -60(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB63_13
# BB#12:                                # %if.then.61
                                        #   in Loop: Header=BB63_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -60(%rbp)
.LBB63_13:                              # %if.end.67
                                        #   in Loop: Header=BB63_10 Depth=2
	movslq	-12(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	-60(%rbp), %edx
	jle	.LBB63_15
# BB#14:                                # %if.then.74
                                        #   in Loop: Header=BB63_10 Depth=2
	movslq	-12(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -60(%rbp)
.LBB63_15:                              # %if.end.79
                                        #   in Loop: Header=BB63_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB63_17
# BB#16:                                # %if.then.87
                                        #   in Loop: Header=BB63_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -60(%rbp)
.LBB63_17:                              # %if.end.93
                                        #   in Loop: Header=BB63_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB63_19
# BB#18:                                # %if.then.101
                                        #   in Loop: Header=BB63_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -60(%rbp)
.LBB63_19:                              # %if.end.107
                                        #   in Loop: Header=BB63_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB63_21
# BB#20:                                # %if.then.115
                                        #   in Loop: Header=BB63_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -60(%rbp)
.LBB63_21:                              # %if.end.121
                                        #   in Loop: Header=BB63_10 Depth=2
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movslq	-12(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#22:                                # %for.inc.125
                                        #   in Loop: Header=BB63_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB63_10
.LBB63_23:                              # %for.end.127
                                        #   in Loop: Header=BB63_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %r8
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	callq	pixel_region_set_row
	movl	$3, %esi
	leaq	-48(%rbp), %rdi
	callq	rotate_pointers
# BB#24:                                # %for.inc.131
                                        #   in Loop: Header=BB63_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB63_5
.LBB63_25:                              # %for.end.133
	movl	$0, -24(%rbp)
.LBB63_26:                              # %for.cond.134
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -24(%rbp)
	jge	.LBB63_29
# BB#27:                                # %for.body.137
                                        #   in Loop: Header=BB63_26 Depth=1
	movslq	-24(%rbp), %rax
	movq	-48(%rbp,%rax,8), %rdi
	callq	g_free
# BB#28:                                # %for.inc.140
                                        #   in Loop: Header=BB63_26 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB63_26
.LBB63_29:                              # %for.end.142
	movq	-56(%rbp), %rdi
	callq	g_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	dilate_region, .Lfunc_end63-dilate_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI64_0:
	.quad	4602678819172646912     # double 0.5
.LCPI64_1:
	.quad	4607182418800017408     # double 1
.LCPI64_2:
	.quad	4643176031446892544     # double 255
	.text
	.globl	border_region
	.align	16, 0x90
	.type	border_region,@function
border_region:                          # @border_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movw	%dx, %ax
	movw	%si, %r9w
	movq	%rdi, -8(%rbp)
	movw	%r9w, -10(%rbp)
	movw	%ax, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movswl	-10(%rbp), %ecx
	cmpl	$0, %ecx
	jl	.LBB64_2
# BB#1:                                 # %lor.lhs.false
	movswl	-12(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB64_3
.LBB64_2:                               # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB64_169
.LBB64_3:                               # %if.end
	movswl	-10(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB64_5
# BB#4:                                 # %lor.lhs.false.8
	movswl	-12(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB64_6
.LBB64_5:                               # %if.then.12
	leaq	-103(%rbp), %rax
	xorl	%esi, %esi
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	memset
	movq	-8(%rbp), %rdi
	movq	-184(%rbp), %rsi        # 8-byte Reload
	callq	color_region
	jmp	.LBB64_169
.LBB64_6:                               # %if.end.13
	movswl	-10(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB64_27
# BB#7:                                 # %land.lhs.true
	movswl	-12(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB64_27
# BB#8:                                 # %if.then.20
	movl	$0, -24(%rbp)
.LBB64_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -24(%rbp)
	jge	.LBB64_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB64_9 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movslq	44(%rcx), %rdi
	callq	g_malloc_n
	movslq	-24(%rbp), %rcx
	movq	%rax, -144(%rbp,%rcx,8)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB64_9 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB64_9
.LBB64_12:                              # %for.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movslq	44(%rcx), %rdi
	callq	g_malloc_n
	movl	$1, %r9d
	xorl	%edx, %edx
	movl	$255, %r8d
	movq	%rax, -112(%rbp)
	movq	-144(%rbp), %rdi
	cmpl	$0, -20(%rbp)
	cmovnel	%r8d, %edx
	movb	%dl, %r10b
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rdx
	movzbl	%r10b, %esi
	movl	%r9d, -188(%rbp)        # 4-byte Spill
	callq	memset
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %r8d
	addl	$0, %r8d
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-136(%rbp), %rax
	movl	%r8d, %edx
	movq	%rax, %r8
	movl	-188(%rbp), %r9d        # 4-byte Reload
	callq	pixel_region_get_row
	movq	-8(%rbp), %rax
	cmpl	$1, 48(%rax)
	jle	.LBB64_14
# BB#13:                                # %if.then.37
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-128(%rbp), %r8
	movl	%edx, -192(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-192(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_get_row
	jmp	.LBB64_15
.LBB64_14:                              # %if.else
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rdx
	callq	memcpy
.LBB64_15:                              # %if.end.47
	leaq	-144(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movl	-20(%rbp), %ecx
	callq	compute_transition
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %edx
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-112(%rbp), %r8
	callq	pixel_region_set_row
	movl	$1, -36(%rbp)
.LBB64_16:                              # %for.cond.53
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB64_22
# BB#17:                                # %for.body.57
                                        #   in Loop: Header=BB64_16 Depth=1
	movl	$3, %esi
	leaq	-144(%rbp), %rdi
	callq	rotate_pointers
	movl	-36(%rbp), %esi
	addl	$1, %esi
	movq	-8(%rbp), %rdi
	cmpl	48(%rdi), %esi
	jge	.LBB64_19
# BB#18:                                # %if.then.63
                                        #   in Loop: Header=BB64_16 Depth=1
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-128(%rbp), %r8
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-196(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_get_row
	jmp	.LBB64_20
.LBB64_19:                              # %if.else.70
                                        #   in Loop: Header=BB64_16 Depth=1
	xorl	%eax, %eax
	movl	$255, %ecx
	movq	-128(%rbp), %rdi
	cmpl	$0, -20(%rbp)
	cmovnel	%ecx, %eax
	movb	%al, %dl
	movq	-8(%rbp), %rsi
	movslq	44(%rsi), %rsi
	movzbl	%dl, %eax
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	callq	memset
.LBB64_20:                              # %if.end.76
                                        #   in Loop: Header=BB64_16 Depth=1
	leaq	-144(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movl	-20(%rbp), %ecx
	callq	compute_transition
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-36(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-112(%rbp), %r8
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-212(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_set_row
# BB#21:                                # %for.inc.83
                                        #   in Loop: Header=BB64_16 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB64_16
.LBB64_22:                              # %for.end.85
	movl	$0, -24(%rbp)
.LBB64_23:                              # %for.cond.86
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -24(%rbp)
	jge	.LBB64_26
# BB#24:                                # %for.body.89
                                        #   in Loop: Header=BB64_23 Depth=1
	movslq	-24(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rdi
	callq	g_free
# BB#25:                                # %for.inc.92
                                        #   in Loop: Header=BB64_23 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB64_23
.LBB64_26:                              # %for.end.94
	movq	-112(%rbp), %rdi
	callq	g_free
	jmp	.LBB64_169
.LBB64_27:                              # %if.end.95
	movl	$2, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	movswl	-10(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movl	$0, -24(%rbp)
.LBB64_28:                              # %for.cond.101
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movswl	-10(%rbp), %esi
	shll	$1, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB64_31
# BB#29:                                # %for.body.108
                                        #   in Loop: Header=BB64_28 Depth=1
	movswl	-12(%rbp), %eax
	addl	$2, %eax
	movw	%ax, %cx
	movslq	-24(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movw	%cx, (%rsi,%rdx,2)
# BB#30:                                # %for.inc.114
                                        #   in Loop: Header=BB64_28 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB64_28
.LBB64_31:                              # %for.end.116
	movswl	-10(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movl	$0, -24(%rbp)
.LBB64_32:                              # %for.cond.118
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -24(%rbp)
	jge	.LBB64_35
# BB#33:                                # %for.body.121
                                        #   in Loop: Header=BB64_32 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movslq	44(%rcx), %rdi
	callq	g_malloc_n
	movslq	-24(%rbp), %rcx
	movq	%rax, -64(%rbp,%rcx,8)
# BB#34:                                # %for.inc.127
                                        #   in Loop: Header=BB64_32 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB64_32
.LBB64_35:                              # %for.end.129
	movl	$8, %eax
	movl	%eax, %esi
	movswl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -80(%rbp)
	movl	$0, -24(%rbp)
.LBB64_36:                              # %for.cond.134
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movswl	-12(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB64_39
# BB#37:                                # %for.body.139
                                        #   in Loop: Header=BB64_36 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	movswl	-10(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	xorl	%esi, %esi
	movslq	-24(%rbp), %rcx
	movq	-80(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movslq	-24(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movswl	-10(%rbp), %r8d
	shll	$1, %r8d
	addl	%r8d, %edx
	movslq	%edx, %rdx
	callq	memset
	movswl	-10(%rbp), %esi
	movslq	-24(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movslq	%esi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, (%rcx,%rax,8)
# BB#38:                                # %for.inc.160
                                        #   in Loop: Header=BB64_36 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB64_36
.LBB64_39:                              # %for.end.162
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movslq	44(%rcx), %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movq	%rax, -72(%rbp)
	movswl	-10(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, -96(%rbp)
	movswl	-10(%rbp), %edx
	movq	-96(%rbp), %rax
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movl	$0, -32(%rbp)
.LBB64_40:                              # %for.cond.174
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movswl	-10(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB64_43
# BB#41:                                # %for.body.179
                                        #   in Loop: Header=BB64_40 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movswl	-12(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	xorl	%ecx, %ecx
	movslq	-32(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movswl	-12(%rbp), %edx
	movslq	-32(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	movslq	%edx, %r8
	addq	%r8, %rdi
	movq	%rdi, (%rsi,%rax,8)
	movslq	-32(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	(%rsi,%rax,8), %rax
	subl	-32(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-96(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
# BB#42:                                # %for.inc.196
                                        #   in Loop: Header=BB64_40 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB64_40
.LBB64_43:                              # %for.end.198
	movl	$0, -32(%rbp)
.LBB64_44:                              # %for.cond.199
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_52 Depth 2
	movl	-32(%rbp), %eax
	movswl	-10(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB64_69
# BB#45:                                # %for.body.204
                                        #   in Loop: Header=BB64_44 Depth=1
	cmpl	$0, -32(%rbp)
	jle	.LBB64_47
# BB#46:                                # %if.then.207
                                        #   in Loop: Header=BB64_44 Depth=1
	movsd	.LCPI64_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
	jmp	.LBB64_51
.LBB64_47:                              # %if.else.210
                                        #   in Loop: Header=BB64_44 Depth=1
	cmpl	$0, -32(%rbp)
	jge	.LBB64_49
# BB#48:                                # %if.then.213
                                        #   in Loop: Header=BB64_44 Depth=1
	movsd	.LCPI64_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
	jmp	.LBB64_50
.LBB64_49:                              # %if.else.216
                                        #   in Loop: Header=BB64_44 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB64_50:                              # %if.end.217
                                        #   in Loop: Header=BB64_44 Depth=1
	jmp	.LBB64_51
.LBB64_51:                              # %if.end.218
                                        #   in Loop: Header=BB64_44 Depth=1
	movl	$0, -36(%rbp)
.LBB64_52:                              # %for.cond.219
                                        #   Parent Loop BB64_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movswl	-12(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB64_67
# BB#53:                                # %for.body.224
                                        #   in Loop: Header=BB64_52 Depth=2
	cmpl	$0, -36(%rbp)
	jle	.LBB64_55
# BB#54:                                # %if.then.227
                                        #   in Loop: Header=BB64_52 Depth=2
	movsd	.LCPI64_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
	jmp	.LBB64_59
.LBB64_55:                              # %if.else.230
                                        #   in Loop: Header=BB64_52 Depth=2
	cmpl	$0, -36(%rbp)
	jge	.LBB64_57
# BB#56:                                # %if.then.233
                                        #   in Loop: Header=BB64_52 Depth=2
	movsd	.LCPI64_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
	jmp	.LBB64_58
.LBB64_57:                              # %if.else.236
                                        #   in Loop: Header=BB64_52 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)
.LBB64_58:                              # %if.end.237
                                        #   in Loop: Header=BB64_52 Depth=2
	jmp	.LBB64_59
.LBB64_59:                              # %if.end.238
                                        #   in Loop: Header=BB64_52 Depth=2
	movsd	.LCPI64_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-160(%rbp), %xmm1
	movswl	-12(%rbp), %eax
	movswl	-12(%rbp), %ecx
	imull	%ecx, %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	movsd	-152(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-152(%rbp), %xmm2
	movswl	-10(%rbp), %eax
	movswl	-10(%rbp), %ecx
	imull	%ecx, %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -168(%rbp)
	ucomisd	-168(%rbp), %xmm0
	jbe	.LBB64_64
# BB#60:                                # %if.then.253
                                        #   in Loop: Header=BB64_52 Depth=2
	cmpl	$0, -16(%rbp)
	je	.LBB64_62
# BB#61:                                # %if.then.255
                                        #   in Loop: Header=BB64_52 Depth=2
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	.LCPI64_1(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	.LCPI64_2(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %cl
	movb	%cl, -169(%rbp)
	jmp	.LBB64_63
.LBB64_62:                              # %if.else.260
                                        #   in Loop: Header=BB64_52 Depth=2
	movb	$-1, -169(%rbp)
.LBB64_63:                              # %if.end.261
                                        #   in Loop: Header=BB64_52 Depth=2
	jmp	.LBB64_65
.LBB64_64:                              # %if.else.262
                                        #   in Loop: Header=BB64_52 Depth=2
	movb	$0, -169(%rbp)
.LBB64_65:                              # %if.end.263
                                        #   in Loop: Header=BB64_52 Depth=2
	xorl	%eax, %eax
	movb	-169(%rbp), %cl
	movslq	-36(%rbp), %rdx
	movslq	-32(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rdx)
	movb	-169(%rbp), %cl
	movl	%eax, %r8d
	subl	-36(%rbp), %r8d
	movslq	%r8d, %rdx
	movslq	-32(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rdx)
	movb	-169(%rbp), %cl
	movslq	-36(%rbp), %rdx
	movl	%eax, %r8d
	subl	-32(%rbp), %r8d
	movslq	%r8d, %rsi
	movq	-96(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rdx)
	movb	-169(%rbp), %cl
	movl	%eax, %r8d
	subl	-36(%rbp), %r8d
	movslq	%r8d, %rdx
	subl	-32(%rbp), %eax
	movslq	%eax, %rsi
	movq	-96(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#66:                                # %for.inc.284
                                        #   in Loop: Header=BB64_52 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB64_52
.LBB64_67:                              # %for.end.286
                                        #   in Loop: Header=BB64_44 Depth=1
	jmp	.LBB64_68
.LBB64_68:                              # %for.inc.287
                                        #   in Loop: Header=BB64_44 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB64_44
.LBB64_69:                              # %for.end.289
	movl	$1, %r9d
	xorl	%eax, %eax
	movl	$255, %ecx
	movq	-64(%rbp), %rdi
	cmpl	$0, -20(%rbp)
	cmovnel	%ecx, %eax
	movb	%al, %dl
	movq	-8(%rbp), %rsi
	movslq	44(%rsi), %rsi
	movzbl	%dl, %eax
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movl	%r9d, -228(%rbp)        # 4-byte Spill
	callq	memset
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	36(%rdx), %esi
	movq	-8(%rbp), %rdx
	movl	40(%rdx), %eax
	addl	$0, %eax
	movq	-8(%rbp), %rdx
	movl	44(%rdx), %ecx
	movq	-56(%rbp), %r8
	movl	%eax, %edx
	movl	-228(%rbp), %r9d        # 4-byte Reload
	callq	pixel_region_get_row
	movq	-8(%rbp), %rdi
	cmpl	$1, 48(%rdi)
	jle	.LBB64_71
# BB#70:                                # %if.then.303
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-48(%rbp), %r8
	movl	%edx, -232(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-232(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_get_row
	jmp	.LBB64_72
.LBB64_71:                              # %if.else.309
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rdx
	callq	memcpy
.LBB64_72:                              # %if.end.314
	leaq	-64(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movl	-20(%rbp), %ecx
	callq	compute_transition
	movl	$1, -36(%rbp)
.LBB64_73:                              # %for.cond.318
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movswl	-12(%rbp), %edx
	cmpl	%edx, %eax
	movb	%cl, -233(%rbp)         # 1-byte Spill
	jge	.LBB64_75
# BB#74:                                # %land.rhs
                                        #   in Loop: Header=BB64_73 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	setl	%dl
	movb	%dl, -233(%rbp)         # 1-byte Spill
.LBB64_75:                              # %land.end
                                        #   in Loop: Header=BB64_73 Depth=1
	movb	-233(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB64_76
	jmp	.LBB64_78
.LBB64_76:                              # %for.body.326
                                        #   in Loop: Header=BB64_73 Depth=1
	movl	$3, %esi
	leaq	-64(%rbp), %rdi
	callq	rotate_pointers
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-48(%rbp), %r8
	movl	%edx, -240(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-240(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_get_row
	leaq	-64(%rbp), %rsi
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-80(%rbp), %rdi
	movq	(%rdi,%rax,8), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movl	-20(%rbp), %ecx
	callq	compute_transition
# BB#77:                                # %for.inc.339
                                        #   in Loop: Header=BB64_73 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB64_73
.LBB64_78:                              # %for.end.341
	movl	$0, -32(%rbp)
.LBB64_79:                              # %for.cond.342
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_81 Depth 2
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB64_88
# BB#80:                                # %for.body.346
                                        #   in Loop: Header=BB64_79 Depth=1
	xorl	%eax, %eax
	movswl	-12(%rbp), %ecx
	addl	$7, %ecx
	subl	%ecx, %eax
	movw	%ax, %dx
	movslq	-32(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movw	%dx, (%rdi,%rsi,2)
	movl	$1, -28(%rbp)
.LBB64_81:                              # %for.cond.353
                                        #   Parent Loop BB64_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movswl	-12(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB64_86
# BB#82:                                # %for.body.358
                                        #   in Loop: Header=BB64_81 Depth=2
	movslq	-32(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB64_84
# BB#83:                                # %if.then.364
                                        #   in Loop: Header=BB64_79 Depth=1
	movl	-28(%rbp), %eax
	movw	%ax, %cx
	movslq	-32(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movw	%cx, (%rsi,%rdx,2)
	jmp	.LBB64_86
.LBB64_84:                              # %if.end.368
                                        #   in Loop: Header=BB64_81 Depth=2
	jmp	.LBB64_85
.LBB64_85:                              # %for.inc.369
                                        #   in Loop: Header=BB64_81 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB64_81
.LBB64_86:                              # %for.end.371
                                        #   in Loop: Header=BB64_79 Depth=1
	jmp	.LBB64_87
.LBB64_87:                              # %for.inc.372
                                        #   in Loop: Header=BB64_79 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB64_79
.LBB64_88:                              # %for.end.374
	movl	$0, -36(%rbp)
.LBB64_89:                              # %for.cond.375
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_97 Depth 2
                                        #     Child Loop BB64_118 Depth 2
                                        #       Child Loop BB64_121 Depth 3
                                        #       Child Loop BB64_130 Depth 3
                                        #       Child Loop BB64_140 Depth 3
                                        #       Child Loop BB64_147 Depth 3
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB64_156
# BB#90:                                # %for.body.379
                                        #   in Loop: Header=BB64_89 Depth=1
	movl	$3, %esi
	leaq	-64(%rbp), %rdi
	callq	rotate_pointers
	movq	-80(%rbp), %rdi
	movswl	-12(%rbp), %esi
	addl	$1, %esi
	callq	rotate_pointers
	movl	-36(%rbp), %esi
	movq	-8(%rbp), %rdi
	movl	48(%rdi), %eax
	movswl	-12(%rbp), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	cmpl	%eax, %esi
	jge	.LBB64_92
# BB#91:                                # %if.then.389
                                        #   in Loop: Header=BB64_89 Depth=1
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-36(%rbp), %ecx
	movswl	-12(%rbp), %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-48(%rbp), %r8
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-244(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_get_row
	leaq	-64(%rbp), %rsi
	movswq	-12(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	(%rdi,%rax,8), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movl	-20(%rbp), %ecx
	callq	compute_transition
	jmp	.LBB64_96
.LBB64_92:                              # %if.else.402
                                        #   in Loop: Header=BB64_89 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB64_94
# BB#93:                                # %if.then.404
                                        #   in Loop: Header=BB64_89 Depth=1
	movswq	-12(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movswl	-12(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	-80(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rdx
	callq	memcpy
	jmp	.LBB64_95
.LBB64_94:                              # %if.else.413
                                        #   in Loop: Header=BB64_89 Depth=1
	leaq	-64(%rbp), %rsi
	xorl	%eax, %eax
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movslq	44(%rcx), %rdx
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	callq	memset
	movswq	-12(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movl	-20(%rbp), %ecx
	movq	-256(%rbp), %rsi        # 8-byte Reload
	callq	compute_transition
.LBB64_95:                              # %if.end.421
                                        #   in Loop: Header=BB64_89 Depth=1
	jmp	.LBB64_96
.LBB64_96:                              # %if.end.422
                                        #   in Loop: Header=BB64_89 Depth=1
	movl	$0, -32(%rbp)
.LBB64_97:                              # %for.cond.423
                                        #   Parent Loop BB64_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB64_117
# BB#98:                                # %for.body.427
                                        #   in Loop: Header=BB64_97 Depth=2
	movslq	-32(%rbp), %rax
	movq	-88(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	cmpl	$1, %edx
	jge	.LBB64_112
# BB#99:                                # %if.then.433
                                        #   in Loop: Header=BB64_97 Depth=2
	xorl	%eax, %eax
	movslq	-32(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movswl	(%rdx,%rcx,2), %esi
	movswl	-12(%rbp), %edi
	subl	%edi, %eax
	cmpl	%eax, %esi
	jg	.LBB64_104
# BB#100:                               # %if.then.441
                                        #   in Loop: Header=BB64_97 Depth=2
	movslq	-32(%rbp), %rax
	movswq	-12(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB64_102
# BB#101:                               # %if.then.447
                                        #   in Loop: Header=BB64_97 Depth=2
	movw	-12(%rbp), %ax
	movslq	-32(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movw	%ax, (%rdx,%rcx,2)
	jmp	.LBB64_103
.LBB64_102:                             # %if.else.450
                                        #   in Loop: Header=BB64_97 Depth=2
	movslq	-32(%rbp), %rax
	movq	-88(%rbp), %rcx
	movw	(%rcx,%rax,2), %dx
	addw	$-1, %dx
	movw	%dx, (%rcx,%rax,2)
.LBB64_103:                             # %if.end.453
                                        #   in Loop: Header=BB64_97 Depth=2
	jmp	.LBB64_111
.LBB64_104:                             # %if.else.454
                                        #   in Loop: Header=BB64_97 Depth=2
	xorl	%eax, %eax
	movslq	-32(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movswl	(%rsi,%rdx,2), %edi
	subl	%edi, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB64_106
# BB#105:                               # %if.then.464
                                        #   in Loop: Header=BB64_97 Depth=2
	xorl	%eax, %eax
	movslq	-32(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movswl	(%rdx,%rcx,2), %esi
	subl	%esi, %eax
	movw	%ax, %di
	movslq	-32(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movw	%di, (%rdx,%rcx,2)
	jmp	.LBB64_110
.LBB64_106:                             # %if.else.472
                                        #   in Loop: Header=BB64_97 Depth=2
	xorl	%eax, %eax
	movslq	-32(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movswl	(%rsi,%rdx,2), %edi
	subl	%edi, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB64_108
# BB#107:                               # %if.then.483
                                        #   in Loop: Header=BB64_97 Depth=2
	xorl	%eax, %eax
	movslq	-32(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movswl	(%rdx,%rcx,2), %esi
	subl	%esi, %eax
	addl	$1, %eax
	movw	%ax, %di
	movslq	-32(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movw	%di, (%rdx,%rcx,2)
	jmp	.LBB64_109
.LBB64_108:                             # %if.else.492
                                        #   in Loop: Header=BB64_97 Depth=2
	movslq	-32(%rbp), %rax
	movq	-88(%rbp), %rcx
	movw	(%rcx,%rax,2), %dx
	addw	$-1, %dx
	movw	%dx, (%rcx,%rax,2)
.LBB64_109:                             # %if.end.496
                                        #   in Loop: Header=BB64_97 Depth=2
	jmp	.LBB64_110
.LBB64_110:                             # %if.end.497
                                        #   in Loop: Header=BB64_97 Depth=2
	jmp	.LBB64_111
.LBB64_111:                             # %if.end.498
                                        #   in Loop: Header=BB64_97 Depth=2
	jmp	.LBB64_113
.LBB64_112:                             # %if.else.499
                                        #   in Loop: Header=BB64_97 Depth=2
	movslq	-32(%rbp), %rax
	movq	-88(%rbp), %rcx
	movw	(%rcx,%rax,2), %dx
	addw	$-1, %dx
	movw	%dx, (%rcx,%rax,2)
.LBB64_113:                             # %if.end.503
                                        #   in Loop: Header=BB64_97 Depth=2
	xorl	%eax, %eax
	movslq	-32(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movswl	(%rdx,%rcx,2), %esi
	movswl	-12(%rbp), %edi
	subl	%edi, %eax
	subl	$1, %eax
	cmpl	%eax, %esi
	jge	.LBB64_115
# BB#114:                               # %if.then.512
                                        #   in Loop: Header=BB64_97 Depth=2
	xorl	%eax, %eax
	movswl	-12(%rbp), %ecx
	subl	%ecx, %eax
	subl	$1, %eax
	movw	%ax, %dx
	movslq	-32(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movw	%dx, (%rdi,%rsi,2)
.LBB64_115:                             # %if.end.519
                                        #   in Loop: Header=BB64_97 Depth=2
	jmp	.LBB64_116
.LBB64_116:                             # %for.inc.520
                                        #   in Loop: Header=BB64_97 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB64_97
.LBB64_117:                             # %for.end.522
                                        #   in Loop: Header=BB64_89 Depth=1
	movw	$1, -98(%rbp)
	movl	$0, -32(%rbp)
.LBB64_118:                             # %for.cond.523
                                        #   Parent Loop BB64_89 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB64_121 Depth 3
                                        #       Child Loop BB64_130 Depth 3
                                        #       Child Loop BB64_140 Depth 3
                                        #       Child Loop BB64_147 Depth 3
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB64_154
# BB#119:                               # %for.body.527
                                        #   in Loop: Header=BB64_118 Depth=2
	movw	-98(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -98(%rbp)
	movswl	-98(%rbp), %ecx
	cmpl	$0, %ecx
	jl	.LBB64_129
# BB#120:                               # %if.then.532
                                        #   in Loop: Header=BB64_118 Depth=2
	movb	$0, -170(%rbp)
	movswl	-10(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB64_121:                             # %for.cond.534
                                        #   Parent Loop BB64_89 Depth=1
                                        #     Parent Loop BB64_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, -24(%rbp)
	jl	.LBB64_128
# BB#122:                               # %for.body.537
                                        #   in Loop: Header=BB64_121 Depth=3
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movswl	(%rdx,%rcx,2), %eax
	movswl	-12(%rbp), %esi
	cmpl	%esi, %eax
	jg	.LBB64_126
# BB#123:                               # %land.lhs.true.545
                                        #   in Loop: Header=BB64_121 Depth=3
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-88(%rbp), %rsi
	movswl	(%rsi,%rdx,2), %ecx
	movswl	-12(%rbp), %edi
	subl	%edi, %eax
	cmpl	%eax, %ecx
	jl	.LBB64_126
# BB#124:                               # %land.lhs.true.554
                                        #   in Loop: Header=BB64_121 Depth=3
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movswq	(%rdx,%rcx,2), %rcx
	movslq	-24(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movzbl	-170(%rbp), %edi
	cmpl	%edi, %eax
	jle	.LBB64_126
# BB#125:                               # %if.then.566
                                        #   in Loop: Header=BB64_121 Depth=3
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movswq	(%rdx,%rcx,2), %rcx
	movslq	-24(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movb	%dil, -170(%rbp)
	movl	-24(%rbp), %eax
	movw	%ax, %r8w
	movw	%r8w, -98(%rbp)
.LBB64_126:                             # %if.end.575
                                        #   in Loop: Header=BB64_121 Depth=3
	jmp	.LBB64_127
.LBB64_127:                             # %for.inc.576
                                        #   in Loop: Header=BB64_121 Depth=3
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB64_121
.LBB64_128:                             # %for.end.578
                                        #   in Loop: Header=BB64_118 Depth=2
	movb	-170(%rbp), %al
	movslq	-32(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
	jmp	.LBB64_138
.LBB64_129:                             # %if.else.581
                                        #   in Loop: Header=BB64_118 Depth=2
	movb	$0, -170(%rbp)
	movswl	-10(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB64_130:                             # %for.cond.583
                                        #   Parent Loop BB64_89 Depth=1
                                        #     Parent Loop BB64_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movl	-24(%rbp), %ecx
	movswl	-10(%rbp), %edx
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jl	.LBB64_137
# BB#131:                               # %for.body.588
                                        #   in Loop: Header=BB64_130 Depth=3
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movswl	(%rdx,%rcx,2), %eax
	movswl	-12(%rbp), %esi
	cmpl	%esi, %eax
	jg	.LBB64_135
# BB#132:                               # %land.lhs.true.596
                                        #   in Loop: Header=BB64_130 Depth=3
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-88(%rbp), %rsi
	movswl	(%rsi,%rdx,2), %ecx
	movswl	-12(%rbp), %edi
	subl	%edi, %eax
	cmpl	%eax, %ecx
	jl	.LBB64_135
# BB#133:                               # %land.lhs.true.605
                                        #   in Loop: Header=BB64_130 Depth=3
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movswq	(%rdx,%rcx,2), %rcx
	movslq	-24(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movzbl	-170(%rbp), %edi
	cmpl	%edi, %eax
	jle	.LBB64_135
# BB#134:                               # %if.then.617
                                        #   in Loop: Header=BB64_130 Depth=3
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movswq	(%rdx,%rcx,2), %rcx
	movslq	-24(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movb	%dil, -170(%rbp)
	movl	-24(%rbp), %eax
	movw	%ax, %r8w
	movw	%r8w, -98(%rbp)
.LBB64_135:                             # %if.end.626
                                        #   in Loop: Header=BB64_130 Depth=3
	jmp	.LBB64_136
.LBB64_136:                             # %for.inc.627
                                        #   in Loop: Header=BB64_130 Depth=3
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB64_130
.LBB64_137:                             # %for.end.629
                                        #   in Loop: Header=BB64_118 Depth=2
	movb	-170(%rbp), %al
	movslq	-32(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
.LBB64_138:                             # %if.end.632
                                        #   in Loop: Header=BB64_118 Depth=2
	movzbl	-170(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB64_152
# BB#139:                               # %if.then.636
                                        #   in Loop: Header=BB64_118 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB64_140:                             # %for.cond.638
                                        #   Parent Loop BB64_89 Depth=1
                                        #     Parent Loop BB64_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB64_145
# BB#141:                               # %for.body.642
                                        #   in Loop: Header=BB64_140 Depth=3
	xorl	%eax, %eax
	movslq	-24(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movswl	(%rdx,%rcx,2), %esi
	movswl	-12(%rbp), %edi
	subl	%edi, %eax
	cmpl	%eax, %esi
	jl	.LBB64_143
# BB#142:                               # %if.then.650
                                        #   in Loop: Header=BB64_118 Depth=2
	jmp	.LBB64_145
.LBB64_143:                             # %if.end.651
                                        #   in Loop: Header=BB64_140 Depth=3
	jmp	.LBB64_144
.LBB64_144:                             # %for.inc.652
                                        #   in Loop: Header=BB64_140 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB64_140
.LBB64_145:                             # %for.end.654
                                        #   in Loop: Header=BB64_118 Depth=2
	movl	-24(%rbp), %eax
	subl	-32(%rbp), %eax
	movswl	-10(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB64_151
# BB#146:                               # %if.then.659
                                        #   in Loop: Header=BB64_118 Depth=2
	jmp	.LBB64_147
.LBB64_147:                             # %for.cond.660
                                        #   Parent Loop BB64_89 Depth=1
                                        #     Parent Loop BB64_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	movl	-24(%rbp), %ecx
	movswl	-10(%rbp), %edx
	subl	%edx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB64_150
# BB#148:                               # %for.body.665
                                        #   in Loop: Header=BB64_147 Depth=3
	movslq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#149:                               # %for.inc.668
                                        #   in Loop: Header=BB64_147 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB64_147
.LBB64_150:                             # %for.end.670
                                        #   in Loop: Header=BB64_118 Depth=2
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
.LBB64_151:                             # %if.end.672
                                        #   in Loop: Header=BB64_118 Depth=2
	movw	-10(%rbp), %ax
	movw	%ax, -98(%rbp)
.LBB64_152:                             # %if.end.673
                                        #   in Loop: Header=BB64_118 Depth=2
	jmp	.LBB64_153
.LBB64_153:                             # %for.inc.674
                                        #   in Loop: Header=BB64_118 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB64_118
.LBB64_154:                             # %for.end.676
                                        #   in Loop: Header=BB64_89 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-36(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-72(%rbp), %r8
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-260(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_set_row
# BB#155:                               # %for.inc.681
                                        #   in Loop: Header=BB64_89 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB64_89
.LBB64_156:                             # %for.end.683
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	$0, -24(%rbp)
.LBB64_157:                             # %for.cond.684
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -24(%rbp)
	jge	.LBB64_160
# BB#158:                               # %for.body.687
                                        #   in Loop: Header=BB64_157 Depth=1
	movslq	-24(%rbp), %rax
	movq	-64(%rbp,%rax,8), %rdi
	callq	g_free
# BB#159:                               # %for.inc.690
                                        #   in Loop: Header=BB64_157 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB64_157
.LBB64_160:                             # %for.end.692
	xorl	%eax, %eax
	movl	%eax, %ecx
	movswl	-10(%rbp), %eax
	movq	-88(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$1, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
	movl	$0, -24(%rbp)
.LBB64_161:                             # %for.cond.696
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movswl	-12(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB64_164
# BB#162:                               # %for.body.701
                                        #   in Loop: Header=BB64_161 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movswl	-10(%rbp), %eax
	movslq	-24(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdi
	movslq	%eax, %r8
	subq	%r8, %rcx
	addq	%rcx, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	movslq	-24(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	g_free
# BB#163:                               # %for.inc.710
                                        #   in Loop: Header=BB64_161 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB64_161
.LBB64_164:                             # %for.end.712
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$0, -24(%rbp)
.LBB64_165:                             # %for.cond.713
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movswl	-10(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB64_168
# BB#166:                               # %for.body.718
                                        #   in Loop: Header=BB64_165 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movswl	-12(%rbp), %eax
	movslq	-24(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdi
	movslq	%eax, %r8
	subq	%r8, %rcx
	addq	%rcx, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	movslq	-24(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	g_free
# BB#167:                               # %for.inc.727
                                        #   in Loop: Header=BB64_165 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB64_165
.LBB64_168:                             # %for.end.729
	xorl	%eax, %eax
	movl	%eax, %ecx
	movswl	-10(%rbp), %eax
	movq	-96(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
.LBB64_169:                             # %return
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end64:
	.size	border_region, .Lfunc_end64-border_region
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
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
	je	.LBB65_2
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
.LBB65_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end65:
	.size	g_warning, .Lfunc_end65-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	compute_transition,@function
compute_transition:                     # @compute_transition
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB66_7
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$127, %ecx
	jle	.LBB66_5
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$128, %ecx
	jl	.LBB66_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$128, %ecx
	jge	.LBB66_5
.LBB66_4:                               # %if.then.14
	movq	-8(%rbp), %rax
	movb	$-1, (%rax)
	jmp	.LBB66_6
.LBB66_5:                               # %if.else
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
.LBB66_6:                               # %if.end
	jmp	.LBB66_54
.LBB66_7:                               # %if.end.17
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$127, %ecx
	jle	.LBB66_17
# BB#8:                                 # %land.lhs.true.23
	cmpl	$0, -24(%rbp)
	je	.LBB66_17
# BB#9:                                 # %if.then.24
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$128, %edx
	jl	.LBB66_14
# BB#10:                                # %lor.lhs.false.30
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_14
# BB#11:                                # %lor.lhs.false.37
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_14
# BB#12:                                # %lor.lhs.false.45
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$128, %edx
	jl	.LBB66_14
# BB#13:                                # %lor.lhs.false.52
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jge	.LBB66_15
.LBB66_14:                              # %if.then.60
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	jmp	.LBB66_16
.LBB66_15:                              # %if.else.63
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, (%rcx,%rax)
.LBB66_16:                              # %if.end.66
	jmp	.LBB66_22
.LBB66_17:                              # %if.else.67
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$127, %ecx
	jle	.LBB66_20
# BB#18:                                # %land.lhs.true.73
	cmpl	$0, -24(%rbp)
	jne	.LBB66_20
# BB#19:                                # %if.then.75
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	jmp	.LBB66_21
.LBB66_20:                              # %if.else.78
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, (%rcx,%rax)
.LBB66_21:                              # %if.end.81
	jmp	.LBB66_22
.LBB66_22:                              # %if.end.82
	movl	$1, -28(%rbp)
.LBB66_23:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB66_39
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB66_23 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$128, %edx
	jl	.LBB66_36
# BB#25:                                # %if.then.91
                                        #   in Loop: Header=BB66_23 Depth=1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_33
# BB#26:                                # %lor.lhs.false.99
                                        #   in Loop: Header=BB66_23 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$128, %edx
	jl	.LBB66_33
# BB#27:                                # %lor.lhs.false.106
                                        #   in Loop: Header=BB66_23 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_33
# BB#28:                                # %lor.lhs.false.114
                                        #   in Loop: Header=BB66_23 Depth=1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_33
# BB#29:                                # %lor.lhs.false.122
                                        #   in Loop: Header=BB66_23 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_33
# BB#30:                                # %lor.lhs.false.130
                                        #   in Loop: Header=BB66_23 Depth=1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_33
# BB#31:                                # %lor.lhs.false.138
                                        #   in Loop: Header=BB66_23 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$128, %edx
	jl	.LBB66_33
# BB#32:                                # %lor.lhs.false.145
                                        #   in Loop: Header=BB66_23 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jge	.LBB66_34
.LBB66_33:                              # %if.then.153
                                        #   in Loop: Header=BB66_23 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	jmp	.LBB66_35
.LBB66_34:                              # %if.else.156
                                        #   in Loop: Header=BB66_23 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, (%rcx,%rax)
.LBB66_35:                              # %if.end.159
                                        #   in Loop: Header=BB66_23 Depth=1
	jmp	.LBB66_37
.LBB66_36:                              # %if.else.160
                                        #   in Loop: Header=BB66_23 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, (%rcx,%rax)
.LBB66_37:                              # %if.end.163
                                        #   in Loop: Header=BB66_23 Depth=1
	jmp	.LBB66_38
.LBB66_38:                              # %for.inc
                                        #   in Loop: Header=BB66_23 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB66_23
.LBB66_39:                              # %for.end
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_49
# BB#40:                                # %land.lhs.true.171
	cmpl	$0, -24(%rbp)
	je	.LBB66_49
# BB#41:                                # %if.then.173
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_46
# BB#42:                                # %lor.lhs.false.181
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$128, %edx
	jl	.LBB66_46
# BB#43:                                # %lor.lhs.false.188
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_46
# BB#44:                                # %lor.lhs.false.196
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_46
# BB#45:                                # %lor.lhs.false.204
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$128, %edx
	jge	.LBB66_47
.LBB66_46:                              # %if.then.211
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
	jmp	.LBB66_48
.LBB66_47:                              # %if.else.215
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
.LBB66_48:                              # %if.end.219
	jmp	.LBB66_54
.LBB66_49:                              # %if.else.220
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jl	.LBB66_52
# BB#50:                                # %land.lhs.true.228
	cmpl	$0, -24(%rbp)
	jne	.LBB66_52
# BB#51:                                # %if.then.230
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
	jmp	.LBB66_53
.LBB66_52:                              # %if.else.234
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
.LBB66_53:                              # %if.end.238
	jmp	.LBB66_54
.LBB66_54:                              # %if.end.239
	popq	%rbp
	retq
.Lfunc_end66:
	.size	compute_transition, .Lfunc_end66-compute_transition
	.cfi_endproc

	.globl	swap_region
	.align	16, 0x90
	.type	swap_region,@function
swap_region:                            # @swap_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -24(%rbp)
.LBB67_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB67_3 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB67_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB67_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	52(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB67_3:                               # %while.cond
                                        #   Parent Loop BB67_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, %eax
	je	.LBB67_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB67_3 Depth=2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	swap_pixels
	movq	-8(%rbp), %rsi
	movl	32(%rsi), %edx
	movq	-32(%rbp), %rsi
	movslq	%edx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movl	32(%rsi), %edx
	movq	-40(%rbp), %rsi
	movslq	%edx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -40(%rbp)
	jmp	.LBB67_3
.LBB67_5:                               # %while.end
                                        #   in Loop: Header=BB67_1 Depth=1
	jmp	.LBB67_6
.LBB67_6:                               # %for.inc
                                        #   in Loop: Header=BB67_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -24(%rbp)
	jmp	.LBB67_1
.LBB67_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	swap_region, .Lfunc_end67-swap_region
	.cfi_endproc

	.globl	apply_mask_to_region
	.align	16, 0x90
	.type	apply_mask_to_region,@function
apply_mask_to_region:                   # @apply_mask_to_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$apply_mask_to_sub_region, %rax
	movl	$2, %ecx
	leaq	-20(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movl	%ecx, %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	-32(%rbp), %r8          # 8-byte Reload
	movb	$0, %al
	callq	pixel_regions_process_parallel
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	apply_mask_to_region, .Lfunc_end68-apply_mask_to_region
	.cfi_endproc

	.align	16, 0x90
	.type	apply_mask_to_sub_region,@function
apply_mask_to_sub_region:               # @apply_mask_to_sub_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -48(%rbp)
.LBB69_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB69_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-48(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	52(%rax), %r8d
	callq	apply_mask_to_alpha_channel
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB69_1
.LBB69_3:                               # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	apply_mask_to_sub_region, .Lfunc_end69-apply_mask_to_sub_region
	.cfi_endproc

	.globl	combine_mask_and_region
	.align	16, 0x90
	.type	combine_mask_and_region,@function
combine_mask_and_region:                # @combine_mask_and_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB70_2
# BB#1:                                 # %if.then
	movabsq	$combine_mask_and_sub_region_stipple, %rax
	movl	$2, %edx
	leaq	-20(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	pixel_regions_process_parallel
	jmp	.LBB70_3
.LBB70_2:                               # %if.else
	movabsq	$combine_mask_and_sub_region_stroke, %rax
	movl	$2, %edx
	leaq	-20(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	pixel_regions_process_parallel
.LBB70_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	combine_mask_and_region, .Lfunc_end70-combine_mask_and_region
	.cfi_endproc

	.align	16, 0x90
	.type	combine_mask_and_sub_region_stipple,@function
combine_mask_and_sub_region_stipple:    # @combine_mask_and_sub_region_stipple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -48(%rbp)
.LBB71_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB71_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-48(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	52(%rax), %r8d
	callq	combine_mask_and_alpha_channel_stipple
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB71_1
.LBB71_3:                               # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	combine_mask_and_sub_region_stipple, .Lfunc_end71-combine_mask_and_sub_region_stipple
	.cfi_endproc

	.align	16, 0x90
	.type	combine_mask_and_sub_region_stroke,@function
combine_mask_and_sub_region_stroke:     # @combine_mask_and_sub_region_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -48(%rbp)
.LBB72_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB72_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB72_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-48(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	52(%rax), %r8d
	callq	combine_mask_and_alpha_channel_stroke
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB72_1
.LBB72_3:                               # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	combine_mask_and_sub_region_stroke, .Lfunc_end72-combine_mask_and_sub_region_stroke
	.cfi_endproc

	.globl	copy_gray_to_region
	.align	16, 0x90
	.type	copy_gray_to_region,@function
copy_gray_to_region:                    # @copy_gray_to_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -24(%rbp)
.LBB73_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB73_3 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB73_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB73_3:                               # %while.cond
                                        #   Parent Loop BB73_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB73_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB73_3 Depth=2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	callq	copy_gray_to_inten_a_pixels
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB73_3
.LBB73_5:                               # %while.end
                                        #   in Loop: Header=BB73_1 Depth=1
	jmp	.LBB73_6
.LBB73_6:                               # %for.inc
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -24(%rbp)
	jmp	.LBB73_1
.LBB73_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	copy_gray_to_region, .Lfunc_end73-copy_gray_to_region
	.cfi_endproc

	.globl	copy_component
	.align	16, 0x90
	.type	copy_component,@function
copy_component:                         # @copy_component
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -32(%rbp)
.LBB74_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_3 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB74_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB74_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB74_3:                               # %while.cond
                                        #   Parent Loop BB74_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB74_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB74_3 Depth=2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movl	-20(%rbp), %r8d
	callq	copy_component_pixels
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB74_3
.LBB74_5:                               # %while.end
                                        #   in Loop: Header=BB74_1 Depth=1
	jmp	.LBB74_6
.LBB74_6:                               # %for.inc
                                        #   in Loop: Header=BB74_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -32(%rbp)
	jmp	.LBB74_1
.LBB74_7:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	copy_component, .Lfunc_end74-copy_component
	.cfi_endproc

	.globl	copy_color
	.align	16, 0x90
	.type	copy_color,@function
copy_color:                             # @copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -24(%rbp)
.LBB75_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_3 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB75_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB75_3:                               # %while.cond
                                        #   Parent Loop BB75_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB75_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB75_3 Depth=2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	callq	copy_color_pixels
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB75_3
.LBB75_5:                               # %while.end
                                        #   in Loop: Header=BB75_1 Depth=1
	jmp	.LBB75_6
.LBB75_6:                               # %for.inc
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -24(%rbp)
	jmp	.LBB75_1
.LBB75_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	copy_color, .Lfunc_end75-copy_color
	.cfi_endproc

	.globl	initial_region
	.align	16, 0x90
	.type	initial_region,@function
initial_region:                         # @initial_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp229:
	.cfi_def_cfa_offset 16
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp231:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp232:
	.cfi_offset %rbx, -32
.Ltmp233:
	.cfi_offset %r14, -24
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movabsq	$initial_sub_region, %r11
	movl	$3, %ebx
	leaq	-104(%rbp), %r14
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movq	%r10, -64(%rbp)
	movl	%eax, -68(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	%r11, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	movb	$0, %al
	callq	pixel_regions_process_parallel
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end76:
	.size	initial_region, .Lfunc_end76-initial_region
	.cfi_endproc

	.align	16, 0x90
	.type	initial_sub_region,@function
initial_sub_region:                     # @initial_sub_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movl	44(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	52(%rcx), %r8d
	addl	$1, %r8d
	imull	%r8d, %eax
	movq	-24(%rbp), %rcx
	movl	44(%rcx), %r8d
	movq	-24(%rbp), %rcx
	imull	52(%rcx), %r8d
	cmpl	%r8d, %eax
	jle	.LBB77_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB77_3
.LBB77_2:                               # %cond.false
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	52(%rax), %ecx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
.LBB77_3:                               # %cond.end
	movl	-300(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -88(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %eax
	movl	%eax, -100(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB77_5
# BB#4:                                 # %cond.true.18
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB77_6
.LBB77_5:                               # %cond.false.20
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB77_6
.LBB77_6:                               # %cond.end.21
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
.LBB77_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB77_42
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	ja	.LBB77_38
# BB#43:                                # %for.body
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	.LJTI77_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB77_9:                               # %sw.bb
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	44(%rax), %edx
	movq	-24(%rbp), %rax
	movl	52(%rax), %ecx
	callq	initial_channel_pixels
	jmp	.LBB77_38
.LBB77_10:                              # %sw.bb.28
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	callq	initial_indexed_pixels
	jmp	.LBB77_38
.LBB77_11:                              # %sw.bb.30
                                        #   in Loop: Header=BB77_7 Depth=1
	movabsq	$no_mask, %rcx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %r8
	movl	-84(%rbp), %r9d
	movq	-16(%rbp), %rax
	movl	44(%rax), %r10d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	callq	initial_indexed_a_pixels
	addq	$16, %rsp
	jmp	.LBB77_38
.LBB77_12:                              # %sw.bb.32
                                        #   in Loop: Header=BB77_7 Depth=1
	cmpl	$1, -88(%rbp)
	jne	.LBB77_23
# BB#13:                                # %if.then
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	$0, -200(%rbp)
	movl	$3, -160(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB77_15
# BB#14:                                # %cond.true.38
                                        #   in Loop: Header=BB77_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB77_22
.LBB77_15:                              # %cond.false.39
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB77_17
# BB#16:                                # %cond.true.43
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	$1, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB77_21
.LBB77_17:                              # %cond.false.44
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$3, 52(%rax)
	jne	.LBB77_19
# BB#18:                                # %cond.true.48
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	$2, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB77_20
.LBB77_19:                              # %cond.false.49
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	$4, %eax
	movl	$3, %ecx
	movq	-16(%rbp), %rdx
	cmpl	$4, 52(%rdx)
	cmovel	%ecx, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB77_20:                              # %cond.end.54
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB77_21:                              # %cond.end.56
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB77_22:                              # %cond.end.58
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	-332(%rbp), %eax        # 4-byte Reload
	leaq	-200(%rbp), %rdi
	movl	%eax, -156(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	movq	-16(%rbp), %rcx
	movslq	44(%rcx), %rcx
	movq	%rcx, -168(%rbp)
	movl	$1, -112(%rbp)
	movq	-16(%rbp), %rcx
	movl	36(%rcx), %eax
	movl	%eax, -128(%rbp)
	movq	-16(%rbp), %rcx
	movl	40(%rcx), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -120(%rbp)
	callq	gimp_composite_dispatch
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$255, %ecx
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %r8
	movq	-16(%rbp), %r9
	movl	44(%r9), %r9d
	movq	-16(%rbp), %r10
	movl	52(%r10), %eax
	addl	$1, %eax
	subq	$16, %rsp
	movl	%eax, (%rsp)
	callq	initial_inten_a_pixels
	addq	$16, %rsp
	jmp	.LBB77_24
.LBB77_23:                              # %if.else
                                        #   in Loop: Header=BB77_7 Depth=1
	movabsq	$no_mask, %rcx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-84(%rbp), %r8d
	movq	-96(%rbp), %r9
	movq	-16(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-16(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	initial_inten_pixels
	addq	$16, %rsp
.LBB77_24:                              # %if.end
                                        #   in Loop: Header=BB77_7 Depth=1
	jmp	.LBB77_38
.LBB77_25:                              # %sw.bb.74
                                        #   in Loop: Header=BB77_7 Depth=1
	cmpl	$1, -88(%rbp)
	jne	.LBB77_36
# BB#26:                                # %if.then.77
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	$0, -296(%rbp)
	movl	$3, -256(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB77_28
# BB#27:                                # %cond.true.85
                                        #   in Loop: Header=BB77_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB77_35
.LBB77_28:                              # %cond.false.86
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB77_30
# BB#29:                                # %cond.true.90
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	$1, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB77_34
.LBB77_30:                              # %cond.false.91
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$3, 52(%rax)
	jne	.LBB77_32
# BB#31:                                # %cond.true.95
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	$2, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB77_33
.LBB77_32:                              # %cond.false.96
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	$4, %eax
	movl	$3, %ecx
	movq	-16(%rbp), %rdx
	cmpl	$4, 52(%rdx)
	cmovel	%ecx, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB77_33:                              # %cond.end.101
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB77_34:                              # %cond.end.103
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB77_35:                              # %cond.end.105
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	-344(%rbp), %eax        # 4-byte Reload
	leaq	-296(%rbp), %rdi
	movl	%eax, -252(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -280(%rbp)
	movl	-252(%rbp), %eax
	movl	%eax, -248(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-16(%rbp), %rcx
	movslq	44(%rcx), %rcx
	movq	%rcx, -264(%rbp)
	movl	$1, -208(%rbp)
	movq	-16(%rbp), %rcx
	movl	36(%rcx), %eax
	movl	%eax, -224(%rbp)
	movq	-16(%rbp), %rcx
	movl	40(%rcx), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -216(%rbp)
	callq	gimp_composite_dispatch
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$255, %ecx
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %r8
	movq	-16(%rbp), %r9
	movl	44(%r9), %r9d
	movq	-16(%rbp), %r10
	movl	52(%r10), %eax
	subq	$16, %rsp
	movl	%eax, (%rsp)
	callq	initial_inten_a_pixels
	addq	$16, %rsp
	jmp	.LBB77_37
.LBB77_36:                              # %if.else.127
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-84(%rbp), %ecx
	movq	-96(%rbp), %r8
	movq	-16(%rbp), %rax
	movl	44(%rax), %r9d
	movq	-16(%rbp), %rax
	movl	52(%rax), %r10d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	callq	initial_inten_a_pixels
	addq	$16, %rsp
.LBB77_37:                              # %if.end.130
                                        #   in Loop: Header=BB77_7 Depth=1
	jmp	.LBB77_38
.LBB77_38:                              # %sw.epilog
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB77_40
# BB#39:                                # %if.then.135
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	-32(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
.LBB77_40:                              # %if.end.139
                                        #   in Loop: Header=BB77_7 Depth=1
	jmp	.LBB77_41
.LBB77_41:                              # %for.inc
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB77_7
.LBB77_42:                              # %for.end
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	initial_sub_region, .Lfunc_end77-initial_sub_region
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI77_0:
	.quad	.LBB77_9
	.quad	.LBB77_9
	.quad	.LBB77_10
	.quad	.LBB77_11
	.quad	.LBB77_12
	.quad	.LBB77_25

	.text
	.globl	combine_regions
	.align	16, 0x90
	.type	combine_regions,@function
combine_regions:                        # @combine_regions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	32(%rbp), %eax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%r11d, -48(%rbp)
	movq	%r10, -56(%rbp)
	movl	%eax, -60(%rbp)
	decl	%eax
	movl	%eax, %ecx
	subl	$10, %eax
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%eax, -124(%rbp)        # 4-byte Spill
	ja	.LBB78_5
# BB#24:                                # %entry
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI78_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB78_1:                               # %sw.bb
	movl	$0, -64(%rbp)
	jmp	.LBB78_6
.LBB78_2:                               # %sw.bb.1
	movl	$1, -64(%rbp)
	jmp	.LBB78_6
.LBB78_3:                               # %sw.bb.2
	movl	$0, -64(%rbp)
	jmp	.LBB78_6
.LBB78_4:                               # %sw.bb.3
	movl	$1, -64(%rbp)
	jmp	.LBB78_6
.LBB78_5:                               # %sw.default
	movl	$0, -64(%rbp)
.LBB78_6:                               # %sw.epilog
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	cmpq	$0, -32(%rbp)
	movb	%cl, -125(%rbp)         # 1-byte Spill
	jne	.LBB78_13
# BB#7:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$255, -44(%rbp)
	movb	%cl, -125(%rbp)         # 1-byte Spill
	jne	.LBB78_13
# BB#8:                                 # %land.lhs.true.9
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	movb	layer_modes(,%rdx,4), %sil
	shrb	$2, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	cmpl	$0, %eax
	movb	%cl, -125(%rbp)         # 1-byte Spill
	jne	.LBB78_13
# BB#9:                                 # %land.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	movb	layer_modes(,%rdx,4), %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	cmpl	$0, %eax
	movb	%cl, -126(%rbp)         # 1-byte Spill
	je	.LBB78_12
# BB#10:                                # %land.lhs.true.17
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -64(%rbp)
	movb	%cl, -126(%rbp)         # 1-byte Spill
	je	.LBB78_12
# BB#11:                                # %land.rhs.19
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-56(%rbp), %rdx
	cmpl	$0, (%rdx,%rax,4)
	setne	%sil
	movb	%sil, -126(%rbp)        # 1-byte Spill
.LBB78_12:                              # %land.end
	movb	-126(%rbp), %al         # 1-byte Reload
	movb	%al, -125(%rbp)         # 1-byte Spill
.LBB78_13:                              # %land.end.23
	movb	-125(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB78_21
# BB#14:                                # %if.then
	movl	$0, -68(%rbp)
.LBB78_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	52(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jae	.LBB78_20
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB78_15 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jne	.LBB78_18
# BB#17:                                # %if.then.32
	movl	$0, -80(%rbp)
	jmp	.LBB78_20
.LBB78_18:                              # %if.end
                                        #   in Loop: Header=BB78_15 Depth=1
	jmp	.LBB78_19
.LBB78_19:                              # %for.inc
                                        #   in Loop: Header=BB78_15 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB78_15
.LBB78_20:                              # %for.end
	jmp	.LBB78_21
.LBB78_21:                              # %if.end.34
	movb	$1, %al
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	movb	layer_modes(,%rdx,4), %sil
	shrb	$1, %sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	cmpl	$0, %ecx
	movb	%al, -127(%rbp)         # 1-byte Spill
	je	.LBB78_23
# BB#22:                                # %lor.rhs
	cmpl	$0, -44(%rbp)
	sete	%al
	movb	%al, -127(%rbp)         # 1-byte Spill
.LBB78_23:                              # %lor.end
	movb	-127(%rbp), %al         # 1-byte Reload
	movabsq	$combine_sub_region, %rcx
	movl	$4, %edx
	leaq	-112(%rbp), %rsi
	andb	$1, %al
	movzbl	%al, %edi
	movl	%edi, -76(%rbp)
	movq	-8(%rbp), %r8
	movq	-16(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	-32(%rbp), %r11
	movq	%rcx, %rdi
	movq	%r8, %rcx
	movq	%r9, %r8
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movb	$0, %al
	callq	pixel_regions_process_parallel
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	combine_regions, .Lfunc_end78-combine_regions
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI78_0:
	.quad	.LBB78_1
	.quad	.LBB78_3
	.quad	.LBB78_4
	.quad	.LBB78_2
	.quad	.LBB78_5
	.quad	.LBB78_5
	.quad	.LBB78_5
	.quad	.LBB78_1
	.quad	.LBB78_3
	.quad	.LBB78_2
	.quad	.LBB78_4

	.text
	.align	16, 0x90
	.type	combine_sub_region,@function
combine_sub_region:                     # @combine_sub_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp243:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -104(%rbp)
	movq	-24(%rbp), %rcx
	movl	44(%rcx), %eax
	movq	-24(%rbp), %rcx
	imull	52(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	44(%rcx), %r9d
	movq	-32(%rbp), %rcx
	movl	52(%rcx), %r10d
	addl	$1, %r10d
	imull	%r10d, %r9d
	cmpl	%r9d, %eax
	jle	.LBB79_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	52(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB79_3
.LBB79_2:                               # %cond.false
	movq	-32(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	52(%rax), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
.LBB79_3:                               # %cond.end
	movl	-268(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	44(%rcx), %edx
	movq	-40(%rbp), %rcx
	imull	52(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB79_8
# BB#4:                                 # %cond.true.15
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	52(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	44(%rax), %edx
	movq	-32(%rbp), %rax
	movl	52(%rax), %esi
	addl	$1, %esi
	imull	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB79_6
# BB#5:                                 # %cond.true.24
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	52(%rax), %ecx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	jmp	.LBB79_7
.LBB79_6:                               # %cond.false.28
	movq	-32(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	52(%rax), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
.LBB79_7:                               # %cond.end.33
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB79_9
.LBB79_8:                               # %cond.false.35
	movq	-40(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-40(%rbp), %rax
	imull	52(%rax), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
.LBB79_9:                               # %cond.end.39
	movl	-276(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %rdi
	subq	%rsi, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -152(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %eax
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -88(%rbp)
	movq	-16(%rbp), %rsi
	movl	16(%rsi), %eax
	movl	%eax, -100(%rbp)
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 32(%rsi)
	movb	%dl, -277(%rbp)         # 1-byte Spill
	je	.LBB79_11
# BB#10:                                # %land.rhs
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	movb	%cl, -277(%rbp)         # 1-byte Spill
.LBB79_11:                              # %land.end
	movb	-277(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -156(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 36(%rsi)
	movb	%dl, -278(%rbp)         # 1-byte Spill
	je	.LBB79_13
# BB#12:                                # %land.rhs.50
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	movb	%cl, -278(%rbp)         # 1-byte Spill
.LBB79_13:                              # %land.end.53
	movb	-278(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -160(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -120(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -128(%rbp)
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -136(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB79_15
# BB#14:                                # %cond.true.59
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB79_16
.LBB79_15:                              # %cond.false.61
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB79_16
.LBB79_16:                              # %cond.end.62
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	cmpl	$0, -160(%rbp)
	jne	.LBB79_18
# BB#17:                                # %lor.lhs.false
	cmpl	$0, -156(%rbp)
	je	.LBB79_19
.LBB79_18:                              # %if.then
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	28(%rax), %esi
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	callq	tile_update_rowhints
.LBB79_19:                              # %if.end
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	cmpl	$1, -76(%rbp)
	jne	.LBB79_21
# BB#20:                                # %if.then.69
	movl	$255, -60(%rbp)
	movq	$0, -144(%rbp)
.LBB79_21:                              # %if.end.70
	movl	$0, -92(%rbp)
.LBB79_22:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jae	.LBB79_94
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB79_22 Depth=1
	movb	$5, -161(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB79_27
# BB#24:                                # %if.then.75
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	28(%rax), %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, %esi
	callq	tile_get_rowhint
	movb	%al, -161(%rbp)
	movzbl	-161(%rbp), %ecx
	cmpl	$2, %ecx
	jne	.LBB79_26
# BB#25:                                # %if.then.82
                                        #   in Loop: Header=BB79_22 Depth=1
	jmp	.LBB79_88
.LBB79_26:                              # %if.end.83
                                        #   in Loop: Header=BB79_22 Depth=1
	jmp	.LBB79_30
.LBB79_27:                              # %if.else
                                        #   in Loop: Header=BB79_22 Depth=1
	cmpl	$0, -156(%rbp)
	je	.LBB79_29
# BB#28:                                # %if.then.85
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	28(%rax), %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, %esi
	callq	tile_get_rowhint
	movb	%al, -161(%rbp)
.LBB79_29:                              # %if.end.90
                                        #   in Loop: Header=BB79_22 Depth=1
	jmp	.LBB79_30
.LBB79_30:                              # %if.end.91
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-100(%rbp), %ecx
	movl	%ecx, %edx
	decl	%edx
	subl	$3, %edx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	%edx, -296(%rbp)        # 4-byte Spill
	jb	.LBB79_32
	jmp	.LBB79_95
.LBB79_95:                              # %if.end.91
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-292(%rbp), %eax        # 4-byte Reload
	addl	$-4, %eax
	subl	$4, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jb	.LBB79_31
	jmp	.LBB79_96
.LBB79_96:                              # %if.end.91
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-292(%rbp), %eax        # 4-byte Reload
	addl	$-8, %eax
	subl	$4, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jb	.LBB79_33
	jmp	.LBB79_55
.LBB79_31:                              # %sw.bb
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB79_56
.LBB79_32:                              # %sw.bb.92
                                        #   in Loop: Header=BB79_22 Depth=1
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movl	-100(%rbp), %r8d
	callq	apply_indexed_layer_mode
	movl	%eax, -96(%rbp)
	jmp	.LBB79_56
.LBB79_33:                              # %sw.bb.94
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB79_35
# BB#34:                                # %cond.true.98
                                        #   in Loop: Header=BB79_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB79_42
.LBB79_35:                              # %cond.false.99
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB79_37
# BB#36:                                # %cond.true.103
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	$1, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB79_41
.LBB79_37:                              # %cond.false.104
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$3, 52(%rax)
	jne	.LBB79_39
# BB#38:                                # %cond.true.108
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	$2, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB79_40
.LBB79_39:                              # %cond.false.109
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	$4, %eax
	movl	$3, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$4, 52(%rdx)
	cmovel	%ecx, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB79_40:                              # %cond.end.114
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB79_41:                              # %cond.end.116
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB79_42:                              # %cond.end.118
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	movq	-32(%rbp), %rcx
	cmpl	$1, 52(%rcx)
	jne	.LBB79_44
# BB#43:                                # %cond.true.123
                                        #   in Loop: Header=BB79_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB79_51
.LBB79_44:                              # %cond.false.124
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB79_46
# BB#45:                                # %cond.true.128
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	$1, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB79_50
.LBB79_46:                              # %cond.false.129
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$3, 52(%rax)
	jne	.LBB79_48
# BB#47:                                # %cond.true.133
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	$2, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB79_49
.LBB79_48:                              # %cond.false.134
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	$4, %eax
	movl	$3, %ecx
	movq	-32(%rbp), %rdx
	cmpl	$4, 52(%rdx)
	cmovel	%ecx, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB79_49:                              # %cond.end.139
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB79_50:                              # %cond.end.141
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB79_51:                              # %cond.end.143
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-320(%rbp), %eax        # 4-byte Reload
	leaq	-264(%rbp), %rdi
	movabsq	$gimp_composite_operation_effects, %rcx
	movl	%eax, -220(%rbp)
	movq	-112(%rbp), %rdx
	movq	%rdx, -248(%rbp)
	movl	-224(%rbp), %eax
	movl	%eax, -216(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, -240(%rbp)
	movl	$4, -212(%rbp)
	movq	-24(%rbp), %rdx
	movslq	44(%rdx), %rdx
	movq	%rdx, -232(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -180(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -176(%rbp)
	movq	-24(%rbp), %rdx
	movl	36(%rdx), %eax
	movl	%eax, -192(%rbp)
	movq	-24(%rbp), %rdx
	movl	40(%rdx), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -188(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -184(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -104(%rbp)
	callq	gimp_composite_dispatch
	movq	-248(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	cmpl	$0, -180(%rbp)
	jne	.LBB79_53
# BB#52:                                # %cond.true.160
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB79_54
.LBB79_53:                              # %cond.false.161
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-180(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB79_54:                              # %cond.end.163
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)
	jmp	.LBB79_56
.LBB79_55:                              # %sw.default
                                        #   in Loop: Header=BB79_22 Depth=1
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	g_warning
.LBB79_56:                              # %sw.epilog
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-96(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$20, %rdx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	ja	.LBB79_86
# BB#97:                                # %sw.epilog
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	.LJTI79_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB79_57:                              # %sw.bb.165
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	combine_indexed_and_indexed_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_58:                              # %sw.bb.168
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	combine_indexed_and_indexed_a_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_59:                              # %sw.bb.171
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	combine_indexed_a_and_indexed_a_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_60:                              # %sw.bb.174
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	-56(%rbp), %r8
	movl	-60(%rbp), %r9d
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-40(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	combine_inten_a_and_indexed_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_61:                              # %sw.bb.177
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	-56(%rbp), %r8
	movl	-60(%rbp), %r9d
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-40(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	combine_inten_a_and_indexed_a_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_62:                              # %sw.bb.180
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-24(%rbp), %rax
	movl	44(%rax), %r9d
	movq	-40(%rbp), %rax
	movl	52(%rax), %r10d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	callq	combine_inten_a_and_channel_mask_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_63:                              # %sw.bb.183
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-24(%rbp), %rax
	movl	44(%rax), %r9d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r10d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	callq	combine_inten_a_and_channel_selection_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_64:                              # %sw.bb.186
                                        #   in Loop: Header=BB79_22 Depth=1
	movzbl	-161(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB79_67
# BB#65:                                # %land.lhs.true
                                        #   in Loop: Header=BB79_22 Depth=1
	cmpl	$0, -156(%rbp)
	je	.LBB79_67
# BB#66:                                # %if.then.191
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-136(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-40(%rbp), %rax
	imull	52(%rax), %ecx
	movslq	%ecx, %rdx
	callq	memcpy
	jmp	.LBB79_68
.LBB79_67:                              # %if.else.196
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	combine_inten_and_inten_pixels
	addq	$16, %rsp
.LBB79_68:                              # %if.end.199
                                        #   in Loop: Header=BB79_22 Depth=1
	jmp	.LBB79_87
.LBB79_69:                              # %sw.bb.200
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	combine_inten_and_inten_a_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_70:                              # %sw.bb.203
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movl	-104(%rbp), %eax
	movq	-24(%rbp), %r10
	movl	44(%r10), %r11d
	movq	-24(%rbp), %r10
	movl	52(%r10), %ebx
	subq	$32, %rsp
	movl	%eax, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	combine_inten_a_and_inten_pixels
	addq	$32, %rsp
	jmp	.LBB79_87
.LBB79_71:                              # %sw.bb.206
                                        #   in Loop: Header=BB79_22 Depth=1
	movzbl	-161(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB79_74
# BB#72:                                # %land.lhs.true.210
                                        #   in Loop: Header=BB79_22 Depth=1
	cmpl	$0, -156(%rbp)
	je	.LBB79_74
# BB#73:                                # %if.then.212
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-136(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-40(%rbp), %rax
	imull	52(%rax), %ecx
	movslq	%ecx, %rdx
	callq	memcpy
	jmp	.LBB79_75
.LBB79_74:                              # %if.else.217
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movl	-104(%rbp), %eax
	movq	-24(%rbp), %r10
	movl	44(%r10), %r11d
	movq	-24(%rbp), %r10
	movl	52(%r10), %ebx
	subq	$32, %rsp
	movl	%eax, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	combine_inten_a_and_inten_a_pixels
	addq	$32, %rsp
.LBB79_75:                              # %if.end.220
                                        #   in Loop: Header=BB79_22 Depth=1
	jmp	.LBB79_87
.LBB79_76:                              # %sw.bb.221
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	movq	-32(%rbp), %rax
	movl	52(%rax), %ebx
	subq	$32, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	behind_inten_pixels
	addq	$32, %rsp
	jmp	.LBB79_87
.LBB79_77:                              # %sw.bb.225
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	movq	-32(%rbp), %rax
	movl	52(%rax), %ebx
	subq	$32, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	behind_indexed_pixels
	addq	$32, %rsp
	jmp	.LBB79_87
.LBB79_78:                              # %sw.bb.229
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	movq	-32(%rbp), %rax
	movl	52(%rax), %ebx
	subq	$32, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	replace_inten_pixels
	addq	$32, %rsp
	jmp	.LBB79_87
.LBB79_79:                              # %sw.bb.233
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	movq	-32(%rbp), %rax
	movl	52(%rax), %ebx
	subq	$32, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	replace_indexed_pixels
	addq	$32, %rsp
	jmp	.LBB79_87
.LBB79_80:                              # %sw.bb.237
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	erase_inten_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_81:                              # %sw.bb.240
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	erase_indexed_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_82:                              # %sw.bb.243
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	anti_erase_inten_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_83:                              # %sw.bb.246
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	anti_erase_indexed_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_84:                              # %sw.bb.249
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-88(%rbp), %r9
	movq	-24(%rbp), %rax
	movl	44(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	52(%rax), %r11d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	color_erase_inten_pixels
	addq	$16, %rsp
	jmp	.LBB79_87
.LBB79_85:                              # %sw.bb.252
                                        #   in Loop: Header=BB79_22 Depth=1
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB79_87
.LBB79_86:                              # %sw.default.253
                                        #   in Loop: Header=BB79_22 Depth=1
	movabsq	$.L.str.4, %rdi
	movl	-96(%rbp), %esi
	movb	$0, %al
	callq	g_warning
.LBB79_87:                              # %sw.epilog.254
                                        #   in Loop: Header=BB79_22 Depth=1
	jmp	.LBB79_88
.LBB79_88:                              # %next_row
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-120(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-128(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-136(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB79_92
# BB#89:                                # %if.then.262
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-48(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-72(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB79_91
# BB#90:                                # %if.then.267
                                        #   in Loop: Header=BB79_22 Depth=1
	movq	-48(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-144(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
.LBB79_91:                              # %if.end.271
                                        #   in Loop: Header=BB79_22 Depth=1
	jmp	.LBB79_92
.LBB79_92:                              # %if.end.272
                                        #   in Loop: Header=BB79_22 Depth=1
	jmp	.LBB79_93
.LBB79_93:                              # %for.inc
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB79_22
.LBB79_94:                              # %for.end
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end79:
	.size	combine_sub_region, .Lfunc_end79-combine_sub_region
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI79_0:
	.quad	.LBB79_85
	.quad	.LBB79_57
	.quad	.LBB79_58
	.quad	.LBB79_59
	.quad	.LBB79_60
	.quad	.LBB79_61
	.quad	.LBB79_62
	.quad	.LBB79_63
	.quad	.LBB79_64
	.quad	.LBB79_69
	.quad	.LBB79_70
	.quad	.LBB79_71
	.quad	.LBB79_76
	.quad	.LBB79_77
	.quad	.LBB79_78
	.quad	.LBB79_79
	.quad	.LBB79_80
	.quad	.LBB79_81
	.quad	.LBB79_82
	.quad	.LBB79_83
	.quad	.LBB79_84

	.text
	.globl	combine_regions_replace
	.align	16, 0x90
	.type	combine_regions_replace,@function
combine_regions_replace:                # @combine_regions_replace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
.Ltmp245:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp246:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp247:
	.cfi_offset %rbx, -32
.Ltmp248:
	.cfi_offset %r14, -24
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movl	$4, %r11d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movq	%r10, -72(%rbp)
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movl	%r11d, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -88(%rbp)
.LBB80_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB80_3 Depth 2
	cmpq	$0, -88(%rbp)
	je	.LBB80_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -124(%rbp)
.LBB80_3:                               # %for.cond.5
                                        #   Parent Loop BB80_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-124(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jae	.LBB80_6
# BB#4:                                 # %for.body.8
                                        #   in Loop: Header=BB80_3 Depth=2
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	36(%rax), %r8d
	movq	-24(%rbp), %rax
	movl	40(%rax), %r9d
	addl	-124(%rbp), %r9d
	movl	-60(%rbp), %r10d
	movq	-24(%rbp), %rax
	movl	44(%rax), %r11d
	movq	-24(%rbp), %rax
	movl	52(%rax), %ebx
	movq	-32(%rbp), %rax
	movl	52(%rax), %r14d
	movq	-72(%rbp), %rax
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movq	%rax, 32(%rsp)
	callq	apply_layer_mode_replace
	movq	-24(%rbp), %rax
	movl	32(%rax), %r8d
	movq	-96(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movl	32(%rax), %r8d
	movq	-104(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movl	32(%rax), %r8d
	movq	-112(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movl	32(%rax), %r8d
	movq	-120(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB80_3 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB80_3
.LBB80_6:                               # %for.end
                                        #   in Loop: Header=BB80_1 Depth=1
	jmp	.LBB80_7
.LBB80_7:                               # %for.inc.19
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -88(%rbp)
	jmp	.LBB80_1
.LBB80_8:                               # %for.end.21
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end80:
	.size	combine_regions_replace, .Lfunc_end80-combine_regions_replace
	.cfi_endproc

	.align	16, 0x90
	.type	apply_layer_mode_replace,@function
apply_layer_mode_replace:               # @apply_layer_mode_replace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp252:
	.cfi_offset %rbx, -32
.Ltmp253:
	.cfi_offset %r14, -24
	movq	48(%rbp), %rax
	movl	40(%rbp), %r10d
	movl	32(%rbp), %r11d
	movl	24(%rbp), %ebx
	movl	16(%rbp), %r14d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movl	%r14d, -60(%rbp)
	movl	%ebx, -64(%rbp)
	movl	%r11d, -68(%rbp)
	movl	%r10d, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-64(%rbp), %r8d
	movl	-60(%rbp), %r9d
	movq	-80(%rbp), %rax
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r11d
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	replace_pixels
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end81:
	.size	apply_layer_mode_replace, .Lfunc_end81-apply_layer_mode_replace
	.cfi_endproc

	.align	16, 0x90
	.type	apply_indexed_layer_mode,@function
apply_indexed_layer_mode:               # @apply_indexed_layer_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
.Ltmp255:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp256:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	%r8d, -40(%rbp)         # 4-byte Spill
	je	.LBB82_2
	jmp	.LBB82_12
.LBB82_12:                              # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$23, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB82_6
	jmp	.LBB82_13
.LBB82_13:                              # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$24, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jne	.LBB82_10
	jmp	.LBB82_1
.LBB82_1:                               # %sw.bb
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$15, -32(%rbp)
	jmp	.LBB82_11
.LBB82_2:                               # %sw.bb.1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$3, -32(%rbp)
	jne	.LBB82_4
# BB#3:                                 # %if.then
	movl	$13, -32(%rbp)
	jmp	.LBB82_5
.LBB82_4:                               # %if.else
	movl	$0, -32(%rbp)
.LBB82_5:                               # %if.end
	jmp	.LBB82_11
.LBB82_6:                               # %sw.bb.2
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$3, -32(%rbp)
	jne	.LBB82_8
# BB#7:                                 # %cond.true
	movl	$17, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB82_9
.LBB82_8:                               # %cond.false
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB82_9:                               # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	jmp	.LBB82_11
.LBB82_10:                              # %sw.default
	jmp	.LBB82_11
.LBB82_11:                              # %sw.epilog
	movl	-32(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end82:
	.size	apply_indexed_layer_mode, .Lfunc_end82-apply_indexed_layer_mode
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI83_0:
	.quad	4607182418800017408     # double 1
.LCPI83_1:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	behind_inten_pixels,@function
behind_inten_pixels:                    # @behind_inten_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp257:
	.cfi_def_cfa_offset 16
.Ltmp258:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp259:
	.cfi_def_cfa_register %rbp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r11d, -52(%rbp)
	movl	%r10d, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB83_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB83_3
.LBB83_2:                               # %cond.false
	movabsq	$no_mask, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB83_3
.LBB83_3:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
.LBB83_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB83_9 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB83_21
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB83_4 Depth=1
	movl	$255, %eax
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movb	%dil, -97(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx), %r8d
	imull	%r8d, %ecx
	imull	-36(%rbp), %ecx
	addl	$32603, %ecx            # imm = 0x7F5B
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rdx
	sarq	$7, %rdx
	addq	-96(%rbp), %rdx
	sarq	$16, %rdx
	movb	%dl, %dil
	movb	%dil, -98(%rbp)
	movzbl	-98(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	-98(%rbp), %ecx
	subl	%ecx, %eax
	movzbl	-97(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	movq	-96(%rbp), %rsi
	sarq	$8, %rsi
	addq	-96(%rbp), %rsi
	sarq	$8, %rsi
	addq	%rsi, %rdx
	movb	%dl, %dil
	movb	%dil, -99(%rbp)
	cmpb	$0, -99(%rbp)
	je	.LBB83_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB83_4 Depth=1
	movzbl	-97(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movzbl	-99(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	jmp	.LBB83_8
.LBB83_7:                               # %if.else
                                        #   in Loop: Header=BB83_4 Depth=1
	xorps	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
.LBB83_8:                               # %if.end
                                        #   in Loop: Header=BB83_4 Depth=1
	movsd	.LCPI83_0, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -84(%rbp)
	movl	$0, -76(%rbp)
.LBB83_9:                               # %for.cond
                                        #   Parent Loop BB83_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jae	.LBB83_15
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB83_9 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB83_12
# BB#11:                                # %cond.true.36
                                        #   in Loop: Header=BB83_9 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-80(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-84(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI83_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %sil
	movzbl	%sil, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB83_13
.LBB83_12:                              # %cond.false.52
                                        #   in Loop: Header=BB83_9 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB83_13:                              # %cond.end.56
                                        #   in Loop: Header=BB83_9 Depth=2
	movl	-116(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB83_9 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB83_9
.LBB83_15:                              # %for.end
                                        #   in Loop: Header=BB83_4 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB83_17
# BB#16:                                # %cond.true.64
                                        #   in Loop: Header=BB83_4 Depth=1
	movzbl	-99(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB83_18
.LBB83_17:                              # %cond.false.66
                                        #   in Loop: Header=BB83_4 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB83_18:                              # %cond.end.70
                                        #   in Loop: Header=BB83_4 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpq	$0, -32(%rbp)
	je	.LBB83_20
# BB#19:                                # %if.then.76
                                        #   in Loop: Header=BB83_4 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB83_20:                              # %if.end.77
                                        #   in Loop: Header=BB83_4 Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB83_4
.LBB83_21:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end83:
	.size	behind_inten_pixels, .Lfunc_end83-behind_inten_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	behind_indexed_pixels,@function
behind_indexed_pixels:                  # @behind_indexed_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp260:
	.cfi_def_cfa_offset 16
.Ltmp261:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp262:
	.cfi_def_cfa_register %rbp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r11d, -52(%rbp)
	movl	%r10d, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB84_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB84_3
.LBB84_2:                               # %cond.false
	movabsq	$no_mask, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB84_3
.LBB84_3:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
.LBB84_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB84_6 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB84_17
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB84_4 Depth=1
	xorl	%eax, %eax
	movl	$255, %ecx
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdi
	movb	(%rdi,%rsi), %r8b
	movb	%r8b, -89(%rbp)
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	movq	-72(%rbp), %rsi
	movzbl	(%rsi), %r9d
	imull	%r9d, %edx
	imull	-36(%rbp), %edx
	addl	$32603, %edx            # imm = 0x7F5B
	movl	%edx, %edx
	movl	%edx, %esi
	movq	%rsi, -88(%rbp)
	movq	-88(%rbp), %rsi
	sarq	$7, %rsi
	addq	-88(%rbp), %rsi
	sarq	$16, %rsi
	movb	%sil, %r8b
	movb	%r8b, -90(%rbp)
	movzbl	-90(%rbp), %edx
	cmpl	$127, %edx
	cmovgl	%ecx, %eax
	movb	%al, %r8b
	movb	%r8b, -91(%rbp)
	movl	$0, -76(%rbp)
.LBB84_6:                               # %for.cond
                                        #   Parent Loop BB84_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB84_14
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB84_6 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB84_11
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB84_6 Depth=2
	movzbl	-91(%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB84_11
# BB#9:                                 # %land.lhs.true.25
                                        #   in Loop: Header=BB84_6 Depth=2
	movzbl	-89(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB84_11
# BB#10:                                # %cond.true.29
                                        #   in Loop: Header=BB84_6 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB84_12
.LBB84_11:                              # %cond.false.33
                                        #   in Loop: Header=BB84_6 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB84_12:                              # %cond.end.37
                                        #   in Loop: Header=BB84_6 Depth=2
	movl	-108(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB84_6 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB84_6
.LBB84_14:                              # %for.end
                                        #   in Loop: Header=BB84_4 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB84_16
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB84_16:                              # %if.end
                                        #   in Loop: Header=BB84_4 Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB84_4
.LBB84_17:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end84:
	.size	behind_indexed_pixels, .Lfunc_end84-behind_indexed_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	replace_inten_pixels,@function
replace_inten_pixels:                   # @replace_inten_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp263:
	.cfi_def_cfa_offset 16
.Ltmp264:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp265:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r11d, -52(%rbp)
	movl	%r10d, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-56(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-60(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB85_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB85_3
.LBB85_2:                               # %cond.false
	movabsq	$no_mask, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB85_3
.LBB85_3:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
.LBB85_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB85_13 Depth 2
                                        #     Child Loop BB85_24 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB85_36
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB85_4 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB85_7
# BB#6:                                 # %cond.true.7
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB85_8
.LBB85_7:                               # %cond.false.8
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	$255, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB85_8
.LBB85_8:                               # %cond.end.9
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -97(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB85_10
# BB#9:                                 # %cond.true.14
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB85_11
.LBB85_10:                              # %cond.false.18
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	$255, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB85_11
.LBB85_11:                              # %cond.end.19
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -98(%rbp)
	movzbl	-98(%rbp), %eax
	movzbl	-97(%rbp), %edx
	subl	%edx, %eax
	movq	-88(%rbp), %rsi
	movzbl	(%rsi), %edx
	imull	-36(%rbp), %edx
	addl	$128, %edx
	movl	%edx, -96(%rbp)
	movl	-96(%rbp), %edx
	sarl	$8, %edx
	addl	-96(%rbp), %edx
	sarl	$8, %edx
	imull	%edx, %eax
	addl	$128, %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	sarl	$8, %eax
	addl	-96(%rbp), %eax
	sarl	$8, %eax
	movzbl	-97(%rbp), %edx
	addl	%edx, %eax
	movb	%al, %cl
	movb	%cl, -99(%rbp)
	cmpb	$0, -99(%rbp)
	je	.LBB85_23
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	$2, %eax
	movl	$255, %ecx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	imull	-36(%rbp), %esi
	movl	%esi, -104(%rbp)
	movl	-104(%rbp), %esi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%ecx
	movzbl	-98(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movzbl	-99(%rbp), %ecx
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	%ecx
	movl	-104(%rbp), %ecx
	movzbl	-99(%rbp), %esi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divl	%esi
	movzbl	-99(%rbp), %ecx
	movl	%ecx, %eax
	movl	%edx, -140(%rbp)        # 4-byte Spill
	cltd
	movl	-132(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-140(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	seta	%dil
	andb	$1, %dil
	movzbl	%dil, %eax
	movl	-136(%rbp), %r8d        # 4-byte Reload
	addl	%eax, %r8d
	movl	%r8d, -104(%rbp)
	movl	$0, -92(%rbp)
.LBB85_13:                              # %for.cond
                                        #   Parent Loop BB85_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jae	.LBB85_22
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB85_13 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jne	.LBB85_16
# BB#15:                                # %if.then.55
                                        #   in Loop: Header=BB85_13 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	jmp	.LBB85_20
.LBB85_16:                              # %if.else
                                        #   in Loop: Header=BB85_13 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-92(%rbp), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jle	.LBB85_18
# BB#17:                                # %if.then.68
                                        #   in Loop: Header=BB85_13 Depth=2
	movl	$255, %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-92(%rbp), %edi
	movl	%edi, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	subl	%edi, %ecx
	imull	-104(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-108(%rbp), %edi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	xorl	%edx, %edx
	movl	-144(%rbp), %edi        # 4-byte Reload
	divl	%edi
	movl	-108(%rbp), %r8d
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	%edi
	cmpl	$127, %edx
	seta	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	movl	-148(%rbp), %r8d        # 4-byte Reload
	addl	%edx, %r8d
	addl	%r8d, %ecx
	movb	%cl, %r9b
	movl	-92(%rbp), %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %r10
	movb	%r9b, (%r10,%rsi)
	jmp	.LBB85_19
.LBB85_18:                              # %if.else.90
                                        #   in Loop: Header=BB85_13 Depth=2
	movl	$255, %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-92(%rbp), %edi
	movl	%edi, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	subl	%edi, %ecx
	imull	-104(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-112(%rbp), %edi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	xorl	%edx, %edx
	movl	-152(%rbp), %edi        # 4-byte Reload
	divl	%edi
	movl	-112(%rbp), %r8d
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	%edi
	cmpl	$127, %edx
	seta	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	movl	-156(%rbp), %r8d        # 4-byte Reload
	addl	%edx, %r8d
	subl	%r8d, %ecx
	movb	%cl, %r9b
	movl	-92(%rbp), %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %r10
	movb	%r9b, (%r10,%rsi)
.LBB85_19:                              # %if.end
                                        #   in Loop: Header=BB85_13 Depth=2
	jmp	.LBB85_20
.LBB85_20:                              # %if.end.113
                                        #   in Loop: Header=BB85_13 Depth=2
	jmp	.LBB85_21
.LBB85_21:                              # %for.inc
                                        #   in Loop: Header=BB85_13 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB85_13
.LBB85_22:                              # %for.end
                                        #   in Loop: Header=BB85_4 Depth=1
	jmp	.LBB85_28
.LBB85_23:                              # %if.else.114
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	$0, -92(%rbp)
.LBB85_24:                              # %for.cond.115
                                        #   Parent Loop BB85_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jae	.LBB85_27
# BB#25:                                # %for.body.118
                                        #   in Loop: Header=BB85_24 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#26:                                # %for.inc.123
                                        #   in Loop: Header=BB85_24 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB85_24
.LBB85_27:                              # %for.end.125
                                        #   in Loop: Header=BB85_4 Depth=1
	jmp	.LBB85_28
.LBB85_28:                              # %if.end.126
                                        #   in Loop: Header=BB85_4 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB85_33
# BB#29:                                # %if.then.128
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB85_31
# BB#30:                                # %cond.true.132
                                        #   in Loop: Header=BB85_4 Depth=1
	movzbl	-99(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB85_32
.LBB85_31:                              # %cond.false.134
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB85_32:                              # %cond.end.138
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-72(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB85_33:                              # %if.end.143
                                        #   in Loop: Header=BB85_4 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB85_35
# BB#34:                                # %if.then.145
                                        #   in Loop: Header=BB85_4 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
.LBB85_35:                              # %if.end.146
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB85_4
.LBB85_36:                              # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	replace_inten_pixels, .Lfunc_end85-replace_inten_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	replace_indexed_pixels,@function
replace_indexed_pixels:                 # @replace_indexed_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp266:
	.cfi_def_cfa_offset 16
.Ltmp267:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp268:
	.cfi_def_cfa_register %rbp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r11d, -52(%rbp)
	movl	%r10d, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB86_2
# BB#1:                                 # %cond.true
	movl	-56(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB86_3
.LBB86_2:                               # %cond.false
	movl	-60(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB86_3:                               # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB86_5
# BB#4:                                 # %cond.true.3
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB86_6
.LBB86_5:                               # %cond.false.4
	movabsq	$no_mask, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB86_6
.LBB86_6:                               # %cond.end.5
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
.LBB86_7:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB86_9 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB86_22
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB86_7 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	-36(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, -88(%rbp)
	movl	-88(%rbp), %ecx
	sarl	$8, %ecx
	addl	-88(%rbp), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movb	%dl, -89(%rbp)
	movl	$0, -84(%rbp)
.LBB86_9:                               # %for.cond
                                        #   Parent Loop BB86_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jae	.LBB86_16
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB86_9 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB86_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB86_9 Depth=2
	movzbl	-89(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB86_13
# BB#12:                                # %cond.true.17
                                        #   in Loop: Header=BB86_9 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB86_14
.LBB86_13:                              # %cond.false.21
                                        #   in Loop: Header=BB86_9 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB86_14:                              # %cond.end.25
                                        #   in Loop: Header=BB86_9 Depth=2
	movl	-108(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB86_9 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB86_9
.LBB86_16:                              # %for.end
                                        #   in Loop: Header=BB86_7 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB86_19
# BB#17:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB86_7 Depth=1
	cmpl	$0, -68(%rbp)
	jne	.LBB86_19
# BB#18:                                # %if.then
                                        #   in Loop: Header=BB86_7 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB86_19:                              # %if.end
                                        #   in Loop: Header=BB86_7 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB86_21
# BB#20:                                # %if.then.38
                                        #   in Loop: Header=BB86_7 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
.LBB86_21:                              # %if.end.39
                                        #   in Loop: Header=BB86_7 Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB86_7
.LBB86_22:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end86:
	.size	replace_indexed_pixels, .Lfunc_end86-replace_indexed_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	erase_inten_pixels,@function
erase_inten_pixels:                     # @erase_inten_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp269:
	.cfi_def_cfa_offset 16
.Ltmp270:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp271:
	.cfi_def_cfa_register %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB87_9
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB87_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_4 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB87_8
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB87_2 Depth=1
	movl	$0, -64(%rbp)
.LBB87_4:                               # %for.cond
                                        #   Parent Loop BB87_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB87_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB87_4 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB87_4 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB87_4
.LBB87_7:                               # %for.end
                                        #   in Loop: Header=BB87_2 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx), %esi
	imull	%esi, %eax
	imull	-36(%rbp), %eax
	addl	$32603, %eax            # imm = 0x7F5B
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	sarq	$7, %rcx
	addq	-80(%rbp), %rcx
	sarq	$16, %rcx
	movb	%cl, %dil
	movb	%dil, -65(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %r8
	movzbl	(%r8,%rdx), %eax
	movzbl	-65(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdx
	sarq	$8, %rdx
	addq	-80(%rbp), %rdx
	sarq	$8, %rdx
	subq	%rdx, %rcx
	movb	%cl, %dil
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
	movq	-88(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB87_2
.LBB87_8:                               # %while.end
	jmp	.LBB87_17
.LBB87_9:                               # %if.else
	movabsq	$no_mask, %rax
	movq	%rax, -96(%rbp)
.LBB87_10:                              # %while.cond.36
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_12 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB87_16
# BB#11:                                # %while.body.39
                                        #   in Loop: Header=BB87_10 Depth=1
	movl	$0, -64(%rbp)
.LBB87_12:                              # %for.cond.40
                                        #   Parent Loop BB87_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB87_15
# BB#13:                                # %for.body.43
                                        #   in Loop: Header=BB87_12 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#14:                                # %for.inc.48
                                        #   in Loop: Header=BB87_12 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB87_12
.LBB87_15:                              # %for.end.50
                                        #   in Loop: Header=BB87_10 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx), %esi
	imull	%esi, %eax
	imull	-36(%rbp), %eax
	addl	$32603, %eax            # imm = 0x7F5B
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	sarq	$7, %rcx
	addq	-80(%rbp), %rcx
	sarq	$16, %rcx
	movb	%cl, %dil
	movb	%dil, -65(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %r8
	movzbl	(%r8,%rdx), %eax
	movzbl	-65(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdx
	sarq	$8, %rdx
	addq	-80(%rbp), %rdx
	sarq	$8, %rdx
	subq	%rdx, %rcx
	movb	%cl, %dil
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB87_10
.LBB87_16:                              # %while.end.86
	jmp	.LBB87_17
.LBB87_17:                              # %if.end
	popq	%rbp
	retq
.Lfunc_end87:
	.size	erase_inten_pixels, .Lfunc_end87-erase_inten_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	erase_indexed_pixels,@function
erase_indexed_pixels:                   # @erase_indexed_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp272:
	.cfi_def_cfa_offset 16
.Ltmp273:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp274:
	.cfi_def_cfa_register %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB88_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB88_3
.LBB88_2:                               # %cond.false
	movabsq	$no_mask, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB88_3
.LBB88_3:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
.LBB88_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_6 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB88_15
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB88_4 Depth=1
	movl	$0, -80(%rbp)
.LBB88_6:                               # %for.cond
                                        #   Parent Loop BB88_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB88_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB88_6 Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB88_6 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB88_6
.LBB88_9:                               # %for.end
                                        #   in Loop: Header=BB88_4 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx), %esi
	imull	%esi, %eax
	imull	-36(%rbp), %eax
	addl	$32603, %eax            # imm = 0x7F5B
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rcx
	sarq	$7, %rcx
	addq	-88(%rbp), %rcx
	sarq	$16, %rcx
	movb	%cl, %dil
	movb	%dil, -73(%rbp)
	movzbl	-73(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB88_11
# BB#10:                                # %cond.true.15
                                        #   in Loop: Header=BB88_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB88_12
.LBB88_11:                              # %cond.false.16
                                        #   in Loop: Header=BB88_4 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB88_12:                              # %cond.end.20
                                        #   in Loop: Header=BB88_4 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpq	$0, -32(%rbp)
	je	.LBB88_14
# BB#13:                                # %if.then
                                        #   in Loop: Header=BB88_4 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB88_14:                              # %if.end
                                        #   in Loop: Header=BB88_4 Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB88_4
.LBB88_15:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end88:
	.size	erase_indexed_pixels, .Lfunc_end88-erase_indexed_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	anti_erase_inten_pixels,@function
anti_erase_inten_pixels:                # @anti_erase_inten_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp275:
	.cfi_def_cfa_offset 16
.Ltmp276:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp277:
	.cfi_def_cfa_register %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB89_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB89_3
.LBB89_2:                               # %cond.false
	movabsq	$no_mask, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB89_3
.LBB89_3:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
.LBB89_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB89_6 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB89_12
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB89_4 Depth=1
	movl	$0, -76(%rbp)
.LBB89_6:                               # %for.cond
                                        #   Parent Loop BB89_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB89_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB89_6 Depth=2
	movslq	-76(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-76(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB89_6 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB89_6
.LBB89_9:                               # %for.end
                                        #   in Loop: Header=BB89_4 Depth=1
	movl	$255, %eax
	movslq	-60(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movq	-72(%rbp), %rcx
	movzbl	(%rcx), %edi
	imull	%edi, %esi
	imull	-36(%rbp), %esi
	addl	$32603, %esi            # imm = 0x7F5B
	movl	%esi, %esi
	movl	%esi, %ecx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rcx
	sarq	$7, %rcx
	addq	-88(%rbp), %rcx
	sarq	$16, %rcx
	movb	%cl, %r8b
	movb	%r8b, -77(%rbp)
	movslq	-60(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	movslq	-60(%rbp), %rdx
	movq	-8(%rbp), %r9
	movzbl	(%r9,%rdx), %esi
	subl	%esi, %eax
	movzbl	-77(%rbp), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rdx
	sarq	$8, %rdx
	addq	-88(%rbp), %rdx
	sarq	$8, %rdx
	addq	%rdx, %rcx
	movb	%cl, %r8b
	movslq	-60(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movb	%r8b, (%rdx,%rcx)
	cmpq	$0, -32(%rbp)
	je	.LBB89_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB89_4 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB89_11:                              # %if.end
                                        #   in Loop: Header=BB89_4 Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB89_4
.LBB89_12:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end89:
	.size	anti_erase_inten_pixels, .Lfunc_end89-anti_erase_inten_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	anti_erase_indexed_pixels,@function
anti_erase_indexed_pixels:              # @anti_erase_indexed_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp278:
	.cfi_def_cfa_offset 16
.Ltmp279:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp280:
	.cfi_def_cfa_register %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB90_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB90_3
.LBB90_2:                               # %cond.false
	movabsq	$no_mask, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB90_3
.LBB90_3:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
.LBB90_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_6 Depth 2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB90_15
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB90_4 Depth=1
	movl	$0, -76(%rbp)
.LBB90_6:                               # %for.cond
                                        #   Parent Loop BB90_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB90_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB90_6 Depth=2
	movslq	-76(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-76(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB90_6 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB90_6
.LBB90_9:                               # %for.end
                                        #   in Loop: Header=BB90_4 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx), %esi
	imull	%esi, %eax
	imull	-36(%rbp), %eax
	addl	$32603, %eax            # imm = 0x7F5B
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rcx
	sarq	$7, %rcx
	addq	-88(%rbp), %rcx
	sarq	$16, %rcx
	movb	%cl, %dil
	movb	%dil, -77(%rbp)
	movzbl	-77(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB90_11
# BB#10:                                # %cond.true.15
                                        #   in Loop: Header=BB90_4 Depth=1
	movl	$255, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB90_12
.LBB90_11:                              # %cond.false.16
                                        #   in Loop: Header=BB90_4 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB90_12:                              # %cond.end.20
                                        #   in Loop: Header=BB90_4 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpq	$0, -32(%rbp)
	je	.LBB90_14
# BB#13:                                # %if.then
                                        #   in Loop: Header=BB90_4 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB90_14:                              # %if.end
                                        #   in Loop: Header=BB90_4 Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB90_4
.LBB90_15:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end90:
	.size	anti_erase_indexed_pixels, .Lfunc_end90-anti_erase_indexed_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	color_erase_inten_pixels,@function
color_erase_inten_pixels:               # @color_erase_inten_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp281:
	.cfi_def_cfa_offset 16
.Ltmp282:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp283:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp284:
	.cfi_offset %rbx, -32
.Ltmp285:
	.cfi_offset %r14, -24
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movl	%r10d, -68(%rbp)
	movl	%eax, -72(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB91_2
# BB#1:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB91_3
.LBB91_2:                               # %cond.false
	movabsq	$no_mask, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB91_3
.LBB91_3:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
.LBB91_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB91_11
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB91_4 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	je	.LBB91_6
	jmp	.LBB91_12
.LBB91_12:                              # %while.body
                                        #   in Loop: Header=BB91_4 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB91_7
	jmp	.LBB91_8
.LBB91_6:                               # %sw.bb
                                        #   in Loop: Header=BB91_4 Depth=1
	leaq	-160(%rbp), %rdi
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	imull	-52(%rbp), %ecx
	addl	$32603, %ecx            # imm = 0x7F5B
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	sarq	$7, %rax
	addq	-96(%rbp), %rax
	sarq	$16, %rax
	movb	%al, %sil
	movb	%sil, -81(%rbp)
	movq	-24(%rbp), %rax
	movb	(%rax), %sil
	movq	-24(%rbp), %rax
	movb	(%rax), %r8b
	movq	-24(%rbp), %rax
	movb	(%rax), %r9b
	movq	-24(%rbp), %rax
	movzbl	%sil, %esi
	movzbl	%r8b, %edx
	movzbl	%r9b, %ecx
	movzbl	1(%rax), %r8d
	callq	gimp_rgba_set_uchar
	leaq	-128(%rbp), %rdi
	movq	-32(%rbp), %rax
	movb	(%rax), %r9b
	movq	-32(%rbp), %rax
	movb	(%rax), %r10b
	movq	-32(%rbp), %rax
	movb	(%rax), %r11b
	movzbl	%r9b, %esi
	movzbl	%r10b, %edx
	movzbl	%r11b, %ecx
	movzbl	-81(%rbp), %r8d
	callq	gimp_rgba_set_uchar
	leaq	-160(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	callq	paint_funcs_color_erase_helper
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rbx
	addq	$1, %rbx
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rbx, %r8
	callq	gimp_rgba_get_uchar
	jmp	.LBB91_8
.LBB91_7:                               # %sw.bb.17
                                        #   in Loop: Header=BB91_4 Depth=1
	leaq	-160(%rbp), %rdi
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	imull	-52(%rbp), %ecx
	addl	$32603, %ecx            # imm = 0x7F5B
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	sarq	$7, %rax
	addq	-96(%rbp), %rax
	sarq	$16, %rax
	movb	%al, %sil
	movb	%sil, -81(%rbp)
	movq	-24(%rbp), %rax
	movb	(%rax), %sil
	movq	-24(%rbp), %rax
	movb	1(%rax), %r8b
	movq	-24(%rbp), %rax
	movb	2(%rax), %r9b
	movq	-24(%rbp), %rax
	movzbl	%sil, %esi
	movzbl	%r8b, %edx
	movzbl	%r9b, %ecx
	movzbl	3(%rax), %r8d
	callq	gimp_rgba_set_uchar
	leaq	-128(%rbp), %rdi
	movq	-32(%rbp), %rax
	movb	(%rax), %r9b
	movq	-32(%rbp), %rax
	movb	1(%rax), %r10b
	movq	-32(%rbp), %rax
	movb	2(%rax), %r11b
	movzbl	%r9b, %esi
	movzbl	%r10b, %edx
	movzbl	%r11b, %ecx
	movzbl	-81(%rbp), %r8d
	callq	gimp_rgba_set_uchar
	leaq	-160(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	callq	paint_funcs_color_erase_helper
	leaq	-160(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rbx
	addq	$2, %rbx
	movq	-40(%rbp), %r14
	addq	$3, %r14
	movq	%rax, %rdx
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	gimp_rgba_get_uchar
.LBB91_8:                               # %sw.epilog
                                        #   in Loop: Header=BB91_4 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB91_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB91_4 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
.LBB91_10:                              # %if.end
                                        #   in Loop: Header=BB91_4 Depth=1
	movl	-72(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	movl	-72(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB91_4
.LBB91_11:                              # %while.end
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end91:
	.size	color_erase_inten_pixels, .Lfunc_end91-color_erase_inten_pixels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI92_0:
	.quad	4535124824762089472     # double 1.52587890625E-5
.LCPI92_1:
	.quad	4607182418800017408     # double 1
.LCPI92_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	replace_pixels,@function
replace_pixels:                         # @replace_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp286:
	.cfi_def_cfa_offset 16
.Ltmp287:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp288:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movq	16(%rbp), %r11
	movsd	.LCPI92_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	%r11, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-40(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.LBB92_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB92_50
.LBB92_2:                               # %if.end
	jmp	.LBB92_3
.LBB92_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB92_7 Depth 2
                                        #     Child Loop BB92_19 Depth 2
                                        #     Child Loop BB92_25 Depth 2
                                        #     Child Loop BB92_36 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB92_50
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB92_3 Depth=1
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	-72(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	movslq	-60(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	%ecx, -92(%rbp)
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	%ecx, -96(%rbp)
	cvtsi2sdl	-92(%rbp), %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	-96(%rbp), %ecx
	subl	-92(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB92_35
	jp	.LBB92_35
# BB#5:                                 # %if.then.16
                                        #   in Loop: Header=BB92_3 Depth=1
	xorps	%xmm0, %xmm0
	movl	-92(%rbp), %eax
	addl	-96(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB92_17
	jp	.LBB92_17
# BB#6:                                 # %if.then.21
                                        #   in Loop: Header=BB92_3 Depth=1
	movl	$0, -76(%rbp)
.LBB92_7:                               # %for.cond
                                        #   Parent Loop BB92_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB92_16
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB92_7 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI92_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -108(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB92_13
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB92_7 Depth=2
	cmpl	$255, -108(%rbp)
	jge	.LBB92_11
# BB#10:                                # %cond.true.43
                                        #   in Loop: Header=BB92_7 Depth=2
	movl	-108(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB92_12
.LBB92_11:                              # %cond.false
                                        #   in Loop: Header=BB92_7 Depth=2
	movl	$255, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB92_12
.LBB92_12:                              # %cond.end
                                        #   in Loop: Header=BB92_7 Depth=2
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB92_14
.LBB92_13:                              # %cond.false.44
                                        #   in Loop: Header=BB92_7 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB92_14:                              # %cond.end.48
                                        #   in Loop: Header=BB92_7 Depth=2
	movl	-132(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB92_7 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB92_7
.LBB92_16:                              # %for.end
                                        #   in Loop: Header=BB92_3 Depth=1
	jmp	.LBB92_34
.LBB92_17:                              # %if.else
                                        #   in Loop: Header=BB92_3 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-92(%rbp), %xmm1
	addsd	-88(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB92_23
	jp	.LBB92_23
# BB#18:                                # %if.then.57
                                        #   in Loop: Header=BB92_3 Depth=1
	movl	$0, -76(%rbp)
.LBB92_19:                              # %for.cond.58
                                        #   Parent Loop BB92_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB92_22
# BB#20:                                # %for.body.61
                                        #   in Loop: Header=BB92_19 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#21:                                # %for.inc.66
                                        #   in Loop: Header=BB92_19 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB92_19
.LBB92_22:                              # %for.end.68
                                        #   in Loop: Header=BB92_3 Depth=1
	jmp	.LBB92_33
.LBB92_23:                              # %if.else.69
                                        #   in Loop: Header=BB92_3 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI92_1, %xmm1        # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	cvtsi2sdl	-96(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB92_32
	jp	.LBB92_32
# BB#24:                                # %if.then.75
                                        #   in Loop: Header=BB92_3 Depth=1
	movl	$0, -76(%rbp)
.LBB92_25:                              # %for.cond.76
                                        #   Parent Loop BB92_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB92_31
# BB#26:                                # %for.body.79
                                        #   in Loop: Header=BB92_25 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB92_28
# BB#27:                                # %cond.true.83
                                        #   in Loop: Header=BB92_25 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB92_29
.LBB92_28:                              # %cond.false.87
                                        #   in Loop: Header=BB92_25 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB92_29:                              # %cond.end.91
                                        #   in Loop: Header=BB92_25 Depth=2
	movl	-136(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#30:                                # %for.inc.96
                                        #   in Loop: Header=BB92_25 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB92_25
.LBB92_31:                              # %for.end.98
                                        #   in Loop: Header=BB92_3 Depth=1
	jmp	.LBB92_32
.LBB92_32:                              # %if.end.99
                                        #   in Loop: Header=BB92_3 Depth=1
	jmp	.LBB92_33
.LBB92_33:                              # %if.end.100
                                        #   in Loop: Header=BB92_3 Depth=1
	jmp	.LBB92_34
.LBB92_34:                              # %if.end.101
                                        #   in Loop: Header=BB92_3 Depth=1
	jmp	.LBB92_46
.LBB92_35:                              # %if.else.102
                                        #   in Loop: Header=BB92_3 Depth=1
	movsd	.LCPI92_1, %xmm0        # xmm0 = mem[0],zero
	divsd	-104(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	$0, -76(%rbp)
.LBB92_36:                              # %for.cond.103
                                        #   Parent Loop BB92_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB92_45
# BB#37:                                # %for.body.106
                                        #   in Loop: Header=BB92_36 Depth=2
	movsd	.LCPI92_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	-96(%rbp), %eax
	movl	-76(%rbp), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	-92(%rbp), %esi
	subl	%esi, %eax
	cvtsi2sdl	%eax, %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -124(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB92_42
# BB#38:                                # %cond.true.131
                                        #   in Loop: Header=BB92_36 Depth=2
	cmpl	$255, -124(%rbp)
	jge	.LBB92_40
# BB#39:                                # %cond.true.134
                                        #   in Loop: Header=BB92_36 Depth=2
	movl	-124(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB92_41
.LBB92_40:                              # %cond.false.135
                                        #   in Loop: Header=BB92_36 Depth=2
	movl	$255, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB92_41
.LBB92_41:                              # %cond.end.136
                                        #   in Loop: Header=BB92_36 Depth=2
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB92_43
.LBB92_42:                              # %cond.false.138
                                        #   in Loop: Header=BB92_36 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB92_43:                              # %cond.end.142
                                        #   in Loop: Header=BB92_36 Depth=2
	movl	-144(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#44:                                # %for.inc.147
                                        #   in Loop: Header=BB92_36 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB92_36
.LBB92_45:                              # %for.end.149
                                        #   in Loop: Header=BB92_3 Depth=1
	jmp	.LBB92_46
.LBB92_46:                              # %if.end.150
                                        #   in Loop: Header=BB92_3 Depth=1
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB92_48
# BB#47:                                # %cond.true.154
                                        #   in Loop: Header=BB92_3 Depth=1
	movsd	.LCPI92_2, %xmm0        # xmm0 = mem[0],zero
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB92_49
.LBB92_48:                              # %cond.false.156
                                        #   in Loop: Header=BB92_3 Depth=1
	cvtsi2sdl	-92(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB92_49:                              # %cond.end.158
                                        #   in Loop: Header=BB92_3 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-60(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	jmp	.LBB92_3
.LBB92_50:                              # %while.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	replace_pixels, .Lfunc_end92-replace_pixels
	.cfi_endproc

	.type	no_mask,@object         # @no_mask
	.section	.rodata,"a",@progbits
no_mask:
	.byte	255                     # 0xff
	.size	no_mask, 1

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"border_region: negative radius specified."
	.size	.L.str, 42

	.type	layer_modes,@object     # @layer_modes
	.section	.rodata,"a",@progbits
	.align	16
layer_modes:
	.byte	3                       # 0x3
	.zero	3
	.byte	3                       # 0x3
	.zero	3
	.byte	3                       # 0x3
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.byte	5                       # 0x5
	.zero	3
	.byte	5                       # 0x5
	.zero	3
	.byte	7                       # 0x7
	.zero	3
	.byte	3                       # 0x3
	.zero	3
	.size	layer_modes, 104

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Paint-Funcs"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"combine_sub_region: unhandled combine-type."
	.size	.L.str.2, 44

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"NO_COMBINATION"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"UNKNOWN COMBINATION: %d"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"replace_pixels only works on commensurate pixel regions"
	.size	.L.str.5, 56


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
