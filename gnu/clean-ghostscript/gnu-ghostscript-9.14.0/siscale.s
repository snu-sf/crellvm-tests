	.text
	.file	"siscale.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	s_IScale_init,@function
s_IScale_init:                          # @s_IScale_init
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 96
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	180(%rbx), %eax
	movl	$Interp_defn, %r15d
	cmpl	172(%rbx), %eax
	jl	.LBB0_2
# BB#1:                                 # %select.mid
	movl	$Mitchell_defn, %r15d
.LBB0_2:                                # %select.end
	movl	184(%rbx), %eax
	movl	176(%rbx), %ecx
	cmpl	%ecx, %eax
	movl	$Interp_defn, %edx
	movl	$Mitchell_defn, %ebp
	cmovlq	%rdx, %rbp
	movq	8(%rbx), %r14
	movl	132(%rbx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$29, %esi
	addl	%edx, %esi
	sarl	$3, %esi
	movl	%esi, 208(%rbx)
	movl	140(%rbx), %edx
	movl	%edx, %edi
	sarl	$31, %edi
	shrl	$29, %edi
	addl	%edx, %edi
	sarl	$3, %edi
	movl	%edi, 212(%rbx)
	movl	$0, 256(%rbx)
	imull	148(%rbx), %esi
	movl	112(%rbx), %edx
	imull	%edx, %esi
	movl	%esi, 264(%rbx)
	movl	$0, 260(%rbx)
	movl	$0, 268(%rbx)
	movl	168(%rbx), %esi
	movl	%esi, 272(%rbx)
	imull	%edx, %edi
	imull	156(%rbx), %edi
	movl	%edi, 280(%rbx)
	movl	$0, 276(%rbx)
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	callq	*16(%rbp)
	movl	%eax, 304(%rbx)
	movl	8(%rbp), %ecx
	movl	%ecx, 300(%rbx)
	movq	(%rbp), %rcx
	movq	%rcx, 312(%rbx)
	movq	24(%rbp), %rcx
	movq	%rcx, 320(%rbx)
	movl	112(%rbx), %edx
	imull	156(%rbx), %edx
	movl	$.L.str.1, %ecx
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	*88(%r14)
	movq	%rax, 232(%rbx)
	movl	156(%rbx), %eax
	movl	160(%rbx), %esi
	cmpl	%esi, %eax
	cmovgel	%eax, %esi
	movl	$12, %edx
	movl	$.L.str.2, %ecx
	movq	%r14, %rdi
	callq	*88(%r14)
	movq	%rax, 240(%rbx)
	movq	88(%r14), %rbp
	cvtsi2sdl	180(%rbx), %xmm0
	cvtsi2sdl	172(%rbx), %xmm1
	divsd	%xmm1, %xmm0
	callq	*16(%r15)
	imull	156(%rbx), %eax
	movl	$8, %edx
	movl	$.L.str.3, %ecx
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	*%rbp
	movq	%rax, 248(%rbx)
	movl	304(%rbx), %esi
	addl	%esi, %esi
	movl	$8, %edx
	movl	$.L.str.4, %ecx
	movq	%r14, %rdi
	callq	*88(%r14)
	movq	%rax, 328(%rbx)
	movl	112(%rbx), %esi
	movl	212(%rbx), %edx
	imull	156(%rbx), %esi
	movl	$.L.str.5, %ecx
	movq	%r14, %rdi
	callq	*88(%r14)
	movq	%rax, 224(%rbx)
	movl	112(%rbx), %esi
	movl	208(%rbx), %edx
	imull	148(%rbx), %esi
	movl	$.L.str.6, %ecx
	movq	%r14, %rdi
	callq	*88(%r14)
	movq	%rax, 216(%rbx)
	cmpq	$0, 232(%rbx)
	je	.LBB0_8
# BB#3:                                 # %lor.lhs.false.i
	movq	240(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_8
# BB#4:                                 # %lor.lhs.false.82.i
	movq	248(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_8
# BB#5:                                 # %lor.lhs.false.86.i
	cmpq	$0, 328(%rbx)
	je	.LBB0_8
# BB#6:                                 # %lor.lhs.false.90.i
	testq	%rax, %rax
	je	.LBB0_8
# BB#7:                                 # %lor.lhs.false.90.i
	movq	224(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB0_8
# BB#9:                                 # %if.end.i
	cvtsi2sdl	180(%rbx), %xmm0
	cvtsi2sdl	172(%rbx), %xmm1
	divsd	%xmm1, %xmm0
	movl	156(%rbx), %r8d
	movl	148(%rbx), %r9d
	movl	112(%rbx), %eax
	movl	136(%rbx), %ecx
	cvtsi2sdq	%rcx, %xmm2
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm2, %xmm1
	movl	8(%r15), %ecx
	movq	(%r15), %rdx
	movsd	24(%r15), %xmm2         # xmm2 = mem[0],zero
	movq	%rdx, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%eax, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%r8d, (%rsp)
	xorl	%ebp, %ebp
	movl	$0, %edx
	movl	$0, %ecx
	callq	calculate_contrib
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calculate_dst_contrib
	jmp	.LBB0_10
.LBB0_8:                                # %if.then.i
	movq	8(%rbx), %r14
	movl	$.L.str.6, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	*24(%r14)
	movq	$0, 216(%rbx)
	movq	224(%rbx), %rsi
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 224(%rbx)
	movq	248(%rbx), %rsi
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 248(%rbx)
	xorl	%esi, %esi
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 328(%rbx)
	movq	240(%rbx), %rsi
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 240(%rbx)
	movq	232(%rbx), %rsi
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 232(%rbx)
	movl	$-2, %ebp
.LBB0_10:                               # %do_init.exit
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	s_IScale_init, .Lfunc_end0-s_IScale_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	s_IScale_process,@function
s_IScale_process:                       # @s_IScale_process
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
	subq	$72, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 128
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
	movq	%rdx, %r14
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	256(%rbx), %edx
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_88:                               # %cleanup.177
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	addq	%rax, (%rcx)
	movq	16(%rsp), %rbx          # 8-byte Reload
	movl	256(%rbx), %edx
	incl	%edx
	movl	%edx, 256(%rbx)
	movq	32(%rsp), %r14          # 8-byte Reload
.LBB1_1:                                # %top
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_16 Depth 3
                                        #         Child Loop BB1_18 Depth 4
                                        #       Child Loop BB1_22 Depth 3
                                        #         Child Loop BB1_24 Depth 4
                                        #     Child Loop BB1_50 Depth 2
                                        #       Child Loop BB1_71 Depth 3
                                        #         Child Loop BB1_81 Depth 4
                                        #         Child Loop BB1_75 Depth 4
                                        #         Child Loop BB1_78 Depth 4
                                        #       Child Loop BB1_53 Depth 3
                                        #         Child Loop BB1_63 Depth 4
                                        #         Child Loop BB1_57 Depth 4
                                        #         Child Loop BB1_60 Depth 4
	movl	200(%rbx), %ecx
	cmpl	%ecx, %edx
	jge	.LBB1_3
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB1_4
	.align	16, 0x90
.LBB1_3:                                # %land.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	120(%rbx), %ecx
	cmpl	%ecx, %edx
	setle	%cl
.LBB1_4:                                # %land.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	%cl, %ecx
	movl	%ecx, 204(%rbx)
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_37:                               # %while.cond.backedge
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	256(%rbx), %edx
.LBB1_5:                                # %land.end
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_16 Depth 3
                                        #         Child Loop BB1_18 Depth 4
                                        #       Child Loop BB1_22 Depth 3
                                        #         Child Loop BB1_24 Depth 4
	cmpl	296(%rbx), %edx
	jle	.LBB1_39
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	268(%rbx), %ecx
	movl	$-1, %eax
	cmpl	160(%rbx), %ecx
	je	.LBB1_93
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	16(%r14), %r15d
	movq	8(%r14), %rcx
	subl	%ecx, %r15d
	movl	$1, %eax
	je	.LBB1_93
# BB#8:                                 # %if.end.15
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	276(%rbx), %edx
	testl	%edx, %edx
	jne	.LBB1_32
# BB#9:                                 # %if.then.18
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	280(%rbx), %eax
	cmpl	%eax, %r15d
	jae	.LBB1_10
# BB#11:                                # %if.else
                                        #   in Loop: Header=BB1_5 Depth=2
	movq	224(%rbx), %r13
	jmp	.LBB1_12
.LBB1_10:                               # %if.then.21
                                        #   in Loop: Header=BB1_5 Depth=2
	leaq	1(%rcx), %r13
	leaq	(%rax,%rcx), %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
.LBB1_12:                               # %if.end.26
                                        #   in Loop: Header=BB1_5 Depth=2
	xorl	%r14d, %r14d
	cmpl	$0, 204(%rbx)
	movq	%rbx, %r12
	je	.LBB1_30
# BB#13:                                # %if.then.29
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	112(%r12), %ebp
	movl	144(%r12), %ecx
	movq	232(%r12), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	156(%r12), %edi
	imull	%ebp, %edi
	movl	124(%r12), %eax
	imull	%ebp, %eax
	movl	288(%r12), %r9d
	movslq	292(%r12), %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movslq	284(%r12), %r8
	shlq	$3, %r8
	addq	328(%r12), %r8
	imull	196(%r12), %ebp
	leal	(%rax,%rbp), %r11d
	cmpl	$1, 212(%r12)
	jne	.LBB1_14
# BB#20:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB1_5 Depth=2
	testl	%eax, %eax
	jle	.LBB1_30
# BB#21:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB1_5 Depth=2
	movslq	%edi, %rdi
	movslq	%ebp, %rbx
	leal	1(%r9), %edx
	.align	16, 0x90
.LBB1_22:                               # %for.body.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_24 Depth 4
	xorpd	%xmm0, %xmm0
	testl	%r9d, %r9d
	jle	.LBB1_25
# BB#23:                                # %for.body.20.lr.ph.i
                                        #   in Loop: Header=BB1_22 Depth=3
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	(%rbx,%rax), %rax
	movq	64(%rsp), %rsi          # 8-byte Reload
	leaq	(%rax,%rsi), %rbp
	xorpd	%xmm0, %xmm0
	movl	%edx, %eax
	movq	%r8, %r10
	.align	16, 0x90
.LBB1_24:                               # %for.body.20.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rbp), %esi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	mulsd	(%r10), %xmm1
	addsd	%xmm1, %xmm0
	addq	%rdi, %rbp
	addq	$8, %r10
	decl	%eax
	cmpl	$1, %eax
	jg	.LBB1_24
.LBB1_25:                               # %for.end.i
                                        #   in Loop: Header=BB1_22 Depth=3
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %esi
	cmpl	%ecx, %esi
	movb	%cl, %al
	jg	.LBB1_27
# BB#26:                                # %for.end.i
                                        #   in Loop: Header=BB1_22 Depth=3
	movb	%sil, %al
.LBB1_27:                               # %for.end.i
                                        #   in Loop: Header=BB1_22 Depth=3
	testl	%esi, %esi
	jns	.LBB1_29
# BB#28:                                #   in Loop: Header=BB1_22 Depth=3
	xorl	%eax, %eax
.LBB1_29:                               # %for.end.i
                                        #   in Loop: Header=BB1_22 Depth=3
	movb	%al, (%r13,%rbx)
	incq	%rbx
	cmpl	%r11d, %ebx
	jl	.LBB1_22
	jmp	.LBB1_30
.LBB1_14:                               # %for.cond.45.preheader.i
                                        #   in Loop: Header=BB1_5 Depth=2
	testl	%eax, %eax
	jle	.LBB1_30
# BB#15:                                # %for.body.48.lr.ph.i
                                        #   in Loop: Header=BB1_5 Depth=2
	movslq	%edi, %rdi
	movslq	%ebp, %rbx
	leal	1(%r9), %r10d
	.align	16, 0x90
.LBB1_16:                               # %for.body.48.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_18 Depth 4
	xorpd	%xmm0, %xmm0
	testl	%r9d, %r9d
	jle	.LBB1_19
# BB#17:                                # %for.body.65.lr.ph.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	(%rbx,%rax), %rax
	movq	64(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %rbp
	xorpd	%xmm0, %xmm0
	movl	%r10d, %eax
	movq	%r8, %rsi
	.align	16, 0x90
.LBB1_18:                               # %for.body.65.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rbp), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	addq	%rdi, %rbp
	addq	$8, %rsi
	decl	%eax
	cmpl	$1, %eax
	jg	.LBB1_18
.LBB1_19:                               # %for.end.76.i
                                        #   in Loop: Header=BB1_16 Depth=3
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	%ecx, %eax
	movw	%ax, %dx
	cmovgw	%cx, %dx
	testl	%eax, %eax
	cmovsw	%r14w, %dx
	movw	%dx, (%r13,%rbx,2)
	incq	%rbx
	cmpl	%r11d, %ebx
	jl	.LBB1_16
	.align	16, 0x90
.LBB1_30:                               # %if.end.35
                                        #   in Loop: Header=BB1_5 Depth=2
	movq	%r12, %rbx
	cmpq	224(%rbx), %r13
	movq	32(%rsp), %r14          # 8-byte Reload
	movl	$1, %eax
	jne	.LBB1_36
# BB#31:                                # %if.end.35.if.end.41_crit_edge
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	276(%rbx), %edx
	.align	16, 0x90
.LBB1_32:                               # %if.end.41
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	280(%rbx), %ebp
	subl	%edx, %ebp
	cmpl	%ebp, %r15d
	movl	%ebp, %r12d
	cmovbl	%r15d, %r12d
	cmpl	$0, 204(%rbx)
	je	.LBB1_33
# BB#34:                                # %if.then.51
                                        #   in Loop: Header=BB1_5 Depth=2
	movq	8(%r14), %rdi
	incq	%rdi
	movl	%edx, %esi
	addq	224(%rbx), %rsi
	movl	%r12d, %r13d
	movq	%r13, %rdx
	callq	memcpy
	movl	$1, %eax
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movl	276(%rbx), %edx
	jmp	.LBB1_35
	.align	16, 0x90
.LBB1_33:                               # %if.end.41.if.end.59_crit_edge
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	%r12d, %r13d
.LBB1_35:                               # %if.end.59
                                        #   in Loop: Header=BB1_5 Depth=2
	addq	%r13, 8(%r14)
	addl	%r12d, %edx
	cmpl	%ebp, %r15d
	movl	$0, %ecx
	cmovael	%ecx, %edx
	movl	%edx, 276(%rbx)
	jb	.LBB1_93
.LBB1_36:                               # %adv
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	268(%rbx), %esi
	incl	%esi
	movl	%esi, 268(%rbx)
	cmpl	160(%rbx), %esi
	je	.LBB1_37
# BB#38:                                # %if.then.80
                                        #   in Loop: Header=BB1_5 Depth=2
	movq	%rbx, %rdi
	callq	calculate_dst_contrib
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movl	256(%rbx), %edx
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_39:                               # %while.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rsi
	movq	8(%rcx), %r15
	movq	%rcx, %r12
	subq	%rsi, %r15
	movl	260(%rbx), %ecx
	xorl	%eax, %eax
	testl	%r15d, %r15d
	je	.LBB1_93
# BB#40:                                # %if.end.98
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$-2, %eax
	cmpl	152(%rbx), %edx
	jge	.LBB1_93
# BB#41:                                # %if.end.104
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	264(%rbx), %ebp
	subl	%ecx, %ebp
	cmpl	%ebp, %r15d
	jb	.LBB1_89
# BB#42:                                # %if.then.107
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%ecx, %ecx
	je	.LBB1_43
# BB#44:                                # %if.else.116
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	216(%rbx), %r14
	cmpl	$0, 204(%rbx)
	je	.LBB1_46
# BB#45:                                # %if.then.120
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r14,%rcx), %rdi
	incq	%rsi
	movl	%ebp, %edx
	callq	memcpy
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
.LBB1_46:                               # %if.end.129
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movl	$0, 260(%rbx)
	jmp	.LBB1_47
	.align	16, 0x90
.LBB1_43:                               # %if.then.113
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	incq	%rsi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
.LBB1_47:                               # %do.end
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, 204(%rbx)
	je	.LBB1_88
# BB#48:                                # %if.then.135
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	256(%rcx), %eax
	cltd
	idivl	304(%rcx)
	movslq	112(%rcx), %rax
	testq	%rax, %rax
	jle	.LBB1_88
# BB#49:                                # %for.body.lr.ph.i.107
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	16(%rsp), %rsi          # 8-byte Reload
	imull	156(%rsi), %edx
	movl	%eax, %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	addq	232(%rsi), %rcx
	movslq	196(%rsi), %rdx
	leaq	(%rdx,%rdx,2), %rdi
	shlq	$2, %rdi
	addq	240(%rsi), %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	imulq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movl	124(%rsi), %r9d
	movq	248(%rsi), %r13
	movl	208(%rsi), %ecx
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	leaq	(%rax,%rax), %r12
	movq	48(%rsp), %r11          # 8-byte Reload
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB1_50:                               # %for.body.i.109
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_71 Depth 3
                                        #         Child Loop BB1_81 Depth 4
                                        #         Child Loop BB1_75 Depth 4
                                        #         Child Loop BB1_78 Depth 4
                                        #       Child Loop BB1_53 Depth 3
                                        #         Child Loop BB1_63 Depth 4
                                        #         Child Loop BB1_57 Depth 4
                                        #         Child Loop BB1_60 Depth 4
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%r8), %rcx
	cmpl	$1, 56(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_69
# BB#51:                                # %if.then.i
                                        #   in Loop: Header=BB1_50 Depth=2
	testl	%r9d, %r9d
	jle	.LBB1_87
# BB#52:                                #   in Loop: Header=BB1_50 Depth=2
	movq	48(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%r8), %r14
	xorl	%ebp, %ebp
	movq	40(%rsp), %rdi          # 8-byte Reload
	.align	16, 0x90
.LBB1_53:                               # %for.body.15.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_63 Depth 4
                                        #         Child Loop BB1_57 Depth 4
                                        #         Child Loop BB1_60 Depth 4
	movl	4(%rdi), %esi
	movslq	8(%rdi), %rbx
	leaq	(%rbx,%r14), %rbx
	movslq	(%rdi), %rdx
	leaq	(%r13,%rdx,8), %r15
	xorpd	%xmm0, %xmm0
	cmpl	$1, %eax
	jne	.LBB1_54
# BB#58:                                # %for.cond.25.preheader.i
                                        #   in Loop: Header=BB1_53 Depth=3
	testl	%esi, %esi
	jle	.LBB1_64
# BB#59:                                # %for.body.27.i.preheader
                                        #   in Loop: Header=BB1_53 Depth=3
	incl	%esi
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_60:                               # %for.body.27.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        #       Parent Loop BB1_53 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rbx), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	(%r15), %xmm1
	addsd	%xmm1, %xmm0
	incq	%rbx
	addq	$8, %r15
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB1_60
	jmp	.LBB1_64
	.align	16, 0x90
.LBB1_54:                               # %for.body.15.i
                                        #   in Loop: Header=BB1_53 Depth=3
	cmpl	$3, %eax
	jne	.LBB1_61
# BB#55:                                # %for.cond.33.preheader.i
                                        #   in Loop: Header=BB1_53 Depth=3
	testl	%esi, %esi
	jle	.LBB1_64
# BB#56:                                # %for.body.36.i.preheader
                                        #   in Loop: Header=BB1_53 Depth=3
	incl	%esi
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_57:                               # %for.body.36.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        #       Parent Loop BB1_53 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rbx), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	(%r15), %xmm1
	addsd	%xmm1, %xmm0
	addq	$3, %rbx
	addq	$8, %r15
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB1_57
	jmp	.LBB1_64
	.align	16, 0x90
.LBB1_61:                               # %for.cond.47.preheader.i
                                        #   in Loop: Header=BB1_53 Depth=3
	testl	%esi, %esi
	jle	.LBB1_64
# BB#62:                                # %for.body.50.i.preheader
                                        #   in Loop: Header=BB1_53 Depth=3
	incl	%esi
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_63:                               # %for.body.50.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        #       Parent Loop BB1_53 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rbx), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	(%r15), %xmm1
	addsd	%xmm1, %xmm0
	addq	%rax, %rbx
	addq	$8, %r15
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB1_63
	.align	16, 0x90
.LBB1_64:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_53 Depth=3
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %esi
	cmpl	$255, %esi
	movb	$-1, %bl
	jg	.LBB1_66
# BB#65:                                # %sw.epilog.i
                                        #   in Loop: Header=BB1_53 Depth=3
	movb	%sil, %bl
.LBB1_66:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_53 Depth=3
	testl	%esi, %esi
	jns	.LBB1_68
# BB#67:                                #   in Loop: Header=BB1_53 Depth=3
	xorl	%ebx, %ebx
.LBB1_68:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_53 Depth=3
	movb	%bl, (%rcx)
	addq	%rax, %rcx
	addq	$12, %rdi
	incl	%ebp
	cmpl	%r9d, %ebp
	jne	.LBB1_53
	jmp	.LBB1_87
	.align	16, 0x90
.LBB1_69:                               # %if.else.i
                                        #   in Loop: Header=BB1_50 Depth=2
	testl	%r9d, %r9d
	jle	.LBB1_87
# BB#70:                                #   in Loop: Header=BB1_50 Depth=2
	movq	48(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%r8,2), %r15
	xorl	%r14d, %r14d
	movq	40(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB1_71:                               # %for.body.88.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_81 Depth 4
                                        #         Child Loop BB1_75 Depth 4
                                        #         Child Loop BB1_78 Depth 4
	movl	4(%rbp), %edi
	movslq	8(%rbp), %r10
	leaq	(%r15,%r10,2), %rbx
	movslq	(%rbp), %rdx
	leaq	(%r13,%rdx,8), %rsi
	xorpd	%xmm0, %xmm0
	cmpl	$1, %eax
	jne	.LBB1_72
# BB#76:                                # %for.cond.107.preheader.i
                                        #   in Loop: Header=BB1_71 Depth=3
	testl	%edi, %edi
	jle	.LBB1_82
# BB#77:                                # %for.body.110.i.preheader
                                        #   in Loop: Header=BB1_71 Depth=3
	incl	%edi
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_78:                               # %for.body.110.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        #       Parent Loop BB1_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzwl	(%rbx), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	addq	$2, %rbx
	addq	$8, %rsi
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB1_78
	jmp	.LBB1_82
	.align	16, 0x90
.LBB1_72:                               # %for.body.88.i
                                        #   in Loop: Header=BB1_71 Depth=3
	cmpl	$3, %eax
	jne	.LBB1_79
# BB#73:                                # %for.cond.122.preheader.i
                                        #   in Loop: Header=BB1_71 Depth=3
	testl	%edi, %edi
	jle	.LBB1_82
# BB#74:                                # %for.body.125.i.preheader
                                        #   in Loop: Header=BB1_71 Depth=3
	incl	%edi
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_75:                               # %for.body.125.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        #       Parent Loop BB1_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzwl	(%rbx), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	addq	$6, %rbx
	addq	$8, %rsi
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB1_75
	jmp	.LBB1_82
	.align	16, 0x90
.LBB1_79:                               # %for.cond.137.preheader.i
                                        #   in Loop: Header=BB1_71 Depth=3
	testl	%edi, %edi
	jle	.LBB1_82
# BB#80:                                # %for.body.140.i.preheader
                                        #   in Loop: Header=BB1_71 Depth=3
	leaq	(%r11,%r10,2), %rbx
	incl	%edi
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_81:                               # %for.body.140.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        #       Parent Loop BB1_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzwl	(%rbx), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	addq	$8, %rsi
	addq	%r12, %rbx
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB1_81
	.align	16, 0x90
.LBB1_82:                               # %sw.epilog.152.i
                                        #   in Loop: Header=BB1_71 Depth=3
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %edi
	cmpl	$255, %edi
	movb	$-1, %sil
	jg	.LBB1_84
# BB#83:                                # %sw.epilog.152.i
                                        #   in Loop: Header=BB1_71 Depth=3
	movb	%dil, %sil
.LBB1_84:                               # %sw.epilog.152.i
                                        #   in Loop: Header=BB1_71 Depth=3
	testl	%edi, %edi
	jns	.LBB1_86
# BB#85:                                #   in Loop: Header=BB1_71 Depth=3
	xorl	%esi, %esi
.LBB1_86:                               # %sw.epilog.152.i
                                        #   in Loop: Header=BB1_71 Depth=3
	movb	%sil, (%rcx)
	addq	%rax, %rcx
	addq	$12, %rbp
	incl	%r14d
	cmpl	%r9d, %r14d
	jne	.LBB1_71
.LBB1_87:                               # %do.end.179.i
                                        #   in Loop: Header=BB1_50 Depth=2
	incq	%r8
	addq	$2, %r11
	cmpl	%eax, %r8d
	jne	.LBB1_50
	jmp	.LBB1_88
.LBB1_89:                               # %if.else.158
	cmpl	$0, 204(%rbx)
	je	.LBB1_90
# BB#91:                                # %if.then.162
	movq	216(%rbx), %rdi
	addq	%rcx, %rdi
	incq	%rsi
	movq	%r15, %r14
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r14
	movq	%r14, %rdx
	callq	memcpy
	movl	260(%rbx), %ecx
	movq	(%r12), %rsi
	jmp	.LBB1_92
.LBB1_90:                               # %if.else.158.if.end.171_crit_edge
	movq	%r15, %r14
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r14
.LBB1_92:                               # %if.end.171
	addl	%r15d, %ecx
	movl	%ecx, 260(%rbx)
	addq	%rsi, %r14
	movq	%r14, (%r12)
	xorl	%eax, %eax
.LBB1_93:                               # %cleanup.180
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_IScale_process, .Lfunc_end1-s_IScale_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_IScale_release,@function
s_IScale_release:                       # @s_IScale_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 32
.Ltmp25:
	.cfi_offset %rbx, -24
.Ltmp26:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	8(%r14), %rbx
	movq	216(%r14), %rsi
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	$0, 216(%r14)
	movq	224(%r14), %rsi
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	$0, 224(%r14)
	movq	248(%r14), %rsi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	$0, 248(%r14)
	xorl	%esi, %esi
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	$0, 328(%r14)
	movq	240(%r14), %rsi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	$0, 240(%r14)
	movq	232(%r14), %rsi
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	$0, 232(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	s_IScale_release, .Lfunc_end2-s_IScale_release
	.cfi_endproc

	.align	16, 0x90
	.type	s_IScale_set_defaults,@function
s_IScale_set_defaults:                  # @s_IScale_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, 216(%rdi)
	movups	%xmm0, 232(%rdi)
	movq	$0, 248(%rdi)
	retq
.Lfunc_end3:
	.size	s_IScale_set_defaults, .Lfunc_end3-s_IScale_set_defaults
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4611686018427387904     # double 2
.LCPI4_3:
	.quad	-4610935418489492821    # double -2.3333333333333335
.LCPI4_4:
	.quad	4622945017495814144     # double 12
.LCPI4_5:
	.quad	-4597049319638433792    # double -20
.LCPI4_6:
	.quad	4622194417557919061     # double 10.666666666666666
.LCPI4_7:
	.quad	4618441417868443648     # double 6
.LCPI4_8:
	.quad	4619567317775286272     # double 7
.LCPI4_9:
	.quad	-4600427019358961664    # double -12
.LCPI4_10:
	.quad	4617690817930548565     # double 5.333333333333333
	.text
	.align	16, 0x90
	.type	Mitchell_filter,@function
Mitchell_filter:                        # @Mitchell_filter
	.cfi_startproc
# BB#0:                                 # %entry
	movapd	%xmm0, %xmm1
	movapd	.LCPI4_0(%rip), %xmm3   # xmm3 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm1, %xmm3
	xorpd	%xmm0, %xmm0
	movapd	%xmm1, %xmm2
	cmpltsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm4
	andnpd	%xmm1, %xmm4
	mulsd	%xmm1, %xmm1
	andpd	%xmm3, %xmm2
	orpd	%xmm4, %xmm2
	movsd	.LCPI4_1(%rip), %xmm3   # xmm3 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	jbe	.LBB4_2
# BB#1:                                 # %if.then.2
	mulsd	%xmm1, %xmm2
	mulsd	.LCPI4_8(%rip), %xmm2
	mulsd	.LCPI4_9(%rip), %xmm1
	addsd	%xmm2, %xmm1
	addsd	.LCPI4_10(%rip), %xmm1
	divsd	.LCPI4_7(%rip), %xmm1
	movapd	%xmm1, %xmm0
	retq
.LBB4_2:                                # %if.else
	movsd	.LCPI4_2(%rip), %xmm3   # xmm3 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	jbe	.LBB4_4
# BB#3:                                 # %if.then.8
	movapd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	.LCPI4_3(%rip), %xmm0
	mulsd	.LCPI4_4(%rip), %xmm1
	addsd	%xmm0, %xmm1
	mulsd	.LCPI4_5(%rip), %xmm2
	addsd	%xmm1, %xmm2
	addsd	.LCPI4_6(%rip), %xmm2
	divsd	.LCPI4_7(%rip), %xmm2
	movapd	%xmm2, %xmm0
.LBB4_4:                                # %cleanup
	retq
.Lfunc_end4:
	.size	Mitchell_filter, .Lfunc_end4-Mitchell_filter
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4603329553882753378     # double 0.57224606580829751
.LCPI5_2:
	.quad	4611686018427387904     # double 2
.LCPI5_3:
	.quad	4609434218613702656     # double 1.5
	.text
	.align	16, 0x90
	.type	Mitchell_contrib_pixels,@function
Mitchell_contrib_pixels:                # @Mitchell_contrib_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB5_1
	jnp	.LBB5_2
.LBB5_1:                                # %if.end
	ucomisd	.LCPI5_0(%rip), %xmm0
	maxsd	.LCPI5_1(%rip), %xmm0
	movsd	.LCPI5_2(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm1
	addsd	.LCPI5_3(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	$5, %eax
	cmovbl	%ecx, %eax
.LBB5_2:                                # %return
	retq
.Lfunc_end5:
	.size	Mitchell_contrib_pixels, .Lfunc_end5-Mitchell_contrib_pixels
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_1:
	.quad	4607182418800017408     # double 1
.LCPI6_2:
	.quad	-4609434218613702656    # double -3
	.text
	.align	16, 0x90
	.type	Interp_filter,@function
Interp_filter:                          # @Interp_filter
	.cfi_startproc
# BB#0:                                 # %entry
	movapd	%xmm0, %xmm1
	movapd	.LCPI6_0(%rip), %xmm3   # xmm3 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm1, %xmm3
	xorpd	%xmm0, %xmm0
	movapd	%xmm1, %xmm2
	cmpltsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm4
	andnpd	%xmm1, %xmm4
	andpd	%xmm3, %xmm2
	orpd	%xmm4, %xmm2
	ucomisd	.LCPI6_1(%rip), %xmm2
	jae	.LBB6_2
# BB#1:                                 # %if.end.3
	movapd	%xmm2, %xmm0
	addsd	%xmm0, %xmm0
	addsd	.LCPI6_2(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LCPI6_1(%rip), %xmm0
.LBB6_2:                                # %return
	retq
.Lfunc_end6:
	.size	Interp_filter, .Lfunc_end6-Interp_filter
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4609434218613702656     # double 1.5
	.text
	.align	16, 0x90
	.type	Interp_contrib_pixels,@function
Interp_contrib_pixels:                  # @Interp_contrib_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB7_1
	jnp	.LBB7_2
.LBB7_1:                                # %if.end
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	minsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm1
	addsd	.LCPI7_1(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
.LBB7_2:                                # %return
	retq
.Lfunc_end7:
	.size	Interp_contrib_pixels, .Lfunc_end7-Interp_contrib_pixels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	calculate_contrib,@function
calculate_contrib:                      # @calculate_contrib
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 240
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movsd	%xmm1, 136(%rsp)        # 8-byte Spill
	movl	%r9d, 100(%rsp)         # 4-byte Spill
	movl	%edx, %r10d
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movl	272(%rsp), %eax
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm1, 176(%rsp)        # 8-byte Spill
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_2
# BB#1:                                 # %if.then
	maxsd	%xmm2, %xmm0
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 176(%rsp)        # 8-byte Spill
	movl	$1, 76(%rsp)            # 4-byte Folded Spill
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	cvtsi2sdl	%eax, %xmm2
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
.LBB8_3:                                # %if.end
	movl	$-1, %ebp
	cmpl	$0, 240(%rsp)
	jle	.LBB8_20
# BB#4:                                 # %for.body.lr.ph
	movl	248(%rsp), %r9d
	movapd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	addsd	.LCPI8_0(%rip), %xmm0
	cvttsd2si	%xmm0, %edi
	movslq	%ecx, %rax
	movslq	%r8d, %rcx
	imulq	%rcx, %rax
	movslq	100(%rsp), %rbx         # 4-byte Folded Reload
	cqto
	idivq	%rbx
	leal	(%rdx,%rdx), %eax
	xorl	%esi, %esi
	cmpl	%ebx, %eax
	movl	%ebx, %eax
	cmovlel	%esi, %eax
	subl	%edx, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leal	(%rcx,%rcx), %eax
	subl	%ecx, %ebx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 120(%rsp)        # 8-byte Spill
	leal	-1(%r9), %eax
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movslq	%edi, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	%r10d, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movl	%eax, %ecx
	andl	$7, %ecx
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	leaq	(,%rax,8), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	andl	$7, %edi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	%eax, %r14d
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movl	$-1, %ebp
	movq	88(%rsp), %r12          # 8-byte Reload
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB8_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #     Child Loop BB8_9 Depth 2
                                        #     Child Loop BB8_12 Depth 2
                                        #     Child Loop BB8_14 Depth 2
                                        #     Child Loop BB8_16 Depth 2
                                        #     Child Loop BB8_18 Depth 2
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	(%r15,%rax), %eax
	imull	100(%rsp), %eax         # 4-byte Folded Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax,2), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	subsd	120(%rsp), %xmm0        # 8-byte Folded Reload
	divsd	128(%rsp), %xmm0        # 8-byte Folded Reload
	callq	ceil
	cvttsd2si	%xmm0, %r13d
	movsd	120(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	160(%rsp), %xmm0        # 8-byte Folded Reload
	divsd	128(%rsp), %xmm0        # 8-byte Folded Reload
	callq	floor
	cvttsd2si	%xmm0, %edi
	movl	248(%rsp), %eax
	cmpl	%eax, %r13d
	movl	%r13d, %ebx
	movl	156(%rsp), %esi         # 4-byte Reload
	cmovgel	%esi, %ebx
	testl	%r13d, %r13d
	movl	$0, %edx
	cmovsl	%edx, %ebx
	movl	%ebx, 144(%rsp)         # 4-byte Spill
	cmpl	%eax, %edi
	movl	%edi, %ecx
	cmovgel	%esi, %ecx
	testl	%edi, %edi
	cmovsl	%edx, %ecx
	cmpl	%ebp, %ecx
	cmovgel	%ecx, %ebp
	movl	%ebp, %r8d
	movl	%ebx, %eax
	cltd
	idivl	256(%rsp)
	imull	264(%rsp), %edx
	leaq	(%r15,%r15,2), %rsi
	movq	80(%rsp), %rbp          # 8-byte Reload
	movl	%edx, 8(%rbp,%rsi,4)
	movl	$1, %eax
	subl	%ebx, %eax
	addl	%ecx, %eax
	movl	%eax, 4(%rbp,%rsi,4)
	movq	%r15, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	imulq	%rcx, %rax
	movl	%eax, (%rbp,%rsi,4)
	testl	%ecx, %ecx
	xorpd	%xmm0, %xmm0
	jle	.LBB8_10
# BB#6:                                 # %for.body.108.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpl	$0, 8(%rsp)             # 4-byte Folded Reload
	movq	%r12, %rdx
	movl	$0, %ecx
	movq	16(%rsp), %rsi          # 8-byte Reload
	je	.LBB8_8
	.align	16, 0x90
.LBB8_7:                                # %for.body.108.prol
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	$0, (%rdx)
	incq	%rcx
	addq	$8, %rdx
	cmpl	%ecx, %esi
	jne	.LBB8_7
.LBB8_8:                                # %for.body.108.preheader.split
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpl	$7, 12(%rsp)            # 4-byte Folded Reload
	jb	.LBB8_10
	.align	16, 0x90
.LBB8_9:                                # %for.body.108
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	$0, (%r12,%rcx,8)
	movq	$0, 8(%r12,%rcx,8)
	movq	$0, 16(%r12,%rcx,8)
	movq	$0, 24(%r12,%rcx,8)
	movq	$0, 32(%r12,%rcx,8)
	movq	$0, 40(%r12,%rcx,8)
	movupd	%xmm0, 48(%r12,%rcx,8)
	addq	$8, %rcx
	cmpl	%ecx, %r14d
	jne	.LBB8_9
.LBB8_10:                               # %for.end
                                        #   in Loop: Header=BB8_5 Depth=1
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	128(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %r14
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	je	.LBB8_15
# BB#11:                                # %for.cond.112.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movl	%r8d, 116(%rsp)         # 4-byte Spill
	xorpd	%xmm1, %xmm1
	cmpl	%edi, %r13d
	movl	%r13d, %r15d
	movq	280(%rsp), %rbp
	jg	.LBB8_19
	.align	16, 0x90
.LBB8_12:                               # %for.body.115
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	%xmm1, 168(%rsp)        # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r15d, %xmm1
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	divsd	176(%rsp), %xmm0        # 8-byte Folded Reload
	movl	%edi, %ebx
	callq	*%rbp
	movsd	168(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%ebx, %edi
	divsd	176(%rsp), %xmm0        # 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	cmpl	%edi, %r15d
	leal	1(%r15), %eax
	movl	%eax, %r15d
	jl	.LBB8_12
# BB#13:                                # %for.cond.125.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpl	%edi, %r13d
	jg	.LBB8_19
	.align	16, 0x90
.LBB8_14:                               # %for.body.128
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	%xmm1, 168(%rsp)        # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r13d, %xmm1
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	divsd	176(%rsp), %xmm0        # 8-byte Folded Reload
	movl	%edi, %ebx
	callq	*%rbp
	movsd	168(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%ebx, %edi
	divsd	176(%rsp), %xmm0        # 8-byte Folded Reload
	divsd	%xmm1, %xmm0
	movl	248(%rsp), %eax
	cmpl	%eax, %r13d
	movl	%r13d, %eax
	cmovgel	156(%rsp), %eax         # 4-byte Folded Reload
	testl	%r13d, %r13d
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	subl	144(%rsp), %eax         # 4-byte Folded Reload
	mulsd	136(%rsp), %xmm0        # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cltq
	addsd	(%r14,%rax,8), %xmm0
	movsd	%xmm0, (%r14,%rax,8)
	cmpl	%edi, %r13d
	leal	1(%r13), %eax
	movl	%eax, %r13d
	jl	.LBB8_14
	jmp	.LBB8_19
	.align	16, 0x90
.LBB8_15:                               # %for.cond.166.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movl	%r8d, 116(%rsp)         # 4-byte Spill
	xorpd	%xmm1, %xmm1
	cmpl	%edi, %r13d
	movl	%r13d, %ebp
	movq	280(%rsp), %rbx
	jg	.LBB8_19
	.align	16, 0x90
.LBB8_16:                               # %for.body.169
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	%xmm1, 168(%rsp)        # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebp, %xmm1
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movl	%edi, %r15d
	callq	*%rbx
	movsd	168(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%r15d, %edi
	addsd	%xmm0, %xmm1
	cmpl	%edi, %ebp
	leal	1(%rbp), %eax
	movl	%eax, %ebp
	jl	.LBB8_16
# BB#17:                                # %for.cond.177.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpl	%edi, %r13d
	jg	.LBB8_19
	.align	16, 0x90
.LBB8_18:                               # %for.body.180
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	%xmm1, 168(%rsp)        # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r13d, %xmm1
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movl	%edi, %ebp
	callq	*%rbx
	movsd	168(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%ebp, %edi
	divsd	%xmm1, %xmm0
	movl	248(%rsp), %eax
	cmpl	%eax, %r13d
	movl	%r13d, %eax
	cmovgel	156(%rsp), %eax         # 4-byte Folded Reload
	testl	%r13d, %r13d
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	subl	144(%rsp), %eax         # 4-byte Folded Reload
	mulsd	136(%rsp), %xmm0        # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cltq
	addsd	(%r14,%rax,8), %xmm0
	movsd	%xmm0, (%r14,%rax,8)
	cmpl	%edi, %r13d
	leal	1(%r13), %eax
	movl	%eax, %r13d
	jl	.LBB8_18
	.align	16, 0x90
.LBB8_19:                               # %do.end.218
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	104(%rsp), %r15         # 8-byte Reload
	incq	%r15
	addq	32(%rsp), %r12          # 8-byte Folded Reload
	cmpl	240(%rsp), %r15d
	movq	24(%rsp), %r14          # 8-byte Reload
	movl	116(%rsp), %ebp         # 4-byte Reload
	jne	.LBB8_5
.LBB8_20:                               # %for.end.221
	movl	%ebp, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	calculate_contrib, .Lfunc_end8-calculate_contrib
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	calculate_dst_contrib,@function
calculate_dst_contrib:                  # @calculate_dst_contrib
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 80
.Ltmp44:
	.cfi_offset %rbx, -32
.Ltmp45:
	.cfi_offset %r14, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movl	%esi, %r10d
	movq	%rdi, %rbx
	movl	112(%rbx), %ebp
	movl	144(%rbx), %edx
	imull	156(%rbx), %ebp
	leaq	284(%rbx), %rdi
	movq	328(%rbx), %rsi
	movl	184(%rbx), %r8d
	cvtsi2sdl	%r8d, %xmm0
	movl	176(%rbx), %r9d
	cvtsi2sdl	%r9d, %xmm1
	divsd	%xmm1, %xmm0
	movl	272(%rbx), %ecx
	movl	152(%rbx), %r11d
	movl	304(%rbx), %r14d
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	divsd	.LCPI9_0(%rip), %xmm1
	movl	300(%rbx), %edx
	movq	312(%rbx), %rax
	movsd	320(%rbx), %xmm2        # xmm2 = mem[0],zero
	movq	%rax, 40(%rsp)
	movl	%edx, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	$1, (%rsp)
	movl	%r10d, %edx
	callq	calculate_contrib
	movl	%eax, %esi
	movl	292(%rbx), %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %r8d
	movl	%esi, 296(%rbx)
	movslq	304(%rbx), %rcx
	movl	%esi, %eax
	cltd
	idivl	%ecx
	cmpl	%r8d, %edx
	jge	.LBB9_9
# BB#1:                                 # %if.then
	movq	328(%rbx), %rdi
	leaq	(%rdi,%rcx,8), %rsi
	testl	%ecx, %ecx
	jle	.LBB9_8
# BB#2:                                 # %for.body.lr.ph
	movslq	%r8d, %r9
	movslq	%edx, %rdx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB9_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, %rbp
	jle	.LBB9_4
# BB#5:                                 # %cond.false
                                        #   in Loop: Header=BB9_3 Depth=1
	xorpd	%xmm0, %xmm0
	movq	%rbp, %rax
	subq	%r9, %rax
	jl	.LBB9_7
	jmp	.LBB9_6
	.align	16, 0x90
.LBB9_4:                                # %cond.true
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	%ebp, %eax
	subl	%r8d, %eax
	addl	%ecx, %eax
	cltq
.LBB9_6:                                # %cond.true.30
                                        #   in Loop: Header=BB9_3 Depth=1
	movsd	(%rdi,%rax,8), %xmm0    # xmm0 = mem[0],zero
.LBB9_7:                                # %cond.end.37
                                        #   in Loop: Header=BB9_3 Depth=1
	movsd	%xmm0, (%rsi,%rbp,8)
	incq	%rbp
	cmpq	%rcx, %rbp
	jl	.LBB9_3
.LBB9_8:                                # %for.end
	shlq	$3, %rcx
	movq	%rcx, %rdx
	callq	memcpy
	movl	304(%rbx), %eax
	movl	%eax, 288(%rbx)
	movl	$0, 292(%rbx)
.LBB9_9:                                # %do.end.56
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	calculate_dst_contrib, .Lfunc_end9-calculate_dst_contrib
	.cfi_endproc

	.type	st_IScale_state,@object # @st_IScale_state
	.section	.rodata,"a",@progbits
	.align	8
st_IScale_state:
	.long	336                     # 0x150
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	iscale_state_reloc_ptrs
	.size	st_IScale_state, 64

	.type	s_IScale_template,@object # @s_IScale_template
	.globl	s_IScale_template
	.align	8
s_IScale_template:
	.quad	st_IScale_state
	.quad	s_IScale_init
	.quad	s_IScale_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	s_IScale_release
	.quad	s_IScale_set_defaults
	.quad	0
	.size	s_IScale_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ImageScaleEncode/Decode state"
	.size	.L.str, 30

	.type	iscale_state_reloc_ptrs,@object # @iscale_state_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
iscale_state_reloc_ptrs:
	.short	6                       # 0x6
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	iscale_state_enum_ptrs
	.size	iscale_state_reloc_ptrs, 24

	.type	iscale_state_enum_ptrs,@object # @iscale_state_enum_ptrs
	.align	16
iscale_state_enum_ptrs:
	.short	0                       # 0x0
	.short	224                     # 0xe0
	.short	0                       # 0x0
	.short	216                     # 0xd8
	.short	0                       # 0x0
	.short	232                     # 0xe8
	.short	0                       # 0x0
	.short	240                     # 0xf0
	.short	0                       # 0x0
	.short	248                     # 0xf8
	.short	0                       # 0x0
	.short	328                     # 0x148
	.size	iscale_state_enum_ptrs, 24

	.type	Mitchell_defn,@object   # @Mitchell_defn
	.align	8
Mitchell_defn:
	.quad	Mitchell_filter
	.long	2                       # 0x2
	.zero	4
	.quad	Mitchell_contrib_pixels
	.quad	4603329553882753378     # double 0.57224606580829751
	.size	Mitchell_defn, 32

	.type	Interp_defn,@object     # @Interp_defn
	.align	8
Interp_defn:
	.quad	Interp_filter
	.long	1                       # 0x1
	.zero	4
	.quad	Interp_contrib_pixels
	.quad	0                       # double 0
	.size	Interp_defn, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"image_scale tmp"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image_scale contrib"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image_scale contrib[*]"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"image_scale contrib_dst[*]"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image_scale dst"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image_scale src"
	.size	.L.str.6, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
