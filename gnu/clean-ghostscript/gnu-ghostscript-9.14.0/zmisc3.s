	.text
	.file	"zmisc3.bc"
	.align	16, 0x90
	.type	zcliprestore,@function
zcliprestore:                           # @zcliprestore
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_cliprestore          # TAILCALL
.Lfunc_end0:
	.size	zcliprestore, .Lfunc_end0-zcliprestore
	.cfi_endproc

	.align	16, 0x90
	.type	zclipsave,@function
zclipsave:                              # @zclipsave
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_clipsave             # TAILCALL
.Lfunc_end1:
	.size	zclipsave, .Lfunc_end1-zclipsave
	.cfi_endproc

	.align	16, 0x90
	.type	zeqproc,@function
zeqproc:                                # @zeqproc
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
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp6:
	.cfi_def_cfa_offset 496
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
	movq	%rdi, %r14
	movq	624(%r14), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	16(%rsp), %r12
	leaq	-16(%rcx), %rax
	movq	%rax, 24(%rsp)
	movw	$1024, 16(%rsp)         # imm = 0x400
	movl	$1, 20(%rsp)
	movq	%rcx, 40(%rsp)
	movw	$1024, 32(%rsp)         # imm = 0x400
	movl	$1, 36(%rsp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_9:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	addq	$-32, %r12
.LBB2_1:                                # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movl	4(%r12), %ebp
	testl	%ebp, %ebp
	je	.LBB2_8
# BB#2:                                 # %if.end.33.lr.ph
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	32(%r12), %r15
	leaq	16(%r12), %r13
	leaq	48(%r12), %rbx
	.align	16, 0x90
.LBB2_3:                                # %if.end.33
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%ebp
	movq	8(%r14), %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	array_get
	movq	8(%r14), %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	callq	array_get
	decl	4(%r12)
	movq	8(%r14), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB2_10
# BB#4:                                 # %if.then.56
                                        #   in Loop: Header=BB2_3 Depth=2
	movzbl	1(%r15), %ecx
	movzbl	1(%rbx), %eax
	cmpl	%eax, %ecx
	je	.LBB2_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_3 Depth=2
	movzbl	%cl, %ecx
	cmpl	$13, %ecx
	je	.LBB2_14
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_3 Depth=2
	movzbl	%al, %eax
	cmpl	$13, %eax
	je	.LBB2_14
.LBB2_7:                                # %for.cond.backedge
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	4(%r12), %ebp
	testl	%ebp, %ebp
	jne	.LBB2_3
.LBB2_8:                                # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	16(%rsp), %rax
	cmpq	%rax, %r12
	jne	.LBB2_9
	jmp	.LBB2_16
	.align	16, 0x90
.LBB2_10:                               # %if.end.86
                                        #   in Loop: Header=BB2_1 Depth=1
	movzwl	(%r15), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB2_14
# BB#11:                                # %land.lhs.true.93
                                        #   in Loop: Header=BB2_1 Depth=1
	movzwl	(%rbx), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB2_14
# BB#12:                                # %land.lhs.true.101
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	368(%rsp), %rax
	cmpq	%rax, %r15
	jae	.LBB2_14
# BB#13:                                # %land.lhs.true.101
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	52(%r12), %eax
	cmpl	%eax, 36(%r12)
	movq	%r15, %r12
	je	.LBB2_1
.LBB2_14:                               # %for.end
	movq	8(%rsp), %rax           # 8-byte Reload
	movw	$0, -8(%rax)
.LBB2_15:                               # %cleanup.127
	movw	$256, -16(%rax)         # imm = 0x100
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_16:                               # %cleanup
	movq	8(%rsp), %rax           # 8-byte Reload
	movw	$1, -8(%rax)
	jmp	.LBB2_15
.Lfunc_end2:
	.size	zeqproc, .Lfunc_end2-zeqproc
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ll3dict"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0cliprestore"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0clipsave"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2.eqproc"
	.size	.L.str.3, 9

	.type	zmisc3_op_defs,@object  # @zmisc3_op_defs
	.section	.rodata,"a",@progbits
	.globl	zmisc3_op_defs
	.align	16
zmisc3_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zcliprestore
	.quad	.L.str.2
	.quad	zclipsave
	.quad	.L.str.3
	.quad	zeqproc
	.zero	16
	.size	zmisc3_op_defs, 80


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
