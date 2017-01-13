	.text
	.file	"gdevdflt.bc"
	.globl	set_linear_color_bits_mask_shift
	.align	16, 0x90
	.type	set_linear_color_bits_mask_shift,@function
set_linear_color_bits_mask_shift:       # @set_linear_color_bits_mask_shift
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
	movq	%rdi, %rbx
	movzbl	110(%rbx), %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	112(%rbx), %eax
	movl	%eax, (%rsp)            # 4-byte Spill
	movl	116(%rbx), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movslq	100(%rbx), %rax
	movl	%eax, %r12d
	movb	$0, 139(%rbx,%rax)
	addl	$-2, %eax
	js	.LBB0_4
# BB#1:                                 # %for.body.lr.ph
	movl	(%rsp), %eax            # 4-byte Reload
	movzwl	%ax, %eax
	incl	%eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	4(%rsp), %eax           # 4-byte Reload
	movzwl	%ax, %ebp
	incl	%ebp
	leal	-2(%r12), %eax
	movslq	%eax, %r13
	addq	$141, %r13
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	2(%rax), %r14d
	subl	%r12d, %r14d
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%r13), %r15d
	testl	%r14d, %r14d
	je	.LBB0_3
# BB#8:                                 # %cond.false
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%ebp, %edi
	jmp	.LBB0_9
	.align	16, 0x90
.LBB0_3:                                # %cond.true
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	20(%rsp), %edi          # 4-byte Reload
.LBB0_9:                                # %cond.end
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	ilog2
	addl	%r15d, %eax
	movb	%al, -1(%rbx,%r13)
	leaq	-1(%r13), %rax
	addq	$-141, %r13
	incl	%r14d
	testq	%r13, %r13
	movq	%rax, %r13
	jg	.LBB0_2
.LBB0_4:                                # %for.cond.32.preheader
	testl	%r12d, %r12d
	movq	8(%rsp), %r15           # 8-byte Reload
	jle	.LBB0_12
# BB#5:                                 # %for.body.35.lr.ph
	movl	(%rsp), %eax            # 4-byte Reload
	movzwl	%ax, %r14d
	incl	%r14d
	movl	4(%rsp), %eax           # 4-byte Reload
	movzwl	%ax, %r13d
	incl	%r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_6:                                # %for.body.35
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, %r15d
	jne	.LBB0_10
# BB#7:                                 # %cond.true.39
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	%r14d, %edi
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_10:                               # %cond.false.43
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	%r13d, %edi
.LBB0_11:                               # %cond.end.47
                                        #   in Loop: Header=BB0_6 Depth=1
	callq	ilog2
	movl	%eax, %ecx
	movb	%cl, 204(%rbx,%rbp)
	movl	$1, %eax
	shlq	%cl, %rax
	decq	%rax
	movb	140(%rbx,%rbp), %cl
	shlq	%cl, %rax
	movq	%rax, 272(%rbx,%rbp,8)
	incq	%rbp
	cmpl	%ebp, %r12d
	jne	.LBB0_6
.LBB0_12:                               # %for.end.70
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	set_linear_color_bits_mask_shift, .Lfunc_end0-set_linear_color_bits_mask_shift
	.cfi_endproc

	.globl	check_device_separable
	.align	16, 0x90
	.type	check_device_separable,@function
check_device_separable:                 # @check_device_separable
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
	subq	$840, %rsp              # imm = 0x348
.Ltmp19:
	.cfi_def_cfa_offset 896
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
	movq	%rdi, %rbx
	movslq	100(%rbx), %r12
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 176(%rsp)
	movdqa	%xmm0, 160(%rsp)
	movdqa	%xmm0, 144(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movdqa	%xmm0, 112(%rsp)
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movdqa	%xmm0, 64(%rsp)
	cmpl	$-1, 136(%rbx)
	jne	.LBB1_69
# BB#1:                                 # %if.end
	movq	1552(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_69
# BB#2:                                 # %if.end.4
	movzbl	110(%rbx), %ecx
	cmpl	%r12d, %ecx
	jge	.LBB1_5
# BB#3:                                 # %land.lhs.true
	movl	120(%rbx), %edx
	testl	%edx, %edx
	je	.LBB1_69
# BB#4:                                 # %lor.lhs.false
	movl	112(%rbx), %esi
	incl	%esi
	cmpl	%esi, %edx
	jne	.LBB1_69
.LBB1_5:                                # %if.end.11
	cmpl	$1, %r12d
	jg	.LBB1_7
# BB#6:                                 # %if.end.11
	testb	%cl, %cl
	je	.LBB1_9
.LBB1_7:                                # %land.lhs.true.19
	movl	124(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB1_69
# BB#8:                                 # %lor.lhs.false.21
	movl	116(%rbx), %edx
	incl	%edx
	cmpl	%edx, %ecx
	jne	.LBB1_69
.LBB1_9:                                # %if.end.27
	movl	120(%rbx), %ecx
	leal	-1(%rcx), %edx
	testl	%ecx, %edx
	jne	.LBB1_69
# BB#10:                                # %lor.lhs.false.32
	movl	124(%rbx), %ecx
	leal	-1(%rcx), %edx
	testl	%ecx, %edx
	jne	.LBB1_69
# BB#11:                                # %if.end.40
	leaq	64(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*%rax
	testq	%rax, %rax
	jne	.LBB1_69
# BB#12:                                # %for.cond.preheader
	testl	%r12d, %r12d
	jle	.LBB1_13
# BB#14:                                # %for.cond.49.preheader.lr.ph
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	leal	-1(%r12), %r13d
	incq	%r13
	movq	%r13, 56(%rsp)          # 8-byte Spill
	andq	%rax, %r13
	leaq	-16(%r13), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	shrl	$4, %ecx
	incl	%ecx
	leal	-1(%r12), %edx
	incq	%rdx
	andq	%rax, %rdx
	movq	%rdx, (%rsp)            # 8-byte Spill
	leaq	-16(%rdx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	andl	$3, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leal	-16(%rdx), %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leal	-16(%r13), %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r14d, %r14d
	pxor	%xmm0, %xmm0
	xorl	%ebp, %ebp
.LBB1_16:                               # %overflow.checked134
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
                                        #     Child Loop BB1_21 Depth 2
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_32 Depth 2
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_40 Depth 2
                                        #     Child Loop BB1_44 Depth 2
	testq	%r13, %r13
	movl	$0, %ecx
	je	.LBB1_23
# BB#17:                                # %vector.body130.preheader
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	$0, %eax
	je	.LBB1_19
.LBB1_18:                               # %vector.body130.prol
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	%xmm0, 64(%rsp,%rax,2)
	movdqa	%xmm0, 80(%rsp,%rax,2)
	addq	$16, %rax
	incq	%rcx
	jne	.LBB1_18
.LBB1_19:                               # %vector.body130.preheader.split
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpq	$48, 48(%rsp)           # 8-byte Folded Reload
	movq	%r13, %rcx
	jb	.LBB1_23
# BB#20:                                # %vector.body130.preheader.split.split
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	%r13, %rcx
	subq	%rax, %rcx
	leaq	176(%rsp), %rdx
	leaq	(%rdx,%rax,2), %rax
.LBB1_21:                               # %vector.body130
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	%xmm0, -112(%rax)
	movdqa	%xmm0, -96(%rax)
	movdqa	%xmm0, -80(%rax)
	movdqa	%xmm0, -64(%rax)
	movdqa	%xmm0, -48(%rax)
	movdqa	%xmm0, -32(%rax)
	movdqa	%xmm0, -16(%rax)
	movdqa	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-64, %rcx
	jne	.LBB1_21
# BB#22:                                #   in Loop: Header=BB1_16 Depth=1
	movq	%r13, %rcx
.LBB1_23:                               # %middle.block131
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpq	%rcx, 56(%rsp)          # 8-byte Folded Reload
	je	.LBB1_26
# BB#24:                                # %for.body.52.preheader
                                        #   in Loop: Header=BB1_16 Depth=1
	leaq	64(%rsp,%rcx,2), %rax
	movl	%r12d, %edx
	subl	%ecx, %edx
.LBB1_25:                               # %for.body.52
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%edx
	jne	.LBB1_25
.LBB1_26:                               # %for.end
                                        #   in Loop: Header=BB1_16 Depth=1
	movw	$-1, 64(%rsp,%r14,2)
	movq	%rbx, %rdi
	leaq	64(%rsp), %rsi
	callq	*1552(%rbx)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB1_69
# BB#27:                                # %for.end
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	%r15, %rax
	andq	%rbp, %rax
	jne	.LBB1_69
# BB#28:                                # %if.end.66
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	%r15, 192(%rsp,%r14,8)
	xorl	%eax, %eax
	testb	$1, %r15b
	movq	%r15, %rcx
	movl	$0, %edx
	jne	.LBB1_31
.LBB1_29:                               # %for.body.75
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrq	%rcx
	incl	%edx
	movl	%ecx, %esi
	andl	$1, %esi
	testq	%rcx, %rcx
	je	.LBB1_31
# BB#30:                                # %for.body.75
                                        #   in Loop: Header=BB1_29 Depth=2
	testq	%rsi, %rsi
	je	.LBB1_29
.LBB1_31:                               # %for.end.78
                                        #   in Loop: Header=BB1_16 Depth=1
	movb	%dl, 768(%rsp,%r14)
	jmp	.LBB1_32
.LBB1_34:                               # %if.end.90
                                        #   in Loop: Header=BB1_32 Depth=2
	shrq	%rcx
	incl	%eax
.LBB1_32:                               # %for.end.78
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rcx, %rcx
	je	.LBB1_35
# BB#33:                                # %for.body.85
                                        #   in Loop: Header=BB1_32 Depth=2
	testb	$1, %cl
	jne	.LBB1_34
	jmp	.LBB1_69
.LBB1_35:                               # %for.body.101.lr.ph
                                        #   in Loop: Header=BB1_16 Depth=1
	testq	%r13, %r13
	movb	%al, 704(%rsp,%r14)
	movl	$0, %ecx
	pcmpeqd	%xmm0, %xmm0
	je	.LBB1_42
# BB#36:                                # %vector.body.preheader
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	movl	$0, %eax
	je	.LBB1_38
.LBB1_37:                               # %vector.body.prol
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	%xmm0, 64(%rsp,%rax,2)
	movdqa	%xmm0, 80(%rsp,%rax,2)
	addq	$16, %rax
	incq	%rcx
	jne	.LBB1_37
.LBB1_38:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpq	$48, 24(%rsp)           # 8-byte Folded Reload
	movq	%r13, %rcx
	jb	.LBB1_42
# BB#39:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	subq	%rax, %rcx
	leaq	176(%rsp), %rdx
	leaq	(%rdx,%rax,2), %rax
.LBB1_40:                               # %vector.body
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	%xmm0, -112(%rax)
	movdqa	%xmm0, -96(%rax)
	movdqa	%xmm0, -80(%rax)
	movdqa	%xmm0, -64(%rax)
	movdqa	%xmm0, -48(%rax)
	movdqa	%xmm0, -32(%rax)
	movdqa	%xmm0, -16(%rax)
	movdqa	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-64, %rcx
	jne	.LBB1_40
# BB#41:                                #   in Loop: Header=BB1_16 Depth=1
	movq	%r13, %rcx
.LBB1_42:                               # %middle.block
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpq	%rcx, 56(%rsp)          # 8-byte Folded Reload
	je	.LBB1_45
# BB#43:                                # %for.body.101.preheader
                                        #   in Loop: Header=BB1_16 Depth=1
	leaq	64(%rsp,%rcx,2), %rax
	movl	%r12d, %edx
	subl	%ecx, %edx
.LBB1_44:                               # %for.body.101
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$-1, (%rax)
	addq	$2, %rax
	decl	%edx
	jne	.LBB1_44
.LBB1_45:                               # %for.end.106
                                        #   in Loop: Header=BB1_16 Depth=1
	movw	$0, 64(%rsp,%r14,2)
	movq	%rbx, %rdi
	leaq	64(%rsp), %rsi
	callq	*1552(%rbx)
	testq	%rax, %r15
	jne	.LBB1_69
# BB#15:                                # %for.cond
                                        #   in Loop: Header=BB1_16 Depth=1
	orq	%r15, %rbp
	incq	%r14
	cmpq	%r12, %r14
	pxor	%xmm0, %xmm0
	jl	.LBB1_16
# BB#46:                                # %for.end.121
	movl	$1, 136(%rbx)
	testl	%r12d, %r12d
	jle	.LBB1_69
# BB#47:                                # %for.body.126.preheader
	leal	-1(%r12), %r10d
	incq	%r10
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	addq	$14, %rax
	xorl	%edx, %edx
	movq	%r10, %r8
	andq	%rax, %r8
	je	.LBB1_57
# BB#48:                                # %vector.memcheck
	movq	%rax, %r15
	leaq	140(%rbx), %rax
	leal	-1(%r12), %ecx
	leaq	140(%rcx,%rbx), %rdx
	leaq	204(%rbx), %rdi
	leaq	204(%rcx,%rbx), %rbp
	leaq	272(%rbx), %rsi
	leaq	272(%rbx,%rcx,8), %rcx
	cmpq	%rbp, %rax
	setbe	%r11b
	cmpq	%rdx, %rdi
	setbe	%r14b
	cmpq	%rcx, %rax
	setbe	%al
	cmpq	%rdx, %rsi
	setbe	%r9b
	cmpq	%rcx, %rdi
	setbe	%cl
	cmpq	%rbp, %rsi
	setbe	%dil
	xorl	%edx, %edx
	testb	%r14b, %r11b
	jne	.LBB1_57
# BB#49:                                # %vector.memcheck
	andb	%r9b, %al
	jne	.LBB1_57
# BB#50:                                # %vector.memcheck
	andb	%dil, %cl
	jne	.LBB1_57
# BB#51:                                # %vector.body154.preheader
	leal	-1(%r12), %ecx
	incq	%rcx
	andq	%r15, %rcx
	addq	$-2, %rcx
	movq	%rcx, %rax
	shrq	%rax
	xorl	%r9d, %r9d
	btq	$1, %rcx
	jb	.LBB1_53
# BB#52:                                # %vector.body154.prol
	movw	768(%rsp), %cx
	movw	%cx, 140(%rbx)
	movw	704(%rsp), %cx
	movw	%cx, 204(%rbx)
	movdqa	192(%rsp), %xmm0
	movdqu	%xmm0, 272(%rbx)
	movl	$2, %r9d
.LBB1_53:                               # %vector.body154.preheader.split
	testq	%rax, %rax
	je	.LBB1_56
# BB#54:                                # %vector.body154.preheader.split.split
	leal	-1(%r12), %eax
	incq	%rax
	movabsq	$8589934590, %r11       # imm = 0x1FFFFFFFE
	andq	%rax, %r11
	subq	%r9, %r11
	leaq	770(%rsp,%r9), %r14
	leaq	206(%r9,%rbx), %rbp
	leaq	706(%rsp,%r9), %rcx
	leaq	208(%rsp,%r9,8), %rsi
	leaq	288(%rbx,%r9,8), %rax
	xorl	%edx, %edx
.LBB1_55:                               # %vector.body154
                                        # =>This Inner Loop Header: Depth=1
	movw	-2(%r14,%rdx), %di
	movw	%di, -66(%rbp,%rdx)
	movw	-2(%rcx,%rdx), %di
	movw	%di, -2(%rbp,%rdx)
	movaps	-16(%rsi,%rdx,8), %xmm0
	movups	%xmm0, -16(%rax,%rdx,8)
	movw	(%r14,%rdx), %di
	movw	%di, -64(%rbp,%rdx)
	movw	(%rcx,%rdx), %di
	movw	%di, (%rbp,%rdx)
	movdqa	(%rsi,%rdx,8), %xmm0
	movdqu	%xmm0, (%rax,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %r11
	jne	.LBB1_55
.LBB1_56:
	movq	%r8, %rdx
.LBB1_57:                               # %middle.block155
	cmpq	%rdx, %r10
	je	.LBB1_63
# BB#58:                                # %for.body.126.preheader200
	leal	1(%r12), %ecx
	movl	%edx, %eax
	orl	$1, %eax
	subl	%eax, %ecx
	testb	$1, %cl
	je	.LBB1_60
# BB#59:                                # %for.body.126.prol
	movb	768(%rsp,%rdx), %cl
	movb	%cl, 140(%rbx,%rdx)
	movb	704(%rsp,%rdx), %cl
	movb	%cl, 204(%rbx,%rdx)
	movq	192(%rsp,%rdx,8), %rcx
	movq	%rcx, 272(%rbx,%rdx,8)
	orq	$1, %rdx
.LBB1_60:                               # %for.body.126.preheader200.split
	cmpl	%eax, %r12d
	je	.LBB1_63
# BB#61:                                # %for.body.126.preheader200.split.split
	movl	%r12d, %r8d
	negl	%r8d
	leaq	769(%rsp,%rdx), %r9
	leaq	705(%rsp,%rdx), %rcx
	leaq	200(%rsp,%rdx,8), %rsi
	leaq	205(%rbx,%rdx), %rdi
	leaq	280(%rbx,%rdx,8), %rbp
	leaq	(%r8,%rdx), %r8
	xorl	%edx, %edx
.LBB1_62:                               # %for.body.126
                                        # =>This Inner Loop Header: Depth=1
	movb	-1(%r9,%rdx), %al
	movb	%al, -65(%rdi,%rdx)
	movb	-1(%rcx,%rdx), %al
	movb	%al, -1(%rdi,%rdx)
	movq	-8(%rsi,%rdx,8), %rax
	movq	%rax, -8(%rbp,%rdx,8)
	movb	(%r9,%rdx), %al
	movb	%al, -64(%rdi,%rdx)
	movb	(%rcx,%rdx), %al
	movb	%al, (%rdi,%rdx)
	movq	(%rsi,%rdx,8), %rax
	movq	%rax, (%rbp,%rdx,8)
	addq	$2, %rdx
	movl	%r8d, %eax
	addl	%edx, %eax
	jne	.LBB1_62
.LBB1_63:                               # %for.cond.145.preheader
	testl	%r12d, %r12d
	jle	.LBB1_69
# BB#64:                                # %for.body.148.lr.ph
	movl	120(%rbx), %edx
	xorl	%eax, %eax
.LBB1_65:                               # %for.body.148
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, %edx
	je	.LBB1_68
# BB#66:                                # %land.lhs.true.155
                                        #   in Loop: Header=BB1_65 Depth=1
	movb	704(%rsp,%rax), %cl
	movl	$1, %esi
	shll	%cl, %esi
	cmpl	%edx, %esi
	je	.LBB1_67
.LBB1_68:                               # %for.inc.163
                                        #   in Loop: Header=BB1_65 Depth=1
	incq	%rax
	cmpq	%r12, %rax
	jl	.LBB1_65
	jmp	.LBB1_69
.LBB1_13:                               # %for.end.121.thread
	movl	$1, 136(%rbx)
.LBB1_69:                               # %cleanup.166
	addq	$840, %rsp              # imm = 0x348
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_67:                               # %if.then.159
	movb	%al, 110(%rbx)
	jmp	.LBB1_69
.Lfunc_end1:
	.size	check_device_separable, .Lfunc_end1-check_device_separable
	.cfi_endproc

	.globl	gx_device_fill_in_procs
	.align	16, 0x90
	.type	gx_device_fill_in_procs,@function
gx_device_fill_in_procs:                # @gx_device_fill_in_procs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp27:
	.cfi_def_cfa_offset 32
.Ltmp28:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gx_device_set_procs
	cmpq	$0, 1144(%rbx)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	$gx_default_open_device, 1144(%rbx)
.LBB2_2:                                # %if.end
	cmpq	$0, 1152(%rbx)
	jne	.LBB2_4
# BB#3:                                 # %if.then.5
	movq	$gx_default_get_initial_matrix, 1152(%rbx)
.LBB2_4:                                # %if.end.8
	cmpq	$0, 1160(%rbx)
	jne	.LBB2_6
# BB#5:                                 # %if.then.11
	movq	$gx_default_sync_output, 1160(%rbx)
.LBB2_6:                                # %if.end.14
	cmpq	$0, 1168(%rbx)
	jne	.LBB2_8
# BB#7:                                 # %if.then.17
	movq	$gx_default_output_page, 1168(%rbx)
.LBB2_8:                                # %if.end.20
	cmpq	$0, 1176(%rbx)
	jne	.LBB2_10
# BB#9:                                 # %if.then.23
	movq	$gx_default_close_device, 1176(%rbx)
.LBB2_10:                               # %if.end.26
	movq	1192(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB2_12
# BB#11:                                # %if.then.29
	movq	$gx_default_w_b_map_color_rgb, 1192(%rbx)
	movl	$gx_default_w_b_map_color_rgb, %eax
.LBB2_12:                               # %if.end.32
	cmpq	$0, 1208(%rbx)
	jne	.LBB2_14
# BB#13:                                # %if.then.35
	movq	$gx_default_tile_rectangle, 1208(%rbx)
.LBB2_14:                               # %if.end.38
	cmpq	$0, 1216(%rbx)
	jne	.LBB2_16
# BB#15:                                # %if.then.41
	movq	$gx_default_copy_mono, 1216(%rbx)
.LBB2_16:                               # %if.end.44
	cmpq	$0, 1224(%rbx)
	jne	.LBB2_18
# BB#17:                                # %if.then.47
	movq	$gx_default_copy_color, 1224(%rbx)
.LBB2_18:                               # %if.end.50
	cmpq	$0, 1232(%rbx)
	jne	.LBB2_20
# BB#19:                                # %if.then.53
	movq	$gx_default_draw_line, 1232(%rbx)
.LBB2_20:                               # %if.end.56
	cmpq	$0, 1240(%rbx)
	jne	.LBB2_22
# BB#21:                                # %if.then.59
	movq	$gx_default_get_bits, 1240(%rbx)
.LBB2_22:                               # %if.end.62
	cmpq	$0, 1248(%rbx)
	jne	.LBB2_24
# BB#23:                                # %if.then.65
	movq	$gx_default_get_params, 1248(%rbx)
.LBB2_24:                               # %if.end.68
	cmpq	$0, 1256(%rbx)
	jne	.LBB2_26
# BB#25:                                # %if.then.71
	movq	$gx_default_put_params, 1256(%rbx)
.LBB2_26:                               # %if.end.74
	cmpq	$0, 1272(%rbx)
	jne	.LBB2_28
# BB#27:                                # %if.then.77
	movq	$gx_default_get_xfont_procs, 1272(%rbx)
.LBB2_28:                               # %if.end.80
	cmpq	$0, 1280(%rbx)
	jne	.LBB2_30
# BB#29:                                # %if.then.83
	movq	$gx_default_get_xfont_device, 1280(%rbx)
.LBB2_30:                               # %if.end.86
	cmpq	$0, 1288(%rbx)
	jne	.LBB2_32
# BB#31:                                # %if.then.89
	movq	$gx_default_map_rgb_alpha_color, 1288(%rbx)
.LBB2_32:                               # %if.end.92
	cmpq	$0, 1296(%rbx)
	jne	.LBB2_34
# BB#33:                                # %if.then.95
	movq	$gx_default_get_page_device, 1296(%rbx)
.LBB2_34:                               # %if.end.98
	cmpq	$0, 1304(%rbx)
	jne	.LBB2_36
# BB#35:                                # %if.then.101
	movq	$gx_default_get_alpha_bits, 1304(%rbx)
.LBB2_36:                               # %if.end.104
	cmpq	$0, 1312(%rbx)
	jne	.LBB2_38
# BB#37:                                # %if.then.107
	movq	$gx_default_copy_alpha, 1312(%rbx)
.LBB2_38:                               # %if.end.110
	cmpq	$0, 1320(%rbx)
	jne	.LBB2_40
# BB#39:                                # %if.then.113
	movq	$gx_default_get_band, 1320(%rbx)
.LBB2_40:                               # %if.end.116
	cmpq	$0, 1328(%rbx)
	jne	.LBB2_42
# BB#41:                                # %if.then.119
	movq	$gx_default_copy_rop, 1328(%rbx)
.LBB2_42:                               # %if.end.122
	cmpq	$0, 1336(%rbx)
	jne	.LBB2_44
# BB#43:                                # %if.then.125
	movq	$gx_default_fill_path, 1336(%rbx)
.LBB2_44:                               # %if.end.128
	cmpq	$0, 1344(%rbx)
	jne	.LBB2_46
# BB#45:                                # %if.then.131
	movq	$gx_default_stroke_path, 1344(%rbx)
.LBB2_46:                               # %if.end.134
	cmpq	$0, 1352(%rbx)
	jne	.LBB2_48
# BB#47:                                # %if.then.137
	movq	$gx_default_fill_mask, 1352(%rbx)
.LBB2_48:                               # %if.end.140
	cmpq	$0, 1360(%rbx)
	jne	.LBB2_50
# BB#49:                                # %if.then.143
	movq	$gx_default_fill_trapezoid, 1360(%rbx)
.LBB2_50:                               # %if.end.146
	cmpq	$0, 1368(%rbx)
	jne	.LBB2_52
# BB#51:                                # %if.then.149
	movq	$gx_default_fill_parallelogram, 1368(%rbx)
.LBB2_52:                               # %if.end.152
	cmpq	$0, 1376(%rbx)
	jne	.LBB2_54
# BB#53:                                # %if.then.155
	movq	$gx_default_fill_triangle, 1376(%rbx)
.LBB2_54:                               # %if.end.158
	cmpq	$0, 1384(%rbx)
	jne	.LBB2_56
# BB#55:                                # %if.then.161
	movq	$gx_default_draw_thin_line, 1384(%rbx)
.LBB2_56:                               # %if.end.164
	cmpq	$0, 1392(%rbx)
	jne	.LBB2_58
# BB#57:                                # %if.then.167
	movq	$gx_default_begin_image, 1392(%rbx)
.LBB2_58:                               # %do.end
	movq	$gx_default_get_alpha_bits, 1304(%rbx)
	movq	$gx_default_image_data, 1400(%rbx)
	movq	$gx_default_end_image, 1408(%rbx)
	cmpq	$0, 1416(%rbx)
	jne	.LBB2_60
# BB#59:                                # %if.then.181
	movq	$gx_default_strip_tile_rectangle, 1416(%rbx)
.LBB2_60:                               # %if.end.184
	cmpq	$0, 1424(%rbx)
	jne	.LBB2_62
# BB#61:                                # %if.then.187
	movq	$gx_default_strip_copy_rop, 1424(%rbx)
.LBB2_62:                               # %if.end.190
	cmpq	$0, 1696(%rbx)
	jne	.LBB2_64
# BB#63:                                # %if.then.193
	movq	$gx_default_strip_copy_rop2, 1696(%rbx)
.LBB2_64:                               # %if.end.196
	cmpq	$0, 1704(%rbx)
	jne	.LBB2_66
# BB#65:                                # %if.then.199
	movq	$gx_default_strip_tile_rect_devn, 1704(%rbx)
.LBB2_66:                               # %if.end.202
	cmpq	$0, 1432(%rbx)
	jne	.LBB2_68
# BB#67:                                # %if.then.205
	movq	$gx_default_get_clipping_box, 1432(%rbx)
.LBB2_68:                               # %if.end.208
	cmpq	$0, 1440(%rbx)
	jne	.LBB2_70
# BB#69:                                # %if.then.211
	movq	$gx_default_begin_typed_image, 1440(%rbx)
.LBB2_70:                               # %if.end.214
	cmpq	$0, 1448(%rbx)
	jne	.LBB2_72
# BB#71:                                # %if.then.217
	movq	$gx_default_get_bits_rectangle, 1448(%rbx)
.LBB2_72:                               # %if.end.220
	cmpq	$0, 1456(%rbx)
	jne	.LBB2_74
# BB#73:                                # %if.then.223
	movq	$gx_default_map_color_rgb_alpha, 1456(%rbx)
.LBB2_74:                               # %if.end.226
	cmpq	$0, 1464(%rbx)
	jne	.LBB2_76
# BB#75:                                # %if.then.229
	movq	$gx_default_create_compositor, 1464(%rbx)
.LBB2_76:                               # %if.end.232
	cmpq	$0, 1472(%rbx)
	jne	.LBB2_78
# BB#77:                                # %if.then.235
	movq	$gx_default_get_hardware_params, 1472(%rbx)
.LBB2_78:                               # %if.end.238
	cmpq	$0, 1480(%rbx)
	jne	.LBB2_80
# BB#79:                                # %if.then.241
	movq	$gx_default_text_begin, 1480(%rbx)
.LBB2_80:                               # %if.end.244
	cmpq	$0, 1488(%rbx)
	jne	.LBB2_82
# BB#81:                                # %if.then.247
	movq	$gx_default_finish_copydevice, 1488(%rbx)
.LBB2_82:                               # %if.end.250
	movq	1552(%rbx), %rsi
	movl	100(%rbx), %edx
	testq	%rsi, %rsi
	jne	.LBB2_108
# BB#83:                                # %if.then.i
	cmpl	$4, %edx
	je	.LBB2_93
# BB#84:                                # %if.then.i
	cmpl	$3, %edx
	jne	.LBB2_85
# BB#89:                                # %land.lhs.true.8.i
	movq	1184(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_106
# BB#90:                                # %if.then.12.i
	cmpl	$-1, 104(%rbx)
	jne	.LBB2_92
# BB#91:                                # %if.then.i.35.i
	movl	$1, 104(%rbx)
.LBB2_92:                               # %get_encode_color.exit.thread180
	movq	%rsi, 1552(%rbx)
	jmp	.LBB2_109
.LBB2_93:                               # %land.lhs.true.17.i
	movq	1264(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_106
# BB#94:                                # %if.then.20.i
	movl	$4, %edx
	cmpl	$-1, 104(%rbx)
	jne	.LBB2_96
# BB#95:                                # %if.then.i.31.i
	movl	$0, 104(%rbx)
	jmp	.LBB2_96
.LBB2_85:                               # %if.then.i
	cmpl	$1, %edx
	jne	.LBB2_106
# BB#86:                                # %land.lhs.true.i
	cmpq	$0, 1184(%rbx)
	je	.LBB2_100
# BB#87:                                # %if.then.4.i
	movl	$gx_backwards_compatible_gray_encode, %esi
	movl	$1, %edx
	cmpl	$-1, 104(%rbx)
	jne	.LBB2_96
# BB#88:                                # %if.then.i.i
	movl	$1, 104(%rbx)
	movl	$gx_backwards_compatible_gray_encode, %esi
	jmp	.LBB2_96
.LBB2_100:                              # %land.lhs.true.29.i
	movzwl	108(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB2_106
# BB#101:                               # %if.then.33.i
	cmpl	$-1, 104(%rbx)
	jne	.LBB2_103
# BB#102:                               # %if.then.i.27.i
	movl	$1, 104(%rbx)
.LBB2_103:                              # %set_cinfo_polarity.exit28.i
	movl	$1, %edx
	movl	$1, %edi
	shll	%cl, %edi
	decl	%edi
	movl	$gx_default_gray_fast_encode, %esi
	cmpl	%edi, 112(%rbx)
	je	.LBB2_105
# BB#104:                               # %select.mid
	movl	$gx_default_gray_encode, %esi
.LBB2_105:                              # %select.end
	movl	$1, 136(%rbx)
.LBB2_96:                               # %get_encode_color.exit.thread
	movq	%rsi, 1552(%rbx)
	jmp	.LBB2_97
.LBB2_106:                              # %if.else.44.i
	movl	$gx_default_encode_color, %esi
	cmpl	$1, 136(%rbx)
	je	.LBB2_108
# BB#107:                               # %select.mid325
	xorl	%esi, %esi
.LBB2_108:                              # %get_encode_color.exit
	movq	%rsi, 1552(%rbx)
	cmpl	$3, %edx
	jne	.LBB2_97
.LBB2_109:                              # %if.end.257.thread
	movq	%rsi, 1184(%rbx)
	movb	$1, %cl
	movl	$3, %edx
	jmp	.LBB2_110
.LBB2_97:                               # %if.end.257
	cmpl	$4, %edx
	jne	.LBB2_99
# BB#98:                                # %if.then.261
	movq	%rsi, 1264(%rbx)
	movl	$4, %edx
.LBB2_99:                               # %if.end.265
	xorl	%ecx, %ecx
.LBB2_110:                              # %if.end.265
	cmpl	$1, 136(%rbx)
	jne	.LBB2_117
# BB#111:                               # %if.then.268
	testq	%rsi, %rsi
	jne	.LBB2_113
# BB#112:                               # %if.then.272
	movq	$gx_default_encode_color, 1552(%rbx)
.LBB2_113:                              # %if.end.275
	cmpq	$0, 1264(%rbx)
	jne	.LBB2_115
# BB#114:                               # %if.then.279
	movq	$gx_default_encode_color, 1264(%rbx)
.LBB2_115:                              # %if.end.282
	cmpq	$0, 1184(%rbx)
	jne	.LBB2_123
# BB#116:                               # %if.then.286
	movq	$gx_default_encode_color, 1184(%rbx)
	jmp	.LBB2_123
.LBB2_117:                              # %if.else
	testq	%rsi, %rsi
	jne	.LBB2_119
# BB#118:                               # %if.then.293
	movq	$gx_error_encode_color, 1552(%rbx)
.LBB2_119:                              # %if.end.296
	cmpq	$0, 1264(%rbx)
	jne	.LBB2_121
# BB#120:                               # %if.then.300
	movq	$gx_error_encode_color, 1264(%rbx)
.LBB2_121:                              # %if.end.303
	cmpq	$0, 1184(%rbx)
	jne	.LBB2_123
# BB#122:                               # %if.then.307
	movq	$gx_error_encode_color, 1184(%rbx)
.LBB2_123:                              # %if.end.311
	cmpl	$4, %edx
	je	.LBB2_136
# BB#124:                               # %if.end.311
	cmpl	$3, %edx
	jne	.LBB2_125
# BB#132:                               # %sw.bb.343
	movq	1536(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.LBB2_143
# BB#133:                               # %if.then.347
	cmpl	$1, 104(%rbx)
	jne	.LBB2_141
# BB#134:                               # %if.then.355
	movq	$gx_default_DevRGB_get_color_mapping_procs, 1536(%rbx)
	movl	$gx_default_DevRGB_get_color_mapping_procs, %edx
	cmpq	$0, 1544(%rbx)
	jne	.LBB2_143
# BB#135:                               # %if.then.362
	movq	$gx_default_DevRGB_get_color_comp_index, 1544(%rbx)
	movl	$gx_default_DevRGB_get_color_mapping_procs, %edx
	jmp	.LBB2_143
.LBB2_136:                              # %sw.bb.383
	movq	1536(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.LBB2_138
# BB#137:                               # %if.then.387
	movq	$gx_default_DevCMYK_get_color_mapping_procs, 1536(%rbx)
	movl	$gx_default_DevCMYK_get_color_mapping_procs, %edx
.LBB2_138:                              # %if.end.390
	cmpq	$0, 1544(%rbx)
	jne	.LBB2_143
# BB#139:                               # %if.then.394
	movq	$gx_default_DevCMYK_get_color_comp_index, 1544(%rbx)
	jmp	.LBB2_143
.LBB2_125:                              # %if.end.311
	cmpl	$1, %edx
	jne	.LBB2_140
# BB#126:                               # %sw.bb
	movq	1536(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.LBB2_130
# BB#127:                               # %if.then.316
	cmpl	$1, 104(%rbx)
	jne	.LBB2_129
# BB#128:                               # %if.then.323
	movq	$gx_default_DevGray_get_color_mapping_procs, 1536(%rbx)
	movl	$gx_default_DevGray_get_color_mapping_procs, %edx
	jmp	.LBB2_130
.LBB2_140:                              # %sw.default
	movq	1536(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.LBB2_143
.LBB2_141:                              # %if.then.405
	movq	$gx_error_get_color_mapping_procs, 1536(%rbx)
	movl	$gx_error_get_color_mapping_procs, %edx
	cmpq	$0, 1544(%rbx)
	jne	.LBB2_143
# BB#142:                               # %if.then.412
	movq	$gx_error_get_color_comp_index, 1544(%rbx)
	movl	$gx_error_get_color_mapping_procs, %edx
	jmp	.LBB2_143
.LBB2_129:                              # %if.then.331
	movq	$gx_error_get_color_mapping_procs, 1536(%rbx)
	movl	$gx_error_get_color_mapping_procs, %edx
.LBB2_130:                              # %if.end.336
	cmpq	$0, 1544(%rbx)
	jne	.LBB2_143
# BB#131:                               # %if.then.339
	movq	$gx_default_DevGray_get_color_comp_index, 1544(%rbx)
.LBB2_143:                              # %sw.epilog
	movq	1560(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_170
# BB#144:                               # %if.end.i
	testq	%rax, %rax
	je	.LBB2_168
# BB#145:                               # %if.then.5.i
	testb	%cl, %cl
	je	.LBB2_153
# BB#146:                               # %lor.lhs.false.i.i
	cmpl	$1, 104(%rbx)
	jne	.LBB2_153
# BB#147:                               # %if.end.i.i
	movq	%rbx, %rdi
	callq	*%rdx
	testq	%rax, %rax
	je	.LBB2_153
# BB#148:                               # %lor.lhs.false.4.i.i
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_153
# BB#149:                               # %is_like_DeviceRGB.exit.i
	leaq	2(%rsp), %r9
	movl	$0, %esi
	movl	$8190, %edx             # imm = 0x1FFE
	movl	$10920, %ecx            # imm = 0x2AA8
	movl	$24570, %r8d            # imm = 0x5FFA
	movq	%rbx, %rdi
	callq	*%rax
	movzwl	2(%rsp), %ecx
	leal	-8190(%rcx), %eax
	movw	%ax, 2(%rsp)
	movzwl	4(%rsp), %eax
	leal	-10920(%rax), %edx
	movw	%dx, 4(%rsp)
	addl	$-7864, %ecx            # imm = 0xFFFFFFFFFFFFE148
	movzwl	%cx, %ecx
	cmpl	$652, %ecx              # imm = 0x28C
	ja	.LBB2_153
# BB#150:                               # %is_like_DeviceRGB.exit.i
	addl	$-10594, %eax           # imm = 0xFFFFFFFFFFFFD69E
	movzwl	%ax, %eax
	cmpl	$652, %eax              # imm = 0x28C
	ja	.LBB2_153
# BB#151:                               # %is_like_DeviceRGB.exit.i
	movzwl	6(%rsp), %eax
	addl	$-24244, %eax           # imm = 0xFFFFFFFFFFFFA14C
	movzwl	%ax, %eax
	cmpl	$652, %eax              # imm = 0x28C
	ja	.LBB2_153
# BB#152:                               # %if.then.6.i
	movq	1192(%rbx), %rsi
	jmp	.LBB2_170
.LBB2_153:                              # %if.end.9.i
	movl	$gx_default_decode_color, %esi
	cmpl	$1, 136(%rbx)
	je	.LBB2_170
# BB#154:                               # %if.end.12.i
	movl	100(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB2_158
# BB#155:                               # %land.lhs.true.i.172
	cmpb	$0, 110(%rbx)
	jne	.LBB2_168
# BB#156:                               # %if.then.18.i
	movl	$gx_default_1_add_decode_color, %esi
	cmpl	$1, 104(%rbx)
	je	.LBB2_170
# BB#157:                               # %select.mid397
	movl	$gx_default_1_sub_decode_color, %esi
	jmp	.LBB2_170
.LBB2_158:                              # %if.end.22.i
	cmpl	$4, %eax
	jne	.LBB2_168
# BB#159:                               # %lor.lhs.false.i.15.i
	cmpl	$0, 104(%rbx)
	jne	.LBB2_168
# BB#160:                               # %if.end.i.19.i
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	testq	%rax, %rax
	je	.LBB2_168
# BB#161:                               # %lor.lhs.false.4.i.21.i
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_168
# BB#162:                               # %is_like_DeviceCMYK.exit.i
	leaq	8(%rsp), %r9
	movl	$8190, %esi             # imm = 0x1FFE
	movl	$10920, %edx            # imm = 0x2AA8
	movl	$24570, %ecx            # imm = 0x5FFA
	movl	$4095, %r8d             # imm = 0xFFF
	movq	%rbx, %rdi
	callq	*%rax
	movzwl	8(%rsp), %edx
	leal	-8190(%rdx), %eax
	movw	%ax, 8(%rsp)
	movzwl	10(%rsp), %ecx
	leal	-10920(%rcx), %eax
	movw	%ax, 10(%rsp)
	movzwl	12(%rsp), %eax
	leal	-24570(%rax), %esi
	movw	%si, 12(%rsp)
	addl	$-7864, %edx            # imm = 0xFFFFFFFFFFFFE148
	movzwl	%dx, %edx
	cmpl	$652, %edx              # imm = 0x28C
	ja	.LBB2_168
# BB#163:                               # %is_like_DeviceCMYK.exit.i
	addl	$-10594, %ecx           # imm = 0xFFFFFFFFFFFFD69E
	movzwl	%cx, %ecx
	cmpl	$652, %ecx              # imm = 0x28C
	ja	.LBB2_168
# BB#164:                               # %is_like_DeviceCMYK.exit.i
	addl	$-24244, %eax           # imm = 0xFFFFFFFFFFFFA14C
	movzwl	%ax, %eax
	cmpl	$652, %eax              # imm = 0x28C
	ja	.LBB2_168
# BB#165:                               # %is_like_DeviceCMYK.exit.i
	movzwl	14(%rsp), %eax
	addl	$-3769, %eax            # imm = 0xFFFFFFFFFFFFF147
	movzwl	%ax, %eax
	cmpl	$652, %eax              # imm = 0x28C
	ja	.LBB2_168
# BB#166:                               # %if.then.25.i
	movl	$gx_1bit_cmyk_decode_color, %esi
	movl	$cmyk_1bit_map_color_rgb, %eax
	cmpq	%rax, 1192(%rbx)
	je	.LBB2_170
# BB#167:                               # %select.mid403
	movl	$gx_default_cmyk_decode_color, %esi
	jmp	.LBB2_170
.LBB2_168:                              # %if.end.32.i
	movl	$gx_default_decode_color, %esi
	cmpl	$1, 136(%rbx)
	je	.LBB2_170
# BB#169:                               # %select.mid408
	movl	$gx_error_decode_color, %esi
.LBB2_170:                              # %get_decode_color.exit
	movq	%rsi, 1560(%rbx)
	cmpq	$0, 1192(%rbx)
	jne	.LBB2_172
# BB#171:                               # %if.then.422
	movq	$gx_default_w_b_map_color_rgb, 1192(%rbx)
.LBB2_172:                              # %if.end.425
	cmpq	$0, 1680(%rbx)
	jne	.LBB2_174
# BB#173:                               # %if.then.428
	movq	$gx_default_get_profile, 1680(%rbx)
.LBB2_174:                              # %if.end.431
	cmpq	$0, 1688(%rbx)
	jne	.LBB2_176
# BB#175:                               # %if.then.434
	movq	$gx_default_set_graphics_type_tag, 1688(%rbx)
.LBB2_176:                              # %if.end.437
	cmpl	$-1, 792(%rbx)
	jne	.LBB2_181
# BB#177:                               # %land.lhs.true
	cmpl	$4, 100(%rbx)
	jl	.LBB2_180
# BB#178:                               # %lor.lhs.false
	cmpl	$1, 104(%rbx)
	je	.LBB2_180
# BB#179:                               # %lor.lhs.false.446
	movzbl	110(%rbx), %eax
	cmpl	$255, %eax
	jne	.LBB2_181
.LBB2_180:                              # %if.then.450
	movl	$0, 792(%rbx)
.LBB2_181:                              # %if.end.453
	cmpq	$0, 1576(%rbx)
	jne	.LBB2_183
# BB#182:                               # %if.then.457
	movq	$gx_default_fill_rectangle_hl_color, 1576(%rbx)
.LBB2_183:                              # %if.end.460
	cmpq	$0, 1584(%rbx)
	jne	.LBB2_185
# BB#184:                               # %if.then.464
	movq	$gx_default_include_color_space, 1584(%rbx)
.LBB2_185:                              # %if.end.467
	cmpq	$0, 1592(%rbx)
	jne	.LBB2_187
# BB#186:                               # %if.then.471
	movq	$gx_default_fill_linear_color_scanline, 1592(%rbx)
.LBB2_187:                              # %if.end.474
	cmpq	$0, 1600(%rbx)
	jne	.LBB2_189
# BB#188:                               # %if.then.478
	movq	$gx_default_fill_linear_color_trapezoid, 1600(%rbx)
.LBB2_189:                              # %if.end.481
	cmpq	$0, 1608(%rbx)
	jne	.LBB2_191
# BB#190:                               # %if.then.485
	movq	$gx_default_fill_linear_color_triangle, 1608(%rbx)
.LBB2_191:                              # %if.end.488
	cmpq	$0, 1616(%rbx)
	jne	.LBB2_193
# BB#192:                               # %if.then.492
	movq	$gx_default_update_spot_equivalent_colors, 1616(%rbx)
.LBB2_193:                              # %if.end.495
	cmpq	$0, 1624(%rbx)
	jne	.LBB2_195
# BB#194:                               # %if.then.499
	movq	$gx_default_ret_devn_params, 1624(%rbx)
.LBB2_195:                              # %if.end.502
	cmpq	$0, 1632(%rbx)
	jne	.LBB2_197
# BB#196:                               # %if.then.506
	movq	$gx_default_fillpage, 1632(%rbx)
.LBB2_197:                              # %if.end.509
	cmpq	$0, 1712(%rbx)
	jne	.LBB2_199
# BB#198:                               # %if.then.513
	movq	$gx_default_copy_alpha_hl_color, 1712(%rbx)
.LBB2_199:                              # %if.end.516
	cmpq	$0, 1664(%rbx)
	jne	.LBB2_201
# BB#200:                               # %if.then.520
	movq	$gx_default_dev_spec_op, 1664(%rbx)
.LBB2_201:                              # %if.end.523
	cmpq	$0, 1720(%rbx)
	jne	.LBB2_203
# BB#202:                               # %if.then.527
	movq	$gx_default_process_page, 1720(%rbx)
.LBB2_203:                              # %if.end.530
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end2:
	.size	gx_device_fill_in_procs, .Lfunc_end2-gx_device_fill_in_procs
	.cfi_endproc

	.globl	gx_default_open_device
	.align	16, 0x90
	.type	gx_default_open_device,@function
gx_default_open_device:                 # @gx_default_open_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp29:
	.cfi_def_cfa_offset 16
	callq	check_device_separable
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	gx_default_open_device, .Lfunc_end3-gx_default_open_device
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4634766966517661696     # double 72
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	gx_default_get_initial_matrix
	.align	16, 0x90
	.type	gx_default_get_initial_matrix,@function
gx_default_get_initial_matrix:          # @gx_default_get_initial_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	movss	884(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI4_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movss	888(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	movl	852(%rdi), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.LBB4_5
# BB#1:                                 # %entry
	cmpl	$2, %eax
	jne	.LBB4_2
# BB#4:                                 # %sw.bb.10
	cvtsd2ss	%xmm0, %xmm0
	xorps	.LCPI4_1(%rip), %xmm0
	movss	%xmm0, (%rsi)
	movl	$0, 4(%rsi)
	movl	$0, 8(%rsi)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 12(%rsi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	832(%rdi), %xmm0
	movss	%xmm0, 16(%rsi)
	movl	$0, 20(%rsi)
	retq
.LBB4_5:                                # %sw.bb.22
	movl	$0, (%rsi)
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rsi)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rsi)
	movl	$0, 12(%rsi)
	movq	$0, 16(%rsi)
	retq
.LBB4_2:                                # %entry
	cmpl	$1, %eax
	jne	.LBB4_6
# BB#3:                                 # %sw.bb
	movl	$0, (%rsi)
	cvtsd2ss	%xmm1, %xmm1
	movaps	.LCPI4_1(%rip), %xmm2   # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm1
	movss	%xmm1, 4(%rsi)
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm2, %xmm0
	movss	%xmm0, 8(%rsi)
	movl	$0, 12(%rsi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	832(%rdi), %xmm0
	movss	%xmm0, 16(%rsi)
	jmp	.LBB4_7
.LBB4_6:                                # %sw.bb.31
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsi)
	movl	$0, 4(%rsi)
	movl	$0, 8(%rsi)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	xorps	.LCPI4_1(%rip), %xmm0
	movss	%xmm0, 12(%rsi)
	movl	$0, 16(%rsi)
.LBB4_7:                                # %sw.epilog
	xorps	%xmm0, %xmm0
	cvtsi2ssl	836(%rdi), %xmm0
	movss	%xmm0, 20(%rsi)
	retq
.Lfunc_end4:
	.size	gx_default_get_initial_matrix, .Lfunc_end4-gx_default_get_initial_matrix
	.cfi_endproc

	.globl	gx_default_sync_output
	.align	16, 0x90
	.type	gx_default_sync_output,@function
gx_default_sync_output:                 # @gx_default_sync_output
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	gx_default_sync_output, .Lfunc_end5-gx_default_sync_output
	.cfi_endproc

	.globl	gx_default_output_page
	.align	16, 0x90
	.type	gx_default_output_page,@function
gx_default_output_page:                 # @gx_default_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -32
.Ltmp34:
	.cfi_offset %r14, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	*1160(%rbx)
	testl	%eax, %eax
	js	.LBB6_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gx_finish_output_page   # TAILCALL
.LBB6_1:                                # %if.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_default_output_page, .Lfunc_end6-gx_default_output_page
	.cfi_endproc

	.globl	gx_default_close_device
	.align	16, 0x90
	.type	gx_default_close_device,@function
gx_default_close_device:                # @gx_default_close_device
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	gx_default_close_device, .Lfunc_end7-gx_default_close_device
	.cfi_endproc

	.globl	gx_default_get_xfont_procs
	.align	16, 0x90
	.type	gx_default_get_xfont_procs,@function
gx_default_get_xfont_procs:             # @gx_default_get_xfont_procs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	gx_default_get_xfont_procs, .Lfunc_end8-gx_default_get_xfont_procs
	.cfi_endproc

	.globl	gx_default_get_xfont_device
	.align	16, 0x90
	.type	gx_default_get_xfont_device,@function
gx_default_get_xfont_device:            # @gx_default_get_xfont_device
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end9:
	.size	gx_default_get_xfont_device, .Lfunc_end9-gx_default_get_xfont_device
	.cfi_endproc

	.globl	gx_default_get_page_device
	.align	16, 0x90
	.type	gx_default_get_page_device,@function
gx_default_get_page_device:             # @gx_default_get_page_device
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	gx_default_get_page_device, .Lfunc_end10-gx_default_get_page_device
	.cfi_endproc

	.globl	gx_default_get_alpha_bits
	.align	16, 0x90
	.type	gx_default_get_alpha_bits,@function
gx_default_get_alpha_bits:              # @gx_default_get_alpha_bits
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	subq	$-128, %rax
	addq	$132, %rdi
	testl	%esi, %esi
	cmoveq	%rax, %rdi
	movl	(%rdi), %eax
	retq
.Lfunc_end11:
	.size	gx_default_get_alpha_bits, .Lfunc_end11-gx_default_get_alpha_bits
	.cfi_endproc

	.globl	gx_default_get_band
	.align	16, 0x90
	.type	gx_default_get_band,@function
gx_default_get_band:                    # @gx_default_get_band
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	gx_default_get_band, .Lfunc_end12-gx_default_get_band
	.cfi_endproc

	.globl	gx_default_get_clipping_box
	.align	16, 0x90
	.type	gx_default_get_clipping_box,@function
gx_default_get_clipping_box:            # @gx_default_get_clipping_box
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rsi)
	movl	832(%rdi), %eax
	shll	$8, %eax
	movl	%eax, 8(%rsi)
	movl	836(%rdi), %eax
	shll	$8, %eax
	movl	%eax, 12(%rsi)
	retq
.Lfunc_end13:
	.size	gx_default_get_clipping_box, .Lfunc_end13-gx_default_get_clipping_box
	.cfi_endproc

	.globl	gx_default_create_compositor
	.align	16, 0x90
	.type	gx_default_create_compositor,@function
gx_default_create_compositor:           # @gx_default_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	(%rdx), %rdi
	movq	8(%rdi), %r9
	movq	%rdx, %rdi
	movq	%rax, %rdx
	jmpq	*%r9                    # TAILCALL
.Lfunc_end14:
	.size	gx_default_create_compositor, .Lfunc_end14-gx_default_create_compositor
	.cfi_endproc

	.globl	gx_default_finish_copydevice
	.align	16, 0x90
	.type	gx_default_finish_copydevice,@function
gx_default_finish_copydevice:           # @gx_default_finish_copydevice
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpq	$0, 24(%rsi)
	jne	.LBB15_2
# BB#1:                                 # %select.mid
	xorl	%eax, %eax
.LBB15_2:                               # %select.end
	retq
.Lfunc_end15:
	.size	gx_default_finish_copydevice, .Lfunc_end15-gx_default_finish_copydevice
	.cfi_endproc

	.globl	gx_default_set_graphics_type_tag
	.align	16, 0x90
	.type	gx_default_set_graphics_type_tag,@function
gx_default_set_graphics_type_tag:       # @gx_default_set_graphics_type_tag
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$128, %eax
	andl	1112(%rdi), %eax
	orl	%esi, %eax
	movl	%eax, 1112(%rdi)
	retq
.Lfunc_end16:
	.size	gx_default_set_graphics_type_tag, .Lfunc_end16-gx_default_set_graphics_type_tag
	.cfi_endproc

	.globl	gx_default_fill_rectangle_hl_color
	.align	16, 0x90
	.type	gx_default_fill_rectangle_hl_color,@function
gx_default_fill_rectangle_hl_color:     # @gx_default_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	retq
.Lfunc_end17:
	.size	gx_default_fill_rectangle_hl_color, .Lfunc_end17-gx_default_fill_rectangle_hl_color
	.cfi_endproc

	.globl	gx_default_include_color_space
	.align	16, 0x90
	.type	gx_default_include_color_space,@function
gx_default_include_color_space:         # @gx_default_include_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	gx_default_include_color_space, .Lfunc_end18-gx_default_include_color_space
	.cfi_endproc

	.globl	gx_default_update_spot_equivalent_colors
	.align	16, 0x90
	.type	gx_default_update_spot_equivalent_colors,@function
gx_default_update_spot_equivalent_colors: # @gx_default_update_spot_equivalent_colors
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	gx_default_update_spot_equivalent_colors, .Lfunc_end19-gx_default_update_spot_equivalent_colors
	.cfi_endproc

	.globl	gx_default_ret_devn_params
	.align	16, 0x90
	.type	gx_default_ret_devn_params,@function
gx_default_ret_devn_params:             # @gx_default_ret_devn_params
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	gx_default_ret_devn_params, .Lfunc_end20-gx_default_ret_devn_params
	.cfi_endproc

	.globl	gx_default_dev_spec_op
	.align	16, 0x90
	.type	gx_default_dev_spec_op,@function
gx_default_dev_spec_op:                 # @gx_default_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %ecx
	cmpl	$18, %esi
	ja	.LBB21_15
# BB#1:                                 # %entry
	xorl	%eax, %eax
	jmpq	*.LJTI21_0(,%rcx,8)
.LBB21_2:                               # %sw.bb.1
	movl	$gx_default_fill_path, %eax
	cmpq	%rax, 1336(%rdi)
	jmp	.LBB21_3
.LBB21_15:                              # %sw.epilog
	movl	$-21, %eax
.LBB21_16:                              # %return
	retq
.LBB21_4:                               # %sw.bb.2
	movl	$cmyk_1bit_map_cmyk_color, %eax
	cmpq	%rax, 1264(%rdi)
.LBB21_3:                               # %return
	sete	%al
	movzbl	%al, %eax
	retq
.LBB21_10:                              # %sw.bb.20
	movl	100(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB21_12
# BB#11:                                # %land.lhs.true.25
	movl	$4, %eax
	cmpl	$15, 112(%rdi)
	jae	.LBB21_14
	jmp	.LBB21_16
.LBB21_5:                               # %sw.bb.6
	movl	100(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB21_7
# BB#6:                                 # %land.lhs.true
	movl	$1, %eax
	cmpl	$15, 112(%rdi)
	jae	.LBB21_9
	jmp	.LBB21_16
.LBB21_12:                              # %lor.lhs.false.30
	cmpl	$2, %eax
	jl	.LBB21_14
# BB#13:                                # %land.lhs.true.35
	movl	$4, %eax
	cmpl	$15, 116(%rdi)
	jb	.LBB21_16
.LBB21_14:                              # %if.end.41
	xorl	%eax, %eax
	retq
.LBB21_7:                               # %lor.lhs.false
	cmpl	$2, %eax
	jl	.LBB21_9
# BB#8:                                 # %land.lhs.true.16
	movl	$1, %eax
	cmpl	$15, 116(%rdi)
	jb	.LBB21_16
.LBB21_9:                               # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end21:
	.size	gx_default_dev_spec_op, .Lfunc_end21-gx_default_dev_spec_op
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_2
	.quad	.LBB21_16
	.quad	.LBB21_4
	.quad	.LBB21_16
	.quad	.LBB21_15
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_10
	.quad	.LBB21_5
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16

	.text
	.globl	gx_default_process_page
	.align	16, 0x90
	.type	gx_default_process_page,@function
gx_default_process_page:                # @gx_default_process_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 64
.Ltmp40:
	.cfi_offset %rbx, -32
.Ltmp41:
	.cfi_offset %r14, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, 8(%rsp)
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB22_1
# BB#2:                                 # %if.then
	movq	32(%r14), %rdi
	movq	24(%rbx), %rdx
	movl	832(%rbx), %ecx
	movl	836(%rbx), %r8d
	leaq	8(%rsp), %r9
	movq	%rbx, %rsi
	callq	*%rax
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_10
# BB#3:
	leaq	832(%rbx), %rcx
	leaq	836(%rbx), %rax
	jmp	.LBB22_4
.LBB22_1:                               # %entry.if.end.3_crit_edge
	leaq	832(%rbx), %rcx
	leaq	836(%rbx), %rax
	xorl	%ebp, %ebp
.LBB22_4:                               # %if.end.3
	movq	$0, 16(%rsp)
	movl	(%rcx), %ecx
	movl	%ecx, 24(%rsp)
	movl	(%rax), %eax
	movl	%eax, 28(%rsp)
	movq	16(%r14), %rax
	testq	%rax, %rax
	je	.LBB22_6
# BB#5:                                 # %if.end.15
	movq	32(%r14), %rdi
	movq	8(%rsp), %r8
	leaq	16(%rsp), %rcx
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_8
.LBB22_6:                               # %land.lhs.true
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB22_8
# BB#7:                                 # %if.then.18
	movq	32(%r14), %rdi
	movq	8(%rsp), %rdx
	movq	%rbx, %rsi
	callq	*%rax
	movl	%eax, %ebp
.LBB22_8:                               # %if.end.22
	movq	8(%r14), %rax
	testq	%rax, %rax
	je	.LBB22_10
# BB#9:                                 # %if.then.24
	movq	32(%r14), %rdi
	movq	24(%rbx), %rdx
	movq	8(%rsp), %rcx
	movq	%rbx, %rsi
	callq	*%rax
.LBB22_10:                              # %cleanup
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gx_default_process_page, .Lfunc_end22-gx_default_process_page
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI23_0:
	.long	1116733440              # float 72
	.text
	.globl	gx_upright_get_initial_matrix
	.align	16, 0x90
	.type	gx_upright_get_initial_matrix,@function
gx_upright_get_initial_matrix:          # @gx_upright_get_initial_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	movss	884(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI23_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rsi)
	movq	$0, 4(%rsi)
	movss	888(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, 12(%rsi)
	movq	$0, 16(%rsi)
	retq
.Lfunc_end23:
	.size	gx_upright_get_initial_matrix, .Lfunc_end23-gx_upright_get_initial_matrix
	.cfi_endproc

	.globl	gx_page_device_get_page_device
	.align	16, 0x90
	.type	gx_page_device_get_page_device,@function
gx_page_device_get_page_device:         # @gx_page_device_get_page_device
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end24:
	.size	gx_page_device_get_page_device, .Lfunc_end24-gx_page_device_get_page_device
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI25_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.text
	.globl	gx_get_largest_clipping_box
	.align	16, 0x90
	.type	gx_get_largest_clipping_box,@function
gx_get_largest_clipping_box:            # @gx_get_largest_clipping_box
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI25_0(%rip), %xmm0  # xmm0 = [2147483648,2147483648,2147483647,2147483647]
	movups	%xmm0, (%rsi)
	retq
.Lfunc_end25:
	.size	gx_get_largest_clipping_box, .Lfunc_end25-gx_get_largest_clipping_box
	.cfi_endproc

	.globl	gx_no_create_compositor
	.align	16, 0x90
	.type	gx_no_create_compositor,@function
gx_no_create_compositor:                # @gx_no_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end26:
	.size	gx_no_create_compositor, .Lfunc_end26-gx_no_create_compositor
	.cfi_endproc

	.globl	gx_null_create_compositor
	.align	16, 0x90
	.type	gx_null_create_compositor,@function
gx_null_create_compositor:              # @gx_null_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, (%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end27:
	.size	gx_null_create_compositor, .Lfunc_end27-gx_null_create_compositor
	.cfi_endproc

	.globl	gx_default_composite_clist_write_update
	.align	16, 0x90
	.type	gx_default_composite_clist_write_update,@function
gx_default_composite_clist_write_update: # @gx_default_composite_clist_write_update
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end28:
	.size	gx_default_composite_clist_write_update, .Lfunc_end28-gx_default_composite_clist_write_update
	.cfi_endproc

	.globl	gx_default_composite_adjust_ctm
	.align	16, 0x90
	.type	gx_default_composite_adjust_ctm,@function
gx_default_composite_adjust_ctm:        # @gx_default_composite_adjust_ctm
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end29:
	.size	gx_default_composite_adjust_ctm, .Lfunc_end29-gx_default_composite_adjust_ctm
	.cfi_endproc

	.globl	gx_default_composite_is_closing
	.align	16, 0x90
	.type	gx_default_composite_is_closing,@function
gx_default_composite_is_closing:        # @gx_default_composite_is_closing
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end30:
	.size	gx_default_composite_is_closing, .Lfunc_end30-gx_default_composite_is_closing
	.cfi_endproc

	.globl	gx_default_composite_is_friendly
	.align	16, 0x90
	.type	gx_default_composite_is_friendly,@function
gx_default_composite_is_friendly:       # @gx_default_composite_is_friendly
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end31:
	.size	gx_default_composite_is_friendly, .Lfunc_end31-gx_default_composite_is_friendly
	.cfi_endproc

	.globl	gx_default_composite_clist_read_update
	.align	16, 0x90
	.type	gx_default_composite_clist_read_update,@function
gx_default_composite_clist_read_update: # @gx_default_composite_clist_read_update
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end32:
	.size	gx_default_composite_clist_read_update, .Lfunc_end32-gx_default_composite_clist_read_update
	.cfi_endproc

	.globl	gx_default_composite_get_cropping
	.align	16, 0x90
	.type	gx_default_composite_get_cropping,@function
gx_default_composite_get_cropping:      # @gx_default_composite_get_cropping
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end33:
	.size	gx_default_composite_get_cropping, .Lfunc_end33-gx_default_composite_get_cropping
	.cfi_endproc

	.globl	gx_default_install
	.align	16, 0x90
	.type	gx_default_install,@function
gx_default_install:                     # @gx_default_install
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end34:
	.size	gx_default_install, .Lfunc_end34-gx_default_install
	.cfi_endproc

	.globl	gx_default_begin_page
	.align	16, 0x90
	.type	gx_default_begin_page,@function
gx_default_begin_page:                  # @gx_default_begin_page
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end35:
	.size	gx_default_begin_page, .Lfunc_end35-gx_default_begin_page
	.cfi_endproc

	.globl	gx_default_end_page
	.align	16, 0x90
	.type	gx_default_end_page,@function
gx_default_end_page:                    # @gx_default_end_page
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$2, %esi
	setne	%al
	movzbl	%al, %eax
	retq
.Lfunc_end36:
	.size	gx_default_end_page, .Lfunc_end36-gx_default_end_page
	.cfi_endproc

	.align	16, 0x90
	.type	gx_default_1_add_decode_color,@function
gx_default_1_add_decode_color:          # @gx_default_1_add_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 32
.Ltmp45:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	leaq	10(%rsp), %rdx
	callq	*1192(%rdi)
	movw	10(%rsp), %cx
	movw	%cx, (%rbx)
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end37:
	.size	gx_default_1_add_decode_color, .Lfunc_end37-gx_default_1_add_decode_color
	.cfi_endproc

	.align	16, 0x90
	.type	gx_default_1_sub_decode_color,@function
gx_default_1_sub_decode_color:          # @gx_default_1_sub_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 32
.Ltmp48:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	leaq	10(%rsp), %rdx
	callq	*1192(%rdi)
	movw	10(%rsp), %cx
	notw	%cx
	movw	%cx, (%rbx)
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end38:
	.size	gx_default_1_sub_decode_color, .Lfunc_end38-gx_default_1_sub_decode_color
	.cfi_endproc

	.align	16, 0x90
	.type	gx_1bit_cmyk_decode_color,@function
gx_1bit_cmyk_decode_color:              # @gx_1bit_cmyk_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	shlq	$60, %rax
	sarq	$63, %rax
	movw	%ax, (%rdx)
	movq	%rsi, %rax
	shlq	$61, %rax
	sarq	$63, %rax
	movw	%ax, 2(%rdx)
	movq	%rsi, %rax
	shlq	$62, %rax
	sarq	$63, %rax
	movw	%ax, 4(%rdx)
	shlq	$63, %rsi
	sarq	$63, %rsi
	movw	%si, 6(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end39:
	.size	gx_1bit_cmyk_decode_color, .Lfunc_end39-gx_1bit_cmyk_decode_color
	.cfi_endproc

	.align	16, 0x90
	.type	gx_default_cmyk_decode_color,@function
gx_default_cmyk_decode_color:           # @gx_default_cmyk_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	cmpl	$1, 136(%rdi)
	jne	.LBB40_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdx
	popq	%rbx
	jmp	gx_default_decode_color # TAILCALL
.LBB40_1:                               # %if.else
	movq	%rbx, %rdx
	callq	*1192(%rdi)
	movzwl	(%rbx), %ecx
	notl	%ecx
	movzwl	2(%rbx), %edx
	notl	%edx
	movzwl	%dx, %esi
	movzwl	%cx, %edi
	cmpl	%esi, %edi
	cmovaw	%si, %di
	movzwl	4(%rbx), %esi
	notl	%esi
	movzwl	%di, %r8d
	movzwl	%si, %edi
	cmpl	%edi, %r8d
	cmovbew	%r8w, %di
	subl	%edi, %ecx
	movw	%cx, (%rbx)
	subl	%edi, %edx
	movw	%dx, 2(%rbx)
	subl	%edi, %esi
	movw	%si, 4(%rbx)
	movw	%di, 6(%rbx)
	popq	%rbx
	retq
.Lfunc_end40:
	.size	gx_default_cmyk_decode_color, .Lfunc_end40-gx_default_cmyk_decode_color
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
