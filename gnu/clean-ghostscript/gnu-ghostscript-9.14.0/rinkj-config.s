	.text
	.file	"rinkj-config.bc"
	.globl	rinkj_strdup_size
	.align	16, 0x90
	.type	rinkj_strdup_size,@function
rinkj_strdup_size:                      # @rinkj_strdup_size
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
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movl	%esi, %r15d
	movq	%rdi, %r14
	leal	1(%r15), %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %rbx
	movslq	%r15d, %r15
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, (%rbx,%r15)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	rinkj_strdup_size, .Lfunc_end0-rinkj_strdup_size
	.cfi_endproc

	.globl	rinkj_config_get
	.align	16, 0x90
	.type	rinkj_config_get,@function
rinkj_config_get:                       # @rinkj_config_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 64
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB1_16
# BB#1:                                 # %for.cond.preheader
	xorl	%r8d, %r8d
	cmpb	$0, (%r14)
	movl	$0, %ebx
	je	.LBB1_16
# BB#2:                                 # %for.body.lr.ph
	movq	%r14, %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB1_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
	movl	%r8d, %ebx
	movl	$10, %esi
	movq	%r13, %rdi
	callq	strchr
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB1_5
# BB#6:                                 # %if.else
                                        #   in Loop: Header=BB1_4 Depth=1
	addl	%ebp, %r12d
	subl	%r14d, %r12d
	leal	1(%r12), %r8d
	jmp	.LBB1_7
	.align	16, 0x90
.LBB1_5:                                # %if.then.2
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %r12
	movl	%r12d, %r8d
.LBB1_7:                                # %if.end.9
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, %r13
	cmpl	%r12d, %r13d
	jge	.LBB1_3
# BB#8:                                 # %for.body.14.lr.ph
                                        #   in Loop: Header=BB1_4 Depth=1
	movslq	%r12d, %rbp
	movslq	%r13d, %rdx
	leaq	(%r14,%rdx), %rsi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_9:                                # %for.body.14
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r15,%rbx), %al
	movb	(%rsi,%rbx), %cl
	testb	%al, %al
	jne	.LBB1_17
# BB#10:                                # %for.body.14
                                        #   in Loop: Header=BB1_9 Depth=2
	movzbl	%cl, %edi
	cmpl	$58, %edi
	je	.LBB1_11
.LBB1_17:                               # %if.else.42
                                        #   in Loop: Header=BB1_9 Depth=2
	movzbl	%cl, %ecx
	movzbl	%al, %eax
	cmpl	%ecx, %eax
	jne	.LBB1_3
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB1_9 Depth=2
	leaq	1(%rdx,%rbx), %rax
	incq	%rbx
	cmpq	%rbp, %rax
	jl	.LBB1_9
	.align	16, 0x90
.LBB1_3:                                # %for.cond.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	movslq	%r8d, %rbp
	leaq	(%r14,%rbp), %r13
	cmpb	$0, (%r14,%rbp)
	movl	$0, %ebx
	jne	.LBB1_4
	jmp	.LBB1_16
.LBB1_11:                               # %if.then.26
	leal	1(%r13,%rbx), %eax
	cmpl	%eax, %r12d
	jle	.LBB1_15
# BB#12:                                # %land.rhs.lr.ph
	callq	__ctype_b_loc
	movq	(%rax), %rcx
	leal	1(%r13,%rbx), %eax
	cltq
	.align	16, 0x90
.LBB1_13:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movsbq	(%r14,%rax), %rdx
	testb	$32, 1(%rcx,%rdx,2)
	je	.LBB1_15
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB1_13 Depth=1
	incq	%rax
	cmpl	%eax, %r12d
	jg	.LBB1_13
.LBB1_15:                               # %cleanup
	cltq
	addq	%rax, %r14
	subl	%eax, %r12d
	leal	1(%r12), %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %rbx
	movslq	%r12d, %r15
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, (%rbx,%r15)
.LBB1_16:                               # %cleanup.59
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rinkj_config_get, .Lfunc_end1-rinkj_config_get
	.cfi_endproc

	.globl	rinkj_config_keyval
	.align	16, 0x90
	.type	rinkj_config_keyval,@function
rinkj_config_keyval:                    # @rinkj_config_keyval
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 96
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	xorl	%r13d, %r13d
	testq	%r12, %r12
	je	.LBB2_18
# BB#1:                                 # %for.cond.preheader
	xorl	%r14d, %r14d
	cmpb	$0, (%r12)
	movl	$0, %r13d
	je	.LBB2_18
# BB#2:                                 # %for.body.lr.ph
	movq	%r12, %rdi
	xorl	%ebp, %ebp
.LBB2_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	movl	$10, %esi
	movq	%rdi, %rbx
	callq	strchr
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB2_5
# BB#6:                                 # %if.else
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	addl	%ebp, %r15d
	subl	%r12d, %r15d
	leal	1(%r15), %r8d
	jmp	.LBB2_7
	.align	16, 0x90
.LBB2_5:                                # %if.then.2
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%rbx, %rdi
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	callq	strlen
	movq	%rax, %r15
	movl	%r15d, %r8d
.LBB2_7:                                # %if.end.9
                                        #   in Loop: Header=BB2_4 Depth=1
	movslq	%r15d, %rbp
	movslq	%r14d, %rax
	movq	%r14, 16(%rsp)          # 8-byte Spill
	leaq	(%r12,%rax), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_8:                                # %for.cond.10
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rbx
	leaq	(%rax,%rbx), %rdx
	cmpq	%rbp, %rdx
	jge	.LBB2_3
# BB#9:                                 # %for.body.14
                                        #   in Loop: Header=BB2_8 Depth=2
	leaq	1(%rbx), %rdx
	movzbl	(%rcx,%rbx), %esi
	cmpl	$58, %esi
	jne	.LBB2_8
	jmp	.LBB2_10
	.align	16, 0x90
.LBB2_3:                                # %for.cond.loopexit
                                        #   in Loop: Header=BB2_4 Depth=1
	movslq	%r8d, %rbp
	leaq	(%r12,%rbp), %rdi
	cmpb	$0, (%r12,%rbp)
	movl	%r8d, %r14d
	movl	$0, %r13d
	jne	.LBB2_4
	jmp	.LBB2_18
.LBB2_10:                               # %if.then.21
	movl	%r8d, 4(%rsp)           # 4-byte Spill
	movslq	%edx, %r14
	movq	%r14, %rdi
	callq	malloc
	movq	%rax, %r13
	movslq	%ebx, %rbx
	movq	%r13, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%r13,%rbx)
	movq	16(%rsp), %rax          # 8-byte Reload
	addl	%eax, %r14d
	cmpl	%r14d, %r15d
	jle	.LBB2_14
# BB#11:                                # %land.rhs.lr.ph
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movslq	%r14d, %r14
	.align	16, 0x90
.LBB2_12:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movsbq	(%r12,%r14), %rcx
	testb	$32, 1(%rax,%rcx,2)
	je	.LBB2_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB2_12 Depth=1
	incq	%r14
	cmpq	%r14, %rbp
	jg	.LBB2_12
.LBB2_14:                               # %while.cond.while.end_crit_edge
	movq	32(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB2_16
# BB#15:                                # %if.then.39
	movslq	%r14d, %rax
	leaq	(%r12,%rax), %r14
	subl	%eax, %r15d
	leal	1(%r15), %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %rbp
	movslq	%r15d, %rbx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%rbp,%rbx)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
.LBB2_16:                               # %if.end.43
	movq	24(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB2_18
# BB#17:                                # %if.then.46
	movslq	4(%rsp), %rax           # 4-byte Folded Reload
	addq	%rax, %r12
	movq	%r12, (%rcx)
.LBB2_18:                               # %cleanup.55
	movq	%r13, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	rinkj_config_keyval, .Lfunc_end2-rinkj_config_keyval
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
