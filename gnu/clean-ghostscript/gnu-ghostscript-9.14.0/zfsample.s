	.text
	.file	"zfsample.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	make_sampled_function
	.align	16, 0x90
	.type	make_sampled_function,@function
make_sampled_function:                  # @make_sampled_function
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
	subq	$216, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 272
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	(%rcx), %rax
	movq	%rax, 200(%rsp)
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 176(%rsp)
	movdqa	%xmm0, 160(%rsp)
	movdqa	%xmm0, 144(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movdqa	%xmm0, 112(%rsp)
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movdqa	%xmm0, 64(%rsp)
	movq	$0, 192(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	32(%rsp), %rdx
	callq	get_space_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_53
# BB#1:                                 # %if.end
	movq	32(%rsp), %rax
	movq	24(%rax), %rax
	movl	$-20, %ebp
	testq	%rax, %rax
	je	.LBB0_53
# BB#2:                                 # %if.end.2
	leaq	40(%rsp), %rdx
	leaq	208(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*%rax
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_53
# BB#3:                                 # %if.end.7
	movq	40(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	%r12, %rdi
	callq	get_space_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_53
# BB#4:                                 # %if.end.11
	movl	$3, 96(%rsp)
	movl	$16, 136(%rsp)
	movq	32(%rsp), %rax
	leaq	212(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*32(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_53
# BB#5:                                 # %if.end.15
	movq	8(%r12), %rdi
	movl	212(%rsp), %esi
	addl	%esi, %esi
	movl	$4, %edx
	movl	$.L.str, %ecx
	callq	*88(%rdi)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB0_53
# BB#6:                                 # %if.end.21
	movq	32(%rsp), %rax
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	*48(%rax)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_7
# BB#8:                                 # %if.end.27
	movq	%r13, 72(%rsp)
	movslq	212(%rsp), %r15
	movl	%r15d, 64(%rsp)
	movq	24(%rsp), %rax
	movq	40(%rsp), %rsi
	leaq	212(%rsp), %rdx
	movq	%r12, %rdi
	callq	*32(%rax)
	movl	%eax, %ebx
	movq	8(%r12), %rdi
	testl	%ebx, %ebx
	js	.LBB0_9
# BB#11:                                # %if.end.35
	movl	212(%rsp), %esi
	addl	%esi, %esi
	movl	$4, %edx
	movl	$.L.str.2, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_12
# BB#13:                                # %if.end.49
	movq	24(%rsp), %rax
	movq	40(%rsp), %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	*40(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_14
# BB#15:                                # %if.end.58
	movq	%rbx, 88(%rsp)
	movl	212(%rsp), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%eax, 80(%rsp)
	movq	8(%r12), %rdi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	movl	%r15d, %esi
	callq	*88(%rdi)
	movq	%rax, %rcx
	movl	$-25, %ebp
	testq	%rcx, %rcx
	je	.LBB0_52
# BB#16:                                # %if.end.69
	movq	%rcx, 160(%rsp)
	leal	-1(%r15), %eax
	cmpl	$7, %eax
	ja	.LBB0_18
# BB#17:                                # %while.body.preheader.i.thread
	cltq
	movl	determine_sampled_data_size.size_list(,%rax,4), %esi
	jmp	.LBB0_19
.LBB0_7:                                # %if.then.24
	movq	8(%r12), %rdi
	movl	$.L.str, %edx
	jmp	.LBB0_10
.LBB0_9:                                # %if.then.31
	movl	$.L.str.1, %edx
.LBB0_10:                               # %cleanup
	movq	%r13, %rsi
	callq	gs_free_const_object
	movl	%ebx, %ebp
	jmp	.LBB0_53
.LBB0_12:                               # %if.then.45
	movq	8(%r12), %rdi
	movl	$.L.str, %edx
	movq	%r13, %rsi
	callq	gs_free_const_object
	jmp	.LBB0_53
.LBB0_14:                               # %if.then.52
	movq	8(%r12), %rdi
	movl	$.L.str, %edx
	movq	%r13, %rsi
	callq	gs_free_const_object
	movq	8(%r12), %rdi
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	callq	gs_free_const_object
	jmp	.LBB0_53
.LBB0_18:                               # %while.body.preheader.i
	movl	$2, %esi
	testl	%r15d, %r15d
	jle	.LBB0_34
.LBB0_19:                               # %while.body.preheader.i.while.body.preheader.i.split_crit_edge
	movabsq	$8589934584, %rdi       # imm = 0x1FFFFFFF8
	shll	$4, 20(%rsp)            # 4-byte Folded Spill
	leal	-1(%r15), %r8d
	incq	%r8
	andq	%r8, %rdi
	leaq	-8(%rdi), %r9
	movl	%r9d, %r10d
	shrl	$3, %r10d
	incl	%r10d
	andl	$3, %r10d
	leal	-8(%rdi), %ebx
	shrl	$3, %ebx
	incl	%ebx
	andl	$3, %ebx
	negq	%rbx
	leaq	112(%rcx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB0_20:                               # %overflow.checked
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_31 Depth 2
	testq	%rdi, %rdi
	movl	$0, %edx
	je	.LBB0_27
# BB#21:                                # %vector.ph
                                        #   in Loop: Header=BB0_20 Depth=1
	testq	%r10, %r10
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movq	%rbx, %rdx
	movl	$0, %eax
	je	.LBB0_23
.LBB0_22:                               # %vector.body.prol
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%rcx,%rax,4)
	movdqu	%xmm0, 16(%rcx,%rax,4)
	addq	$8, %rax
	incq	%rdx
	jne	.LBB0_22
.LBB0_23:                               # %vector.ph.split
                                        #   in Loop: Header=BB0_20 Depth=1
	cmpq	$24, %r9
	movq	%rdi, %rdx
	jb	.LBB0_27
# BB#24:                                # %vector.ph.split.split
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	%rdi, %rdx
	subq	%rax, %rdx
	movq	8(%rsp), %rbp           # 8-byte Reload
	leaq	(%rbp,%rax,4), %rax
.LBB0_25:                               # %vector.body
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rax)
	movdqu	%xmm0, -96(%rax)
	movdqu	%xmm0, -80(%rax)
	movdqu	%xmm0, -64(%rax)
	movdqu	%xmm0, -48(%rax)
	movdqu	%xmm0, -32(%rax)
	movdqu	%xmm0, -16(%rax)
	movdqu	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-32, %rdx
	jne	.LBB0_25
# BB#26:                                #   in Loop: Header=BB0_20 Depth=1
	movq	%rdi, %rdx
.LBB0_27:                               # %middle.block
                                        #   in Loop: Header=BB0_20 Depth=1
	cmpq	%rdx, %r8
	movl	$0, %ebp
	movl	20(%rsp), %r13d         # 4-byte Reload
	je	.LBB0_31
# BB#28:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	%r15d, %eax
	subl	%edx, %eax
	leaq	(%rcx,%rdx,4), %rdx
	.align	16, 0x90
.LBB0_29:                               # %for.body.i
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, (%rdx)
	addq	$4, %rdx
	decl	%eax
	jne	.LBB0_29
# BB#30:                                #   in Loop: Header=BB0_20 Depth=1
	xorl	%ebp, %ebp
	movl	20(%rsp), %r13d         # 4-byte Reload
.LBB0_31:                               # %for.body.i.i
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx,%rbp,4), %r11d
	testl	%r11d, %r11d
	jle	.LBB0_51
# BB#32:                                # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	$65536, %eax            # imm = 0x10000
	xorl	%edx, %edx
	idivl	%r13d
	cmpl	%eax, %r11d
	jg	.LBB0_51
# BB#33:                                # %if.end.i.i
                                        #   in Loop: Header=BB0_31 Depth=2
	imull	%r11d, %r13d
	incq	%rbp
	cmpq	%r15, %rbp
	jl	.LBB0_31
	jmp	.LBB0_34
.LBB0_51:                               # %if.end.6.i
                                        #   in Loop: Header=BB0_20 Depth=1
	cmpl	$2, %esi
	leal	-1(%rsi), %eax
	movl	$-15, %ebp
	movl	%eax, %esi
	jne	.LBB0_20
	jmp	.LBB0_52
.LBB0_34:                               # %if.end.77
	movl	136(%rsp), %ebx
	sarl	$3, %ebx
	imull	80(%rsp), %ebx
	movslq	64(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB0_48
# BB#35:                                # %for.body.lr.ph
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.LBB0_47
# BB#36:                                # %overflow.checked84
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	$-8, %rdx
	movl	$1, %edi
	movd	%edi, %xmm1
	movd	%ebx, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	je	.LBB0_37
# BB#38:                                # %vector.body80.preheader
	leaq	-8(%rax), %rbx
	movl	%ebx, %esi
	shrl	$3, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB0_39
# BB#40:                                # %vector.body80.prol.preheader
	leal	-8(%rax), %ebp
	shrl	$3, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	movdqa	.LCPI0_0(%rip), %xmm2   # xmm2 = [1,1,1,1]
	xorl	%edi, %edi
	movdqa	%xmm0, %xmm3
.LBB0_41:                               # %vector.body80.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx,%rdi,4), %xmm0
	movdqu	16(%rcx,%rdi,4), %xmm1
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	addq	$8, %rdi
	incq	%rbp
	movdqa	%xmm0, %xmm3
	movdqa	%xmm1, %xmm2
	jne	.LBB0_41
	jmp	.LBB0_42
.LBB0_37:
	movdqa	.LCPI0_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	jmp	.LBB0_46
.LBB0_39:
	movdqa	.LCPI0_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
.LBB0_42:                               # %vector.body80.preheader.split
	cmpq	$24, %rbx
	jb	.LBB0_45
# BB#43:                                # %vector.body80.preheader.split.split
	movq	%rax, %rsi
	andq	$-8, %rsi
	subq	%rdi, %rsi
	leaq	112(%rcx,%rdi,4), %rdi
.LBB0_44:                               # %vector.body80
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-112(%rdi), %xmm3
	movdqu	-96(%rdi), %xmm4
	movdqu	-80(%rdi), %xmm5
	movdqu	-64(%rdi), %xmm2
	pshufd	$245, %xmm3, %xmm6      # xmm6 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm6, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	pshufd	$245, %xmm4, %xmm0      # xmm0 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	pshufd	$245, %xmm5, %xmm0      # xmm0 = xmm5[1,1,3,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm1      # xmm1 = xmm5[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm0      # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pshufd	$245, %xmm2, %xmm0      # xmm0 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm4, %xmm3      # xmm3 = xmm4[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm0      # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqu	-48(%rdi), %xmm0
	movdqu	-32(%rdi), %xmm3
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm5      # xmm5 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm0      # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	pshufd	$245, %xmm3, %xmm0      # xmm0 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm2, %xmm1      # xmm1 = xmm2[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	movdqu	-16(%rdi), %xmm0
	movdqu	(%rdi), %xmm1
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm5, %xmm4      # xmm4 = xmm5[1,1,3,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm2      # xmm2 = xmm4[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subq	$-128, %rdi
	addq	$-32, %rsi
	jne	.LBB0_44
.LBB0_45:
	movq	%rdx, %rsi
.LBB0_46:                               # %middle.block81
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%xmm1, %ebx
	cmpq	%rsi, %rax
	je	.LBB0_48
.LBB0_47:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	imull	(%rcx,%rsi,4), %ebx
	incq	%rsi
	cmpq	%rax, %rsi
	jl	.LBB0_47
.LBB0_48:                               # %for.end
	movq	8(%r12), %rdi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	testq	%rax, %rax
	movl	$-25, %ebp
	je	.LBB0_52
# BB#49:                                # %if.end.94
	movl	$1, 112(%rsp)
	movq	%rax, 120(%rsp)
	movl	%ebx, 128(%rsp)
	movq	$data_source_access_bytes, 104(%rsp)
	movq	8(%r12), %rdx
	leaq	200(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	gs_function_Sd_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_53
# BB#50:                                # %if.end.106
	movq	200(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	sampled_data_setup
	movl	%eax, %ebp
	jmp	.LBB0_53
.LBB0_52:                               # %fail
	movq	8(%r12), %rsi
	leaq	64(%rsp), %rdi
	callq	gs_function_Sd_free_params
.LBB0_53:                               # %cleanup
	movl	%ebp, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	make_sampled_function, .Lfunc_end0-make_sampled_function
	.cfi_endproc

	.align	16, 0x90
	.type	sampled_data_setup,@function
sampled_data_setup:                     # @sampled_data_setup
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
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
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
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	leaq	624(%rbx), %r15
	movq	624(%rbx), %rbp
	movq	536(%rbx), %rax
	addq	$-64, %rax
	cmpq	%rax, 520(%rbx)
	jbe	.LBB1_1
# BB#2:                                 # %if.then
	leaq	520(%rbx), %rdi
	movl	$4, %esi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB1_13
# BB#3:                                 # %if.then.if.end.10_crit_edge
	movq	(%r15), %rcx
	jmp	.LBB1_4
.LBB1_1:                                # %entry.if.end.10_crit_edge
	movq	%rbp, %rcx
.LBB1_4:                                # %if.end.10
	movq	640(%rbx), %rax
	subq	%rcx, %rax
	sarq	$4, %rax
	movslq	72(%r12), %rcx
	addq	$3, %rcx
	cmpq	%rcx, %rax
	jl	.LBB1_5
# BB#6:                                 # %if.end.24
	movslq	88(%r12), %rcx
	addq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_7
.LBB1_5:                                # %if.then.19
	movl	%ecx, 688(%rbx)
	movl	$-16, %eax
.LBB1_13:                               # %cleanup.133
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_7:                                # %if.end.45
	movq	8(%rbx), %rdi
	movl	$st_gs_sampled_data_enum, %esi
	movl	$.L.str.7, %edx
	callq	*72(%rdi)
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB1_13
# BB#8:                                 # %if.end.50
	movq	%r12, 72(%r13)
	xorl	%eax, %eax
	cmpl	$0, 72(%r12)
	jle	.LBB1_10
	.align	16, 0x90
.LBB1_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%r13,%rax,4)
	incq	%rax
	movslq	72(%r12), %rcx
	cmpq	%rcx, %rax
	jl	.LBB1_9
.LBB1_10:                               # %for.end
	movq	%r15, %rdi
	callq	ref_stack_count
	movl	%eax, 64(%r13)
	leaq	48(%rbp), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB1_12
# BB#11:                                # %if.then.64
	movl	$3, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB1_13
.LBB1_12:                               # %if.else
	movq	%rax, 624(%rbx)
	movw	$3584, 48(%rbp)         # imm = 0xE00
	movw	$3584, 32(%rbp)         # imm = 0xE00
	movw	$3584, 16(%rbp)         # imm = 0xE00
	movq	520(%rbx), %rax
	leaq	48(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$sampled_data_finish, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, -32(%rax)        # imm = 0xF80
	movl	$0, -28(%rax)
	movups	(%r14), %xmm0
	movups	%xmm0, -16(%rax)
	movq	520(%rbx), %rax
	movq	%r13, 8(%rax)
	movl	$2048, %eax             # imm = 0x800
	addl	56(%rbx), %eax
	movq	520(%rbx), %rcx
	movw	%ax, (%rcx)
	leaq	16(%rcx), %rax
	movq	%rax, 520(%rbx)
	movq	$sampled_data_sample, 24(%rcx)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
	jmp	.LBB1_13
.Lfunc_end1:
	.size	sampled_data_setup, .Lfunc_end1-sampled_data_setup
	.cfi_endproc

	.align	16, 0x90
	.type	sampled_data_finish,@function
sampled_data_finish:                    # @sampled_data_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 64
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movq	624(%rbx), %r15
	movq	8(%rax), %r14
	movq	72(%r14), %rsi
	addq	$72, %rsi
	movq	8(%rbx), %rdx
	leaq	24(%rsp), %rdi
	callq	gs_function_Sd_init
	testl	%eax, %eax
	js	.LBB2_3
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rsi
	movl	$192, %edx
	movl	$2, %ecx
	movl	$.L.str.11, %r8d
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB2_3
# BB#2:                                 # %if.end.10
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movl	76(%rbx), %eax
	movl	56(%rbx), %ecx
	orl	%eax, %ecx
	orl	$192, %ecx
	addl	$2048, %ecx             # imm = 0x800
	movq	16(%rsp), %rdx
	movw	%cx, (%rdx)
	movq	$zexecfunction, 24(%rdx)
	orl	$128, %eax
	addl	$3840, %eax             # imm = 0xF00
	movq	16(%rsp), %rcx
	movw	%ax, 16(%rcx)
	movl	$0, 20(%rcx)
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%r15)
	addq	$-48, 520(%rbx)
	movq	8(%rbx), %rdi
	movq	72(%r14), %rsi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
	movq	8(%rbx), %rdi
	movl	$.L.str.13, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movl	$14, %eax
.LBB2_3:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	sampled_data_finish, .Lfunc_end2-sampled_data_finish
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.align	16, 0x90
	.type	zbuildsampledfunction,@function
zbuildsampledfunction:                  # @zbuildsampledfunction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 224
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbp
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 128(%rsp)
	movdqa	%xmm0, 112(%rsp)
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movdqa	%xmm0, 64(%rsp)
	movdqa	%xmm0, 48(%rsp)
	movdqa	%xmm0, 32(%rsp)
	movdqa	%xmm0, 16(%rsp)
	movq	$0, 144(%rsp)
	movzbl	1(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB3_1
# BB#2:                                 # %if.end
	leaq	160(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	movl	$-15, %ebx
	testl	%eax, %eax
	jle	.LBB3_70
# BB#3:                                 # %do.body
	movq	160(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB3_4
# BB#5:                                 # %do.end
	movq	8(%r15), %r14
	leaq	48(%rsp), %r9
	movl	$.L.str.15, %esi
	movl	$1, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movq	%rbp, %rdi
	callq	dict_int_param
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB3_64
# BB#6:                                 # %lor.lhs.false.i
	leaq	88(%rsp), %r9
	movl	$.L.str.16, %esi
	movl	$1, %edx
	movl	$32, %ecx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	callq	dict_int_param
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB3_64
# BB#7:                                 # %lor.lhs.false.3.i
	leaq	24(%rsp), %r8
	movl	$.L.str.17, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbp, %rdi
	movq	%r14, %r9
	callq	fn_build_float_array
	movl	%eax, %ebx
	movl	%ebx, 16(%rsp)
	testl	%ebx, %ebx
	js	.LBB3_64
# BB#8:                                 # %lor.lhs.false.6.i
	leaq	40(%rsp), %r8
	movl	$.L.str.18, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbp, %rdi
	movq	%r14, %r9
	callq	fn_build_float_array
	movl	%eax, %ebx
	movl	%ebx, 32(%rsp)
	testl	%ebx, %ebx
	js	.LBB3_64
# BB#9:                                 # %if.end.i
	movl	16(%rsp), %esi
	sarl	%esi
	movl	%esi, 16(%rsp)
	sarl	%ebx
	movl	%ebx, 32(%rsp)
	cmpl	$128, %ebx
	jg	.LBB3_10
# BB#11:                                # %if.end.i
	cmpl	$16, %esi
	jg	.LBB3_12
# BB#13:                                # %if.end.i
	testl	%ebx, %ebx
	je	.LBB3_14
# BB#15:                                # %if.end.i
	testl	%esi, %esi
	je	.LBB3_16
# BB#17:                                # %if.end.24.i
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	movq	%r14, %rdi
	callq	*88(%r14)
	movl	$-25, %ebx
	testq	%rax, %rax
	je	.LBB3_64
# BB#18:                                # %if.end.29.i
	movq	%rax, 112(%rsp)
	movl	16(%rsp), %ecx
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %r8
	callq	dict_ints_param
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB3_64
# BB#19:                                # %if.end.34.i
	movslq	16(%rsp), %rsi
	je	.LBB3_20
# BB#45:                                # %if.else.i
	cmpl	%esi, %ebx
	jne	.LBB3_46
# BB#47:                                # %for.body.lr.ph.i.i
	movq	112(%rsp), %rcx
	movl	32(%rsp), %esi
	imull	88(%rsp), %esi
	movslq	%ebx, %rdi
	xorl	%ebp, %ebp
.LBB3_48:                               # %for.body.i.65.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rbp,4), %ebx
	testl	%ebx, %ebx
	jle	.LBB3_49
# BB#50:                                # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB3_48 Depth=1
	movl	$65536, %eax            # imm = 0x10000
	xorl	%edx, %edx
	idivl	%esi
	cmpl	%eax, %ebx
	jg	.LBB3_51
# BB#65:                                # %if.end.i.i
                                        #   in Loop: Header=BB3_48 Depth=1
	imull	%ebx, %esi
	incq	%rbp
	cmpq	%rdi, %rbp
	jl	.LBB3_48
# BB#66:                                # %fail.i
	leaq	16(%rsp), %rdi
	movq	%r14, %rsi
	callq	gs_function_Sd_free_params
	movl	$-15, %ebx
	jmp	.LBB3_70
.LBB3_1:                                # %if.then
	movq	%rbp, %rdi
	callq	check_type_failed
	jmp	.LBB3_69
.LBB3_4:                                # %if.then.12
	callq	check_proc_failed
.LBB3_69:                               # %cleanup
	movl	%eax, %ebx
	jmp	.LBB3_70
.LBB3_10:
	movl	$-15, %ebx
	jmp	.LBB3_64
.LBB3_12:
	movl	$-15, %ebx
	jmp	.LBB3_64
.LBB3_20:                               # %if.then.36.i
	movl	32(%rsp), %eax
	movl	88(%rsp), %r12d
	movq	112(%rsp), %rcx
	leal	-1(%rsi), %edx
	cmpl	$7, %edx
	ja	.LBB3_41
# BB#21:                                # %while.body.preheader.i.thread.i
	movslq	%edx, %rdx
	movl	determine_sampled_data_size.size_list(,%rdx,4), %edi
	jmp	.LBB3_22
.LBB3_14:
	movl	$-15, %ebx
	jmp	.LBB3_64
.LBB3_16:
	movl	$-15, %ebx
	jmp	.LBB3_64
.LBB3_46:
	movl	$-15, %ebx
	jmp	.LBB3_64
.LBB3_41:                               # %while.body.preheader.i.i
	movl	$2, %edi
	testl	%esi, %esi
	jle	.LBB3_42
.LBB3_22:                               # %while.body.preheader.i.while.body.preheader.i.split_crit_edge.i
	movabsq	$8589934584, %r11       # imm = 0x1FFFFFFF8
	imull	%eax, %r12d
	leal	-1(%rsi), %r8d
	incq	%r8
	andq	%r8, %r11
	leaq	-8(%r11), %r10
	movq	%r10, 8(%rsp)           # 8-byte Spill
	shrl	$3, %r10d
	incl	%r10d
	andl	$3, %r10d
	leal	-8(%r11), %r13d
	shrl	$3, %r13d
	incl	%r13d
	andl	$3, %r13d
	negq	%r13
	leaq	112(%rcx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
.LBB3_23:                               # %overflow.checked
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_25 Depth 2
                                        #     Child Loop BB3_28 Depth 2
                                        #     Child Loop BB3_32 Depth 2
                                        #     Child Loop BB3_34 Depth 2
	testq	%r11, %r11
	movl	$0, %edx
	je	.LBB3_30
# BB#24:                                # %vector.ph
                                        #   in Loop: Header=BB3_23 Depth=1
	testq	%r10, %r10
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movq	%r13, %rdx
	movl	$0, %eax
	je	.LBB3_26
.LBB3_25:                               # %vector.body.prol
                                        #   Parent Loop BB3_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%rcx,%rax,4)
	movdqu	%xmm0, 16(%rcx,%rax,4)
	addq	$8, %rax
	incq	%rdx
	jne	.LBB3_25
.LBB3_26:                               # %vector.ph.split
                                        #   in Loop: Header=BB3_23 Depth=1
	cmpq	$24, 8(%rsp)            # 8-byte Folded Reload
	movq	%r11, %rdx
	jb	.LBB3_30
# BB#27:                                # %vector.ph.split.split
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	%r11, %rdx
	subq	%rax, %rdx
	movq	(%rsp), %rbp            # 8-byte Reload
	leaq	(%rbp,%rax,4), %rax
.LBB3_28:                               # %vector.body
                                        #   Parent Loop BB3_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rax)
	movdqu	%xmm0, -96(%rax)
	movdqu	%xmm0, -80(%rax)
	movdqu	%xmm0, -64(%rax)
	movdqu	%xmm0, -48(%rax)
	movdqu	%xmm0, -32(%rax)
	movdqu	%xmm0, -16(%rax)
	movdqu	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-32, %rdx
	jne	.LBB3_28
# BB#29:                                #   in Loop: Header=BB3_23 Depth=1
	movq	%r11, %rdx
.LBB3_30:                               # %middle.block
                                        #   in Loop: Header=BB3_23 Depth=1
	cmpq	%rdx, %r8
	movl	$0, %ebx
	movl	%r12d, %ebp
	je	.LBB3_34
# BB#31:                                # %for.body.i.i.preheader
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	%esi, %eax
	subl	%edx, %eax
	leaq	(%rcx,%rdx,4), %rdx
.LBB3_32:                               # %for.body.i.i
                                        #   Parent Loop BB3_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, (%rdx)
	addq	$4, %rdx
	decl	%eax
	jne	.LBB3_32
# BB#33:                                #   in Loop: Header=BB3_23 Depth=1
	xorl	%ebx, %ebx
	movl	%r12d, %ebp
.LBB3_34:                               # %for.body.i.i.i
                                        #   Parent Loop BB3_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx,%rbx,4), %r9d
	testl	%r9d, %r9d
	jle	.LBB3_43
# BB#35:                                # %lor.lhs.false.i.i.i
                                        #   in Loop: Header=BB3_34 Depth=2
	movl	$65536, %eax            # imm = 0x10000
	xorl	%edx, %edx
	idivl	%ebp
	cmpl	%eax, %r9d
	jg	.LBB3_43
# BB#36:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB3_34 Depth=2
	imull	%r9d, %ebp
	incq	%rbx
	cmpq	%rsi, %rbx
	jl	.LBB3_34
	jmp	.LBB3_37
.LBB3_43:                               # %if.end.6.i.i
                                        #   in Loop: Header=BB3_23 Depth=1
	cmpl	$2, %edi
	leal	-1(%rdi), %eax
	movl	%eax, %edi
	jne	.LBB3_23
# BB#44:
	movl	$-15, %ebx
	jmp	.LBB3_64
.LBB3_37:                               # %cleanup.cont.i
	movl	88(%rsp), %r12d
	movslq	16(%rsp), %rax
	sarl	$3, %r12d
	imull	32(%rsp), %r12d
	testq	%rax, %rax
	jle	.LBB3_63
# BB#38:                                # %for.body.lr.ph.i
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.LBB3_61
# BB#39:                                # %overflow.checked35
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	$-8, %rdx
	movl	$1, %edi
	movd	%edi, %xmm1
	movd	%r12d, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	je	.LBB3_40
# BB#52:                                # %vector.body31.preheader
	leaq	-8(%rax), %rbx
	movl	%ebx, %esi
	shrl	$3, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB3_53
# BB#54:                                # %vector.body31.prol.preheader
	leal	-8(%rax), %ebp
	shrl	$3, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	movdqa	.LCPI3_0(%rip), %xmm2   # xmm2 = [1,1,1,1]
	xorl	%edi, %edi
	movdqa	%xmm0, %xmm3
.LBB3_55:                               # %vector.body31.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx,%rdi,4), %xmm0
	movdqu	16(%rcx,%rdi,4), %xmm1
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	addq	$8, %rdi
	incq	%rbp
	movdqa	%xmm0, %xmm3
	movdqa	%xmm1, %xmm2
	jne	.LBB3_55
	jmp	.LBB3_56
.LBB3_49:
	movl	$-15, %ebx
	jmp	.LBB3_64
.LBB3_51:
	movl	$-15, %ebx
	jmp	.LBB3_64
.LBB3_42:                               # %cleanup.cont.i.thread
	sarl	$3, %r12d
	imull	%eax, %r12d
	jmp	.LBB3_63
.LBB3_40:
	movdqa	.LCPI3_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	jmp	.LBB3_60
.LBB3_53:
	movdqa	.LCPI3_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
.LBB3_56:                               # %vector.body31.preheader.split
	cmpq	$24, %rbx
	jb	.LBB3_59
# BB#57:                                # %vector.body31.preheader.split.split
	movq	%rax, %rsi
	andq	$-8, %rsi
	subq	%rdi, %rsi
	leaq	112(%rcx,%rdi,4), %rdi
.LBB3_58:                               # %vector.body31
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-112(%rdi), %xmm3
	movdqu	-96(%rdi), %xmm4
	movdqu	-80(%rdi), %xmm5
	movdqu	-64(%rdi), %xmm2
	pshufd	$245, %xmm3, %xmm6      # xmm6 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm6, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	pshufd	$245, %xmm4, %xmm0      # xmm0 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	pshufd	$245, %xmm5, %xmm0      # xmm0 = xmm5[1,1,3,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm1      # xmm1 = xmm5[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm0      # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pshufd	$245, %xmm2, %xmm0      # xmm0 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm4, %xmm3      # xmm3 = xmm4[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm0      # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqu	-48(%rdi), %xmm0
	movdqu	-32(%rdi), %xmm3
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm5      # xmm5 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm0      # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	pshufd	$245, %xmm3, %xmm0      # xmm0 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm2, %xmm1      # xmm1 = xmm2[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	movdqu	-16(%rdi), %xmm0
	movdqu	(%rdi), %xmm1
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm5, %xmm4      # xmm4 = xmm5[1,1,3,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm2      # xmm2 = xmm4[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subq	$-128, %rdi
	addq	$-32, %rsi
	jne	.LBB3_58
.LBB3_59:
	movq	%rdx, %rsi
.LBB3_60:                               # %middle.block32
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%xmm1, %r12d
	cmpq	%rsi, %rax
	je	.LBB3_63
.LBB3_61:                               # %for.body.i.preheader
	subq	%rsi, %rax
	leaq	(%rcx,%rsi,4), %rcx
.LBB3_62:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	imull	(%rcx), %r12d
	addq	$4, %rcx
	decq	%rax
	jne	.LBB3_62
.LBB3_63:                               # %for.end.i
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	*88(%r14)
	testq	%rax, %rax
	movl	$-25, %ebx
	je	.LBB3_64
# BB#67:                                # %if.end.19
	movl	$1, 64(%rsp)
	movq	%rax, 72(%rsp)
	movl	%r12d, 80(%rsp)
	movq	$data_source_access_bytes, 56(%rsp)
	movq	8(%r15), %rdx
	leaq	152(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	gs_function_Sd_init
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB3_70
# BB#68:                                # %if.end.26
	movq	152(%rsp), %rsi
	movq	160(%rsp), %rdx
	movq	%r15, %rdi
	callq	sampled_data_setup
	jmp	.LBB3_69
.LBB3_64:                               # %select.unfold
	leaq	16(%rsp), %rdi
	movq	%r14, %rsi
	callq	gs_function_Sd_free_params
.LBB3_70:                               # %cleanup
	movl	%ebx, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zbuildsampledfunction, .Lfunc_end3-zbuildsampledfunction
	.cfi_endproc

	.align	16, 0x90
	.type	sampled_data_sample,@function
sampled_data_sample:                    # @sampled_data_sample
	.cfi_startproc
# BB#0:                                 # %entry
	movq	520(%rdi), %r8
	movq	624(%rdi), %r11
	movq	8(%r8), %r9
	movq	72(%r9), %rdx
	movslq	72(%rdx), %rsi
	movq	%rsi, %rax
	shlq	$4, %rax
	leaq	(%rax,%r11), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB4_2
# BB#1:                                 # %if.then
	movl	%esi, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB4_2:                                # %if.else
	movq	%rax, 624(%rdi)
	testl	%esi, %esi
	jle	.LBB4_5
# BB#3:                                 # %for.body.lr.ph
	movq	80(%rdx), %rax
	movq	168(%rdx), %r10
	xorl	%edx, %edx
	.align	16, 0x90
.LBB4_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	incl	%ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	cvtsi2sdl	(%r9,%rdx,2), %xmm2
	subsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	movl	(%r10,%rdx,2), %ecx
	decl	%ecx
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 24(%r11,%rdx,8)
	movw	$4096, 16(%r11,%rdx,8)  # imm = 0x1000
	addq	$2, %rdx
	decl	%esi
	jne	.LBB4_4
.LBB4_5:                                # %for.end
	movups	-16(%r8), %xmm0
	movaps	%xmm0, -24(%rsp)
	leaq	16(%r8), %rax
	movq	%rax, 520(%rdi)
	movq	$sampled_data_continue, 24(%r8)
	movq	520(%rdi), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rdi)
	movaps	-24(%rsp), %xmm0
	movups	%xmm0, 16(%rax)
	movl	$5, %eax
	retq
.Lfunc_end4:
	.size	sampled_data_sample, .Lfunc_end4-sampled_data_sample
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	sampled_data_continue,@function
sampled_data_continue:                  # @sampled_data_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 160
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
	movq	%rdi, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	leaq	624(%rcx), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	520(%rcx), %rax
	movq	624(%rcx), %rbp
	movq	8(%rax), %r15
	movq	72(%r15), %r13
	movslq	88(%r13), %r12
	movl	144(%r13), %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	$1, %r14d
	shll	%cl, %r14d
	movl	64(%r15), %eax
	leal	3(%r12,%rax), %ebx
	callq	ref_stack_count
	xorl	%r8d, %r8d
	cmpl	%eax, %ebx
	je	.LBB5_5
# BB#1:                                 # %if.then
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	ref_stack_count
	movl	%eax, %r8d
	subl	64(%r15), %r8d
	js	.LBB5_2
.LBB5_5:                                # %if.end.39
	movslq	72(%r13), %rdx
	movl	-4(%r15,%rdx,4), %eax
	addl	$-2, %edx
	js	.LBB5_6
# BB#7:                                 # %for.body.lr.ph.i
	movq	168(%r13), %rcx
	movslq	%edx, %rdx
	incq	%rdx
	movq	16(%rsp), %rdi          # 8-byte Reload
	.align	16, 0x90
.LBB5_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	imull	-4(%rcx,%rdx,4), %eax
	addl	-4(%r15,%rdx,4), %eax
	decq	%rdx
	testq	%rdx, %rdx
	jg	.LBB5_8
	jmp	.LBB5_9
.LBB5_6:
	movq	16(%rsp), %rdi          # 8-byte Reload
.LBB5_9:                                # %cube_ptr_from_index.exit
	testl	%r12d, %r12d
	jle	.LBB5_10
# BB#11:                                # %for.body.lr.ph
	movl	%r8d, 4(%rsp)           # 4-byte Spill
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	decl	%r14d
	cvtsi2sdl	%r14d, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	movq	80(%rsp), %rsi          # 8-byte Reload
	sarl	$3, %esi
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	128(%r13), %rcx
	imull	88(%r13), %eax
	movl	144(%r13), %edx
	sarl	$3, %edx
	imull	%eax, %edx
	movslq	%edx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%r12, %r9
	negq	%r9
	leal	-1(%rsi), %edx
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movslq	%esi, %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	%edx, %edi
	andl	$1, %edi
	movl	%edi, 48(%rsp)          # 4-byte Spill
	leal	-8(,%rsi,8), %esi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	leaq	1(%rax,%rcx), %r14
	leal	(,%rdx,8), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_12:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
	leal	(%rbx,%rbx), %eax
	cltq
	movq	96(%r13), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 92(%rsp)         # 4-byte Spill
	leal	1(%rbx,%rbx), %eax
	cltq
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 88(%rsp)         # 4-byte Spill
	movq	%rbx, %rax
	shlq	$4, %rax
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%r9, %rcx
	movq	%r9, %rbp
	shlq	$4, %rcx
	leaq	16(%rcx,%rax), %rdi
	leaq	96(%rsp), %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB5_44
# BB#13:                                # %if.end.60
                                        #   in Loop: Header=BB5_12 Depth=1
	movss	92(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB5_15
# BB#14:                                # %if.then.63
                                        #   in Loop: Header=BB5_12 Depth=1
	movsd	%xmm2, 96(%rsp)
	movapd	%xmm2, %xmm0
	movq	%rbp, %r9
	jmp	.LBB5_17
	.align	16, 0x90
.LBB5_15:                               # %if.else.64
                                        #   in Loop: Header=BB5_12 Depth=1
	ucomisd	%xmm1, %xmm0
	movq	%rbp, %r9
	jbe	.LBB5_17
# BB#16:                                # %if.then.67
                                        #   in Loop: Header=BB5_12 Depth=1
	movsd	%xmm1, 96(%rsp)
	movapd	%xmm1, %xmm0
.LBB5_17:                               # %if.end.69
                                        #   in Loop: Header=BB5_12 Depth=1
	subsd	%xmm2, %xmm0
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rsp)
	movq	80(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB5_23
# BB#18:                                # %for.body.79.lr.ph
                                        #   in Loop: Header=BB5_12 Depth=1
	mulsd	56(%rsp), %xmm0         # 8-byte Folded Reload
	addsd	.LCPI5_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rbp
	xorl	%eax, %eax
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	movl	$0, %ecx
	je	.LBB5_20
# BB#19:                                # %for.body.79.prol
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, %rax
	imulq	72(%rsp), %rax          # 8-byte Folded Reload
	movq	%rbp, %rsi
	movq	24(%rsp), %rcx          # 8-byte Reload
	shrq	%cl, %rsi
	movq	32(%rsp), %rcx          # 8-byte Reload
	movb	%sil, (%rcx,%rax)
	movl	$1, %ecx
	movl	$1, %eax
.LBB5_20:                               # %for.body.79.lr.ph.split
                                        #   in Loop: Header=BB5_12 Depth=1
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	je	.LBB5_23
# BB#21:                                # %for.body.79.lr.ph.split.split
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	80(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %esi
	subl	%eax, %esi
	leaq	(%rax,%r14), %rdi
	shll	$3, %ecx
	movl	44(%rsp), %eax          # 4-byte Reload
	subl	%ecx, %eax
	.align	16, 0x90
.LBB5_22:                               # %for.body.79
                                        #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-8(%rax), %ecx
	movq	%rbp, %rdx
	shrq	%cl, %rdx
	movb	%dl, -1(%rdi)
	addl	$-16, %eax
	movq	%rbp, %rdx
	movb	%al, %cl
	shrq	%cl, %rdx
	movb	%dl, (%rdi)
	addq	$2, %rdi
	addl	$-2, %esi
	jne	.LBB5_22
.LBB5_23:                               # %for.inc.92
                                        #   in Loop: Header=BB5_12 Depth=1
	incq	%rbx
	addq	72(%rsp), %r14          # 8-byte Folded Reload
	cmpq	%r12, %rbx
	jl	.LBB5_12
# BB#24:
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rbp          # 8-byte Reload
	movl	4(%rsp), %r8d           # 4-byte Reload
	jmp	.LBB5_25
.LBB5_10:                               # %cube_ptr_from_index.exit.for.end.94_crit_edge
	movq	%r12, %r9
	negq	%r9
.LBB5_25:                               # %for.end.94
	shlq	$4, %r9
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	(%rax), %r9
	movq	%r9, (%rax)
	movq	%rax, %rsi
	movq	168(%r13), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_26:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rcx,4), %edx
	incl	%edx
	movl	%edx, (%r15,%rcx,4)
	cmpl	(%rax,%rcx,4), %edx
	jl	.LBB5_33
# BB#27:                                # %if.end.i
                                        #   in Loop: Header=BB5_26 Depth=1
	movl	$0, (%r15,%rcx,4)
	incq	%rcx
	cmpl	72(%r13), %ecx
	jne	.LBB5_26
# BB#28:                                # %if.then.104
	testl	%r8d, %r8d
	je	.LBB5_29
# BB#30:                                # %if.else.112
	subl	%r12d, %r8d
	movslq	%r8d, %rax
	shlq	$4, %rax
	subq	%rax, %r9
	jmp	.LBB5_31
.LBB5_33:                               # %if.else.137
	testl	%r8d, %r8d
	je	.LBB5_43
# BB#34:                                # %if.then.139
	movl	%r12d, %eax
	subl	%r8d, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rbp), %rcx
	cmpq	640(%rdi), %rcx
	jbe	.LBB5_36
# BB#35:                                # %if.then.150
	movl	%eax, 688(%rdi)
	movl	$-16, %eax
	jmp	.LBB5_44
.LBB5_2:                                # %do.body
	negl	%r8d
	movslq	%r8d, %rax
	shlq	$4, %rax
	addq	%rax, %rbp
	movq	16(%rsp), %rbx          # 8-byte Reload
	cmpq	640(%rbx), %rbp
	jbe	.LBB5_4
# BB#3:                                 # %if.then.22
	movl	%r8d, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB5_44
.LBB5_29:                               # %if.then.107
	addq	$-48, %r9
.LBB5_31:                               # %if.end.120
	movq	%r9, 624(%rdi)
	movq	520(%rdi), %rax
	movq	-24(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB5_44
# BB#32:                                # %if.then.128
	callq	*%rcx
	jmp	.LBB5_44
.LBB5_4:                                # %if.else
	movq	%rbp, 624(%rbx)
	movq	8(%rbx), %rdi
	movq	72(%r15), %rsi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
	movq	8(%rbx), %rdi
	movl	$.L.str.10, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movl	$-23, %eax
	jmp	.LBB5_44
.LBB5_36:                               # %if.else.155
	movq	%rcx, (%rsi)
	testl	%eax, %eax
	jle	.LBB5_43
# BB#37:                                # %for.body.166.lr.ph
	leal	3(%r12), %edx
	subl	%r8d, %edx
	leal	2(%r12), %eax
	subl	%r8d, %eax
	xorl	%ecx, %ecx
	testb	$3, %dl
	je	.LBB5_40
# BB#38:                                # %for.body.166.prol.preheader
	leal	3(%r12), %edx
	subl	%r8d, %edx
	movslq	%edx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rbp), %rsi
	andl	$3, %edx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_39:                               # %for.body.166.prol
                                        # =>This Inner Loop Header: Depth=1
	movw	$3584, (%rsi)           # imm = 0xE00
	incq	%rcx
	addq	$-16, %rsi
	cmpl	%ecx, %edx
	jne	.LBB5_39
.LBB5_40:                               # %for.body.166.lr.ph.split
	cmpl	$3, %eax
	jb	.LBB5_43
# BB#41:                                # %for.body.166.lr.ph.split.split
	addl	$3, %r12d
	subl	%r8d, %r12d
	movslq	%r12d, %rax
	subl	%ecx, %r12d
	subq	%rcx, %rax
	shlq	$4, %rax
	addq	%rax, %rbp
	.align	16, 0x90
.LBB5_42:                               # %for.body.166
                                        # =>This Inner Loop Header: Depth=1
	movw	$3584, (%rbp)           # imm = 0xE00
	movw	$3584, -16(%rbp)        # imm = 0xE00
	movw	$3584, -32(%rbp)        # imm = 0xE00
	movw	$3584, -48(%rbp)        # imm = 0xE00
	addq	$-64, %rbp
	addl	$-4, %r12d
	jne	.LBB5_42
.LBB5_43:                               # %if.end.174
	callq	sampled_data_sample
.LBB5_44:                               # %cleanup.176
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sampled_data_continue, .Lfunc_end5-sampled_data_continue
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"make_sampled_function(Domain)"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"make_type4_function(Domain)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"make_sampled_function(Range)"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Size"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"cube_build_func0(bytes)"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"level2dict"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1.buildsampledfunction"
	.size	.L.str.6, 23

	.type	zfsample_op_defs,@object # @zfsample_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfsample_op_defs
	.align	16
zfsample_op_defs:
	.quad	.L.str.5
	.quad	0
	.quad	.L.str.6
	.quad	zbuildsampledfunction
	.zero	16
	.size	zfsample_op_defs, 48

	.type	determine_sampled_data_size.size_list,@object # @determine_sampled_data_size.size_list
	.align	16
determine_sampled_data_size.size_list:
	.long	512                     # 0x200
	.long	50                      # 0x32
	.long	20                      # 0x14
	.long	10                      # 0xa
	.long	7                       # 0x7
	.long	5                       # 0x5
	.long	4                       # 0x4
	.long	3                       # 0x3
	.size	determine_sampled_data_size.size_list, 32

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"zbuildsampledfuntion(params)"
	.size	.L.str.7, 29

	.type	st_gs_sampled_data_enum,@object # @st_gs_sampled_data_enum
	.section	.rodata,"a",@progbits
	.align	8
st_gs_sampled_data_enum:
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gs_sampled_data_enum_reloc_ptrs
	.size	st_gs_sampled_data_enum, 64

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gs_sampled_data_enum"
	.size	.L.str.8, 21

	.type	gs_sampled_data_enum_reloc_ptrs,@object # @gs_sampled_data_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
gs_sampled_data_enum_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gs_sampled_data_enum_enum_ptrs
	.size	gs_sampled_data_enum_reloc_ptrs, 24

	.type	gs_sampled_data_enum_enum_ptrs,@object # @gs_sampled_data_enum_enum_ptrs
	.align	2
gs_sampled_data_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	72                      # 0x48
	.size	gs_sampled_data_enum_enum_ptrs, 4

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"sampled_data_continue(pfn)"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"sampled_data_continue((enum)"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"sampled_data_finish(cref)"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"sampled_data_finish(pfn)"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"sampled_data_finish(enum)"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Function"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Order"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"BitsPerSample"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Domain"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Range"
	.size	.L.str.18, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
