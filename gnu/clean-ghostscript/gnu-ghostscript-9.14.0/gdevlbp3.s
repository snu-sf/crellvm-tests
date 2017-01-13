	.text
	.file	"gdevlbp3.bc"
	.align	16, 0x90
	.type	lbp310PrintPage,@function
lbp310PrintPage:                        # @lbp310PrintPage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 64
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	(%rsp), %r15
	movq	%r15, %rsi
	callq	BoundImage
	movl	$.L.str.3, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	CompressImage
	movq	%rax, %rbx
	leaq	22(%rsp), %r15
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	gs_sprintf
	movq	%r15, %rdi
	callq	strlen
	addl	%ebx, %eax
	notl	%eax
	andl	$1, %eax
	leaq	22(%rsp,%rax), %rdx
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	lbp310PrintPage, .Lfunc_end0-lbp310PrintPage
	.cfi_endproc

	.align	16, 0x90
	.type	lbp320PrintPage,@function
lbp320PrintPage:                        # @lbp320PrintPage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 80
.Ltmp11:
	.cfi_offset %rbx, -32
.Ltmp12:
	.cfi_offset %r14, -24
.Ltmp13:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	8(%rsp), %r15
	movq	%r15, %rsi
	callq	BoundImage
	andb	$-2, 20(%rsp)
	orb	$1, 24(%rsp)
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.21, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	CompressImage
	movq	%rax, %rbx
	leaq	32(%rsp), %r15
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	gs_sprintf
	movq	%r15, %rdi
	callq	strlen
	leal	1(%rbx,%rax), %edx
	andl	$3, %edx
	orq	%r15, %rdx
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	lbp320PrintPage, .Lfunc_end1-lbp320PrintPage
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4627842682090579558     # double 25.399999999999999
.LCPI2_1:
	.quad	4639833516098453504     # double 160
.LCPI2_2:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	BoundImage,@function
BoundImage:                             # @BoundImage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 112
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %esi
	cvttss2si	884(%rbx), %ecx
	cvttss2si	888(%rbx), %r15d
	movl	836(%rbx), %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leal	(%rax,%rax), %eax
	leal	(%rax,%rax,4), %eax
	cltd
	idivl	%r15d
	movl	$2, %edx
	cmpl	$82, %eax
	jl	.LBB2_4
# BB#1:                                 # %cond.false
	movl	$1, %edx
	cmpl	$98, %eax
	jl	.LBB2_4
# BB#2:                                 # %cond.false.11
	movl	$3, %edx
	cmpl	$109, %eax
	jl	.LBB2_4
# BB#3:                                 # %cond.false.17
	cmpl	$116, %eax
	setl	%al
	movzbl	%al, %edx
	shll	$2, %edx
.LBB2_4:                                # %cond.end.25
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movl	%edx, %eax
	leaq	(%rax,%rax,2), %rbp
	movl	PaperInfo(,%rbp,4), %eax
	addl	$-100, %eax
	imull	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI2_0(%rip), %xmm0
	divsd	.LCPI2_1(%rip), %xmm0
	cvttsd2si	%xmm0, %r13d
	leal	1(%r13,%r13), %eax
	movq	%rsi, %rdx
	cmpl	%eax, %edx
	cmovll	%eax, %edx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$.L.str.7, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movl	$-1, %r14d
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB2_5
# BB#6:                                 # %cond.end.25
	movl	PaperInfo+4(,%rbp,4), %eax
	addl	$-100, %eax
	imull	%r15d, %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI2_0(%rip), %xmm0
	divsd	.LCPI2_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	movl	$-1, %r15d
	movl	$-1, %r12d
	movl	$-1, %edx
	jle	.LBB2_15
# BB#7:                                 # %for.body.lr.ph
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %eax
	shrl	$31, %eax
	leal	(%rax,%rcx), %eax
	sarl	%eax
	cmpl	%r13d, %eax
	cmovgl	%r13d, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movslq	%eax, %rbp
	movl	$-1, %r14d
	xorl	%r13d, %r13d
	movl	$-1, %r15d
	movl	$-1, %r12d
	movl	$-1, %edx
	.align	16, 0x90
.LBB2_8:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %esi
	movq	%rbx, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	callq	gdev_prn_copy_scan_lines
	cmpl	$0, 16(%rsp)            # 4-byte Folded Reload
	movl	$0, %eax
	movl	$0, %ecx
	jle	.LBB2_13
	.align	16, 0x90
.LBB2_9:                                # %for.body.67
                                        #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rbx,%rax,2)
	jne	.LBB2_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_9 Depth=2
	cmpb	$0, 1(%rbx,%rax,2)
	je	.LBB2_12
.LBB2_11:                               # %if.then.76
                                        #   in Loop: Header=BB2_9 Depth=2
	movslq	%r12d, %rcx
	cmpq	%rax, %rcx
	movl	%ecx, %r12d
	cmovgl	%eax, %r12d
	cmpl	$-1, %ecx
	cmovel	%eax, %r12d
	movslq	%r15d, %r15
	cmpq	%rax, %r15
	cmovll	%eax, %r15d
	movl	$1, %ecx
.LBB2_12:                               # %for.inc
                                        #   in Loop: Header=BB2_9 Depth=2
	incq	%rax
	cmpq	%rbp, %rax
	jl	.LBB2_9
.LBB2_13:                               # %for.end
                                        #   in Loop: Header=BB2_8 Depth=1
	cmpl	$-1, %r14d
	movl	%r14d, %eax
	cmovel	%r13d, %eax
	testl	%ecx, %ecx
	movl	52(%rsp), %edx          # 4-byte Reload
	cmovnel	%r13d, %edx
	cmovnel	%eax, %r14d
	incl	%r13d
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r13d
	jge	.LBB2_15
# BB#14:                                # %for.end
                                        #   in Loop: Header=BB2_8 Depth=1
	cmpl	20(%rsp), %r13d         # 4-byte Folded Reload
	jl	.LBB2_8
	jmp	.LBB2_15
.LBB2_5:
	movl	$-1, %r15d
	movl	$-1, %r12d
	movl	$-1, %edx
.LBB2_15:                               # %for.end.98
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	4(%rsp), %ecx           # 4-byte Reload
	movl	%ecx, (%rax)
	movl	%r14d, 4(%rax)
	movl	%edx, 8(%rax)
	movl	%r12d, 12(%rax)
	movl	%r15d, 16(%rax)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.7, %edx
	movq	%rbx, %rsi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end2:
	.size	BoundImage, .Lfunc_end2-BoundImage
	.cfi_endproc

	.align	16, 0x90
	.type	CompressImage,@function
CompressImage:                          # @CompressImage
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
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	cvttss2si	884(%rbp), %r15d
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r13d
	movl	%r13d, 4(%rsp)          # 4-byte Spill
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	fprintf
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	(%rbx), %eax
	leaq	(%rax,%rax,2), %rax
	movl	PaperInfo+8(,%rax,4), %edx
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.16, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	4(%rbx), %edx
	movl	12(%rbx), %ecx
	shll	$4, %ecx
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	16(%rbx), %edx
	movl	8(%rbx), %r8d
	incl	%edx
	subl	12(%rbx), %edx
	incl	%r8d
	subl	4(%rbx), %r8d
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r14, %rsi
	xorl	%r14d, %r14d
	movl	%r15d, %ecx
	movl	%r13d, %r15d
	callq	fprintf
	movq	24(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$.L.str.7, %ecx
	movl	%r15d, %edx
	callq	*88(%rdi)
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	4(%rbx), %esi
	movl	$255, %ebp
	cmpl	8(%rbx), %esi
	jg	.LBB3_28
# BB#1:                                 # %for.body.lr.ph
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movslq	%r15d, %r14
	movl	$255, %ebp
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
                                        # implicit-def: R13B
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	%r15d, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	12(%rbx), %eax
	movl	16(%rbx), %ecx
	addl	%eax, %eax
	leal	1(%rcx,%rcx), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_25
# BB#3:                                 # %for.body.34.lr.ph
                                        #   in Loop: Header=BB3_2 Depth=1
	movslq	%eax, %r15
	movb	%r13b, %r12b
	.align	16, 0x90
.LBB3_4:                                # %for.body.34
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %r15
	jge	.LBB3_5
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	40(%rsp), %rax          # 8-byte Reload
	movb	(%rax,%r15), %al
	movb	%al, %cl
	shlb	$2, %cl
	andb	$4, %cl
	movb	%al, %dl
	andb	$2, %dl
	orb	%cl, %dl
	movb	%al, %cl
	shrb	$2, %cl
	andb	$1, %cl
	orb	%dl, %cl
	movb	%al, %dl
	shrb	$3, %dl
	addb	%cl, %cl
	andb	$1, %dl
	orb	%cl, %dl
	movb	%al, %cl
	shrb	$4, %cl
	addb	%dl, %dl
	andb	$1, %cl
	orb	%dl, %cl
	movb	%al, %dl
	shrb	$5, %dl
	addb	%cl, %cl
	andb	$1, %dl
	orb	%cl, %dl
	movb	%al, %r13b
	shrb	$6, %r13b
	addb	%dl, %dl
	andb	$1, %r13b
	orb	%dl, %r13b
	shrb	$7, %al
	addb	%r13b, %r13b
	orb	%al, %r13b
	jmp	.LBB3_7
	.align	16, 0x90
.LBB3_5:                                #   in Loop: Header=BB3_4 Depth=2
	xorl	%r13d, %r13d
.LBB3_7:                                # %if.end
                                        #   in Loop: Header=BB3_4 Depth=2
	testl	%ebp, %ebp
	js	.LBB3_8
# BB#12:                                # %if.else.60
                                        #   in Loop: Header=BB3_4 Depth=2
	je	.LBB3_13
# BB#16:                                # %if.else.75
                                        #   in Loop: Header=BB3_4 Depth=2
	cmpl	$126, %ebp
	jg	.LBB3_20
# BB#17:                                # %if.then.78
                                        #   in Loop: Header=BB3_4 Depth=2
	movzbl	%r13b, %eax
	movzbl	%r12b, %ecx
	cmpl	%eax, %ecx
	jne	.LBB3_19
# BB#18:                                # %if.then.83
                                        #   in Loop: Header=BB3_4 Depth=2
	leal	-1(%rbp), %edx
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%rbx, %r13
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	fprintf
	movslq	%ebp, %rdx
	movl	$1, %esi
	leaq	48(%rsp), %rdi
	movq	%rbx, %rcx
	movq	%r13, %rbx
	callq	fwrite
	incl	%ebp
	movslq	%ebp, %rax
	addq	%rax, 24(%rsp)          # 8-byte Folded Spill
	movl	$-1, %ebp
	movb	%r12b, %r13b
	jmp	.LBB3_24
	.align	16, 0x90
.LBB3_8:                                # %if.then.48
                                        #   in Loop: Header=BB3_4 Depth=2
	cmpl	$-126, %ebp
	jl	.LBB3_11
# BB#9:                                 # %if.then.48
                                        #   in Loop: Header=BB3_4 Depth=2
	movzbl	%r13b, %eax
	movzbl	%r12b, %ecx
	cmpl	%eax, %ecx
	jne	.LBB3_11
# BB#10:                                # %if.then.55
                                        #   in Loop: Header=BB3_4 Depth=2
	decl	%ebp
	movb	%r12b, %r13b
	jmp	.LBB3_24
	.align	16, 0x90
.LBB3_13:                               # %if.then.63
                                        #   in Loop: Header=BB3_4 Depth=2
	movzbl	%r13b, %eax
	movzbl	%r12b, %ecx
	movl	$-1, %ebp
	cmpl	%eax, %ecx
	jne	.LBB3_15
# BB#14:                                #   in Loop: Header=BB3_4 Depth=2
	movb	%r12b, %r13b
	jmp	.LBB3_24
.LBB3_20:                               # %if.else.98
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	%rbx, %r12
	cmpl	$127, %ebp
	jne	.LBB3_22
# BB#21:                                # %if.then.101
                                        #   in Loop: Header=BB3_4 Depth=2
	movl	$.L.str.19, %esi
	movl	$127, %edx
	xorl	%eax, %eax
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	fprintf
	movl	$1, %esi
	movl	$128, %edx
	leaq	48(%rsp), %rdi
	movq	%rbx, %rcx
	callq	fwrite
	addq	$129, 24(%rsp)          # 8-byte Folded Spill
.LBB3_22:                               # %if.end.113
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	%r12, %rbx
	jmp	.LBB3_23
.LBB3_11:                               # %if.else
                                        #   in Loop: Header=BB3_4 Depth=2
	movzbl	%r12b, %ecx
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %edx
	callq	fprintf
	addq	$2, 24(%rsp)            # 8-byte Folded Spill
.LBB3_23:                               # %if.end.113
                                        #   in Loop: Header=BB3_4 Depth=2
	movb	%r13b, 48(%rsp)
	xorl	%ebp, %ebp
	jmp	.LBB3_24
.LBB3_15:                               # %if.else.70
                                        #   in Loop: Header=BB3_4 Depth=2
	movb	%r13b, 49(%rsp)
	movl	$1, %ebp
	jmp	.LBB3_24
.LBB3_19:                               # %if.else.92
                                        #   in Loop: Header=BB3_4 Depth=2
	movslq	%ebp, %rbp
	movb	%r13b, 49(%rsp,%rbp)
	incq	%rbp
	.align	16, 0x90
.LBB3_24:                               # %for.inc.115
                                        #   in Loop: Header=BB3_4 Depth=2
	movl	16(%rbx), %eax
	leal	1(%rax,%rax), %eax
	cltq
	cmpq	%rax, %r15
	leaq	1(%r15), %r15
	movb	%r13b, %r12b
	jl	.LBB3_4
.LBB3_25:                               # %for.inc.118
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	8(%rbx), %eax
	leal	1(%rax), %eax
	movl	%eax, %esi
	movl	4(%rsp), %r15d          # 4-byte Reload
	jl	.LBB3_2
# BB#26:                                # %for.end.120
	testl	%ebp, %ebp
	js	.LBB3_30
# BB#27:
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	24(%rsp), %r14          # 8-byte Reload
.LBB3_28:                               # %if.else.127
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	fprintf
	leal	1(%rbp), %eax
	movslq	%eax, %rdx
	leaq	48(%rsp), %rdi
	movl	$1, %esi
	movq	%r12, %rcx
	callq	fwrite
	addl	$2, %ebp
	movslq	%ebp, %rbx
	addq	%r14, %rbx
	jmp	.LBB3_29
.LBB3_30:                               # %if.then.123
	movzbl	%r13b, %ecx
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %edx
	callq	fprintf
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	$2, %rax
	movq	%rax, %rbx
.LBB3_29:                               # %if.end.136
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	%rbx, %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	CompressImage, .Lfunc_end3-CompressImage
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lbp310"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_lbp310_device,@object # @gs_lbp310_device
	.data
	.globl	gs_lbp310_device
	.align	8
gs_lbp310_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_std_procs
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
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
	.quad	lbp310PrintPage
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
	.size	gs_lbp310_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"lbp320"
	.size	.L.str.2, 7

	.type	gs_lbp320_device,@object # @gs_lbp320_device
	.data
	.globl	gs_lbp320_device
	.align	8
gs_lbp320_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_std_procs
	.quad	.L.str.2
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
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
	.quad	lbp320PrintPage
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
	.size	gs_lbp320_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"\033[1;%d;%d;11;%d;.r"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0%ld"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\200%s\200\200\200\200\f"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033P0J\033\\"
	.size	.L.str.6, 7

	.type	PaperInfo,@object       # @PaperInfo
	.section	.rodata,"a",@progbits
	.align	16
PaperInfo:
	.long	2100                    # 0x834
	.long	2960                    # 0xb90
	.long	14                      # 0xe
	.long	1485                    # 0x5cd
	.long	2098                    # 0x832
	.long	16                      # 0x10
	.long	1000                    # 0x3e8
	.long	1480                    # 0x5c8
	.long	18                      # 0x12
	.long	1820                    # 0x71c
	.long	2570                    # 0xa0a
	.long	26                      # 0x1a
	.long	2100                    # 0x834
	.long	2790                    # 0xae6
	.long	14                      # 0xe
	.size	PaperInfo, 60

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"LineBuffer"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033%%@"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033P35;%d;1J;GhostScript\033\\"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033<"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033[7 I"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033[;1;'v"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\033[%d;;p"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\033[1q"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\033[?2h"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\033[%dv"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\033[%d;%df"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%c%c"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%c"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\033%%-12345X@PJL CJLMODE\n@PJL JOB\n"
	.size	.L.str.20, 33

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\033[1;%d;%d;11;%d;.&r"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"000%ld"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\033%%-12345X@PJL CJLMODE\n@PJL EOJ\n\033%%-12345X"
	.size	.L.str.23, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
