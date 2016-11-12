	.text
	.file	"sidscale.bc"
	.align	16, 0x90
	.type	s_ISpecialDownScale_init,@function
s_ISpecialDownScale_init:               # @s_ISpecialDownScale_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %r14
	movl	132(%rbx), %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	shrl	$29, %r8d
	addl	%eax, %r8d
	sarl	$3, %r8d
	movl	%r8d, 208(%rbx)
	movl	140(%rbx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	addl	%eax, %edx
	sarl	$3, %edx
	movl	%edx, 212(%rbx)
	movl	112(%rbx), %esi
	movl	148(%rbx), %ecx
	movl	%r8d, %eax
	imull	%ecx, %eax
	imull	%esi, %eax
	movl	%eax, 300(%rbx)
	movl	156(%rbx), %r11d
	imull	%r11d, %edx
	imull	%esi, %edx
	movl	%edx, 268(%rbx)
	movl	$0, 260(%rbx)
	movl	$0, 264(%rbx)
	movl	$0, 296(%rbx)
	leaq	272(%rbx), %r10
	movl	$0, 272(%rbx)
	leal	-1(%r11), %eax
	movl	%eax, 276(%rbx)
	testl	%r11d, %r11d
	je	.LBB0_1
# BB#2:                                 # %if.else
	testl	%ecx, %ecx
	js	.LBB0_3
# BB#5:                                 # %if.else.59
	movl	%ecx, %eax
	cltd
	idivl	%r11d
	movl	%eax, 280(%rbx)
	movl	%edx, 284(%rbx)
	jmp	.LBB0_6
.LBB0_1:                                # %if.then
	movq	$0, 280(%rbx)
	jmp	.LBB0_6
.LBB0_3:                                # %if.then.26
	negl	%ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r11d
	movl	%eax, %r9d
	negl	%eax
	movl	%eax, 280(%rbx)
	movl	%ecx, %eax
	cltd
	idivl	%r11d
	movl	%edx, 284(%rbx)
	testl	%edx, %edx
	je	.LBB0_6
# BB#4:                                 # %if.then.46
	notl	%r9d
	movl	%r9d, 280(%rbx)
	movl	%r11d, %eax
	subl	%edx, %eax
	movl	%eax, 284(%rbx)
.LBB0_6:                                # %if.end.77
	movl	%r11d, 288(%rbx)
	movl	16(%r10), %eax
	movl	%eax, 256(%rbx)
	movups	(%r10), %xmm0
	movups	%xmm0, 240(%rbx)
	movl	$0, 304(%rbx)
	movl	$0, 292(%rbx)
	movl	$0, 308(%rbx)
	movl	152(%rbx), %edi
	leal	-1(%rdi), %eax
	movl	%eax, 312(%rbx)
	testl	%edi, %edi
	je	.LBB0_7
# BB#8:                                 # %if.else.104
	movl	160(%rbx), %ecx
	testl	%ecx, %ecx
	js	.LBB0_9
# BB#11:                                # %if.else.143
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%eax, 316(%rbx)
	movl	%edx, 320(%rbx)
	jmp	.LBB0_12
.LBB0_7:                                # %if.then.97
	movq	$0, 316(%rbx)
	jmp	.LBB0_12
.LBB0_9:                                # %if.then.107
	negl	%ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, %r9d
	negl	%eax
	movl	%eax, 316(%rbx)
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%edx, 320(%rbx)
	testl	%edx, %edx
	je	.LBB0_12
# BB#10:                                # %if.then.128
	notl	%r9d
	movl	%r9d, 316(%rbx)
	movl	%edi, %eax
	subl	%edx, %eax
	movl	%eax, 320(%rbx)
.LBB0_12:                               # %if.end.161
	movl	%edi, 324(%rbx)
	imull	%r11d, %esi
	movl	$.L.str.1, %ecx
	movq	%r14, %rdi
	movl	%r8d, %edx
	callq	*88(%r14)
	movq	%rax, 232(%rbx)
	movl	112(%rbx), %esi
	movl	212(%rbx), %edx
	imull	156(%rbx), %esi
	movl	$.L.str.2, %ecx
	movq	%r14, %rdi
	callq	*88(%r14)
	movq	%rax, 224(%rbx)
	movl	112(%rbx), %esi
	movl	208(%rbx), %edx
	imull	148(%rbx), %esi
	movl	$.L.str.3, %ecx
	movq	%r14, %rdi
	callq	*88(%r14)
	movq	%rax, 216(%rbx)
	cmpq	$0, 232(%rbx)
	je	.LBB0_15
# BB#13:                                # %lor.lhs.false
	testq	%rax, %rax
	je	.LBB0_15
# BB#14:                                # %lor.lhs.false
	movq	224(%rbx), %rdx
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	jne	.LBB0_16
.LBB0_15:                               # %if.then.202
	movq	8(%rbx), %r14
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	*24(%r14)
	movq	$0, 216(%rbx)
	movq	224(%rbx), %rsi
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 224(%rbx)
	movq	232(%rbx), %rsi
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 232(%rbx)
	movl	$-2, %ecx
.LBB0_16:                               # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	s_ISpecialDownScale_init, .Lfunc_end0-s_ISpecialDownScale_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1132396544              # float 255
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_1:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.align	16, 0x90
	.type	s_ISpecialDownScale_process,@function
s_ISpecialDownScale_process:            # @s_ISpecialDownScale_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 192
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, %r14
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r13
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movl	292(%r13), %ecx
	movl	308(%r13), %eax
	leaq	272(%r13), %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	leaq	240(%r13), %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	pxor	%xmm4, %xmm4
	movdqa	.LCPI1_1(%rip), %xmm5   # xmm5 = [255,255,255,255]
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_198:                              # %cleanup.188
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	316(%r13), %eax
	movl	%eax, 308(%r13)
.LBB1_1:                                # %top
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_70 Depth 2
                                        #     Child Loop BB1_75 Depth 2
                                        #     Child Loop BB1_78 Depth 2
                                        #     Child Loop BB1_55 Depth 2
                                        #     Child Loop BB1_61 Depth 2
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_44 Depth 2
                                        #     Child Loop BB1_24 Depth 2
                                        #     Child Loop BB1_28 Depth 2
                                        #     Child Loop BB1_31 Depth 2
                                        #     Child Loop BB1_103 Depth 2
                                        #       Child Loop BB1_106 Depth 3
                                        #         Child Loop BB1_118 Depth 4
                                        #       Child Loop BB1_174 Depth 3
                                        #         Child Loop BB1_186 Depth 4
                                        #     Child Loop BB1_128 Depth 2
                                        #       Child Loop BB1_130 Depth 3
                                        #         Child Loop BB1_143 Depth 4
                                        #       Child Loop BB1_151 Depth 3
                                        #         Child Loop BB1_164 Depth 4
	movl	200(%r13), %edx
	cmpl	%edx, %ecx
	jge	.LBB1_3
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB1_4
	.align	16, 0x90
.LBB1_3:                                # %land.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	120(%r13), %edx
	cmpl	%edx, %ecx
	setle	%cl
.LBB1_4:                                # %land.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	%cl, %ecx
	movl	%ecx, 204(%r13)
	movl	304(%r13), %edx
	cmpl	%edx, %eax
	jbe	.LBB1_86
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$-1, %eax
	cmpl	160(%r13), %edx
	je	.LBB1_203
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	(%rsp), %rsi            # 8-byte Reload
	movl	16(%rsi), %r10d
	movq	8(%rsi), %rdx
	subl	%edx, %r10d
	movl	$1, %eax
	je	.LBB1_203
# BB#7:                                 # %if.end.16
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	264(%r13), %ebp
	testl	%ebp, %ebp
	jne	.LBB1_81
# BB#8:                                 # %if.then.19
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	268(%r13), %esi
	cmpl	%esi, %r10d
	jae	.LBB1_9
# BB#10:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	224(%r13), %r11
	jmp	.LBB1_11
.LBB1_9:                                # %if.then.22
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	1(%rdx), %r11
	leaq	(%rsi,%rdx), %rdx
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%rdx, 8(%rsi)
.LBB1_11:                               # %if.end.27
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%ecx, %ecx
	je	.LBB1_79
# BB#12:                                # %if.then.30
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	232(%r13), %rdx
	movl	156(%r13), %ecx
	movl	144(%r13), %esi
	imull	112(%r13), %ecx
	movl	208(%r13), %edi
	cmpl	$1, 212(%r13)
	jne	.LBB1_45
# BB#13:                                # %if.then.i
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$1, %edi
	jne	.LBB1_32
# BB#14:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%ecx, %ecx
	jle	.LBB1_79
# BB#15:                                # %do.end.17.i.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	-1(%rcx), %ebx
	leaq	1(%rbx), %r8
	movabsq	$8589934584, %rsi       # imm = 0x1FFFFFFF8
	leaq	-24(%rsi), %rdi
	movq	%r8, %rsi
	andq	%rdi, %rsi
	je	.LBB1_16
# BB#17:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rdx,%rbx), %rbp
	cmpq	%rbp, %r11
	ja	.LBB1_19
# BB#18:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r11,%rbx), %rbp
	cmpq	%rbp, %rdx
	ja	.LBB1_19
.LBB1_16:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	movq	%rdx, %rdi
	jmp	.LBB1_25
.LBB1_45:                               # %if.else.37.i
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$1, %edi
	jne	.LBB1_62
# BB#46:                                # %for.cond.44.preheader.i
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%ecx, %ecx
	jle	.LBB1_79
# BB#47:                                # %do.end.50.lr.ph.i
                                        #   in Loop: Header=BB1_1 Depth=1
	cvtsi2ssq	%rsi, %xmm0
	divss	.LCPI1_0(%rip), %xmm0
	leal	-1(%rcx), %ebp
	leaq	1(%rbp), %r8
	movq	%r8, %rsi
	movabsq	$8589934584, %rdi       # imm = 0x1FFFFFFF8
	andq	%rdi, %rsi
	je	.LBB1_48
# BB#49:                                # %vector.memcheck294
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rdx,%rbp), %rdi
	cmpq	%rdi, %r11
	ja	.LBB1_51
# BB#50:                                # %vector.memcheck294
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r11,%rbp,2), %rdi
	cmpq	%rdi, %rdx
	ja	.LBB1_51
.LBB1_48:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	movq	%rdx, %rdi
	jmp	.LBB1_56
.LBB1_32:                               # %if.else.i
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%ecx, %ecx
	jle	.LBB1_79
# BB#33:                                # %do.end.26.lr.ph.i
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	-1(%rcx), %ebp
	leaq	1(%rbp), %r8
	movq	%r8, %r9
	movabsq	$8589934584, %rsi       # imm = 0x1FFFFFFF8
	andq	%rsi, %r9
	movl	$0, %edi
	movq	%rdx, %rsi
	je	.LBB1_39
# BB#34:                                # %vector.memcheck240
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rdx,%rbp,2), %rsi
	cmpq	%rsi, %r11
	ja	.LBB1_36
# BB#35:                                # %vector.memcheck240
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r11,%rbp), %rsi
	cmpq	%rsi, %rdx
	movl	$0, %edi
	movq	%rdx, %rsi
	jbe	.LBB1_39
.LBB1_36:                               # %vector.body223.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rdx,%r9,2), %rsi
	leaq	4(%r11), %rbx
	addq	$8, %rdx
	incq	%rbp
	movabsq	$8589934584, %rdi       # imm = 0x1FFFFFFF8
	andq	%rdi, %rbp
	.align	16, 0x90
.LBB1_37:                               # %vector.body223
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rdx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1],xmm0[2],xmm4[2],xmm0[3],xmm4[3]
	punpcklwd	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3]
	movdqa	%xmm0, %xmm2
	psrld	$12, %xmm2
	movdqa	%xmm1, %xmm3
	psrld	$12, %xmm3
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	psrld	$7, %xmm2
	psrld	$7, %xmm3
	pand	%xmm5, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, -4(%rbx)
	pand	%xmm5, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, (%rbx)
	addq	$8, %rbx
	addq	$16, %rdx
	addq	$-8, %rbp
	jne	.LBB1_37
# BB#38:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %rdi
.LBB1_39:                               # %middle.block224
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rdi, %r8
	je	.LBB1_79
# BB#40:                                # %do.end.26.i.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	1(%rcx), %ebp
	movl	%edi, %edx
	orl	$1, %edx
	subl	%edx, %ebp
	testb	$1, %bpl
	je	.LBB1_42
# BB#41:                                # %do.end.26.i.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	movzwl	(%rsi), %ebx
	movl	%ebx, %ebp
	shrl	$12, %ebp
	addl	%ebx, %ebp
	shrl	$7, %ebp
	movb	%bpl, (%r11,%rdi)
	orq	$1, %rdi
	addq	$2, %rsi
.LBB1_42:                               # %do.end.26.i.preheader.split
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%edx, %ecx
	je	.LBB1_79
# BB#43:                                # %do.end.26.i.preheader.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	subl	%edi, %ecx
	leaq	1(%r11,%rdi), %rdx
	.align	16, 0x90
.LBB1_44:                               # %do.end.26.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rsi), %ebp
	movl	%ebp, %edi
	shrl	$12, %edi
	addl	%ebp, %edi
	shrl	$7, %edi
	movb	%dil, -1(%rdx)
	movzwl	2(%rsi), %ebp
	movl	%ebp, %edi
	shrl	$12, %edi
	addl	%ebp, %edi
	shrl	$7, %edi
	movb	%dil, (%rdx)
	addq	$2, %rdx
	addq	$4, %rsi
	addl	$-2, %ecx
	jne	.LBB1_44
	jmp	.LBB1_79
.LBB1_62:                               # %if.else.61.i
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%ecx, %ecx
	jle	.LBB1_79
# BB#63:                                # %do.end.70.lr.ph.i
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	-1(%rcx), %ebp
	leaq	1(%rbp), %r8
	movabsq	$8589934584, %rsi       # imm = 0x1FFFFFFF8
	leaq	-8(%rsi), %rbx
	movq	%r8, %r9
	andq	%rbx, %r9
	movl	$0, %edi
	movq	%rdx, %rsi
	je	.LBB1_72
# BB#64:                                # %vector.memcheck348
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rdx,%rbp,2), %rsi
	cmpq	%rsi, %r11
	ja	.LBB1_66
# BB#65:                                # %vector.memcheck348
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r11,%rbp,2), %rsi
	cmpq	%rsi, %rdx
	movl	$0, %edi
	movq	%rdx, %rsi
	jbe	.LBB1_72
.LBB1_66:                               # %vector.body331.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	1(%rbp), %rsi
	andq	%rbx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rdi
	shrq	$4, %rdi
	btq	$4, %rsi
	movl	$0, %ebx
	jb	.LBB1_68
# BB#67:                                # %vector.body331.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm0, (%r11)
	movups	%xmm1, 16(%r11)
	movl	$16, %ebx
.LBB1_68:                               # %vector.body331.preheader.split
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rdx,%r9,2), %rsi
	testq	%rdi, %rdi
	je	.LBB1_71
# BB#69:                                # %vector.body331.preheader.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	incq	%rbp
	movabsq	$8589934576, %rdi       # imm = 0x1FFFFFFF0
	andq	%rdi, %rbp
	subq	%rbx, %rbp
	leaq	48(%r11,%rbx,2), %rdi
	leaq	48(%rdx,%rbx,2), %rdx
	.align	16, 0x90
.LBB1_70:                               # %vector.body331
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rdx), %xmm0
	movups	-32(%rdx), %xmm1
	movups	%xmm0, -48(%rdi)
	movups	%xmm1, -32(%rdi)
	movups	-16(%rdx), %xmm0
	movups	(%rdx), %xmm1
	movups	%xmm0, -16(%rdi)
	movups	%xmm1, (%rdi)
	addq	$64, %rdi
	addq	$64, %rdx
	addq	$-32, %rbp
	jne	.LBB1_70
.LBB1_71:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %rdi
.LBB1_72:                               # %middle.block332
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rdi, %r8
	je	.LBB1_79
# BB#73:                                # %do.end.70.i.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	1(%rcx), %ebp
	movl	%edi, %ebx
	orl	$1, %ebx
	movl	%ebp, %edx
	subl	%ebx, %edx
	movl	%ecx, %r8d
	subl	%ebx, %r8d
	testb	$3, %dl
	je	.LBB1_76
# BB#74:                                # %do.end.70.i.prol.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	1(%rdi), %edx
	subl	%edx, %ebp
	andl	$3, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB1_75:                               # %do.end.70.i.prol
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	(%rsi), %dx
	movw	%dx, (%r11,%rdi,2)
	incq	%rdi
	addq	$2, %rsi
	incl	%ebp
	jne	.LBB1_75
.LBB1_76:                               # %do.end.70.i.preheader.split
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$3, %r8d
	jb	.LBB1_79
# BB#77:                                # %do.end.70.i.preheader.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	subl	%edi, %ecx
	leaq	6(%r11,%rdi,2), %rdx
	.align	16, 0x90
.LBB1_78:                               # %do.end.70.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	(%rsi), %di
	movw	%di, -6(%rdx)
	movw	2(%rsi), %di
	movw	%di, -4(%rdx)
	movw	4(%rsi), %di
	movw	%di, -2(%rdx)
	movw	6(%rsi), %di
	movw	%di, (%rdx)
	addq	$8, %rdx
	addq	$8, %rsi
	addl	$-4, %ecx
	jne	.LBB1_78
	jmp	.LBB1_79
.LBB1_19:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r10d, %r15d
	leaq	1(%rbx), %rbp
	andq	%rdi, %rbp
	addq	$-32, %rbp
	movq	%rbp, %r10
	shrq	$5, %r10
	btq	$5, %rbp
	movl	$0, %r9d
	jb	.LBB1_21
# BB#20:                                # %vector.body.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm0, (%r11)
	movups	%xmm1, 16(%r11)
	movl	$32, %r9d
.LBB1_21:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rdx,%rsi), %rdi
	testq	%r10, %r10
	je	.LBB1_22
# BB#23:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	incq	%rbx
	movabsq	$8589934560, %rbp       # imm = 0x1FFFFFFE0
	andq	%rbp, %rbx
	subq	%r9, %rbx
	leaq	48(%r11,%r9), %rbp
	leaq	48(%rdx,%r9), %rdx
	movl	%r15d, %r10d
	.align	16, 0x90
.LBB1_24:                               # %vector.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rdx), %xmm0
	movups	-32(%rdx), %xmm1
	movups	%xmm0, -48(%rbp)
	movups	%xmm1, -32(%rbp)
	movups	-16(%rdx), %xmm0
	movups	(%rdx), %xmm1
	movups	%xmm0, -16(%rbp)
	movups	%xmm1, (%rbp)
	addq	$64, %rbp
	addq	$64, %rdx
	addq	$-64, %rbx
	jne	.LBB1_24
	jmp	.LBB1_25
.LBB1_51:                               # %vector.ph295
                                        #   in Loop: Header=BB1_1 Depth=1
	movaps	%xmm0, %xmm1
	shufps	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	leaq	1(%rbp), %rdi
	movabsq	$8589934584, %rbx       # imm = 0x1FFFFFFF8
	andq	%rbx, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbx
	shrq	$3, %rbx
	btq	$3, %rdi
	movl	$0, %r9d
	jb	.LBB1_53
# BB#52:                                # %vector.body277.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	(%rdx), %xmm2           # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm3, %xmm3    # xmm3 = xmm3[4,4,5,5,6,6,7,7]
	pand	%xmm5, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	pand	%xmm5, %xmm2
	cvtdq2ps	%xmm2, %xmm2
	mulps	%xmm1, %xmm2
	mulps	%xmm1, %xmm3
	cvttps2dq	%xmm3, %xmm3
	pshuflw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	cvttps2dq	%xmm2, %xmm2
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpcklqdq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
	movdqu	%xmm2, (%r11)
	movl	$8, %r9d
.LBB1_53:                               # %vector.ph295.split
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rdx,%rsi), %rdi
	testq	%rbx, %rbx
	je	.LBB1_56
# BB#54:                                # %vector.ph295.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	incq	%rbp
	movabsq	$8589934584, %rbx       # imm = 0x1FFFFFFF8
	andq	%rbx, %rbp
	subq	%r9, %rbp
	leaq	16(%r11,%r9,2), %rbx
	leaq	8(%rdx,%r9), %rdx
	.align	16, 0x90
.LBB1_55:                               # %vector.body277
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rdx), %xmm2         # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm3, %xmm3    # xmm3 = xmm3[4,4,5,5,6,6,7,7]
	pand	%xmm5, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	pand	%xmm5, %xmm2
	cvtdq2ps	%xmm2, %xmm2
	mulps	%xmm1, %xmm2
	mulps	%xmm1, %xmm3
	cvttps2dq	%xmm3, %xmm3
	pshuflw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	cvttps2dq	%xmm2, %xmm2
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpcklqdq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
	movdqu	%xmm2, -16(%rbx)
	movq	(%rdx), %xmm2           # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm3, %xmm3    # xmm3 = xmm3[4,4,5,5,6,6,7,7]
	pand	%xmm5, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	pand	%xmm5, %xmm2
	cvtdq2ps	%xmm2, %xmm2
	mulps	%xmm1, %xmm2
	mulps	%xmm1, %xmm3
	cvttps2dq	%xmm3, %xmm3
	pshuflw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	cvttps2dq	%xmm2, %xmm2
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpcklqdq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
	movdqu	%xmm2, (%rbx)
	addq	$32, %rbx
	addq	$16, %rdx
	addq	$-16, %rbp
	jne	.LBB1_55
.LBB1_56:                               # %middle.block278
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rsi, %r8
	je	.LBB1_79
# BB#57:                                # %do.end.50.i.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	1(%rcx), %ebp
	movl	%esi, %edx
	orl	$1, %edx
	subl	%edx, %ebp
	testb	$1, %bpl
	je	.LBB1_59
# BB#58:                                # %do.end.50.i.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	(%rdi), %ebp
	cvtsi2ssl	%ebp, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ebp
	movw	%bp, (%r11,%rsi,2)
	orq	$1, %rsi
	incq	%rdi
.LBB1_59:                               # %do.end.50.i.preheader.split
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%edx, %ecx
	je	.LBB1_79
# BB#60:                                # %do.end.50.i.preheader.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	subl	%esi, %ecx
	leaq	2(%r11,%rsi,2), %rdx
	.align	16, 0x90
.LBB1_61:                               # %do.end.50.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movw	%si, -2(%rdx)
	movzbl	1(%rdi), %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movw	%si, (%rdx)
	addq	$4, %rdx
	addq	$2, %rdi
	addl	$-2, %ecx
	jne	.LBB1_61
	jmp	.LBB1_79
.LBB1_22:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%r15d, %r10d
.LBB1_25:                               # %middle.block
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rsi, %r8
	je	.LBB1_79
# BB#26:                                # %do.end.17.i.preheader402
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	1(%rcx), %ebp
	movl	%esi, %ebx
	orl	$1, %ebx
	movl	%ebp, %edx
	subl	%ebx, %edx
	movl	%ecx, %r8d
	subl	%ebx, %r8d
	testb	$3, %dl
	je	.LBB1_29
# BB#27:                                # %do.end.17.i.prol.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	1(%rsi), %edx
	subl	%edx, %ebp
	andl	$3, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB1_28:                               # %do.end.17.i.prol
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdi), %dl
	movb	%dl, (%r11,%rsi)
	incq	%rsi
	incq	%rdi
	incl	%ebp
	jne	.LBB1_28
.LBB1_29:                               # %do.end.17.i.preheader402.split
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$3, %r8d
	jb	.LBB1_79
# BB#30:                                # %do.end.17.i.preheader402.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	subl	%esi, %ecx
	leaq	3(%r11,%rsi), %rdx
	.align	16, 0x90
.LBB1_31:                               # %do.end.17.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdi), %bl
	movb	%bl, -3(%rdx)
	movb	1(%rdi), %bl
	movb	%bl, -2(%rdx)
	movb	2(%rdi), %bl
	movb	%bl, -1(%rdx)
	movb	3(%rdi), %bl
	movb	%bl, (%rdx)
	addq	$4, %rdx
	addq	$4, %rdi
	addl	$-4, %ecx
	jne	.LBB1_31
.LBB1_79:                               # %if.end.31
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	224(%r13), %r11
	jne	.LBB1_85
# BB#80:                                # %if.end.31.if.end.37_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	204(%r13), %ecx
	movl	264(%r13), %ebp
	movq	(%rsp), %rsi            # 8-byte Reload
	.align	16, 0x90
.LBB1_81:                               # %if.end.37
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	268(%r13), %ebx
	subl	%ebp, %ebx
	cmpl	%ebx, %r10d
	movl	%ebx, %r12d
	cmovbl	%r10d, %r12d
	testl	%ecx, %ecx
	je	.LBB1_82
# BB#83:                                # %if.then.47
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	8(%rsi), %rdi
	incq	%rdi
	movq	%rsi, %r14
	movl	%ebp, %esi
	addq	224(%r13), %rsi
	movl	%r12d, %r15d
	movq	%r15, %rdx
	movl	%r10d, %ebp
	callq	memcpy
	movl	%ebp, %r10d
	movl	$1, %eax
	movdqa	.LCPI1_1(%rip), %xmm5   # xmm5 = [255,255,255,255]
	movq	%r14, %rsi
	movq	8(%rsp), %r14           # 8-byte Reload
	movl	264(%r13), %ebp
	jmp	.LBB1_84
.LBB1_82:                               # %if.end.37.if.end.55_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r12d, %r15d
.LBB1_84:                               # %if.end.55
                                        #   in Loop: Header=BB1_1 Depth=1
	pxor	%xmm4, %xmm4
	movq	%rsi, (%rsp)            # 8-byte Spill
	addq	%r15, 8(%rsi)
	addl	%r12d, %ebp
	cmpl	%ebx, %r10d
	movl	$0, %ecx
	cmovael	%ecx, %ebp
	movl	%ebp, 264(%r13)
	jb	.LBB1_203
.LBB1_85:                               # %cleanup.71
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	304(%r13)
.LBB1_86:                               # %if.end.74
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	(%r14), %rsi
	movq	8(%r14), %rbx
	subq	%rsi, %rbx
	movl	296(%r13), %edx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.LBB1_203
# BB#87:                                # %if.end.87
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	292(%r13), %ecx
	movl	$-2, %eax
	cmpl	152(%r13), %ecx
	jge	.LBB1_203
# BB#88:                                # %if.end.93
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	300(%r13), %ebp
	subl	%edx, %ebp
	cmpl	%ebp, %ebx
	jb	.LBB1_199
# BB#89:                                # %if.then.96
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%edx, %edx
	je	.LBB1_90
# BB#91:                                # %if.else.105
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	216(%r13), %r14
	cmpl	$0, 204(%r13)
	je	.LBB1_93
# BB#92:                                # %if.then.109
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r14,%rdx), %rdi
	incq	%rsi
	movl	%ebp, %edx
	callq	memcpy
	movdqa	.LCPI1_1(%rip), %xmm5   # xmm5 = [255,255,255,255]
	pxor	%xmm4, %xmm4
.LBB1_93:                               # %if.end.118
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	movl	$0, 296(%r13)
	jmp	.LBB1_94
	.align	16, 0x90
.LBB1_90:                               # %if.then.102
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	incq	%rsi
	movq	%rsi, %r14
.LBB1_94:                               # %do.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 204(%r13)
	je	.LBB1_196
# BB#95:                                # %if.then.124
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	232(%r13), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movslq	112(%r13), %rcx
	movl	148(%r13), %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movl	164(%r13), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	320(%r13), %ebp
	movl	312(%r13), %edi
	addl	%ebp, %edi
	movl	%edi, 312(%r13)
	movl	308(%r13), %esi
	movl	324(%r13), %eax
	movl	%edi, %edx
	subl	%eax, %edx
	jae	.LBB1_97
# BB#96:                                #   in Loop: Header=BB1_1 Depth=1
	movl	%edi, %edx
	jmp	.LBB1_98
	.align	16, 0x90
.LBB1_97:                               # %if.then.i.97
                                        #   in Loop: Header=BB1_1 Depth=1
	decl	%esi
	movl	%esi, 308(%r13)
	movl	%edx, 312(%r13)
.LBB1_98:                               # %if.end.i
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	316(%r13), %edi
	subl	%edi, %esi
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movl	%esi, 308(%r13)
	subl	%ebp, %edx
	movl	%edx, 312(%r13)
	movl	%esi, %r12d
	jns	.LBB1_100
# BB#99:                                # %if.then.51.i
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	1(%rsi), %r12d
	movl	%r12d, 308(%r13)
	addl	%eax, %edx
	movl	%edx, 312(%r13)
.LBB1_100:                              # %if.end.62.i
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	%edi, %r12d
	movl	%r12d, 128(%rsp)        # 4-byte Spill
	movl	%r12d, 308(%r13)
	cmpl	$1, 208(%r13)
	jne	.LBB1_101
# BB#126:                               # %for.cond.preheader.i.99
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%ecx, %ecx
	jle	.LBB1_196
# BB#127:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_128:                              # %for.body.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_130 Depth 3
                                        #         Child Loop BB1_143 Depth 4
                                        #       Child Loop BB1_151 Depth 3
                                        #         Child Loop BB1_164 Depth 4
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdx), %rbp
	leaq	(%r14,%rdx), %r11
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	16(%rdi), %eax
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%eax, 16(%rdx)
	movups	(%rdi), %xmm0
	movups	%xmm0, (%rdx)
	je	.LBB1_150
# BB#129:                               # %for.cond.91.preheader.i
                                        #   in Loop: Header=BB1_128 Depth=2
	xorl	%r15d, %r15d
	cmpl	$0, 132(%rsp)           # 4-byte Folded Reload
	jle	.LBB1_171
	.align	16, 0x90
.LBB1_130:                              # %for.body.94.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_128 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_143 Depth 4
	movl	276(%r13), %eax
	subl	284(%r13), %eax
	movl	%eax, 276(%r13)
	movl	272(%r13), %r14d
	jns	.LBB1_132
# BB#131:                               # %if.then.110.i
                                        #   in Loop: Header=BB1_130 Depth=3
	incl	%r14d
	movl	%r14d, 272(%r13)
	addl	288(%r13), %eax
	movl	%eax, 276(%r13)
.LBB1_132:                              # %if.end.122.i
                                        #   in Loop: Header=BB1_130 Depth=3
	movl	280(%r13), %edx
	leal	(%rdx,%r14), %r9d
	cmpl	%r12d, %esi
	movl	%r9d, 272(%r13)
	movb	(%r11), %al
	jne	.LBB1_134
# BB#133:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_130 Depth=3
	movzbl	(%rbp), %ebx
	movzbl	%al, %edi
	cmpl	%ebx, %edi
	jae	.LBB1_135
.LBB1_134:                              # %if.then.142.i
                                        #   in Loop: Header=BB1_130 Depth=3
	movb	%al, (%rbp)
	movb	%al, %bl
.LBB1_135:                              # %if.end.143.i
                                        #   in Loop: Header=BB1_130 Depth=3
	leal	1(%r15), %r8d
	leaq	(%r11,%rcx), %rdi
	cmpl	%r9d, %r8d
	jge	.LBB1_136
# BB#137:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB1_130 Depth=3
	movq	%r13, %r10
	movl	$-2, %r13d
	subl	%r15d, %r13d
	addl	%r14d, %r13d
	addl	%edx, %r13d
	leal	1(%r14,%rdx), %esi
	subl	%r15d, %esi
	leal	-2(%r14,%rdx), %r12d
	testb	$1, %sil
	je	.LBB1_141
# BB#138:                               # %while.body.i.prol
                                        #   in Loop: Header=BB1_130 Depth=3
	movzbl	(%rdi), %r8d
	movzbl	%bl, %esi
	cmpl	%esi, %r8d
	jae	.LBB1_140
# BB#139:                               # %if.then.153.i.prol
                                        #   in Loop: Header=BB1_130 Depth=3
	movb	%r8b, (%rbp)
	movb	%r8b, %bl
.LBB1_140:                              # %while.cond.backedge.i.prol
                                        #   in Loop: Header=BB1_130 Depth=3
	leal	2(%r15), %r8d
	addq	%rcx, %rdi
.LBB1_141:                              # %while.body.lr.ph.i.split
                                        #   in Loop: Header=BB1_130 Depth=3
	addq	$2, %r13
	cmpl	%r15d, %r12d
	je	.LBB1_148
# BB#142:                               # %while.body.lr.ph.i.split.split
                                        #   in Loop: Header=BB1_130 Depth=3
	addl	%r14d, %edx
	subl	%r8d, %edx
	.align	16, 0x90
.LBB1_143:                              # %while.body.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_128 Depth=2
                                        #       Parent Loop BB1_130 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rdi), %esi
	movzbl	%bl, %eax
	cmpl	%eax, %esi
	jae	.LBB1_145
# BB#144:                               # %if.then.153.i
                                        #   in Loop: Header=BB1_143 Depth=4
	movb	%sil, (%rbp)
	movb	%sil, %bl
.LBB1_145:                              # %while.cond.backedge.i
                                        #   in Loop: Header=BB1_143 Depth=4
	movzbl	(%rcx,%rdi), %esi
	addq	%rcx, %rdi
	movzbl	%bl, %eax
	cmpl	%eax, %esi
	jae	.LBB1_147
# BB#146:                               # %if.then.153.i.1
                                        #   in Loop: Header=BB1_143 Depth=4
	movb	%sil, (%rbp)
	movb	%sil, %bl
.LBB1_147:                              # %while.cond.backedge.i.1
                                        #   in Loop: Header=BB1_143 Depth=4
	addq	%rcx, %rdi
	addl	$-2, %edx
	jne	.LBB1_143
.LBB1_148:                              # %while.cond.do.end.160_crit_edge.i
                                        #   in Loop: Header=BB1_130 Depth=3
	imulq	%rcx, %r13
	addq	%r13, %r11
	movq	%r11, %rdi
	movq	%r10, %r13
	movq	112(%rsp), %rsi         # 8-byte Reload
	movl	128(%rsp), %r12d        # 4-byte Reload
	jmp	.LBB1_149
	.align	16, 0x90
.LBB1_136:                              #   in Loop: Header=BB1_130 Depth=3
	movl	%r8d, %r9d
.LBB1_149:                              # %do.end.160.i
                                        #   in Loop: Header=BB1_130 Depth=3
	addq	%rcx, %rbp
	cmpl	132(%rsp), %r9d         # 4-byte Folded Reload
	movl	%r9d, %r15d
	movq	%rdi, %r11
	jl	.LBB1_130
	jmp	.LBB1_171
	.align	16, 0x90
.LBB1_150:                              # %for.cond.163.preheader.i
                                        #   in Loop: Header=BB1_128 Depth=2
	xorl	%r15d, %r15d
	cmpl	$0, 132(%rsp)           # 4-byte Folded Reload
	jle	.LBB1_171
	.align	16, 0x90
.LBB1_151:                              # %for.body.166.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_128 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_164 Depth 4
	movl	276(%r13), %eax
	subl	284(%r13), %eax
	movl	%eax, 276(%r13)
	movl	272(%r13), %r14d
	jns	.LBB1_153
# BB#152:                               # %if.then.183.i
                                        #   in Loop: Header=BB1_151 Depth=3
	incl	%r14d
	movl	%r14d, 272(%r13)
	addl	288(%r13), %eax
	movl	%eax, 276(%r13)
.LBB1_153:                              # %if.end.195.i
                                        #   in Loop: Header=BB1_151 Depth=3
	movl	280(%r13), %edx
	leal	(%rdx,%r14), %r9d
	cmpl	%r12d, %esi
	movl	%r9d, 272(%r13)
	movb	(%r11), %al
	jne	.LBB1_155
# BB#154:                               # %lor.lhs.false.211.i
                                        #   in Loop: Header=BB1_151 Depth=3
	movzbl	(%rbp), %ebx
	movzbl	%al, %edi
	cmpl	%ebx, %edi
	jbe	.LBB1_156
.LBB1_155:                              # %if.then.216.i
                                        #   in Loop: Header=BB1_151 Depth=3
	movb	%al, (%rbp)
	movb	%al, %bl
.LBB1_156:                              # %if.end.217.i
                                        #   in Loop: Header=BB1_151 Depth=3
	leal	1(%r15), %r8d
	leaq	(%r11,%rcx), %rdi
	cmpl	%r9d, %r8d
	jge	.LBB1_157
# BB#158:                               # %while.body.224.lr.ph.i
                                        #   in Loop: Header=BB1_151 Depth=3
	movq	%r13, %r10
	movl	$-2, %r13d
	subl	%r15d, %r13d
	addl	%r14d, %r13d
	addl	%edx, %r13d
	leal	1(%r14,%rdx), %esi
	subl	%r15d, %esi
	leal	-2(%r14,%rdx), %r12d
	testb	$1, %sil
	je	.LBB1_162
# BB#159:                               # %while.body.224.i.prol
                                        #   in Loop: Header=BB1_151 Depth=3
	movzbl	(%rdi), %r8d
	movzbl	%bl, %esi
	cmpl	%esi, %r8d
	jbe	.LBB1_161
# BB#160:                               # %if.then.229.i.prol
                                        #   in Loop: Header=BB1_151 Depth=3
	movb	%r8b, (%rbp)
	movb	%r8b, %bl
.LBB1_161:                              # %while.cond.221.backedge.i.prol
                                        #   in Loop: Header=BB1_151 Depth=3
	leal	2(%r15), %r8d
	addq	%rcx, %rdi
.LBB1_162:                              # %while.body.224.lr.ph.i.split
                                        #   in Loop: Header=BB1_151 Depth=3
	addq	$2, %r13
	cmpl	%r15d, %r12d
	je	.LBB1_169
# BB#163:                               # %while.body.224.lr.ph.i.split.split
                                        #   in Loop: Header=BB1_151 Depth=3
	addl	%r14d, %edx
	subl	%r8d, %edx
	.align	16, 0x90
.LBB1_164:                              # %while.body.224.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_128 Depth=2
                                        #       Parent Loop BB1_151 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rdi), %esi
	movzbl	%bl, %eax
	cmpl	%eax, %esi
	jbe	.LBB1_166
# BB#165:                               # %if.then.229.i
                                        #   in Loop: Header=BB1_164 Depth=4
	movb	%sil, (%rbp)
	movb	%sil, %bl
.LBB1_166:                              # %while.cond.221.backedge.i
                                        #   in Loop: Header=BB1_164 Depth=4
	movzbl	(%rcx,%rdi), %esi
	addq	%rcx, %rdi
	movzbl	%bl, %eax
	cmpl	%eax, %esi
	jbe	.LBB1_168
# BB#167:                               # %if.then.229.i.1
                                        #   in Loop: Header=BB1_164 Depth=4
	movb	%sil, (%rbp)
	movb	%sil, %bl
.LBB1_168:                              # %while.cond.221.backedge.i.1
                                        #   in Loop: Header=BB1_164 Depth=4
	addq	%rcx, %rdi
	addl	$-2, %edx
	jne	.LBB1_164
.LBB1_169:                              # %while.cond.221.do.end.237_crit_edge.i
                                        #   in Loop: Header=BB1_151 Depth=3
	imulq	%rcx, %r13
	addq	%r13, %r11
	movq	%r11, %rdi
	movq	%r10, %r13
	movq	112(%rsp), %rsi         # 8-byte Reload
	movl	128(%rsp), %r12d        # 4-byte Reload
	jmp	.LBB1_170
	.align	16, 0x90
.LBB1_157:                              #   in Loop: Header=BB1_151 Depth=3
	movl	%r8d, %r9d
.LBB1_170:                              # %do.end.237.i
                                        #   in Loop: Header=BB1_151 Depth=3
	addq	%rcx, %rbp
	cmpl	132(%rsp), %r9d         # 4-byte Folded Reload
	movl	%r9d, %r15d
	movq	%rdi, %r11
	jl	.LBB1_151
.LBB1_171:                              # %do.end.245.i
                                        #   in Loop: Header=BB1_128 Depth=2
	movq	120(%rsp), %rdx         # 8-byte Reload
	incq	%rdx
	cmpl	%ecx, %edx
	movq	32(%rsp), %r14          # 8-byte Reload
	jne	.LBB1_128
	jmp	.LBB1_196
	.align	16, 0x90
.LBB1_101:                              # %for.cond.250.preheader.i
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%ecx, %ecx
	jle	.LBB1_196
# BB#102:                               # %for.body.253.lr.ph.i
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(,%rcx,4), %r15
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_103:                              # %for.body.253.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_106 Depth 3
                                        #         Child Loop BB1_118 Depth 4
                                        #       Child Loop BB1_174 Depth 3
                                        #         Child Loop BB1_186 Depth 4
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx,2), %rbp
	leaq	(%r14,%rbx,2), %r11
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	16(%rdi), %eax
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%eax, 16(%rdx)
	movups	(%rdi), %xmm0
	movups	%xmm0, (%rdx)
	je	.LBB1_172
# BB#104:                               # %for.cond.269.preheader.i
                                        #   in Loop: Header=BB1_103 Depth=2
	cmpl	$0, 132(%rsp)           # 4-byte Folded Reload
	jle	.LBB1_195
# BB#105:                               # %for.body.272.lr.ph.i
                                        #   in Loop: Header=BB1_103 Depth=2
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	284(%r13), %r8d
	movl	%r8d, 96(%rsp)          # 4-byte Spill
	movl	280(%r13), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	272(%r13), %r14d
	movl	276(%r13), %edx
	movq	%r13, %rbx
	leal	-2(%rax), %edi
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	leal	1(%rax), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB1_106:                              # %for.body.272.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_103 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_118 Depth 4
	subl	%r8d, %edx
	jns	.LBB1_108
# BB#107:                               # %if.then.289.i
                                        #   in Loop: Header=BB1_106 Depth=3
	incl	%r14d
	addl	288(%rbx), %edx
.LBB1_108:                              # %if.end.301.i
                                        #   in Loop: Header=BB1_106 Depth=3
	movl	%r14d, %r10d
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	(%r10,%rax), %r14d
	cmpl	%r12d, %esi
	movzwl	(%r11), %eax
	jne	.LBB1_110
# BB#109:                               # %lor.lhs.false.317.i
                                        #   in Loop: Header=BB1_106 Depth=3
	movzwl	(%rbp), %r9d
	movl	%edx, %edi
	movzwl	%ax, %edx
	cmpl	%r9d, %edx
	movl	%edi, %edx
	jae	.LBB1_111
.LBB1_110:                              # %if.then.322.i
                                        #   in Loop: Header=BB1_106 Depth=3
	movw	%ax, (%rbp)
	movw	%ax, %r9w
.LBB1_111:                              # %if.end.323.i
                                        #   in Loop: Header=BB1_106 Depth=3
	leal	1(%r13), %r12d
	leaq	(%r11,%rcx,2), %rdi
	cmpl	%r14d, %r12d
	jge	.LBB1_124
# BB#112:                               # %while.body.330.lr.ph.i
                                        #   in Loop: Header=BB1_106 Depth=3
	movl	%edx, 108(%rsp)         # 4-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rbx
	subl	%r13d, %eax
	addl	%r10d, %eax
	leaq	4(%rax,%rax), %r8
	movq	80(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r10), %edx
	subl	%r13d, %edx
	leal	(%rbx,%r10), %ebx
	testb	$1, %dl
	je	.LBB1_116
# BB#113:                               # %while.body.330.i.prol
                                        #   in Loop: Header=BB1_106 Depth=3
	movzwl	(%rdi), %edx
	movzwl	%r9w, %eax
	cmpl	%eax, %edx
	jae	.LBB1_115
# BB#114:                               # %if.then.335.i.prol
                                        #   in Loop: Header=BB1_106 Depth=3
	movw	%dx, (%rbp)
	movw	%dx, %r9w
.LBB1_115:                              # %while.cond.327.backedge.i.prol
                                        #   in Loop: Header=BB1_106 Depth=3
	leal	2(%r13), %r12d
	leaq	(%rdi,%rcx,2), %rdi
.LBB1_116:                              # %while.body.330.lr.ph.i.split
                                        #   in Loop: Header=BB1_106 Depth=3
	imulq	%rcx, %r8
	cmpl	%r13d, %ebx
	je	.LBB1_123
# BB#117:                               # %while.body.330.lr.ph.i.split.split
                                        #   in Loop: Header=BB1_106 Depth=3
	movq	120(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r10d
	subl	%r12d, %r10d
	.align	16, 0x90
.LBB1_118:                              # %while.body.330.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_103 Depth=2
                                        #       Parent Loop BB1_106 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzwl	(%rdi), %eax
	movzwl	%r9w, %edx
	cmpl	%edx, %eax
	jae	.LBB1_120
# BB#119:                               # %if.then.335.i
                                        #   in Loop: Header=BB1_118 Depth=4
	movw	%ax, (%rbp)
	movw	%ax, %r9w
.LBB1_120:                              # %while.cond.327.backedge.i
                                        #   in Loop: Header=BB1_118 Depth=4
	movzwl	(%rdi,%rcx,2), %eax
	movzwl	%r9w, %edx
	cmpl	%edx, %eax
	jae	.LBB1_122
# BB#121:                               # %if.then.335.i.1
                                        #   in Loop: Header=BB1_118 Depth=4
	movw	%ax, (%rbp)
	movw	%ax, %r9w
.LBB1_122:                              # %while.cond.327.backedge.i.1
                                        #   in Loop: Header=BB1_118 Depth=4
	addq	%r15, %rdi
	addl	$-2, %r10d
	jne	.LBB1_118
.LBB1_123:                              # %while.cond.327.do.end.343_crit_edge.i
                                        #   in Loop: Header=BB1_106 Depth=3
	addq	%r8, %r11
	movq	%r11, %rdi
	movl	%r14d, %r12d
	movq	72(%rsp), %rbx          # 8-byte Reload
	movl	96(%rsp), %r8d          # 4-byte Reload
	movl	108(%rsp), %edx         # 4-byte Reload
.LBB1_124:                              # %do.end.343.i
                                        #   in Loop: Header=BB1_106 Depth=3
	leaq	(%rbp,%rcx,2), %rbp
	cmpl	132(%rsp), %r12d        # 4-byte Folded Reload
	movl	%r12d, %r13d
	movq	%rdi, %r11
	movl	128(%rsp), %r12d        # 4-byte Reload
	jl	.LBB1_106
# BB#125:                               # %for.cond.269.do.end.431.loopexit164_crit_edge.i
                                        #   in Loop: Header=BB1_103 Depth=2
	movq	%rbx, %r13
	movl	%edx, 276(%r13)
	jmp	.LBB1_194
	.align	16, 0x90
.LBB1_172:                              # %for.cond.349.preheader.i
                                        #   in Loop: Header=BB1_103 Depth=2
	cmpl	$0, 132(%rsp)           # 4-byte Folded Reload
	jle	.LBB1_195
# BB#173:                               # %for.body.352.lr.ph.i
                                        #   in Loop: Header=BB1_103 Depth=2
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	284(%r13), %r8d
	movl	%r8d, 108(%rsp)         # 4-byte Spill
	movl	280(%r13), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	272(%r13), %r14d
	movl	276(%r13), %r9d
	leal	-2(%rax), %edx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	leal	1(%rax), %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB1_174:                              # %for.body.352.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_103 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_186 Depth 4
	subl	%r8d, %r9d
	jns	.LBB1_176
# BB#175:                               # %if.then.369.i
                                        #   in Loop: Header=BB1_174 Depth=3
	incl	%r14d
	addl	288(%r13), %r9d
.LBB1_176:                              # %if.end.381.i
                                        #   in Loop: Header=BB1_174 Depth=3
	movl	%r14d, %ebx
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	(%rbx,%rax), %r14d
	cmpl	%r12d, %esi
	movzwl	(%r11), %edx
	jne	.LBB1_178
# BB#177:                               # %lor.lhs.false.397.i
                                        #   in Loop: Header=BB1_174 Depth=3
	movzwl	(%rbp), %eax
	movzwl	%dx, %edi
	cmpl	%eax, %edi
	jbe	.LBB1_179
.LBB1_178:                              # %if.then.402.i
                                        #   in Loop: Header=BB1_174 Depth=3
	movw	%dx, (%rbp)
	movw	%dx, %ax
.LBB1_179:                              # %if.end.403.i
                                        #   in Loop: Header=BB1_174 Depth=3
	leal	1(%r10), %edx
	leaq	(%r11,%rcx,2), %rdi
	cmpl	%r14d, %edx
	jge	.LBB1_192
# BB#180:                               # %while.body.410.lr.ph.i
                                        #   in Loop: Header=BB1_174 Depth=3
	movq	%r13, %r12
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%rsi, %r13
	subl	%r10d, %esi
	addl	%ebx, %esi
	leaq	4(%rsi,%rsi), %r8
	movq	88(%rsp), %rsi          # 8-byte Reload
	leal	(%rsi,%rbx), %esi
	subl	%r10d, %esi
	leal	(%r13,%rbx), %r13d
	testb	$1, %sil
	je	.LBB1_184
# BB#181:                               # %while.body.410.i.prol
                                        #   in Loop: Header=BB1_174 Depth=3
	movzwl	(%rdi), %edx
	movzwl	%ax, %esi
	cmpl	%esi, %edx
	jbe	.LBB1_183
# BB#182:                               # %if.then.415.i.prol
                                        #   in Loop: Header=BB1_174 Depth=3
	movw	%dx, (%rbp)
	movw	%dx, %ax
.LBB1_183:                              # %while.cond.407.backedge.i.prol
                                        #   in Loop: Header=BB1_174 Depth=3
	leal	2(%r10), %edx
	leaq	(%rdi,%rcx,2), %rdi
.LBB1_184:                              # %while.body.410.lr.ph.i.split
                                        #   in Loop: Header=BB1_174 Depth=3
	imulq	%rcx, %r8
	cmpl	%r10d, %r13d
	je	.LBB1_191
# BB#185:                               # %while.body.410.lr.ph.i.split.split
                                        #   in Loop: Header=BB1_174 Depth=3
	movq	120(%rsp), %rsi         # 8-byte Reload
	addl	%esi, %ebx
	subl	%edx, %ebx
	.align	16, 0x90
.LBB1_186:                              # %while.body.410.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_103 Depth=2
                                        #       Parent Loop BB1_174 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzwl	(%rdi), %edx
	movzwl	%ax, %esi
	cmpl	%esi, %edx
	jbe	.LBB1_188
# BB#187:                               # %if.then.415.i
                                        #   in Loop: Header=BB1_186 Depth=4
	movw	%dx, (%rbp)
	movw	%dx, %ax
.LBB1_188:                              # %while.cond.407.backedge.i
                                        #   in Loop: Header=BB1_186 Depth=4
	movzwl	(%rdi,%rcx,2), %edx
	movzwl	%ax, %esi
	cmpl	%esi, %edx
	jbe	.LBB1_190
# BB#189:                               # %if.then.415.i.1
                                        #   in Loop: Header=BB1_186 Depth=4
	movw	%dx, (%rbp)
	movw	%dx, %ax
.LBB1_190:                              # %while.cond.407.backedge.i.1
                                        #   in Loop: Header=BB1_186 Depth=4
	addq	%r15, %rdi
	addl	$-2, %ebx
	jne	.LBB1_186
.LBB1_191:                              # %while.cond.407.do.end.423_crit_edge.i
                                        #   in Loop: Header=BB1_174 Depth=3
	addq	%r8, %r11
	movq	%r11, %rdi
	movl	%r14d, %edx
	movq	%r12, %r13
	movq	112(%rsp), %rsi         # 8-byte Reload
	movl	128(%rsp), %r12d        # 4-byte Reload
	movl	108(%rsp), %r8d         # 4-byte Reload
.LBB1_192:                              # %do.end.423.i
                                        #   in Loop: Header=BB1_174 Depth=3
	leaq	(%rbp,%rcx,2), %rbp
	cmpl	132(%rsp), %edx         # 4-byte Folded Reload
	movl	%edx, %r10d
	movq	%rdi, %r11
	jl	.LBB1_174
# BB#193:                               # %for.cond.349.do.end.431.loopexit_crit_edge.i
                                        #   in Loop: Header=BB1_103 Depth=2
	movl	%r9d, 276(%r13)
.LBB1_194:                              # %do.end.431.i
                                        #   in Loop: Header=BB1_103 Depth=2
	movl	%r14d, 272(%r13)
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
.LBB1_195:                              # %do.end.431.i
                                        #   in Loop: Header=BB1_103 Depth=2
	incq	%rbx
	cmpl	%ecx, %ebx
	jne	.LBB1_103
	.align	16, 0x90
.LBB1_196:                              # %if.end.126
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	movq	8(%rsp), %r14           # 8-byte Reload
	addq	%rax, (%r14)
	movl	292(%r13), %ecx
	incl	%ecx
	movl	%ecx, 292(%r13)
	movl	312(%r13), %edx
	subl	320(%r13), %edx
	movl	%edx, 312(%r13)
	movl	308(%r13), %eax
	jns	.LBB1_198
# BB#197:                               # %if.then.143
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	%eax
	movl	%eax, 308(%r13)
	addl	324(%r13), %edx
	movl	%edx, 312(%r13)
	jmp	.LBB1_198
.LBB1_199:                              # %if.else.169
	cmpl	$0, 204(%r13)
	je	.LBB1_200
# BB#201:                               # %if.then.173
	movq	216(%r13), %rdi
	addq	%rdx, %rdi
	incq	%rsi
	movq	%rbx, %rbp
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	movq	%rbp, %rdx
	callq	memcpy
	movl	296(%r13), %edx
	movq	(%r14), %rsi
	jmp	.LBB1_202
.LBB1_200:                              # %if.else.169.if.end.182_crit_edge
	movq	%rbx, %rbp
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rbp
.LBB1_202:                              # %if.end.182
	addl	%ebx, %edx
	movl	%edx, 296(%r13)
	addq	%rsi, %rbp
	movq	%rbp, (%r14)
	xorl	%eax, %eax
.LBB1_203:                              # %cleanup.191
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_ISpecialDownScale_process, .Lfunc_end1-s_ISpecialDownScale_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_ISpecialDownScale_release,@function
s_ISpecialDownScale_release:            # @s_ISpecialDownScale_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %r14
	movq	216(%rbx), %rsi
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 216(%rbx)
	movq	224(%rbx), %rsi
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 224(%rbx)
	movq	232(%rbx), %rsi
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 232(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	s_ISpecialDownScale_release, .Lfunc_end2-s_ISpecialDownScale_release
	.cfi_endproc

	.align	16, 0x90
	.type	s_ISpecialDownScale_set_defaults,@function
s_ISpecialDownScale_set_defaults:       # @s_ISpecialDownScale_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, 216(%rdi)
	movq	$0, 232(%rdi)
	retq
.Lfunc_end3:
	.size	s_ISpecialDownScale_set_defaults, .Lfunc_end3-s_ISpecialDownScale_set_defaults
	.cfi_endproc

	.type	st_ISpecialDownScale_state,@object # @st_ISpecialDownScale_state
	.section	.rodata,"a",@progbits
	.align	8
st_ISpecialDownScale_state:
	.long	328                     # 0x148
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	isdscale_state_reloc_ptrs
	.size	st_ISpecialDownScale_state, 64

	.type	s_ISpecialDownScale_template,@object # @s_ISpecialDownScale_template
	.globl	s_ISpecialDownScale_template
	.align	8
s_ISpecialDownScale_template:
	.quad	st_ISpecialDownScale_state
	.quad	s_ISpecialDownScale_init
	.quad	s_ISpecialDownScale_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	s_ISpecialDownScale_release
	.quad	s_ISpecialDownScale_set_defaults
	.quad	0
	.size	s_ISpecialDownScale_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ImageSpecialDownScaleEncode/Decode state"
	.size	.L.str, 41

	.type	isdscale_state_reloc_ptrs,@object # @isdscale_state_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
isdscale_state_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	isdscale_state_enum_ptrs
	.size	isdscale_state_reloc_ptrs, 24

	.type	isdscale_state_enum_ptrs,@object # @isdscale_state_enum_ptrs
	.align	2
isdscale_state_enum_ptrs:
	.short	0                       # 0x0
	.short	224                     # 0xe0
	.short	0                       # 0x0
	.short	216                     # 0xd8
	.short	0                       # 0x0
	.short	232                     # 0xe8
	.size	isdscale_state_enum_ptrs, 12

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"image_scale tmp"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image_scale dst"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image_scale src"
	.size	.L.str.3, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
