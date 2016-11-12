	.text
	.file	"jcsample.bc"
	.globl	jinit_downsampler
	.align	16, 0x90
	.type	jinit_downsampler,@function
jinit_downsampler:                      # @jinit_downsampler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$168, %edx
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 544(%r15)
	movq	$start_pass_downsample, (%r14)
	movq	$sep_downsample, 8(%r14)
	movl	$0, 16(%r14)
	cmpl	$0, 300(%r15)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	(%r15), %rax
	movl	$26, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB0_2:                                # %if.end
	cmpl	$0, 92(%r15)
	jle	.LBB0_18
# BB#3:                                 # %for.body.lr.ph
	movq	104(%r15), %rbx
	addq	$40, %rbx
	xorl	%r12d, %r12d
	jmp	.LBB0_4
.LBB0_15:                               # %if.then.37
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	$int_downsample, 24(%r14,%r12,8)
	movl	%edi, %eax
	cltd
	idivl	%ecx
	movb	%al, 144(%r14,%r12)
	movl	%r8d, %eax
	cltd
	idivl	%esi
	movb	%al, 154(%r14,%r12)
	jmp	.LBB0_17
	.align	16, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbx), %eax
	movl	(%rbx), %esi
	imull	-32(%rbx), %eax
	cltd
	idivl	360(%r15)
	movl	%eax, %ecx
	imull	-28(%rbx), %esi
	movl	%esi, %eax
	cltd
	idivl	364(%r15)
	movl	%eax, %esi
	movl	352(%r15), %edi
	movl	356(%r15), %r8d
	movl	%esi, 104(%r14,%r12,4)
	cmpl	%ecx, %edi
	jne	.LBB0_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	%esi, %r8d
	jne	.LBB0_7
# BB#6:                                 # %if.then.11
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	$fullsize_downsample, 24(%r14,%r12,8)
	jmp	.LBB0_17
	.align	16, 0x90
.LBB0_7:                                # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	leal	(%rcx,%rcx), %eax
	cmpl	%eax, %edi
	jne	.LBB0_10
# BB#8:                                 # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	%esi, %r8d
	jne	.LBB0_10
# BB#9:                                 # %if.then.18
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	$h2v1_downsample, 24(%r14,%r12,8)
	jmp	.LBB0_17
	.align	16, 0x90
.LBB0_10:                               # %if.else.22
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	%eax, %edi
	jne	.LBB0_13
# BB#11:                                # %if.else.22
                                        #   in Loop: Header=BB0_4 Depth=1
	leal	(%rsi,%rsi), %eax
	cmpl	%eax, %r8d
	jne	.LBB0_13
# BB#12:                                # %if.then.28
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	$h2v2_downsample, 24(%r14,%r12,8)
	jmp	.LBB0_17
.LBB0_13:                               # %if.else.32
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%edi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.LBB0_16
# BB#14:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	je	.LBB0_15
.LBB0_16:                               # %if.else.48
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	(%r15), %rax
	movl	$39, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB0_17:                               # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	incq	%r12
	movslq	92(%r15), %rax
	addq	$96, %rbx
	cmpq	%rax, %r12
	jl	.LBB0_4
.LBB0_18:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	jinit_downsampler, .Lfunc_end0-jinit_downsampler
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass_downsample,@function
start_pass_downsample:                  # @start_pass_downsample
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end1:
	.size	start_pass_downsample, .Lfunc_end1-start_pass_downsample
	.cfi_endproc

	.align	16, 0x90
	.type	sep_downsample,@function
sep_downsample:                         # @sep_downsample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 80
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r13
	cmpl	$0, 92(%rdi)
	jle	.LBB2_3
# BB#1:                                 # %for.body.lr.ph
	movq	%rdi, %rbx
	movq	544(%rbx), %r14
	movq	104(%rbx), %rbp
	movl	%edx, %eax
	xorl	%r15d, %r15d
	shlq	$3, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%r15,8), %rdx
	addq	8(%rsp), %rdx           # 8-byte Folded Reload
	movq	(%rcx,%r15,8), %rax
	movl	104(%r14,%r15,4), %ecx
	imull	%r12d, %ecx
	leaq	(%rax,%rcx,8), %rcx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%r14,%r15,8)
	movq	16(%rsp), %rcx          # 8-byte Reload
	incq	%r15
	addq	$96, %rbp
	movslq	92(%rbx), %rax
	cmpq	%rax, %r15
	jl	.LBB2_2
.LBB2_3:                                # %for.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sep_downsample, .Lfunc_end2-sep_downsample
	.cfi_endproc

	.align	16, 0x90
	.type	fullsize_downsample,@function
fullsize_downsample:                    # @fullsize_downsample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 96
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	48(%rbx), %r9d
	movl	356(%rbx), %r8d
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movq	%rdx, %rdi
	movq	%r15, %rdx
	callq	jcopy_sample_rows
	movl	48(%rbx), %eax
	movl	356(%rbx), %r10d
	testl	%r10d, %r10d
	jle	.LBB3_17
# BB#1:                                 # %entry
	movl	28(%r14), %edx
	imull	36(%r14), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	testl	%ecx, %ecx
	jle	.LBB3_17
# BB#2:                                 # %for.body.lr.ph.i
	leal	-1(%rax), %ecx
	subl	%edx, %ecx
	cmpl	$-3, %ecx
	movl	$-2, %esi
	cmovgl	%ecx, %esi
	leal	1(%rsi,%rdx), %ecx
	movl	%ecx, %r8d
	subl	%eax, %r8d
	leaq	1(%r8), %r11
	movabsq	$8589934560, %rsi       # imm = 0x1FFFFFFE0
	movq	%r11, %rdx
	andq	%rsi, %rdx
	leaq	-32(%rdx), %r9
	movl	%r9d, %r13d
	shrl	$5, %r13d
	incl	%r13d
	movl	32(%rsp), %edi          # 4-byte Reload
	subl	%edx, %edi
	movl	%edi, 36(%rsp)          # 4-byte Spill
	andl	$3, %r13d
	leaq	16(%rax), %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	incl	%r8d
	andl	$96, %r8d
	addl	$-32, %r8d
	shrl	$5, %r8d
	incl	%r8d
	andl	$3, %r8d
	negq	%r8
	subl	%eax, %ecx
	incq	%rcx
	andq	%rsi, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	leaq	112(%rax), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	xorl	%esi, %esi
	.align	16, 0x90
.LBB3_3:                                # %for.body.5.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #     Child Loop BB3_11 Depth 2
                                        #     Child Loop BB3_15 Depth 2
	movq	(%r15,%rsi,8), %r14
	leaq	(%r14,%rax), %rbp
	testq	%rdx, %rdx
	movb	-1(%r14,%rax), %r12b
	je	.LBB3_4
# BB#5:                                 # %vector.ph
                                        #   in Loop: Header=BB3_3 Depth=1
	testq	%r13, %r13
	movzbl	%r12b, %ecx
	movd	%ecx, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	movl	$0, %edi
	je	.LBB3_8
# BB#6:                                 # %vector.body.prol.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	(%r14,%rcx), %rcx
	movq	%r8, %rbx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB3_7:                                # %vector.body.prol
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -16(%rcx,%rdi)
	movdqu	%xmm0, (%rcx,%rdi)
	addq	$32, %rdi
	incq	%rbx
	jne	.LBB3_7
.LBB3_8:                                # %vector.ph.split
                                        #   in Loop: Header=BB3_3 Depth=1
	addq	%rdx, %rbp
	cmpq	$96, %r9
	jae	.LBB3_10
# BB#9:                                 #   in Loop: Header=BB3_3 Depth=1
	movl	36(%rsp), %edi          # 4-byte Reload
	movq	%rdx, %rcx
	jmp	.LBB3_13
	.align	16, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_3 Depth=1
	movl	32(%rsp), %edi          # 4-byte Reload
	xorl	%ecx, %ecx
	jmp	.LBB3_13
	.align	16, 0x90
.LBB3_10:                               # %vector.ph.split.split
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	%r9, %rbx
	movq	16(%rsp), %r9           # 8-byte Reload
	subq	%rdi, %r9
	addq	8(%rsp), %r14           # 8-byte Folded Reload
	addq	%rdi, %r14
	.align	16, 0x90
.LBB3_11:                               # %vector.body
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%r14)
	movdqu	%xmm0, -96(%r14)
	movdqu	%xmm0, -80(%r14)
	movdqu	%xmm0, -64(%r14)
	movdqu	%xmm0, -48(%r14)
	movdqu	%xmm0, -32(%r14)
	movdqu	%xmm0, -16(%r14)
	movdqu	%xmm0, (%r14)
	subq	$-128, %r14
	addq	$-128, %r9
	jne	.LBB3_11
# BB#12:                                #   in Loop: Header=BB3_3 Depth=1
	movl	36(%rsp), %edi          # 4-byte Reload
	movq	%rdx, %rcx
	movq	%rbx, %r9
.LBB3_13:                               # %middle.block
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpq	%rcx, %r11
	je	.LBB3_16
# BB#14:                                # %for.body.5.i.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	incl	%edi
	.align	16, 0x90
.LBB3_15:                               # %for.body.5.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%r12b, (%rbp)
	incq	%rbp
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB3_15
.LBB3_16:                               # %for.inc.6.i
                                        #   in Loop: Header=BB3_3 Depth=1
	incq	%rsi
	cmpl	%r10d, %esi
	jne	.LBB3_3
.LBB3_17:                               # %expand_right_edge.exit
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	fullsize_downsample, .Lfunc_end3-fullsize_downsample
	.cfi_endproc

	.align	16, 0x90
	.type	h2v1_downsample,@function
h2v1_downsample:                        # @h2v1_downsample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 56
.Ltmp41:
	.cfi_offset %rbx, -56
.Ltmp42:
	.cfi_offset %r12, -48
.Ltmp43:
	.cfi_offset %r13, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movl	28(%rsi), %r8d
	imull	36(%rsi), %r8d
	movl	48(%rdi), %r12d
	movl	356(%rdi), %esi
	testl	%esi, %esi
	jle	.LBB4_18
# BB#1:                                 # %entry
	leal	(%r8,%r8), %eax
	movl	%eax, %r15d
	subl	%r12d, %r15d
	testl	%r15d, %r15d
	jle	.LBB4_18
# BB#2:                                 # %for.body.lr.ph.i
	movq	%rdi, -64(%rsp)         # 8-byte Spill
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	negl	%eax
	leal	-1(%r12,%rax), %eax
	cmpl	$-3, %eax
	movl	$-2, %ecx
	cmovgl	%eax, %ecx
	leal	1(%rcx,%r8,2), %eax
	movl	%eax, %r11d
	subl	%r12d, %r11d
	leaq	1(%r11), %r14
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	movq	%r14, %rbx
	andq	%rcx, %rbx
	leaq	-32(%rbx), %rdi
	movq	%rdi, -8(%rsp)          # 8-byte Spill
	shrl	$5, %edi
	incl	%edi
	movl	%r15d, %ebp
	subl	%ebx, %ebp
	movl	%ebp, -20(%rsp)         # 4-byte Spill
	andl	$3, %edi
	movq	%rdi, -16(%rsp)         # 8-byte Spill
	leaq	16(%r12), %rdi
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	incl	%r11d
	andl	$96, %r11d
	addl	$-32, %r11d
	shrl	$5, %r11d
	incl	%r11d
	andl	$3, %r11d
	negq	%r11
	subl	%r12d, %eax
	incq	%rax
	andq	%rcx, %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	leaq	112(%r12), %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB4_3:                                # %for.body.5.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #     Child Loop BB4_11 Depth 2
                                        #     Child Loop BB4_15 Depth 2
	movq	(%rdx,%r13,8), %r10
	leaq	(%r10,%r12), %r9
	testq	%rbx, %rbx
	movb	-1(%r10,%r12), %cl
	je	.LBB4_4
# BB#5:                                 # %vector.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpq	$0, -16(%rsp)           # 8-byte Folded Reload
	movzbl	%cl, %eax
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	movl	$0, %ebp
	je	.LBB4_8
# BB#6:                                 # %vector.body.prol.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-32(%rsp), %rax         # 8-byte Reload
	leaq	(%r10,%rax), %rdi
	movq	%r11, %rax
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_7:                                # %vector.body.prol
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -16(%rdi,%rbp)
	movdqu	%xmm0, (%rdi,%rbp)
	addq	$32, %rbp
	incq	%rax
	jne	.LBB4_7
.LBB4_8:                                # %vector.ph.split
                                        #   in Loop: Header=BB4_3 Depth=1
	addq	%rbx, %r9
	cmpq	$96, -8(%rsp)           # 8-byte Folded Reload
	jae	.LBB4_10
# BB#9:                                 #   in Loop: Header=BB4_3 Depth=1
	movl	-20(%rsp), %ebp         # 4-byte Reload
	movq	%rbx, %rax
	jmp	.LBB4_13
	.align	16, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_3 Depth=1
	movl	%r15d, %ebp
	xorl	%eax, %eax
	jmp	.LBB4_13
	.align	16, 0x90
.LBB4_10:                               # %vector.ph.split.split
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	%r15d, %edi
	movq	-40(%rsp), %r15         # 8-byte Reload
	subq	%rbp, %r15
	addq	-48(%rsp), %r10         # 8-byte Folded Reload
	addq	%rbp, %r10
	.align	16, 0x90
.LBB4_11:                               # %vector.body
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%r10)
	movdqu	%xmm0, -96(%r10)
	movdqu	%xmm0, -80(%r10)
	movdqu	%xmm0, -64(%r10)
	movdqu	%xmm0, -48(%r10)
	movdqu	%xmm0, -32(%r10)
	movdqu	%xmm0, -16(%r10)
	movdqu	%xmm0, (%r10)
	subq	$-128, %r10
	addq	$-128, %r15
	jne	.LBB4_11
# BB#12:                                #   in Loop: Header=BB4_3 Depth=1
	movl	-20(%rsp), %ebp         # 4-byte Reload
	movq	%rbx, %rax
	movl	%edi, %r15d
.LBB4_13:                               # %middle.block
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpq	%rax, %r14
	je	.LBB4_16
# BB#14:                                # %for.body.5.i.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	incl	%ebp
	.align	16, 0x90
.LBB4_15:                               # %for.body.5.i
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%cl, (%r9)
	incq	%r9
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB4_15
.LBB4_16:                               # %for.inc.6.i
                                        #   in Loop: Header=BB4_3 Depth=1
	incq	%r13
	cmpl	%esi, %r13d
	jne	.LBB4_3
# BB#17:                                # %for.cond.preheader.loopexit
	movq	-64(%rsp), %rdi         # 8-byte Reload
	movl	356(%rdi), %esi
	movq	-56(%rsp), %rcx         # 8-byte Reload
.LBB4_18:                               # %for.cond.preheader
	testl	%esi, %esi
	jle	.LBB4_28
# BB#19:                                # %for.body.lr.ph
	movl	%r8d, %r9d
	andl	$1, %r9d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB4_20:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_25 Depth 2
	testl	%r8d, %r8d
	je	.LBB4_27
# BB#21:                                # %for.body.7.lr.ph
                                        #   in Loop: Header=BB4_20 Depth=1
	xorl	%r11d, %r11d
	testl	%r9d, %r9d
	movq	(%rdx,%r10,8), %rsi
	movq	(%rcx,%r10,8), %rbp
	je	.LBB4_23
# BB#22:                                # %for.body.7.prol
                                        #   in Loop: Header=BB4_20 Depth=1
	movzbl	(%rsi), %eax
	movzbl	1(%rsi), %ebx
	addl	%eax, %ebx
	shrl	%ebx
	movb	%bl, (%rbp)
	incq	%rbp
	addq	$2, %rsi
	movl	$1, %r11d
.LBB4_23:                               # %for.body.7.lr.ph.split
                                        #   in Loop: Header=BB4_20 Depth=1
	cmpl	$1, %r8d
	je	.LBB4_26
# BB#24:                                # %for.body.7.lr.ph.split.split
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	%r11d, %r14d
	xorl	$1, %r14d
	movl	%r8d, %eax
	subl	%r11d, %eax
	.align	16, 0x90
.LBB4_25:                               # %for.body.7
                                        #   Parent Loop BB4_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi), %ebx
	movzbl	1(%rsi), %r15d
	addl	%r11d, %ebx
	addl	%r15d, %ebx
	shrl	%ebx
	movb	%bl, (%rbp)
	movzbl	2(%rsi), %ebx
	movzbl	3(%rsi), %r15d
	addl	%r14d, %ebx
	addl	%r15d, %ebx
	shrl	%ebx
	movb	%bl, 1(%rbp)
	addq	$4, %rsi
	addq	$2, %rbp
	addl	$-2, %eax
	jne	.LBB4_25
.LBB4_26:                               # %for.cond.5.for.inc.12_crit_edge
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	356(%rdi), %esi
.LBB4_27:                               # %for.inc.12
                                        #   in Loop: Header=BB4_20 Depth=1
	incq	%r10
	movslq	%esi, %rax
	cmpq	%rax, %r10
	jl	.LBB4_20
.LBB4_28:                               # %for.end.14
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	h2v1_downsample, .Lfunc_end4-h2v1_downsample
	.cfi_endproc

	.align	16, 0x90
	.type	h2v2_downsample,@function
h2v2_downsample:                        # @h2v2_downsample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp50:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp51:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 56
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movl	28(%rsi), %ebp
	movl	36(%rsi), %ebx
	movl	%ebx, %r8d
	imull	%ebp, %r8d
	movl	48(%rdi), %eax
	movl	356(%rdi), %esi
	testl	%esi, %esi
	jle	.LBB5_17
# BB#1:                                 # %entry
	leal	(%r8,%r8), %r9d
	subl	%eax, %r9d
	testl	%r9d, %r9d
	jle	.LBB5_17
# BB#2:                                 # %for.body.lr.ph.i
	movq	%rdi, -64(%rsp)         # 8-byte Spill
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	imull	%ebp, %ebx
	leal	(%rbx,%rbx), %edi
	negl	%edi
	leal	-1(%rax,%rdi), %edi
	cmpl	$-3, %edi
	movl	$-2, %ebp
	cmovgl	%edi, %ebp
	leal	1(%rbp,%rbx,2), %edi
	movl	%edi, %r15d
	subl	%eax, %r15d
	leaq	1(%r15), %r14
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	movq	%r14, %rbx
	andq	%rcx, %rbx
	leaq	-32(%rbx), %r12
	movq	%r12, -8(%rsp)          # 8-byte Spill
	shrl	$5, %r12d
	incl	%r12d
	movl	%r9d, %ebp
	movl	%r9d, -28(%rsp)         # 4-byte Spill
	subl	%ebx, %ebp
	movl	%ebp, -12(%rsp)         # 4-byte Spill
	andl	$3, %r12d
	leaq	16(%rax), %rbp
	movq	%rbp, -24(%rsp)         # 8-byte Spill
	incl	%r15d
	andl	$96, %r15d
	addl	$-32, %r15d
	shrl	$5, %r15d
	incl	%r15d
	andl	$3, %r15d
	negq	%r15
	subl	%eax, %edi
	incq	%rdi
	andq	%rcx, %rdi
	movq	%rdi, -40(%rsp)         # 8-byte Spill
	leaq	112(%rax), %rcx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB5_3:                                # %for.body.5.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #     Child Loop BB5_10 Depth 2
                                        #     Child Loop BB5_14 Depth 2
	movq	(%rdx,%r13,8), %r10
	leaq	(%r10,%rax), %r9
	testq	%rbx, %rbx
	movb	-1(%r10,%rax), %cl
	je	.LBB5_4
# BB#5:                                 # %vector.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	testq	%r12, %r12
	movzbl	%cl, %edi
	movd	%edi, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	movl	$0, %ebp
	je	.LBB5_8
# BB#6:                                 # %vector.body.prol.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-24(%rsp), %rdi         # 8-byte Reload
	leaq	(%r10,%rdi), %rdi
	movq	%r15, %r11
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_7:                                # %vector.body.prol
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -16(%rdi,%rbp)
	movdqu	%xmm0, (%rdi,%rbp)
	addq	$32, %rbp
	incq	%r11
	jne	.LBB5_7
.LBB5_8:                                # %vector.ph.split
                                        #   in Loop: Header=BB5_3 Depth=1
	addq	%rbx, %r9
	cmpq	$96, -8(%rsp)           # 8-byte Folded Reload
	jb	.LBB5_11
# BB#9:                                 # %vector.ph.split.split
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-40(%rsp), %rdi         # 8-byte Reload
	subq	%rbp, %rdi
	addq	-48(%rsp), %r10         # 8-byte Folded Reload
	addq	%rbp, %r10
	.align	16, 0x90
.LBB5_10:                               # %vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%r10)
	movdqu	%xmm0, -96(%r10)
	movdqu	%xmm0, -80(%r10)
	movdqu	%xmm0, -64(%r10)
	movdqu	%xmm0, -48(%r10)
	movdqu	%xmm0, -32(%r10)
	movdqu	%xmm0, -16(%r10)
	movdqu	%xmm0, (%r10)
	subq	$-128, %r10
	addq	$-128, %rdi
	jne	.LBB5_10
.LBB5_11:                               #   in Loop: Header=BB5_3 Depth=1
	movl	-12(%rsp), %ebp         # 4-byte Reload
	movq	%rbx, %rdi
	jmp	.LBB5_12
	.align	16, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_3 Depth=1
	movl	-28(%rsp), %ebp         # 4-byte Reload
	xorl	%edi, %edi
.LBB5_12:                               # %middle.block
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpq	%rdi, %r14
	je	.LBB5_15
# BB#13:                                # %for.body.5.i.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	incl	%ebp
	.align	16, 0x90
.LBB5_14:                               # %for.body.5.i
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%cl, (%r9)
	incq	%r9
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB5_14
.LBB5_15:                               # %for.inc.6.i
                                        #   in Loop: Header=BB5_3 Depth=1
	incq	%r13
	cmpl	%esi, %r13d
	jne	.LBB5_3
# BB#16:                                # %while.cond.preheader.loopexit
	movq	-64(%rsp), %rdi         # 8-byte Reload
	movl	356(%rdi), %esi
	movq	-56(%rsp), %rcx         # 8-byte Reload
.LBB5_17:                               # %while.cond.preheader
	testl	%esi, %esi
	jle	.LBB5_24
# BB#18:                                # %while.body.lr.ph
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB5_19:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_21 Depth 2
	testl	%r8d, %r8d
	je	.LBB5_23
# BB#20:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	%r10, %rax
	orq	$1, %rax
	movq	(%rdx,%rax,8), %rsi
	movq	(%rdx,%r10,8), %rbp
	movq	(%rcx,%r9,8), %r13
	movl	$1, %eax
	movl	%r8d, %r12d
	.align	16, 0x90
.LBB5_21:                               # %for.body
                                        #   Parent Loop BB5_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp), %ebx
	movzbl	1(%rbp), %r11d
	movzbl	(%rsi), %r14d
	movzbl	1(%rsi), %r15d
	addl	%eax, %ebx
	addl	%r11d, %ebx
	addl	%r14d, %ebx
	addl	%r15d, %ebx
	shrl	$2, %ebx
	movb	%bl, (%r13)
	incq	%r13
	xorl	$3, %eax
	addq	$2, %rbp
	addq	$2, %rsi
	decl	%r12d
	jne	.LBB5_21
# BB#22:                                # %for.cond.for.end_crit_edge
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	356(%rdi), %esi
.LBB5_23:                               # %for.end
                                        #   in Loop: Header=BB5_19 Depth=1
	addq	$2, %r10
	incq	%r9
	movslq	%esi, %rax
	cmpq	%rax, %r10
	jl	.LBB5_19
.LBB5_24:                               # %while.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	h2v2_downsample, .Lfunc_end5-h2v2_downsample
	.cfi_endproc

	.align	16, 0x90
	.type	int_downsample,@function
int_downsample:                         # @int_downsample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	movq	%rdi, -56(%rsp)         # 8-byte Spill
	movq	544(%rdi), %rax
	movl	28(%rsi), %ebp
	imull	36(%rsi), %ebp
	movslq	4(%rsi), %rcx
	movzbl	144(%rax,%rcx), %r12d
	movzbl	154(%rax,%rcx), %r10d
	movl	48(%rdi), %edx
	movl	356(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB6_1
# BB#2:                                 # %entry
	movl	%r12d, %r9d
	imull	%ebp, %r9d
	movl	%ebp, -20(%rsp)         # 4-byte Spill
	movl	%r9d, %edi
	subl	%edx, %edi
	testl	%edi, %edi
	jle	.LBB6_18
# BB#3:                                 # %for.body.lr.ph.i
	leal	-1(%rdx), %r14d
	subl	%r9d, %r14d
	cmpl	$-3, %r14d
	movl	$-2, %r15d
	movl	%edi, -48(%rsp)         # 4-byte Spill
	movl	$-2, %ecx
	cmovgl	%r14d, %ecx
	leal	1(%rcx,%r9), %r11d
	subl	%edx, %r11d
	leaq	1(%r11), %rbp
	cmpl	$-3, %r14d
	movl	$-2, %ecx
	cmovgl	%r14d, %ecx
	leal	1(%rcx,%r9), %ebx
	subl	%edx, %ebx
	incq	%rbx
	movabsq	$8589934560, %r13       # imm = 0x1FFFFFFE0
	andq	%r13, %rbx
	addq	$-32, %rbx
	movl	%ebx, %ecx
	shrl	$5, %ecx
	incl	%ecx
	movq	%rbp, %rsi
	andq	%r13, %rsi
	subl	%esi, %edi
	movl	%edi, -32(%rsp)         # 4-byte Spill
	andl	$3, %ecx
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	leaq	16(%rdx), %rcx
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	incl	%r11d
	andl	$96, %r11d
	addl	$-32, %r11d
	shrl	$5, %r11d
	incl	%r11d
	andl	$3, %r11d
	negq	%r11
	cmpl	$-3, %r14d
	cmovlel	%r15d, %r14d
	leal	1(%r14,%r9), %ecx
	subl	%edx, %ecx
	incq	%rcx
	andq	%r13, %rcx
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	leaq	112(%rdx), %rcx
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB6_4:                                # %for.body.5.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #     Child Loop BB6_11 Depth 2
                                        #     Child Loop BB6_15 Depth 2
	movq	-8(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%r13,8), %r15
	leaq	(%r15,%rdx), %r14
	testq	%rsi, %rsi
	movb	-1(%r15,%rdx), %r9b
	je	.LBB6_5
# BB#6:                                 # %vector.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpq	$0, -16(%rsp)           # 8-byte Folded Reload
	movzbl	%r9b, %ecx
	movd	%ecx, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	movl	$0, %ecx
	je	.LBB6_9
# BB#7:                                 # %vector.body.prol.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-40(%rsp), %rcx         # 8-byte Reload
	leaq	(%r15,%rcx), %rdi
	movq	%r11, %r8
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB6_8:                                # %vector.body.prol
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -16(%rdi,%rcx)
	movdqu	%xmm0, (%rdi,%rcx)
	addq	$32, %rcx
	incq	%r8
	jne	.LBB6_8
.LBB6_9:                                # %vector.ph.split
                                        #   in Loop: Header=BB6_4 Depth=1
	addq	%rsi, %r14
	cmpq	$96, %rbx
	jb	.LBB6_12
# BB#10:                                # %vector.ph.split.split
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-72(%rsp), %rdi         # 8-byte Reload
	subq	%rcx, %rdi
	addq	-80(%rsp), %r15         # 8-byte Folded Reload
	addq	%rcx, %r15
	.align	16, 0x90
.LBB6_11:                               # %vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%r15)
	movdqu	%xmm0, -96(%r15)
	movdqu	%xmm0, -80(%r15)
	movdqu	%xmm0, -64(%r15)
	movdqu	%xmm0, -48(%r15)
	movdqu	%xmm0, -32(%r15)
	movdqu	%xmm0, -16(%r15)
	movdqu	%xmm0, (%r15)
	subq	$-128, %r15
	addq	$-128, %rdi
	jne	.LBB6_11
.LBB6_12:                               #   in Loop: Header=BB6_4 Depth=1
	movl	-32(%rsp), %ecx         # 4-byte Reload
	movq	%rsi, %rdi
	jmp	.LBB6_13
	.align	16, 0x90
.LBB6_5:                                #   in Loop: Header=BB6_4 Depth=1
	movl	-48(%rsp), %ecx         # 4-byte Reload
	xorl	%edi, %edi
.LBB6_13:                               # %middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpq	%rdi, %rbp
	je	.LBB6_16
# BB#14:                                # %for.body.5.i.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	incl	%ecx
	.align	16, 0x90
.LBB6_15:                               # %for.body.5.i
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%r9b, (%r14)
	incq	%r14
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB6_15
.LBB6_16:                               # %for.inc.6.i
                                        #   in Loop: Header=BB6_4 Depth=1
	incq	%r13
	cmpl	%eax, %r13d
	jne	.LBB6_4
# BB#17:                                # %while.cond.preheader.loopexit
	movq	-56(%rsp), %rax         # 8-byte Reload
	movl	356(%rax), %eax
	jmp	.LBB6_18
.LBB6_1:
	movl	%ebp, -20(%rsp)         # 4-byte Spill
.LBB6_18:                               # %while.cond.preheader
	testl	%eax, %eax
	movl	-20(%rsp), %edx         # 4-byte Reload
	jle	.LBB6_37
# BB#19:                                # %while.body.lr.ph
	movq	%r10, %rcx
	imulq	%r12, %rcx
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	shrl	%ecx
	movl	%ecx, %ecx
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	leal	-1(%r12), %ebx
	incq	%rbx
	movl	%r12d, %r15d
	andl	$3, %r15d
	movq	%rbx, %r8
	subq	%r15, %r8
	leal	-1(%r12), %esi
	incq	%rsi
	movl	%r12d, %ecx
	andl	$3, %ecx
	subq	%rcx, %rsi
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_20:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_22 Depth 2
                                        #       Child Loop BB6_24 Depth 3
                                        #         Child Loop BB6_28 Depth 4
                                        #         Child Loop BB6_32 Depth 4
	testl	%edx, %edx
	je	.LBB6_36
# BB#21:                                # %for.cond.16.preheader.lr.ph
                                        #   in Loop: Header=BB6_20 Depth=1
	movq	-64(%rsp), %rax         # 8-byte Reload
	movq	(%rax,%rsi,8), %r14
	movq	%rsi, -48(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB6_22:                               # %for.cond.16.preheader
                                        #   Parent Loop BB6_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_24 Depth 3
                                        #         Child Loop BB6_28 Depth 4
                                        #         Child Loop BB6_32 Depth 4
	testb	%r10b, %r10b
	movl	%edi, %edi
	movl	$0, %eax
	je	.LBB6_34
# BB#23:                                # %for.body.19.lr.ph
                                        #   in Loop: Header=BB6_22 Depth=2
	xorl	%edx, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB6_24:                               # %for.body.19
                                        #   Parent Loop BB6_20 Depth=1
                                        #     Parent Loop BB6_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_28 Depth 4
                                        #         Child Loop BB6_32 Depth 4
	testb	%r12b, %r12b
	je	.LBB6_33
# BB#25:                                # %for.body.25.lr.ph
                                        #   in Loop: Header=BB6_24 Depth=3
	leaq	(%rdx,%rbp), %rcx
	movq	-8(%rsp), %rsi          # 8-byte Reload
	movq	(%rsi,%rcx,8), %rcx
	leaq	(%rcx,%rdi), %r11
	xorl	%esi, %esi
	cmpq	%r15, %rbx
	movd	%rax, %xmm1
	pxor	%xmm2, %xmm2
	jne	.LBB6_27
# BB#26:                                #   in Loop: Header=BB6_24 Depth=3
	xorl	%ecx, %ecx
	jmp	.LBB6_30
	.align	16, 0x90
.LBB6_27:                               # %vector.body136.preheader
                                        #   in Loop: Header=BB6_24 Depth=3
	addq	%r8, %r11
	leaq	2(%rcx,%rdi), %rax
	pxor	%xmm2, %xmm2
	movq	-16(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB6_28:                               # %vector.body136
                                        #   Parent Loop BB6_20 Depth=1
                                        #     Parent Loop BB6_22 Depth=2
                                        #       Parent Loop BB6_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzwl	-2(%rax), %ecx
	movd	%ecx, %xmm3
	movzwl	(%rax), %ecx
	movd	%ecx, %xmm4
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	punpckldq	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	paddq	%xmm3, %xmm1
	paddq	%xmm4, %xmm2
	addq	$4, %rax
	addq	$-4, %r13
	jne	.LBB6_28
# BB#29:                                #   in Loop: Header=BB6_24 Depth=3
	movq	%r8, %rsi
	movl	%r8d, %ecx
.LBB6_30:                               # %middle.block137
                                        #   in Loop: Header=BB6_24 Depth=3
	paddq	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	paddq	%xmm1, %xmm2
	movd	%xmm2, %rax
	cmpq	%rsi, %rbx
	je	.LBB6_33
# BB#31:                                # %for.body.25.preheader
                                        #   in Loop: Header=BB6_24 Depth=3
	movl	%r12d, %esi
	subl	%ecx, %esi
	.align	16, 0x90
.LBB6_32:                               # %for.body.25
                                        #   Parent Loop BB6_20 Depth=1
                                        #     Parent Loop BB6_22 Depth=2
                                        #       Parent Loop BB6_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r11), %ecx
	incq	%r11
	addq	%rcx, %rax
	decl	%esi
	jne	.LBB6_32
.LBB6_33:                               # %for.inc.29
                                        #   in Loop: Header=BB6_24 Depth=3
	incq	%rdx
	cmpl	%r10d, %edx
	jne	.LBB6_24
.LBB6_34:                               # %for.end.31
                                        #   in Loop: Header=BB6_22 Depth=2
	addq	-40(%rsp), %rax         # 8-byte Folded Reload
	cqto
	idivq	-32(%rsp)               # 8-byte Folded Reload
	movb	%al, (%r14)
	incq	%r14
	incl	%r9d
	addl	%r12d, %edi
	movl	-20(%rsp), %edx         # 4-byte Reload
	cmpl	%edx, %r9d
	jne	.LBB6_22
# BB#35:                                # %for.cond.for.end.41_crit_edge
                                        #   in Loop: Header=BB6_20 Depth=1
	movq	-56(%rsp), %rax         # 8-byte Reload
	movl	356(%rax), %eax
	movq	-48(%rsp), %rsi         # 8-byte Reload
.LBB6_36:                               # %for.end.41
                                        #   in Loop: Header=BB6_20 Depth=1
	addq	%r10, %rbp
	incq	%rsi
	movslq	%eax, %rcx
	cmpq	%rcx, %rbp
	jl	.LBB6_20
.LBB6_37:                               # %while.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	int_downsample, .Lfunc_end6-int_downsample
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
