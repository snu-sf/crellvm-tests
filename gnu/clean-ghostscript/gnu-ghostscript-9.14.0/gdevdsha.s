	.text
	.file	"gdevdsha.bc"
	.globl	gx_hl_fill_linear_color_scanline
	.align	16, 0x90
	.type	gx_hl_fill_linear_color_scanline,@function
gx_hl_fill_linear_color_scanline:       # @gx_hl_fill_linear_color_scanline
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
	subq	$1816, %rsp             # imm = 0x718
.Ltmp6:
	.cfi_def_cfa_offset 1872
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
	movq	%rdi, %r13
	movl	100(%r13), %r10d
	movq	gx_dc_type_devn(%rip), %rax
	movq	%rax, 112(%rsp)
	movq	(%rsi), %rdi
	movl	4(%rdi), %ebp
	sarl	$8, %ebp
	xorl	%eax, %eax
	cmpl	%ecx, %ebp
	jg	.LBB0_78
# BB#1:                                 # %lor.lhs.false
	movl	$255, %ebp
	addl	12(%rdi), %ebp
	sarl	$8, %ebp
	cmpl	%ecx, %ebp
	jl	.LBB0_78
# BB#2:                                 # %for.cond.preheader
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	addl	%edx, %r8d
	movabsq	$8589934584, %rsi       # imm = 0x1FFFFFFF8
	testl	%r10d, %r10d
	jle	.LBB0_10
# BB#3:                                 # %for.body.preheader
	movq	1872(%rsp), %rax
	leal	-1(%r10), %edi
	leaq	1(%rdi), %r14
	leaq	4(%rsi), %r11
	xorl	%ebx, %ebx
	andq	%r14, %r11
	je	.LBB0_7
# BB#4:                                 # %vector.body.preheader
	incq	%rdi
	movabsq	$8589934588, %rsi       # imm = 0x1FFFFFFFC
	andq	%rdi, %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r9,%rdi,4), %rbp
	movq	8(%r9,%rdi,4), %rbx
	movq	%rbp, 1552(%rsp,%rdi,4)
	movq	%rbx, 1560(%rsp,%rdi,4)
	movq	%rbp, 1296(%rsp,%rdi,4)
	movq	%rbx, 1304(%rsp,%rdi,4)
	movq	(%rax,%rdi,4), %xmm0    # xmm0 = mem[0],zero
	movq	8(%rax,%rdi,4), %xmm1   # xmm1 = mem[0],zero
	movdqa	%xmm0, %xmm2
	psrad	$31, %xmm2
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqa	%xmm0, 784(%rsp,%rdi,8)
	movdqa	%xmm1, 800(%rsp,%rdi,8)
	addq	$4, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB0_5
# BB#6:
	movq	%r11, %rbx
.LBB0_7:                                # %middle.block
	cmpq	%rbx, %r14
	je	.LBB0_10
# BB#8:                                 # %for.body.preheader325
	leaq	(%r9,%rbx,4), %r9
	leaq	1552(%rsp,%rbx,4), %r14
	leaq	1296(%rsp,%rbx,4), %r11
	leaq	(%rax,%rbx,4), %rax
	leaq	784(%rsp,%rbx,8), %rdi
	movl	%r10d, %ebp
	subl	%ebx, %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r9,%rbx,4), %esi
	movl	%esi, (%r14,%rbx,4)
	movl	%esi, (%r11,%rbx,4)
	movslq	(%rax,%rbx,4), %rsi
	movq	%rsi, (%rdi,%rbx,8)
	incq	%rbx
	cmpl	%ebx, %ebp
	jne	.LBB0_9
.LBB0_10:                               # %for.end
	leal	1(%rdx), %r11d
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movl	%r8d, 52(%rsp)          # 4-byte Spill
	cmpl	%r11d, %r8d
	jle	.LBB0_11
# BB#12:                                # %for.body.19.lr.ph
	movl	1888(%rsp), %r15d
	movq	1880(%rsp), %r9
	movslq	%r10d, %r12
	movl	%ecx, %eax
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	shll	$8, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	256(%rax), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movslq	%r15d, %r14
	movslq	%r8d, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	-1(%r10), %eax
	incq	%rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	leaq	-8(%rcx), %rax
	shrq	$3, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$1, %esi
	.align	16, 0x90
.LBB0_13:                               # %for.body.19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #     Child Loop BB0_48 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_57 Depth 2
	cmpl	$1, %esi
	jne	.LBB0_14
# BB#21:                                # %for.cond.23.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%r11, 104(%rsp)         # 8-byte Spill
	testl	%r10d, %r10d
	movl	%r10d, %esi
	leaq	1552(%rsp), %rdi
	leaq	784(%rsp), %rbp
	movq	%r9, %rbx
	jle	.LBB0_28
	.align	16, 0x90
.LBB0_22:                               # %for.body.26
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %ecx
	testq	%rcx, %rcx
	je	.LBB0_26
# BB#23:                                # %if.then.29
                                        #   in Loop: Header=BB0_22 Depth=2
	addl	(%rbp), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%r15d
	movl	(%rdi), %edx
	addl	%eax, %edx
	movl	%edx, (%rdi)
	imull	%r15d, %eax
	subl	%eax, %ecx
	jns	.LBB0_25
# BB#24:                                # %if.then.43
                                        #   in Loop: Header=BB0_22 Depth=2
	decl	%edx
	movl	%edx, (%rdi)
	addl	%r15d, %ecx
.LBB0_25:                               # %if.end.47
                                        #   in Loop: Header=BB0_22 Depth=2
	movslq	%ecx, %rax
	movq	%rax, (%rbp)
.LBB0_26:                               # %for.inc.52
                                        #   in Loop: Header=BB0_22 Depth=2
	addq	$4, %rbx
	addq	$8, %rbp
	addq	$4, %rdi
	decl	%esi
	jne	.LBB0_22
	jmp	.LBB0_27
	.align	16, 0x90
.LBB0_14:                               # %for.cond.55.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%r11, 104(%rsp)         # 8-byte Spill
	testl	%r10d, %r10d
	jle	.LBB0_28
# BB#15:                                # %for.body.58.lr.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	movslq	%esi, %r9
	movl	%r10d, %edi
	leaq	1552(%rsp), %rbp
	leaq	784(%rsp), %rbx
	movq	1880(%rsp), %rsi
	.align	16, 0x90
.LBB0_16:                               # %for.body.58
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_20
# BB#17:                                # %if.then.62
                                        #   in Loop: Header=BB0_16 Depth=2
	imulq	%r9, %rcx
	addq	(%rbx), %rcx
	movq	%rcx, %rax
	cqto
	idivq	%r14
	movl	(%rbp), %edx
	addl	%eax, %edx
	movl	%edx, (%rbp)
	imull	%r15d, %eax
	subl	%eax, %ecx
	jns	.LBB0_19
# BB#18:                                # %if.then.86
                                        #   in Loop: Header=BB0_16 Depth=2
	decl	%edx
	movl	%edx, (%rbp)
	addl	%r15d, %ecx
.LBB0_19:                               # %if.end.91
                                        #   in Loop: Header=BB0_16 Depth=2
	movslq	%ecx, %rax
	movq	%rax, (%rbx)
.LBB0_20:                               # %for.inc.96
                                        #   in Loop: Header=BB0_16 Depth=2
	addq	$4, %rsi
	addq	$8, %rbx
	addq	$4, %rbp
	decl	%edi
	jne	.LBB0_16
.LBB0_27:                               # %if.end.99
                                        #   in Loop: Header=BB0_13 Depth=1
	testl	%r10d, %r10d
	movl	$0, %eax
	jle	.LBB0_28
	.align	16, 0x90
.LBB0_31:                               # %for.body.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	1552(%rsp,%rax,4), %ecx
	cmpl	1296(%rsp,%rax,4), %ecx
	jne	.LBB0_32
# BB#30:                                # %for.cond.i
                                        #   in Loop: Header=BB0_31 Depth=2
	incq	%rax
	cmpq	%r12, %rax
	jl	.LBB0_31
.LBB0_28:                               # %if.else.194
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	%r8d, %esi
	movq	104(%rsp), %r11         # 8-byte Reload
	subl	%r11d, %esi
	je	.LBB0_29
# BB#54:                                # %if.else.199
                                        #   in Loop: Header=BB0_13 Depth=1
	testl	%r10d, %r10d
	jle	.LBB0_55
# BB#56:                                # %for.body.204.lr.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	movslq	%r11d, %rdi
	xorl	%ebp, %ebp
	movq	1880(%rsp), %r9
	movq	72(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB0_57:                               # %for.body.204
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	204(%r13,%rbp), %eax
	movl	$31, %ecx
	subl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movslq	(%r9,%rbp,4), %rcx
	testq	%rcx, %rcx
	je	.LBB0_63
# BB#58:                                # %if.end.219
                                        #   in Loop: Header=BB0_57 Depth=2
	leal	-1(%rax), %edx
	andl	1552(%rsp,%rbp,4), %edx
	subl	%edx, %eax
	testl	%ecx, %ecx
	notl	%edx
	cmovgl	%eax, %edx
	movslq	%edx, %rax
	imulq	%r14, %rax
	subq	784(%rsp,%rbp,8), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rcx
	leaq	(%rcx,%rdi), %rax
	cmpq	%rbx, %rax
	jge	.LBB0_63
# BB#59:                                # %if.else.246
                                        #   in Loop: Header=BB0_57 Depth=2
	movl	$-28, %eax
	testq	%rcx, %rcx
	js	.LBB0_78
# BB#60:                                # %if.else.250
                                        #   in Loop: Header=BB0_57 Depth=2
	cmpl	%ecx, %esi
	jle	.LBB0_63
# BB#61:                                # %if.then.254
                                        #   in Loop: Header=BB0_57 Depth=2
	cmpl	$2, %ecx
	movl	%ecx, %esi
	jl	.LBB0_62
	.align	16, 0x90
.LBB0_63:                               # %for.inc.266
                                        #   in Loop: Header=BB0_57 Depth=2
	incq	%rbp
	cmpq	%r12, %rbp
	jl	.LBB0_57
	jmp	.LBB0_64
	.align	16, 0x90
.LBB0_55:                               #   in Loop: Header=BB0_13 Depth=1
	movq	1880(%rsp), %r9
	jmp	.LBB0_64
.LBB0_32:                               # %if.then.102
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movl	(%rax), %ecx
	sarl	$8, %ecx
	movq	88(%rsp), %rdx          # 8-byte Reload
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	movl	8(%rax), %eax
	movl	$255, %edx
	addl	%edx, %eax
	sarl	$8, %eax
	movq	104(%rsp), %r11         # 8-byte Reload
	cmpl	%eax, %r11d
	cmovlel	%r11d, %eax
	cmpl	%eax, %ecx
	movq	1880(%rsp), %r9
	jge	.LBB0_43
# BB#33:                                # %if.then.130
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	96(%rsp), %rdx          # 8-byte Reload
	cmpl	$0, 8(%rdx)
	je	.LBB0_35
# BB#34:                                # %if.then.132
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%r10, %rbx
	movq	24(%rsp), %rdx          # 8-byte Reload
	movl	%edx, 768(%rsp)
	shll	$8, %ecx
	movl	%ecx, 772(%rsp)
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 776(%rsp)
	shll	$8, %eax
	jmp	.LBB0_36
.LBB0_62:                               #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	jmp	.LBB0_64
.LBB0_35:                               # %if.else.145
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%r10, %rbx
	shll	$8, %ecx
	movl	%ecx, 768(%rsp)
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 772(%rsp)
	shll	$8, %eax
	movl	%eax, 776(%rsp)
	movl	20(%rsp), %eax          # 4-byte Reload
.LBB0_36:                               # %for.body.163.lr.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	movl	%eax, 780(%rsp)
	movq	%rcx, %rax
	leaq	128(%rsp), %rcx
	leaq	1312(%rsp), %rdx
	movl	$0, %esi
	je	.LBB0_39
	.align	16, 0x90
.LBB0_37:                               # %vector.body269
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	-16(%rdx), %xmm0
	movdqa	(%rdx), %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rcx)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rcx)
	addq	$32, %rdx
	addq	$16, %rcx
	addq	$-8, %rax
	jne	.LBB0_37
# BB#38:                                #   in Loop: Header=BB0_13 Depth=1
	movq	80(%rsp), %rsi          # 8-byte Reload
.LBB0_39:                               # %middle.block270
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%r9, %rbp
	cmpq	%rsi, 64(%rsp)          # 8-byte Folded Reload
	je	.LBB0_42
# BB#40:                                # %for.body.163.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	leaq	1296(%rsp,%rsi,4), %rax
	leaq	120(%rsp), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	movl	%ebx, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB0_41:                               # %for.body.163
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %esi
	movl	%esi, %edi
	shrl	$11, %edi
	leal	(%rdi,%rsi,2), %esi
	movw	%si, (%rcx)
	addq	$4, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB0_41
.LBB0_42:                               # %for.end.176
                                        #   in Loop: Header=BB0_13 Depth=1
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	leaq	768(%rsp), %rsi
	leaq	112(%rsp), %rcx
	callq	*1576(%r13)
	testl	%eax, %eax
	movq	%rbx, %r10
	movl	52(%rsp), %r8d          # 4-byte Reload
	movq	104(%rsp), %r11         # 8-byte Reload
	movq	%rbp, %r9
	js	.LBB0_78
.LBB0_43:                               # %overflow.checked247
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	movl	$0, %edi
	je	.LBB0_50
# BB#44:                                # %vector.body243.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB0_46
# BB#45:                                # %vector.body243.prol
                                        #   in Loop: Header=BB0_13 Depth=1
	movdqa	1552(%rsp), %xmm0
	movdqa	1568(%rsp), %xmm1
	movdqa	%xmm0, 1296(%rsp)
	movdqa	%xmm1, 1312(%rsp)
	movl	$8, %edx
.LBB0_46:                               # %vector.body243.preheader.split
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	je	.LBB0_50
# BB#47:                                # %vector.body243.preheader.split.split
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	subq	%rdx, %rax
	leaq	1600(%rsp), %rcx
	leaq	(%rcx,%rdx,4), %rcx
	leaq	1344(%rsp), %rsi
	leaq	(%rsi,%rdx,4), %rdx
	.align	16, 0x90
.LBB0_48:                               # %vector.body243
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-48(%rcx), %xmm0
	movaps	-32(%rcx), %xmm1
	movaps	%xmm0, -48(%rdx)
	movaps	%xmm1, -32(%rdx)
	movdqa	-16(%rcx), %xmm0
	movdqa	(%rcx), %xmm1
	movdqa	%xmm0, -16(%rdx)
	movdqa	%xmm1, (%rdx)
	addq	$64, %rcx
	addq	$64, %rdx
	addq	$-16, %rax
	jne	.LBB0_48
# BB#49:                                #   in Loop: Header=BB0_13 Depth=1
	movq	80(%rsp), %rdi          # 8-byte Reload
.LBB0_50:                               # %middle.block244
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	cmpq	%rdi, 64(%rsp)          # 8-byte Folded Reload
	je	.LBB0_51
# BB#52:                                # %for.body.186.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	leaq	1552(%rsp,%rdi,4), %rax
	leaq	1296(%rsp,%rdi,4), %rcx
	movl	%r10d, %edx
	subl	%edi, %edx
	.align	16, 0x90
.LBB0_53:                               # %for.body.186
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edi
	movl	%edi, (%rcx)
	addq	$4, %rax
	addq	$4, %rcx
	decl	%edx
	jne	.LBB0_53
.LBB0_51:                               #   in Loop: Header=BB0_13 Depth=1
	movl	%r11d, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
.LBB0_64:                               # %for.inc.271
                                        #   in Loop: Header=BB0_13 Depth=1
	leal	(%r11,%rsi), %r11d
	cmpl	%r11d, %r8d
	jg	.LBB0_13
	jmp	.LBB0_65
.LBB0_11:
	movq	%rcx, 56(%rsp)          # 8-byte Spill
.LBB0_65:                               # %for.end.273
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movl	(%rax), %ecx
	sarl	$8, %ecx
	movq	88(%rsp), %rdx          # 8-byte Reload
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	movl	$255, %edx
	addl	8(%rax), %edx
	sarl	$8, %edx
	cmpl	%edx, %r11d
	cmovlel	%r11d, %edx
	cmpl	%edx, %ecx
	movl	$0, %eax
	jge	.LBB0_78
# BB#66:                                # %if.then.306
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 8(%rax)
	je	.LBB0_68
# BB#67:                                # %if.then.309
	movq	56(%rsp), %rdi          # 8-byte Reload
	shll	$8, %edi
	shll	$8, %ecx
	leal	256(%rdi), %eax
	shll	$8, %edx
	jmp	.LBB0_69
.LBB0_68:                               # %if.else.323
	shll	$8, %ecx
	movq	56(%rsp), %rsi          # 8-byte Reload
	shll	$8, %esi
	shll	$8, %edx
	movl	%edx, %eax
	leal	256(%rsi), %edx
	movl	%ecx, %edi
	movl	%esi, %ecx
.LBB0_69:                               # %for.cond.338.preheader
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	movl	%edi, 768(%rsp)
	movl	%ecx, 772(%rsp)
	movl	%eax, 776(%rsp)
	movl	%edx, 780(%rsp)
	testl	%r10d, %r10d
	jle	.LBB0_77
# BB#70:                                # %for.body.341.lr.ph
	leal	-1(%r10), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%rbp, %rdx
	je	.LBB0_74
# BB#71:                                # %vector.body295.preheader
	leaq	1312(%rsp), %rsi
	leaq	128(%rsp), %rdi
	incq	%rcx
	andq	%rbp, %rcx
	.align	16, 0x90
.LBB0_72:                               # %vector.body295
                                        # =>This Inner Loop Header: Depth=1
	movdqa	-16(%rsi), %xmm0
	movdqa	(%rsi), %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$32, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB0_72
# BB#73:
	movq	%rdx, %rsi
.LBB0_74:                               # %middle.block296
	cmpq	%rsi, %rax
	je	.LBB0_77
# BB#75:                                # %for.body.341.preheader
	leaq	1296(%rsp,%rsi,4), %rax
	leaq	120(%rsp,%rsi,2), %rcx
	subl	%esi, %r10d
	.align	16, 0x90
.LBB0_76:                               # %for.body.341
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$4, %rax
	addq	$2, %rcx
	decl	%r10d
	jne	.LBB0_76
.LBB0_77:                               # %for.end.357
	leaq	768(%rsp), %rsi
	leaq	112(%rsp), %rcx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	*1576(%r13)
.LBB0_78:                               # %cleanup.362
	addq	$1816, %rsp             # imm = 0x718
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_29:                               # %if.then.197
	incl	%r8d
	movl	%r8d, %r11d
	jmp	.LBB0_65
.Lfunc_end0:
	.size	gx_hl_fill_linear_color_scanline, .Lfunc_end0-gx_hl_fill_linear_color_scanline
	.cfi_endproc

	.globl	gx_default_fill_linear_color_scanline
	.align	16, 0x90
	.type	gx_default_fill_linear_color_scanline,@function
gx_default_fill_linear_color_scanline:  # @gx_default_fill_linear_color_scanline
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
	subq	$888, %rsp              # imm = 0x378
.Ltmp19:
	.cfi_def_cfa_offset 944
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
	movq	%r9, %r15
	movl	%r8d, 88(%rsp)          # 4-byte Spill
	movl	%ecx, %ebx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movq	944(%rsp), %r12
	xorl	%r14d, %r14d
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*1664(%rbp)
	movq	%rbp, %rdi
	movl	100(%rdi), %ecx
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	je	.LBB1_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 104(%rdi)
	je	.LBB1_2
.LBB1_3:                                # %if.end
	movq	(%r13), %rax
	movl	4(%rax), %ecx
	sarl	$8, %ecx
	cmpl	%ebx, %ecx
	jg	.LBB1_53
# BB#4:                                 # %lor.lhs.false
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movl	$255, %ecx
	addl	12(%rax), %ecx
	sarl	$8, %ecx
	cmpl	%ebx, %ecx
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	movl	88(%rsp), %r11d         # 4-byte Reload
	movq	952(%rsp), %rax
	jl	.LBB1_53
# BB#5:                                 # %for.cond.preheader
	movq	%rax, %r14
	movq	80(%rsp), %rax          # 8-byte Reload
	addl	%eax, %r11d
	movl	%r11d, 88(%rsp)         # 4-byte Spill
	xorl	%r9d, %r9d
	cmpl	$0, 92(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_8
# BB#6:                                 # %for.body.preheader
	leaq	204(%rdi), %rdx
	leaq	624(%rsp), %rsi
	leaq	112(%rsp), %rbp
	xorl	%r9d, %r9d
	movl	92(%rsp), %r10d         # 4-byte Reload
	.align	16, 0x90
.LBB1_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	-64(%rdx), %r8b
	movl	(%r15), %ebx
	movzbl	(%rdx), %eax
	movl	%ebx, (%rsi)
	movslq	(%r12), %rcx
	movq	%rcx, (%rbp)
	movl	$31, %ecx
	subl	%eax, %ecx
	sarl	%cl, %ebx
	movslq	%ebx, %rax
	movb	%r8b, %cl
	shlq	%cl, %rax
	orq	%rax, %r9
	addq	$4, %r15
	addq	$4, %rsi
	addq	$4, %r12
	addq	$8, %rbp
	incq	%rdx
	decl	%r10d
	jne	.LBB1_7
.LBB1_8:                                # %for.end
	movq	80(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %ebx
	cmpl	%ebx, %r11d
	movl	960(%rsp), %eax
	jle	.LBB1_9
# BB#10:                                # %for.body.33.lr.ph
	movslq	92(%rsp), %rcx          # 4-byte Folded Reload
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movslq	%eax, %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	%eax, %r15d
	movslq	%r11d, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	204(%rdi), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$1, %r13d
	movq	%r14, %r8
	.align	16, 0x90
.LBB1_11:                               # %for.body.33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_38 Depth 2
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	cmpl	$1, %r13d
	jne	.LBB1_12
# BB#16:                                # %for.cond.37.preheader
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	92(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, %r10d
	movq	40(%rsp), %rbx          # 8-byte Reload
	leaq	112(%rsp), %rsi
	movq	%r8, %rbp
	leaq	624(%rsp), %rdi
	movl	$0, %r12d
	jle	.LBB1_27
	.align	16, 0x90
.LBB1_17:                               # %for.body.40
                                        #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-64(%rbx), %r8d
	movzbl	(%rbx), %r11d
	movl	(%rbp), %ecx
	testq	%rcx, %rcx
	je	.LBB1_18
# BB#19:                                # %if.then.54
                                        #   in Loop: Header=BB1_17 Depth=2
	addl	(%rsi), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%r15d
	movl	(%rdi), %edx
	addl	%eax, %edx
	movl	%edx, (%rdi)
	imull	%r15d, %eax
	subl	%eax, %ecx
	jns	.LBB1_21
# BB#20:                                # %if.then.69
                                        #   in Loop: Header=BB1_17 Depth=2
	decl	%edx
	movl	%edx, (%rdi)
	addl	%r15d, %ecx
.LBB1_21:                               # %if.end.73
                                        #   in Loop: Header=BB1_17 Depth=2
	movslq	%ecx, %rax
	movq	%rax, (%rsi)
	jmp	.LBB1_22
	.align	16, 0x90
.LBB1_18:                               # %for.body.40.if.end.77_crit_edge
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	(%rdi), %edx
.LBB1_22:                               # %if.end.77
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	$31, %ecx
	subl	%r11d, %ecx
	sarl	%cl, %edx
	movslq	%edx, %rax
	movb	%r8b, %cl
	shlq	%cl, %rax
	orq	%rax, %r12
	addq	$4, %rdi
	addq	$4, %rbp
	addq	$8, %rsi
	incq	%rbx
	decl	%r10d
	jne	.LBB1_17
	jmp	.LBB1_27
	.align	16, 0x90
.LBB1_12:                               # %for.cond.91.preheader
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 92(%rsp)            # 4-byte Folded Reload
	movl	$0, %r12d
	jle	.LBB1_27
# BB#13:                                # %for.body.94.lr.ph
                                        #   in Loop: Header=BB1_11 Depth=1
	movslq	%r13d, %r8
	movl	92(%rsp), %r11d         # 4-byte Reload
	movq	40(%rsp), %rdi          # 8-byte Reload
	leaq	112(%rsp), %rsi
	movq	952(%rsp), %rbp
	leaq	624(%rsp), %rbx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_14:                               # %for.body.94
                                        #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-64(%rdi), %r10d
	movzbl	(%rdi), %r14d
	movslq	(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_15
# BB#23:                                # %if.then.108
                                        #   in Loop: Header=BB1_14 Depth=2
	imulq	%r8, %rcx
	addq	(%rsi), %rcx
	movq	%rcx, %rax
	cqto
	idivq	104(%rsp)               # 8-byte Folded Reload
	movl	(%rbx), %edx
	addl	%eax, %edx
	movl	%edx, (%rbx)
	imull	%r15d, %eax
	subl	%eax, %ecx
	jns	.LBB1_25
# BB#24:                                # %if.then.132
                                        #   in Loop: Header=BB1_14 Depth=2
	decl	%edx
	movl	%edx, (%rbx)
	addl	%r15d, %ecx
.LBB1_25:                               # %if.end.137
                                        #   in Loop: Header=BB1_14 Depth=2
	movslq	%ecx, %rax
	movq	%rax, (%rsi)
	jmp	.LBB1_26
	.align	16, 0x90
.LBB1_15:                               # %for.body.94.if.end.141_crit_edge
                                        #   in Loop: Header=BB1_14 Depth=2
	movl	(%rbx), %edx
.LBB1_26:                               # %if.end.141
                                        #   in Loop: Header=BB1_14 Depth=2
	movl	$31, %ecx
	subl	%r14d, %ecx
	sarl	%cl, %edx
	movslq	%edx, %rax
	movb	%r10b, %cl
	shlq	%cl, %rax
	orq	%rax, %r12
	addq	$4, %rbx
	addq	$4, %rbp
	addq	$8, %rsi
	incq	%rdi
	decl	%r11d
	jne	.LBB1_14
.LBB1_27:                               # %if.end.155
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	%r9, %r12
	movq	72(%rsp), %rdi          # 8-byte Reload
	jne	.LBB1_28
# BB#34:                                # %if.else.206
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	88(%rsp), %r10d         # 4-byte Reload
	movl	%r10d, %r13d
	movq	56(%rsp), %rbx          # 8-byte Reload
	subl	%ebx, %r13d
	movq	952(%rsp), %r8
	movq	64(%rsp), %rsi          # 8-byte Reload
	je	.LBB1_35
# BB#36:                                # %if.else.211
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 92(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_45
# BB#37:                                # %for.body.216.lr.ph
                                        #   in Loop: Header=BB1_11 Depth=1
	movslq	%ebx, %r11
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB1_38:                               # %for.body.216
                                        #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	204(%rdi,%rbp), %eax
	movl	$31, %ecx
	subl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movslq	(%r8,%rbp,4), %rcx
	testq	%rcx, %rcx
	je	.LBB1_44
# BB#39:                                # %if.end.232
                                        #   in Loop: Header=BB1_38 Depth=2
	leal	-1(%rax), %edx
	andl	624(%rsp,%rbp,4), %edx
	subl	%edx, %eax
	testl	%ecx, %ecx
	notl	%edx
	cmovgl	%eax, %edx
	movslq	%edx, %rax
	imulq	104(%rsp), %rax         # 8-byte Folded Reload
	subq	112(%rsp,%rbp,8), %rax
	xorl	%edx, %edx
	divq	%rcx
	leaq	(%rax,%r11), %rcx
	cmpq	96(%rsp), %rcx          # 8-byte Folded Reload
	jge	.LBB1_44
# BB#40:                                # %if.else.259
                                        #   in Loop: Header=BB1_38 Depth=2
	movl	$-28, %r14d
	testq	%rax, %rax
	js	.LBB1_53
# BB#41:                                # %if.else.263
                                        #   in Loop: Header=BB1_38 Depth=2
	cmpl	%eax, %r13d
	jle	.LBB1_44
# BB#42:                                # %if.then.267
                                        #   in Loop: Header=BB1_38 Depth=2
	cmpl	$2, %eax
	movl	%eax, %r13d
	jl	.LBB1_43
	.align	16, 0x90
.LBB1_44:                               # %for.inc.279
                                        #   in Loop: Header=BB1_38 Depth=2
	incq	%rbp
	cmpq	%rsi, %rbp
	jl	.LBB1_38
	jmp	.LBB1_45
	.align	16, 0x90
.LBB1_28:                               # %if.then.158
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rax
	movl	(%rax), %edx
	sarl	$8, %edx
	movq	80(%rsp), %rsi          # 8-byte Reload
	cmpl	%edx, %esi
	cmovgel	%esi, %edx
	movl	8(%rax), %eax
	movl	$255, %esi
	addl	%esi, %eax
	sarl	$8, %eax
	movq	56(%rsp), %rbx          # 8-byte Reload
	cmpl	%eax, %ebx
	cmovlel	%ebx, %eax
	movl	$1, %r13d
	subl	%edx, %eax
	movl	88(%rsp), %r10d         # 4-byte Reload
	movq	952(%rsp), %r8
	movq	64(%rsp), %rsi          # 8-byte Reload
	jle	.LBB1_29
# BB#30:                                # %if.then.186
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 8(%rcx)
	movq	1200(%rdi), %rbp
	je	.LBB1_32
# BB#31:                                # %do.end
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	$1, %ecx
	movl	36(%rsp), %esi          # 4-byte Reload
	movl	%eax, %r8d
	jmp	.LBB1_33
	.align	16, 0x90
.LBB1_29:                               #   in Loop: Header=BB1_11 Depth=1
	movl	%ebx, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	jmp	.LBB1_46
.LBB1_32:                               # %do.end.195
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	$1, %r8d
	movl	%edx, %esi
	movl	36(%rsp), %edx          # 4-byte Reload
	movl	%eax, %ecx
.LBB1_33:                               # %if.end.200
                                        #   in Loop: Header=BB1_11 Depth=1
	callq	*%rbp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movl	%ebx, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	88(%rsp), %r10d         # 4-byte Reload
	movq	952(%rsp), %r8
	movq	64(%rsp), %rsi          # 8-byte Reload
	jns	.LBB1_46
	jmp	.LBB1_53
.LBB1_43:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$1, %r13d
	.align	16, 0x90
.LBB1_45:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%r9, %r12
.LBB1_46:                               # %for.inc.284
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	leal	(%rbx,%r13), %ebx
	cmpl	%ebx, %r10d
	movq	%r12, %r9
	jg	.LBB1_11
	jmp	.LBB1_47
.LBB1_2:                                # %if.then
	movl	960(%rsp), %eax
	movl	%eax, 16(%rsp)
	movq	952(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%r12, (%rsp)
	movq	%r13, %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	movl	%ebx, %ecx
	movl	88(%rsp), %r8d          # 4-byte Reload
	movq	%r15, %r9
	callq	gx_hl_fill_linear_color_scanline
	jmp	.LBB1_52
.LBB1_9:
	movq	%r9, %r12
.LBB1_47:                               # %for.end.286
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	sarl	$8, %edx
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	%edx, %eax
	cmovgel	%eax, %edx
	movl	$255, %eax
	addl	8(%rcx), %eax
	sarl	$8, %eax
	cmpl	%eax, %ebx
	cmovlel	%ebx, %eax
	xorl	%r14d, %r14d
	subl	%edx, %eax
	jle	.LBB1_53
# BB#48:                                # %if.then.319
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpl	$0, 8(%rcx)
	movq	1200(%rdi), %rbp
	je	.LBB1_50
# BB#49:                                # %do.end.325
	movl	$1, %ecx
	movl	36(%rsp), %esi          # 4-byte Reload
	movl	%eax, %r8d
	jmp	.LBB1_51
.LBB1_50:                               # %do.end.333
	movl	$1, %r8d
	movl	%edx, %esi
	movl	36(%rsp), %edx          # 4-byte Reload
	movl	%eax, %ecx
.LBB1_51:                               # %cleanup.339
	movq	%r12, %r9
	callq	*%rbp
.LBB1_52:                               # %cleanup.339
	movl	%eax, %r14d
.LBB1_53:                               # %cleanup.339
	movl	%r14d, %eax
	addq	$888, %rsp              # imm = 0x378
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_35:                               # %if.then.209
	incl	%r10d
	movq	%r9, %r12
	movl	%r10d, %ebx
	jmp	.LBB1_47
.Lfunc_end1:
	.size	gx_default_fill_linear_color_scanline, .Lfunc_end1-gx_default_fill_linear_color_scanline
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
