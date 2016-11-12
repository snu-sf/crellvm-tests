	.text
	.file	"ilocate.bc"
	.globl	gc_locate
	.align	16, 0x90
	.type	gc_locate,@function
gc_locate:                              # @gc_locate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r13, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %r15, -16
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.LBB0_6
# BB#1:                                 # %land.lhs.true
	cmpq	%r14, 8(%rax)
	ja	.LBB0_6
# BB#2:                                 # %land.lhs.true.4
	cmpq	%r14, 64(%rax)
	jbe	.LBB0_6
# BB#3:                                 # %land.lhs.true.8
	cmpl	$0, 96(%rax)
	je	.LBB0_42
# BB#4:                                 # %land.lhs.true.12
	cmpq	%r14, 24(%rax)
	ja	.LBB0_42
# BB#5:                                 # %land.lhs.true.16
	cmpq	%r14, 48(%rax)
	jbe	.LBB0_42
.LBB0_6:                                # %lor.lhs.false
	leaq	8(%r13), %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	chunk_locate_ptr
	testl	%eax, %eax
	je	.LBB0_8
# BB#7:                                 # %lor.lhs.false.if.then_crit_edge
	movq	16(%r13), %rax
	jmp	.LBB0_42
.LBB0_8:                                # %if.end
	movq	(%r15), %r12
	movq	(%r12), %rax
	cmpq	%r12, %rax
	jne	.LBB0_10
# BB#9:                                 # %lor.lhs.false.25
	movl	224(%r12), %eax
	shrl	$2, %eax
	movq	32(%r13,%rax,8), %rax
	cmpq	%r12, %rax
	je	.LBB0_12
.LBB0_10:                               # %if.then.27
	movq	%rax, 8(%r13)
	movq	$0, 16(%r13)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	chunk_locate_ptr
	testl	%eax, %eax
	je	.LBB0_12
# BB#11:                                # %if.then.64
	movq	16(%r13), %rax
	jmp	.LBB0_42
.LBB0_12:                               # %if.end.68
	movq	48(%r13), %rbx
	movq	56(%r13), %rax
	cmpq	%rbx, %rax
	je	.LBB0_24
# BB#13:                                # %if.then.75
	cmpl	$12, 224(%r12)
	je	.LBB0_15
# BB#14:                                # %select.mid
	movq	%rax, %rbx
.LBB0_15:                               # %select.end
	movq	%rbx, 8(%r13)
	movq	$0, 16(%r13)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	chunk_locate_ptr
	testl	%eax, %eax
	je	.LBB0_17
# BB#16:                                # %if.then.122
	movq	16(%r13), %rax
	jmp	.LBB0_42
.LBB0_17:                               # %if.end.125
	movq	(%rbx), %rax
	cmpq	%rbx, %rax
	je	.LBB0_21
# BB#18:                                # %if.then.128
	movq	%rax, 8(%r13)
	movq	$0, 16(%r13)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	chunk_locate_ptr
	testl	%eax, %eax
	je	.LBB0_20
# BB#19:                                # %if.then.166
	movq	16(%r13), %rax
	jmp	.LBB0_42
.LBB0_20:                               # %if.end.169
	movq	%rbx, (%r15)
	.align	16, 0x90
.LBB0_21:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	movq	616(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_24
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	%rax, 8(%r13)
	movq	$0, 16(%r13)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	chunk_locate_ptr
	testl	%eax, %eax
	je	.LBB0_21
# BB#23:                                # %if.then.215
	movq	16(%r13), %rax
	jmp	.LBB0_42
.LBB0_24:                               # %if.end.219
	movq	40(%r13), %rax
	cmpq	%rax, %r12
	je	.LBB0_27
# BB#25:                                # %if.then.224
	movq	%rax, 8(%r13)
	movq	$0, 16(%r13)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	chunk_locate_ptr
	testl	%eax, %eax
	je	.LBB0_27
# BB#26:                                # %if.then.265
	movq	16(%r13), %rax
	jmp	.LBB0_42
.LBB0_27:                               # %if.end.269
	movl	224(%r12), %eax
	cmpl	$8, %eax
	jne	.LBB0_28
# BB#33:                                # %sw.bb
	movq	48(%r13), %rbx
	jmp	.LBB0_35
.LBB0_28:                               # %if.end.269
	cmpl	$12, %eax
	jne	.LBB0_29
# BB#34:                                # %sw.bb.328
	movq	56(%r13), %rbx
.LBB0_35:                               # %for.cond
	movq	%rbx, 8(%r13)
	jmp	.LBB0_36
.LBB0_29:                               # %sw.default
	movq	48(%r13), %rbx
	movq	(%rbx), %rax
	cmpq	%rbx, %rax
	je	.LBB0_32
# BB#30:                                # %if.then.277
	movq	%rax, 8(%r13)
	movq	$0, 16(%r13)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	chunk_locate_ptr
	testl	%eax, %eax
	je	.LBB0_32
# BB#31:                                # %if.then.315
	movq	16(%r13), %rax
	jmp	.LBB0_42
.LBB0_32:                               # %if.end.319
	movq	%rbx, (%r15)
	jmp	.LBB0_36
	.align	16, 0x90
.LBB0_40:                               # %if.end.383
                                        #   in Loop: Header=BB0_36 Depth=1
	movq	%rbx, (%r15)
.LBB0_36:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r12, %rbx
	je	.LBB0_39
# BB#37:                                # %if.then.338
                                        #   in Loop: Header=BB0_36 Depth=1
	movq	$0, 16(%r13)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	chunk_locate_ptr
	testl	%eax, %eax
	jne	.LBB0_43
# BB#38:                                # %if.then.338.if.end.377_crit_edge
                                        #   in Loop: Header=BB0_36 Depth=1
	movq	(%r15), %rbx
.LBB0_39:                               # %if.end.377
                                        #   in Loop: Header=BB0_36 Depth=1
	movq	616(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB0_40
# BB#41:                                # %for.end
	movq	%r12, 8(%r13)
	movq	$0, 16(%r13)
	xorl	%eax, %eax
	jmp	.LBB0_42
.LBB0_43:                               # %if.then.373
	movq	16(%r13), %rax
.LBB0_42:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gc_locate, .Lfunc_end0-gc_locate
	.cfi_endproc

	.globl	ialloc_validate_spaces
	.align	16, 0x90
	.type	ialloc_validate_spaces,@function
ialloc_validate_spaces:                 # @ialloc_validate_spaces
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end1:
	.size	ialloc_validate_spaces, .Lfunc_end1-ialloc_validate_spaces
	.cfi_endproc

	.globl	ialloc_validate_memory
	.align	16, 0x90
	.type	ialloc_validate_memory,@function
ialloc_validate_memory:                 # @ialloc_validate_memory
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end2:
	.size	ialloc_validate_memory, .Lfunc_end2-ialloc_validate_memory
	.cfi_endproc

	.globl	ialloc_validate_chunk
	.align	16, 0x90
	.type	ialloc_validate_chunk,@function
ialloc_validate_chunk:                  # @ialloc_validate_chunk
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end3:
	.size	ialloc_validate_chunk, .Lfunc_end3-ialloc_validate_chunk
	.cfi_endproc

	.globl	ialloc_validate_object
	.align	16, 0x90
	.type	ialloc_validate_object,@function
ialloc_validate_object:                 # @ialloc_validate_object
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end4:
	.size	ialloc_validate_object, .Lfunc_end4-ialloc_validate_object
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
