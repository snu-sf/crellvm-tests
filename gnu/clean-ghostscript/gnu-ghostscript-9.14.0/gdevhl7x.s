	.text
	.file	"gdevhl7x.bc"
	.align	16, 0x90
	.type	hl720_print_page,@function
hl720_print_page:                       # @hl720_print_page
	.cfi_startproc
# BB#0:                                 # %addByte.exit
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
	subq	$1672, %rsp             # imm = 0x688
.Ltmp6:
	.cfi_def_cfa_offset 1728
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
	movq	%rsi, %r13
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	movups	.Lhl720_print_page.prefix+27(%rip), %xmm0
	movups	%xmm0, 107(%rsp)
	movaps	.Lhl720_print_page.prefix+16(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqa	.Lhl720_print_page.prefix(%rip), %xmm0
	movdqa	%xmm0, 80(%rsp)
	cvttss2si	884(%r12), %ecx
	movl	$600, %eax              # imm = 0x258
	xorl	%edx, %edx
	idivl	%ecx
	sarl	%eax
	leal	(,%rax,4), %ecx
	orl	%eax, %ecx
	movb	%cl, 122(%rsp)
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebx
	cvttss2si	884(%r12), %ebp
	movq	%r12, %rdi
	callq	gdev_prn_print_scan_lines
	movl	%eax, %r14d
	movswl	%bp, %r15d
	imull	$156, %r15d, %eax
	cltq
	imulq	$458129845, %rax, %rax  # imm = 0x1B4E81B5
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$36, %rax
	addl	%ecx, %eax
	leal	(%rax,%rax,4), %eax
	movl	%eax, %ebp
	sarl	$31, %ebp
	shrl	$30, %ebp
	addl	%eax, %ebp
	andl	$-4, %ebp
	shll	$14, %ebp
	addl	$524288, %ebp           # imm = 0x80000
	sarl	$16, %ebp
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	leal	30(%rbp,%rbx), %esi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	callq	*88(%rdi)
	movw	$-1, 152(%rsp)
	movw	$1, 1654(%rsp)
	movw	$0, 1656(%rsp)
	movw	%bx, 1658(%rsp)
	movw	%r14w, 1660(%rsp)
	shll	$3, %ebx
	imull	$5100, %r15d, %ecx      # imm = 0x13EC
	movslq	%ecx, %rcx
	imulq	$458129845, %rcx, %rsi  # imm = 0x1B4E81B5
	movq	%rsi, %rcx
	shrq	$63, %rcx
	sarq	$38, %rsi
	addl	%ecx, %esi
	movswl	%bx, %ecx
	movl	$67, %edx
	subl	%ecx, %edx
	addl	%esi, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%edx, %ecx
	shrl	$3, %ecx
	movw	%cx, 1662(%rsp)
	movw	%r15w, 1664(%rsp)
	movl	$-25, %ebx
	testq	%rax, %rax
	je	.LBB0_98
# BB#1:                                 # %if.end.i
	addl	$30, %ebp
	movw	$0, 146(%rsp)
	movw	%bp, 144(%rsp)
	movq	%rax, 136(%rsp)
	movq	%rax, %r14
	cmpq	$0, 928(%r12)
	movq	%r12, %r15
	movq	%r15, 40(%rsp)          # 8-byte Spill
	jne	.LBB0_4
# BB#2:                                 # %for.body.i.32.i.preheader
	movl	$27, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	$1, %ebx
	.align	16, 0x90
.LBB0_3:                                # %for.body.i.32.i.for.body.i.32.i_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movzbl	80(%rsp,%rbx), %edi
	movq	%r13, %rsi
	callq	fputc
	incq	%rbx
	cmpq	$43, %rbx
	jne	.LBB0_3
.LBB0_4:                                # %do.body.preheader.i
	movslq	%ebp, %rax
	movq	%r14, 8(%rsp)           # 8-byte Spill
	leaq	(%r14,%rax), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	leaq	(%r14,%rax), %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	leaq	48(%r14,%rax), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_93:                               # %do.body.backedge.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	144(%rsp), %ebp
.LBB0_5:                                # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_10 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #         Child Loop BB0_79 Depth 4
                                        #     Child Loop BB0_41 Depth 2
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_95 Depth 2
	movswl	%bp, %eax
	cmpl	$5, %eax
	jge	.LBB0_6
# BB#7:                                 # %if.else.i.61.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%r14, 32(%rsp)          # 8-byte Spill
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.6, %edi
	movl	$5, %esi
	xorl	%eax, %eax
	callq	errprintf_nomem
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_6:                                # %for.body.i.58.i.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	movb	$0, (%r14)
	movb	$0, 1(%r14)
	movb	$0, 2(%r14)
	movb	$0, 3(%r14)
	movb	$0, 4(%r14)
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movw	$5, 146(%rsp)
.LBB0_8:                                # %addNBytes.exit.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movswl	1656(%rsp), %r12d
	movswl	1660(%rsp), %eax
	cmpl	%eax, %r12d
	jge	.LBB0_91
	.align	16, 0x90
.LBB0_9:                                # %for.body.i.41.i
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_10 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #         Child Loop BB0_79 Depth 4
	movswl	%r12w, %esi
	movswl	1658(%rsp), %ecx
	movq	%r15, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	gdev_prn_copy_scan_lines
	movzwl	1658(%rsp), %eax
	leal	1(%rax), %r14d
	decl	%eax
	movswq	%ax, %rax
	leaq	(%rax,%rbx), %rax
	.align	16, 0x90
.LBB0_10:                               # %while.cond.i.i.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	-2(%r14), %ecx
	testw	%cx, %cx
	jle	.LBB0_11
# BB#13:                                # %while.body.i.i.i
                                        #   in Loop: Header=BB0_10 Depth=3
	decl	%r14d
	cmpb	$0, (%rax)
	leaq	-1(%rax), %rax
	je	.LBB0_10
# BB#14:                                # %stripTrailingBlanks.exit.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	testw	%r14w, %r14w
	movw	1654(%rsp), %cx
	je	.LBB0_12
# BB#15:                                # %if.then.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	144(%rsp), %r10d
	testw	%cx, %cx
	je	.LBB0_16
# BB#17:                                # %if.then.14.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movswl	%cx, %ebp
	movswl	%r10w, %r15d
	movl	%r10d, %r13d
	shrl	$16, %r13d
	movl	%r10d, %eax
	sarl	$16, %eax
	movl	%r15d, %edx
	subl	%eax, %edx
	cmpl	%ebp, %edx
	jl	.LBB0_35
# BB#18:                                # %if.then.17.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	%r15d, %edx
	subl	%ebp, %edx
	cmpl	%edx, %eax
	jle	.LBB0_19
# BB#31:                                # %if.else.i.84.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	%r10d, 56(%rsp)         # 4-byte Spill
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	errprintf_nomem
	jmp	.LBB0_32
	.align	16, 0x90
.LBB0_11:                               # %stripTrailingBlanks.exit.thread.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movzwl	1654(%rsp), %ecx
.LBB0_12:                               # %if.else.54.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	incl	%ecx
	movw	%cx, 1654(%rsp)
	jmp	.LBB0_87
.LBB0_16:                               # %if.then.i.if.end.25.i_crit_edge.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	%r10d, %r13d
	shrl	$16, %r13d
	movswl	%r10w, %r15d
	movl	%r10d, 56(%rsp)         # 4-byte Spill
	jmp	.LBB0_33
.LBB0_19:                               # %for.cond.preheader.i.69.i
                                        #   in Loop: Header=BB0_9 Depth=2
	addl	%ebp, %eax
	testw	%cx, %cx
	pcmpeqd	%xmm0, %xmm0
	jle	.LBB0_30
# BB#20:                                # %for.body.lr.ph.i.71.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movswq	%r13w, %rcx
	movq	136(%rsp), %rdx
	movslq	%eax, %rsi
	movswq	%r13w, %rbp
	leaq	1(%rbp), %rdi
	cmpq	%rsi, %rdi
	cmovlq	%rsi, %rdi
	leaq	-1(%rdi), %rbx
	subq	%rbp, %rbx
	cmpq	$-1, %rbx
	je	.LBB0_29
# BB#21:                                # %overflow.checked211
                                        #   in Loop: Header=BB0_9 Depth=2
	subq	%rbp, %rdi
	movq	%rdi, %r9
	andq	$-32, %r9
	leaq	(%rdi,%rcx), %r8
	andq	$-32, %rdi
	je	.LBB0_28
# BB#22:                                # %vector.body207.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	movswq	%r13w, %rdi
	leaq	1(%rdi), %rbx
	cmpq	%rsi, %rbx
	cmovlq	%rsi, %rbx
	subq	%rdi, %rbx
	addq	$-32, %rbx
	movl	%ebx, %edi
	shrl	$5, %edi
	incl	%edi
	testb	$3, %dil
	movq	%rcx, %rdi
	je	.LBB0_25
# BB#23:                                # %vector.body207.prol.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	movswq	%r13w, %rbp
	incq	%rbp
	cmpq	%rsi, %rbp
	cmovlel	%eax, %ebp
	addl	$-32, %ebp
	subl	%r13d, %ebp
	shrl	$5, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	movq	%rcx, %rdi
	.align	16, 0x90
.LBB0_24:                               # %vector.body207.prol
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	%xmm0, (%rdx,%rdi)
	movdqu	%xmm0, 16(%rdx,%rdi)
	addq	$32, %rdi
	incq	%rbp
	jne	.LBB0_24
.LBB0_25:                               # %vector.body207.preheader.split
                                        #   in Loop: Header=BB0_9 Depth=2
	addq	%r9, %rcx
	cmpq	$96, %rbx
	jb	.LBB0_28
# BB#26:                                # %vector.body207.preheader.split.split
                                        #   in Loop: Header=BB0_9 Depth=2
	movswq	%r13w, %rbx
	leaq	1(%rbx), %rbp
	cmpq	%rsi, %rbp
	cmovlq	%rsi, %rbp
	subq	%rbx, %rbp
	andq	$-32, %rbp
	addq	%rbx, %rbp
	subq	%rdi, %rbp
	leaq	112(%rdx,%rdi), %rdi
	.align	16, 0x90
.LBB0_27:                               # %vector.body207
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	%xmm0, -112(%rdi)
	movdqu	%xmm0, -96(%rdi)
	movdqu	%xmm0, -80(%rdi)
	movdqu	%xmm0, -64(%rdi)
	movdqu	%xmm0, -48(%rdi)
	movdqu	%xmm0, -32(%rdi)
	movdqu	%xmm0, -16(%rdi)
	movdqu	%xmm0, (%rdi)
	subq	$-128, %rdi
	addq	$-128, %rbp
	jne	.LBB0_27
.LBB0_28:                               # %middle.block208
                                        #   in Loop: Header=BB0_9 Depth=2
	cmpq	%rcx, %r8
	je	.LBB0_30
	.align	16, 0x90
.LBB0_29:                               # %for.body.i.78.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$-1, (%rdx,%rcx)
	incq	%rcx
	cmpq	%rsi, %rcx
	jl	.LBB0_29
.LBB0_30:                               # %for.end.i.80.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	%r10d, 56(%rsp)         # 4-byte Spill
	movw	%ax, 146(%rsp)
	movw	%ax, %r13w
.LBB0_32:                               # %addNBytes.exit85.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movw	$0, 1654(%rsp)
	movswq	1658(%rsp), %rdx
	xorl	%esi, %esi
	leaq	154(%rsp), %rdi
	callq	memset
	movw	$0, 152(%rsp)
.LBB0_33:                               # %if.end.25.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movswl	1664(%rsp), %eax
	imull	$156, %eax, %eax
	cltq
	imulq	$458129845, %rax, %rax  # imm = 0x1B4E81B5
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$36, %rax
	addl	%ecx, %eax
	leal	(%rax,%rax,4), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	addl	%eax, %ecx
	andl	$-4, %ecx
	shll	$14, %ecx
	movswl	%r13w, %eax
	subl	%eax, %r15d
	addl	$524288, %ecx           # imm = 0x80000
	sarl	$16, %ecx
	cmpl	%ecx, %r15d
	jl	.LBB0_34
# BB#51:                                # %if.end.30.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movswl	152(%rsp), %ebx
	movswl	%r14w, %edx
	cmpl	%edx, %ebx
	movw	%r14w, %bp
	cmovgew	%bx, %bp
	movzwl	%bx, %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB0_52
# BB#56:                                # %if.else.46.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	testw	%bp, %bp
	jle	.LBB0_57
# BB#60:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	%edx, 64(%rsp)          # 4-byte Spill
	movzwl	1662(%rsp), %r15d
	movswq	%ax, %r8
	addq	136(%rsp), %r8
	movl	56(%rsp), %ecx          # 4-byte Reload
	movswl	%cx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_62
# BB#61:                                # %if.then.i.43.i.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	incl	%r13d
	movw	%r13w, 146(%rsp)
	movb	$0, (%r8)
	jmp	.LBB0_63
.LBB0_52:                               # %if.then.44.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movw	%bp, 64(%rsp)           # 2-byte Spill
	movswq	%r13w, %rbp
	addq	136(%rsp), %rbp
	movl	56(%rsp), %ecx          # 4-byte Reload
	movswl	%cx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_54
# BB#53:                                # %if.then.i.97.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	incl	%r13d
	movw	%r13w, 146(%rsp)
	movb	$0, (%rbp)
	jmp	.LBB0_55
.LBB0_57:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	56(%rsp), %ecx          # 4-byte Reload
	movswl	%cx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_59
# BB#58:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movw	%bp, 64(%rsp)           # 2-byte Spill
	leal	1(%r13), %eax
	movw	%ax, 146(%rsp)
	movswq	%r13w, %rax
	movq	136(%rsp), %rcx
	movb	$-1, (%rcx,%rax)
	jmp	.LBB0_86
.LBB0_62:                               # %if.else.i.47.i.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movq	%r8, 56(%rsp)           # 8-byte Spill
	callq	gs_program_name
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movq	56(%rsp), %r8           # 8-byte Reload
.LBB0_63:                               # %for.body.i.i.i.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	64(%rsp), %r10d         # 4-byte Reload
	movswl	%bp, %eax
	movswl	%bx, %r11d
	cmpl	%r11d, %r10d
	movw	%bx, %cx
	cmovgew	%r14w, %cx
	movswl	%cx, %r13d
	cmpl	$2, %r13d
	movl	$1, %edx
	cmovll	%r13d, %edx
	subl	%edx, %r13d
	incq	%r13
	movq	%r13, %r9
	movabsq	$8589934560, %rdx       # imm = 0x1FFFFFFE0
	andq	%rdx, %r9
	je	.LBB0_64
# BB#65:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_9 Depth=2
	cmpl	%r11d, %r10d
	movw	%bx, %dx
	cmovgew	%r14w, %dx
	movswl	%dx, %edx
	cmpl	$2, %edx
	movl	$1, %esi
	cmovll	%edx, %esi
	subl	%esi, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rdx), %rsi
	leaq	154(%rsp), %rcx
	cmpq	%rsi, %rcx
	ja	.LBB0_67
# BB#66:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_9 Depth=2
	leaq	154(%rsp,%rdx), %rdx
	cmpq	%rdx, %rdi
	ja	.LBB0_67
.LBB0_64:                               #   in Loop: Header=BB0_9 Depth=2
	movq	72(%rsp), %rsi          # 8-byte Reload
	leaq	154(%rsp), %rdi
	xorl	%r9d, %r9d
	jmp	.LBB0_73
.LBB0_54:                               # %if.else.i.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB0_55:                               # %addByte.exit.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movswl	1662(%rsp), %ecx
	movswl	64(%rsp), %esi          # 2-byte Folded Reload
	xorl	%r9d, %r9d
	movq	72(%rsp), %rdi          # 8-byte Reload
	leaq	136(%rsp), %rdx
	movq	%rbp, %r8
	callq	makeCommandsForSequence
	jmp	.LBB0_86
.LBB0_67:                               # %vector.body42.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movw	%bp, %r8w
	cmpl	%r11d, %r10d
	movl	%r10d, %ecx
	movw	%bx, %dx
	cmovgew	%r14w, %dx
	movswl	%dx, %edx
	cmpl	$2, %edx
	movl	$1, %esi
	cmovll	%edx, %esi
	subl	%esi, %edx
	incq	%rdx
	movabsq	$8589934560, %rsi       # imm = 0x1FFFFFFE0
	andq	%rsi, %rdx
	addq	$-32, %rdx
	movq	%rdx, %rbp
	shrq	$5, %rbp
	btq	$5, %rdx
	movl	$0, %r10d
	jb	.LBB0_69
# BB#68:                                # %vector.body42.prol
                                        #   in Loop: Header=BB0_9 Depth=2
	movq	72(%rsp), %rdx          # 8-byte Reload
	movdqu	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movdqu	154(%rsp), %xmm2
	movups	170(%rsp), %xmm3
	pxor	%xmm0, %xmm2
	xorps	%xmm1, %xmm3
	movdqu	%xmm2, 154(%rsp)
	movups	%xmm3, 170(%rsp)
	movl	$32, %r10d
.LBB0_69:                               # %vector.body42.preheader.split
                                        #   in Loop: Header=BB0_9 Depth=2
	subl	%r9d, %eax
	movq	72(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%r9), %rsi
	leaq	154(%rsp,%r9), %rdi
	testq	%rbp, %rbp
	je	.LBB0_72
# BB#70:                                # %vector.body42.preheader.split.split
                                        #   in Loop: Header=BB0_9 Depth=2
	cmpl	%r11d, %ecx
	cmovlw	%bx, %r14w
	movswl	%r14w, %ebx
	movl	%ebx, %ebp
	notl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovlel	%edx, %ebp
	leal	1(%rbp,%rbx), %ebp
	incq	%rbp
	movabsq	$8589934560, %rdx       # imm = 0x1FFFFFFE0
	andq	%rdx, %rbp
	subq	%r10, %rbp
	leaq	202(%rsp), %rbx
	leaq	(%rbx,%r10), %rbx
	movq	16(%rsp), %rdx          # 8-byte Reload
	leaq	(%r10,%rdx), %rdx
	.align	16, 0x90
.LBB0_71:                               # %vector.body42
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-48(%rdx), %xmm0
	movups	-32(%rdx), %xmm1
	movups	-48(%rbx), %xmm2
	movups	-32(%rbx), %xmm3
	xorps	%xmm0, %xmm2
	xorps	%xmm1, %xmm3
	movups	%xmm2, -48(%rbx)
	movups	%xmm3, -32(%rbx)
	movdqu	-16(%rdx), %xmm0
	movups	(%rdx), %xmm1
	movdqu	-16(%rbx), %xmm2
	movups	(%rbx), %xmm3
	pxor	%xmm0, %xmm2
	xorps	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rbx)
	movups	%xmm3, (%rbx)
	addq	$64, %rbx
	addq	$64, %rdx
	addq	$-64, %rbp
	jne	.LBB0_71
.LBB0_72:                               #   in Loop: Header=BB0_9 Depth=2
	movw	%r8w, %bp
	movq	56(%rsp), %r8           # 8-byte Reload
.LBB0_73:                               # %middle.block43
                                        #   in Loop: Header=BB0_9 Depth=2
	cmpq	%r9, %r13
	je	.LBB0_76
# BB#74:                                # %for.body.i.i.i.preheader231
                                        #   in Loop: Header=BB0_9 Depth=2
	incl	%eax
	.align	16, 0x90
.LBB0_75:                               # %for.body.i.i.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rsi), %cl
	xorb	%cl, (%rdi)
	incq	%rsi
	incq	%rdi
	decl	%eax
	cmpl	$1, %eax
	jg	.LBB0_75
.LBB0_76:                               # %while.body.10.preheader.i.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	testw	%bp, %bp
	leaq	154(%rsp), %rax
	movw	%bp, %dx
	movw	%bp, 64(%rsp)           # 2-byte Spill
	je	.LBB0_86
	.align	16, 0x90
.LBB0_77:                               # %if.end.15.i.i.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_79 Depth 4
	cmpb	$0, (%rax)
	je	.LBB0_99
# BB#78:                                # %while.cond.24.i.i.i.preheader
                                        #   in Loop: Header=BB0_77 Depth=3
	leaq	1(%rax), %rsi
	.align	16, 0x90
.LBB0_79:                               # %while.cond.24.i.i.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_77 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movw	%dx, %bx
	movq	%rsi, %rcx
	movzwl	%bx, %edx
	cmpl	$1, %edx
	je	.LBB0_100
# BB#80:                                # %land.rhs.i.i.i
                                        #   in Loop: Header=BB0_79 Depth=4
	leal	-1(%rbx), %edx
	leaq	1(%rcx), %rsi
	cmpb	$0, (%rcx)
	jne	.LBB0_79
# BB#81:                                # %land.rhs.i.i.i.while.end.34.i.i.i_crit_edge
                                        #   in Loop: Header=BB0_77 Depth=3
	leaq	-1(%rcx), %r13
	xorl	%r14d, %r14d
	jmp	.LBB0_82
	.align	16, 0x90
.LBB0_99:                               # %if.end.20.i.i.i
                                        #   in Loop: Header=BB0_77 Depth=3
	incq	%rax
	incl	%r15d
	decl	%edx
	jmp	.LBB0_85
	.align	16, 0x90
.LBB0_100:                              # %while.end.34.i.i.isplit
                                        #   in Loop: Header=BB0_77 Depth=3
	leaq	-1(%rcx), %r13
	movb	$1, %r14b
	xorl	%edx, %edx
.LBB0_82:                               # %while.end.34.i.i.i
                                        #   in Loop: Header=BB0_77 Depth=3
	movq	%rax, %rsi
	leaq	154(%rsp), %rdi
	subq	%rdi, %rsi
	movq	72(%rsp), %rdi          # 8-byte Reload
	leaq	(%rsi,%rdi), %rdi
	subl	%eax, %ecx
	movswl	%cx, %esi
	movswl	%r15w, %ecx
	movswl	%dx, %r9d
	leaq	136(%rsp), %rdx
	movq	%r8, %rbp
	callq	makeCommandsForSequence
	movq	%rbp, %r8
	testb	%r14b, %r14b
	jne	.LBB0_86
# BB#83:                                # %while.end.34.i.i.i
                                        #   in Loop: Header=BB0_77 Depth=3
	movzbl	(%r8), %eax
	cmpl	$254, %eax
	je	.LBB0_86
# BB#84:                                # %if.end.47.i.i.i
                                        #   in Loop: Header=BB0_77 Depth=3
	addq	$2, %r13
	addl	$-2, %ebx
	movw	$1, %r15w
	movw	%bx, %dx
	movq	%r13, %rax
.LBB0_85:                               # %while.body.10.backedge.i.i.i
                                        #   in Loop: Header=BB0_77 Depth=3
	testw	%dx, %dx
	jne	.LBB0_77
	jmp	.LBB0_86
.LBB0_59:                               # %if.else.i.i.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movw	%bp, 64(%rsp)           # 2-byte Spill
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	.align	16, 0x90
.LBB0_86:                               # %if.end.48.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movw	64(%rsp), %ax           # 2-byte Reload
	movw	%ax, 152(%rsp)
	movswq	%ax, %rdx
	leaq	154(%rsp), %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	48(%rsp), %rbx          # 8-byte Reload
.LBB0_87:                               # %if.end.56.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	incw	1656(%rsp)
	incl	%r12d
	movswl	%r12w, %eax
	movswl	1660(%rsp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_9
	jmp	.LBB0_88
.LBB0_34:                               #   in Loop: Header=BB0_5 Depth=1
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	48(%rsp), %rbx          # 8-byte Reload
.LBB0_88:                               # %for.end.i.loopexit.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movzwl	146(%rsp), %r13d
	movq	32(%rsp), %rsi          # 8-byte Reload
.LBB0_89:                               # %for.end.i.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movswl	%r13w, %eax
	cmpl	$5, %eax
	jle	.LBB0_90
# BB#94:                                # %for.body.i.19.preheader.i
                                        #   in Loop: Header=BB0_5 Depth=1
	leal	-5(%r13), %eax
	movb	$64, (%rsi)
	movb	$71, 1(%rsi)
	movswl	%ax, %ecx
	movl	%ecx, %edx
	shrl	$16, %edx
	movb	%dl, 2(%rsi)
	movb	%ch, 3(%rsi)  # NOREX
	movb	%al, 4(%rsi)
	movzwl	1660(%rsp), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	136(%rsp), %r14
	movswq	%r13w, %rbp
	xorl	%ebx, %ebx
	movq	24(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB0_95:                               # %for.body.i.19.i
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rbx), %edi
	movq	%r13, %rsi
	callq	fputc
	incq	%rbx
	cmpq	%rbx, %rbp
	jne	.LBB0_95
# BB#96:                                # %dumpToPrinter.exit20.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movw	$0, 146(%rsp)
	movl	64(%rsp), %eax          # 4-byte Reload
	movzwl	%ax, %eax
	movzwl	%r12w, %ecx
	cmpl	%eax, %ecx
	movq	48(%rsp), %rbx          # 8-byte Reload
	jne	.LBB0_93
	jmp	.LBB0_97
	.align	16, 0x90
.LBB0_90:                               # %for.end.i.i.dumpPage.exit.thread.i_crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	movzwl	1660(%rsp), %eax
	movq	24(%rsp), %r13          # 8-byte Reload
.LBB0_91:                               # %dumpPage.exit.thread.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movzwl	%ax, %eax
	movzwl	%r12w, %ecx
	cmpl	%eax, %ecx
	movw	$0, 146(%rsp)
	je	.LBB0_97
# BB#92:                                # %dumpPage.exit.thread.i.do.body.backedge.i_crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	136(%rsp), %r14
	jmp	.LBB0_93
.LBB0_35:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, %ebp
	subl	%r13d, %ebp
	movswl	%bp, %r14d
	subl	%r14d, %r15d
	cmpl	%r15d, %eax
	jle	.LBB0_36
# BB#49:                                # %if.else.i.111.i
                                        #   in Loop: Header=BB0_5 Depth=1
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	movl	%r14d, %esi
	callq	errprintf_nomem
	movq	40(%rsp), %r15          # 8-byte Reload
	jmp	.LBB0_50
.LBB0_36:                               # %for.cond.preheader.i.95.i
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	%eax, %r14d
	testw	%bp, %bp
	movq	40(%rsp), %r15          # 8-byte Reload
	pcmpeqd	%xmm0, %xmm0
	jle	.LBB0_48
# BB#37:                                # %for.body.lr.ph.i.97.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movswq	%r13w, %rbx
	movq	136(%rsp), %rdx
	movslq	%r14d, %rsi
	leaq	1(%rbx), %rdi
	subl	%r13d, %r10d
	movswl	%r10w, %ecx
	leal	(%rcx,%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	cmovgeq	%rdi, %rcx
	leaq	-1(%rcx), %rdi
	subq	%rbx, %rdi
	cmpq	$-1, %rdi
	je	.LBB0_47
# BB#38:                                # %overflow.checked
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, %r8d
	subq	%rbx, %rcx
	movq	%rcx, %r11
	andq	$-32, %r11
	leaq	(%rcx,%rbx), %rdi
	andq	$-32, %rcx
	je	.LBB0_46
# BB#39:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movswq	%r13w, %r9
	leaq	1(%r9), %r10
	movswl	%r8w, %ecx
	leal	(%rcx,%rax), %ecx
	movslq	%ecx, %r15
	cmpq	%r15, %r10
	cmovgeq	%r10, %r15
	subq	%r9, %r15
	addq	$-32, %r15
	movl	%r15d, %ecx
	shrl	$5, %ecx
	incl	%ecx
	testb	$3, %cl
	movq	%rbx, %rcx
	je	.LBB0_42
# BB#40:                                # %vector.body.prol.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	movswl	%r8w, %ecx
	leal	(%rcx,%rax), %ecx
	movslq	%ecx, %rdi
	cmpq	%rdi, %r10
	cmovgl	%r10d, %edi
	addl	$-32, %edi
	subl	%r13d, %edi
	shrl	$5, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	movq	%rbx, %rcx
	.align	16, 0x90
.LBB0_41:                               # %vector.body.prol
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%rdx,%rcx)
	movdqu	%xmm0, 16(%rdx,%rcx)
	addq	$32, %rcx
	incq	%rdi
	jne	.LBB0_41
.LBB0_42:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB0_5 Depth=1
	addq	%r11, %rbx
	cmpq	$96, %r15
	movq	40(%rsp), %r15          # 8-byte Reload
	jb	.LBB0_45
# BB#43:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB0_5 Depth=1
	movswl	%r8w, %edi
	addl	%edi, %eax
	cltq
	cmpq	%rax, %r10
	cmovgeq	%r10, %rax
	subq	%r9, %rax
	andq	$-32, %rax
	addq	%r9, %rax
	subq	%rcx, %rax
	leaq	112(%rdx,%rcx), %rcx
	.align	16, 0x90
.LBB0_44:                               # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rcx)
	movdqu	%xmm0, -96(%rcx)
	movdqu	%xmm0, -80(%rcx)
	movdqu	%xmm0, -64(%rcx)
	movdqu	%xmm0, -48(%rcx)
	movdqu	%xmm0, -32(%rcx)
	movdqu	%xmm0, -16(%rcx)
	movdqu	%xmm0, (%rcx)
	subq	$-128, %rcx
	addq	$-128, %rax
	jne	.LBB0_44
.LBB0_45:                               #   in Loop: Header=BB0_5 Depth=1
	movq	64(%rsp), %rdi          # 8-byte Reload
.LBB0_46:                               # %middle.block
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpq	%rbx, %rdi
	je	.LBB0_48
	.align	16, 0x90
.LBB0_47:                               # %for.body.i.104.i
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rdx,%rbx)
	incq	%rbx
	cmpq	%rsi, %rbx
	jl	.LBB0_47
.LBB0_48:                               # %for.end.i.107.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movw	%r14w, 146(%rsp)
	movw	%r14w, %r13w
.LBB0_50:                               # %addNBytes.exit112.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	subw	%bp, 1654(%rsp)
	jmp	.LBB0_89
.LBB0_97:                               # %for.body.i.preheader.i
	movl	$64, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	$71, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	$255, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	$64, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	$70, %edi
	movq	%r13, %rsi
	callq	fputc
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.5, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*24(%rdi)
.LBB0_98:                               # %hl7x0_print_page.exit
	movl	%ebx, %eax
	addq	$1672, %rsp             # imm = 0x688
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	hl720_print_page, .Lfunc_end0-hl720_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	hl7x0_open,@function
hl7x0_open:                             # @hl7x0_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$hl7x0_open.m_a4, %eax
	movl	$hl7x0_open.m_letter, %esi
	cmoveq	%rax, %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end1:
	.size	hl7x0_open, .Lfunc_end1-hl7x0_open
	.cfi_endproc

	.align	16, 0x90
	.type	hl7x0_close,@function
hl7x0_close:                            # @hl7x0_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB2_1
# BB#2:                                 # %if.end
	movq	17176(%rbx), %rsi
	movl	$.L.str.2, %edi
	callq	fputs
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close_printer  # TAILCALL
.LBB2_1:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end2:
	.size	hl7x0_close, .Lfunc_end2-hl7x0_close
	.cfi_endproc

	.align	16, 0x90
	.type	addNBytes,@function
addNBytes:                              # @addNBytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 32
.Ltmp20:
	.cfi_offset %rbx, -24
.Ltmp21:
	.cfi_offset %r14, -16
	movl	%edx, %ebx
	movswl	10(%rdi), %eax
	movswl	8(%rdi), %ecx
	subl	%ebx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_1
# BB#6:                                 # %if.else
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	errprintf_nomem         # TAILCALL
.LBB3_1:                                # %for.cond.preheader
	testw	%bx, %bx
	jle	.LBB3_2
# BB#3:                                 # %for.body.lr.ph
	movslq	%eax, %rcx
	movslq	%ebx, %rdx
	.align	16, 0x90
.LBB3_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rax
	movb	%sil, (%rax,%rcx)
	incq	%rcx
	movswq	10(%rdi), %rax
	addq	%rdx, %rax
	cmpq	%rax, %rcx
	jl	.LBB3_4
	jmp	.LBB3_5
.LBB3_2:
	addl	%ebx, %eax
.LBB3_5:                                # %if.end
	movw	%ax, 10(%rdi)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	addNBytes, .Lfunc_end3-addNBytes
	.cfi_endproc

	.align	16, 0x90
	.type	makeCommandsForSequence,@function
makeCommandsForSequence:                # @makeCommandsForSequence
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
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 64
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
	movl	%r9d, %r15d
	movq	%r8, %r12
	movq	%rdx, %r14
	movl	%esi, %ebp
	movzbl	(%r12), %eax
	cmpl	$253, %eax
	jne	.LBB4_16
# BB#1:
	movq	%rdi, %rbx
.LBB4_2:                                # %if.then
	addl	%r15d, %ebp
	movswl	%bp, %esi
	movswl	%cx, %ecx
	movq	%rbx, %rdi
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_16:                               # %while.body.9.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_17 Depth 2
                                        #     Child Loop BB4_8 Depth 2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB4_17:                               # %while.body.9
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%rdi,%rax), %rbx
	movzwl	%bp, %edx
	cmpl	$1, %edx
	je	.LBB4_18
# BB#4:                                 # %if.end.16
                                        #   in Loop: Header=BB4_17 Depth=2
	leal	-1(%rbp), %ebp
	movzbl	(%rdi,%rax), %edx
	movzbl	1(%rdi,%rax), %esi
	leaq	1(%rax), %rax
	cmpl	%edx, %esi
	jne	.LBB4_17
# BB#5:                                 # %while.end
                                        #   in Loop: Header=BB4_16 Depth=1
	leaq	-1(%rbx), %r13
	cmpq	%r13, %rdi
	je	.LBB4_6
# BB#12:                                # %if.then.27
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	%r13d, %eax
	subl	%edi, %eax
	movswl	%ax, %esi
	movswl	%cx, %ecx
	movq	%r14, %rdx
	callq	makeSequenceWithoutRepeat
	movb	(%r12), %al
	incb	%al
	movb	%al, (%r12)
	movzbl	%al, %eax
	cmpl	$253, %eax
	je	.LBB4_14
# BB#13:                                #   in Loop: Header=BB4_16 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB4_7
.LBB4_6:                                #   in Loop: Header=BB4_16 Depth=1
	movq	%rdi, %r13
.LBB4_7:                                # %if.end.58.lr.ph
                                        #   in Loop: Header=BB4_16 Depth=1
	movb	(%r13), %al
	.align	16, 0x90
.LBB4_8:                                # %if.end.58
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%al, %edx
	movzbl	(%rbx), %esi
	cmpl	%edx, %esi
	jne	.LBB4_15
# BB#9:                                 # %if.end.64
                                        #   in Loop: Header=BB4_8 Depth=2
	incq	%rbx
	decw	%bp
	jne	.LBB4_8
	jmp	.LBB4_10
.LBB4_15:                               # %while.end.67
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	%ebx, %eax
	subl	%r13d, %eax
	movswl	%ax, %esi
	movswl	%cx, %ecx
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	makeSequenceWithRepeat
	movb	(%r12), %al
	incb	%al
	movb	%al, (%r12)
	movzbl	%al, %eax
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	movq	%rbx, %rdi
	jne	.LBB4_16
	jmp	.LBB4_2
.LBB4_18:                               # %if.then.13
	subl	%edi, %ebx
	movswl	%bx, %esi
	movswl	%cx, %ecx
.LBB4_3:                                # %cleanup
	movq	%r14, %rdx
	callq	makeSequenceWithoutRepeat
.LBB4_11:                               # %cleanup
	incb	(%r12)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_10:                               # %if.then.52
	subl	%r13d, %ebx
	movswl	%bx, %esi
	movswl	%cx, %ecx
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	makeSequenceWithRepeat
	jmp	.LBB4_11
.LBB4_14:                               # %if.then.38
	leal	1(%rbp), %eax
	addl	%r15d, %eax
	movswl	%ax, %esi
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	jmp	.LBB4_3
.Lfunc_end4:
	.size	makeCommandsForSequence, .Lfunc_end4-makeCommandsForSequence
	.cfi_endproc

	.align	16, 0x90
	.type	makeSequenceWithoutRepeat,@function
makeSequenceWithoutRepeat:              # @makeSequenceWithoutRepeat
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
	subq	$24, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 80
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	leal	-1(%r14), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movswl	10(%rbx), %eax
	movslq	%eax, %r13
	movq	(%rbx), %r15
	movswl	8(%rbx), %eax
	cmpl	%eax, %r13d
	jge	.LBB5_2
# BB#1:                                 # %if.then.i.25
	leal	1(%r13), %eax
	movw	%ax, 10(%rbx)
	movb	$0, (%r15,%r13)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else.i.27
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB5_3:                                # %addByte.exit
	movswl	%bp, %eax
	cmpl	$15, %eax
	jl	.LBB5_5
# BB#4:                                 # %if.then
	addl	$-15, %ebp
	movswl	%bp, %esi
	movq	%rbx, %rdi
	callq	addCodedNumber
	movl	$120, %ebp
	jmp	.LBB5_6
.LBB5_5:                                # %if.else
	andl	$31, %ebp
	shll	$3, %ebp
.LBB5_6:                                # %if.end
	movl	20(%rsp), %eax          # 4-byte Reload
	cwtl
	cmpl	$7, %eax
	jl	.LBB5_8
# BB#7:                                 # %if.then.16
	leal	-8(%r14), %eax
	movswl	%ax, %esi
	movq	%rbx, %rdi
	callq	addCodedNumber
	orl	$7, %ebp
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.23
	orl	%eax, %ebp
.LBB5_9:                                # %if.end.28
	movswl	10(%rbx), %eax
	movswl	8(%rbx), %ecx
	movswl	%r14w, %edx
	subl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB5_10
# BB#11:                                # %if.else.i
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	jmp	.LBB5_12
.LBB5_10:                               # %if.then.i
	movslq	%eax, %rdi
	addq	(%rbx), %rdi
	movswq	%r14w, %rdx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	memcpy
	addw	%r14w, 10(%rbx)
.LBB5_12:                               # %addArray.exit
	movb	%bpl, (%r15,%r13)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	makeSequenceWithoutRepeat, .Lfunc_end5-makeSequenceWithoutRepeat
	.cfi_endproc

	.align	16, 0x90
	.type	makeSequenceWithRepeat,@function
makeSequenceWithRepeat:                 # @makeSequenceWithRepeat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 80
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	leal	-2(%r12), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movswl	10(%r14), %eax
	movslq	%eax, %rbp
	movq	(%r14), %r15
	movswl	8(%r14), %eax
	cmpl	%eax, %ebp
	jge	.LBB6_2
# BB#1:                                 # %if.then.i.27
	leal	1(%rbp), %eax
	movw	%ax, 10(%r14)
	movb	$0, (%r15,%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else.i.31
	callq	gs_program_name
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB6_3:                                # %addByte.exit32
	movswl	%bx, %eax
	cmpl	$3, %eax
	jl	.LBB6_5
# BB#4:                                 # %if.then
	addl	$-3, %ebx
	movswl	%bx, %esi
	movq	%r14, %rdi
	callq	addCodedNumber
	movl	$224, %ebx
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	shll	$5, %ebx
	andl	$96, %ebx
	orl	$128, %ebx
.LBB6_6:                                # %if.end
	movl	20(%rsp), %eax          # 4-byte Reload
	cwtl
	cmpl	$31, %eax
	jl	.LBB6_8
# BB#7:                                 # %if.then.16
	addl	$-33, %r12d
	movswl	%r12w, %esi
	movq	%r14, %rdi
	callq	addCodedNumber
	orl	$31, %ebx
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.23
	orl	%eax, %ebx
.LBB6_9:                                # %if.end.28
	movswl	10(%r14), %eax
	movswl	8(%r14), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_11
# BB#10:                                # %if.then.i
	movslq	%eax, %rcx
	movq	8(%rsp), %rdx           # 8-byte Reload
	movb	(%rdx), %dl
	incl	%eax
	movw	%ax, 10(%r14)
	movq	(%r14), %rax
	movb	%dl, (%rax,%rcx)
	jmp	.LBB6_12
.LBB6_11:                               # %if.else.i
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB6_12:                               # %addByte.exit
	movb	%bl, (%r15,%rbp)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	makeSequenceWithRepeat, .Lfunc_end6-makeSequenceWithRepeat
	.cfi_endproc

	.align	16, 0x90
	.type	addCodedNumber,@function
addCodedNumber:                         # @addCodedNumber
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 32
.Ltmp64:
	.cfi_offset %rbx, -32
.Ltmp65:
	.cfi_offset %r14, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movslq	%r14d, %rax
	imulq	$-2139062143, %rax, %rbp # imm = 0xFFFFFFFF80808081
	shrq	$32, %rbp
	leal	(%rax,%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	shrl	$7, %eax
	addl	%ecx, %eax
	movswl	%ax, %edx
	movl	$255, %esi
	callq	addNBytes
	movswl	10(%rbx), %eax
	movswl	8(%rbx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_2
# BB#1:                                 # %addByte.exit
	movslq	%eax, %rcx
	addl	%r14d, %ebp
	movl	%ebp, %edx
	shrl	$31, %edx
	shrl	$7, %ebp
	addl	%edx, %ebp
	imull	$255, %ebp, %edx
	subl	%edx, %r14d
	incl	%eax
	movw	%ax, 10(%rbx)
	movq	(%rbx), %rax
	movb	%r14b, (%rax,%rcx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB7_2:                                # %if.else.i
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	errprintf_nomem         # TAILCALL
.Lfunc_end7:
	.size	addCodedNumber, .Lfunc_end7-addCodedNumber
	.cfi_endproc

	.type	prn_hl_procs,@object    # @prn_hl_procs
	.section	.rodata,"a",@progbits
	.align	8
prn_hl_procs:
	.quad	hl7x0_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	hl7x0_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	prn_hl_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hl7x0"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_hl7x0_device,@object # @gs_hl7x0_device
	.section	.rodata,"a",@progbits
	.globl	gs_hl7x0_device
	.align	8
gs_hl7x0_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_hl_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	hl720_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.size	gs_hl7x0_device, 18472

	.type	hl7x0_open.m_a4,@object # @hl7x0_open.m_a4
	.align	16
hl7x0_open.m_a4:
	.long	1036831949              # float 1.000000e-01
	.long	1041865114              # float 1.500000e-01
	.long	1032805417              # float 7.000000e-02
	.long	1028443341              # float 5.000000e-02
	.size	hl7x0_open.m_a4, 16

	.type	hl7x0_open.m_letter,@object # @hl7x0_open.m_letter
	.align	16
hl7x0_open.m_letter:
	.long	1049414861              # float 2.750000e-01
	.long	1045220557              # float 2.000000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1032805417              # float 7.000000e-02
	.size	hl7x0_open.m_letter, 16

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"@N@N@N@N@X"
	.size	.L.str.2, 11

	.type	.Lhl720_print_page.prefix,@object # @hl720_print_page.prefix
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lhl720_print_page.prefix:
	.asciz	"\033%-12345X@PJL\n@PJL ENTER LANGUAGE = HBP\n@L"
	.size	.Lhl720_print_page.prefix, 43

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Could not add byte to command\n"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"hl7x0_print_page"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"hl7X0_print_page"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Could not add %d bytes to command\n"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Could not add byte array to command\n"
	.size	.L.str.7, 37


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
