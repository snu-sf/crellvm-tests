	.text
	.file	"tgt.bc"
	.globl	opj_tgt_create
	.align	16, 0x90
	.type	opj_tgt_create,@function
opj_tgt_create:                         # @opj_tgt_create
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
	subq	$328, %rsp              # imm = 0x148
.Ltmp6:
	.cfi_def_cfa_offset 384
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
	movl	%esi, %r15d
	movl	%edi, %ebx
	movl	$32, %edi
	callq	malloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB0_1
# BB#3:                                 # %if.end
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%r14, %rdi
	callq	memset
	movl	%ebx, (%r14)
	movl	%r15d, 4(%r14)
	movl	%ebx, 192(%rsp)
	movl	%r15d, 64(%rsp)
	movl	$0, 8(%r14)
	movl	$-1, %r12d
	.align	16, 0x90
.LBB0_4:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %eax
	imull	%ebx, %eax
	leal	1(%rbx), %ecx
	shrl	$31, %ecx
	leal	1(%rbx,%rcx), %ebx
	sarl	%ebx
	leal	2(%r12), %ecx
	movl	%ebx, 192(%rsp,%rcx,4)
	leal	1(%r15), %edx
	shrl	$31, %edx
	leal	1(%r15,%rdx), %r15d
	sarl	%r15d
	movl	%r15d, 64(%rsp,%rcx,4)
	addl	%eax, %ebp
	incl	%r12d
	cmpl	$1, %eax
	ja	.LBB0_4
# BB#5:                                 # %do.end
	movl	%ebp, 8(%r14)
	testl	%ebp, %ebp
	je	.LBB0_6
# BB#7:                                 # %cond.false
	movl	%ebp, %edi
	movl	$24, %esi
	callq	calloc
	movq	%rax, 16(%r14)
	testq	%rax, %rax
	je	.LBB0_8
# BB#9:                                 # %if.end.42
	movl	8(%r14), %ecx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	8(%r14), %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	leal	(,%rax,8), %eax
	leal	(%rax,%rax,2), %eax
	movl	%eax, 24(%r14)
	movq	16(%r14), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	4(%r14), %eax
	imull	(%r14), %eax
	movq	%r14, 8(%rsp)           # 8-byte Spill
	testl	%r12d, %r12d
	je	.LBB0_34
# BB#10:
	leaq	(%rax,%rax,2), %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rsi
	movq	%rsi, %r9
	.align	16, 0x90
.LBB0_11:                               # %for.cond.61.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_22 Depth 3
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movl	64(%rsp,%rbx,4), %r12d
	testl	%r12d, %r12d
	jle	.LBB0_12
# BB#13:                                # %for.body.66.lr.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	movslq	192(%rsp,%rbx,4), %r8
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	cmpq	$2, %r8
	movl	$2, %edx
	cmovll	%r8d, %edx
	notl	%edx
	leal	2(%r8,%rdx), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	shrl	%eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leal	-1(%r12), %r11d
	incl	%eax
	andl	$3, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	%r8d, %edx
	notl	%edx
	cmpl	$-4, %edx
	movl	$-3, %eax
	cmovlel	%eax, %edx
	leal	2(%r8,%rdx), %eax
	shrl	%eax
	incl	%eax
	andl	$3, %eax
	negl	%eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB0_14:                               # %for.body.66
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_22 Depth 3
	testl	%r8d, %r8d
	jle	.LBB0_32
# BB#15:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB0_14 Depth=2
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	movl	40(%rsp), %edx          # 4-byte Reload
	movl	%r8d, %r15d
	movq	%r9, %rdi
	je	.LBB0_20
	.align	16, 0x90
.LBB0_16:                               # %while.body.prol
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdi, (%rcx)
	addl	$-2, %r15d
	js	.LBB0_17
# BB#18:                                # %if.then.74.prol
                                        #   in Loop: Header=BB0_16 Depth=3
	movq	%rdi, 24(%rcx)
	addq	$48, %rcx
	jmp	.LBB0_19
	.align	16, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_16 Depth=3
	addq	$24, %rcx
.LBB0_19:                               # %if.end.77.prol
                                        #   in Loop: Header=BB0_16 Depth=3
	addq	$24, %rdi
	incl	%edx
	jne	.LBB0_16
.LBB0_20:                               # %while.body.lr.ph.split
                                        #   in Loop: Header=BB0_14 Depth=2
	addq	$24, %r9
	cmpl	$6, 60(%rsp)            # 4-byte Folded Reload
	jb	.LBB0_31
# BB#21:                                # %while.body.lr.ph.split.split
                                        #   in Loop: Header=BB0_14 Depth=2
	addl	$2, %r15d
	.align	16, 0x90
.LBB0_22:                               # %while.body
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdi, (%rcx)
	movl	%r15d, %edx
	addl	$-4, %edx
	movl	$1, %edx
	js	.LBB0_24
# BB#23:                                # %if.then.74
                                        #   in Loop: Header=BB0_22 Depth=3
	movq	%rdi, 24(%rcx)
	movl	$2, %edx
.LBB0_24:                               # %if.end.77
                                        #   in Loop: Header=BB0_22 Depth=3
	leaq	(%rdx,%rdx,2), %rax
	leaq	24(%rdi), %rbp
	leaq	(%rdx,%rdx,2), %rbx
	movq	%rbp, (%rcx,%rbx,8)
	leaq	24(%rcx,%rax,8), %r10
	movl	%r15d, %eax
	addl	$-6, %eax
	js	.LBB0_26
# BB#25:                                # %if.then.74.1
                                        #   in Loop: Header=BB0_22 Depth=3
	leaq	(%rdx,%rdx,2), %rax
	movq	%rbp, (%r10)
	leaq	48(%rcx,%rax,8), %r10
.LBB0_26:                               # %if.end.77.1
                                        #   in Loop: Header=BB0_22 Depth=3
	leaq	48(%rdi), %rcx
	movq	%rcx, (%r10)
	movl	%r15d, %edx
	addl	$-8, %edx
	movl	$1, %r13d
	js	.LBB0_28
# BB#27:                                # %if.then.74.2
                                        #   in Loop: Header=BB0_22 Depth=3
	movq	%rcx, 24(%r10)
	movl	$2, %r13d
.LBB0_28:                               # %if.end.77.2
                                        #   in Loop: Header=BB0_22 Depth=3
	leaq	(%r13,%r13,2), %rax
	leaq	72(%rdi), %rbp
	leaq	(%r13,%r13,2), %rcx
	movq	%rbp, (%r10,%rcx,8)
	leaq	24(%r10,%rax,8), %rcx
	addl	$-10, %r15d
	js	.LBB0_30
# BB#29:                                # %if.then.74.3
                                        #   in Loop: Header=BB0_22 Depth=3
	leaq	(%r13,%r13,2), %rax
	movq	%rbp, (%rcx)
	leaq	48(%r10,%rax,8), %rcx
.LBB0_30:                               # %if.end.77.3
                                        #   in Loop: Header=BB0_22 Depth=3
	addq	$96, %rdi
	cmpl	$2, %edx
	movl	%edx, %r15d
	jg	.LBB0_22
.LBB0_31:                               # %while.cond.while.end_crit_edge
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rax,2), %rax
	leaq	(%r9,%rax,8), %r9
.LBB0_32:                               # %while.end
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	%r14d, %eax
	andl	$1, %eax
	cmpl	%r11d, %r14d
	sete	%bl
	leaq	(%r8,%r8,2), %rdx
	leaq	(%rsi,%rdx,8), %rdx
	orb	%al, %bl
	movq	%rsi, %rdi
	cmovneq	%r9, %rdi
	cmovneq	%r9, %rdx
	incl	%r14d
	cmpl	%r12d, %r14d
	movq	%rdx, %rsi
	movq	%rdi, %r9
	jl	.LBB0_14
	jmp	.LBB0_33
	.align	16, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	movq	%r9, %rdi
.LBB0_33:                               # %for.inc.90
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	24(%rsp), %rbx          # 8-byte Reload
	incq	%rbx
	movq	32(%rsp), %r12          # 8-byte Reload
	cmpl	%r12d, %ebx
	movq	%rdx, %rsi
	movq	%rdi, %r9
	jne	.LBB0_11
.LBB0_34:                               # %if.end.i
	movq	$0, (%rcx)
	movq	(%rsp), %rsi            # 8-byte Reload
	testl	%esi, %esi
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	16(%rsp), %rdi          # 8-byte Reload
	je	.LBB0_41
# BB#35:                                # %for.body.i.preheader
	leal	-1(%rsi), %ecx
	xorl	%eax, %eax
	testb	$3, %sil
	je	.LBB0_38
# BB#36:                                # %for.body.i.prol.preheader
	movl	%esi, %edx
	andl	$3, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_37:                               # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	$999, 8(%rdi)           # imm = 0x3E7
	movl	$0, 16(%rdi)
	addq	$24, %rdi
	incl	%eax
	cmpl	%eax, %edx
	jne	.LBB0_37
.LBB0_38:                               # %for.body.i.preheader.split
	cmpl	$3, %ecx
	jb	.LBB0_41
# BB#39:                                # %for.body.i.preheader.split.split
	addq	$88, %rdi
	subl	%eax, %esi
	.align	16, 0x90
.LBB0_40:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$999, -80(%rdi)         # imm = 0x3E7
	movl	$0, -72(%rdi)
	movl	$999, -56(%rdi)         # imm = 0x3E7
	movl	$0, -52(%rdi)
	movl	$0, -48(%rdi)
	movl	$999, -32(%rdi)         # imm = 0x3E7
	movl	$0, -28(%rdi)
	movl	$0, -24(%rdi)
	movl	$999, -8(%rdi)          # imm = 0x3E7
	movl	$0, -4(%rdi)
	movl	$0, (%rdi)
	addq	$96, %rdi
	addl	$-4, %esi
	jne	.LBB0_40
	jmp	.LBB0_41
.LBB0_1:                                # %if.then
	movq	stderr(%rip), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str, %esi
	jmp	.LBB0_2
.LBB0_6:                                # %if.then.25
	movq	%r14, %rdi
	callq	free
	movq	stderr(%rip), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str.1, %esi
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB0_41
.LBB0_8:                                # %if.then.40
	movq	stderr(%rip), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	%r14, %rdi
	callq	free
	xorl	%ebx, %ebx
.LBB0_41:                               # %cleanup
	movq	%rbx, %rax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	opj_tgt_create, .Lfunc_end0-opj_tgt_create
	.cfi_endproc

	.globl	opj_tgt_reset
	.align	16, 0x90
	.type	opj_tgt_reset,@function
opj_tgt_reset:                          # @opj_tgt_reset
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB1_8
# BB#1:                                 # %if.end
	movl	8(%rdi), %eax
	testl	%eax, %eax
	je	.LBB1_8
# BB#2:                                 # %for.body.lr.ph
	movq	16(%rdi), %rcx
	leal	-1(%rax), %esi
	xorl	%edx, %edx
	testb	$3, %al
	je	.LBB1_5
# BB#3:                                 # %for.body.prol.preheader
	movl	%eax, %edi
	andl	$3, %edi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_4:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	$999, 8(%rcx)           # imm = 0x3E7
	movl	$0, 16(%rcx)
	addq	$24, %rcx
	incl	%edx
	cmpl	%edx, %edi
	jne	.LBB1_4
.LBB1_5:                                # %for.body.lr.ph.split
	cmpl	$3, %esi
	jb	.LBB1_8
# BB#6:                                 # %for.body.lr.ph.split.split
	addq	$88, %rcx
	.align	16, 0x90
.LBB1_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	$999, -80(%rcx)         # imm = 0x3E7
	movl	$0, -72(%rcx)
	movl	$999, -56(%rcx)         # imm = 0x3E7
	movl	$0, -52(%rcx)
	movl	$0, -48(%rcx)
	movl	$999, -32(%rcx)         # imm = 0x3E7
	movl	$0, -28(%rcx)
	movl	$0, -24(%rcx)
	movl	$999, -8(%rcx)          # imm = 0x3E7
	movl	$0, -4(%rcx)
	movl	$0, (%rcx)
	addl	$4, %edx
	addq	$96, %rcx
	cmpl	%eax, %edx
	jb	.LBB1_7
.LBB1_8:                                # %cleanup
	retq
.Lfunc_end1:
	.size	opj_tgt_reset, .Lfunc_end1-opj_tgt_reset
	.cfi_endproc

	.globl	opj_tgt_init
	.align	16, 0x90
	.type	opj_tgt_init,@function
opj_tgt_init:                           # @opj_tgt_init
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
	subq	$328, %rsp              # imm = 0x148
.Ltmp19:
	.cfi_def_cfa_offset 384
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
	movq	%rdi, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB2_51
# BB#1:                                 # %if.end
	cmpl	%esi, (%r14)
	jne	.LBB2_4
# BB#2:                                 # %lor.lhs.false
	cmpl	%edx, 4(%r14)
	jne	.LBB2_4
# BB#3:                                 # %lor.lhs.false.if.end.i.76_crit_edge
	leaq	8(%r14), %rax
	jmp	.LBB2_43
.LBB2_4:                                # %if.then.2
	movl	%esi, (%r14)
	movl	%edx, 4(%r14)
	movl	%esi, 192(%rsp)
	movl	%edx, 64(%rsp)
	leaq	8(%r14), %r15
	movl	$0, 8(%r14)
	xorl	%r8d, %r8d
	movl	$-1, %r12d
	movl	%edx, %ecx
	movl	%esi, %edi
	.align	16, 0x90
.LBB2_5:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %ebp
	imull	%edi, %ebp
	leal	1(%rdi), %ebx
	shrl	$31, %ebx
	leal	1(%rdi,%rbx), %edi
	sarl	%edi
	leal	2(%r12), %ebx
	movl	%edi, 192(%rsp,%rbx,4)
	leal	1(%rcx), %eax
	shrl	$31, %eax
	leal	1(%rcx,%rax), %ecx
	sarl	%ecx
	movl	%ecx, 64(%rsp,%rbx,4)
	addl	%ebp, %r8d
	incl	%r12d
	cmpl	$1, %ebp
	ja	.LBB2_5
# BB#6:                                 # %do.end
	movl	%r8d, (%r15)
	testl	%r8d, %r8d
	je	.LBB2_7
# BB#10:                                # %if.end.27
	shll	$3, %r8d
	leal	(%r8,%r8,2), %ebp
	cmpl	24(%r14), %ebp
	jbe	.LBB2_11
# BB#12:                                # %cond.false
	movl	%ebp, %esi
	leaq	16(%r14), %rbx
	movq	16(%r14), %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_13
# BB#15:                                # %if.end.41
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	%rax, 16(%r14)
	movl	24(%r14), %ecx
	addq	%rcx, %rax
	movl	%ebp, %edx
	subl	%ecx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	%ebp, 24(%r14)
	movl	(%r14), %esi
	movl	4(%r14), %edx
	jmp	.LBB2_16
.LBB2_7:                                # %if.end.i
	movq	16(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB2_9
# BB#8:                                 # %if.then.2.i
	callq	free
	movq	$0, 16(%r14)
	jmp	.LBB2_9
.LBB2_11:                               # %if.end.27.if.end.49_crit_edge
	movq	%r15, 16(%rsp)          # 8-byte Spill
	leaq	16(%r14), %rbx
.LBB2_16:                               # %if.end.49
	movq	(%rbx), %rdi
	imull	%esi, %edx
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	je	.LBB2_17
# BB#18:
	movq	%r14, 8(%rsp)           # 8-byte Spill
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rax,8), %r8
	movq	%r8, %rsi
	.align	16, 0x90
.LBB2_19:                               # %for.cond.60.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_22 Depth 2
                                        #       Child Loop BB2_24 Depth 3
                                        #       Child Loop BB2_30 Depth 3
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movl	64(%rsp,%rbp,4), %r13d
	testl	%r13d, %r13d
	jle	.LBB2_20
# BB#21:                                # %for.body.65.lr.ph
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movslq	192(%rsp,%rbp,4), %r10
	cmpq	$2, %r10
	movl	$2, %ecx
	cmovll	%r10d, %ecx
	notl	%ecx
	leal	2(%r10,%rcx), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	shrl	%eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leal	-1(%r13), %r11d
	incl	%eax
	andl	$3, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	%r10d, %ecx
	notl	%ecx
	cmpl	$-4, %ecx
	movl	$-3, %eax
	cmovlel	%eax, %ecx
	leal	2(%r10,%rcx), %eax
	shrl	%eax
	incl	%eax
	andl	$3, %eax
	negl	%eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB2_22:                               # %for.body.65
                                        #   Parent Loop BB2_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_24 Depth 3
                                        #       Child Loop BB2_30 Depth 3
	testl	%r10d, %r10d
	jle	.LBB2_40
# BB#23:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB2_22 Depth=2
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	movl	40(%rsp), %ebp          # 4-byte Reload
	movq	%r8, %rcx
	movl	%r10d, %r15d
	je	.LBB2_28
	.align	16, 0x90
.LBB2_24:                               # %while.body.prol
                                        #   Parent Loop BB2_19 Depth=1
                                        #     Parent Loop BB2_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, (%rdi)
	addl	$-2, %r15d
	js	.LBB2_25
# BB#26:                                # %if.then.73.prol
                                        #   in Loop: Header=BB2_24 Depth=3
	movq	%rcx, 24(%rdi)
	addq	$48, %rdi
	jmp	.LBB2_27
	.align	16, 0x90
.LBB2_25:                               #   in Loop: Header=BB2_24 Depth=3
	addq	$24, %rdi
.LBB2_27:                               # %if.end.76.prol
                                        #   in Loop: Header=BB2_24 Depth=3
	addq	$24, %rcx
	incl	%ebp
	jne	.LBB2_24
.LBB2_28:                               # %while.body.lr.ph.split
                                        #   in Loop: Header=BB2_22 Depth=2
	addq	$24, %r8
	cmpl	$6, 60(%rsp)            # 4-byte Folded Reload
	jb	.LBB2_39
# BB#29:                                # %while.body.lr.ph.split.split
                                        #   in Loop: Header=BB2_22 Depth=2
	addl	$-8, %r15d
	.align	16, 0x90
.LBB2_30:                               # %while.body
                                        #   Parent Loop BB2_19 Depth=1
                                        #     Parent Loop BB2_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, (%rdi)
	movl	%r15d, %ebp
	addl	$6, %ebp
	movl	$1, %ebp
	js	.LBB2_32
# BB#31:                                # %if.then.73
                                        #   in Loop: Header=BB2_30 Depth=3
	movq	%rcx, 24(%rdi)
	movl	$2, %ebp
.LBB2_32:                               # %if.end.76
                                        #   in Loop: Header=BB2_30 Depth=3
	leaq	(%rbp,%rbp,2), %rdx
	leaq	24(%rcx), %rbx
	leaq	(%rbp,%rbp,2), %rax
	movq	%rbx, (%rdi,%rax,8)
	leaq	24(%rdi,%rdx,8), %r9
	movl	%r15d, %eax
	addl	$4, %eax
	js	.LBB2_34
# BB#33:                                # %if.then.73.1
                                        #   in Loop: Header=BB2_30 Depth=3
	leaq	(%rbp,%rbp,2), %rax
	movq	%rbx, (%r9)
	leaq	48(%rdi,%rax,8), %r9
.LBB2_34:                               # %if.end.76.1
                                        #   in Loop: Header=BB2_30 Depth=3
	leaq	48(%rcx), %rdi
	movq	%rdi, (%r9)
	movl	%r15d, %ebp
	addl	$2, %ebp
	movl	$1, %r12d
	js	.LBB2_36
# BB#35:                                # %if.then.73.2
                                        #   in Loop: Header=BB2_30 Depth=3
	movq	%rdi, 24(%r9)
	movl	$2, %r12d
.LBB2_36:                               # %if.end.76.2
                                        #   in Loop: Header=BB2_30 Depth=3
	leaq	(%r12,%r12,2), %rax
	leaq	72(%rcx), %rbx
	leaq	(%r12,%r12,2), %rdx
	movq	%rbx, (%r9,%rdx,8)
	leaq	24(%r9,%rax,8), %rdi
	testl	%r15d, %r15d
	js	.LBB2_38
# BB#37:                                # %if.then.73.3
                                        #   in Loop: Header=BB2_30 Depth=3
	leaq	(%r12,%r12,2), %rax
	movq	%rbx, (%rdi)
	leaq	48(%r9,%rax,8), %rdi
.LBB2_38:                               # %if.end.76.3
                                        #   in Loop: Header=BB2_30 Depth=3
	addq	$96, %rcx
	addl	$-8, %r15d
	cmpl	$2, %ebp
	jg	.LBB2_30
.LBB2_39:                               # %while.cond.while.end_crit_edge
                                        #   in Loop: Header=BB2_22 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rax,2), %rax
	leaq	(%r8,%rax,8), %r8
.LBB2_40:                               # %while.end
                                        #   in Loop: Header=BB2_22 Depth=2
	movl	%r14d, %eax
	andl	$1, %eax
	cmpl	%r11d, %r14d
	sete	%dl
	leaq	(%r10,%r10,2), %rcx
	leaq	(%rsi,%rcx,8), %rcx
	orb	%al, %dl
	cmovneq	%r8, %rcx
	cmoveq	%rsi, %r8
	incl	%r14d
	cmpl	%r13d, %r14d
	movq	%rcx, %rsi
	jl	.LBB2_22
	jmp	.LBB2_41
	.align	16, 0x90
.LBB2_20:                               #   in Loop: Header=BB2_19 Depth=1
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %rcx
.LBB2_41:                               # %for.inc.92
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	24(%rsp), %rbp          # 8-byte Reload
	incq	%rbp
	movq	32(%rsp), %r12          # 8-byte Reload
	cmpl	%r12d, %ebp
	movq	%rcx, %rsi
	jne	.LBB2_19
	jmp	.LBB2_42
.LBB2_17:
	movq	%r14, 8(%rsp)           # 8-byte Spill
.LBB2_42:                               # %for.end.94
	movq	$0, (%rdi)
	movq	8(%rsp), %r14           # 8-byte Reload
	movq	16(%rsp), %rax          # 8-byte Reload
.LBB2_43:                               # %if.end.i.76
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB2_50
# BB#44:                                # %for.body.lr.ph.i
	movq	16(%r14), %rcx
	leal	-1(%rax), %esi
	xorl	%edx, %edx
	testb	$3, %al
	je	.LBB2_47
# BB#45:                                # %for.body.i.prol.preheader
	movl	%eax, %edi
	andl	$3, %edi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_46:                               # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	$999, 8(%rcx)           # imm = 0x3E7
	movl	$0, 16(%rcx)
	addq	$24, %rcx
	incl	%edx
	cmpl	%edx, %edi
	jne	.LBB2_46
.LBB2_47:                               # %for.body.lr.ph.i.split
	cmpl	$3, %esi
	jb	.LBB2_50
# BB#48:                                # %for.body.lr.ph.i.split.split
	addq	$88, %rcx
	subl	%edx, %eax
	.align	16, 0x90
.LBB2_49:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$999, -80(%rcx)         # imm = 0x3E7
	movl	$0, -72(%rcx)
	movl	$999, -56(%rcx)         # imm = 0x3E7
	movl	$0, -52(%rcx)
	movl	$0, -48(%rcx)
	movl	$999, -32(%rcx)         # imm = 0x3E7
	movl	$0, -28(%rcx)
	movl	$0, -24(%rcx)
	movl	$999, -8(%rcx)          # imm = 0x3E7
	movl	$0, -4(%rcx)
	movl	$0, (%rcx)
	addq	$96, %rcx
	addl	$-4, %eax
	jne	.LBB2_49
.LBB2_50:
	movq	%r14, %rax
	jmp	.LBB2_51
.LBB2_13:                               # %if.end.i.71
	movq	stderr(%rip), %rdi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_9
# BB#14:                                # %if.then.2.i.72
	callq	free
	movq	$0, (%rbx)
.LBB2_9:                                # %opj_tgt_destroy.exit
	movq	%r14, %rdi
	callq	free
	xorl	%eax, %eax
.LBB2_51:                               # %cleanup.97
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	opj_tgt_init, .Lfunc_end2-opj_tgt_init
	.cfi_endproc

	.globl	opj_tgt_destroy
	.align	16, 0x90
	.type	opj_tgt_destroy,@function
opj_tgt_destroy:                        # @opj_tgt_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB3_4
# BB#1:                                 # %if.end
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_3
# BB#2:                                 # %if.then.2
	callq	free
	movq	$0, 16(%rbx)
.LBB3_3:                                # %if.end.5
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free                    # TAILCALL
.LBB3_4:                                # %return
	popq	%rbx
	retq
.Lfunc_end3:
	.size	opj_tgt_destroy, .Lfunc_end3-opj_tgt_destroy
	.cfi_endproc

	.globl	opj_tgt_setvalue
	.align	16, 0x90
	.type	opj_tgt_setvalue,@function
opj_tgt_setvalue:                       # @opj_tgt_setvalue
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	16(%rdi), %rax
	je	.LBB4_3
	.align	16, 0x90
.LBB4_1:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edx, 8(%rax)
	jle	.LBB4_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	%edx, 8(%rax)
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB4_1
.LBB4_3:                                # %while.end
	retq
.Lfunc_end4:
	.size	opj_tgt_setvalue, .Lfunc_end4-opj_tgt_setvalue
	.cfi_endproc

	.globl	opj_tgt_encode
	.align	16, 0x90
	.type	opj_tgt_encode,@function
opj_tgt_encode:                         # @opj_tgt_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 48
	subq	$256, %rsp              # imm = 0x100
.Ltmp33:
	.cfi_def_cfa_offset 304
.Ltmp34:
	.cfi_offset %rbx, -48
.Ltmp35:
	.cfi_offset %r12, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdi, %r14
	leaq	(%rsp), %r15
	movl	%edx, %eax
	movq	16(%rsi), %rcx
	leaq	(%rax,%rax,2), %rdx
	leaq	(%rcx,%rdx,8), %rbx
	xorl	%eax, %eax
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB5_2
	.align	16, 0x90
.LBB5_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, (%r15)
	addq	$8, %r15
	movq	(%rbx), %rbx
	cmpq	$0, (%rbx)
	jne	.LBB5_1
	jmp	.LBB5_2
	.align	16, 0x90
.LBB5_9:                                # %if.end.20
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	movl	%ebp, %eax
.LBB5_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	movl	12(%rbx), %ebp
	cmpl	%ebp, %eax
	jle	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%eax, 12(%rbx)
	movl	%eax, %ebp
	jmp	.LBB5_4
	.align	16, 0x90
.LBB5_11:                               # %if.end.14
                                        #   in Loop: Header=BB5_4 Depth=2
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	opj_bio_write
	incl	%ebp
.LBB5_4:                                # %while.cond.5.preheader
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r12d, %ebp
	jge	.LBB5_8
# BB#5:                                 # %while.body.7
                                        #   in Loop: Header=BB5_4 Depth=2
	cmpl	8(%rbx), %ebp
	jl	.LBB5_11
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$0, 16(%rbx)
	jne	.LBB5_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	$1, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	opj_bio_write
	movl	$1, 16(%rbx)
	.align	16, 0x90
.LBB5_8:                                # %while.end.15
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%ebp, 12(%rbx)
	leaq	(%rsp), %rax
	cmpq	%rax, %r15
	jne	.LBB5_9
# BB#10:                                # %for.end
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	opj_tgt_encode, .Lfunc_end5-opj_tgt_encode
	.cfi_endproc

	.globl	opj_tgt_decode
	.align	16, 0x90
	.type	opj_tgt_decode,@function
opj_tgt_decode:                         # @opj_tgt_decode
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
	subq	$256, %rsp              # imm = 0x100
.Ltmp44:
	.cfi_def_cfa_offset 304
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
	movl	%ecx, %r15d
	movq	%rdi, %r14
	leaq	(%rsp), %r12
	movl	%edx, %eax
	movq	16(%rsi), %rcx
	leaq	(%rax,%rax,2), %rdx
	leaq	(%rcx,%rdx,8), %rbp
	xorl	%eax, %eax
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB6_2
	.align	16, 0x90
.LBB6_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, (%r12)
	addq	$8, %r12
	movq	(%rbp), %rbp
	cmpq	$0, (%rbp)
	jne	.LBB6_1
	jmp	.LBB6_2
	.align	16, 0x90
.LBB6_9:                                # %if.end.19
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-8(%r12), %rbp
	addq	$-8, %r12
	movl	%ebx, %eax
.LBB6_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	movl	12(%rbp), %ebx
	cmpl	%ebx, %eax
	jle	.LBB6_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%eax, 12(%rbp)
	movl	%eax, %ebx
	jmp	.LBB6_4
	.align	16, 0x90
.LBB6_11:                               # %if.else.12
                                        #   in Loop: Header=BB6_4 Depth=2
	incl	%ebx
.LBB6_4:                                # %while.cond.5.preheader
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r15d, %ebx
	jge	.LBB6_8
# BB#5:                                 # %land.rhs.lr.ph
                                        #   in Loop: Header=BB6_4 Depth=2
	cmpl	8(%rbp), %ebx
	jge	.LBB6_8
# BB#6:                                 # %while.body.8
                                        #   in Loop: Header=BB6_4 Depth=2
	movl	$1, %esi
	movq	%r14, %rdi
	callq	opj_bio_read
	testl	%eax, %eax
	je	.LBB6_11
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%ebx, 8(%rbp)
	.align	16, 0x90
.LBB6_8:                                # %while.end.14
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%ebx, 12(%rbp)
	leaq	(%rsp), %rax
	cmpq	%rax, %r12
	jne	.LBB6_9
# BB#10:                                # %for.end
	cmpl	%r15d, 8(%rbp)
	setl	%al
	movzbl	%al, %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	opj_tgt_decode, .Lfunc_end6-opj_tgt_decode
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ERROR in tgt_create while allocating tree\n"
	.size	.L.str, 43

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"WARNING in tgt_create tree->numnodes == 0, no tree created.\n"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ERROR in tgt_create while allocating node of the tree\n"
	.size	.L.str.2, 55

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ERROR Not enough memory to reinitialize the tag tree\n"
	.size	.L.str.3, 54


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
