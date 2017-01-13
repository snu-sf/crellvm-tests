	.text
	.file	"ireclaim.bc"
	.align	16, 0x90
	.type	ireclaim_init,@function
ireclaim_init:                          # @ireclaim_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$ireclaim, 64(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ireclaim_init, .Lfunc_end0-ireclaim_init
	.cfi_endproc

	.align	16, 0x90
	.type	ireclaim,@function
ireclaim:                               # @ireclaim
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
	subq	$120, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 176
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
	movq	%rdi, %rbp
	testl	%esi, %esi
	js	.LBB1_1
# BB#11:                                # %if.else
	movl	%esi, %eax
	movl	%esi, 28(%rsp)          # 4-byte Spill
	sarl	$2, %eax
	cltq
	movq	16(%rbp,%rax,8), %rcx
	jmp	.LBB1_12
.LBB1_1:                                # %if.then
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	16(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_4
# BB#2:                                 # %if.end
	cmpq	$0, 264(%rcx)
	jg	.LBB1_12
# BB#3:                                 # %lor.lhs.false
	movq	(%rcx), %rax
	cmpq	$0, 264(%rax)
	jg	.LBB1_12
.LBB1_4:                                # %for.inc
	movq	24(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_7
# BB#5:                                 # %if.end.1
	cmpq	$0, 264(%rcx)
	jg	.LBB1_12
# BB#6:                                 # %lor.lhs.false.1
	movq	(%rcx), %rax
	cmpq	$0, 264(%rax)
	jg	.LBB1_12
.LBB1_7:                                # %for.inc.1
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_10
# BB#8:                                 # %if.end.2
	cmpq	$0, 264(%rcx)
	jg	.LBB1_12
# BB#9:                                 # %lor.lhs.false.2
	movq	(%rcx), %rax
	cmpq	$0, 264(%rax)
	jg	.LBB1_12
.LBB1_10:                               # %for.inc.2
	movq	40(%rbp), %rcx
.LBB1_12:                               # %do.end
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	224(%rcx), %r14d
	cmpl	$12, %r14d
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movq	%rbp, %rdi
	callq	ialloc_reset_requested
	leaq	-8(%rbp), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	leaq	8(%rbp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	40(%rbp), %r12
	callq	context_state_store
	movdqu	24(%rbp), %xmm0
	movdqa	%xmm0, 80(%rsp)
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rcx
	movl	$2, %eax
	movl	$2, %r13d
	cmpq	%rcx, %r12
	je	.LBB1_14
# BB#13:                                # %if.then.i
	movq	%r12, 96(%rsp)
	movl	$3, %eax
	movl	$3, %r13d
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_36:                               # %if.then.19.i
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	%rdx, 80(%rsp,%r13,8)
	incq	%r13
.LBB1_14:                               # %for.cond.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	cltq
	leal	-1(%rax), %ecx
	movslq	%ecx, %rcx
	leaq	80(%rsp,%rcx,8), %rcx
	.align	16, 0x90
.LBB1_15:                               # %for.cond.i
                                        #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rax, %rax
	jle	.LBB1_16
# BB#35:                                # %for.body.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	(%rcx), %rsi
	movq	(%rsi), %rdx
	decq	%rax
	addq	$-8, %rcx
	cmpq	%rsi, %rdx
	je	.LBB1_15
	jmp	.LBB1_36
.LBB1_16:                               # %for.cond.25.preheader.i
	testl	%r13d, %r13d
	jle	.LBB1_19
# BB#17:                                # %for.body.28.lr.ph.i
	movslq	%r13d, %rbx
	incq	%rbx
	.align	16, 0x90
.LBB1_18:                               # %for.body.28.i
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp,%rbx,8), %rdi
	callq	alloc_close_chunk
	decq	%rbx
	cmpq	$1, %rbx
	jg	.LBB1_18
.LBB1_19:                               # %for.end.31.i
	cmpl	$12, %r14d
	sete	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %r15d
	.align	16, 0x90
.LBB1_20:                               # %for.body.35.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_24 Depth 2
	movq	16(%rbp,%r15,8), %r14
	testq	%r14, %r14
	je	.LBB1_25
# BB#21:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB1_20 Depth=1
	leal	-1(%r15), %eax
	cltq
	cmpq	16(%rbp,%rax,8), %r14
	je	.LBB1_25
# BB#22:                                # %if.end.53.i
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	(%r14), %rdi
	cmpq	%r14, %rdi
	je	.LBB1_24
# BB#23:                                # %if.then.57.i
                                        #   in Loop: Header=BB1_20 Depth=1
	callq	ialloc_gc_prepare
	.align	16, 0x90
.LBB1_24:                               # %for.cond.60.i
                                        #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	callq	ialloc_gc_prepare
	movq	616(%r14), %r14
	testq	%r14, %r14
	jne	.LBB1_24
.LBB1_25:                               # %cleanup.i
                                        #   in Loop: Header=BB1_20 Depth=1
	incq	%r15
	cmpl	$4, %r15d
	jb	.LBB1_20
# BB#26:                                # %for.end.69.i
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 72(%rsp)
	leaq	40(%rsp), %rbp
	leaq	72(%rsp), %rdx
	movl	$.L.str, %ecx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	gs_register_struct_root
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	24(%rsp), %esi          # 4-byte Reload
	callq	*(%rdi)
	movl	$.L.str, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*176(%r12)
	movq	72(%rsp), %rbx
	leaq	368(%rbx), %rbp
	movq	%rbp, %rdi
	callq	ref_stack_count
	leal	-1(%rax), %esi
	movq	%rbp, %rdi
	callq	ref_stack_index
	movups	(%rax), %xmm0
	movups	%xmm0, 504(%rbx)
	movq	%rbp, %rdi
	callq	dstack_gc_cleanup
	testl	%r13d, %r13d
	jle	.LBB1_29
# BB#27:                                # %for.body.84.i.preheader
	leaq	80(%rsp), %rbp
	.align	16, 0x90
.LBB1_28:                               # %for.body.84.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rdi
	callq	alloc_open_chunk
	addq	$8, %rbp
	decl	%r13d
	jne	.LBB1_28
.LBB1_29:                               # %gs_vmreclaim.exit
	movq	%rbx, %rdi
	callq	context_state_load
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	ialloc_set_limit
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	jns	.LBB1_33
# BB#30:                                # %if.then.28
	leaq	80(%rsp), %rsi
	movq	%rbp, %rdi
	callq	*40(%rbp)
	movq	80(%rsp), %rbx
	movq	(%rbp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB1_32
# BB#31:                                # %if.then.33
	leaq	80(%rsp), %rsi
	callq	*40(%rdi)
	addq	80(%rsp), %rbx
.LBB1_32:                               # %if.end.39
	cmpq	240(%rbp), %rbx
	movl	$-25, %eax
	jae	.LBB1_34
.LBB1_33:                               # %if.end.46
	xorl	%eax, %eax
.LBB1_34:                               # %cleanup.47
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ireclaim, .Lfunc_end1-ireclaim
	.cfi_endproc

	.type	ireclaim_l2_op_defs,@object # @ireclaim_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	ireclaim_l2_op_defs
	.align	16
ireclaim_l2_op_defs:
	.quad	0
	.quad	ireclaim_init
	.size	ireclaim_l2_op_defs, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"i_ctx_p root"
	.size	.L.str, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
