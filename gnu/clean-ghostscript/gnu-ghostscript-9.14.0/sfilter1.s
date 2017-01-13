	.text
	.file	"sfilter1.bc"
	.align	16, 0x90
	.type	s_PFBD_init,@function
s_PFBD_init:                            # @s_PFBD_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, 112(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s_PFBD_init, .Lfunc_end0-s_PFBD_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.zero	16,13
.LCPI1_1:
	.zero	16,10
	.text
	.align	16, 0x90
	.type	s_PFBD_process,@function
s_PFBD_process:                         # @s_PFBD_process
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%ecx, %r11d
	movl	%r11d, 20(%rsp)         # 4-byte Spill
	movq	%rdx, %r9
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	(%r12), %rcx
	movq	8(%r9), %r13
	movl	112(%r14), %esi
	xorl	%r10d, %r10d
	movdqa	.LCPI1_0(%rip), %xmm5   # xmm5 = [13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13]
	movdqa	.LCPI1_1(%rip), %xmm6   # xmm6 = [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]
	xorl	%eax, %eax
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_68:                               # %if.then.184
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$-1, 112(%r14)
	movl	$-1, %esi
	movq	%r15, %rcx
.LBB1_1:                                # %top.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #     Child Loop BB1_61 Depth 2
                                        #     Child Loop BB1_55 Depth 2
                                        #     Child Loop BB1_28 Depth 2
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_38 Depth 2
	movq	8(%r12), %rdi
	movq	16(%r9), %r8
	leaq	7(%rcx), %rdx
	jmp	.LBB1_2
	.align	16, 0x90
.LBB1_16:                               # %top.backedge
                                        #   in Loop: Header=BB1_2 Depth=2
	addq	$6, %rcx
	addq	$6, %rdx
.LBB1_2:                                # %top
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-7(%rdx), %r15
	incl	%esi
	cmpl	$5, %esi
	ja	.LBB1_66
# BB#3:                                 # %top
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	%edi, %ebx
	subl	%r15d, %ebx
	jmpq	*.LJTI1_0(,%rsi,8)
.LBB1_4:                                # %sw.bb
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	$2, %ebx
	jl	.LBB1_69
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB1_2 Depth=2
	movzbl	-6(%rdx), %esi
	cmpl	$128, %esi
	jne	.LBB1_71
# BB#6:                                 # %if.end.12
                                        #   in Loop: Header=BB1_2 Depth=2
	movzbl	-5(%rdx), %esi
	leal	-1(%rsi), %ebp
	cmpl	$2, %ebp
	jae	.LBB1_7
# BB#9:                                 # %sw.epilog
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	$6, %ebx
	jl	.LBB1_10
# BB#11:                                # %if.end.21
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	%esi, 112(%r14)
	movzbl	-4(%rdx), %ebp
	movzbl	-3(%rdx), %ebx
	shlq	$8, %rbx
	orq	%rbp, %rbx
	movzbl	-2(%rdx), %ebp
	shlq	$16, %rbp
	orq	%rbx, %rbp
	movzbl	-1(%rdx), %ebx
	shlq	$24, %rbx
	orq	%rbp, %rbx
	movq	%rbx, 120(%r14)
	testq	%rbx, %rbx
	jne	.LBB1_16
# BB#12:                                # %if.end.21
                                        #   in Loop: Header=BB1_2 Depth=2
	movzbl	%sil, %ebp
	cmpl	$1, %ebp
	jne	.LBB1_16
# BB#13:                                # %if.then.42
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpq	%rdi, %rdx
	jae	.LBB1_17
# BB#14:                                # %if.then.47
                                        #   in Loop: Header=BB1_2 Depth=2
	movzbl	-1(%rdx), %ebp
	movl	$1, %esi
	cmpl	$128, %ebp
	je	.LBB1_16
# BB#15:                                # %if.else
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	$4, 112(%r14)
	movq	$-1, 120(%r14)
	movl	$4, %esi
	jmp	.LBB1_16
	.align	16, 0x90
.LBB1_17:                               # %if.else.56
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	$1, %esi
	testl	%r11d, %r11d
	jne	.LBB1_16
	jmp	.LBB1_18
.LBB1_19:                               # %sw.bb.62
                                        #   in Loop: Header=BB1_1 Depth=1
	subl	%r13d, %r8d
	cmpl	%ebx, %r8d
	movl	$1, %ecx
	cmovll	%ecx, %eax
	cmovgl	%ebx, %r8d
	movslq	%r8d, %rbp
	movq	120(%r14), %rcx
	cmpq	%rcx, %rbp
	cmoval	%r10d, %eax
	cmoval	%ecx, %ebp
	movslq	%ebp, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 120(%r14)
	testl	%edx, %edx
	je	.LBB1_67
# BB#20:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	-1(%rbp), %r11d
	leaq	1(%r15), %r8
	leaq	1(%r11), %r10
	movq	%r10, %rdi
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rdi
	je	.LBB1_21
# BB#22:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	1(%r13), %rcx
	leaq	1(%r15,%r11), %rdx
	cmpq	%rdx, %rcx
	ja	.LBB1_24
# BB#23:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	1(%r13,%r11), %rcx
	cmpq	%rcx, %r8
	ja	.LBB1_24
.LBB1_21:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rsi
	xorl	%edi, %edi
	jmp	.LBB1_30
.LBB1_48:                               # %sw.bb.86
                                        #   in Loop: Header=BB1_1 Depth=1
	subl	%r13d, %r8d
	cmpl	$0, 108(%r14)
	je	.LBB1_58
# BB#49:                                # %if.then.88
                                        #   in Loop: Header=BB1_1 Depth=1
	sarl	%r8d
	cmpl	%ebx, %r8d
	movl	$1, %ecx
	cmovll	%ecx, %eax
	cmovgl	%ebx, %r8d
	movslq	%r8d, %rdi
	movq	120(%r14), %rcx
	cmpq	%rcx, %rdi
	cmoval	%r10d, %eax
	cmoval	%ecx, %edi
	movslq	%edi, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 120(%r14)
	testl	%edx, %edx
	je	.LBB1_67
# BB#50:                                # %for.body.110.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	-1(%rdi), %r10d
	leaq	1(%r15), %rdx
	testb	$1, %dil
	jne	.LBB1_52
# BB#51:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rsi
	jmp	.LBB1_53
.LBB1_59:                               # %sw.bb.149
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r8d, %ecx
	subl	%r13d, %ecx
	cmpl	%ebx, %ecx
	movl	$1, %edx
	cmovll	%edx, %eax
	cmovgl	%ebx, %ecx
	testl	%ecx, %ecx
	je	.LBB1_66
# BB#60:                                # %for.body.160.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%ebx
	subl	%r13d, %r8d
	notl	%r8d
	cmpl	%r8d, %ebx
	cmovgel	%ebx, %r8d
	incl	%r8d
	.align	16, 0x90
.LBB1_61:                               # %for.body.160
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r15), %ecx
	cmpl	$128, %ecx
	je	.LBB1_62
# BB#63:                                # %if.end.168
                                        #   in Loop: Header=BB1_61 Depth=2
	movzbl	%cl, %edx
	cmpl	$13, %edx
	movb	$10, %dl
	je	.LBB1_65
# BB#64:                                # %if.end.168
                                        #   in Loop: Header=BB1_61 Depth=2
	movb	%cl, %dl
.LBB1_65:                               # %if.end.168
                                        #   in Loop: Header=BB1_61 Depth=2
	incq	%r15
	movb	%dl, 1(%r13)
	incq	%r13
	incl	%r8d
	jne	.LBB1_61
	jmp	.LBB1_66
.LBB1_58:                               # %if.else.123
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%ebx, %r8d
	movl	$1, %ecx
	cmovll	%ecx, %eax
	cmovlel	%r8d, %ebx
	movslq	%ebx, %rdx
	movq	120(%r14), %rcx
	cmpq	%rcx, %rdx
	cmoval	%r10d, %eax
	cmoval	%ecx, %edx
	movslq	%edx, %rbx
	subq	%rbx, %rcx
	movq	%rcx, 120(%r14)
	leaq	1(%r13), %rdi
	leaq	1(%r15), %rsi
	movq	%rbx, %rdx
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movl	%eax, %ebp
	movl	%r11d, 20(%rsp)         # 4-byte Spill
	callq	memcpy
	movdqa	.LCPI1_1(%rip), %xmm6   # xmm6 = [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]
	movdqa	.LCPI1_0(%rip), %xmm5   # xmm5 = [13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13]
	xorl	%r10d, %r10d
	movl	20(%rsp), %r11d         # 4-byte Reload
	movl	%ebp, %eax
	movq	8(%rsp), %r9            # 8-byte Reload
	addq	%rbx, %r15
	addq	%rbx, %r13
	jmp	.LBB1_66
.LBB1_62:                               # %sw.epilog.180.thread
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	$0, 120(%r14)
	jmp	.LBB1_68
.LBB1_24:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	1(%r11), %rdx
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rdx
	addq	$-32, %rdx
	movq	%rdx, %rcx
	shrq	$5, %rcx
	btq	$5, %rdx
	movl	$0, %ebx
	jb	.LBB1_26
# BB#25:                                # %vector.body.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	movdqu	1(%r15), %xmm0
	movdqu	17(%r15), %xmm1
	movdqa	%xmm0, %xmm2
	pcmpeqb	%xmm5, %xmm2
	movdqa	%xmm1, %xmm3
	pcmpeqb	%xmm5, %xmm3
	movdqa	%xmm6, %xmm4
	pand	%xmm2, %xmm4
	pandn	%xmm0, %xmm2
	por	%xmm4, %xmm2
	movdqa	%xmm6, %xmm0
	pand	%xmm3, %xmm0
	pandn	%xmm1, %xmm3
	por	%xmm0, %xmm3
	movdqu	%xmm2, 1(%r13)
	movdqu	%xmm3, 17(%r13)
	movl	$32, %ebx
.LBB1_26:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB1_1 Depth=1
	subl	%edi, %ebp
	leaq	(%r15,%rdi), %r9
	leaq	(%r13,%rdi), %rsi
	testq	%rcx, %rcx
	je	.LBB1_29
# BB#27:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, %rdx
	incq	%rdx
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rdx
	subq	%rbx, %rdx
	leaq	49(%r13,%rbx), %rcx
	leaq	49(%r15,%rbx), %rbx
	.align	16, 0x90
.LBB1_28:                               # %vector.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rbx), %xmm0
	movdqu	-32(%rbx), %xmm1
	movdqa	%xmm0, %xmm2
	pcmpeqb	%xmm5, %xmm2
	movdqa	%xmm1, %xmm3
	pcmpeqb	%xmm5, %xmm3
	movdqa	%xmm6, %xmm4
	pand	%xmm2, %xmm4
	pandn	%xmm0, %xmm2
	por	%xmm4, %xmm2
	movdqa	%xmm6, %xmm0
	pand	%xmm3, %xmm0
	pandn	%xmm1, %xmm3
	por	%xmm0, %xmm3
	movdqu	%xmm2, -48(%rcx)
	movdqu	%xmm3, -32(%rcx)
	movdqu	-16(%rbx), %xmm0
	movdqu	(%rbx), %xmm1
	movdqa	%xmm0, %xmm2
	pcmpeqb	%xmm5, %xmm2
	movdqa	%xmm1, %xmm3
	pcmpeqb	%xmm5, %xmm3
	movdqa	%xmm6, %xmm4
	pand	%xmm2, %xmm4
	pandn	%xmm0, %xmm2
	por	%xmm4, %xmm2
	movdqa	%xmm6, %xmm0
	pand	%xmm3, %xmm0
	pandn	%xmm1, %xmm3
	por	%xmm0, %xmm3
	movdqu	%xmm2, -16(%rcx)
	movdqu	%xmm3, (%rcx)
	addq	$64, %rcx
	addq	$64, %rbx
	addq	$-64, %rdx
	jne	.LBB1_28
.LBB1_29:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r15
	movq	8(%rsp), %r9            # 8-byte Reload
.LBB1_30:                               # %middle.block
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rdi, %r10
	je	.LBB1_47
# BB#31:                                # %for.body.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	-1(%rbp), %ecx
	testb	$3, %bpl
	je	.LBB1_36
# BB#32:                                # %for.body.prol.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%ebp, %edx
	andl	$3, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_33:                               # %for.body.prol
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r15), %edi
	cmpl	$13, %edi
	movb	$10, %bl
	je	.LBB1_35
# BB#34:                                # %for.body.prol
                                        #   in Loop: Header=BB1_33 Depth=2
	movb	%dil, %bl
.LBB1_35:                               # %for.body.prol
                                        #   in Loop: Header=BB1_33 Depth=2
	incq	%r15
	movb	%bl, 1(%rsi)
	incq	%rsi
	decl	%ebp
	incl	%edx
	jne	.LBB1_33
.LBB1_36:                               # %for.body.preheader.split
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$3, %ecx
	jb	.LBB1_47
# BB#37:                                # %for.body.preheader.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	$4, %r15
	addq	$4, %rsi
	.align	16, 0x90
.LBB1_38:                               # %for.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%r15), %edx
	cmpl	$13, %edx
	movb	$10, %cl
	movb	$10, %bl
	je	.LBB1_40
# BB#39:                                # %for.body
                                        #   in Loop: Header=BB1_38 Depth=2
	movb	%dl, %bl
.LBB1_40:                               # %for.body
                                        #   in Loop: Header=BB1_38 Depth=2
	movb	%bl, -3(%rsi)
	movzbl	-2(%r15), %edx
	cmpl	$13, %edx
	movb	$10, %bl
	je	.LBB1_42
# BB#41:                                # %for.body
                                        #   in Loop: Header=BB1_38 Depth=2
	movb	%dl, %bl
.LBB1_42:                               # %for.body
                                        #   in Loop: Header=BB1_38 Depth=2
	movb	%bl, -2(%rsi)
	movzbl	-1(%r15), %edx
	cmpl	$13, %edx
	movb	$10, %bl
	je	.LBB1_44
# BB#43:                                # %for.body
                                        #   in Loop: Header=BB1_38 Depth=2
	movb	%dl, %bl
.LBB1_44:                               # %for.body
                                        #   in Loop: Header=BB1_38 Depth=2
	movb	%bl, -1(%rsi)
	movzbl	(%r15), %edx
	cmpl	$13, %edx
	je	.LBB1_46
# BB#45:                                # %for.body
                                        #   in Loop: Header=BB1_38 Depth=2
	movb	%dl, %cl
.LBB1_46:                               # %for.body
                                        #   in Loop: Header=BB1_38 Depth=2
	movb	%cl, (%rsi)
	addq	$4, %r15
	addq	$4, %rsi
	addl	$-4, %ebp
	jne	.LBB1_38
.LBB1_47:                               # %for.cond.sw.epilog.180.loopexit_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	1(%r13,%r11), %r13
	addq	%r11, %r8
	movq	%r8, %r15
	movl	20(%rsp), %r11d         # 4-byte Reload
	xorl	%r10d, %r10d
	jmp	.LBB1_66
.LBB1_52:                               # %for.body.110.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	1(%r15), %ecx
	movq	%rcx, %rsi
	shrq	$4, %rsi
	movb	.L.str.1(%rsi), %bl
	movb	%bl, 1(%r13)
	andl	$15, %ecx
	movb	.L.str.1(%rcx), %cl
	leaq	2(%r13), %rsi
	movb	%cl, 2(%r13)
	movl	%r10d, %edi
	movq	%rdx, %r15
.LBB1_53:                               # %for.body.110.lr.ph.split
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r10,%r10), %r8
	testl	%r10d, %r10d
	je	.LBB1_56
# BB#54:                                # %for.body.110.lr.ph.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	$2, %r15
	addq	$4, %rsi
	.align	16, 0x90
.LBB1_55:                               # %for.body.110
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%r15), %ebx
	movq	%rbx, %rbp
	shrq	$4, %rbp
	movb	.L.str.1(%rbp), %cl
	movb	%cl, -3(%rsi)
	andl	$15, %ebx
	movb	.L.str.1(%rbx), %cl
	movb	%cl, -2(%rsi)
	movzbl	(%r15), %ebp
	movq	%rbp, %rcx
	shrq	$4, %rcx
	movb	.L.str.1(%rcx), %cl
	movb	%cl, -1(%rsi)
	andl	$15, %ebp
	movb	.L.str.1(%rbp), %cl
	movb	%cl, (%rsi)
	addq	$2, %r15
	addq	$4, %rsi
	addl	$-2, %edi
	jne	.LBB1_55
.LBB1_56:                               # %for.cond.107.sw.epilog.180.loopexit113_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	2(%r13,%r8), %r13
	addq	%r10, %rdx
	movq	%rdx, %r15
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB1_66:                               # %sw.epilog.180thread-pre-split
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	120(%r14), %rcx
.LBB1_67:                               # %sw.epilog.180
                                        #   in Loop: Header=BB1_1 Depth=1
	testq	%rcx, %rcx
	je	.LBB1_68
	jmp	.LBB1_74
.LBB1_69:                               # %sw.bb.cleanup.loopexit_crit_edge
	addq	$-7, %rdx
	jmp	.LBB1_73
.LBB1_71:                               # %if.end.cleanup.loopexit383_crit_edge
	addq	$-7, %rdx
	jmp	.LBB1_72
.LBB1_10:
	movq	%rcx, %r15
	jmp	.LBB1_74
.LBB1_7:                                # %if.end.12
	cmpl	$3, %esi
	jne	.LBB1_70
# BB#8:
	addq	$2, %rcx
	movl	$-1, %eax
	movq	%rcx, %r15
	jmp	.LBB1_74
.LBB1_70:                               # %cleanup.loopexit383split
	addq	$-5, %rdx
.LBB1_72:                               # %cleanup
	movl	$-2, %eax
.LBB1_73:                               # %cleanup
	movq	%rdx, %r15
.LBB1_74:                               # %cleanup
	movq	%r15, (%r12)
	movq	%r13, 8(%r9)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_18:
	movq	%rcx, %r15
	jmp	.LBB1_74
.Lfunc_end1:
	.size	s_PFBD_process, .Lfunc_end1-s_PFBD_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_4
	.quad	.LBB1_66
	.quad	.LBB1_19
	.quad	.LBB1_48
	.quad	.LBB1_66
	.quad	.LBB1_59

	.text
	.align	16, 0x90
	.type	s_SFD_init,@function
s_SFD_init:                             # @s_SFD_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 144(%rdi)
	cmpl	$0, 128(%rdi)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 24(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	s_SFD_init, .Lfunc_end2-s_SFD_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_SFD_process,@function
s_SFD_process:                          # @s_SFD_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 112
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	(%rsi), %r13
	movq	8(%rsi), %r15
	movq	8(%rdx), %r8
	movq	16(%rdx), %r9
	cmpl	$0, 128(%r12)
	je	.LBB3_1
# BB#13:                                # %if.else.61
	movq	120(%r12), %rbx
	movl	144(%r12), %r14d
	movl	148(%r12), %eax
	jmp	.LBB3_14
.LBB3_1:                                # %if.then
	movq	%r15, %rdi
	subq	%r13, %rdi
	movslq	%edi, %rax
	movq	136(%r12), %rcx
	movq	%rax, %rbp
	subq	%rcx, %rbp
	jle	.LBB3_2
# BB#3:                                 # %if.else
	testq	%rcx, %rcx
	jle	.LBB3_4
# BB#5:                                 # %if.then.17
	addq	%rcx, %r13
	movq	%r13, (%rsi)
	movq	$0, 136(%r12)
	jmp	.LBB3_6
.LBB3_2:                                # %if.then.10
	subq	%rax, %rcx
	movq	%rcx, 136(%r12)
	movq	%r15, (%rsi)
	xorl	%eax, %eax
	jmp	.LBB3_37
.LBB3_4:
	movq	%rdi, %rbp
.LBB3_6:                                # %if.end.25
	movq	112(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB3_9
# BB#7:                                 # %if.else.32
	subq	%r8, %r9
	cmpl	%r9d, %ebp
	cmovlq	%rbp, %r9
	movslq	%r9d, %rdi
	movq	%rcx, %rax
	subq	%rdi, %rax
	jle	.LBB3_10
# BB#8:                                 # %if.then.37
	movq	%rax, 112(%r12)
.LBB3_9:                                # %if.then.31
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	stream_move             # TAILCALL
.LBB3_10:                               # %if.else.42
	movq	%rsi, %r15
	movq	%rdx, %r14
	testl	%ecx, %ecx
	jle	.LBB3_12
# BB#11:                                # %if.then.47
	leaq	1(%r8), %rdi
	leaq	1(%r13), %rsi
	movslq	%ecx, %rbx
	movq	%rbx, %rdx
	movq	%r8, %rbp
	callq	memcpy
	addq	%rbx, %r13
	movq	%r13, (%r15)
	addq	%rbx, %rbp
	movq	%rbp, 8(%r14)
.LBB3_12:                               # %if.end.57
	movq	$-1, 112(%r12)
	movl	$-1, %eax
	jmp	.LBB3_37
.LBB3_30:                               # %while.end
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	$0, 152(%r12)
	subl	%edx, %r14d
	movl	%r14d, 148(%r12)
	movl	%r14d, %eax
	movl	%edx, %r14d
	movq	%rbp, %r13
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %r8            # 8-byte Reload
	movq	(%rsp), %r9             # 8-byte Reload
	.align	16, 0x90
.LBB3_14:                               # %cp
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
                                        #       Child Loop BB3_19 Depth 3
                                        #     Child Loop BB3_28 Depth 2
	testl	%eax, %eax
	je	.LBB3_18
# BB#15:                                # %if.then.64
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%r9, %rbp
	movq	%r9, (%rsp)             # 8-byte Spill
	subq	%r8, %rbp
	movl	%eax, %ecx
	cmpq	%rcx, %rbp
	cmovleq	%rbp, %rcx
	cmovgel	%eax, %ebp
	leaq	1(%r8), %rdi
	movl	152(%r12), %esi
	addq	120(%r12), %rsi
	movslq	%ecx, %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r8, 8(%rsp)            # 8-byte Spill
	callq	memcpy
	movq	8(%rsp), %r8            # 8-byte Reload
	movl	148(%r12), %eax
	movl	%eax, %ecx
	subl	%ebp, %ecx
	movl	%ecx, 148(%r12)
	addl	%ebp, 152(%r12)
	addq	48(%rsp), %r8           # 8-byte Folded Reload
	cmpl	%ebp, %eax
	movl	$1, %eax
	jne	.LBB3_16
# BB#17:                                # %cleanup.106
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	$-1, %eax
	cmpq	$0, 112(%r12)
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	(%rsp), %r9             # 8-byte Reload
	jns	.LBB3_18
	jmp	.LBB3_34
	.align	16, 0x90
.LBB3_38:                               # %if.end.173
                                        #   in Loop: Header=BB3_18 Depth=2
	movb	%al, 1(%r8)
	incq	%r8
	xorl	%r14d, %r14d
.LBB3_18:                               # %while.cond.outer
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_19 Depth 3
	incq	%r13
	movq	%r13, %rax
	.align	16, 0x90
.LBB3_19:                               # %while.cond
                                        #   Parent Loop BB3_14 Depth=1
                                        #     Parent Loop BB3_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %r13
	leaq	-1(%r13), %rbp
	xorl	%eax, %eax
	cmpq	%r15, %rbp
	jae	.LBB3_33
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB3_19 Depth=3
	movzbl	(%r13), %eax
	movl	%r14d, %ecx
	movzbl	(%rbx,%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB3_26
# BB#21:                                # %if.then.114
                                        #   in Loop: Header=BB3_19 Depth=3
	incl	%r14d
	leaq	1(%r13), %rax
	cmpl	128(%r12), %r14d
	jne	.LBB3_19
# BB#22:                                # %if.then.119
                                        #   in Loop: Header=BB3_18 Depth=2
	movq	136(%r12), %rax
	testq	%rax, %rax
	jle	.LBB3_24
# BB#23:                                # %if.then.123
                                        #   in Loop: Header=BB3_18 Depth=2
	movq	8(%rdx), %r8
	decq	%rax
	movq	%rax, 136(%r12)
	xorl	%r14d, %r14d
	jmp	.LBB3_18
	.align	16, 0x90
.LBB3_26:                               # %if.end.145
                                        #   in Loop: Header=BB3_18 Depth=2
	testl	%r14d, %r14d
	jne	.LBB3_27
# BB#31:                                # %if.end.168
                                        #   in Loop: Header=BB3_18 Depth=2
	cmpq	%r9, %r8
	jne	.LBB3_38
	jmp	.LBB3_32
.LBB3_24:                               # %if.end.126
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	112(%r12), %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	jle	.LBB3_34
# BB#25:                                # %if.else.131
                                        #   in Loop: Header=BB3_14 Depth=1
	cmpq	$1, %rcx
	leaq	-1(%rcx), %rax
	movq	$-1, %rcx
	cmoveq	%rcx, %rax
	movq	%rax, 112(%r12)
	movl	$0, 152(%r12)
	movl	%r14d, 148(%r12)
	movl	%r14d, %eax
	xorl	%r14d, %r14d
	jmp	.LBB3_14
.LBB3_27:                               # %while.body.152.preheader
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	%r9, (%rsp)             # 8-byte Spill
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	leal	-1(%r14), %ecx
	movslq	%r14d, %rax
	subq	%rcx, %rax
	leaq	(%rax,%rbx), %r13
	movl	%r14d, %eax
	.align	16, 0x90
.LBB3_28:                               # %while.body.152
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leal	-1(%rax), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	movl	36(%rsp), %edx          # 4-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	testl	%eax, %eax
	movq	40(%rsp), %rax          # 8-byte Reload
	je	.LBB3_30
# BB#29:                                # %while.body.152
                                        #   in Loop: Header=BB3_28 Depth=2
	decq	%rcx
	incq	%r13
	cmpl	$1, %eax
	movl	%edx, %eax
	jne	.LBB3_28
	jmp	.LBB3_30
.LBB3_32:
	xorl	%r14d, %r14d
	movl	$1, %eax
	movq	%r9, %r8
.LBB3_33:                               # %xit
	movq	%rbp, %r13
.LBB3_34:                               # %xit
	movq	%r13, (%rsi)
	cmpq	$0, 136(%r12)
	jg	.LBB3_36
# BB#35:                                # %if.then.184
	movq	%r8, 8(%rdx)
.LBB3_36:                               # %if.end.186
	movl	%r14d, 144(%r12)
.LBB3_37:                               # %cleanup.189
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_16:
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB3_34
.Lfunc_end3:
	.size	s_SFD_process, .Lfunc_end3-s_SFD_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_SFD_set_defaults,@function
s_SFD_set_defaults:                     # @s_SFD_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 112(%rdi)
	movq	$0, 120(%rdi)
	movl	$0, 128(%rdi)
	movq	$0, 136(%rdi)
	retq
.Lfunc_end4:
	.size	s_SFD_set_defaults, .Lfunc_end4-s_SFD_set_defaults
	.cfi_endproc

	.type	st_PFBD_state,@object   # @st_PFBD_state
	.section	.rodata,"a",@progbits
	.align	8
st_PFBD_state:
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_PFBD_state, 64

	.type	s_PFBD_template,@object # @s_PFBD_template
	.globl	s_PFBD_template
	.align	8
s_PFBD_template:
	.quad	st_PFBD_state
	.quad	s_PFBD_init
	.quad	s_PFBD_process
	.long	6                       # 0x6
	.long	2                       # 0x2
	.quad	0
	.quad	0
	.quad	0
	.size	s_PFBD_template, 56

	.type	st_SFD_state,@object    # @st_SFD_state
	.align	8
st_SFD_state:
	.long	160                     # 0xa0
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	sfd_reloc_ptrs
	.size	st_SFD_state, 64

	.type	s_SFD_template,@object  # @s_SFD_template
	.globl	s_SFD_template
	.align	8
s_SFD_template:
	.quad	st_SFD_state
	.quad	s_SFD_init
	.quad	s_SFD_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	s_SFD_set_defaults
	.quad	0
	.size	s_SFD_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"PFBDecode state"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0123456789abcdef"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"SubFileDecode state"
	.size	.L.str.2, 20

	.type	sfd_reloc_ptrs,@object  # @sfd_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
sfd_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	sfd_enum_ptrs
	.size	sfd_reloc_ptrs, 24

	.type	sfd_enum_ptrs,@object   # @sfd_enum_ptrs
	.align	2
sfd_enum_ptrs:
	.short	2                       # 0x2
	.short	120                     # 0x78
	.size	sfd_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
