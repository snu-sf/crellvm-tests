	.text
	.file	"gdevifno.bc"
	.align	16, 0x90
	.type	inferno_print_page,@function
inferno_print_page:                     # @inferno_print_page
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%rsi, %rbp
	movq	%rdi, %r12
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebx
	cmpl	$16385, %ebx            # imm = 0x4001
	jl	.LBB0_3
# BB#1:                                 # %if.then
	movq	24(%r12), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.4, %esi
	jmp	.LBB0_2
.LBB0_3:                                # %if.end
	cmpl	$0, 18488(%r12)
	je	.LBB0_4
# BB#5:                                 # %if.then.5
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	18472(%r12), %ebp
	movl	%ebp, 18476(%r12)
	movl	$0, 18472(%r12)
	movl	$0, 18488(%r12)
	jmp	.LBB0_6
.LBB0_4:                                # %if.end.if.end.9_crit_edge
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	18476(%r12), %ebp
.LBB0_6:                                # %if.end.9
	movslq	832(%r12), %r14
	movl	%r14d, %r13d
	movl	836(%r12), %esi
	movl	$8, %eax
	movb	%bpl, %cl
	shrl	%cl, %eax
	movslq	%eax, %rcx
	leaq	-1(%r14,%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	24(%r12), %r15
	testl	%esi, %esi
	jle	.LBB0_9
# BB#7:                                 # %lor.lhs.false.i
	testl	%r14d, %r14d
	jle	.LBB0_9
# BB#8:                                 # %lor.lhs.false.i
	testl	%eax, %eax
	jle	.LBB0_9
# BB#11:                                # %if.end.i
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	leal	44197(%rax,%rax), %esi
	movl	$.L.str.9, %edx
	movq	%r15, %rdi
	movq	%rax, 24(%rsp)          # 8-byte Spill
	callq	*64(%r15)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB0_10
# BB#12:                                # %initwriteimage.exit
	movq	8(%rsp), %rax           # 8-byte Reload
	shlq	$32, %rax
	orq	%r13, %rax
	movq	24(%rsp), %rsi          # 8-byte Reload
	leal	(%rsi,%rsi), %ecx
	addl	$1061, %ecx             # imm = 0x425
	leaq	43136(%r15), %rdx
	movq	%rdx, 6072(%r15)
	movq	%rdx, 6080(%r15)
	movq	$0, 6096(%r15)
	movl	%ecx, 6088(%r15)
	movl	$0, 6092(%r15)
	movq	$0, 8(%r15)
	movq	%rax, 16(%r15)
	movq	$0, 24(%r15)
	movq	%rax, 32(%r15)
	movl	$0, 36(%r15)
	leaq	44(%r15), %rax
	leaq	6044(%r15), %rcx
	movq	%rcx, 6056(%r15)
	movq	%rax, 6064(%r15)
	movq	%rax, 6048(%r15)
	movl	%esi, 40(%r15)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%r15)
	leaq	6121(%r15), %rax
	movq	%rax, 6112(%r15)
	movl	$0, 6104(%r15)
	leaq	6256(%r15), %rdi
	xorl	%esi, %esi
	movl	$12288, %edx            # imm = 0x3000
	callq	memset
	movq	%r15, %r13
	addq	$18544, %r13            # imm = 0x4870
	xorl	%esi, %esi
	movl	$24576, %edx            # imm = 0x6000
	movq	%r13, %rdi
	callq	memset
	movq	%r13, 43120(%r15)
	movl	$1, 43132(%r15)
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%eax, (%rsp)
	movl	$.L.str.10, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %r9d
	movl	%ebp, %edx
	callq	fprintf
	movq	24(%r12), %rdi
	movl	$.L.str.6, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB0_15
# BB#13:                                # %for.cond.preheader
	cmpl	$0, 836(%r12)
	jle	.LBB0_36
# BB#14:                                # %for.body.lr.ph
	movslq	%ebp, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	.Linferno_print_page.ppb(,%rax,4), %r14d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_17:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
	movq	%r12, %rdi
	movl	%r13d, %esi
	movq	16(%rsp), %rdx          # 8-byte Reload
	leaq	32(%rsp), %rcx
	callq	gdev_prn_get_bits
	movl	832(%r12), %eax
	testl	%eax, %eax
	movl	$0, %ebx
	jle	.LBB0_32
# BB#18:                                # %for.body.42.lr.ph
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	%r13d, %eax
	shrl	$31, %eax
	leal	(%rax,%r13), %eax
	andl	$-2, %eax
	movl	%r13d, %r8d
	subl	%eax, %r8d
	movl	$1, %edi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_19:                               # %for.body.42
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%rdi), %eax
	movslq	%eax, %rcx
	movq	32(%rsp), %rax
	movzbl	(%rax,%rcx), %edx
	shll	$8, %edx
	movslq	%edi, %rcx
	movzbl	(%rax,%rcx), %ecx
	orl	%edx, %ecx
	testl	%ebp, %ebp
	je	.LBB0_27
# BB#20:                                # %for.body.42
                                        #   in Loop: Header=BB0_19 Depth=2
	cmpl	$2, %ebp
	jne	.LBB0_21
# BB#23:                                # %sw.bb.57
                                        #   in Loop: Header=BB0_19 Depth=2
	notl	%ecx
	testb	$1, %bl
	jne	.LBB0_26
# BB#24:                                # %if.then.63
                                        #   in Loop: Header=BB0_19 Depth=2
	andb	$15, %cl
	movl	%ebx, %edx
	shrl	$31, %edx
	leal	(%rdx,%rbx), %edx
	sarl	%edx
	jmp	.LBB0_25
	.align	16, 0x90
.LBB0_27:                               # %sw.bb.81
                                        #   in Loop: Header=BB0_19 Depth=2
	notl	%ecx
	testb	$7, %bl
	je	.LBB0_28
# BB#29:                                # %if.else.95
                                        #   in Loop: Header=BB0_19 Depth=2
	movl	%ebx, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%rbx), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movb	(%rax,%rsi), %dl
	addb	%dl, %dl
	andb	$1, %cl
	jmp	.LBB0_30
	.align	16, 0x90
.LBB0_21:                               # %for.body.42
                                        #   in Loop: Header=BB0_19 Depth=2
	cmpl	$3, %ebp
	jne	.LBB0_31
# BB#22:                                # %sw.bb
                                        #   in Loop: Header=BB0_19 Depth=2
	movzwl	%cx, %ecx
	movq	18496(%r12), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movl	%ebx, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rbx), %ecx
	andl	$14, %ecx
	movl	%ebx, %esi
	subl	%ecx, %esi
	leal	(%r8,%rsi,2), %ecx
	shll	$3, %ecx
	shrq	%cl, %rdx
	movb	%dl, (%rax,%rbx)
	jmp	.LBB0_31
.LBB0_26:                               # %if.else
                                        #   in Loop: Header=BB0_19 Depth=2
	movl	%ebx, %edx
	shrl	$31, %edx
	leal	(%rdx,%rbx), %edx
	sarl	%edx
	movslq	%edx, %rsi
	movb	(%rax,%rsi), %dl
	shlb	$4, %dl
	andb	$15, %cl
.LBB0_30:                               # %for.inc
                                        #   in Loop: Header=BB0_19 Depth=2
	orb	%dl, %cl
	movb	%cl, (%rax,%rsi)
	jmp	.LBB0_31
.LBB0_28:                               # %if.then.88
                                        #   in Loop: Header=BB0_19 Depth=2
	andb	$1, %cl
	movl	%ebx, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%rbx), %edx
	sarl	$3, %edx
.LBB0_25:                               # %for.inc
                                        #   in Loop: Header=BB0_19 Depth=2
	movslq	%edx, %rdx
	movb	%cl, (%rax,%rdx)
.LBB0_31:                               # %for.inc
                                        #   in Loop: Header=BB0_19 Depth=2
	incq	%rbx
	movslq	832(%r12), %rax
	addl	$2, %edi
	cmpq	%rax, %rbx
	jl	.LBB0_19
.LBB0_32:                               # %for.end
                                        #   in Loop: Header=BB0_17 Depth=1
	cltd
	idivl	%r14d
	testl	%edx, %edx
	je	.LBB0_34
# BB#33:                                # %if.then.114
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	%r14d, %ecx
	subl	%edx, %ecx
	movq	8(%rsp), %rax           # 8-byte Reload
	imull	.Linferno_print_page.bpp(,%rax,4), %ecx
	decl	%ebx
	movl	%ebx, %eax
	cltd
	idivl	%r14d
	cltq
	movq	32(%rsp), %rdx
	movzbl	(%rdx,%rax), %esi
	shll	%cl, %esi
	movb	%sil, (%rdx,%rax)
.LBB0_34:                               # %if.end.129
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	32(%rsp), %rsi
	movq	24(%r12), %rcx
	movq	%r15, %rdi
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	writeimageblock
	cmpl	$-2, %eax
	je	.LBB0_35
# BB#16:                                # %for.cond
                                        #   in Loop: Header=BB0_17 Depth=1
	incl	%r13d
	cmpl	836(%r12), %r13d
	jl	.LBB0_17
.LBB0_36:                               # %for.end.141
	movq	24(%r12), %rdi
	movl	$.L.str.6, %edx
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r12), %rcx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	writeimageblock
	cmpl	$-2, %eax
	movl	$-100, %eax
	cmovnel	%ebx, %eax
	jmp	.LBB0_37
.LBB0_9:                                # %if.then.i
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	errprintf
.LBB0_10:                               # %if.then.18
	movq	24(%r12), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.5, %esi
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	callq	errprintf
	movl	$-100, %eax
.LBB0_37:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_15:                               # %if.then.29
	movq	24(%r12), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-25, %eax
	jmp	.LBB0_37
.LBB0_35:                               # %if.then.134
	movq	24(%r12), %rdi
	movl	$.L.str.6, %edx
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movl	$-100, %eax
	jmp	.LBB0_37
.Lfunc_end0:
	.size	inferno_print_page, .Lfunc_end0-inferno_print_page
	.cfi_endproc

	.globl	init_p9color
	.align	16, 0x90
	.type	init_p9color,@function
init_p9color:                           # @init_p9color
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
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_1:                                # %for.cond.1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
                                        #         Child Loop BB1_5 Depth 4
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movq	%rdi, %rax
	.align	16, 0x90
.LBB1_2:                                # %for.body.3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
                                        #         Child Loop BB1_5 Depth 4
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movl	%esi, -8(%rsp)          # 4-byte Spill
	cmpl	%esi, %ecx
	movl	%esi, %edx
	cmovgel	%ecx, %edx
	movl	%edx, -4(%rsp)          # 4-byte Spill
	xorl	%r12d, %r12d
	movq	%rax, %r15
	.align	16, 0x90
.LBB1_3:                                # %for.body.7
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_5 Depth 4
	cmpl	%esi, %r12d
	movl	%esi, %eax
	cmovgel	%r12d, %eax
	cmpl	%ecx, %eax
	cmovll	%ecx, %eax
	movl	-4(%rsp), %r8d          # 4-byte Reload
	cmpl	%r8d, %r12d
	cmovgel	%r12d, %r8d
	testl	%r8d, %r8d
	movl	%r8d, %ebp
	movl	$1, %edx
	cmovel	%edx, %ebp
	movq	$0, (%r15)
	testl	%ebp, %ebp
	jle	.LBB1_7
# BB#4:                                 # %for.body.20.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=3
	leal	(%rax,%rax), %ebx
	andl	$3, %eax
	addl	%eax, %eax
	subl	%eax, %ebx
	movl	%r12d, %r11d
	imull	%ebx, %r11d
	movl	%esi, %edi
	imull	%ebx, %edi
	imull	%ecx, %ebx
	andl	$3, %r8d
	leal	(,%rbp,8), %r9d
	imull	$7, %ebp, %r14d
	movl	%r8d, %r13d
	shll	$4, %r13d
	addl	%ebp, %ebp
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB1_5:                                # %for.body.20
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        #       Parent Loop BB1_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leal	(%r11,%r14), %eax
	cltd
	idivl	%r9d
	movl	%eax, %ecx
	leal	(%rdi,%r14), %eax
	cltd
	idivl	%r9d
	movl	%eax, %esi
	leal	(%rbx,%r14), %eax
	cltd
	idivl	%r9d
	movl	%r8d, %edx
	subl	%ecx, %edx
	shll	$6, %ecx
	orl	%r13d, %ecx
	leal	(%rdx,%rsi,4), %edx
	addl	%eax, %edx
	andl	$15, %edx
	orl	%ecx, %edx
	shlq	$8, %r10
	orq	$255, %r10
	movslq	%edx, %rax
	subq	%rax, %r10
	subl	%ebp, %r14d
	jg	.LBB1_5
# BB#6:                                 # %for.cond.18.for.end_crit_edge
                                        #   in Loop: Header=BB1_3 Depth=3
	movq	%r10, (%r15)
	movq	-16(%rsp), %rcx         # 8-byte Reload
	movl	-8(%rsp), %esi          # 4-byte Reload
.LBB1_7:                                # %for.end
                                        #   in Loop: Header=BB1_3 Depth=3
	addq	$8, %r15
	incl	%r12d
	cmpl	$16, %r12d
	jne	.LBB1_3
# BB#8:                                 # %for.end.40
                                        #   in Loop: Header=BB1_2 Depth=2
	movq	-24(%rsp), %rax         # 8-byte Reload
	subq	$-128, %rax
	incl	%esi
	cmpl	$16, %esi
	jne	.LBB1_2
# BB#9:                                 # %for.inc.44
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rsp), %rdi         # 8-byte Reload
	addq	$2048, %rdi             # imm = 0x800
	incl	%ecx
	cmpl	$16, %ecx
	jne	.LBB1_1
# BB#10:                                # %for.end.46
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	init_p9color, .Lfunc_end1-init_p9color
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.text
	.align	16, 0x90
	.type	inferno_open,@function
inferno_open:                           # @inferno_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$3, 18472(%rbx)
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [0,0,0,4]
	movups	%xmm0, 18480(%rbx)
	movq	24(%rbx), %rdi
	movl	$32768, %esi            # imm = 0x8000
	movl	$.L.str.2, %edx
	callq	*64(%rdi)
	movq	%rax, 18496(%rbx)
	testq	%rax, %rax
	je	.LBB2_1
# BB#2:                                 # %if.end
	movq	%rax, %rdi
	callq	init_p9color
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.LBB2_1:                                # %cleanup
	movl	$-25, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	inferno_open, .Lfunc_end2-inferno_open
	.cfi_endproc

	.align	16, 0x90
	.type	inferno_close,@function
inferno_close:                          # @inferno_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rdi
	movq	18496(%rbx), %rsi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	movq	%rbx, %rdi
	callq	gdev_prn_close
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end3:
	.size	inferno_close, .Lfunc_end3-inferno_close
	.cfi_endproc

	.align	16, 0x90
	.type	inferno_rgb2cmap,@function
inferno_rgb2cmap:                       # @inferno_rgb2cmap
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18492(%rdi), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movw	(%rsi), %ax
	movw	2(%rsi), %r10w
	movzwl	%ax, %r9d
	movzwl	%r10w, %r8d
	movw	4(%rsi), %si
	movzwl	%si, %r11d
	cmpl	$15, %ecx
	ja	.LBB4_2
# BB#1:                                 # %if.then
	movl	$16, %eax
	subl	%ecx, %eax
	movb	%al, %cl
	shrl	%cl, %r9d
	movb	%al, %cl
	shrl	%cl, %r8d
	movb	%al, %cl
	shrl	%cl, %r11d
	jmp	.LBB4_4
.LBB4_2:                                # %if.else
	cmpl	$17, %ecx
	jb	.LBB4_5
# BB#3:                                 # %if.then.19
	addl	$-16, %ecx
	shll	%cl, %r9d
	shll	%cl, %r8d
	shll	%cl, %r11d
.LBB4_4:                                # %if.end.32
	movw	%r9w, %ax
	movw	%r8w, %r10w
	movw	%r11w, %si
.LBB4_5:                                # %if.end.32
	movzwl	%ax, %ecx
	andl	%edx, %ecx
	movzwl	%r10w, %r8d
	andl	%edx, %r8d
	movzwl	%si, %eax
	andl	%edx, %eax
	cmpl	%edx, %ecx
	je	.LBB4_15
# BB#6:                                 # %if.end.32
	testl	%ecx, %ecx
	je	.LBB4_15
# BB#7:                                 # %if.end.32
	cmpl	%r8d, %ecx
	jne	.LBB4_15
# BB#8:                                 # %if.end.32
	cmpl	%eax, %r8d
	jne	.LBB4_15
# BB#9:                                 # %if.then.57
	cmpl	$10, %ecx
	je	.LBB4_11
# BB#10:                                # %if.then.57
	cmpl	$5, %ecx
	jne	.LBB4_13
.LBB4_11:                               # %if.then.64
	cmpl	$0, 18472(%rdi)
	jg	.LBB4_16
# BB#12:                                # %if.then.67
	movl	$1, 18472(%rdi)
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.78
	movl	$3, 18472(%rdi)
.LBB4_16:                               # %if.end.80
	movl	$1, 18488(%rdi)
	shll	$4, %eax
	orl	%r8d, %eax
	shll	$4, %eax
	orl	%ecx, %eax
	retq
.LBB4_13:                               # %if.else.70
	cmpl	$1, 18472(%rdi)
	jg	.LBB4_16
# BB#14:                                # %if.then.74
	movl	$2, 18472(%rdi)
	jmp	.LBB4_16
.Lfunc_end4:
	.size	inferno_rgb2cmap, .Lfunc_end4-inferno_rgb2cmap
	.cfi_endproc

	.align	16, 0x90
	.type	inferno_cmap2rgb,@function
inferno_cmap2rgb:                       # @inferno_cmap2rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18492(%rdi), %r9d
	movl	$-15, %eax
	cmpq	$255, %rsi
	ja	.LBB5_5
# BB#1:                                 # %if.end
	movl	$1, %eax
	movb	%r9b, %cl
	shll	%cl, %eax
	decl	%eax
	leal	(%r9,%r9), %ecx
	movq	%rsi, %r8
	shrq	%cl, %r8
	movslq	%eax, %rdi
	andq	%rdi, %r8
	movw	%r8w, 4(%rdx)
	movq	%rsi, %r10
	movb	%r9b, %cl
	shrq	%cl, %r10
	andq	%rdi, %r10
	movw	%r10w, 2(%rdx)
	andq	%rsi, %rdi
	movw	%di, (%rdx)
	cmpl	$15, %r9d
	ja	.LBB5_3
# BB#2:                                 # %if.then.17
	movl	$16, %ecx
	subl	%r9d, %ecx
	movzwl	%di, %eax
	shll	%cl, %eax
	movw	%ax, (%rdx)
	movzwl	%r10w, %eax
	shll	%cl, %eax
	movw	%ax, 2(%rdx)
	movzwl	%r8w, %eax
	shll	%cl, %eax
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.LBB5_3:                                # %if.else
	xorl	%eax, %eax
	cmpl	$17, %r9d
	jb	.LBB5_5
# BB#4:                                 # %if.then.30
	addl	$-16, %r9d
	movzwl	%di, %esi
	movb	%r9b, %cl
	shrl	%cl, %esi
	movw	%si, (%rdx)
	movzwl	%r10w, %esi
	movb	%r9b, %cl
	shrl	%cl, %esi
	movw	%si, 2(%rdx)
	movzwl	%r8w, %esi
	movb	%r9b, %cl
	shrl	%cl, %esi
	movw	%si, 4(%rdx)
.LBB5_5:                                # %cleanup
	retq
.Lfunc_end5:
	.size	inferno_cmap2rgb, .Lfunc_end5-inferno_cmap2rgb
	.cfi_endproc

	.align	16, 0x90
	.type	writeimageblock,@function
writeimageblock:                        # @writeimageblock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 48
.Ltmp34:
	.cfi_offset %rbx, -40
.Ltmp35:
	.cfi_offset %r12, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %r15
	testq	%rsi, %rsi
	je	.LBB6_1
# BB#6:                                 # %if.end.15
	movslq	%edx, %rax
	leaq	(%rax,%rsi), %r14
	movq	%r15, %rdi
	jmp	.LBB6_7
	.align	16, 0x90
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	6092(%r15), %rax
	cmpq	%rax, 6096(%r15)
	jae	.LBB6_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	%r15, %rdi
	callq	gobbleline
	movl	$-2, %ebx
	cmpl	$-2, %eax
	jne	.LBB6_1
	jmp	.LBB6_12
	.align	16, 0x90
.LBB6_9:                                # %if.end.30
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
.LBB6_7:                                # %if.end.15
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdx
	callq	shiftwindow
	movq	%rax, %r12
	movslq	6092(%r15), %rax
	movq	6096(%r15), %rcx
	movslq	40(%r15), %rdx
	leaq	3(%rcx,%rdx), %rcx
	cmpq	%rcx, %rax
	jb	.LBB6_10
# BB#8:                                 # %while.body.25
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	%r15, %rdi
	callq	gobbleline
	movl	$-2, %ebx
	cmpl	$-2, %eax
	jne	.LBB6_9
	jmp	.LBB6_12
.LBB6_10:                               # %while.end.32
	xorl	%ebx, %ebx
	cmpq	%r14, %r12
	je	.LBB6_12
# BB#11:                                # %if.then.35
	movq	(%r15), %rdi
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-2, %ebx
	jmp	.LBB6_12
.LBB6_3:                                # %while.end
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	addbuf
	movl	28(%r15), %eax
	cmpl	20(%r15), %eax
	je	.LBB6_5
# BB#4:                                 # %if.then.10
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
.LBB6_5:                                # %if.end.14
	movl	$.L.str.9, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
.LBB6_12:                               # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	writeimageblock, .Lfunc_end6-writeimageblock
	.cfi_endproc

	.align	16, 0x90
	.type	gobbleline,@function
gobbleline:                             # @gobbleline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 96
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	cmpl	$0, 43132(%r12)
	je	.LBB7_1
# BB#2:                                 # %if.then
	movl	$0, 43128(%r12)
	movq	6072(%r12), %rbx
	movq	6096(%r12), %rax
	movzbl	(%rbx,%rax), %ecx
	movl	%ecx, 43128(%r12)
	movzbl	1(%rbx,%rax), %edx
	andl	$63, %ecx
	shll	$3, %ecx
	xorl	%edx, %ecx
	movl	%ecx, 43128(%r12)
	movzbl	2(%rbx,%rax), %edx
	andl	$63, %ecx
	shll	$3, %ecx
	xorl	%edx, %ecx
	movl	%ecx, 43128(%r12)
	movl	$0, 43132(%r12)
	jmp	.LBB7_3
.LBB7_1:                                # %entry.if.end_crit_edge
	movq	6072(%r12), %rbx
	movq	6096(%r12), %rax
.LBB7_3:                                # %if.end
	movl	$0, 6104(%r12)
	movslq	40(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB7_42
# BB#4:                                 # %for.body.14.lr.ph
	addq	%rax, %rbx
	leaq	6120(%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	43120(%r12), %r8
	movq	%r8, 24(%rsp)           # 8-byte Spill
	leaq	18544(%r12), %r13
	movl	43128(%r12), %ecx
	leaq	(%rdx,%rbx), %r9
	movq	%r9, 16(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB7_5:                                # %for.body.14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
                                        #       Child Loop BB7_12 Depth 3
                                        #       Child Loop BB7_9 Depth 3
                                        #     Child Loop BB7_30 Depth 2
	leaq	34(%rbx), %r11
	cmpq	%r11, %r9
	cmovbq	%r9, %r11
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	6264(%r12,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB7_6
# BB#7:                                 # %for.body.23.lr.ph
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	6080(%r12), %r8
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB7_8:                                # %for.body.23
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_12 Depth 3
                                        #       Child Loop BB7_9 Depth 3
	movslq	%r10d, %rsi
	leaq	(%rbx,%rsi), %r14
	movq	(%rcx), %r15
	addq	%r8, %r15
	leaq	(%r15,%rsi), %rdx
	testl	%esi, %esi
	movq	%rdx, %rbp
	movq	%r14, %rsi
	js	.LBB7_9
	.align	16, 0x90
.LBB7_12:                               # %land.rhs
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbp), %edi
	movzbl	(%rsi), %eax
	cmpl	%edi, %eax
	jne	.LBB7_14
# BB#13:                                # %for.inc.38
                                        #   in Loop: Header=BB7_12 Depth=3
	decq	%rsi
	decq	%rbp
	cmpq	%rbx, %rsi
	jae	.LBB7_12
	jmp	.LBB7_9
	.align	16, 0x90
.LBB7_11:                               # %while.body
                                        #   in Loop: Header=BB7_9 Depth=3
	incq	%r14
	incq	%rdx
.LBB7_9:                                # %while.cond.preheader
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r11, %r14
	jae	.LBB7_14
# BB#10:                                # %land.rhs.46
                                        #   in Loop: Header=BB7_9 Depth=3
	movzbl	(%rdx), %eax
	movzbl	(%r14), %esi
	cmpl	%eax, %esi
	je	.LBB7_11
	.align	16, 0x90
.LBB7_14:                               # %if.end.54
                                        #   in Loop: Header=BB7_8 Depth=2
	subq	%rbx, %r14
	cmpl	%r10d, %r14d
	jle	.LBB7_16
# BB#15:                                # %if.then.58
                                        #   in Loop: Header=BB7_8 Depth=2
	movslq	%r14d, %rax
	leaq	(%rax,%rbx), %rax
	cmpq	%r11, %rax
	movl	%r14d, %r10d
	movq	%r15, %r9
	je	.LBB7_17
.LBB7_16:                               # %for.inc.69
                                        #   in Loop: Header=BB7_8 Depth=2
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	movl	%r10d, %r14d
	movq	%r9, %r15
	jne	.LBB7_8
.LBB7_17:                               # %for.end.71
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	6104(%r12), %edx
	cmpl	$2, %r14d
	jg	.LBB7_24
# BB#18:                                #   in Loop: Header=BB7_5 Depth=1
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	16(%rsp), %r9           # 8-byte Reload
	jmp	.LBB7_19
	.align	16, 0x90
.LBB7_6:                                # %for.end.71.thread
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	6104(%r12), %edx
.LBB7_19:                               # %if.then.74
                                        #   in Loop: Header=BB7_5 Depth=1
	cmpl	$128, %edx
	jne	.LBB7_23
# BB#20:                                # %if.end.i
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	%r9, %r14
	movq	%r8, %rbp
	movb	$-1, 6120(%r12)
	movl	$129, %edx
	movq	%r12, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	addbuf
	movl	%eax, %ecx
	movl	$-2, %eax
	cmpl	$-2, %ecx
	je	.LBB7_43
# BB#21:                                # %if.end.7.i
                                        #   in Loop: Header=BB7_5 Depth=1
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB7_43
# BB#22:                                # %if.end.83
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	$0, 6104(%r12)
	xorl	%edx, %edx
	movq	%rbp, %r8
	movq	%r14, %r9
.LBB7_23:                               # %if.end.120.thread
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	(%rbx), %al
	leal	1(%rdx), %ecx
	movl	%ecx, 6104(%r12)
	movslq	%edx, %rcx
	movq	6112(%r12), %rdx
	movb	%al, (%rdx,%rcx)
	leaq	1(%rbx), %rax
	movq	43120(%r12), %rdx
	movl	43128(%r12), %ecx
	jmp	.LBB7_30
	.align	16, 0x90
.LBB7_24:                               # %if.else
                                        #   in Loop: Header=BB7_5 Depth=1
	testl	%edx, %edx
	je	.LBB7_28
# BB#25:                                # %if.end.i.94
                                        #   in Loop: Header=BB7_5 Depth=1
	leal	127(%rdx), %eax
	orl	$128, %eax
	movb	%al, 6120(%r12)
	incl	%edx
	movq	%r12, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	addbuf
	movl	%eax, %ecx
	movl	$-2, %eax
	cmpl	$-2, %ecx
	je	.LBB7_43
# BB#26:                                # %if.end.7.i.96
                                        #   in Loop: Header=BB7_5 Depth=1
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB7_43
# BB#27:                                # %if.end.11.i.97
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	$0, 6104(%r12)
.LBB7_28:                               # %if.end.103
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	%rbx, %rax
	subq	%r15, %rax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	addq	%rcx, %rax
	leal	244(,%r14,4), %ecx
	movl	%eax, %edx
	shrl	$8, %edx
	orl	%ecx, %edx
	movb	%dl, 38(%rsp)
	movb	%al, 39(%rsp)
	movl	$2, %edx
	movq	%r12, %rdi
	leaq	38(%rsp), %rsi
	callq	addbuf
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB7_43
# BB#29:                                # %if.end.120
                                        #   in Loop: Header=BB7_5 Depth=1
	movslq	%r14d, %rax
	leaq	(%rax,%rbx), %rax
	movq	43120(%r12), %rdx
	movl	43128(%r12), %ecx
	testl	%r14d, %r14d
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	16(%rsp), %r9           # 8-byte Reload
	jle	.LBB7_37
	.align	16, 0x90
.LBB7_30:                               # %for.body.i
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_32
# BB#31:                                # %if.then.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movq	8(%rdx), %rdi
	movq	%rdi, 8(%rsi)
.LBB7_32:                               # %if.end.i.101
                                        #   in Loop: Header=BB7_30 Depth=2
	movslq	%ecx, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	leaq	6256(%r12,%rsi,8), %rdi
	movq	6264(%r12,%rsi,8), %rbp
	movq	%rbp, 8(%rdx)
	movq	%rdi, 16(%rdx)
	movq	%rdx, 6264(%r12,%rsi,8)
	movq	8(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_34
# BB#33:                                # %if.then.15.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movq	%rdx, 16(%rsi)
.LBB7_34:                               # %if.end.18.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movq	%rbx, %rsi
	subq	6080(%r12), %rsi
	movq	%rsi, (%rdx)
	addq	$24, %rdx
	cmpq	%r8, %rdx
	cmoveq	%r13, %rdx
	movslq	6092(%r12), %rsi
	addq	6072(%r12), %rsi
	leaq	3(%rbx), %rdi
	cmpq	%rsi, %rdi
	jae	.LBB7_36
# BB#35:                                # %if.then.30.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movzbl	3(%rbx), %esi
	andl	$63, %ecx
	shll	$3, %ecx
	xorl	%esi, %ecx
.LBB7_36:                               # %for.inc.i
                                        #   in Loop: Header=BB7_30 Depth=2
	incq	%rbx
	cmpq	%rbx, %rax
	jne	.LBB7_30
.LBB7_37:                               # %updatehash.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	%rdx, 43120(%r12)
	movl	%ecx, 43128(%r12)
	cmpq	%r9, %rax
	movq	%rax, %rbx
	jne	.LBB7_5
# BB#38:                                # %for.end.125
	movl	6104(%r12), %edx
	testl	%edx, %edx
	je	.LBB7_42
# BB#39:                                # %if.end.i.112
	leal	127(%rdx), %eax
	orl	$128, %eax
	movb	%al, 6120(%r12)
	incl	%edx
	movq	%r12, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	addbuf
	movl	%eax, %ecx
	movl	$-2, %eax
	cmpl	$-2, %ecx
	je	.LBB7_43
# BB#40:                                # %if.end.7.i.114
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB7_43
# BB#41:                                # %if.end.11.i.115
	movl	$0, 6104(%r12)
.LBB7_42:                               # %if.end.134
	movslq	40(%r12), %rax
	addq	%rax, 6096(%r12)
	movq	6048(%r12), %rcx
	movq	%rcx, 6064(%r12)
	incl	36(%r12)
.LBB7_43:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gobbleline, .Lfunc_end7-gobbleline
	.cfi_endproc

	.align	16, 0x90
	.type	addbuf,@function
addbuf:                                 # @addbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 32
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movq	6048(%rbx), %rdi
	movslq	%ebp, %r14
	leaq	(%rdi,%r14), %rax
	cmpq	6056(%rbx), %rax
	jbe	.LBB8_5
.LBB8_2:                                # %if.then
	movq	6064(%rbx), %rbp
	leaq	44(%rbx), %r14
	subq	%r14, %rbp
	je	.LBB8_3
# BB#4:                                 # %if.end
	movq	(%rbx), %rdi
	movl	36(%rbx), %edx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movl	%ebp, %ecx
	callq	fprintf
	movslq	%ebp, %rdx
	movq	(%rbx), %rcx
	movl	$1, %esi
	movq	%r14, %rdi
	callq	fwrite
	movl	36(%rbx), %eax
	movl	%eax, 28(%rbx)
	movq	%r14, 6048(%rbx)
	movq	%r14, 6064(%rbx)
	leaq	6256(%rbx), %rdi
	xorl	%esi, %esi
	movl	$12288, %edx            # imm = 0x3000
	callq	memset
	leaq	18544(%rbx), %rbp
	xorl	%esi, %esi
	movl	$24576, %edx            # imm = 0x6000
	movq	%rbp, %rdi
	callq	memset
	movq	%rbp, 43120(%rbx)
	movl	$1, 43132(%rbx)
	movl	$-1, %ebp
	jmp	.LBB8_6
.LBB8_5:                                # %if.end.26
	movq	%r14, %rdx
	callq	memmove
	addq	%r14, 6048(%rbx)
	jmp	.LBB8_6
.LBB8_3:                                # %if.then.3
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$-2, %ebp
.LBB8_6:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	addbuf, .Lfunc_end8-addbuf
	.cfi_endproc

	.align	16, 0x90
	.type	shiftwindow,@function
shiftwindow:                            # @shiftwindow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 48
.Ltmp62:
	.cfi_offset %rbx, -40
.Ltmp63:
	.cfi_offset %r12, -32
.Ltmp64:
	.cfi_offset %r14, -24
.Ltmp65:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	6096(%rbx), %rax
	cmpq	$1024, %rax             # imm = 0x400
	jbe	.LBB9_1
# BB#2:                                 # %if.then
	movl	$4294966272, %ecx       # imm = 0xFFFFFC00
	addq	%rcx, %rax
	movq	6072(%rbx), %rdi
	movslq	%eax, %r12
	movslq	6092(%rbx), %rdx
	subq	%r12, %rdx
	leaq	(%rdi,%r12), %rsi
	callq	memmove
	subq	%r12, 6096(%rbx)
	subq	%r12, 6080(%rbx)
	movl	6092(%rbx), %eax
	subl	%r12d, %eax
	movl	%eax, 6092(%rbx)
	jmp	.LBB9_3
.LBB9_1:                                # %entry.if.end_crit_edge
	movl	6092(%rbx), %eax
.LBB9_3:                                # %if.end
	subq	%r14, %r15
	jbe	.LBB9_6
# BB#4:                                 # %if.end
	movl	6088(%rbx), %ecx
	subl	%eax, %ecx
	jle	.LBB9_6
# BB#5:                                 # %if.then.17
	movslq	%ecx, %rcx
	cmpq	%rcx, %r15
	cmovll	%r15d, %ecx
	movslq	%eax, %rdi
	addq	6072(%rbx), %rdi
	movslq	%ecx, %r15
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memmove
	addq	%r15, %r14
	addl	%r15d, 6092(%rbx)
.LBB9_6:                                # %if.end.39
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	shiftwindow, .Lfunc_end9-shiftwindow
	.cfi_endproc

	.type	inferno_procs,@object   # @inferno_procs
	.section	.rodata,"a",@progbits
	.align	8
inferno_procs:
	.quad	inferno_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	inferno_close
	.quad	inferno_rgb2cmap
	.quad	inferno_cmap2rgb
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	inferno_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"inferno"
	.size	.L.str, 8

	.type	st_inferno_device,@object # @st_inferno_device
	.section	.rodata,"a",@progbits
	.align	8
st_inferno_device:
	.long	18504                   # 0x4848
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gx_device_finalize
	.quad	inferno_device_reloc_ptrs
	.size	st_inferno_device, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_inferno_device,@object # @gs_inferno_device
	.data
	.globl	gs_inferno_device
	.align	8
gs_inferno_device:
	.long	18504                   # 0x4848
	.zero	4
	.quad	inferno_procs
	.quad	.L.str
	.quad	0
	.quad	st_inferno_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	16                      # 0x10
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	0                       # 0x0
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
	.long	850                     # 0x352
	.long	1100                    # 0x44c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
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
	.quad	inferno_print_page
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.size	gs_inferno_device, 18504

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"plan 9 colour cube"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"inferno_device"
	.size	.L.str.3, 15

	.type	inferno_device_reloc_ptrs,@object # @inferno_device_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
inferno_device_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_device_printer
	.quad	inferno_device_enum_ptrs
	.size	inferno_device_reloc_ptrs, 24

	.type	inferno_device_enum_ptrs,@object # @inferno_device_enum_ptrs
	.align	2
inferno_device_enum_ptrs:
	.short	0                       # 0x0
	.short	18496                   # 0x4840
	.size	inferno_device_enum_ptrs, 4

	.type	.Linferno_print_page.ppb,@object # @inferno_print_page.ppb
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.Linferno_print_page.ppb:
	.long	8                       # 0x8
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	1                       # 0x1
	.size	.Linferno_print_page.ppb, 16

	.type	.Linferno_print_page.bpp,@object # @inferno_print_page.bpp
	.align	16
.Linferno_print_page.bpp:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	8                       # 0x8
	.size	.Linferno_print_page.bpp, 16

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"bitmap far too wide for inferno\n"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"initwriteimage failed\n"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"inferno line buffer"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"couldn't allocate line buffer\n"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"bad rectangle, ldepth"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"inferno image"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"compressed\n%11d %11d %11d %11d %11d "
	.size	.L.str.10, 37

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"not enough data supplied to writeimage\n"
	.size	.L.str.11, 40

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"data != edata.  uh oh\n"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"buffer too small for line\n"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%11d %11d "
	.size	.L.str.14, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
