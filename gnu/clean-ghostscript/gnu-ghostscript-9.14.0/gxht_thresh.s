	.text
	.file	"gxht_thresh.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.zero	16,128
	.text
	.globl	gx_ht_threshold_row_bit_sub
	.align	16, 0x90
	.type	gx_ht_threshold_row_bit_sub,@function
gx_ht_threshold_row_bit_sub:            # @gx_ht_threshold_row_bit_sub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movq	%rsi, %rcx
	movl	56(%rsp), %r15d
	testl	%r15d, %r15d
	jle	.LBB0_8
# BB#1:                                 # %for.body.lr.ph
	movl	64(%rsp), %esi
	addl	$15, %r9d
	subl	%esi, %r9d
	sarl	$4, %r9d
	movslq	%esi, %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	leaq	(%rdi,%rax), %rax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movslq	%r8d, %r8
	movslq	%edx, %r12
	xorl	%r13d, %r13d
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [9259542123273814144,9259542123273814144]
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movq	%r13, %rax
	imulq	%r12, %rax
	leaq	(%rax,%rcx), %r10
	movq	%r13, %rax
	imulq	%r8, %rax
	movq	-8(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %r14
	testl	%esi, %esi
	jle	.LBB0_3
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
	movdqu	(%r10), %xmm1
	movdqu	(%rdi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %eax
	movzbl	%al, %ebp
	shrl	$8, %eax
	movb	bitreverse(%rbp), %bl
	movb	%bl, (%r14)
	movb	bitreverse(%rax), %al
	movb	%al, 1(%r14)
	addq	$2, %r14
	addq	-16(%rsp), %r10         # 8-byte Folded Reload
	movq	-24(%rsp), %rax         # 8-byte Reload
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rdi, %rax
.LBB0_5:                                # %for.cond.10.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%r9d, %r9d
	movl	%r9d, %ebp
	jle	.LBB0_7
	.align	16, 0x90
.LBB0_6:                                # %for.body.12
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	(%r10), %xmm1
	pxor	%xmm0, %xmm1
	movdqa	(%rax), %xmm2
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %ebx
	movzbl	%bl, %r11d
	movb	bitreverse(%r11), %dl
	movb	%dl, (%r14)
	shrl	$8, %ebx
	movb	bitreverse(%rbx), %dl
	movb	%dl, 1(%r14)
	addq	$16, %r10
	addq	$16, %rax
	addq	$2, %r14
	decl	%ebp
	jne	.LBB0_6
.LBB0_7:                                # %for.inc.16
                                        #   in Loop: Header=BB0_2 Depth=1
	incq	%r13
	cmpl	%r15d, %r13d
	jne	.LBB0_2
.LBB0_8:                                # %for.end.18
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_ht_threshold_row_bit_sub, .Lfunc_end0-gx_ht_threshold_row_bit_sub
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.zero	16,128
	.text
	.globl	gx_ht_threshold_row_bit
	.align	16, 0x90
	.type	gx_ht_threshold_row_bit,@function
gx_ht_threshold_row_bit:                # @gx_ht_threshold_row_bit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 56
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movq	%rsi, %rcx
	movl	56(%rsp), %r15d
	testl	%r15d, %r15d
	jle	.LBB1_8
# BB#1:                                 # %for.body.lr.ph
	movl	64(%rsp), %esi
	addl	$15, %r9d
	subl	%esi, %r9d
	sarl	$4, %r9d
	movslq	%esi, %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	leaq	(%rdi,%rax), %rax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movslq	%r8d, %r8
	movslq	%edx, %r12
	xorl	%r13d, %r13d
	movdqa	.LCPI1_0(%rip), %xmm0   # xmm0 = [9259542123273814144,9259542123273814144]
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	movq	%r13, %rax
	imulq	%r12, %rax
	leaq	(%rax,%rcx), %r10
	movq	%r13, %rax
	imulq	%r8, %rax
	movq	-8(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %r14
	testl	%esi, %esi
	jle	.LBB1_3
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	movdqu	(%rdi), %xmm1
	movdqu	(%r10), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %eax
	movzbl	%al, %ebp
	shrl	$8, %eax
	movb	bitreverse(%rbp), %bl
	movb	%bl, (%r14)
	movb	bitreverse(%rax), %al
	movb	%al, 1(%r14)
	addq	$2, %r14
	addq	-16(%rsp), %r10         # 8-byte Folded Reload
	movq	-24(%rsp), %rax         # 8-byte Reload
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%rdi, %rax
.LBB1_5:                                # %for.cond.10.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r9d, %r9d
	movl	%r9d, %ebp
	jle	.LBB1_7
	.align	16, 0x90
.LBB1_6:                                # %for.body.12
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	(%rax), %xmm1
	pxor	%xmm0, %xmm1
	movdqa	(%r10), %xmm2
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %ebx
	movzbl	%bl, %r11d
	movb	bitreverse(%r11), %dl
	movb	%dl, (%r14)
	shrl	$8, %ebx
	movb	bitreverse(%rbx), %dl
	movb	%dl, 1(%r14)
	addq	$16, %r10
	addq	$16, %rax
	addq	$2, %r14
	decl	%ebp
	jne	.LBB1_6
.LBB1_7:                                # %for.inc.16
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%r13
	cmpl	%r15d, %r13d
	jne	.LBB1_2
.LBB1_8:                                # %for.end.18
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gx_ht_threshold_row_bit, .Lfunc_end1-gx_ht_threshold_row_bit
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.zero	16,128
	.text
	.globl	gx_ht_threshold_landscape_sub
	.align	16, 0x90
	.type	gx_ht_threshold_landscape_sub,@function
gx_ht_threshold_landscape_sub:          # @gx_ht_threshold_landscape_sub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 272
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movl	%ecx, %r11d
	movq	%rdi, -128(%rsp)        # 8-byte Spill
	movl	544(%rsp), %ecx
	movq	536(%rsp), %r14
	xorl	%r9d, %r9d
	cmpl	$0, 540(%rsp)
	jg	.LBB2_2
# BB#1:                                 # %select.mid
	leal	1(%r14), %r9d
.LBB2_2:                                # %select.end
	testl	%ecx, %ecx
	jle	.LBB2_19
# BB#3:                                 # %for.body.lr.ph
	movq	%r11, -120(%rsp)        # 8-byte Spill
	leaq	272(%rsp), %r10
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	movslq	%r9d, %r11
	leal	-1(%rcx), %eax
	leaq	1(%rax), %r15
	xorl	%r13d, %r13d
	movq	%r15, %r12
	andq	%r8, %r12
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB2_11
# BB#4:                                 # %vector.body.preheader
	leaq	1(%rax), %rdi
	andq	%r8, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbp
	shrq	$3, %rbp
	xorl	%ebx, %ebx
	btq	$3, %rdi
	jb	.LBB2_5
# BB#6:                                 # %vector.body.prol
	movdqu	4(%r10,%r11,4), %xmm0
	movdqu	20(%r10,%r11,4), %xmm1
	movdqa	%xmm0, -112(%rsp)
	movdqa	%xmm1, -96(%rsp)
	movl	$8, %ebx
	jmp	.LBB2_7
.LBB2_5:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB2_7:                                # %vector.body.preheader.split
	testq	%rbp, %rbp
	je	.LBB2_10
# BB#8:                                 # %vector.body.preheader.split.split
	incq	%rax
	andq	%r8, %rax
	subq	%rbx, %rax
	leaq	(%rbx,%r11), %rdi
	leaq	52(%r10,%rdi,4), %rbp
	leaq	-64(%rsp,%rbx,4), %rbx
	.align	16, 0x90
.LBB2_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rbp), %xmm2
	movdqu	-32(%rbp), %xmm3
	movdqa	%xmm2, -48(%rbx)
	movdqa	%xmm3, -32(%rbx)
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	movdqu	-16(%rbp), %xmm2
	movdqu	(%rbp), %xmm3
	movdqa	%xmm2, -16(%rbx)
	movdqa	%xmm3, (%rbx)
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	addq	$64, %rbp
	addq	$64, %rbx
	addq	$-16, %rax
	jne	.LBB2_9
.LBB2_10:
	movq	%r12, %r13
.LBB2_11:                               # %middle.block
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r8d
	cmpq	%r13, %r15
	jne	.LBB2_13
# BB#12:
	movq	-120(%rsp), %r11        # 8-byte Reload
	jmp	.LBB2_15
.LBB2_13:                               # %for.body.preheader
	leaq	-112(%rsp,%r13,4), %rbp
	leaq	(%r11,%r13), %rdi
	leaq	4(%r10,%rdi,4), %rbx
	movl	%ecx, %edi
	subl	%r13d, %edi
	movq	-120(%rsp), %r11        # 8-byte Reload
	.align	16, 0x90
.LBB2_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	movl	%eax, (%rbp)
	addl	%eax, %r8d
	addq	$4, %rbp
	addq	$4, %rbx
	decl	%edi
	jne	.LBB2_14
.LBB2_15:                               # %for.end
	cmpl	$65, %r8d
	jl	.LBB2_19
# BB#16:                                # %if.then.9
	shrq	$32, %r14
	addl	$-64, %r8d
	testl	%r14d, %r14d
	jle	.LBB2_18
# BB#17:                                # %if.then.12
	movslq	%ecx, %rax
	subl	%r8d, -116(%rsp,%rax,4)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.17
	subl	%r8d, -112(%rsp)
.LBB2_19:                               # %for.cond.23.preheader
	testl	%r11d, %r11d
	jle	.LBB2_32
# BB#20:                                # %for.body.25.preheader
	leaq	147(%rsp), %r10
	movdqa	.LCPI2_0(%rip), %xmm0   # xmm0 = [9259542123273814144,9259542123273814144]
	.align	16, 0x90
.LBB2_21:                               # %for.body.25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_23 Depth 2
                                        #       Child Loop BB2_26 Depth 3
                                        #       Child Loop BB2_29 Depth 3
	movq	%r11, -120(%rsp)        # 8-byte Spill
	testl	%ecx, %ecx
	jle	.LBB2_31
# BB#22:                                # %for.body.30.lr.ph
                                        #   in Loop: Header=BB2_21 Depth=1
	movslq	%r9d, %rax
	movq	-128(%rsp), %rdi        # 8-byte Reload
	leaq	(%rax,%rdi), %r11
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	movl	%ecx, %r14d
	.align	16, 0x90
.LBB2_23:                               # %for.body.30
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_26 Depth 3
                                        #       Child Loop BB2_29 Depth 3
	movb	(%r11), %bl
	movl	-112(%rsp,%r15,4), %r13d
	movslq	%r12d, %rax
	leal	-1(%r13), %r8d
	testb	$3, %r13b
	je	.LBB2_24
# BB#25:                                # %do.body.prol.preheader
                                        #   in Loop: Header=BB2_23 Depth=2
	movl	%r13d, %edi
	andl	$3, %edi
	negl	%edi
	movl	%r13d, %ebp
	.align	16, 0x90
.LBB2_26:                               # %do.body.prol
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%bl, 144(%rsp,%rax)
	decl	%ebp
	incq	%rax
	incl	%edi
	jne	.LBB2_26
	jmp	.LBB2_27
	.align	16, 0x90
.LBB2_24:                               #   in Loop: Header=BB2_23 Depth=2
	movl	%r13d, %ebp
.LBB2_27:                               # %for.body.30.split
                                        #   in Loop: Header=BB2_23 Depth=2
	cmpl	$3, %r8d
	jb	.LBB2_30
# BB#28:                                # %for.body.30.split.split
                                        #   in Loop: Header=BB2_23 Depth=2
	leaq	(%rax,%r10), %rax
	.align	16, 0x90
.LBB2_29:                               # %do.body
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%bl, -3(%rax)
	movb	%bl, -2(%rax)
	movb	%bl, -1(%rax)
	movb	%bl, (%rax)
	addq	$4, %rax
	addl	$-4, %ebp
	jne	.LBB2_29
.LBB2_30:                               # %do.end
                                        #   in Loop: Header=BB2_23 Depth=2
	addl	%r13d, %r12d
	incq	%r15
	incq	%r11
	cmpl	$1, %r14d
	leal	-1(%r14), %eax
	movl	%eax, %r14d
	jg	.LBB2_23
.LBB2_31:                               # %do.body.41.preheader
                                        #   in Loop: Header=BB2_21 Depth=1
	addl	$64, %r9d
	movdqa	(%rsi), %xmm1
	pxor	%xmm0, %xmm1
	movdqa	144(%rsp), %xmm2
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %eax
	movzbl	%al, %edi
	movb	bitreverse(%rdi), %bl
	movb	%bl, (%rdx)
	shrl	$8, %eax
	movb	bitreverse(%rax), %al
	movb	%al, 1(%rdx)
	movdqa	16(%rsi), %xmm1
	pxor	%xmm0, %xmm1
	movdqa	160(%rsp), %xmm2
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %eax
	movzbl	%al, %edi
	movb	bitreverse(%rdi), %bl
	movb	%bl, 2(%rdx)
	shrl	$8, %eax
	movb	bitreverse(%rax), %al
	movb	%al, 3(%rdx)
	movdqa	32(%rsi), %xmm1
	pxor	%xmm0, %xmm1
	movdqa	176(%rsp), %xmm2
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %eax
	movzbl	%al, %edi
	movb	bitreverse(%rdi), %bl
	movb	%bl, 4(%rdx)
	shrl	$8, %eax
	movb	bitreverse(%rax), %al
	movb	%al, 5(%rdx)
	movdqa	48(%rsi), %xmm1
	pxor	%xmm0, %xmm1
	movdqa	192(%rsp), %xmm2
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %eax
	movzbl	%al, %edi
	movb	bitreverse(%rdi), %bl
	movb	%bl, 6(%rdx)
	shrl	$8, %eax
	movb	bitreverse(%rax), %al
	movb	%al, 7(%rdx)
	addq	$8, %rdx
	addq	$64, %rsi
	movq	-120(%rsp), %rax        # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movl	%eax, %r11d
	jg	.LBB2_21
.LBB2_32:                               # %for.end.51
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gx_ht_threshold_landscape_sub, .Lfunc_end2-gx_ht_threshold_landscape_sub
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.zero	16,128
	.text
	.globl	gx_ht_threshold_landscape
	.align	16, 0x90
	.type	gx_ht_threshold_landscape,@function
gx_ht_threshold_landscape:              # @gx_ht_threshold_landscape
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 272
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movl	%ecx, %r11d
	movq	%rdi, -128(%rsp)        # 8-byte Spill
	movl	544(%rsp), %ecx
	movq	536(%rsp), %r14
	xorl	%r9d, %r9d
	cmpl	$0, 540(%rsp)
	jg	.LBB3_2
# BB#1:                                 # %select.mid
	leal	1(%r14), %r9d
.LBB3_2:                                # %select.end
	testl	%ecx, %ecx
	jle	.LBB3_19
# BB#3:                                 # %for.body.lr.ph
	movq	%r11, -120(%rsp)        # 8-byte Spill
	leaq	272(%rsp), %r10
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	movslq	%r9d, %r11
	leal	-1(%rcx), %eax
	leaq	1(%rax), %r15
	xorl	%r13d, %r13d
	movq	%r15, %r12
	andq	%r8, %r12
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB3_11
# BB#4:                                 # %vector.body.preheader
	leaq	1(%rax), %rdi
	andq	%r8, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbp
	shrq	$3, %rbp
	xorl	%ebx, %ebx
	btq	$3, %rdi
	jb	.LBB3_5
# BB#6:                                 # %vector.body.prol
	movdqu	4(%r10,%r11,4), %xmm0
	movdqu	20(%r10,%r11,4), %xmm1
	movdqa	%xmm0, -112(%rsp)
	movdqa	%xmm1, -96(%rsp)
	movl	$8, %ebx
	jmp	.LBB3_7
.LBB3_5:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB3_7:                                # %vector.body.preheader.split
	testq	%rbp, %rbp
	je	.LBB3_10
# BB#8:                                 # %vector.body.preheader.split.split
	incq	%rax
	andq	%r8, %rax
	subq	%rbx, %rax
	leaq	(%rbx,%r11), %rdi
	leaq	52(%r10,%rdi,4), %rbp
	leaq	-64(%rsp,%rbx,4), %rbx
	.align	16, 0x90
.LBB3_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rbp), %xmm2
	movdqu	-32(%rbp), %xmm3
	movdqa	%xmm2, -48(%rbx)
	movdqa	%xmm3, -32(%rbx)
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	movdqu	-16(%rbp), %xmm2
	movdqu	(%rbp), %xmm3
	movdqa	%xmm2, -16(%rbx)
	movdqa	%xmm3, (%rbx)
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	addq	$64, %rbp
	addq	$64, %rbx
	addq	$-16, %rax
	jne	.LBB3_9
.LBB3_10:
	movq	%r12, %r13
.LBB3_11:                               # %middle.block
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r8d
	cmpq	%r13, %r15
	jne	.LBB3_13
# BB#12:
	movq	-120(%rsp), %r11        # 8-byte Reload
	jmp	.LBB3_15
.LBB3_13:                               # %for.body.preheader
	leaq	-112(%rsp,%r13,4), %rbp
	leaq	(%r11,%r13), %rdi
	leaq	4(%r10,%rdi,4), %rbx
	movl	%ecx, %edi
	subl	%r13d, %edi
	movq	-120(%rsp), %r11        # 8-byte Reload
	.align	16, 0x90
.LBB3_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	movl	%eax, (%rbp)
	addl	%eax, %r8d
	addq	$4, %rbp
	addq	$4, %rbx
	decl	%edi
	jne	.LBB3_14
.LBB3_15:                               # %for.end
	cmpl	$65, %r8d
	jl	.LBB3_19
# BB#16:                                # %if.then.9
	shrq	$32, %r14
	addl	$-64, %r8d
	testl	%r14d, %r14d
	jle	.LBB3_18
# BB#17:                                # %if.then.12
	movslq	%ecx, %rax
	subl	%r8d, -116(%rsp,%rax,4)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.17
	subl	%r8d, -112(%rsp)
.LBB3_19:                               # %for.cond.23.preheader
	testl	%r11d, %r11d
	jle	.LBB3_32
# BB#20:                                # %for.body.25.lr.ph
	leaq	147(%rsp), %r10
	movdqa	.LCPI3_0(%rip), %xmm0   # xmm0 = [9259542123273814144,9259542123273814144]
	.align	16, 0x90
.LBB3_21:                               # %for.body.25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_23 Depth 2
                                        #       Child Loop BB3_26 Depth 3
                                        #       Child Loop BB3_29 Depth 3
	movq	%r11, -120(%rsp)        # 8-byte Spill
	testl	%ecx, %ecx
	jle	.LBB3_31
# BB#22:                                # %for.body.30.lr.ph
                                        #   in Loop: Header=BB3_21 Depth=1
	movslq	%r9d, %rax
	movq	-128(%rsp), %rdi        # 8-byte Reload
	leaq	(%rax,%rdi), %r11
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	movl	%ecx, %r14d
	.align	16, 0x90
.LBB3_23:                               # %for.body.30
                                        #   Parent Loop BB3_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_26 Depth 3
                                        #       Child Loop BB3_29 Depth 3
	movb	(%r11), %bl
	movl	-112(%rsp,%r15,4), %r13d
	movslq	%r12d, %rax
	leal	-1(%r13), %r8d
	testb	$3, %r13b
	je	.LBB3_24
# BB#25:                                # %do.body.prol.preheader
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	%r13d, %edi
	andl	$3, %edi
	negl	%edi
	movl	%r13d, %ebp
	.align	16, 0x90
.LBB3_26:                               # %do.body.prol
                                        #   Parent Loop BB3_21 Depth=1
                                        #     Parent Loop BB3_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%bl, 144(%rsp,%rax)
	decl	%ebp
	incq	%rax
	incl	%edi
	jne	.LBB3_26
	jmp	.LBB3_27
	.align	16, 0x90
.LBB3_24:                               #   in Loop: Header=BB3_23 Depth=2
	movl	%r13d, %ebp
.LBB3_27:                               # %for.body.30.split
                                        #   in Loop: Header=BB3_23 Depth=2
	cmpl	$3, %r8d
	jb	.LBB3_30
# BB#28:                                # %for.body.30.split.split
                                        #   in Loop: Header=BB3_23 Depth=2
	leaq	(%rax,%r10), %rax
	.align	16, 0x90
.LBB3_29:                               # %do.body
                                        #   Parent Loop BB3_21 Depth=1
                                        #     Parent Loop BB3_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%bl, -3(%rax)
	movb	%bl, -2(%rax)
	movb	%bl, -1(%rax)
	movb	%bl, (%rax)
	addq	$4, %rax
	addl	$-4, %ebp
	jne	.LBB3_29
.LBB3_30:                               # %do.end
                                        #   in Loop: Header=BB3_23 Depth=2
	addl	%r13d, %r12d
	incq	%r15
	incq	%r11
	cmpl	$1, %r14d
	leal	-1(%r14), %eax
	movl	%eax, %r14d
	jg	.LBB3_23
.LBB3_31:                               # %do.body.41.preheader
                                        #   in Loop: Header=BB3_21 Depth=1
	addl	$64, %r9d
	movdqa	144(%rsp), %xmm1
	pxor	%xmm0, %xmm1
	movdqa	(%rsi), %xmm2
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %eax
	movzbl	%al, %edi
	movb	bitreverse(%rdi), %bl
	movb	%bl, (%rdx)
	shrl	$8, %eax
	movb	bitreverse(%rax), %al
	movb	%al, 1(%rdx)
	movdqa	160(%rsp), %xmm1
	pxor	%xmm0, %xmm1
	movdqa	16(%rsi), %xmm2
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %eax
	movzbl	%al, %edi
	movb	bitreverse(%rdi), %bl
	movb	%bl, 2(%rdx)
	shrl	$8, %eax
	movb	bitreverse(%rax), %al
	movb	%al, 3(%rdx)
	movdqa	176(%rsp), %xmm1
	pxor	%xmm0, %xmm1
	movdqa	32(%rsi), %xmm2
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %eax
	movzbl	%al, %edi
	movb	bitreverse(%rdi), %bl
	movb	%bl, 4(%rdx)
	shrl	$8, %eax
	movb	bitreverse(%rax), %al
	movb	%al, 5(%rdx)
	movdqa	192(%rsp), %xmm1
	pxor	%xmm0, %xmm1
	movdqa	48(%rsi), %xmm2
	pxor	%xmm0, %xmm2
	psubsb	%xmm2, %xmm1
	pmovmskb	%xmm1, %eax
	movzbl	%al, %edi
	movb	bitreverse(%rdi), %bl
	movb	%bl, 6(%rdx)
	shrl	$8, %eax
	movb	bitreverse(%rax), %al
	movb	%al, 7(%rdx)
	addq	$8, %rdx
	addq	$64, %rsi
	movq	-120(%rsp), %rax        # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movl	%eax, %r11d
	jg	.LBB3_21
.LBB3_32:                               # %for.end.51
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gx_ht_threshold_landscape, .Lfunc_end3-gx_ht_threshold_landscape
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI4_1:
	.quad	4624633867356078080     # double 15
.LCPI4_2:
	.quad	4589168020290535424     # double 0.0625
.LCPI4_3:
	.quad	4566650022153682944     # double 0.001953125
.LCPI4_4:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gxht_thresh_image_init
	.align	16, 0x90
	.type	gxht_thresh_image_init,@function
gxht_thresh_image_init:                 # @gxht_thresh_image_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 64
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	16(%r13), %rsi
	movl	100(%rsi), %r15d
	cmpl	$1, %r15d
	jg	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	movzbl	110(%rsi), %eax
	cmpl	$255, %eax
	je	.LBB4_2
# BB#3:                                 # %cond.false
	leaq	112(%rsi), %rax
	jmp	.LBB4_4
.LBB4_2:                                # %cond.true
	leaq	116(%rsi), %rax
.LBB4_4:                                # %cond.end
	xorl	%r14d, %r14d
	cmpl	$30, (%rax)
	ja	.LBB4_14
# BB#5:                                 # %if.then
	movq	1216(%r13), %rdx
	movl	$-1, %eax
	testq	%rdx, %rdx
	je	.LBB4_31
# BB#6:                                 # %land.lhs.true
	movq	392(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB4_31
# BB#7:                                 # %for.cond.preheader
	cmpl	$0, 208(%rcx)
	je	.LBB4_14
# BB#8:                                 # %for.body.preheader
	movq	200(%rcx), %rdi
	xorl	%ecx, %ecx
	callq	gx_ht_construct_threshold
	movl	%eax, %r14d
	movl	$168, %ebx
	testl	%r14d, %r14d
	js	.LBB4_12
# BB#9:
	movl	$1, %ebp
	.align	16, 0x90
.LBB4_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	1216(%r13), %rdx
	movq	392(%rdx), %rax
	movq	16(%r13), %rsi
	cmpl	208(%rax), %ebp
	jae	.LBB4_13
# BB#11:                                # %for.cond.for.body_crit_edge
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	200(%rax), %rdi
	addq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	gx_ht_construct_threshold
	movl	%eax, %r14d
	incl	%ebp
	addq	$168, %rbx
	testl	%r14d, %r14d
	jns	.LBB4_10
.LBB4_12:                               # %if.then.27
	movl	$.L__func__.gxht_thresh_image_init, %edi
	movl	$.L.str, %esi
	movl	$592, %edx              # imm = 0x250
	movl	$1, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	movl	%r14d, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.LBB4_13:                               # %for.cond.if.end.30.loopexit_crit_edge
	movl	100(%rsi), %r15d
.LBB4_14:                               # %if.end.30
	cmpl	$1, 1264(%r13)
	jne	.LBB4_27
# BB#15:                                # %if.then.36
	movl	1188(%r13), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	subl	$-128, %ecx
	sarl	$8, %ecx
	leal	63(%rcx), %eax
	sarl	$31, %eax
	shrl	$26, %eax
	leal	63(%rcx,%rax), %eax
	movl	%eax, %esi
	sarl	$6, %esi
	andl	$-64, %eax
	movl	%eax, 1256(%r13)
	movq	24(%r13), %rdi
	imull	%r15d, %esi
	shll	$12, %esi
	orl	$16, %esi
	movl	$.L.str.2, %edx
	callq	*64(%rdi)
	movq	%rax, 1248(%r13)
	movq	24(%r13), %rdi
	movl	1256(%r13), %esi
	shll	$6, %esi
	orl	$16, %esi
	movl	$.L.str.2, %edx
	callq	*64(%rdi)
	movq	%rax, 24488(%r13)
	movq	24(%r13), %rdi
	imull	1256(%r13), %r15d
	shll	$3, %r15d
	movl	$.L.str.2, %edx
	movl	%r15d, %esi
	callq	*64(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 24464(%r13)
	movl	1256(%r13), %eax
	movl	%eax, 24480(%r13)
	movl	%eax, 24472(%r13)
	movl	$-1, %eax
	cmpq	$0, 1248(%r13)
	je	.LBB4_31
# BB#16:                                # %lor.lhs.false.84
	cmpq	$0, 24488(%r13)
	je	.LBB4_31
# BB#17:                                # %lor.lhs.false.84
	testq	%rcx, %rcx
	je	.LBB4_31
# BB#18:                                # %if.end.93
	movl	$0, 24504(%r13)
	movl	$0, 24776(%r13)
	movl	1192(%r13), %eax
	sarl	$31, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	orl	$1, %eax
	movl	%ecx, 24768(%r13)
	movl	%eax, 24772(%r13)
	movl	1188(%r13), %eax
	testl	%eax, %eax
	js	.LBB4_19
# BB#21:                                # %if.else.162
	movl	$0, 24784(%r13)
	movslq	1472(%r13), %rax
	movl	%eax, %ecx
	andl	$-2147483393, %ecx      # imm = 0xFFFFFFFF800000FF
	cmpl	$-2147483520, %ecx      # imm = 0xFFFFFFFF80000080
	jne	.LBB4_24
# BB#22:                                # %cond.true.182
	sarl	$8, %eax
	incl	%eax
	jmp	.LBB4_25
.LBB4_27:                               # %if.else.213
	leaq	24504(%r13), %rdi
	xorl	%esi, %esi
	movl	$288, %edx              # imm = 0x120
	callq	memset
	movslq	1184(%r13), %rax
	movslq	1452(%r13), %rbx
	leaq	127(%rax,%rbx), %rax
	sarq	$8, %rax
	addq	$127, %rbx
	sarq	$8, %rbx
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm0
	callq	fabs
	cvttsd2si	%xmm0, %r12d
	negl	%ebx
	andl	$7, %ebx
	movl	%ebx, 24476(%r13)
	setne	%al
	movzbl	%al, %eax
	leal	136(%r12,%rax,2), %ebx
	sarl	$6, %ebx
	shll	$3, %ebx
	movl	%ebx, 24472(%r13)
	movl	1176(%r13), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	mulsd	.LCPI4_0(%rip), %xmm0
	cvtsi2ssl	572(%r13), %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %ebp
	movq	24(%r13), %rdi
	movl	%ebp, %esi
	imull	%r15d, %esi
	imull	%ebx, %esi
	movl	$.L.str.2, %edx
	callq	*64(%rdi)
	movq	%rax, 24464(%r13)
	movl	24472(%r13), %eax
	imull	%ebp, %eax
	movl	%eax, 24480(%r13)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm0
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI4_2(%rip), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %esi
	shll	$4, %esi
	movl	%esi, 1256(%r13)
	movq	24(%r13), %rdi
	imull	%r15d, %esi
	movl	$.L.str.2, %edx
	callq	*64(%rdi)
	movq	%rax, 1248(%r13)
	movq	24(%r13), %rdi
	imull	1256(%r13), %ebp
	movl	$.L.str.2, %edx
	movl	%ebp, %esi
	callq	*64(%rdi)
	movq	%rax, 24488(%r13)
	testq	%rax, %rax
	movl	$-1, %eax
	je	.LBB4_31
# BB#28:                                # %if.else.213
	movq	1248(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB4_31
# BB#29:                                # %lor.lhs.false.331
	cmpq	$0, 24464(%r13)
	jne	.LBB4_30
	jmp	.LBB4_31
.LBB4_19:                               # %if.then.111
	movl	$1, 24784(%r13)
	addl	1472(%r13), %eax
	movl	%eax, %ecx
	andl	$-2147483393, %ecx      # imm = 0xFFFFFFFF800000FF
	cmpl	$-2147483520, %ecx      # imm = 0xFFFFFFFF80000080
	jne	.LBB4_23
# BB#20:                                # %cond.true.135
	sarl	$8, %eax
	incl	%eax
	movl	%eax, 24788(%r13)
	jmp	.LBB4_26
.LBB4_23:                               # %cond.false.146
	cltq
.LBB4_24:                               # %cond.false.190
	addq	$127, %rax
	shrq	$8, %rax
.LBB4_25:                               # %cond.end.200
	movl	%eax, 24788(%r13)
.LBB4_26:                               # %if.end.204
	leaq	24508(%r13), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	$0, 24780(%r13)
	movl	$0, 24476(%r13)
.LBB4_30:                               # %if.end.338
	movss	1120(%r13), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI4_3(%rip), %xmm0
	mulsd	.LCPI4_4(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 1312(%r13)
	movl	%r14d, %eax
.LBB4_31:                               # %cleanup.343
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gxht_thresh_image_init, .Lfunc_end4-gxht_thresh_image_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.zero	16,128
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_1:
	.long	0                       # float 0
	.text
	.globl	gxht_thresh_planes
	.align	16, 0x90
	.type	gxht_thresh_planes,@function
gxht_thresh_planes:                     # @gxht_thresh_planes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
	subq	$1128, %rsp             # imm = 0x468
.Ltmp69:
	.cfi_def_cfa_offset 1184
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%rbp, 352(%rsp)         # 8-byte Spill
	movq	%r8, %r14
	movq	%r14, 408(%rsp)         # 8-byte Spill
	movl	%ecx, 480(%rsp)         # 4-byte Spill
	movq	%rdx, 440(%rsp)         # 8-byte Spill
	movl	%esi, 392(%rsp)         # 4-byte Spill
	movq	%rdi, %r15
	movq	%r15, 472(%rsp)         # 8-byte Spill
	movl	1192(%rsp), %eax
	movl	%eax, 448(%rsp)         # 4-byte Spill
	movq	1184(%rsp), %rax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	movl	1264(%r15), %ebx
	movl	1512(%r15), %eax
	movl	%eax, 384(%rsp)         # 4-byte Spill
	movl	24476(%r15), %r12d
	movl	%r12d, 380(%rsp)        # 4-byte Spill
	movslq	24472(%r15), %rax
	movq	%rax, 424(%rsp)         # 8-byte Spill
	movl	848(%rbp), %eax
	movl	%eax, 376(%rsp)         # 4-byte Spill
	movq	%rbp, %rdi
	callq	gx_device_white
	movq	%rax, 320(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	callq	gx_device_black
	movq	%rax, 312(%rsp)         # 8-byte Spill
	movl	100(%rbp), %r9d
	movl	%r9d, 364(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	jne	.LBB5_1
# BB#11:                                # %sw.bb
	movl	1516(%r15), %eax
	testl	%r9d, %r9d
	jle	.LBB5_12
# BB#13:                                # %for.body.lr.ph
	movl	%eax, %ecx
	movl	%eax, 544(%rsp)         # 4-byte Spill
	movq	424(%rsp), %rax         # 8-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 416(%rsp)         # 4-byte Spill
	movl	392(%rsp), %eax         # 4-byte Reload
	sarl	$8, %eax
	movl	%eax, 400(%rsp)         # 4-byte Spill
	movq	440(%rsp), %rax         # 8-byte Reload
	leal	15(%rax), %eax
	movl	%eax, 396(%rsp)         # 4-byte Spill
	movslq	448(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 536(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_14:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
                                        #       Child Loop BB5_17 Depth 3
                                        #     Child Loop BB5_32 Depth 2
                                        #       Child Loop BB5_36 Depth 3
                                        #     Child Loop BB5_24 Depth 2
                                        #       Child Loop BB5_28 Depth 3
	movq	%rcx, 448(%rsp)         # 8-byte Spill
	movl	%r12d, 380(%rsp)        # 4-byte Spill
	movq	1216(%r15), %rax
	movq	392(%rax), %rax
	movq	200(%rax), %r8
	imulq	$168, %rcx, %r10
	movzwl	40(%r8,%r10), %ebp
	movl	416(%rsp), %eax         # 4-byte Reload
	imull	%ecx, %eax
	cltq
	addq	24464(%r15), %rax
	movq	%rax, 520(%rsp)         # 8-byte Spill
	movl	400(%rsp), %eax         # 4-byte Reload
	cltd
	idivl	%ebp
	movq	440(%rsp), %rax         # 8-byte Reload
	leal	(%rdx,%rax), %edi
	cmpl	%ebp, %edi
	cmovgl	%ebp, %edi
	subl	%edx, %edi
	subl	%edi, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	%ebp, %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %r12d
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	seta	%r11b
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r12d, %xmm1
	ucomiss	%xmm1, %xmm0
	setp	%r9b
	setne	%bl
	movq	%rcx, %rsi
	imulq	536(%rsp), %rsi         # 8-byte Folded Reload
	addq	1248(%r15), %rsi
	movq	%rsi, 528(%rsp)         # 8-byte Spill
	movq	368(%rsp), %rsi         # 8-byte Reload
	movslq	(%rsi,%rcx,4), %rcx
	movq	%rcx, 432(%rsp)         # 8-byte Spill
	movl	544(%rsp), %esi         # 4-byte Reload
	testl	%esi, %esi
	jle	.LBB5_20
# BB#15:                                # %for.body.57.lr.ph
                                        #   in Loop: Header=BB5_14 Depth=1
	movslq	52(%r8,%r10), %rcx
	movq	%rcx, 504(%rsp)         # 8-byte Spill
	orb	%r9b, %bl
	andb	%bl, %r11b
	movzbl	%r11b, %ecx
	subl	%ecx, %r12d
	movq	%r12, 512(%rsp)         # 8-byte Spill
	movq	144(%r8,%r10), %rcx
	movq	%rcx, 496(%rsp)         # 8-byte Spill
	movl	%r12d, %ecx
	imull	%ebp, %ecx
	subl	%ecx, %eax
	movslq	%edx, %rcx
	movq	%rcx, 488(%rsp)         # 8-byte Spill
	movslq	%edi, %rcx
	movq	%rcx, 480(%rsp)         # 8-byte Spill
	leal	-1(%r12), %edx
	incq	%rdx
	imulq	%rbp, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 456(%rsp)         # 8-byte Spill
	cltq
	movq	%rax, 464(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB5_16:                               # %for.body.57
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
	movq	472(%rsp), %rdx         # 8-byte Reload
	movslq	1512(%rdx), %rcx
	movslq	%r13d, %rax
	addq	%rcx, %rax
	movq	16(%rdx), %rcx
	addq	976(%rcx), %rax
	cqto
	movq	504(%rsp), %rcx         # 8-byte Reload
	idivq	%rcx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
	addl	%edx, %eax
	imull	%ebp, %eax
	cltq
	movq	496(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r12
	movq	%r13, %rax
	imulq	536(%rsp), %rax         # 8-byte Folded Reload
	leaq	(%rax,%r14), %r14
	movq	488(%rsp), %rax         # 8-byte Reload
	leaq	(%r12,%rax), %rsi
	movq	%r14, %rdi
	movq	480(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	leaq	(%r14,%rbx), %rbx
	movq	512(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	%eax, %r15d
	jle	.LBB5_19
	.align	16, 0x90
.LBB5_17:                               # %for.body.i
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, %rbx
	decl	%r15d
	jne	.LBB5_17
# BB#18:                                # %for.cond.for.end_crit_edge.i
                                        #   in Loop: Header=BB5_16 Depth=2
	addq	456(%rsp), %r14         # 8-byte Folded Reload
	movq	%r14, %rbx
.LBB5_19:                               # %fill_threshhold_buffer.exit
                                        #   in Loop: Header=BB5_16 Depth=2
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	464(%rsp), %rdx         # 8-byte Reload
	callq	memcpy
	incq	%r13
	movl	544(%rsp), %esi         # 4-byte Reload
	cmpl	%esi, %r13d
	movq	408(%rsp), %r14         # 8-byte Reload
	jne	.LBB5_16
.LBB5_20:                               # %for.end
                                        #   in Loop: Header=BB5_14 Depth=1
	movq	432(%rsp), %rax         # 8-byte Reload
	addq	%rax, 528(%rsp)         # 8-byte Folded Spill
	movl	380(%rsp), %r12d        # 4-byte Reload
	movq	440(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r12d
	cmovgl	%eax, %r12d
	movl	396(%rsp), %r10d        # 4-byte Reload
	subl	%r12d, %r10d
	sarl	$4, %r10d
	cmpl	$0, 376(%rsp)           # 4-byte Folded Reload
	je	.LBB5_30
# BB#21:                                # %for.end
                                        #   in Loop: Header=BB5_14 Depth=1
	movq	352(%rsp), %rax         # 8-byte Reload
	movl	104(%rax), %eax
	testl	%eax, %eax
	jne	.LBB5_30
# BB#22:                                # %if.then.82
                                        #   in Loop: Header=BB5_14 Depth=1
	testl	%esi, %esi
	movl	%esi, 544(%rsp)         # 4-byte Spill
	movq	472(%rsp), %r15         # 8-byte Reload
	movl	364(%rsp), %r11d        # 4-byte Reload
	movq	424(%rsp), %r13         # 8-byte Reload
	movdqa	.LCPI5_0(%rip), %xmm2   # xmm2 = [9259542123273814144,9259542123273814144]
	jle	.LBB5_38
# BB#23:                                # %for.body.lr.ph.i.293
                                        #   in Loop: Header=BB5_14 Depth=1
	movslq	%r12d, %r9
	movq	528(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r9), %r8
	xorl	%esi, %esi
	.align	16, 0x90
.LBB5_24:                               # %for.body.i.295
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_28 Depth 3
	movq	%rsi, %rax
	imulq	536(%rsp), %rax         # 8-byte Folded Reload
	leaq	(%rax,%r14), %rdi
	movq	%rsi, %rax
	imulq	%r13, %rax
	movq	520(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rbp
	testl	%r12d, %r12d
	jle	.LBB5_25
# BB#26:                                # %if.then.i
                                        #   in Loop: Header=BB5_24 Depth=2
	movdqu	(%rdi), %xmm0
	movq	528(%rsp), %rax         # 8-byte Reload
	movdqu	(%rax), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	psubsb	%xmm1, %xmm0
	pmovmskb	%xmm0, %eax
	movzbl	%al, %edx
	shrl	$8, %eax
	movb	bitreverse(%rdx), %dl
	movb	%dl, (%rbp)
	movb	bitreverse(%rax), %al
	movb	%al, 1(%rbp)
	addq	$2, %rbp
	addq	%r9, %rdi
	movq	%r8, %rdx
	jmp	.LBB5_27
	.align	16, 0x90
.LBB5_25:                               #   in Loop: Header=BB5_24 Depth=2
	movq	528(%rsp), %rdx         # 8-byte Reload
.LBB5_27:                               # %for.cond.10.preheader.i
                                        #   in Loop: Header=BB5_24 Depth=2
	testl	%r10d, %r10d
	movl	%r10d, %eax
	jle	.LBB5_29
	.align	16, 0x90
.LBB5_28:                               # %for.body.12.i
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqa	(%rdi), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	(%rdx), %xmm1
	pxor	%xmm2, %xmm1
	psubsb	%xmm1, %xmm0
	pmovmskb	%xmm0, %ebx
	movzbl	%bl, %ecx
	movb	bitreverse(%rcx), %cl
	movb	%cl, (%rbp)
	shrl	$8, %ebx
	movb	bitreverse(%rbx), %cl
	movb	%cl, 1(%rbp)
	addq	$16, %rdi
	addq	$16, %rdx
	addq	$2, %rbp
	decl	%eax
	jne	.LBB5_28
.LBB5_29:                               # %for.inc.16.i
                                        #   in Loop: Header=BB5_24 Depth=2
	incq	%rsi
	cmpl	544(%rsp), %esi         # 4-byte Folded Reload
	jne	.LBB5_24
	jmp	.LBB5_38
	.align	16, 0x90
.LBB5_30:                               # %if.else
                                        #   in Loop: Header=BB5_14 Depth=1
	testl	%esi, %esi
	movl	%esi, 544(%rsp)         # 4-byte Spill
	movq	472(%rsp), %r15         # 8-byte Reload
	movl	364(%rsp), %r11d        # 4-byte Reload
	movq	424(%rsp), %r13         # 8-byte Reload
	movdqa	.LCPI5_0(%rip), %xmm2   # xmm2 = [9259542123273814144,9259542123273814144]
	jle	.LBB5_38
# BB#31:                                # %for.body.lr.ph.i.307
                                        #   in Loop: Header=BB5_14 Depth=1
	movslq	%r12d, %r9
	movq	528(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r9), %r8
	xorl	%esi, %esi
	.align	16, 0x90
.LBB5_32:                               # %for.body.i.311
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_36 Depth 3
	movq	%rsi, %rcx
	imulq	536(%rsp), %rcx         # 8-byte Folded Reload
	leaq	(%rcx,%r14), %rdi
	movq	%rsi, %rcx
	imulq	%r13, %rcx
	movq	520(%rsp), %rax         # 8-byte Reload
	leaq	(%rcx,%rax), %rbp
	testl	%r12d, %r12d
	jle	.LBB5_33
# BB#34:                                # %if.then.i.324
                                        #   in Loop: Header=BB5_32 Depth=2
	movq	528(%rsp), %rax         # 8-byte Reload
	movdqu	(%rax), %xmm0
	movdqu	(%rdi), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	psubsb	%xmm1, %xmm0
	pmovmskb	%xmm0, %ecx
	movzbl	%cl, %edx
	shrl	$8, %ecx
	movb	bitreverse(%rdx), %dl
	movb	%dl, (%rbp)
	movb	bitreverse(%rcx), %cl
	movb	%cl, 1(%rbp)
	addq	$2, %rbp
	addq	%r9, %rdi
	movq	%r8, %rdx
	jmp	.LBB5_35
	.align	16, 0x90
.LBB5_33:                               #   in Loop: Header=BB5_32 Depth=2
	movq	528(%rsp), %rdx         # 8-byte Reload
.LBB5_35:                               # %for.cond.10.preheader.i.328
                                        #   in Loop: Header=BB5_32 Depth=2
	testl	%r10d, %r10d
	movl	%r10d, %ebx
	jle	.LBB5_37
	.align	16, 0x90
.LBB5_36:                               # %for.body.12.i.348
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqa	(%rdx), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	(%rdi), %xmm1
	pxor	%xmm2, %xmm1
	psubsb	%xmm1, %xmm0
	pmovmskb	%xmm0, %ecx
	movzbl	%cl, %eax
	movb	bitreverse(%rax), %al
	movb	%al, (%rbp)
	shrl	$8, %ecx
	movb	bitreverse(%rcx), %al
	movb	%al, 1(%rbp)
	addq	$16, %rdi
	addq	$16, %rdx
	addq	$2, %rbp
	decl	%ebx
	jne	.LBB5_36
.LBB5_37:                               # %for.inc.16.i.352
                                        #   in Loop: Header=BB5_32 Depth=2
	incq	%rsi
	cmpl	544(%rsp), %esi         # 4-byte Folded Reload
	jne	.LBB5_32
.LBB5_38:                               # %for.inc.84
                                        #   in Loop: Header=BB5_14 Depth=1
	movq	448(%rsp), %rcx         # 8-byte Reload
	incq	%rcx
	cmpl	%r11d, %ecx
	jne	.LBB5_14
	jmp	.LBB5_39
.LBB5_1:                                # %entry
	cmpl	$1, %ebx
	jne	.LBB5_88
# BB#2:                                 # %while.cond.preheader
	leaq	24504(%r15), %r13
	movq	%r13, 400(%rsp)         # 8-byte Spill
	leaq	24508(%r15), %rax
	movq	%rax, 328(%rsp)         # 8-byte Spill
	shll	$6, 448(%rsp)           # 4-byte Folded Spill
	leaq	64(%r14), %rax
	movq	%rax, 344(%rsp)         # 8-byte Spill
	movl	480(%rsp), %eax         # 4-byte Reload
	andl	$1, %eax
	movl	%eax, 340(%rsp)         # 4-byte Spill
	xorl	%r10d, %r10d
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_87:                               # %if.else.392
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$0, 24504(%r15)
	movl	24772(%r15), %eax
	sarl	$31, %eax
	andl	$63, %eax
	movl	%eax, 24768(%r15)
	movl	$0, 24776(%r15)
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%rcx, %rdi
	callq	memset
	movq	%rbx, %r10
	movl	%ebp, %r9d
.LBB5_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_49 Depth 3
                                        #         Child Loop BB5_50 Depth 4
                                        #       Child Loop BB5_57 Depth 3
                                        #       Child Loop BB5_71 Depth 3
	movl	(%r13), %eax
	cmpl	$63, %eax
	jg	.LBB5_6
# BB#4:                                 # %lor.rhs
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	%r12d, %eax
	jl	.LBB5_90
# BB#5:                                 # %land.rhs.132
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, 24780(%r15)
	je	.LBB5_90
.LBB5_6:                                # %for.cond.137.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	xorl	%ebx, %ebx
	testl	%r9d, %r9d
	movl	$0, %esi
	jle	.LBB5_73
	.align	16, 0x90
.LBB5_7:                                # %for.body.140
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_49 Depth 3
                                        #         Child Loop BB5_50 Depth 4
                                        #       Child Loop BB5_57 Depth 3
                                        #       Child Loop BB5_71 Depth 3
	movl	24480(%r15), %eax
	imull	%esi, %eax
	shll	$3, %eax
	cltq
	addq	24464(%r15), %rax
	movq	%rax, 416(%rsp)         # 8-byte Spill
	movq	1216(%r15), %rax
	movq	1248(%r15), %rcx
	movq	%rcx, 464(%rsp)         # 8-byte Spill
	movq	392(%rax), %rax
	movq	200(%rax), %rax
	imulq	$168, %rsi, %rcx
	movzwl	40(%rax,%rcx), %ebp
	movslq	52(%rax,%rcx), %rdi
	movq	%rdi, 544(%rsp)         # 8-byte Spill
	movq	144(%rax,%rcx), %rax
	movq	%rax, 536(%rsp)         # 8-byte Spill
	movq	368(%rsp), %rax         # 8-byte Reload
	movslq	(%rax,%rsi,4), %rax
	movq	%rax, 456(%rsp)         # 8-byte Spill
	movl	$64, %edx
	cmpl	$0, 24780(%r15)
	je	.LBB5_9
# BB#8:                                 # %select.mid
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	%r12d, %edx
.LBB5_9:                                # %select.end
                                        #   in Loop: Header=BB5_7 Depth=2
	cmpl	$0, 1192(%r15)
	movl	24764(%r15), %eax
	js	.LBB5_10
# BB#46:                                # %select.mid600
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	%rbx, 432(%rsp)         # 8-byte Spill
	movq	%rdx, 440(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB5_47
	.align	16, 0x90
.LBB5_10:                               #   in Loop: Header=BB5_7 Depth=2
	movq	%rbx, 432(%rsp)         # 8-byte Spill
	movl	$1, %ecx
	subl	%edx, %ecx
	movq	%rdx, 440(%rsp)         # 8-byte Spill
.LBB5_47:                               # %select.end599
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	448(%rsp), %r10d        # 4-byte Reload
	imull	%esi, %r10d
	movq	%rsi, 424(%rsp)         # 8-byte Spill
	addl	%ecx, %eax
	cltd
	idivl	%ebp
	movl	%edx, %r11d
	movq	16(%r15), %rdx
	movslq	24788(%r15), %rax
	addq	976(%rdx), %rax
	cqto
	idivq	%rdi
	movq	%rdx, %r8
	leal	64(%r11), %ebx
	cmpl	%ebp, %ebx
	cmovgl	%ebp, %ebx
	subl	%r11d, %ebx
	movl	$64, %r15d
	subl	%ebx, %r15d
	movl	%r15d, %eax
	cltd
	idivl	%ebp
	leal	(%rdi,%rdi), %edx
	movl	480(%rsp), %ecx         # 4-byte Reload
	cmpl	%ecx, %edx
	movl	%ecx, %esi
	cmovll	%edi, %esi
	movq	%rsi, 528(%rsp)         # 8-byte Spill
	testl	%esi, %esi
	movq	%r14, %r12
	jle	.LBB5_53
# BB#48:                                # %for.body.232.lr.ph
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	%edx, 392(%rsp)         # 4-byte Spill
	movl	%r10d, 396(%rsp)        # 4-byte Spill
	movl	%r8d, %ecx
	sarl	$31, %ecx
	andl	%edi, %ecx
	addl	%r8d, %ecx
	movq	%rcx, 512(%rsp)         # 8-byte Spill
	movl	%eax, %ecx
	movl	%eax, 520(%rsp)         # 4-byte Spill
	imull	%ebp, %ecx
	subl	%ecx, %r15d
	movslq	%r11d, %rax
	movq	%rax, 504(%rsp)         # 8-byte Spill
	movslq	%ebx, %rax
	movq	%rax, 496(%rsp)         # 8-byte Spill
	movslq	%r15d, %rax
	movq	%rax, 488(%rsp)         # 8-byte Spill
	leal	-1(%rsi), %eax
	shlq	$6, %rax
	movq	%rax, 384(%rsp)         # 8-byte Spill
	movq	%r14, %r12
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB5_49:                               # %for.body.232
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_50 Depth 4
	movq	512(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r14), %eax
	cltd
	idivl	%edi
	movslq	%edx, %rax
	imulq	%rbp, %rax
	movq	536(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r15
	movq	504(%rsp), %rax         # 8-byte Reload
	leaq	(%r15,%rax), %rsi
	movq	%r12, %rdi
	movq	496(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	leaq	(%r12,%rbx), %r13
	movl	520(%rsp), %ebx         # 4-byte Reload
	testl	%ebx, %ebx
	jle	.LBB5_51
	.align	16, 0x90
.LBB5_50:                               # %for.body.247
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, %r13
	decl	%ebx
	jne	.LBB5_50
.LBB5_51:                               # %for.end.254
                                        #   in Loop: Header=BB5_49 Depth=3
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	488(%rsp), %rdx         # 8-byte Reload
	callq	memcpy
	addq	$64, %r12
	incl	%r14d
	movq	528(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r14d
	movq	544(%rsp), %rdi         # 8-byte Reload
	jne	.LBB5_49
# BB#52:                                # %for.cond.229.for.end.260_crit_edge
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	344(%rsp), %rax         # 8-byte Reload
	movq	384(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %r12
	movq	408(%rsp), %r14         # 8-byte Reload
	movl	364(%rsp), %r9d         # 4-byte Reload
	movl	396(%rsp), %r10d        # 4-byte Reload
	movl	392(%rsp), %edx         # 4-byte Reload
.LBB5_53:                               # %for.end.260
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	%r9d, %r13d
	movq	464(%rsp), %rax         # 8-byte Reload
	movq	456(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rbp
	movslq	%r10d, %rbx
	cmpl	480(%rsp), %edx         # 4-byte Folded Reload
	movq	400(%rsp), %rsi         # 8-byte Reload
	jge	.LBB5_60
# BB#54:                                # %if.then.262
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	%r12, 536(%rsp)         # 8-byte Spill
	movq	%rbp, 528(%rsp)         # 8-byte Spill
	movq	%r14, %r8
	movl	480(%rsp), %r15d        # 4-byte Reload
	movl	%r15d, %eax
	subl	%edi, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	%edi, %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %r14d
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	seta	%al
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r14d, %xmm1
	ucomiss	%xmm1, %xmm0
	setp	%cl
	setne	%dl
	orb	%cl, %dl
	andb	%al, %dl
	movzbl	%dl, %eax
	movl	%r14d, %r12d
	subl	%eax, %r12d
	leal	1(%r12), %ecx
	imull	%edi, %ecx
	subl	%ecx, %r15d
	testl	%r12d, %r12d
	jle	.LBB5_55
# BB#56:                                # %for.body.296.lr.ph
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	%rbx, 520(%rsp)         # 8-byte Spill
	shll	$6, %edi
	movslq	%edi, %rbx
	decl	%r14d
	subl	%eax, %r14d
	incq	%r14
	imulq	%rbx, %r14
	movq	536(%rsp), %rbp         # 8-byte Reload
	movq	%r8, %r13
	.align	16, 0x90
.LBB5_57:                               # %for.body.296
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %rbp
	decl	%r12d
	jne	.LBB5_57
# BB#58:                                # %for.cond.293.for.end.305_crit_edge
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	536(%rsp), %rdi         # 8-byte Reload
	addq	%r14, %rdi
	movq	%r13, %r14
	movl	364(%rsp), %r13d        # 4-byte Reload
	movq	400(%rsp), %rbx         # 8-byte Reload
	movq	528(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB5_59
.LBB5_55:                               #   in Loop: Header=BB5_7 Depth=2
	movq	%rbx, 520(%rsp)         # 8-byte Spill
	movq	%rsi, %rbx
	movq	%r8, %r14
	movq	528(%rsp), %rbp         # 8-byte Reload
	movq	536(%rsp), %rdi         # 8-byte Reload
.LBB5_59:                               # %for.end.305
                                        #   in Loop: Header=BB5_7 Depth=2
	shll	$6, %r15d
	movslq	%r15d, %rdx
	movq	%r14, %rsi
	callq	memcpy
	movq	%rbx, %rsi
	movq	520(%rsp), %rbx         # 8-byte Reload
.LBB5_60:                               # %if.end.309
                                        #   in Loop: Header=BB5_7 Depth=2
	addq	%rbx, %rbp
	cmpl	$0, 376(%rsp)           # 4-byte Folded Reload
	je	.LBB5_63
# BB#61:                                # %if.end.309
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	352(%rsp), %rax         # 8-byte Reload
	movl	104(%rax), %eax
	testl	%eax, %eax
	jne	.LBB5_63
# BB#62:                                # %if.then.316
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	$288, %edx              # imm = 0x120
	leaq	840(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rsi, %r12
	callq	memcpy
	movl	$36, %ecx
	movq	%rsp, %rdi
	movq	%rbx, %rsi
	rep;movsq
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	416(%rsp), %rdx         # 8-byte Reload
	movl	480(%rsp), %ecx         # 4-byte Reload
	callq	gx_ht_threshold_landscape_sub
	jmp	.LBB5_64
	.align	16, 0x90
.LBB5_63:                               # %if.else.318
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	$288, %edx              # imm = 0x120
	leaq	552(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rsi, %r12
	callq	memcpy
	movl	$36, %ecx
	movq	%rsp, %rdi
	movq	%rbx, %rsi
	rep;movsq
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	416(%rsp), %rdx         # 8-byte Reload
	movl	480(%rsp), %ecx         # 4-byte Reload
	callq	gx_ht_threshold_landscape
.LBB5_64:                               # %if.end.321
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	472(%rsp), %r15         # 8-byte Reload
	movl	380(%rsp), %r11d        # 4-byte Reload
	movq	440(%rsp), %r10         # 8-byte Reload
	cmpl	(%r12), %r10d
	movq	432(%rsp), %rbx         # 8-byte Reload
	movl	%r13d, %r9d
	movq	%r12, %r13
	je	.LBB5_72
# BB#65:                                # %if.then.326
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	24768(%r15), %ecx
	movl	24772(%r15), %eax
	sarl	$31, %eax
	movl	%eax, %edx
	andl	$2, %edx
	cmpl	$0, 480(%rsp)           # 4-byte Folded Reload
	jle	.LBB5_72
# BB#66:                                # %if.then.326
                                        #   in Loop: Header=BB5_7 Depth=2
	leal	-1(%rcx,%rdx), %edx
	movl	%eax, %ecx
	andl	$63, %ecx
	cmpl	%ecx, %edx
	je	.LBB5_72
# BB#67:                                # %for.body.lr.ph.i.353
                                        #   in Loop: Header=BB5_7 Depth=2
	andl	$63, %eax
	xorl	%r8d, %r8d
	cmpl	$0, 340(%rsp)           # 4-byte Folded Reload
	movslq	%edx, %rdx
	je	.LBB5_69
# BB#68:                                # %for.body.i.358.prol
                                        #   in Loop: Header=BB5_7 Depth=2
	movb	(%rbp,%rdx), %cl
	movb	%cl, (%rbp,%rax)
	orq	$64, %rax
	addq	$64, %rdx
	movl	$1, %r8d
.LBB5_69:                               # %for.body.lr.ph.i.353.split
                                        #   in Loop: Header=BB5_7 Depth=2
	cmpl	$1, 480(%rsp)           # 4-byte Folded Reload
	je	.LBB5_72
# BB#70:                                # %for.body.lr.ph.i.353.split.split
                                        #   in Loop: Header=BB5_7 Depth=2
	movslq	%ebx, %rsi
	movq	456(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rcx
	addq	%rcx, %rdx
	addq	%rsi, %rdx
	movq	464(%rsp), %rdi         # 8-byte Reload
	leaq	64(%rdi,%rdx), %rdx
	addq	%rcx, %rax
	addq	%rsi, %rax
	leaq	64(%rdi,%rax), %rax
	movl	480(%rsp), %esi         # 4-byte Reload
	subl	%r8d, %esi
	.align	16, 0x90
.LBB5_71:                               # %for.body.i.358
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-64(%rdx), %cl
	movb	%cl, -64(%rax)
	movb	(%rdx), %cl
	movb	%cl, (%rax)
	subq	$-128, %rdx
	subq	$-128, %rax
	addl	$-2, %esi
	jne	.LBB5_71
	.align	16, 0x90
.LBB5_72:                               # %for.inc.329
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	424(%rsp), %rsi         # 8-byte Reload
	incq	%rsi
	addl	448(%rsp), %ebx         # 4-byte Folded Reload
	cmpl	%r9d, %esi
	movl	%r11d, %r12d
	jne	.LBB5_7
.LBB5_73:                               # %for.end.331
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, 24772(%r15)
	js	.LBB5_74
# BB#77:                                # %if.else.361
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	%r9d, %ebp
	cmpl	$0, 376(%rsp)           # 4-byte Folded Reload
	je	.LBB5_78
# BB#80:                                # %if.else.372
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	24464(%r15), %rsi
	movl	24764(%r15), %r9d
	jmp	.LBB5_81
	.align	16, 0x90
.LBB5_74:                               # %if.then.335
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	%r9d, %ebp
	cmpl	$0, 376(%rsp)           # 4-byte Folded Reload
	je	.LBB5_75
# BB#76:                                # %if.else.348
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	24464(%r15), %rsi
	movl	$1, %r9d
	subl	%r10d, %r9d
	addl	24764(%r15), %r9d
.LBB5_81:                               # %if.end.383
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	24788(%r15), %eax
	movl	24480(%r15), %ecx
	movl	%ecx, 24(%rsp)
	movl	480(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 16(%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%edx, %edx
	movl	$8, %ecx
	xorl	%r8d, %r8d
	movq	%r10, %rbx
	movq	352(%rsp), %rdi         # 8-byte Reload
	callq	*1672(%rdi)
	jmp	.LBB5_82
	.align	16, 0x90
.LBB5_78:                               # %if.then.363
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	24464(%r15), %rsi
	movl	24764(%r15), %r9d
	jmp	.LBB5_79
.LBB5_75:                               # %if.then.337
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	24464(%r15), %rsi
	movl	$1, %r9d
	subl	%r10d, %r9d
	addl	24764(%r15), %r9d
.LBB5_79:                               # %if.end.383
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	24788(%r15), %eax
	movq	312(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 32(%rsp)
	movq	320(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 24(%rsp)
	movl	480(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 16(%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%edx, %edx
	movl	$8, %ecx
	xorl	%r8d, %r8d
	movq	%r10, %rbx
	movq	352(%rsp), %rdi         # 8-byte Reload
	callq	*1216(%rdi)
.LBB5_82:                               # %if.end.383
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$0, 24780(%r15)
	movl	24504(%r15), %eax
	subl	%ebx, %eax
	movq	328(%rsp), %rcx         # 8-byte Reload
	je	.LBB5_87
# BB#83:                                # %if.then.390
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	%eax, 544(%rsp)         # 4-byte Spill
	movl	24764(%r15), %r13d
	movl	24772(%r15), %r14d
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%rcx, %rbp
	movq	%rbp, %rdi
	callq	memset
	cmpl	$0, %r14d
	js	.LBB5_84
# BB#85:                                # %if.else.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	544(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rbp)
	movq	%rbx, %r10
	addl	%r10d, %r13d
	movl	$1, %eax
	jmp	.LBB5_86
.LBB5_84:                               # %if.then.i.362
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	544(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 24760(%r15)
	movq	%rbx, %r10
	subl	%r10d, %r13d
	movl	$62, %eax
.LBB5_86:                               # %reset_landscape_buffer.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	408(%rsp), %r14         # 8-byte Reload
	movl	%eax, 24768(%r15)
	movl	%r13d, 24764(%r15)
	movl	%ecx, 24504(%r15)
	movl	$1, 24776(%r15)
	movl	364(%rsp), %r9d         # 4-byte Reload
	movq	400(%rsp), %r13         # 8-byte Reload
	jmp	.LBB5_3
.LBB5_88:                               # %sw.default
	movl	$.L__func__.gxht_thresh_planes, %edi
	movl	$.L.str, %esi
	movl	$1128, %edx             # imm = 0x468
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	addq	$1128, %rsp             # imm = 0x468
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.LBB5_12:
	movl	%eax, 544(%rsp)         # 4-byte Spill
	movq	424(%rsp), %r13         # 8-byte Reload
.LBB5_39:                               # %for.end.86
	testl	%r12d, %r12d
	movl	392(%rsp), %ebx         # 4-byte Reload
	movl	384(%rsp), %ebp         # 4-byte Reload
	jle	.LBB5_43
# BB#40:                                # %if.then.89
	movl	%ebx, %r9d
	sarl	$8, %r9d
	movq	24464(%r15), %rsi
	cmpl	$0, 376(%rsp)           # 4-byte Folded Reload
	je	.LBB5_41
# BB#42:                                # %if.else.95
	movl	544(%rsp), %eax         # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	%eax, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%ebp, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	352(%rsp), %rdi         # 8-byte Reload
	movl	%r13d, %ecx
	callq	*1672(%rdi)
	jmp	.LBB5_43
.LBB5_41:                               # %if.then.92
	movq	312(%rsp), %rax         # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	320(%rsp), %rax         # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	544(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%ebp, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	352(%rsp), %rdi         # 8-byte Reload
	movl	%r13d, %ecx
	callq	*1216(%rdi)
.LBB5_43:                               # %if.end.100
	movq	440(%rsp), %rax         # 8-byte Reload
	subl	%r12d, %eax
	movq	%rax, 440(%rsp)         # 8-byte Spill
	jle	.LBB5_90
# BB#44:                                # %if.then.104
	testl	%r12d, %r12d
	setg	%al
	sarl	$8, %ebx
	addl	%r12d, %ebx
	movzbl	%al, %edx
	shll	$4, %edx
	movq	24464(%r15), %rsi
	cmpl	$0, 376(%rsp)           # 4-byte Folded Reload
	je	.LBB5_45
# BB#89:                                # %if.else.118
	movl	544(%rsp), %eax         # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	%eax, 16(%rsp)
	movq	440(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ebp, (%rsp)
	xorl	%r8d, %r8d
	movq	352(%rsp), %rdi         # 8-byte Reload
	movl	%r13d, %ecx
	movl	%ebx, %r9d
	callq	*1672(%rdi)
	jmp	.LBB5_90
.LBB5_45:                               # %if.then.113
	movq	312(%rsp), %rax         # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	320(%rsp), %rax         # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	544(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	440(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ebp, (%rsp)
	xorl	%r8d, %r8d
	movq	352(%rsp), %rdi         # 8-byte Reload
	movl	%r13d, %ecx
	movl	%ebx, %r9d
	callq	*1216(%rdi)
.LBB5_90:                               # %cleanup
	xorl	%eax, %eax
	addq	$1128, %rsp             # imm = 0x468
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gxht_thresh_planes, .Lfunc_end5-gxht_thresh_planes
	.cfi_endproc

	.type	.L__func__.gxht_thresh_image_init,@object # @__func__.gxht_thresh_image_init
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gxht_thresh_image_init:
	.asciz	"gxht_thresh_image_init"
	.size	.L__func__.gxht_thresh_image_init, 23

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"./base/gxht_thresh.c"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"threshold creation failed"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gxht_thresh"
	.size	.L.str.2, 12

	.type	.L__func__.gxht_thresh_planes,@object # @__func__.gxht_thresh_planes
.L__func__.gxht_thresh_planes:
	.asciz	"gxht_thresh_planes"
	.size	.L__func__.gxht_thresh_planes, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Invalid orientation for thresholding"
	.size	.L.str.3, 37

	.type	bitreverse,@object      # @bitreverse
	.section	.rodata,"a",@progbits
	.align	16
bitreverse:
	.ascii	"\000\200@\300 \240`\340\020\220P\3200\260p\360\b\210H\310(\250h\350\030\230X\3308\270x\370\004\204D\304$\244d\344\024\224T\3244\264t\364\f\214L\314,\254l\354\034\234\\\334<\274|\374\002\202B\302\"\242b\342\022\222R\3222\262r\362\n\212J\312*\252j\352\032\232Z\332:\272z\372\006\206F\306&\246f\346\026\226V\3266\266v\366\016\216N\316.\256n\356\036\236^\336>\276~\376\001\201A\301!\241a\341\021\221Q\3211\261q\361\t\211I\311)\251i\351\031\231Y\3319\271y\371\005\205E\305%\245e\345\025\225U\3255\265u\365\r\215M\315-\255m\355\035\235]\335=\275}\375\003\203C\303#\243c\343\023\223S\3233\263s\363\013\213K\313+\253k\353\033\233[\333;\273{\373\007\207G\307'\247g\347\027\227W\3277\267w\367\017\217O\317/\257o\357\037\237_\337?\277\177\377"
	.size	bitreverse, 256


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
