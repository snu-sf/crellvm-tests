	.text
	.file	"gdevpdtb.bc"
	.globl	pdf_find_base14_name
	.align	16, 0x90
	.type	pdf_find_base14_name,@function
pdf_find_base14_name:                   # @pdf_find_base14_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movl	$base14_font_info, %ebx
	movl	$.L.str.20, %edi
	movl	%esi, %r12d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_2
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	16(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	jne	.LBB0_1
	jmp	.LBB0_4
.LBB0_2:                                # %if.then
	movq	8(%rbx), %r14
.LBB0_4:                                # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	pdf_find_base14_name, .Lfunc_end0-pdf_find_base14_name
	.cfi_endproc

	.globl	pdf_has_subset_prefix
	.align	16, 0x90
	.type	pdf_has_subset_prefix,@function
pdf_has_subset_prefix:                  # @pdf_has_subset_prefix
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$7, %esi
	jb	.LBB1_8
# BB#1:                                 # %lor.lhs.false
	movzbl	6(%rdi), %eax
	cmpl	$43, %eax
	jne	.LBB1_8
# BB#2:                                 # %for.cond.preheader
	movzbl	(%rdi), %eax
	addl	$-65, %eax
	cmpl	$25, %eax
	ja	.LBB1_8
# BB#3:                                 # %for.cond
	movzbl	1(%rdi), %eax
	addl	$-65, %eax
	cmpl	$26, %eax
	jae	.LBB1_8
# BB#4:                                 # %for.cond.1
	movzbl	2(%rdi), %eax
	addl	$-65, %eax
	cmpl	$25, %eax
	ja	.LBB1_8
# BB#5:                                 # %for.cond.2
	movzbl	3(%rdi), %eax
	addl	$-65, %eax
	cmpl	$25, %eax
	ja	.LBB1_8
# BB#6:                                 # %for.cond.3
	movzbl	4(%rdi), %eax
	addl	$-65, %eax
	cmpl	$25, %eax
	jbe	.LBB1_7
.LBB1_8:                                # %cleanup
	xorl	%eax, %eax
	retq
.LBB1_7:                                # %for.cond.4
	movzbl	5(%rdi), %eax
	addl	$-65, %eax
	cmpl	$26, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	retq
.Lfunc_end1:
	.size	pdf_has_subset_prefix, .Lfunc_end1-pdf_has_subset_prefix
	.cfi_endproc

	.globl	pdf_add_subset_prefix
	.align	16, 0x90
	.type	pdf_add_subset_prefix,@function
pdf_add_subset_prefix:                  # @pdf_add_subset_prefix
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
	subq	$24, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 80
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
	movq	%r8, %r15
	movl	%ecx, %r14d
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movl	8(%rbx), %edx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	1728(%rdi), %rdi
	movq	(%rbx), %rsi
	leal	7(%rdx), %r12d
	movl	$.L.str, %r8d
	movl	%r12d, %ecx
	callq	*152(%rdi)
	movq	%rax, %r13
	leal	7(%r14), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB2_13
# BB#1:                                 # %if.end
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	leal	7(%r14,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %esi
	andl	$-2, %esi
	movl	$3141592653, %r10d      # imm = 0xBB40E64D
	xorl	%ecx, %ecx
	testq	%r15, %r15
	movl	$0, %edi
	je	.LBB2_3
# BB#2:                                 # %for.cond.preheader
	movsbq	(%r15), %r8
	movzbl	1(%r15), %edi
	shlq	$8, %rdi
	movzwl	%r8w, %ebx
	orq	%rdi, %rbx
	movsbq	2(%r15), %r8
	movzbl	3(%r15), %r9d
	shlq	$8, %r9
	imulq	%r10, %rbx
	movzwl	%r8w, %edi
	orq	%r9, %rdi
	addq	%rbx, %rdi
	movsbq	4(%r15), %r8
	movzbl	5(%r15), %r9d
	shlq	$8, %r9
	imulq	%r10, %rdi
	movzwl	%r8w, %ebx
	orq	%r9, %rbx
	addq	%rdi, %rbx
	movsbq	6(%r15), %rdi
	movzbl	7(%r15), %r8d
	shlq	$8, %r8
	imulq	%r10, %rbx
	movzwl	%di, %edi
	orq	%r8, %rdi
	addq	%rbx, %rdi
.LBB2_3:                                # %for.cond.21.preheader
	testl	%esi, %esi
	jle	.LBB2_4
# BB#14:
	movq	16(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB2_15:                               # %for.body.24
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	imulq	%r10, %rdi
	movzwl	(%rbp,%rcx), %ebx
	addq	%rdi, %rbx
	addl	$2, %ecx
	cmpl	%esi, %ecx
	movq	%rbx, %rdi
	jl	.LBB2_15
	jmp	.LBB2_5
.LBB2_4:
	movq	%rdi, %rbx
	movq	16(%rsp), %rdx          # 8-byte Reload
.LBB2_5:                                # %for.cond.33.preheader
	movl	%eax, %edi
	subl	%ecx, %edi
	jle	.LBB2_12
# BB#6:                                 # %for.body.36.lr.ph
	movslq	%ecx, %rsi
	leal	-1(%rax), %r8d
	subl	%ecx, %r8d
	testb	$3, %dil
	je	.LBB2_9
# BB#7:                                 # %for.body.36.prol.preheader
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB2_8:                                # %for.body.36.prol
                                        # =>This Inner Loop Header: Depth=1
	imulq	%r10, %rbx
	movzbl	(%rbp,%rsi), %ecx
	addq	%rcx, %rbx
	incq	%rsi
	incl	%edi
	jne	.LBB2_8
.LBB2_9:                                # %for.body.36.lr.ph.split
	cmpl	$3, %r8d
	jb	.LBB2_12
# BB#10:                                # %for.body.36.lr.ph.split.split
	subl	%esi, %eax
	leaq	3(%rsi,%rbp), %rcx
	.align	16, 0x90
.LBB2_11:                               # %for.body.36
                                        # =>This Inner Loop Header: Depth=1
	imulq	%r10, %rbx
	movzbl	-3(%rcx), %esi
	addq	%rbx, %rsi
	imulq	%r10, %rsi
	movzbl	-2(%rcx), %edi
	addq	%rsi, %rdi
	imulq	%r10, %rdi
	movzbl	-1(%rcx), %esi
	addq	%rdi, %rsi
	imulq	%r10, %rsi
	movzbl	(%rcx), %ebx
	addq	%rsi, %rbx
	addq	$4, %rcx
	addl	$-4, %eax
	jne	.LBB2_11
.LBB2_12:                               # %for.end.40
	movq	%r13, %rdi
	addq	$7, %rdi
	movq	%r13, %rsi
	callq	memmove
	movabsq	$5675921253449092805, %rsi # imm = 0x4EC4EC4EC4EC4EC5
	movq	%rbx, %rax
	mulq	%rsi
	movq	%rdx, %rcx
	shrq	$3, %rcx
	imull	$26, %ecx, %eax
	movl	%ebx, %edx
	subl	%eax, %edx
	addl	$65, %edx
	movb	%dl, (%r13)
	movq	%rcx, %rax
	mulq	%rsi
	shrl	$3, %edx
	imull	$26, %edx, %eax
	negl	%eax
	leal	65(%rcx,%rax), %eax
	movb	%al, 1(%r13)
	movq	%rbx, %rax
	shrq	$2, %rax
	movabsq	$1746437308753567017, %rcx # imm = 0x183C977AB2BEDD29
	mulq	%rcx
	movq	%rdx, %rcx
	shrq	$4, %rcx
	movq	%rcx, %rax
	mulq	%rsi
	shrl	$3, %edx
	imull	$26, %edx, %eax
	subl	%eax, %ecx
	addl	$65, %ecx
	movb	%cl, 2(%r13)
	movabsq	$-1251053649059045603, %rcx # imm = 0xEEA35D55A4E11F1D
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rdx, %rcx
	shrq	$14, %rcx
	movq	%rcx, %rax
	mulq	%rsi
	shrl	$3, %edx
	imull	$26, %edx, %eax
	subl	%eax, %ecx
	addl	$65, %ecx
	movb	%cl, 3(%r13)
	movabsq	$-7864780735463086377, %rcx # imm = 0x92DAAF972A6326D7
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rdx, %rcx
	shrq	$18, %rcx
	movq	%rcx, %rax
	mulq	%rsi
	shrl	$3, %edx
	imull	$26, %edx, %eax
	subl	%eax, %ecx
	addl	$65, %ecx
	movb	%cl, 4(%r13)
	movabsq	$-5422789195867748245, %rcx # imm = 0xB4BE61F5207A086B
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rdx, %rcx
	shrq	$23, %rcx
	movq	%rcx, %rax
	mulq	%rsi
	shrl	$3, %edx
	imull	$26, %edx, %eax
	subl	%eax, %ecx
	addl	$65, %ecx
	movb	%cl, 5(%r13)
	movb	$43, 6(%r13)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%r13, (%rax)
	movl	%r12d, 8(%rax)
	xorl	%eax, %eax
.LBB2_13:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pdf_add_subset_prefix, .Lfunc_end2-pdf_add_subset_prefix
	.cfi_endproc

	.globl	pdf_base_font_alloc
	.align	16, 0x90
	.type	pdf_base_font_alloc,@function
pdf_base_font_alloc:                    # @pdf_base_font_alloc
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
	subq	$168, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 224
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
	movl	%r8d, 60(%rsp)          # 4-byte Spill
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	1728(%rbp), %r14
	movl	$st_pdf_base_font, %esi
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %r13
	movl	$-25, %r12d
	testq	%r13, %r13
	je	.LBB3_46
# BB#1:                                 # %if.end
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	leaq	324(%r15), %rbp
	xorl	%esi, %esi
	movl	$80, %edx
	movq	%r13, %rdi
	callq	memset
	movl	128(%r15), %eax
	movl	$-15, %r12d
	cmpl	$10, %eax
	jg	.LBB3_5
# BB#2:                                 # %if.end
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB3_3
# BB#8:                                 # %sw.bb
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movl	$0, 124(%rsp)
	movl	$-1, %r14d
	leaq	124(%rsp), %rbx
	leaq	64(%rsp), %rbp
	.align	16, 0x90
.LBB3_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rcx
	callq	*216(%r15)
	incl	%r14d
	cmpl	$0, 124(%rsp)
	jne	.LBB3_9
# BB#10:                                # %for.end
	movl	%r14d, 24(%r13)
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 16(%r13)
	movl	$-1, %ebx
	jne	.LBB3_11
# BB#12:                                # %for.end
	cmpl	$2049, 24(%r13)         # imm = 0x801
	movq	16(%rsp), %r14          # 8-byte Reload
	jl	.LBB3_19
# BB#13:                                # %if.then.9
	movl	$257, %ebx              # imm = 0x101
	cmpl	$1, 16(%r13)
	je	.LBB3_19
# BB#14:                                # %if.then.12
	movslq	372(%r15), %rax
	cmpq	$47, %rax
	movl	$47, %ebp
	cmovbq	%rax, %rbp
	leaq	64(%rsp), %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	callq	memcpy
	movb	$0, 64(%rsp,%rbp)
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	leaq	64(%rsp), %rdx
	callq	errprintf
	jmp	.LBB3_19
.LBB3_5:                                # %if.end
	cmpl	$11, %eax
	jne	.LBB3_6
# BB#15:                                # %sw.bb.41
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	696(%r15), %eax
	jmp	.LBB3_16
.LBB3_3:                                # %if.end
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	cmpl	$9, %eax
	jne	.LBB3_30
# BB#4:                                 # %sw.bb.39
	movl	488(%r15), %eax
.LBB3_16:                               # %cid
	movl	%eax, 24(%r13)
	movl	$2, 16(%r13)
	leal	7(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rax,%rcx), %esi
	sarl	$3, %esi
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, 32(%r13)
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB3_30
# BB#17:                                # %if.end.54
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	24(%r13), %ecx
	leal	7(%rcx), %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	7(%rcx,%rdx), %ecx
	sarl	$3, %ecx
	movl	%ecx, 40(%r13)
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	jmp	.LBB3_18
.LBB3_6:                                # %if.end
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	cmpl	$42, %eax
	jne	.LBB3_30
# BB#7:                                 # %sw.bb.32
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	596(%r15), %eax
	movl	%eax, 24(%r13)
	cmpl	$4096, %eax             # imm = 0x1000
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	movl	%eax, 16(%r13)
.LBB3_18:                               # %sw.epilog
	movl	$-1, %ebx
	jmp	.LBB3_19
.LBB3_11:
	movq	16(%rsp), %r14          # 8-byte Reload
.LBB3_19:                               # %sw.epilog
	leaq	160(%rsp), %rcx
	movq	%r15, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	movl	%ebx, %r8d
	callq	gs_copy_font
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB3_30
# BB#20:                                # %if.end.68
	movq	160(%rsp), %rdx
	leaq	40(%rdx), %rdi
	movl	$copied_font_notify, %esi
	callq	gs_notify_register
	movq	160(%rsp), %rsi
	movl	$0, 100(%rsi)
	movl	$0, 96(%rsi)
	cmpl	$-1, %ebx
	jne	.LBB3_32
# BB#21:                                # %if.end.68
	cmpl	$2, 16(%r13)
	je	.LBB3_32
# BB#22:                                # %if.then.77
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB3_24
# BB#23:                                # %if.then.79
	movq	%rsi, 152(%rsp)
	movq	32(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB3_26
.LBB3_32:                               # %if.else.130
	movq	%rsi, 152(%rsp)
	movq	32(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB3_33
.LBB3_24:                               # %if.else
	leaq	80(%r15), %rsi
	leaq	152(%rsp), %rcx
	movl	$-1, %r8d
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	gs_copy_font
	movl	%eax, %r12d
	testl	%r12d, %r12d
	movq	32(%rsp), %rbp          # 8-byte Reload
	js	.LBB3_30
# BB#25:                                # %if.else.if.end.86_crit_edge
	movq	152(%rsp), %rsi
.LBB3_26:                               # %if.end.86
	movq	%r15, %rdi
	callq	gs_copy_font_complete
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB3_28
# BB#27:                                # %if.end.86.if.end.131_crit_edge
	movq	160(%rsp), %rsi
	jmp	.LBB3_33
.LBB3_28:                               # %land.lhs.true.90
	cmpl	$1, 16(%r13)
	jne	.LBB3_31
# BB#29:                                # %if.then.94
	movq	160(%rsp), %rsi
	movslq	372(%rsi), %rax
	addq	$324, %rsi              # imm = 0x144
	cmpq	$47, %rax
	movl	$47, %ebx
	cmovbq	%rax, %rbx
	leaq	64(%rsp), %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 64(%rsp,%rbx)
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	24(%r15), %rbp
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r15), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	leaq	64(%rsp), %rdx
	callq	errprintf
	jmp	.LBB3_30
.LBB3_31:                               # %if.then.127
	movq	152(%rsp), %rdi
	callq	gs_free_copied_font
	movq	160(%rsp), %rsi
	movq	%rsi, 152(%rsp)
.LBB3_33:                               # %if.end.131
	movq	%rsi, (%r13)
	movq	152(%rsp), %rax
	movq	%rax, 8(%r13)
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, 20(%r13)
	movl	372(%r15), %ebx
	testl	%ebx, %ebx
	jne	.LBB3_34
# BB#43:                                # %if.else.150
	leaq	128(%rsp), %rbp
	movq	160(%rsp), %rdx
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %rbx
	jmp	.LBB3_44
	.align	16, 0x90
.LBB3_42:                               # %while.body
                                        #   in Loop: Header=BB3_34 Depth=1
	addq	$7, %rbp
	addl	$-7, %ebx
.LBB3_34:                               # %if.then.138
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ebx
	jb	.LBB3_44
# BB#35:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB3_34 Depth=1
	movzbl	6(%rbp), %eax
	cmpl	$43, %eax
	jne	.LBB3_44
# BB#36:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB3_34 Depth=1
	movzbl	(%rbp), %eax
	addl	$-65, %eax
	cmpl	$25, %eax
	ja	.LBB3_44
# BB#37:                                # %for.cond.i
                                        #   in Loop: Header=BB3_34 Depth=1
	movzbl	1(%rbp), %eax
	addl	$-65, %eax
	cmpl	$25, %eax
	ja	.LBB3_44
# BB#38:                                # %for.cond.1.i
                                        #   in Loop: Header=BB3_34 Depth=1
	movzbl	2(%rbp), %eax
	addl	$-65, %eax
	cmpl	$25, %eax
	ja	.LBB3_44
# BB#39:                                # %for.cond.2.i
                                        #   in Loop: Header=BB3_34 Depth=1
	movzbl	3(%rbp), %eax
	addl	$-65, %eax
	cmpl	$25, %eax
	ja	.LBB3_44
# BB#40:                                # %for.cond.3.i
                                        #   in Loop: Header=BB3_34 Depth=1
	movzbl	4(%rbp), %eax
	addl	$-65, %eax
	cmpl	$25, %eax
	ja	.LBB3_44
# BB#41:                                # %pdf_has_subset_prefix.exit
                                        #   in Loop: Header=BB3_34 Depth=1
	movzbl	5(%rbp), %eax
	addl	$-65, %eax
	cmpl	$25, %eax
	jbe	.LBB3_42
.LBB3_44:                               # %if.end.159
	movl	$.L.str.6, %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	*136(%r14)
	movq	%rax, 48(%r13)
	testq	%rax, %rax
	je	.LBB3_30
# BB#45:                                # %if.end.170
	movl	%ebx, %edx
	movq	%rax, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movl	%ebx, 56(%r13)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%r13, (%rax)
	xorl	%r12d, %r12d
	jmp	.LBB3_46
.LBB3_30:                               # %fail
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*24(%r14)
.LBB3_46:                               # %cleanup
	movl	%r12d, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pdf_base_font_alloc, .Lfunc_end3-pdf_base_font_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	copied_font_notify,@function
copied_font_notify:                     # @copied_font_notify
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_purge_font_from_char_caches_completely # TAILCALL
.Lfunc_end4:
	.size	copied_font_notify, .Lfunc_end4-copied_font_notify
	.cfi_endproc

	.globl	pdf_base_font_name
	.align	16, 0x90
	.type	pdf_base_font_name,@function
pdf_base_font_name:                     # @pdf_base_font_name
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	48(%rdi), %rax
	retq
.Lfunc_end5:
	.size	pdf_base_font_name, .Lfunc_end5-pdf_base_font_name
	.cfi_endproc

	.globl	pdf_base_font_font
	.align	16, 0x90
	.type	pdf_base_font_font,@function
pdf_base_font_font:                     # @pdf_base_font_font
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	8(%rdi), %rax
	testl	%esi, %esi
	cmoveq	%rdi, %rax
	movq	(%rax), %rax
	retq
.Lfunc_end6:
	.size	pdf_base_font_font, .Lfunc_end6-pdf_base_font_font
	.cfi_endproc

	.globl	pdf_base_font_is_subset
	.align	16, 0x90
	.type	pdf_base_font_is_subset,@function
pdf_base_font_is_subset:                # @pdf_base_font_is_subset
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$2, 16(%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end7:
	.size	pdf_base_font_is_subset, .Lfunc_end7-pdf_base_font_is_subset
	.cfi_endproc

	.globl	pdf_base_font_drop_complete
	.align	16, 0x90
	.type	pdf_base_font_drop_complete,@function
pdf_base_font_drop_complete:            # @pdf_base_font_drop_complete
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 8(%rdi)
	retq
.Lfunc_end8:
	.size	pdf_base_font_drop_complete, .Lfunc_end8-pdf_base_font_drop_complete
	.cfi_endproc

	.globl	pdf_base_font_copy_glyph
	.align	16, 0x90
	.type	pdf_base_font_copy_glyph,@function
pdf_base_font_copy_glyph:               # @pdf_base_font_copy_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -24
.Ltmp39:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	movl	$2, %ecx
	cmpl	$0, 20(%rbx)
	jne	.LBB9_2
# BB#1:                                 # %select.mid
	xorl	%ecx, %ecx
.LBB9_2:                                # %select.end
	movq	%rdx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	gs_copy_glyph_options
	testl	%eax, %eax
	js	.LBB9_6
# BB#3:                                 # %if.end
	movq	32(%rbx), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	subq	$-2147483648, %r14      # imm = 0xFFFFFFFF80000000
	cmpl	24(%rbx), %r14d
	jae	.LBB9_6
# BB#5:                                 # %if.then.4
	movb	%r14b, %cl
	andb	$7, %cl
	movl	$128, %esi
	shrl	%cl, %esi
	shrq	$3, %r14
	andl	$536870911, %r14d       # imm = 0x1FFFFFFF
	movzbl	(%rdx,%r14), %ecx
	orl	%esi, %ecx
	movb	%cl, (%rdx,%r14)
.LBB9_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	pdf_base_font_copy_glyph, .Lfunc_end9-pdf_base_font_copy_glyph
	.cfi_endproc

	.globl	pdf_do_subset_font
	.align	16, 0x90
	.type	pdf_do_subset_font,@function
pdf_do_subset_font:                     # @pdf_do_subset_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 80
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movl	16(%rsi), %ebp
	testl	%ebp, %ebp
	jne	.LBB10_8
# BB#1:                                 # %if.then
	movl	9320(%rdi), %eax
	cmpl	$0, 9324(%rdi)
	setne	%dl
	testl	%eax, %eax
	setg	%cl
	andb	%dl, %cl
	movzbl	%cl, %ebp
	cmpl	$99, %eax
	jg	.LBB10_7
# BB#2:                                 # %if.then
	testb	%cl, %cl
	je	.LBB10_7
# BB#3:                                 # %if.then.9
	movq	(%rsi), %rbx
	imull	24(%rsi), %eax
	movq	%rsi, (%rsp)            # 8-byte Spill
	cltq
	imulq	$1374389535, %rax, %r13 # imm = 0x51EB851F
	movq	%r13, %rax
	shrq	$63, %rax
	sarq	$37, %r13
	addl	%eax, %r13d
	movl	$0, 20(%rsp)
	movl	$-1, %r14d
	leaq	20(%rsp), %r15
	leaq	8(%rsp), %r12
	.align	16, 0x90
.LBB10_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %ebp
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rcx
	callq	*216(%rbx)
	cmpl	$0, 20(%rsp)
	je	.LBB10_6
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB10_4 Depth=1
	incl	%r14d
	xorl	%ebp, %ebp
	cmpl	%r13d, %r14d
	jl	.LBB10_4
.LBB10_6:                               # %for.end
	movq	(%rsp), %rsi            # 8-byte Reload
.LBB10_7:                               # %if.end.14
	incl	%ebp
	movl	%ebp, 16(%rsi)
.LBB10_8:                               # %if.end.17
	cmpl	$2, %ebp
	sete	%al
	movzbl	%al, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pdf_do_subset_font, .Lfunc_end10-pdf_do_subset_font
	.cfi_endproc

	.globl	pdf_write_FontFile_entry
	.align	16, 0x90
	.type	pdf_write_FontFile_entry,@function
pdf_write_FontFile_entry:               # @pdf_write_FontFile_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp55:
	.cfi_def_cfa_offset 32
.Ltmp56:
	.cfi_offset %rbx, -24
.Ltmp57:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	5848(%rdi), %r14
	movq	(%rbx), %rax
	movl	$.L.str.7, %esi
	movl	128(%rax), %eax
	cmpl	$11, %eax
	je	.LBB11_4
# BB#1:                                 # %entry
	cmpl	$42, %eax
	je	.LBB11_4
# BB#2:                                 # %sw.default
	movl	$.L.str.9, %esi
	cmpl	$0, 9536(%rdi)
	je	.LBB11_4
# BB#3:                                 # %select.mid
	movl	$.L.str.8, %esi
.LBB11_4:                               # %sw.epilog
	movq	%r14, %rdi
	callq	stream_puts
	movq	72(%rbx), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	pprintld1
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	pdf_write_FontFile_entry, .Lfunc_end11-pdf_write_FontFile_entry
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4608083138725491507     # double 1.2
.LCPI12_1:
	.quad	4608533498688228557     # double 1.3
	.text
	.globl	pdf_write_embedded_font
	.align	16, 0x90
	.type	pdf_write_embedded_font,@function
pdf_write_embedded_font:                # @pdf_write_embedded_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 56
	subq	$520, %rsp              # imm = 0x208
.Ltmp64:
	.cfi_def_cfa_offset 576
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	16(%rbx), %r13d
	testl	%r13d, %r13d
	jne	.LBB12_8
# BB#1:                                 # %if.then.i
	movl	9320(%r15), %eax
	cmpl	$0, 9324(%r15)
	setne	%dl
	testl	%eax, %eax
	setg	%cl
	andb	%dl, %cl
	movzbl	%cl, %r13d
	cmpl	$99, %eax
	jg	.LBB12_7
# BB#2:                                 # %if.then.i
	testb	%cl, %cl
	je	.LBB12_7
# BB#3:                                 # %if.then.9.i
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	(%rbx), %rbp
	imull	24(%rbx), %eax
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	cltq
	imulq	$1374389535, %rax, %rbx # imm = 0x51EB851F
	movq	%rbx, %rax
	shrq	$63, %rax
	sarq	$37, %rbx
	addl	%eax, %ebx
	movl	$0, 424(%rsp)
	movl	$-1, %r15d
	leaq	424(%rsp), %r14
	leaq	64(%rsp), %r12
	.align	16, 0x90
.LBB12_4:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %r13d
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r12, %rcx
	callq	*216(%rbp)
	cmpl	$0, 424(%rsp)
	je	.LBB12_6
# BB#5:                                 # %for.body.i
                                        #   in Loop: Header=BB12_4 Depth=1
	incl	%r15d
	xorl	%r13d, %r13d
	cmpl	%ebx, %r15d
	jl	.LBB12_4
.LBB12_6:                               # %for.end.i
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	24(%rsp), %r15          # 8-byte Reload
.LBB12_7:                               # %if.end.14.i
	incl	%r13d
	movl	%r13d, 16(%rbx)
.LBB12_8:                               # %pdf_do_subset_font.exit
	cmpl	$2, %r13d
	je	.LBB12_10
# BB#9:                                 # %lor.lhs.false
	movq	8(%rbx), %r12
	testq	%r12, %r12
	jne	.LBB12_11
.LBB12_10:                              # %cond.true
	movq	(%rbx), %r12
.LBB12_11:                              # %cond.end
	movw	$0, 420(%rsp)
	movl	$0, 416(%rsp)
	xorl	%r14d, %r14d
	cmpl	$0, 64(%rbx)
	jne	.LBB12_76
# BB#12:                                # %if.end
	movq	%r12, %rdi
	callq	copied_order_font
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_76
# BB#13:                                # %if.end.6
	movl	$3, %edx
	cmpl	$0, 9480(%r15)
	jne	.LBB12_17
# BB#14:                                # %if.else
	cmpl	$1, 60(%rsp)            # 4-byte Folded Reload
	jne	.LBB12_16
# BB#15:                                # %lor.lhs.false.10
	xorl	%edx, %edx
	cmpl	$0, 8856(%r15)
	je	.LBB12_17
.LBB12_16:                              # %if.then.12
	movl	$1, %edx
.LBB12_17:                              # %if.end.14
	leaq	424(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	pdf_begin_data_stream
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_76
# BB#18:                                # %if.end.18
	cmpl	$0, 9564(%r15)
	je	.LBB12_21
# BB#19:                                # %if.then.20
	movq	1728(%r15), %rdi
	movq	440(%rsp), %rsi
	callq	s_MD5C_make_stream
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB12_76
# BB#20:                                # %if.end.24
	movq	%rax, 440(%rsp)
.LBB12_21:                              # %if.end.27
	cmpl	$2, %r13d
	je	.LBB12_36
# BB#22:                                # %if.end.27
	movsd	9368(%r15), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI12_0(%rip), %xmm0
	jne	.LBB12_36
	jp	.LBB12_36
# BB#23:                                # %land.lhs.true.30
	cmpl	$0, 20(%rbx)
	jne	.LBB12_36
# BB#24:                                # %if.then.32
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	472(%rsp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	48(%rbx), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movslq	56(%rbx), %r14
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%r14, %rbx
	incq	%rbx
	leal	-1(%r14), %eax
	cltq
	leaq	(%rax,%rcx), %rbp
	.align	16, 0x90
.LBB12_25:                              # %for.cond.i.87
                                        # =>This Inner Loop Header: Depth=1
	decq	%rbx
	testq	%rbx, %rbx
	jle	.LBB12_26
# BB#27:                                # %land.rhs.i
                                        #   in Loop: Header=BB12_25 Depth=1
	movq	%r15, %r13
	movzbl	(%rbp), %r15d
	callq	__ctype_b_loc
	movq	(%rax), %rax
	decq	%rbp
	testb	$16, 1(%rax,%r15,2)
	movq	%r13, %r15
	jne	.LBB12_25
# BB#28:                                # %for.end.i.90
	cmpl	%r14d, %ebx
	jae	.LBB12_26
# BB#29:                                # %land.lhs.true.11.i
	shlq	$32, %rbx
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	leaq	(%rax,%rbx), %rax
	sarq	$32, %rax
	movq	24(%rsp), %r13          # 8-byte Reload
	movzbl	(%r13,%rax), %eax
	cmpl	$126, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	jne	.LBB12_33
# BB#30:                                # %do.body.18.preheader.i
	sarq	$32, %rbx
.LBB12_31:                              # %do.body.18.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r14
	cmpq	$2, %r14
	jl	.LBB12_33
# BB#32:                                # %land.rhs.23.i
                                        #   in Loop: Header=BB12_31 Depth=1
	movzbl	-2(%r13,%r14), %eax
	leaq	-1(%r14), %rbx
	cmpl	$126, %eax
	je	.LBB12_31
	jmp	.LBB12_33
.LBB12_26:
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
.LBB12_33:                              # %if.end.i
	leaq	64(%rsp), %rbx
	movl	$.L.str.81, %esi
	movl	$126, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	1728(%r15), %rdi
	leal	(%rbp,%r14), %ecx
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movl	$.L.str.82, %r8d
	movq	%r13, %rsi
	movl	%r14d, %edx
	callq	*152(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB12_34
# BB#35:                                # %pdf_adjust_font_name.exit.thread
	movl	%r14d, %edi
	addq	%rbx, %rdi
	movl	%ebp, %edx
	leaq	64(%rsp), %rsi
	callq	memcpy
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	%rbx, 48(%r13)
	movq	%r13, %rbx
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, 56(%rbx)
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB12_36:                              # %if.end.41
	movq	48(%rbx), %rax
	movq	%rax, 504(%rsp)
	movl	56(%rbx), %eax
	movl	%eax, 512(%rsp)
	xorl	%r13d, %r13d
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ecx
	cmpl	$11, %eax
	jbe	.LBB12_49
# BB#37:                                # %if.end.41
	cmpl	$42, %eax
	jne	.LBB12_74
# BB#38:                                # %sw.bb.109
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	$50, %ebp
	cmpl	$0, 9564(%r15)
	jne	.LBB12_40
# BB#39:                                # %select.mid142
	movl	$18, %ebp
.LBB12_40:                              # %select.end141
	movl	$8, %ebx
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	movq	%r15, %r13
	jae	.LBB12_42
# BB#41:                                # %select.mid156
	xorl	%ebx, %ebx
.LBB12_42:                              # %select.end155
	movl	592(%r12), %eax
	movb	$1, %r15b
	cmpl	596(%r12), %eax
	jne	.LBB12_44
# BB#43:                                # %lor.rhs
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpl	$2, 16(%rax)
	sete	%r15b
.LBB12_44:                              # %lor.end
	cmpl	$0, 9540(%r13)
	je	.LBB12_46
# BB#45:                                # %if.then.128
	movq	%r12, %rdi
	callq	copied_drop_extension_glyphs
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_76
.LBB12_46:                              # %if.end.133
	orl	%ebp, %ebx
	movzbl	%r15b, %ebp
	orl	%ebx, %ebp
	movq	24(%r13), %rsi
	leaq	64(%rsp), %rbx
	movq	%rbx, %rdi
	callq	s_init
	movq	%rbx, %rdi
	callq	swrite_position_only
	leaq	504(%rsp), %r9
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%ebp, %edx
	callq	psf_write_truetype_font
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_76
# BB#47:                                # %if.end.137
	movq	472(%rsp), %rax
	movq	64(%rax), %rbx
	leaq	64(%rsp), %rdi
	callq	stell
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	cos_dict_put_c_key_int
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_76
# BB#48:                                # %cleanup.149
	movq	440(%rsp), %rdi
	leaq	504(%rsp), %r9
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rsi
	movl	%ebp, %edx
	callq	psf_write_truetype_font
	movl	%eax, %r14d
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%r13, %r15
	xorl	%r13d, %r13d
	jmp	.LBB12_71
.LBB12_49:                              # %if.end.41
	xorl	%eax, %eax
	jmpq	*.LJTI12_0(,%rcx,8)
.LBB12_50:                              # %sw.bb.45
	movl	$-28, %r14d
	cmpl	$0, 8856(%r15)
	je	.LBB12_76
.LBB12_51:                              # %sw.bb.50
	cmpl	$0, 9540(%r15)
	je	.LBB12_53
# BB#52:                                # %if.then.52
	movq	%r12, %rdi
	callq	copied_drop_extension_glyphs
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_76
.LBB12_53:                              # %if.end.57
	cmpl	$0, 8856(%r15)
	je	.LBB12_54
# BB#63:                                # %if.else.95
	movq	472(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.14, %esi
	movl	$.L.str.15, %edx
	callq	cos_dict_put_string_copy
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_76
# BB#64:                                # %if.end.101
	movq	440(%rsp), %rdi
	movl	$7, %edx
	movsd	.LCPI12_1(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	ja	.LBB12_66
# BB#65:                                # %select.mid
	movl	$3, %edx
.LBB12_66:                              # %select.end
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	leaq	504(%rsp), %r9
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rsi
	callq	psf_write_type2_font
	movl	%eax, %r13d
	movl	%r13d, %r14d
	jmp	.LBB12_71
.LBB12_74:                              # %sw.default
	movl	$-15, %eax
	jmp	.LBB12_75
.LBB12_67:                              # %sw.bb.152
	movq	472(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.14, %esi
	movl	$.L.str.16, %edx
	callq	cos_dict_put_string_copy
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_76
# BB#68:                                # %if.end.159
	movq	440(%rsp), %rdi
	xorl	%r13d, %r13d
	leaq	504(%rsp), %r9
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rsi
	callq	psf_write_cid0_font
	jmp	.LBB12_70
.LBB12_69:                              # %sw.bb.163
	movq	440(%rsp), %rdi
	xorl	%r13d, %r13d
	leaq	504(%rsp), %r9
	movl	$16, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rsi
	callq	psf_write_cid2_font
.LBB12_70:                              # %finish
	movl	%eax, %r14d
.LBB12_71:                              # %finish
	cmpl	$0, 9564(%r15)
	je	.LBB12_73
# BB#72:                                # %if.then.171
	movq	440(%rsp), %rdi
	callq	*208(%rdi)
	movq	440(%rsp), %rdi
	leaq	416(%rsp), %rsi
	movl	$6, %edx
	callq	s_MD5C_get_digest
.LBB12_73:                              # %if.end.181
	movq	472(%rsp), %rax
	movq	64(%rax), %rax
	movq	%rax, (%rbp)
	movq	480(%rsp), %rdi
	callq	pdf_close_aside
	testl	%r14d, %r14d
	js	.LBB12_76
.LBB12_75:                              # %sw.epilog
	testl	%eax, %eax
	movl	%eax, %r14d
	cmovnsl	%r13d, %r14d
	testl	%r13d, %r13d
	cmovnsl	%eax, %r14d
	movl	$1, 64(%rbx)
.LBB12_76:                              # %cleanup.198
	movl	%r14d, %eax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_34:                              # %pdf_adjust_font_name.exit.thread95
	movl	$-25, %r14d
	jmp	.LBB12_76
.LBB12_54:                              # %if.then.60
	movq	440(%rsp), %rdi
	leaq	64(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	504(%rsp), %r9
	movl	$39, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rsi
	callq	psf_write_type1_font
	movl	%eax, %r13d
	movl	64(%rsp), %edx
	testl	%edx, %edx
	jle	.LBB12_55
# BB#56:                                # %if.then.65
	testl	%r13d, %r13d
	movl	%r13d, %r14d
	js	.LBB12_71
# BB#57:                                # %if.end.68
	movq	472(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.11, %esi
	callq	cos_dict_put_c_key_int
	movl	%eax, %r14d
	jmp	.LBB12_58
.LBB12_55:
	movl	%r13d, %r14d
.LBB12_58:                              # %if.end.73
	movl	68(%rsp), %edx
	testl	%edx, %edx
	jle	.LBB12_62
# BB#59:                                # %if.then.76
	testl	%r14d, %r14d
	movl	%r14d, %r13d
	js	.LBB12_71
# BB#60:                                # %if.end.79
	movq	472(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.12, %esi
	callq	cos_dict_put_c_key_int
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_76
# BB#61:                                # %if.end.86
	movq	472(%rsp), %rax
	movq	64(%rax), %rdi
	movl	72(%rsp), %edx
	movl	$.L.str.13, %esi
	callq	cos_dict_put_c_key_int
	movl	%eax, %r14d
.LBB12_62:                              # %cleanup.92.thread
	xorl	%r13d, %r13d
	jmp	.LBB12_71
.Lfunc_end12:
	.size	pdf_write_embedded_font, .Lfunc_end12-pdf_write_embedded_font
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_75
	.quad	.LBB12_51
	.quad	.LBB12_50
	.quad	.LBB12_74
	.quad	.LBB12_74
	.quad	.LBB12_74
	.quad	.LBB12_74
	.quad	.LBB12_74
	.quad	.LBB12_74
	.quad	.LBB12_67
	.quad	.LBB12_74
	.quad	.LBB12_69

	.text
	.globl	pdf_write_CharSet
	.align	16, 0x90
	.type	pdf_write_CharSet,@function
pdf_write_CharSet:                      # @pdf_write_CharSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp77:
	.cfi_def_cfa_offset 96
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	5848(%r15), %r14
	movq	(%rsi), %rbx
	movl	$.L.str.17, %esi
	movq	%r14, %rdi
	callq	stream_puts
	movl	$0, 36(%rsp)
	leaq	36(%rsp), %rsi
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	*216(%rbx)
	cmpl	$0, 36(%rsp)
	je	.LBB13_6
# BB#1:                                 # %for.body.lr.ph
	leaq	8(%rsp), %r12
	leaq	36(%rsp), %r13
	leaq	24(%rsp), %rbp
	.align	16, 0x90
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	*240(%rbx)
	testl	%eax, %eax
	js	.LBB13_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	8(%rsp), %rdi
	movl	16(%rsp), %esi
	movl	$.L.str.18, %edx
	movl	$7, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB13_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	8(%rsp), %rsi
	movl	16(%rsp), %edx
	movq	%r15, %rdi
	callq	pdf_put_name
.LBB13_5:                               # %if.end
                                        #   in Loop: Header=BB13_2 Depth=1
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rcx
	callq	*216(%rbx)
	cmpl	$0, 36(%rsp)
	jne	.LBB13_2
.LBB13_6:                               # %for.end
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	callq	stream_puts
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pdf_write_CharSet, .Lfunc_end13-pdf_write_CharSet
	.cfi_endproc

	.globl	pdf_write_CIDSet
	.align	16, 0x90
	.type	pdf_write_CIDSet,@function
pdf_write_CIDSet:                       # @pdf_write_CIDSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 112
.Ltmp87:
	.cfi_offset %rbx, -24
.Ltmp88:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movl	$3, %edx
	cmpl	$0, 9480(%rdi)
	jne	.LBB14_2
# BB#1:                                 # %select.mid
	movl	$1, %edx
.LBB14_2:                               # %select.end
	leaq	8(%rsp), %rsi
	xorl	%ecx, %ecx
	callq	pdf_begin_data_stream
	testl	%eax, %eax
	js	.LBB14_5
# BB#3:                                 # %if.end
	movq	24(%rsp), %rdi
	movq	32(%rbx), %rsi
	movl	40(%rbx), %edx
	callq	stream_write
	leaq	8(%rsp), %rdi
	callq	pdf_end_data
	testl	%eax, %eax
	js	.LBB14_5
# BB#4:                                 # %if.end.5
	movq	56(%rsp), %rdi
	callq	pdf_resource_id
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB14_5:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	pdf_write_CIDSet, .Lfunc_end14-pdf_write_CIDSet
	.cfi_endproc

	.globl	pdf_is_standard_font
	.align	16, 0x90
	.type	pdf_is_standard_font,@function
pdf_is_standard_font:                   # @pdf_is_standard_font
	.cfi_startproc
# BB#0:                                 # %entry
	movl	20(%rdi), %eax
	retq
.Lfunc_end15:
	.size	pdf_is_standard_font, .Lfunc_end15-pdf_is_standard_font
	.cfi_endproc

	.globl	pdf_set_FontFile_object
	.align	16, 0x90
	.type	pdf_set_FontFile_object,@function
pdf_set_FontFile_object:                # @pdf_set_FontFile_object
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 72(%rdi)
	retq
.Lfunc_end16:
	.size	pdf_set_FontFile_object, .Lfunc_end16-pdf_set_FontFile_object
	.cfi_endproc

	.globl	pdf_get_FontFile_object
	.align	16, 0x90
	.type	pdf_get_FontFile_object,@function
pdf_get_FontFile_object:                # @pdf_get_FontFile_object
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rdi), %rax
	retq
.Lfunc_end17:
	.size	pdf_get_FontFile_object, .Lfunc_end17-pdf_get_FontFile_object
	.cfi_endproc

	.type	base14_font_info,@object # @base14_font_info
	.section	.rodata,"a",@progbits
	.align	16
base14_font_info:
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.21
	.quad	.L.str.49
	.quad	.L.str.23
	.quad	.L.str.50
	.quad	.L.str.25
	.quad	.L.str.51
	.quad	.L.str.27
	.quad	.L.str.52
	.quad	.L.str.29
	.quad	.L.str.53
	.quad	.L.str.31
	.quad	.L.str.54
	.quad	.L.str.33
	.quad	.L.str.55
	.quad	.L.str.35
	.quad	.L.str.56
	.quad	.L.str.29
	.quad	.L.str.57
	.quad	.L.str.31
	.quad	.L.str.58
	.quad	.L.str.33
	.quad	.L.str.59
	.quad	.L.str.35
	.quad	.L.str.60
	.quad	.L.str.29
	.quad	.L.str.61
	.quad	.L.str.31
	.quad	.L.str.62
	.quad	.L.str.33
	.quad	.L.str.63
	.quad	.L.str.35
	.quad	.L.str.64
	.quad	.L.str.39
	.quad	.L.str.65
	.quad	.L.str.41
	.quad	.L.str.66
	.quad	.L.str.43
	.quad	.L.str.67
	.quad	.L.str.45
	.quad	.L.str.68
	.quad	.L.str.39
	.quad	.L.str.69
	.quad	.L.str.41
	.quad	.L.str.70
	.quad	.L.str.43
	.quad	.L.str.71
	.quad	.L.str.45
	.quad	.L.str.72
	.quad	.L.str.39
	.quad	.L.str.73
	.quad	.L.str.41
	.quad	.L.str.74
	.quad	.L.str.43
	.quad	.L.str.75
	.quad	.L.str.45
	.quad	.L.str.76
	.quad	.L.str.39
	.quad	.L.str.77
	.quad	.L.str.41
	.quad	.L.str.78
	.quad	.L.str.43
	.quad	.L.str.79
	.quad	.L.str.45
	.zero	16
	.size	base14_font_info, 752

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_add_subset_prefix"
	.size	.L.str, 22

	.type	st_pdf_base_font,@object # @st_pdf_base_font
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_base_font:
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.80
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_base_font_data
	.size	st_pdf_base_font, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"pdf_base_font_alloc"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Can't embed the complete font %s as it is too large, embedding a subset.\n"
	.size	.L.str.2, 74

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"pdf_base_font_alloc(CIDSet)"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Can't embed the complete font %s due to font error.\n"
	.size	.L.str.4, 53

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	".F%lx"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pdf_base_font_alloc(font_name)"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/FontFile2"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/FontFile"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/FontFile3"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	" %ld 0 R"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/Length1"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/Length2"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/Length3"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/Subtype"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"/Type1C"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/CIDFontType0C"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"("
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	".notdef"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	")"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"NimbusMonL-Regu"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Courier"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"NimbusMonL-Bold"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Courier-Bold"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"NimbusMonL-ReguObli"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Courier-Oblique"
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"NimbusMonL-BoldObli"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Courier-BoldOblique"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"NimbusSanL-Regu"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Helvetica"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"NimbusSanL-Bold"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Helvetica-Bold"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"NimbusSanL-ReguItal"
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Helvetica-Oblique"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"NimbusSanL-BoldItal"
	.size	.L.str.34, 20

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Helvetica-BoldOblique"
	.size	.L.str.35, 22

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"StandardSymL"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Symbol"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"NimbusRomNo9L-Regu"
	.size	.L.str.38, 19

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Times-Roman"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"NimbusRomNo9L-Medi"
	.size	.L.str.40, 19

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Times-Bold"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"NimbusRomNo9L-ReguItal"
	.size	.L.str.42, 23

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Times-Italic"
	.size	.L.str.43, 13

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"NimbusRomNo9L-MediItal"
	.size	.L.str.44, 23

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Times-BoldItalic"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Dingbats"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"ZapfDingbats"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"NimbusMono-Reg"
	.size	.L.str.48, 15

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"NimbusMono-Bol"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"NimbusMono-Ita"
	.size	.L.str.50, 15

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"NimbusMono-BolIta"
	.size	.L.str.51, 18

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"NimbusSan-Reg"
	.size	.L.str.52, 14

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"NimbusSan-Bol"
	.size	.L.str.53, 14

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"NimbusSan-Ita"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"NimbusSan-BolIta"
	.size	.L.str.55, 17

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"A030-Reg"
	.size	.L.str.56, 9

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"A030-Bol"
	.size	.L.str.57, 9

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"A030-Ita"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"A030-BolIta"
	.size	.L.str.59, 12

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"NimbusSanNo2-Reg"
	.size	.L.str.60, 17

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"NimbusSanNo2-Bol"
	.size	.L.str.61, 17

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"NimbusSanNo2-Ita"
	.size	.L.str.62, 17

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"NimbusSanNo2-BolIta"
	.size	.L.str.63, 20

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"NimbusRomanNo4-Lig"
	.size	.L.str.64, 19

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"NimbusRomanNo4-Bol"
	.size	.L.str.65, 19

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"NimbusRomanNo4-LigIta"
	.size	.L.str.66, 22

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"NimbusRomanNo4-BolIta"
	.size	.L.str.67, 22

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"NimbusRomanNo9-Reg"
	.size	.L.str.68, 19

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"NimbusRomanNo9-Med"
	.size	.L.str.69, 19

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"NimbusRomanNo9-Ita"
	.size	.L.str.70, 19

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"NimbusRomanNo9-MedIta"
	.size	.L.str.71, 22

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"NimbusRom-Reg"
	.size	.L.str.72, 14

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"NimbusRom-Med"
	.size	.L.str.73, 14

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"NimbusRom-Ita"
	.size	.L.str.74, 14

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"NimbusRom-MedIta"
	.size	.L.str.75, 17

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"NimbusRomNo9-Reg"
	.size	.L.str.76, 17

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"NimbusRomNo9-Bol"
	.size	.L.str.77, 17

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"NimbusRomNo9-Ita"
	.size	.L.str.78, 17

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"NimbusRomNo9-MedIta"
	.size	.L.str.79, 20

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"pdf_base_font_t"
	.size	.L.str.80, 16

	.type	pdf_base_font_data,@object # @pdf_base_font_data
	.section	.rodata,"a",@progbits
	.align	8
pdf_base_font_data:
	.short	5                       # 0x5
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_base_font_ptrs
	.size	pdf_base_font_data, 24

	.type	pdf_base_font_ptrs,@object # @pdf_base_font_ptrs
	.align	16
pdf_base_font_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	32                      # 0x20
	.short	0                       # 0x0
	.short	72                      # 0x48
	.short	1                       # 0x1
	.short	48                      # 0x30
	.size	pdf_base_font_ptrs, 20

	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"%c%lx"
	.size	.L.str.81, 6

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"pdf_adjust_font_name"
	.size	.L.str.82, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
