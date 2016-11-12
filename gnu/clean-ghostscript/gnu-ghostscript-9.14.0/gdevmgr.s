	.text
	.file	"gdevmgr.bc"
	.align	16, 0x90
	.type	mgr_print_page,@function
mgr_print_page:                         # @mgr_print_page
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdx
	callq	mgr_begin_page
	testl	%eax, %eax
	js	.LBB0_5
# BB#1:                                 # %if.end
	movl	832(%rbx), %eax
	movl	%eax, %ecx
	andl	$7, %ecx
	leal	8(%rax), %edx
	subl	%ecx, %edx
	movl	%eax, %ecx
	andl	$7, %ecx
	cmovel	%eax, %edx
	movq	8(%rsp), %r13
	movq	24(%rsp), %r15
	movl	20(%rsp), %r12d
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rbp
	movl	32(%rsp), %esi
	.align	16, 0x90
.LBB0_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	836(%r13), %esi
	jge	.LBB0_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB0_2 Depth=1
	leal	1(%rsi), %ebx
	movl	%ebx, 32(%rsp)
	movq	%r13, %rdi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	callq	fwrite
	cmpq	%rbp, %rax
	movl	$-12, %eax
	movl	%ebx, %esi
	jae	.LBB0_2
	jmp	.LBB0_5
.LBB0_4:                                # %while.end
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.10, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB0_5:                                # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mgr_print_page, .Lfunc_end0-mgr_print_page
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	21845                   # 0x5555
	.short	21845                   # 0x5555
	.short	21845                   # 0x5555
.LCPI1_1:
	.short	2                       # 0x2
	.short	43690                   # 0xaaaa
	.short	43690                   # 0xaaaa
	.short	43690                   # 0xaaaa
	.short	3                       # 0x3
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.text
	.align	16, 0x90
	.type	mgrN_print_page,@function
mgrN_print_page:                        # @mgrN_print_page
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
	subq	$88, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 144
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
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	leaq	56(%rsp), %rdx
	callq	mgr_begin_page
	testl	%eax, %eax
	js	.LBB1_62
# BB#1:                                 # %if.end
	movl	832(%r12), %eax
	movl	18472(%r12), %edi
	cmpl	$2, %edi
	jne	.LBB1_3
# BB#2:                                 # %land.lhs.true
	movl	%eax, %ecx
	andl	$3, %ecx
	movl	$4, %edx
	subl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	%eax, %esi
	andl	$3, %esi
	cmovnel	%edx, %ecx
	addl	%ecx, %eax
.LBB1_3:                                # %if.end.4
	cmpl	$4, %edi
	setne	%dl
	movl	%eax, %ecx
	notl	%ecx
	movzbl	%dl, %edx
	andl	$1, %ecx
	orl	%edx, %ecx
	xorl	$1, %ecx
	addl	%eax, %ecx
	xorl	%r13d, %r13d
	movl	$8, %eax
	xorl	%edx, %edx
	idivl	%edi
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, %r14d
	cmpl	$4, %edi
	jne	.LBB1_4
# BB#66:                                # %if.end.26.thread
	movb	$1, 18476(%r12)
	movb	$0, 18493(%r12)
	movb	$0, 18477(%r12)
	movb	$1, 18492(%r12)
	movb	$2, 18478(%r12)
	movb	$2, 18494(%r12)
	movb	$8, 18479(%r12)
	movb	$3, 18500(%r12)
	movb	$4, 18480(%r12)
	movb	$4, 18496(%r12)
	movb	$3, 18481(%r12)
	movb	$5, 18495(%r12)
	movb	$13, 18482(%r12)
	movb	$6, 18505(%r12)
	movb	$11, 18483(%r12)
	movb	$7, 18503(%r12)
	movb	$7, 18484(%r12)
	movb	$8, 18499(%r12)
	movb	$6, 18485(%r12)
	movb	$9, 18498(%r12)
	movb	$10, 18486(%r12)
	movb	$10, 18502(%r12)
	movb	$12, 18487(%r12)
	movb	$11, 18504(%r12)
	movb	$14, 18488(%r12)
	movb	$12, 18506(%r12)
	movb	$5, 18489(%r12)
	movb	$13, 18497(%r12)
	movb	$9, 18490(%r12)
	movb	$14, 18501(%r12)
	movb	$15, 18491(%r12)
	movb	$15, 18507(%r12)
	movl	$16, %r13d
	jmp	.LBB1_25
.LBB1_4:                                # %if.end.4
	cmpl	$8, %edi
	jne	.LBB1_25
# BB#5:                                 # %for.body.34.preheader
	xorl	%ebp, %ebp
	movl	$18525, %r8d            # imm = 0x485D
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_6:                                # %for.body.34
                                        # =>This Inner Loop Header: Depth=1
	movb	mgrlut+96(%rdx), %al
	shlb	$4, %al
	movb	%al, 18508(%r12,%rdx)
	movzbl	%al, %eax
	movb	%dl, 18764(%r12,%rax)
	movl	%edx, %eax
	orl	$1, %eax
	movb	mgrlut+97(%rdx), %cl
	shlb	$4, %cl
	movb	%cl, 18509(%r12,%rdx)
	movzbl	%cl, %ecx
	movb	%al, 18764(%r12,%rcx)
	addq	$2, %rdx
	cmpq	$16, %rdx
	jne	.LBB1_6
# BB#7:
	movabsq	$281479271743489, %rdx  # imm = 0x1000100010001
	.align	16, 0x90
.LBB1_8:                                # %for.cond.54.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$127, %ebp
	jg	.LBB1_13
# BB#9:                                 # %for.cond.54.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	%ebp, %esi
	cmpl	$48, %ebp
	ja	.LBB1_10
# BB#15:                                # %for.cond.54.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	btq	%rsi, %rdx
	jb	.LBB1_16
	.align	16, 0x90
.LBB1_10:                               # %for.cond.54.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	leal	-64(%rbp), %esi
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_13:                               # %for.cond.54.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	leal	-128(%rbp), %esi
	cmpl	$48, %esi
	ja	.LBB1_14
# BB#67:                                # %for.cond.54.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	btq	%rsi, %rdx
	jb	.LBB1_16
	.align	16, 0x90
.LBB1_14:                               # %for.cond.54.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	leal	-192(%rbp), %esi
.LBB1_11:                               # %for.cond.54.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$48, %esi
	ja	.LBB1_17
# BB#12:                                # %for.cond.54.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	btq	%rsi, %rdx
	jae	.LBB1_17
.LBB1_16:                               # %if.then.64
                                        #   in Loop: Header=BB1_8 Depth=1
	incl	%ebp
.LBB1_17:                               # %for.end.69
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	%bpl, -1(%r12,%r8)
	leal	1(%rbp), %esi
	movslq	%ebp, %rax
	leaq	-18509(%r8), %rdi
	movb	%dil, 18764(%r12,%rax)
	cmpl	$126, %eax
	jg	.LBB1_22
# BB#18:                                # %for.end.69
                                        #   in Loop: Header=BB1_8 Depth=1
	leal	1(%rbp), %eax
	cmpl	$48, %eax
	ja	.LBB1_19
# BB#63:                                # %for.end.69
                                        #   in Loop: Header=BB1_8 Depth=1
	btq	%rax, %rdx
	jb	.LBB1_64
	.align	16, 0x90
.LBB1_19:                               # %for.end.69
                                        #   in Loop: Header=BB1_8 Depth=1
	leal	-63(%rbp), %eax
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_22:                               # %for.end.69
                                        #   in Loop: Header=BB1_8 Depth=1
	leal	-127(%rbp), %eax
	cmpl	$48, %eax
	ja	.LBB1_23
# BB#68:                                # %for.end.69
                                        #   in Loop: Header=BB1_8 Depth=1
	btq	%rax, %rdx
	jb	.LBB1_64
	.align	16, 0x90
.LBB1_23:                               # %for.end.69
                                        #   in Loop: Header=BB1_8 Depth=1
	leal	-191(%rbp), %eax
.LBB1_20:                               # %for.end.69
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$48, %eax
	ja	.LBB1_65
# BB#21:                                # %for.end.69
                                        #   in Loop: Header=BB1_8 Depth=1
	btq	%rax, %rdx
	jae	.LBB1_65
.LBB1_64:                               # %if.then.64.1
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$2, %ebp
	movl	%ebp, %esi
.LBB1_65:                               # %for.end.69.1
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	%sil, (%r12,%r8)
	movslq	%esi, %rax
	incl	%esi
	incq	%rdi
	movb	%dil, 18764(%r12,%rax)
	addq	$2, %r8
	cmpq	$255, %rdi
	movl	%esi, %ebp
	jne	.LBB1_8
# BB#24:                                # %if.end.82
	movl	$256, %r13d             # imm = 0x100
	xorl	%eax, %eax
	cmpl	$8, 18472(%r12)
	je	.LBB1_26
.LBB1_25:                               # %if.then.86
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.11, %ecx
	movl	%r14d, %esi
	callq	*88(%rdi)
.LBB1_26:                               # %while.cond.preheader
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movl	%r14d, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leal	-1(%r14), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%r14d, %eax
	andl	$3, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	andl	$3, %r14d
	movq	%r14, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB1_27:                               # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_28 Depth 2
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_38 Depth 2
                                        #     Child Loop BB1_41 Depth 2
                                        #     Child Loop BB1_45 Depth 2
	movq	56(%rsp), %rbx
	movq	72(%rsp), %rbp
	movl	68(%rsp), %r14d
	movl	80(%rsp), %esi
.LBB1_28:                               # %while.cond
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	836(%rbx), %esi
	jge	.LBB1_48
# BB#29:                                # %while.body
                                        #   in Loop: Header=BB1_28 Depth=2
	leal	1(%rsi), %r15d
	movl	%r15d, 80(%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	18472(%r12), %eax
	cmpl	$8, %eax
	je	.LBB1_39
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB1_28 Depth=2
	cmpl	$4, %eax
	je	.LBB1_37
# BB#31:                                # %while.body
                                        #   in Loop: Header=BB1_28 Depth=2
	cmpl	$2, %eax
	movl	%r15d, %esi
	jne	.LBB1_28
# BB#32:                                # %sw.bb
                                        #   in Loop: Header=BB1_27 Depth=1
	xorl	%r13d, %r13d
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	je	.LBB1_35
	.align	16, 0x90
.LBB1_33:                               # %for.body.98
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rbp,%r13,4), %al
	andb	$-64, %al
	movb	%al, (%rdx,%r13)
	movb	1(%rbp,%r13,4), %cl
	shrb	$2, %cl
	andb	$48, %cl
	orb	%al, %cl
	movb	%cl, (%rdx,%r13)
	movb	2(%rbp,%r13,4), %al
	shrb	$4, %al
	andb	$12, %al
	orb	%cl, %al
	movb	%al, (%rdx,%r13)
	movb	3(%rbp,%r13,4), %cl
	shrb	$6, %cl
	orb	%al, %cl
	movb	%cl, (%rdx,%r13)
	incq	%r13
	cmpl	%r13d, %ebx
	jne	.LBB1_33
	jmp	.LBB1_34
	.align	16, 0x90
.LBB1_39:                               # %sw.bb.168
                                        #   in Loop: Header=BB1_27 Depth=1
	xorl	%r13d, %r13d
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	32(%rsp), %rbx          # 8-byte Reload
	je	.LBB1_47
# BB#40:                                # %for.body.173.preheader
                                        #   in Loop: Header=BB1_27 Depth=1
	xorl	%ecx, %ecx
	cmpl	$0, 16(%rsp)            # 4-byte Folded Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	je	.LBB1_43
	.align	16, 0x90
.LBB1_41:                               # %for.body.173.prol
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	movzbl	(%rbp,%rax), %ecx
	movb	18764(%r12,%rcx), %cl
	movb	%cl, (%rbp,%rax)
	leaq	1(%rax), %rcx
	cmpl	%ecx, %edx
	jne	.LBB1_41
# BB#42:                                #   in Loop: Header=BB1_27 Depth=1
	leaq	1(%rbp,%rax), %rbp
.LBB1_43:                               # %for.body.173.preheader.split
                                        #   in Loop: Header=BB1_27 Depth=1
	cmpl	$3, 20(%rsp)            # 4-byte Folded Reload
	jb	.LBB1_46
# BB#44:                                # %for.body.173.preheader.split.split
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	subl	%ecx, %eax
	.align	16, 0x90
.LBB1_45:                               # %for.body.173
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp), %ecx
	movb	18764(%r12,%rcx), %cl
	movb	%cl, (%rbp)
	movzbl	1(%rbp), %ecx
	movb	18764(%r12,%rcx), %cl
	movb	%cl, 1(%rbp)
	movzbl	2(%rbp), %ecx
	movb	18764(%r12,%rcx), %cl
	movb	%cl, 2(%rbp)
	movzbl	3(%rbp), %ecx
	movb	18764(%r12,%rcx), %cl
	movb	%cl, 3(%rbp)
	addq	$4, %rbp
	addl	$-4, %eax
	jne	.LBB1_45
.LBB1_46:                               # %for.cond.170.for.end.180_crit_edge
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	72(%rsp), %rbp
	movq	48(%rsp), %r13          # 8-byte Reload
.LBB1_47:                               # %for.end.180
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$1, %esi
	movq	%rbp, %rdi
	jmp	.LBB1_36
	.align	16, 0x90
.LBB1_37:                               # %sw.bb.132
                                        #   in Loop: Header=BB1_27 Depth=1
	xorl	%r13d, %r13d
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	je	.LBB1_35
	.align	16, 0x90
.LBB1_38:                               # %for.body.137
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp,%r13,2), %eax
	shrq	$4, %rax
	movb	18492(%r12,%rax), %al
	shlb	$4, %al
	movb	%al, (%rdx,%r13)
	movzbl	1(%rbp,%r13,2), %ecx
	shrq	$4, %rcx
	orb	18492(%r12,%rcx), %al
	movb	%al, (%rdx,%r13)
	incq	%r13
	cmpl	%r13d, %ebx
	jne	.LBB1_38
.LBB1_34:                               # %for.end.124.loopexit
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	48(%rsp), %r13          # 8-byte Reload
.LBB1_35:                               # %for.end.124
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$1, %esi
	movq	%rdx, %rdi
.LBB1_36:                               # %for.end.124
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%rbx, %rdx
	movq	40(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	movq	%rax, %rcx
	movl	$-12, %eax
	cmpq	%rbx, %rcx
	jae	.LBB1_27
	jmp	.LBB1_62
.LBB1_48:                               # %while.end
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.10, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	cmpl	$8, 18472(%r12)
	je	.LBB1_55
# BB#49:                                # %if.end.198
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.12, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movl	18472(%r12), %eax
	cmpl	$2, %eax
	jne	.LBB1_50
# BB#69:                                # %if.end.294.thread239
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [0,0,0,0,1,21845,21845,21845]
	movups	%xmm0, 19020(%r12)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [2,43690,43690,43690,3,65535,65535,65535]
	movups	%xmm0, 19036(%r12)
	leaq	19020(%r12), %r12
	movl	$32, %eax
	movl	$4, %ebp
	jmp	.LBB1_59
.LBB1_50:                               # %if.end.198
	cmpl	$4, %eax
	jne	.LBB1_54
# BB#51:                                # %for.body.232.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_52:                               # %for.body.232
                                        # =>This Inner Loop Header: Depth=1
	movw	%ax, 19020(%r12,%rax,8)
	movzbl	18476(%r12,%rax), %ecx
	imull	$286331153, %ecx, %ecx  # imm = 0x11111111
	shrl	$16, %ecx
	movw	%cx, 19026(%r12,%rax,8)
	movw	%cx, 19024(%r12,%rax,8)
	movw	%cx, 19022(%r12,%rax,8)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB1_52
# BB#53:                                # %if.end.259.loopexit
	movl	18472(%r12), %eax
	movl	$16, %r13d
.LBB1_54:                               # %if.end.259
	cmpl	$8, %eax
	jne	.LBB1_58
.LBB1_55:                               # %for.body.267.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_56:                               # %for.body.267
                                        # =>This Inner Loop Header: Depth=1
	movw	%ax, 19020(%r12,%rax,8)
	movzbl	18508(%r12,%rax), %ecx
	imull	$16843009, %ecx, %ecx   # imm = 0x1010101
	shrl	$16, %ecx
	movw	%cx, 19026(%r12,%rax,8)
	movw	%cx, 19024(%r12,%rax,8)
	movw	%cx, 19022(%r12,%rax,8)
	incq	%rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB1_56
# BB#57:                                # %if.end.294.thread
	addq	$19020, %r12            # imm = 0x4A4C
	movl	$2048, %eax             # imm = 0x800
	movl	$256, %ebp              # imm = 0x100
.LBB1_59:                               # %for.body.lr.ph.i
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	incl	%ecx
	movq	%r12, %rax
	.align	16, 0x90
.LBB1_60:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rax), %dl
	movb	1(%rax), %bl
	movb	%bl, (%rax)
	movb	%dl, 1(%rax)
	decl	%ecx
	addq	$2, %rax
	cmpl	$1, %ecx
	jg	.LBB1_60
	jmp	.LBB1_61
.LBB1_58:                               # %if.end.294
	addq	$19020, %r12            # imm = 0x4A4C
	movslq	%r13d, %rbp
	leal	(,%rbp,8), %eax
	cmpl	$2, %eax
	jge	.LBB1_59
.LBB1_61:                               # %swap_bwords.exit
	movl	$8, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	movq	40(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	xorl	%ecx, %ecx
	cmpq	%rbp, %rax
	movl	$-12, %eax
	cmovael	%ecx, %eax
.LBB1_62:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mgrN_print_page, .Lfunc_end1-mgrN_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	cmgrN_print_page,@function
cmgrN_print_page:                       # @cmgrN_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$616, %rsp              # imm = 0x268
.Ltmp32:
	.cfi_def_cfa_offset 672
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	leaq	584(%rsp), %rdx
	movq	%rdi, %rbx
	callq	mgr_begin_page
	testl	%eax, %eax
	js	.LBB2_60
# BB#1:                                 # %if.end
	movl	832(%rbx), %eax
	movl	%eax, %ecx
	notl	%ecx
	movl	18472(%rbx), %esi
	cmpl	$4, %esi
	setne	%dl
	movzbl	%dl, %edx
	andl	$1, %ecx
	orl	%edx, %ecx
	xorl	$1, %ecx
	addl	%eax, %ecx
	xorl	%ebp, %ebp
	movl	$8, %eax
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movq	24(%rbx), %rcx
	movq	200(%rcx), %rdi
	movl	$1, %edx
	movl	$.L.str.13, %ecx
	movl	%eax, %esi
	movq	%rax, %r13
	callq	*88(%rdi)
	movq	%rax, %r15
	cmpl	$8, 18472(%rbx)
	movl	$0, %r12d
	jne	.LBB2_18
# BB#2:                                 # %if.then.11
	leaq	320(%rsp), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	leaq	323(%rsp), %rax
	.align	16, 0x90
.LBB2_3:                                # %for.cond.14.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	movl	$7, %ecx
	movq	%rax, %rdx
	.align	16, 0x90
.LBB2_4:                                # %for.cond.17.preheader
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%rbp,%rcx), %esi
	cmpl	$7, %esi
	jne	.LBB2_7
# BB#5:                                 # %for.cond.17.preheader
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$7, %ecx
	jne	.LBB2_7
# BB#6:                                 # %if.then.23
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, 569(%rsp,%rbp)
	jmp	.LBB2_8
	.align	16, 0x90
.LBB2_7:                                # %if.else
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, -3(%rdx)
.LBB2_8:                                # %for.inc
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$7, %esi
	jne	.LBB2_10
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$6, %ecx
	jne	.LBB2_10
# BB#61:                                # %if.then.23.1
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, 569(%rsp,%rbp)
	jmp	.LBB2_62
	.align	16, 0x90
.LBB2_10:                               # %if.else.1
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, -3(%rdx)
.LBB2_62:                               # %for.inc.1
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$7, %esi
	jne	.LBB2_64
# BB#63:                                # %for.inc.1
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$5, %ecx
	jne	.LBB2_64
# BB#65:                                # %if.then.23.2
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, 569(%rsp,%rbp)
	jmp	.LBB2_66
	.align	16, 0x90
.LBB2_64:                               # %if.else.2
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, -2(%rdx)
.LBB2_66:                               # %for.inc.2
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$7, %esi
	jne	.LBB2_68
# BB#67:                                # %for.inc.2
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$4, %ecx
	jne	.LBB2_68
# BB#69:                                # %if.then.23.3
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, 569(%rsp,%rbp)
	jmp	.LBB2_70
	.align	16, 0x90
.LBB2_68:                               # %if.else.3
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, -2(%rdx)
.LBB2_70:                               # %for.inc.3
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$7, %esi
	jne	.LBB2_72
# BB#71:                                # %for.inc.3
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$3, %ecx
	jne	.LBB2_72
# BB#73:                                # %if.then.23.4
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, 569(%rsp,%rbp)
	jmp	.LBB2_74
	.align	16, 0x90
.LBB2_72:                               # %if.else.4
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, -1(%rdx)
.LBB2_74:                               # %for.inc.4
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$7, %esi
	jne	.LBB2_76
# BB#75:                                # %for.inc.4
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$2, %ecx
	jne	.LBB2_76
# BB#77:                                # %if.then.23.5
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, 569(%rsp,%rbp)
	jmp	.LBB2_78
	.align	16, 0x90
.LBB2_76:                               # %if.else.5
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, -1(%rdx)
.LBB2_78:                               # %for.inc.5
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$7, %esi
	jne	.LBB2_80
# BB#79:                                # %for.inc.5
                                        #   in Loop: Header=BB2_4 Depth=2
	cmpl	$1, %ecx
	jne	.LBB2_80
# BB#81:                                # %if.then.23.6
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, 569(%rsp,%rbp)
	jmp	.LBB2_82
	.align	16, 0x90
.LBB2_80:                               # %if.else.6
                                        #   in Loop: Header=BB2_4 Depth=2
	movb	$1, (%rdx)
.LBB2_82:                               # %for.inc.6
                                        #   in Loop: Header=BB2_4 Depth=2
	addq	$4, %rdx
	decq	%rcx
	jne	.LBB2_4
# BB#11:                                # %for.inc.34
                                        #   in Loop: Header=BB2_3 Depth=1
	incq	%rbp
	addq	$32, %rax
	cmpq	$7, %rbp
	jne	.LBB2_3
# BB#12:                                # %for.body.40.preheader
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	movl	$256, %r12d             # imm = 0x100
	.align	16, 0x90
.LBB2_13:                               # %for.body.40
                                        # =>This Inner Loop Header: Depth=1
	movzbl	320(%rsp,%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB2_15
# BB#14:                                # %if.then.46
                                        #   in Loop: Header=BB2_13 Depth=1
	movb	%bpl, 64(%rsp,%rax)
	movslq	%ebp, %rcx
	incl	%ebp
	movb	%al, 320(%rsp,%rcx)
.LBB2_15:                               # %for.inc.55
                                        #   in Loop: Header=BB2_13 Depth=1
	movzbl	321(%rsp,%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB2_17
# BB#16:                                # %if.then.46.1
                                        #   in Loop: Header=BB2_13 Depth=1
	movb	%bpl, 65(%rsp,%rax)
	movslq	%ebp, %rcx
	incl	%ebp
	leal	1(%rax), %edx
	movb	%dl, 320(%rsp,%rcx)
.LBB2_17:                               # %for.inc.55.1
                                        #   in Loop: Header=BB2_13 Depth=1
	addq	$2, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB2_13
.LBB2_18:                               # %while.cond.preheader
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movl	%ebp, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movl	%r13d, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	-1(%r13), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	%r13d, %eax
	andl	$1, %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movq	%r15, %rax
	movq	%r15, 24(%rsp)          # 8-byte Spill
	incq	%rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jmp	.LBB2_32
.LBB2_25:                               # %for.body.66.prol
                                        #   in Loop: Header=BB2_32 Depth=1
	movb	(%rbp), %al
	shlb	$4, %al
	movb	%al, (%rdi)
	movb	1(%rbp), %cl
	addq	$2, %rbp
	andb	$15, %cl
	orb	%al, %cl
	movb	%cl, (%rdi)
	movl	$1, %edx
	movq	8(%rsp), %rax           # 8-byte Reload
.LBB2_26:                               # %for.body.66.preheader.split
                                        #   in Loop: Header=BB2_32 Depth=1
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %r12d
	je	.LBB2_30
# BB#27:                                # %for.body.66.preheader.split.split
                                        #   in Loop: Header=BB2_32 Depth=1
	movq	%r14, %rsi
	movq	48(%rsp), %rcx          # 8-byte Reload
	subl	%edx, %ecx
	.align	16, 0x90
.LBB2_28:                               # %for.body.66
                                        #   Parent Loop BB2_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rbp), %dl
	shlb	$4, %dl
	movb	%dl, (%rax)
	movb	1(%rbp), %bl
	andb	$15, %bl
	orb	%dl, %bl
	movb	%bl, (%rax)
	movb	2(%rbp), %dl
	shlb	$4, %dl
	movb	%dl, 1(%rax)
	movb	3(%rbp), %bl
	andb	$15, %bl
	orb	%dl, %bl
	movb	%bl, 1(%rax)
	addq	$4, %rbp
	addq	$2, %rax
	addl	$-2, %ecx
	jne	.LBB2_28
# BB#29:                                #   in Loop: Header=BB2_32 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r12d
	movq	%rsi, %r14
.LBB2_30:                               # %for.end.78
                                        #   in Loop: Header=BB2_32 Depth=1
	movl	$1, %esi
	jmp	.LBB2_31
	.align	16, 0x90
.LBB2_32:                               # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_28 Depth 2
                                        #     Child Loop BB2_39 Depth 2
	movq	%r14, %rbx
	movq	584(%rsp), %r15
	movq	600(%rsp), %rbp
	movl	596(%rsp), %r14d
	movl	608(%rsp), %esi
.LBB2_19:                               # %while.cond
                                        #   Parent Loop BB2_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	836(%r15), %esi
	jge	.LBB2_42
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB2_19 Depth=2
	leal	1(%rsi), %r13d
	movl	%r13d, 608(%rsp)
	movq	%r15, %rdi
	movq	%rbp, %rdx
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	18472(%rax), %eax
	cmpl	$8, %eax
	je	.LBB2_33
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB2_19 Depth=2
	cmpl	$4, %eax
	movl	%r13d, %esi
	jne	.LBB2_19
# BB#22:                                # %sw.bb
                                        #   in Loop: Header=BB2_32 Depth=1
	xorl	%r12d, %r12d
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	%rbx, %r14
	movq	24(%rsp), %rdi          # 8-byte Reload
	je	.LBB2_30
# BB#23:                                # %for.body.66.preheader
                                        #   in Loop: Header=BB2_32 Depth=1
	xorl	%edx, %edx
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	jne	.LBB2_25
# BB#24:                                #   in Loop: Header=BB2_32 Depth=1
	movq	%rdi, %rax
	jmp	.LBB2_26
	.align	16, 0x90
.LBB2_33:                               # %sw.bb.86
                                        #   in Loop: Header=BB2_32 Depth=1
	xorl	%r12d, %r12d
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB2_34
# BB#35:                                # %for.body.91.preheader
                                        #   in Loop: Header=BB2_32 Depth=1
	xorl	%ecx, %ecx
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	je	.LBB2_37
# BB#36:                                # %for.body.91.prol
                                        #   in Loop: Header=BB2_32 Depth=1
	movzbl	(%rbp), %eax
	movb	64(%rsp,%rax), %al
	addb	$16, %al
	movb	%al, (%rbp)
	incq	%rbp
	movl	$1, %ecx
.LBB2_37:                               # %for.body.91.preheader.split
                                        #   in Loop: Header=BB2_32 Depth=1
	movq	%rbx, %r14
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB2_40
# BB#38:                                # %for.body.91.preheader.split.split
                                        #   in Loop: Header=BB2_32 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	subl	%ecx, %eax
	.align	16, 0x90
.LBB2_39:                               # %for.body.91
                                        #   Parent Loop BB2_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp), %ecx
	movb	64(%rsp,%rcx), %cl
	addb	$16, %cl
	movb	%cl, (%rbp)
	movzbl	1(%rbp), %ecx
	movb	64(%rsp,%rcx), %cl
	addb	$16, %cl
	movb	%cl, 1(%rbp)
	addq	$2, %rbp
	addl	$-2, %eax
	jne	.LBB2_39
.LBB2_40:                               # %for.cond.88.for.end.100_crit_edge
                                        #   in Loop: Header=BB2_32 Depth=1
	movq	600(%rsp), %rbp
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r12d
	jmp	.LBB2_41
	.align	16, 0x90
.LBB2_34:                               #   in Loop: Header=BB2_32 Depth=1
	movq	%rbx, %r14
.LBB2_41:                               # %for.end.100
                                        #   in Loop: Header=BB2_32 Depth=1
	movl	$1, %esi
	movq	%rbp, %rdi
.LBB2_31:                               # %for.end.78
                                        #   in Loop: Header=BB2_32 Depth=1
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	fwrite
	movq	%rax, %rcx
	movl	$-12, %eax
	cmpq	%rbx, %rcx
	jae	.LBB2_32
	jmp	.LBB2_60
.LBB2_42:                               # %while.end
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.10, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movl	18472(%r14), %eax
	cmpl	$4, %eax
	jne	.LBB2_46
# BB#43:                                # %for.cond.118.preheader
	xorl	%ebp, %ebp
	leaq	578(%rsp), %r15
	.align	16, 0x90
.LBB2_44:                               # %for.body.121
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	pc_4bit_map_color_rgb
	movw	%bp, 19020(%r14,%rbp,8)
	movzwl	578(%rsp), %eax
	imull	$65537, %eax, %eax      # imm = 0x10001
	shrl	$16, %eax
	movw	%ax, 19022(%r14,%rbp,8)
	movzwl	580(%rsp), %eax
	imull	$65537, %eax, %eax      # imm = 0x10001
	shrl	$16, %eax
	movw	%ax, 19024(%r14,%rbp,8)
	movzwl	582(%rsp), %eax
	imull	$65537, %eax, %eax      # imm = 0x10001
	shrl	$16, %eax
	movw	%ax, 19026(%r14,%rbp,8)
	incq	%rbp
	cmpq	$16, %rbp
	jne	.LBB2_44
# BB#45:                                # %if.end.152thread-pre-split
	movl	18472(%r14), %eax
	movl	$16, %r12d
.LBB2_46:                               # %if.end.152
	cmpl	$8, %eax
	movq	%rbx, %rcx
	jne	.LBB2_55
# BB#47:                                # %for.cond.157.preheader
	movq	16(%rsp), %rbx          # 8-byte Reload
	testl	%ebx, %ebx
	jle	.LBB2_48
# BB#49:                                # %for.body.160.lr.ph
	xorl	%eax, %eax
	movl	$4294967047, %r8d       # imm = 0xFFFFFF07
	orq	$248, %r8
	.align	16, 0x90
.LBB2_50:                               # %for.body.160
                                        # =>This Inner Loop Header: Depth=1
	movzbl	320(%rsp,%rax), %edx
	cmpq	$249, %rdx
	jb	.LBB2_52
# BB#51:                                # %if.then.i.106
                                        #   in Loop: Header=BB2_50 Depth=1
	addl	$-249, %edx
	andq	%r8, %rdx
	movw	mgr_8bit_map_color_rgb.ramp(%rdx,%rdx), %si
	movw	%si, 580(%rsp)
	movw	%si, 578(%rsp)
	movw	%si, %di
	movw	%si, %dx
	jmp	.LBB2_53
	.align	16, 0x90
.LBB2_52:                               # %if.else.i
                                        #   in Loop: Header=BB2_50 Depth=1
	movq	%rdx, %rsi
	shrq	$5, %rsi
	movw	mgr_8bit_map_color_rgb.ramp(%rsi,%rsi), %di
	movw	%di, 578(%rsp)
	movq	%rdx, %rsi
	shrq	%rsi
	andl	$14, %esi
	movw	mgr_8bit_map_color_rgb.ramp(%rsi), %si
	movw	%si, 580(%rsp)
	andl	$3, %edx
	movzwl	mgr_8bit_map_color_rgb.ramp(,%rdx,4), %edx
.LBB2_53:                               # %mgr_8bit_map_color_rgb.exit
                                        #   in Loop: Header=BB2_50 Depth=1
	leal	16(%rax), %ebp
	movw	%bp, 19020(%r14,%rax,8)
	movzwl	%di, %edi
	imull	$65537, %edi, %edi      # imm = 0x10001
	shrl	$16, %edi
	movw	%di, 19022(%r14,%rax,8)
	movzwl	%si, %esi
	imull	$65537, %esi, %esi      # imm = 0x10001
	shrl	$16, %esi
	movw	%si, 19024(%r14,%rax,8)
	movzwl	%dx, %esi
	imull	$65537, %esi, %esi      # imm = 0x10001
	shrl	$16, %esi
	movw	%si, 19026(%r14,%rax,8)
	incq	%rax
	cmpl	%eax, %ebx
	jne	.LBB2_50
# BB#54:                                # %for.cond.157.if.end.199.loopexit_crit_edge
	movw	%dx, 582(%rsp)
	movl	%ebx, %r12d
.LBB2_55:                               # %if.end.199
	addq	$19020, %r14            # imm = 0x4A4C
	movslq	%r12d, %rbp
	leal	(,%rbp,8), %edx
	cmpl	$2, %edx
	jl	.LBB2_59
# BB#56:                                # %for.body.lr.ph.i
	movq	%rcx, %rsi
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	incl	%eax
	movq	%r14, %rcx
	.align	16, 0x90
.LBB2_57:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rcx), %dl
	movb	1(%rcx), %bl
	movb	%bl, (%rcx)
	movb	%dl, 1(%rcx)
	decl	%eax
	addq	$2, %rcx
	cmpl	$1, %eax
	jg	.LBB2_57
# BB#58:
	movq	%rsi, %rcx
	jmp	.LBB2_59
.LBB2_48:                               # %if.end.199.thread
	addq	$19020, %r14            # imm = 0x4A4C
	xorl	%ebp, %ebp
.LBB2_59:                               # %swap_bwords.exit
	movl	$8, %esi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	fwrite
	xorl	%ecx, %ecx
	cmpq	%rbp, %rax
	movl	$-12, %eax
	cmovael	%ecx, %eax
.LBB2_60:                               # %cleanup
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cmgrN_print_page, .Lfunc_end2-cmgrN_print_page
	.cfi_endproc

	.globl	mgr_8bit_map_rgb_color
	.align	16, 0x90
	.type	mgr_8bit_map_rgb_color,@function
mgr_8bit_map_rgb_color:                 # @mgr_8bit_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$14335, %eax, %eax      # imm = 0x37FF
	shrl	$27, %eax
	movzwl	2(%rsi), %ecx
	imull	$14335, %ecx, %ecx      # imm = 0x37FF
	shrl	$27, %ecx
	movzwl	4(%rsi), %edx
	imull	$14335, %edx, %edx      # imm = 0x37FF
	shrl	$27, %edx
	cmpl	%ecx, %eax
	jne	.LBB3_3
# BB#1:                                 # %entry
	movzwl	%dx, %esi
	movzwl	%cx, %edi
	cmpl	%esi, %edi
	jne	.LBB3_3
# BB#2:                                 # %cond.true
	addl	$249, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	retq
.LBB3_3:                                # %cond.false
	movzwl	%dx, %edx
	movzwl	%cx, %ecx
	shll	$5, %eax
	shll	$2, %ecx
	orl	%eax, %ecx
	shrl	%edx
	orl	%ecx, %edx
	movl	%edx, %eax
	retq
.Lfunc_end3:
	.size	mgr_8bit_map_rgb_color, .Lfunc_end3-mgr_8bit_map_rgb_color
	.cfi_endproc

	.globl	mgr_8bit_map_color_rgb
	.align	16, 0x90
	.type	mgr_8bit_map_color_rgb,@function
mgr_8bit_map_color_rgb:                 # @mgr_8bit_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$249, %esi
	jb	.LBB4_2
# BB#1:                                 # %if.then
	addl	$-249, %esi
	movl	$4294967047, %eax       # imm = 0xFFFFFF07
	orq	$248, %rax
	andq	%rsi, %rax
	movw	mgr_8bit_map_color_rgb.ramp(%rax,%rax), %ax
	movw	%ax, 2(%rdx)
	movw	%ax, (%rdx)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movq	%rsi, %rax
	shrq	$4, %rax
	andl	$14, %eax
	movw	mgr_8bit_map_color_rgb.ramp(%rax), %ax
	movw	%ax, (%rdx)
	movq	%rsi, %rax
	shrq	%rax
	andl	$14, %eax
	movw	mgr_8bit_map_color_rgb.ramp(%rax), %ax
	movw	%ax, 2(%rdx)
	andl	$3, %esi
	movzwl	mgr_8bit_map_color_rgb.ramp(,%rsi,4), %eax
.LBB4_3:                                # %if.end
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	mgr_8bit_map_color_rgb, .Lfunc_end4-mgr_8bit_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	mgr_begin_page,@function
mgr_begin_page:                         # @mgr_begin_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 64
.Ltmp45:
	.cfi_offset %rbx, -48
.Ltmp46:
	.cfi_offset %r12, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebp
	addl	$3, %ebp
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.8, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r12
	movl	$-25, %eax
	testq	%r12, %r12
	je	.LBB5_3
# BB#1:                                 # %if.end
	movw	$31353, 8(%rsp)         # imm = 0x7A79
	movl	832(%rbx), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	andl	$63, %ecx
	addl	$32, %ecx
	movb	%cl, 10(%rsp)
	andl	$63, %eax
	addl	$32, %eax
	movb	%al, 11(%rsp)
	movl	836(%rbx), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	andl	$63, %ecx
	addl	$32, %ecx
	movb	%cl, 12(%rsp)
	andl	$63, %eax
	addl	$32, %eax
	movb	%al, 13(%rsp)
	movl	18472(%rbx), %eax
	andl	$63, %eax
	addl	$32, %eax
	movb	%al, 14(%rsp)
	movb	$32, 15(%rsp)
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	leaq	8(%rsp), %rdi
	movl	$1, %esi
	movl	$8, %edx
	movq	%r15, %rcx
	callq	fwrite
	movq	%rax, %rcx
	movl	$-12, %eax
	cmpq	$8, %rcx
	jb	.LBB5_3
# BB#2:                                 # %if.end.27
	movq	%r15, %rdi
	callq	fflush
	movq	%rbx, (%r14)
	movzwl	108(%rbx), %eax
	movl	%eax, 8(%r14)
	movl	%ebp, 12(%r14)
	movq	%r12, 16(%r14)
	movl	$0, 24(%r14)
	xorl	%eax, %eax
.LBB5_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mgr_begin_page, .Lfunc_end5-mgr_begin_page
	.cfi_endproc

	.type	mgr_procs,@object       # @mgr_procs
	.data
	.align	8
mgr_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
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
	.size	mgr_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mgrmono"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_mgrmono_device,@object # @gs_mgrmono_device
	.data
	.globl	gs_mgrmono_device
	.align	8
gs_mgrmono_device:
	.long	21072                   # 0x5250
	.zero	4
	.quad	mgr_procs
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
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.quad	mgr_print_page
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
	.long	1                       # 0x1
	.zero	16
	.zero	16
	.zero	256
	.zero	256
	.zero	2048
	.zero	4
	.size	gs_mgrmono_device, 21072

	.type	mgrN_procs,@object      # @mgrN_procs
	.align	8
mgrN_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
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
	.size	mgrN_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"mgrgray2"
	.size	.L.str.2, 9

	.type	gs_mgrgray2_device,@object # @gs_mgrgray2_device
	.data
	.globl	gs_mgrgray2_device
	.align	8
gs_mgrgray2_device:
	.long	21072                   # 0x5250
	.zero	4
	.quad	mgrN_procs
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
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	4                       # 0x4
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
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.quad	mgrN_print_page
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
	.long	2                       # 0x2
	.zero	16
	.zero	16
	.zero	256
	.zero	256
	.zero	2048
	.zero	4
	.size	gs_mgrgray2_device, 21072

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"mgrgray4"
	.size	.L.str.3, 9

	.type	gs_mgrgray4_device,@object # @gs_mgrgray4_device
	.data
	.globl	gs_mgrgray4_device
	.align	8
gs_mgrgray4_device:
	.long	21072                   # 0x5250
	.zero	4
	.quad	mgrN_procs
	.quad	.L.str.3
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
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	16                      # 0x10
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
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.quad	mgrN_print_page
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
	.long	4                       # 0x4
	.zero	16
	.zero	16
	.zero	256
	.zero	256
	.zero	2048
	.zero	4
	.size	gs_mgrgray4_device, 21072

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"mgrgray8"
	.size	.L.str.4, 9

	.type	gs_mgrgray8_device,@object # @gs_mgrgray8_device
	.data
	.globl	gs_mgrgray8_device
	.align	8
gs_mgrgray8_device:
	.long	21072                   # 0x5250
	.zero	4
	.quad	mgrN_procs
	.quad	.L.str.4
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
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
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
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.quad	mgrN_print_page
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
	.long	8                       # 0x8
	.zero	16
	.zero	16
	.zero	256
	.zero	256
	.zero	2048
	.zero	4
	.size	gs_mgrgray8_device, 21072

	.type	cmgr4_procs,@object     # @cmgr4_procs
	.align	8
cmgr4_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	pc_4bit_map_rgb_color
	.quad	pc_4bit_map_color_rgb
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
	.size	cmgr4_procs, 584

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"mgr4"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"DeviceRGB"
	.size	.L.str.6, 10

	.type	gs_mgr4_device,@object  # @gs_mgr4_device
	.data
	.globl	gs_mgr4_device
	.align	8
gs_mgr4_device:
	.long	21072                   # 0x5250
	.zero	4
	.quad	cmgr4_procs
	.quad	.L.str.5
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.6
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.quad	cmgrN_print_page
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
	.long	4                       # 0x4
	.zero	16
	.zero	16
	.zero	256
	.zero	256
	.zero	2048
	.zero	4
	.size	gs_mgr4_device, 21072

	.type	cmgr8_procs,@object     # @cmgr8_procs
	.align	8
cmgr8_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	mgr_8bit_map_rgb_color
	.quad	mgr_8bit_map_color_rgb
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
	.size	cmgr8_procs, 584

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"mgr8"
	.size	.L.str.7, 5

	.type	gs_mgr8_device,@object  # @gs_mgr8_device
	.data
	.globl	gs_mgr8_device
	.align	8
gs_mgr8_device:
	.long	21072                   # 0x5250
	.zero	4
	.quad	cmgr8_procs
	.quad	.L.str.7
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	6                       # 0x6
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.6
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.quad	cmgrN_print_page
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
	.long	8                       # 0x8
	.zero	16
	.zero	16
	.zero	256
	.zero	256
	.zero	2048
	.zero	4
	.size	gs_mgr8_device, 21072

	.type	mgr_8bit_map_color_rgb.ramp,@object # @mgr_8bit_map_color_rgb.ramp
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
mgr_8bit_map_color_rgb.ramp:
	.short	0                       # 0x0
	.short	10922                   # 0x2aaa
	.short	21845                   # 0x5555
	.short	32767                   # 0x7fff
	.short	43690                   # 0xaaaa
	.short	54610                   # 0xd552
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.size	mgr_8bit_map_color_rgb.ramp, 16

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"mgr_begin_page"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"mgr_next_row(done)"
	.size	.L.str.10, 19

	.type	mgrlut,@object          # @mgrlut
	.section	.rodata,"a",@progbits
	.align	16
mgrlut:
	.asciz	"\017\000\017\000\017\000\017\000\017\000\017\000\017\000\017"
	.asciz	"\017\000\017\000\017\000\017\000\017\000\017\000\017\000\017"
	.asciz	"\017\000\017\000\017\000\017\000\017\000\017\000\017\000\017"
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017"
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017"
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017"
	.ascii	"\001\000\002\b\004\003\r\013\007\006\n\f\016\005\t\017"
	.ascii	"\001\000\002\b\004\003\r\013\007\006\n\f\016\005\t\017"
	.ascii	"\001\000\002\b\004\003\r\013\007\006\n\f\016\005\t\017"
	.ascii	"\000\000\000\000\b\b\b\f\b\000\000\000\017\017\017\017"
	.ascii	"\000\000\b\b\000\000\b\f\b\000\017\017\000\000\017\017"
	.ascii	"\000\b\000\b\000\b\000\f\b\017\000\017\000\017\000\017"
	.ascii	"\001\007\006\017\016\003\r\013\007\r\r\017\017\005\t\017"
	.ascii	"\001\007\r\f\005\003\r\013\007\016\017\017\016\005\t\017"
	.ascii	"\001\016\006\b\005\003\r\013\007\017\016\f\r\005\t\017"
	.zero	48
	.size	mgrlut, 288

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"mgrN_print_page"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"mgrN_print_page(done)"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"cmgrN_print_page"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"cmgrN_print_page(done)"
	.size	.L.str.14, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
