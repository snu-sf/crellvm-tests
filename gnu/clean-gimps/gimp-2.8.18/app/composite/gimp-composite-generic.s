	.text
	.file	"gimp-composite-generic.bc"
	.globl	gimp_composite_convert_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_convert_any_any_any_generic,@function
gimp_composite_convert_any_any_any_generic: # @gimp_composite_convert_any_any_any_generic
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	48(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jae	.LBB0_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -16(%rbp)
.LBB0_3:                                # %for.cond.8
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_6
# BB#4:                                 # %for.body.11
                                        #   in Loop: Header=BB0_3 Depth=2
	movslq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
# BB#7:                                 # %for.inc.20
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_8:                                # %for.end.22
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_composite_convert_any_any_any_generic, .Lfunc_end0-gimp_composite_convert_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_color_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_color_any_any_any_generic,@function
gimp_composite_color_any_any_any_generic: # @gimp_composite_color_any_any_any_generic
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	decl	%ecx
	movl	%ecx, %esi
	subl	$3, %ecx
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	ja	.LBB1_14
# BB#19:                                # %entry
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movb	%cl, %dl
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	movzbl	%dl, %esi
	movq	%rax, %rdx
	callq	memset
	jmp	.LBB1_18
.LBB1_2:                                # %sw.bb.2
	movq	-16(%rbp), %rax
	movw	(%rax), %cx
	movw	%cx, -58(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB1_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movw	-58(%rbp), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-56(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB1_3
.LBB1_5:                                # %while.end
	jmp	.LBB1_18
.LBB1_6:                                # %sw.bb.3
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -25(%rbp)
	movq	-16(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -26(%rbp)
	movq	-16(%rbp), %rax
	movb	2(%rax), %cl
	movb	%cl, -27(%rbp)
.LBB1_7:                                # %while.cond.7
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB1_9
# BB#8:                                 # %while.body.10
                                        #   in Loop: Header=BB1_7 Depth=1
	movb	-25(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-26(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-27(%rbp), %al
	movq	-8(%rbp), %rcx
	movb	%al, 2(%rcx)
	movq	-8(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB1_7
.LBB1_9:                                # %while.end.14
	jmp	.LBB1_18
.LBB1_10:                               # %sw.bb.15
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB1_11:                               # %while.cond.17
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB1_13
# BB#12:                                # %while.body.20
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB1_11
.LBB1_13:                               # %while.end.22
	jmp	.LBB1_18
.LBB1_14:                               # %sw.default
	jmp	.LBB1_15
.LBB1_15:                               # %while.cond.23
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB1_17
# BB#16:                                # %while.body.26
                                        #   in Loop: Header=BB1_15 Depth=1
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
	jmp	.LBB1_15
.LBB1_17:                               # %while.end.29
	jmp	.LBB1_18
.LBB1_18:                               # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_composite_color_any_any_any_generic, .Lfunc_end1-gimp_composite_color_any_any_any_generic
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_1
	.quad	.LBB1_2
	.quad	.LBB1_6
	.quad	.LBB1_10

	.text
	.globl	gimp_composite_blend_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_blend_any_any_any_generic,@function
gimp_composite_blend_any_any_any_generic: # @gimp_composite_blend_any_any_any_generic
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
	movl	$255, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	68(%rdi), %ecx
	movb	%cl, %dl
	movb	%dl, -33(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %ecx
	movl	%ecx, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %ecx
	movl	%ecx, -44(%rbp)
	movzbl	-33(%rbp), %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -49(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB2_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -48(%rbp)
.LBB2_3:                                # %for.cond
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jae	.LBB2_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	$255, %eax
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movzbl	-49(%rbp), %edi
	imull	%edi, %ecx
	movl	-48(%rbp), %edi
	movl	%edi, %edx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	movzbl	-33(%rbp), %r8d
	imull	%r8d, %edi
	addl	%edi, %ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-56(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movb	%al, %r9b
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	-32(%rbp), %r10
	movb	%r9b, (%r10,%rsi)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_3
.LBB2_6:                                # %for.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB2_1
.LBB2_7:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_composite_blend_any_any_any_generic, .Lfunc_end2-gimp_composite_blend_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_darken_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_darken_any_any_any_generic,@function
gimp_composite_darken_any_any_any_generic: # @gimp_composite_darken_any_any_any_generic
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB3_6
.LBB3_2:                                # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB3_4
# BB#3:                                 # %cond.true.9
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB3_5:                                # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB3_7
.LBB3_6:                                # %cond.false.10
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB3_7:                                # %cond.end.11
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB3_8:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB3_26
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	$0, -60(%rbp)
.LBB3_10:                               # %for.cond
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB3_16
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -61(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -62(%rbp)
	movzbl	-61(%rbp), %eax
	movzbl	-62(%rbp), %edi
	cmpl	%edi, %eax
	jge	.LBB3_13
# BB#12:                                # %cond.true.24
                                        #   in Loop: Header=BB3_10 Depth=2
	movzbl	-61(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB3_14
.LBB3_13:                               # %cond.false.26
                                        #   in Loop: Header=BB3_10 Depth=2
	movzbl	-62(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB3_14:                               # %cond.end.28
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB3_10
.LBB3_16:                               # %for.end
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB3_22
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB3_22
# BB#18:                                # %if.then
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB3_20
# BB#19:                                # %cond.true.43
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB3_21
.LBB3_20:                               # %cond.false.47
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB3_21:                               # %cond.end.51
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB3_25
.LBB3_22:                               # %if.else
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB3_24
# BB#23:                                # %if.then.57
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB3_24:                               # %if.end
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_25
.LBB3_25:                               # %if.end.62
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB3_8
.LBB3_26:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_composite_darken_any_any_any_generic, .Lfunc_end3-gimp_composite_darken_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_lighten_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_lighten_any_any_any_generic,@function
gimp_composite_lighten_any_any_any_generic: # @gimp_composite_lighten_any_any_any_generic
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB4_6
.LBB4_2:                                # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB4_4
# BB#3:                                 # %cond.true.9
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB4_5:                                # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false.10
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB4_7:                                # %cond.end.11
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB4_8:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB4_26
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	$0, -60(%rbp)
.LBB4_10:                               # %for.cond
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB4_16
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -61(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -62(%rbp)
	movzbl	-61(%rbp), %eax
	movzbl	-62(%rbp), %edi
	cmpl	%edi, %eax
	jge	.LBB4_13
# BB#12:                                # %cond.true.24
                                        #   in Loop: Header=BB4_10 Depth=2
	movzbl	-62(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false.26
                                        #   in Loop: Header=BB4_10 Depth=2
	movzbl	-61(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB4_14:                               # %cond.end.28
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB4_10
.LBB4_16:                               # %for.end
                                        #   in Loop: Header=BB4_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB4_22
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB4_22
# BB#18:                                # %if.then
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB4_20
# BB#19:                                # %cond.true.43
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB4_21
.LBB4_20:                               # %cond.false.47
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB4_21:                               # %cond.end.51
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB4_25
.LBB4_22:                               # %if.else
                                        #   in Loop: Header=BB4_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB4_24
# BB#23:                                # %if.then.57
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB4_24:                               # %if.end
                                        #   in Loop: Header=BB4_8 Depth=1
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.62
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB4_8
.LBB4_26:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_composite_lighten_any_any_any_generic, .Lfunc_end4-gimp_composite_lighten_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_hue_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_hue_any_any_any_generic,@function
gimp_composite_hue_any_any_any_generic: # @gimp_composite_hue_any_any_any_generic
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$2, -40(%rbp)
	jbe	.LBB5_16
# BB#1:                                 # %if.then
	jmp	.LBB5_2
.LBB5_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB5_15
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB5_2 Depth=1
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -76(%rbp)
	callq	gimp_rgb_to_hsv_int
	leaq	-68(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	callq	gimp_rgb_to_hsv_int
	cmpl	$0, -72(%rbp)
	je	.LBB5_5
# BB#4:                                 # %if.then.21
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB5_5:                                # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	callq	gimp_hsv_to_rgb_int
	movl	-56(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-64(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, 2(%rdx)
	cmpl	$0, -48(%rbp)
	je	.LBB5_11
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB5_11
# BB#7:                                 # %if.then.30
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB5_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB5_10:                               # %cond.end
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, 3(%rdx)
	jmp	.LBB5_14
.LBB5_11:                               # %if.else
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB5_13
# BB#12:                                # %if.then.44
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-24(%rbp), %rax
	movb	3(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB5_13:                               # %if.end.47
                                        #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_14
.LBB5_14:                               # %if.end.48
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB5_2
.LBB5_15:                               # %while.end
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.53
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB5_17:                               # %if.end.56
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_composite_hue_any_any_any_generic, .Lfunc_end5-gimp_composite_hue_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_saturation_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_saturation_any_any_any_generic,@function
gimp_composite_saturation_any_any_any_generic: # @gimp_composite_saturation_any_any_any_generic
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$2, -40(%rbp)
	jbe	.LBB6_14
# BB#1:                                 # %if.then
	jmp	.LBB6_2
.LBB6_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB6_13
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB6_2 Depth=1
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -76(%rbp)
	callq	gimp_rgb_to_hsv_int
	leaq	-68(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	callq	gimp_rgb_to_hsv_int
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	callq	gimp_hsv_to_rgb_int
	movl	-56(%rbp), %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rax
	movb	%r8b, (%rax)
	movl	-60(%rbp), %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rax
	movb	%r8b, 1(%rax)
	movl	-64(%rbp), %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rax
	movb	%r8b, 2(%rax)
	cmpl	$0, -48(%rbp)
	je	.LBB6_9
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB6_9
# BB#5:                                 # %if.then.28
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB6_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB6_8:                                # %cond.end
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, 3(%rdx)
	jmp	.LBB6_12
.LBB6_9:                                # %if.else
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB6_11
# BB#10:                                # %if.then.42
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-24(%rbp), %rax
	movb	3(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB6_11:                               # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	jmp	.LBB6_12
.LBB6_12:                               # %if.end.45
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB6_2
.LBB6_13:                               # %while.end
	jmp	.LBB6_15
.LBB6_14:                               # %if.else.50
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB6_15:                               # %if.end.53
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_composite_saturation_any_any_any_generic, .Lfunc_end6-gimp_composite_saturation_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_value_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_value_any_any_any_generic,@function
gimp_composite_value_any_any_any_generic: # @gimp_composite_value_any_any_any_generic
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$2, -40(%rbp)
	jbe	.LBB7_14
# BB#1:                                 # %if.then
	jmp	.LBB7_2
.LBB7_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB7_13
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB7_2 Depth=1
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -76(%rbp)
	callq	gimp_rgb_to_hsv_int
	leaq	-68(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	callq	gimp_rgb_to_hsv_int
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	callq	gimp_hsv_to_rgb_int
	movl	-56(%rbp), %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rax
	movb	%r8b, (%rax)
	movl	-60(%rbp), %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rax
	movb	%r8b, 1(%rax)
	movl	-64(%rbp), %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rax
	movb	%r8b, 2(%rax)
	cmpl	$0, -48(%rbp)
	je	.LBB7_9
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_2 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB7_9
# BB#5:                                 # %if.then.28
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB7_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB7_8:                                # %cond.end
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, 3(%rdx)
	jmp	.LBB7_12
.LBB7_9:                                # %if.else
                                        #   in Loop: Header=BB7_2 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB7_11
# BB#10:                                # %if.then.42
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-24(%rbp), %rax
	movb	3(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB7_11:                               # %if.end
                                        #   in Loop: Header=BB7_2 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.45
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB7_2
.LBB7_13:                               # %while.end
	jmp	.LBB7_15
.LBB7_14:                               # %if.else.50
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB7_15:                               # %if.end.53
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_composite_value_any_any_any_generic, .Lfunc_end7-gimp_composite_value_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_color_only_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_color_only_any_any_any_generic,@function
gimp_composite_color_only_any_any_any_generic: # @gimp_composite_color_only_any_any_any_generic
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$2, -40(%rbp)
	jbe	.LBB8_14
# BB#1:                                 # %if.then
	jmp	.LBB8_2
.LBB8_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB8_13
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -76(%rbp)
	callq	gimp_rgb_to_hsl_int
	leaq	-68(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	callq	gimp_rgb_to_hsl_int
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-72(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	callq	gimp_hsl_to_rgb_int
	movl	-56(%rbp), %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rax
	movb	%r8b, (%rax)
	movl	-60(%rbp), %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rax
	movb	%r8b, 1(%rax)
	movl	-64(%rbp), %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rax
	movb	%r8b, 2(%rax)
	cmpl	$0, -48(%rbp)
	je	.LBB8_9
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB8_9
# BB#5:                                 # %if.then.28
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB8_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB8_8:                                # %cond.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, 3(%rdx)
	jmp	.LBB8_12
.LBB8_9:                                # %if.else
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB8_11
# BB#10:                                # %if.then.42
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-24(%rbp), %rax
	movb	3(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB8_11:                               # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	jmp	.LBB8_12
.LBB8_12:                               # %if.end.45
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB8_2
.LBB8_13:                               # %while.end
	jmp	.LBB8_15
.LBB8_14:                               # %if.else.50
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB8_15:                               # %if.end.53
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_composite_color_only_any_any_any_generic, .Lfunc_end8-gimp_composite_color_only_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_behind_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_behind_any_any_any_generic,@function
gimp_composite_behind_any_any_any_generic: # @gimp_composite_behind_any_any_any_generic
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
	xorl	%eax, %eax
	movl	$12, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, 16(%rdx)
	movq	-8(%rbp), %rdx
	movl	40(%rdx), %esi
	movl	%esi, %edx
	movzbl	gimp_composite_pixel_alphap(,%rdx), %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 84(%rdx)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_composite_behind_any_any_any_generic, .Lfunc_end9-gimp_composite_behind_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_multiply_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_multiply_any_any_any_generic,@function
gimp_composite_multiply_any_any_any_generic: # @gimp_composite_multiply_any_any_any_generic
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB10_6
.LBB10_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB10_4
# BB#3:                                 # %cond.true.9
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB10_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB10_7
.LBB10_6:                               # %cond.false.10
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB10_7:                               # %cond.end.11
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_20
# BB#8:                                 # %land.lhs.true
	cmpl	$0, -52(%rbp)
	je	.LBB10_20
# BB#9:                                 # %if.then
	jmp	.LBB10_10
.LBB10_10:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_12 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB10_19
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	$0, -60(%rbp)
.LBB10_12:                              # %for.cond
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB10_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB10_12 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	shrl	$8, %eax
	addl	-64(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB10_12 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB10_12
.LBB10_15:                              # %for.end
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB10_17
# BB#16:                                # %cond.true.37
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB10_18
.LBB10_17:                              # %cond.false.41
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB10_18:                              # %cond.end.45
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	jmp	.LBB10_10
.LBB10_19:                              # %while.end
	jmp	.LBB10_38
.LBB10_20:                              # %if.else
	cmpl	$0, -52(%rbp)
	je	.LBB10_29
# BB#21:                                # %if.then.55
	jmp	.LBB10_22
.LBB10_22:                              # %while.cond.56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_24 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB10_28
# BB#23:                                # %while.body.59
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	$0, -60(%rbp)
.LBB10_24:                              # %for.cond.60
                                        #   Parent Loop BB10_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB10_27
# BB#25:                                # %for.body.63
                                        #   in Loop: Header=BB10_24 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	shrl	$8, %eax
	addl	-64(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#26:                                # %for.inc.78
                                        #   in Loop: Header=BB10_24 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB10_24
.LBB10_27:                              # %for.end.80
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB10_22
.LBB10_28:                              # %while.end.91
	jmp	.LBB10_37
.LBB10_29:                              # %if.else.92
	jmp	.LBB10_30
.LBB10_30:                              # %while.cond.93
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_32 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB10_36
# BB#31:                                # %while.body.96
                                        #   in Loop: Header=BB10_30 Depth=1
	movl	$0, -60(%rbp)
.LBB10_32:                              # %for.cond.97
                                        #   Parent Loop BB10_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB10_35
# BB#33:                                # %for.body.100
                                        #   in Loop: Header=BB10_32 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	%esi, %eax
	addl	$128, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	shrl	$8, %eax
	addl	-64(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#34:                                # %for.inc.115
                                        #   in Loop: Header=BB10_32 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB10_32
.LBB10_35:                              # %for.end.117
                                        #   in Loop: Header=BB10_30 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB10_30
.LBB10_36:                              # %while.end.124
	jmp	.LBB10_37
.LBB10_37:                              # %if.end
	jmp	.LBB10_38
.LBB10_38:                              # %if.end.125
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_composite_multiply_any_any_any_generic, .Lfunc_end10-gimp_composite_multiply_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_divide_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_divide_any_any_any_generic,@function
gimp_composite_divide_any_any_any_generic: # @gimp_composite_divide_any_any_any_generic
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB11_6
.LBB11_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB11_4
# BB#3:                                 # %cond.true.9
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB11_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB11_7
.LBB11_6:                               # %cond.false.10
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB11_7:                               # %cond.end.11
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB11_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB11_26
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB11_8 Depth=1
	movl	$0, -60(%rbp)
.LBB11_10:                              # %for.cond
                                        #   Parent Loop BB11_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB11_16
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	shll	$8, %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	$1, %esi
	cltd
	idivl	%esi
	movl	%eax, -64(%rbp)
	cmpl	$255, -64(%rbp)
	jae	.LBB11_13
# BB#12:                                # %cond.true.24
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB11_14
.LBB11_13:                              # %cond.false.25
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	$255, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB11_14
.LBB11_14:                              # %cond.end.26
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB11_10
.LBB11_16:                              # %for.end
                                        #   in Loop: Header=BB11_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB11_22
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB11_22
# BB#18:                                # %if.then
                                        #   in Loop: Header=BB11_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB11_20
# BB#19:                                # %cond.true.41
                                        #   in Loop: Header=BB11_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB11_21
.LBB11_20:                              # %cond.false.45
                                        #   in Loop: Header=BB11_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB11_21:                              # %cond.end.49
                                        #   in Loop: Header=BB11_8 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB11_25
.LBB11_22:                              # %if.else
                                        #   in Loop: Header=BB11_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB11_24
# BB#23:                                # %if.then.55
                                        #   in Loop: Header=BB11_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB11_24:                              # %if.end
                                        #   in Loop: Header=BB11_8 Depth=1
	jmp	.LBB11_25
.LBB11_25:                              # %if.end.60
                                        #   in Loop: Header=BB11_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB11_8
.LBB11_26:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_composite_divide_any_any_any_generic, .Lfunc_end11-gimp_composite_divide_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_screen_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_screen_any_any_any_generic,@function
gimp_composite_screen_any_any_any_generic: # @gimp_composite_screen_any_any_any_generic
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB12_6
.LBB12_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB12_4
# BB#3:                                 # %cond.true.9
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB12_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB12_7
.LBB12_6:                               # %cond.false.10
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB12_7:                               # %cond.end.11
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB12_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB12_23
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB12_8 Depth=1
	movl	$0, -60(%rbp)
.LBB12_10:                              # %for.cond
                                        #   Parent Loop BB12_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB12_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB12_10 Depth=2
	movl	$255, %eax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %edi
	subl	%ecx, %edi
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %r8d
	subl	%ecx, %r8d
	imull	%r8d, %edi
	addl	$128, %edi
	movl	%edi, -64(%rbp)
	movl	-64(%rbp), %ecx
	shrl	$8, %ecx
	addl	-64(%rbp), %ecx
	shrl	$8, %ecx
	subl	%ecx, %eax
	movb	%al, %r9b
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%r9b, (%rsi,%rdx)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB12_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB12_10
.LBB12_13:                              # %for.end
                                        #   in Loop: Header=BB12_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB12_19
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB12_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB12_19
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB12_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB12_17
# BB#16:                                # %cond.true.40
                                        #   in Loop: Header=BB12_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB12_18
.LBB12_17:                              # %cond.false.44
                                        #   in Loop: Header=BB12_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB12_18:                              # %cond.end.48
                                        #   in Loop: Header=BB12_8 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB12_22
.LBB12_19:                              # %if.else
                                        #   in Loop: Header=BB12_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB12_21
# BB#20:                                # %if.then.54
                                        #   in Loop: Header=BB12_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB12_21:                              # %if.end
                                        #   in Loop: Header=BB12_8 Depth=1
	jmp	.LBB12_22
.LBB12_22:                              # %if.end.59
                                        #   in Loop: Header=BB12_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB12_8
.LBB12_23:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_composite_screen_any_any_any_generic, .Lfunc_end12-gimp_composite_screen_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_overlay_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_overlay_any_any_any_generic,@function
gimp_composite_overlay_any_any_any_generic: # @gimp_composite_overlay_any_any_any_generic
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB13_6
.LBB13_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB13_4
# BB#3:                                 # %cond.true.9
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB13_5
.LBB13_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB13_5:                               # %cond.end
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB13_7
.LBB13_6:                               # %cond.false.10
	movl	-40(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB13_7:                               # %cond.end.11
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB13_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB13_23
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	$0, -60(%rbp)
.LBB13_10:                              # %for.cond
                                        #   Parent Loop BB13_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB13_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB13_10 Depth=2
	movl	$255, %eax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-60(%rbp), %edi
	movl	%edi, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	movl	-60(%rbp), %r8d
	movl	%r8d, %edx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %r8d
	shll	$1, %r8d
	movl	-60(%rbp), %r9d
	movl	%r9d, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %r9d
	subl	%r9d, %eax
	imull	%eax, %r8d
	addl	$128, %r8d
	movl	%r8d, -68(%rbp)
	movl	-68(%rbp), %eax
	shrl	$8, %eax
	addl	-68(%rbp), %eax
	shrl	$8, %eax
	addl	%eax, %edi
	imull	%edi, %ecx
	addl	$128, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %eax
	shrl	$8, %eax
	addl	-64(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %r10b
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%r10b, (%rsi,%rdx)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB13_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB13_10
.LBB13_13:                              # %for.end
                                        #   in Loop: Header=BB13_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB13_19
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB13_19
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB13_17
# BB#16:                                # %cond.true.52
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB13_18
.LBB13_17:                              # %cond.false.56
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB13_18:                              # %cond.end.60
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB13_22
.LBB13_19:                              # %if.else
                                        #   in Loop: Header=BB13_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB13_21
# BB#20:                                # %if.then.66
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB13_21:                              # %if.end
                                        #   in Loop: Header=BB13_8 Depth=1
	jmp	.LBB13_22
.LBB13_22:                              # %if.end.71
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB13_8
.LBB13_23:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_composite_overlay_any_any_any_generic, .Lfunc_end13-gimp_composite_overlay_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_dodge_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_dodge_any_any_any_generic,@function
gimp_composite_dodge_any_any_any_generic: # @gimp_composite_dodge_any_any_any_generic
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB14_6
.LBB14_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB14_4
# BB#3:                                 # %cond.true.9
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB14_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB14_7
.LBB14_6:                               # %cond.false.10
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB14_7:                               # %cond.end.11
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB14_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB14_26
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB14_8 Depth=1
	movl	$0, -60(%rbp)
.LBB14_10:                              # %for.cond
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB14_16
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB14_10 Depth=2
	movl	$256, %eax              # imm = 0x100
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$8, %ecx
	movl	%ecx, -64(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	subl	%ecx, %eax
	movl	-64(%rbp), %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	movl	%eax, -64(%rbp)
	cmpl	$255, -64(%rbp)
	jae	.LBB14_13
# BB#12:                                # %cond.true.25
                                        #   in Loop: Header=BB14_10 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB14_14
.LBB14_13:                              # %cond.false.26
                                        #   in Loop: Header=BB14_10 Depth=2
	movl	$255, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB14_14
.LBB14_14:                              # %cond.end.27
                                        #   in Loop: Header=BB14_10 Depth=2
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB14_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB14_10
.LBB14_16:                              # %for.end
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB14_22
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB14_22
# BB#18:                                # %if.then
                                        #   in Loop: Header=BB14_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB14_20
# BB#19:                                # %cond.true.42
                                        #   in Loop: Header=BB14_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB14_21
.LBB14_20:                              # %cond.false.46
                                        #   in Loop: Header=BB14_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB14_21:                              # %cond.end.50
                                        #   in Loop: Header=BB14_8 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB14_25
.LBB14_22:                              # %if.else
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB14_24
# BB#23:                                # %if.then.56
                                        #   in Loop: Header=BB14_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB14_24:                              # %if.end
                                        #   in Loop: Header=BB14_8 Depth=1
	jmp	.LBB14_25
.LBB14_25:                              # %if.end.61
                                        #   in Loop: Header=BB14_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB14_8
.LBB14_26:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_composite_dodge_any_any_any_generic, .Lfunc_end14-gimp_composite_dodge_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_burn_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_burn_any_any_any_generic,@function
gimp_composite_burn_any_any_any_generic: # @gimp_composite_burn_any_any_any_generic
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB15_6
.LBB15_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB15_4
# BB#3:                                 # %cond.true.9
	movl	-40(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB15_5:                               # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB15_7
.LBB15_6:                               # %cond.false.10
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB15_7:                               # %cond.end.11
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB15_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB15_23
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	$0, -60(%rbp)
.LBB15_10:                              # %for.cond
                                        #   Parent Loop BB15_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB15_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB15_10 Depth=2
	movabsq	$burn_lut, %rax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	movl	-60(%rbp), %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %ecx
	movl	%ecx, %esi
	shlq	$8, %rsi
	addq	%rsi, %rax
	movb	(%rax,%rdx), %r8b
	movl	-60(%rbp), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movb	%r8b, (%rdx,%rax)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB15_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB15_10
.LBB15_13:                              # %for.end
                                        #   in Loop: Header=BB15_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB15_19
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB15_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB15_19
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB15_17
# BB#16:                                # %cond.true.36
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB15_18
.LBB15_17:                              # %cond.false.40
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB15_18:                              # %cond.end.44
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB15_22
.LBB15_19:                              # %if.else
                                        #   in Loop: Header=BB15_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB15_21
# BB#20:                                # %if.then.50
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB15_21:                              # %if.end
                                        #   in Loop: Header=BB15_8 Depth=1
	jmp	.LBB15_22
.LBB15_22:                              # %if.end.55
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB15_8
.LBB15_23:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_composite_burn_any_any_any_generic, .Lfunc_end15-gimp_composite_burn_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_hardlight_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_hardlight_any_any_any_generic,@function
gimp_composite_hardlight_any_any_any_generic: # @gimp_composite_hardlight_any_any_any_generic
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB16_6
.LBB16_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB16_4
# BB#3:                                 # %cond.true.9
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB16_5
.LBB16_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB16_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB16_7
.LBB16_6:                               # %cond.false.10
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB16_7:                               # %cond.end.11
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB16_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB16_32
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB16_8 Depth=1
	movl	$0, -60(%rbp)
.LBB16_10:                              # %for.cond
                                        #   Parent Loop BB16_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB16_22
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jle	.LBB16_16
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	$255, %eax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %edi
	subl	%ecx, %edi
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	subl	$128, %ecx
	shll	$1, %ecx
	movl	%eax, %r8d
	subl	%ecx, %r8d
	imull	%r8d, %edi
	movl	%edi, -64(%rbp)
	movl	-64(%rbp), %ecx
	shrl	$8, %ecx
	subl	%ecx, %eax
	cmpl	$255, %eax
	jae	.LBB16_14
# BB#13:                                # %cond.true.33
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	$255, %eax
	movl	-64(%rbp), %ecx
	shrl	$8, %ecx
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB16_15
.LBB16_14:                              # %cond.false.36
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	$255, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB16_15
.LBB16_15:                              # %cond.end.37
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB16_20
.LBB16_16:                              # %if.else
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	shll	$1, %esi
	imull	%esi, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	shrl	$8, %eax
	cmpl	$255, %eax
	jae	.LBB16_18
# BB#17:                                # %cond.true.53
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	-64(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB16_19
.LBB16_18:                              # %cond.false.55
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	$255, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB16_19
.LBB16_19:                              # %cond.end.56
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB16_20:                              # %if.end
                                        #   in Loop: Header=BB16_10 Depth=2
	jmp	.LBB16_21
.LBB16_21:                              # %for.inc
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB16_10
.LBB16_22:                              # %for.end
                                        #   in Loop: Header=BB16_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB16_28
# BB#23:                                # %land.lhs.true
                                        #   in Loop: Header=BB16_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB16_28
# BB#24:                                # %if.then.63
                                        #   in Loop: Header=BB16_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB16_26
# BB#25:                                # %cond.true.72
                                        #   in Loop: Header=BB16_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB16_27
.LBB16_26:                              # %cond.false.76
                                        #   in Loop: Header=BB16_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB16_27:                              # %cond.end.80
                                        #   in Loop: Header=BB16_8 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB16_31
.LBB16_28:                              # %if.else.85
                                        #   in Loop: Header=BB16_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB16_30
# BB#29:                                # %if.then.87
                                        #   in Loop: Header=BB16_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB16_30:                              # %if.end.92
                                        #   in Loop: Header=BB16_8 Depth=1
	jmp	.LBB16_31
.LBB16_31:                              # %if.end.93
                                        #   in Loop: Header=BB16_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB16_8
.LBB16_32:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_composite_hardlight_any_any_any_generic, .Lfunc_end16-gimp_composite_hardlight_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_softlight_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_softlight_any_any_any_generic,@function
gimp_composite_softlight_any_any_any_generic: # @gimp_composite_softlight_any_any_any_generic
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB17_6
.LBB17_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB17_4
# BB#3:                                 # %cond.true.15
	movl	-40(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB17_5:                               # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB17_7
.LBB17_6:                               # %cond.false.16
	movl	-40(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB17_7:                               # %cond.end.17
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB17_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB17_23
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB17_8 Depth=1
	movl	$0, -60(%rbp)
.LBB17_10:                              # %for.cond
                                        #   Parent Loop BB17_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB17_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB17_10 Depth=2
	movl	$255, %eax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-60(%rbp), %edi
	movl	%edi, %edx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	%edi, %ecx
	addl	$128, %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %ecx
	shrl	$8, %ecx
	addl	-68(%rbp), %ecx
	shrl	$8, %ecx
	movl	%ecx, -68(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %edi
	subl	%ecx, %edi
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %r8d
	subl	%ecx, %r8d
	imull	%r8d, %edi
	addl	$128, %edi
	movl	%edi, -72(%rbp)
	movl	-72(%rbp), %ecx
	shrl	$8, %ecx
	addl	-72(%rbp), %ecx
	shrl	$8, %ecx
	movl	%eax, %edi
	subl	%ecx, %edi
	movl	%edi, -64(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	subl	%ecx, %eax
	imull	-68(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	shrl	$8, %eax
	addl	-76(%rbp), %eax
	shrl	$8, %eax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	-64(%rbp), %ecx
	addl	$128, %ecx
	movl	%ecx, -80(%rbp)
	movl	-80(%rbp), %ecx
	shrl	$8, %ecx
	addl	-80(%rbp), %ecx
	shrl	$8, %ecx
	addl	%ecx, %eax
	movb	%al, %r9b
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%r9b, (%rsi,%rdx)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB17_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB17_10
.LBB17_13:                              # %for.end
                                        #   in Loop: Header=BB17_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB17_19
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB17_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB17_19
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB17_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB17_17
# BB#16:                                # %cond.true.75
                                        #   in Loop: Header=BB17_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB17_18
.LBB17_17:                              # %cond.false.79
                                        #   in Loop: Header=BB17_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB17_18:                              # %cond.end.83
                                        #   in Loop: Header=BB17_8 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB17_22
.LBB17_19:                              # %if.else
                                        #   in Loop: Header=BB17_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB17_21
# BB#20:                                # %if.then.89
                                        #   in Loop: Header=BB17_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB17_21:                              # %if.end
                                        #   in Loop: Header=BB17_8 Depth=1
	jmp	.LBB17_22
.LBB17_22:                              # %if.end.94
                                        #   in Loop: Header=BB17_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB17_8
.LBB17_23:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_composite_softlight_any_any_any_generic, .Lfunc_end17-gimp_composite_softlight_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_grain_extract_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_grain_extract_any_any_any_generic,@function
gimp_composite_grain_extract_any_any_any_generic: # @gimp_composite_grain_extract_any_any_any_generic
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB18_6
.LBB18_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB18_4
# BB#3:                                 # %cond.true.15
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB18_5
.LBB18_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB18_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB18_7
.LBB18_6:                               # %cond.false.16
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB18_7:                               # %cond.end.17
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB18_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB18_29
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	$0, -60(%rbp)
.LBB18_10:                              # %for.cond
                                        #   Parent Loop BB18_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB18_19
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB18_10 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	addl	$128, %eax
	movl	%eax, -64(%rbp)
	cmpl	$255, -64(%rbp)
	jle	.LBB18_13
# BB#12:                                # %cond.true.31
                                        #   in Loop: Header=BB18_10 Depth=2
	movl	$255, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB18_17
.LBB18_13:                              # %cond.false.32
                                        #   in Loop: Header=BB18_10 Depth=2
	cmpl	$0, -64(%rbp)
	jge	.LBB18_15
# BB#14:                                # %cond.true.35
                                        #   in Loop: Header=BB18_10 Depth=2
	xorl	%eax, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB18_16
.LBB18_15:                              # %cond.false.36
                                        #   in Loop: Header=BB18_10 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB18_16:                              # %cond.end.37
                                        #   in Loop: Header=BB18_10 Depth=2
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB18_17:                              # %cond.end.39
                                        #   in Loop: Header=BB18_10 Depth=2
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB18_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB18_10
.LBB18_19:                              # %for.end
                                        #   in Loop: Header=BB18_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB18_25
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB18_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB18_25
# BB#21:                                # %if.then
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB18_23
# BB#22:                                # %cond.true.54
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB18_24
.LBB18_23:                              # %cond.false.58
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB18_24:                              # %cond.end.62
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB18_28
.LBB18_25:                              # %if.else
                                        #   in Loop: Header=BB18_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB18_27
# BB#26:                                # %if.then.68
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB18_27:                              # %if.end
                                        #   in Loop: Header=BB18_8 Depth=1
	jmp	.LBB18_28
.LBB18_28:                              # %if.end.73
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB18_8
.LBB18_29:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_composite_grain_extract_any_any_any_generic, .Lfunc_end18-gimp_composite_grain_extract_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_grain_merge_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_grain_merge_any_any_any_generic,@function
gimp_composite_grain_merge_any_any_any_generic: # @gimp_composite_grain_merge_any_any_any_generic
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB19_6
.LBB19_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB19_4
# BB#3:                                 # %cond.true.9
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB19_5
.LBB19_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB19_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB19_7
.LBB19_6:                               # %cond.false.10
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB19_7:                               # %cond.end.11
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB19_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB19_29
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	$0, -60(%rbp)
.LBB19_10:                              # %for.cond
                                        #   Parent Loop BB19_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB19_19
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB19_10 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	subl	$128, %eax
	movl	%eax, -64(%rbp)
	cmpl	$255, -64(%rbp)
	jle	.LBB19_13
# BB#12:                                # %cond.true.25
                                        #   in Loop: Header=BB19_10 Depth=2
	movl	$255, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB19_17
.LBB19_13:                              # %cond.false.26
                                        #   in Loop: Header=BB19_10 Depth=2
	cmpl	$0, -64(%rbp)
	jge	.LBB19_15
# BB#14:                                # %cond.true.29
                                        #   in Loop: Header=BB19_10 Depth=2
	xorl	%eax, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB19_16
.LBB19_15:                              # %cond.false.30
                                        #   in Loop: Header=BB19_10 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB19_16:                              # %cond.end.31
                                        #   in Loop: Header=BB19_10 Depth=2
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB19_17:                              # %cond.end.33
                                        #   in Loop: Header=BB19_10 Depth=2
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB19_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB19_10
.LBB19_19:                              # %for.end
                                        #   in Loop: Header=BB19_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB19_25
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB19_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB19_25
# BB#21:                                # %if.then
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB19_23
# BB#22:                                # %cond.true.48
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB19_24
.LBB19_23:                              # %cond.false.52
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB19_24:                              # %cond.end.56
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB19_28
.LBB19_25:                              # %if.else
                                        #   in Loop: Header=BB19_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB19_27
# BB#26:                                # %if.then.62
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB19_27:                              # %if.end
                                        #   in Loop: Header=BB19_8 Depth=1
	jmp	.LBB19_28
.LBB19_28:                              # %if.end.67
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB19_8
.LBB19_29:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_composite_grain_merge_any_any_any_generic, .Lfunc_end19-gimp_composite_grain_merge_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_addition_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_addition_any_any_any_generic,@function
gimp_composite_addition_any_any_any_generic: # @gimp_composite_addition_any_any_any_generic
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB20_6
.LBB20_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB20_4
# BB#3:                                 # %cond.true.18
	movl	-40(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB20_5
.LBB20_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB20_5:                               # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB20_7
.LBB20_6:                               # %cond.false.19
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB20_7:                               # %cond.end.20
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB20_20
# BB#8:                                 # %land.lhs.true
	cmpl	$0, -52(%rbp)
	je	.LBB20_20
# BB#9:                                 # %if.then
	jmp	.LBB20_10
.LBB20_10:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_12 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB20_19
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB20_10 Depth=1
	movl	$0, -60(%rbp)
.LBB20_12:                              # %for.cond
                                        #   Parent Loop BB20_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB20_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB20_12 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	movslq	%eax, %rcx
	movb	add_lut(,%rcx), %dil
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB20_12 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB20_12
.LBB20_15:                              # %for.end
                                        #   in Loop: Header=BB20_10 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB20_17
# BB#16:                                # %cond.true.45
                                        #   in Loop: Header=BB20_10 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB20_18
.LBB20_17:                              # %cond.false.49
                                        #   in Loop: Header=BB20_10 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB20_18:                              # %cond.end.53
                                        #   in Loop: Header=BB20_10 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	jmp	.LBB20_10
.LBB20_19:                              # %while.end
	jmp	.LBB20_38
.LBB20_20:                              # %if.else
	cmpl	$0, -52(%rbp)
	je	.LBB20_29
# BB#21:                                # %if.then.63
	jmp	.LBB20_22
.LBB20_22:                              # %while.cond.64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_24 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB20_28
# BB#23:                                # %while.body.67
                                        #   in Loop: Header=BB20_22 Depth=1
	movl	$0, -60(%rbp)
.LBB20_24:                              # %for.cond.68
                                        #   Parent Loop BB20_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB20_27
# BB#25:                                # %for.body.71
                                        #   in Loop: Header=BB20_24 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	movslq	%eax, %rcx
	movb	add_lut(,%rcx), %dil
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#26:                                # %for.inc.83
                                        #   in Loop: Header=BB20_24 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB20_24
.LBB20_27:                              # %for.end.85
                                        #   in Loop: Header=BB20_22 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB20_22
.LBB20_28:                              # %while.end.96
	jmp	.LBB20_37
.LBB20_29:                              # %if.else.97
	jmp	.LBB20_30
.LBB20_30:                              # %while.cond.98
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_32 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB20_36
# BB#31:                                # %while.body.101
                                        #   in Loop: Header=BB20_30 Depth=1
	movl	$0, -60(%rbp)
.LBB20_32:                              # %for.cond.102
                                        #   Parent Loop BB20_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB20_35
# BB#33:                                # %for.body.105
                                        #   in Loop: Header=BB20_32 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	movslq	%eax, %rcx
	movb	add_lut(,%rcx), %dil
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#34:                                # %for.inc.117
                                        #   in Loop: Header=BB20_32 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB20_32
.LBB20_35:                              # %for.end.119
                                        #   in Loop: Header=BB20_30 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB20_30
.LBB20_36:                              # %while.end.126
	jmp	.LBB20_37
.LBB20_37:                              # %if.end
	jmp	.LBB20_38
.LBB20_38:                              # %if.end.127
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_composite_addition_any_any_any_generic, .Lfunc_end20-gimp_composite_addition_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_subtract_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_subtract_any_any_any_generic,@function
gimp_composite_subtract_any_any_any_generic: # @gimp_composite_subtract_any_any_any_generic
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB21_6
.LBB21_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB21_4
# BB#3:                                 # %cond.true.15
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB21_5
.LBB21_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB21_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB21_7
.LBB21_6:                               # %cond.false.16
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB21_7:                               # %cond.end.17
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB21_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB21_26
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB21_8 Depth=1
	movl	$0, -60(%rbp)
.LBB21_10:                              # %for.cond
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB21_16
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB21_10 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jge	.LBB21_13
# BB#12:                                # %cond.true.31
                                        #   in Loop: Header=BB21_10 Depth=2
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB21_14
.LBB21_13:                              # %cond.false.32
                                        #   in Loop: Header=BB21_10 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB21_14:                              # %cond.end.33
                                        #   in Loop: Header=BB21_10 Depth=2
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB21_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB21_10
.LBB21_16:                              # %for.end
                                        #   in Loop: Header=BB21_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB21_22
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB21_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB21_22
# BB#18:                                # %if.then
                                        #   in Loop: Header=BB21_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB21_20
# BB#19:                                # %cond.true.48
                                        #   in Loop: Header=BB21_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB21_21
.LBB21_20:                              # %cond.false.52
                                        #   in Loop: Header=BB21_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB21_21:                              # %cond.end.56
                                        #   in Loop: Header=BB21_8 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB21_25
.LBB21_22:                              # %if.else
                                        #   in Loop: Header=BB21_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB21_24
# BB#23:                                # %if.then.62
                                        #   in Loop: Header=BB21_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB21_24:                              # %if.end
                                        #   in Loop: Header=BB21_8 Depth=1
	jmp	.LBB21_25
.LBB21_25:                              # %if.end.67
                                        #   in Loop: Header=BB21_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB21_8
.LBB21_26:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_composite_subtract_any_any_any_generic, .Lfunc_end21-gimp_composite_subtract_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_difference_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_difference_any_any_any_generic,@function
gimp_composite_difference_any_any_any_generic: # @gimp_composite_difference_any_any_any_generic
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB22_6
.LBB22_2:                               # %cond.true
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB22_4
# BB#3:                                 # %cond.true.15
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB22_5
.LBB22_4:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB22_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB22_7
.LBB22_6:                               # %cond.false.16
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB22_7:                               # %cond.end.17
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB22_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_10 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB22_26
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	$0, -60(%rbp)
.LBB22_10:                              # %for.cond
                                        #   Parent Loop BB22_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB22_16
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB22_10 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jge	.LBB22_13
# BB#12:                                # %cond.true.31
                                        #   in Loop: Header=BB22_10 Depth=2
	xorl	%eax, %eax
	subl	-64(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB22_14
.LBB22_13:                              # %cond.false.33
                                        #   in Loop: Header=BB22_10 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB22_14:                              # %cond.end.34
                                        #   in Loop: Header=BB22_10 Depth=2
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB22_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB22_10
.LBB22_16:                              # %for.end
                                        #   in Loop: Header=BB22_8 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB22_22
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB22_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB22_22
# BB#18:                                # %if.then
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-56(%rbp), %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jge	.LBB22_20
# BB#19:                                # %cond.true.49
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB22_21
.LBB22_20:                              # %cond.false.53
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB22_21:                              # %cond.end.57
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB22_25
.LBB22_22:                              # %if.else
                                        #   in Loop: Header=BB22_8 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB22_24
# BB#23:                                # %if.then.63
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB22_24:                              # %if.end
                                        #   in Loop: Header=BB22_8 Depth=1
	jmp	.LBB22_25
.LBB22_25:                              # %if.end.68
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB22_8
.LBB22_26:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_composite_difference_any_any_any_generic, .Lfunc_end22-gimp_composite_difference_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_dissolve_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_dissolve_any_any_any_generic,@function
gimp_composite_dissolve_any_any_any_generic: # @gimp_composite_dissolve_any_any_any_generic
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	80(%rdi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movl	72(%rdi), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	76(%rdi), %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -80(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -88(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %eax
	movl	%eax, -92(%rbp)
	movq	-8(%rbp), %rdi
	movl	48(%rdi), %eax
	movl	%eax, %edi
	cmpb	$0, gimp_composite_pixel_alphap(,%rdi)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, %eax
	movl	gimp_composite_pixel_alpha(,%rax,4), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 48(%rax)
.LBB23_2:                               # %if.end
	movl	$4096, %eax             # imm = 0x1000
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edx
	movl	%edx, %ecx
	movzbl	gimp_composite_pixel_bpp(,%rcx), %edx
	movl	%edx, -32(%rbp)
	movl	-52(%rbp), %edx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-96(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movslq	%edx, %rcx
	movl	random_table(,%rcx,4), %edi
	callq	g_rand_new_with_seed
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
.LBB23_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB23_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_rand_int
	movl	%eax, -100(%rbp)        # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB23_3
.LBB23_6:                               # %for.end
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB23_7:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_9 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB23_22
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	$0, -24(%rbp)
.LBB23_9:                               # %for.cond.26
                                        #   Parent Loop BB23_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB23_12
# BB#10:                                # %for.body.29
                                        #   in Loop: Header=BB23_9 Depth=2
	movslq	-24(%rbp), %rax
	movq	-88(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-24(%rbp), %rax
	movq	-80(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#11:                                # %for.inc.34
                                        #   in Loop: Header=BB23_9 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB23_9
.LBB23_12:                              # %for.end.36
                                        #   in Loop: Header=BB23_7 Depth=1
	xorl	%esi, %esi
	movl	$255, %edx
	movq	-16(%rbp), %rdi
	callq	g_rand_int_range
	movl	%eax, -68(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB23_17
# BB#13:                                # %if.then.39
                                        #   in Loop: Header=BB23_7 Depth=1
	cmpl	$0, -92(%rbp)
	je	.LBB23_15
# BB#14:                                # %if.then.41
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	$65025, %eax            # imm = 0xFE01
	movl	-40(%rbp), %ecx
	movslq	-20(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	%edi, %ecx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edi
	imull	%edi, %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-104(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -28(%rbp)
	jmp	.LBB23_16
.LBB23_15:                              # %if.else
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	$255, %eax
	movl	-40(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %esi
	imull	%esi, %ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-108(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -28(%rbp)
.LBB23_16:                              # %if.end.50
                                        #   in Loop: Header=BB23_7 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB23_21
.LBB23_17:                              # %if.else.51
                                        #   in Loop: Header=BB23_7 Depth=1
	cmpl	$0, -92(%rbp)
	je	.LBB23_19
# BB#18:                                # %if.then.53
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	$255, %eax
	movl	-40(%rbp), %ecx
	movslq	-20(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	%edi, %ecx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-112(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -28(%rbp)
	jmp	.LBB23_20
.LBB23_19:                              # %if.else.59
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB23_20:                              # %if.end.60
                                        #   in Loop: Header=BB23_7 Depth=1
	jmp	.LBB23_21
.LBB23_21:                              # %if.end.61
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	$255, %eax
	xorl	%ecx, %ecx
	movl	-68(%rbp), %edx
	cmpl	-28(%rbp), %edx
	cmovgel	%ecx, %eax
	movb	%al, %sil
	movslq	-20(%rbp), %rdi
	movq	-80(%rbp), %r8
	movb	%sil, (%r8,%rdi)
	movl	-32(%rbp), %eax
	movq	-80(%rbp), %rdi
	movslq	%eax, %r8
	addq	%r8, %rdi
	movq	%rdi, -80(%rbp)
	movl	-44(%rbp), %eax
	movq	-88(%rbp), %rdi
	movslq	%eax, %r8
	addq	%r8, %rdi
	movq	%rdi, -88(%rbp)
	jmp	.LBB23_7
.LBB23_22:                              # %while.end
	movq	-16(%rbp), %rdi
	callq	g_rand_free
	movl	$9, %eax
	movl	$11, %ecx
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %edx
	movl	%edx, %edi
	movzbl	gimp_composite_pixel_alphap(,%rdi), %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 84(%rdi)
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_composite_dissolve_any_any_any_generic, .Lfunc_end23-gimp_composite_dissolve_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_replace_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_replace_any_any_any_generic,@function
gimp_composite_replace_any_any_any_generic: # @gimp_composite_replace_any_any_any_generic
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$14, 84(%rax)
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_composite_replace_any_any_any_generic, .Lfunc_end24-gimp_composite_replace_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_swap_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_swap_any_any_any_generic,@function
gimp_composite_swap_any_any_any_generic: # @gimp_composite_swap_any_any_any_generic
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movzbl	gimp_composite_pixel_bpp(,%rdi), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	imulq	%rcx, %rdi
	movl	%edi, %eax
	movl	%eax, -32(%rbp)
.LBB25_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, %eax
	je	.LBB25_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -33(%rbp)
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movb	%cl, (%rax)
	movb	-33(%rbp), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB25_1
.LBB25_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_composite_swap_any_any_any_generic, .Lfunc_end25-gimp_composite_swap_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_normal_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_normal_any_any_any_generic,@function
gimp_composite_normal_any_any_any_generic: # @gimp_composite_normal_any_any_any_generic
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 16(%rax)
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_composite_normal_any_any_any_generic, .Lfunc_end26-gimp_composite_normal_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_erase_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_erase_any_any_any_generic,@function
gimp_composite_erase_any_any_any_generic: # @gimp_composite_erase_any_any_any_generic
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, 16(%rdx)
	movq	-8(%rbp), %rdx
	movl	40(%rdx), %eax
	movl	%eax, %edx
	movzbl	gimp_composite_pixel_alphap(,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB27_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, %eax
	movzbl	gimp_composite_pixel_alphap(,%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB27_2:                               # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$16, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, 84(%rsi)
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_composite_erase_any_any_any_generic, .Lfunc_end27-gimp_composite_erase_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_anti_erase_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_anti_erase_any_any_any_generic,@function
gimp_composite_anti_erase_any_any_any_generic: # @gimp_composite_anti_erase_any_any_any_generic
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, 16(%rdx)
	movq	-8(%rbp), %rdx
	movl	40(%rdx), %eax
	movl	%eax, %edx
	movzbl	gimp_composite_pixel_alphap(,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB28_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, %eax
	movzbl	gimp_composite_pixel_alphap(,%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB28_2:                               # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$18, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, 84(%rsi)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_composite_anti_erase_any_any_any_generic, .Lfunc_end28-gimp_composite_anti_erase_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_color_erase_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_color_erase_any_any_any_generic,@function
gimp_composite_color_erase_any_any_any_generic: # @gimp_composite_color_erase_any_any_any_generic
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, 16(%rdx)
	movq	-8(%rbp), %rdx
	movl	40(%rdx), %eax
	movl	%eax, %edx
	movzbl	gimp_composite_pixel_alphap(,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB29_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, %eax
	movzbl	gimp_composite_pixel_alphap(,%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB29_2:                               # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$20, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, 84(%rsi)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_composite_color_erase_any_any_any_generic, .Lfunc_end29-gimp_composite_color_erase_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_scale_any_any_any_generic
	.align	16, 0x90
	.type	gimp_composite_scale_any_any_any_generic,@function
gimp_composite_scale_any_any_any_generic: # @gimp_composite_scale_any_any_any_generic
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 40(%rdi)
	jne	.LBB30_2
# BB#1:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB30_9
.LBB30_2:                               # %cond.false
	movq	-8(%rbp), %rax
	cmpl	$1, 40(%rax)
	jne	.LBB30_4
# BB#3:                                 # %cond.true.3
	movl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB30_8
.LBB30_4:                               # %cond.false.4
	movq	-8(%rbp), %rax
	cmpl	$2, 40(%rax)
	jne	.LBB30_6
# BB#5:                                 # %cond.true.7
	movl	$3, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB30_7
.LBB30_6:                               # %cond.false.8
	xorl	%eax, %eax
	movl	$4, %ecx
	movq	-8(%rbp), %rdx
	cmpl	$3, 40(%rdx)
	cmovel	%ecx, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB30_7:                               # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB30_8:                               # %cond.end.12
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB30_9:                               # %cond.end.14
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	imulq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, -28(%rbp)
.LBB30_10:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB30_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB30_10 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	64(%rax), %ecx
	addl	$128, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	sarl	$8, %ecx
	addl	-36(%rbp), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB30_10
.LBB30_12:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_composite_scale_any_any_any_generic, .Lfunc_end30-gimp_composite_scale_any_any_any_generic
	.cfi_endproc

	.globl	gimp_composite_generic_init
	.align	16, 0x90
	.type	gimp_composite_generic_init,@function
gimp_composite_generic_init:            # @gimp_composite_generic_init
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
	subq	$48, %rsp
	movl	$314159265, %edi        # imm = 0x12B9B0A1
	callq	g_rand_new_with_seed
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4096, -12(%rbp)        # imm = 0x1000
	jae	.LBB31_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	g_rand_int
	movl	-12(%rbp), %ecx
	movl	%ecx, %edi
	movl	%eax, random_table(,%rdi,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB31_1
.LBB31_4:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	g_rand_free
	movl	$0, -16(%rbp)
.LBB31_5:                               # %for.cond.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_7 Depth 2
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jge	.LBB31_18
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB31_5 Depth=1
	movl	$0, -20(%rbp)
.LBB31_7:                               # %for.cond.5
                                        #   Parent Loop BB31_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB31_16
# BB#8:                                 # %for.body.7
                                        #   in Loop: Header=BB31_7 Depth=2
	movl	$255, %eax
	movl	%eax, %ecx
	subl	-16(%rbp), %ecx
	shll	$8, %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	-24(%rbp), %edx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	cmpl	$255, -24(%rbp)
	jle	.LBB31_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB31_7 Depth=2
	movl	$255, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB31_14
.LBB31_10:                              # %cond.false
                                        #   in Loop: Header=BB31_7 Depth=2
	cmpl	$0, -24(%rbp)
	jge	.LBB31_12
# BB#11:                                # %cond.true.11
                                        #   in Loop: Header=BB31_7 Depth=2
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB31_13
.LBB31_12:                              # %cond.false.12
                                        #   in Loop: Header=BB31_7 Depth=2
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB31_13:                              # %cond.end
                                        #   in Loop: Header=BB31_7 Depth=2
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB31_14:                              # %cond.end.13
                                        #   in Loop: Header=BB31_7 Depth=2
	movl	-32(%rbp), %eax         # 4-byte Reload
	movabsq	$burn_lut, %rcx
	movb	%al, %dl
	movslq	-20(%rbp), %rsi
	movslq	-16(%rbp), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rcx
	movb	%dl, (%rcx,%rsi)
# BB#15:                                # %for.inc.19
                                        #   in Loop: Header=BB31_7 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB31_7
.LBB31_16:                              # %for.end.21
                                        #   in Loop: Header=BB31_5 Depth=1
	jmp	.LBB31_17
.LBB31_17:                              # %for.inc.22
                                        #   in Loop: Header=BB31_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB31_5
.LBB31_18:                              # %for.end.24
	movl	$0, -12(%rbp)
.LBB31_19:                              # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jae	.LBB31_22
# BB#20:                                # %for.body.28
                                        #   in Loop: Header=BB31_19 Depth=1
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movb	%cl, add_lut(,%rdx)
# BB#21:                                # %for.inc.32
                                        #   in Loop: Header=BB31_19 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB31_19
.LBB31_22:                              # %for.end.34
	movl	$256, -12(%rbp)         # imm = 0x100
.LBB31_23:                              # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$510, -12(%rbp)         # imm = 0x1FE
	ja	.LBB31_26
# BB#24:                                # %for.body.38
                                        #   in Loop: Header=BB31_23 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movb	$-1, add_lut(,%rcx)
# BB#25:                                # %for.inc.41
                                        #   in Loop: Header=BB31_23 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB31_23
.LBB31_26:                              # %for.end.43
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_composite_generic_init, .Lfunc_end31-gimp_composite_generic_init
	.cfi_endproc

	.type	burn_lut,@object        # @burn_lut
	.local	burn_lut
	.comm	burn_lut,65536,16
	.type	add_lut,@object         # @add_lut
	.local	add_lut
	.comm	add_lut,511,16
	.type	random_table,@object    # @random_table
	.local	random_table
	.comm	random_table,16384,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
