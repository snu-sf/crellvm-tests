	.text
	.file	"jbig2_arith_iaid.bc"
	.globl	jbig2_arith_iaid_ctx_new
	.align	16, 0x90
	.type	jbig2_arith_iaid_ctx_new,@function
jbig2_arith_iaid_ctx_new:               # @jbig2_arith_iaid_ctx_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	(%r14), %rdi
	movl	$1, %esi
	movl	$16, %edx
	callq	jbig2_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_1
# BB#2:                                 # %if.end
	movl	$1, %eax
	movb	%bpl, %cl
	shll	%cl, %eax
	movl	%ebp, (%rbx)
	movq	(%r14), %rdi
	movslq	%eax, %rbp
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	jbig2_alloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB0_4
# BB#3:                                 # %if.then.8
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rbp, %rdx
	callq	memset
	jmp	.LBB0_6
.LBB0_1:                                # %if.then
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str, %ecx
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.1, %ecx
.LBB0_5:                                # %cleanup
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB0_6:                                # %cleanup
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jbig2_arith_iaid_ctx_new, .Lfunc_end0-jbig2_arith_iaid_ctx_new
	.cfi_endproc

	.globl	jbig2_arith_iaid_decode
	.align	16, 0x90
	.type	jbig2_arith_iaid_decode,@function
jbig2_arith_iaid_decode:                # @jbig2_arith_iaid_decode
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
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, %r12
	movl	(%rdi), %r13d
	movl	$1, %r15d
	testl	%r13d, %r13d
	movl	$1, %ebx
	jle	.LBB1_4
# BB#1:
	movq	8(%rdi), %rbp
	xorl	%r14d, %r14d
	movl	$1, %ebx
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rax
	leaq	(%rax,%rbp), %rsi
	movq	%r12, %rdi
	callq	jbig2_arith_decode
	movl	$-1, %ecx
	testl	%eax, %eax
	js	.LBB1_5
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	%ebx, %ebx
	orl	%eax, %ebx
	incl	%r14d
	cmpl	%r13d, %r14d
	jl	.LBB1_2
.LBB1_4:                                # %for.end
	movb	%r13b, %cl
	shll	%cl, %r15d
	subl	%r15d, %ebx
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%ebx, (%rax)
	xorl	%ecx, %ecx
.LBB1_5:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	jbig2_arith_iaid_decode, .Lfunc_end1-jbig2_arith_iaid_decode
	.cfi_endproc

	.globl	jbig2_arith_iaid_ctx_free
	.align	16, 0x90
	.type	jbig2_arith_iaid_ctx_free,@function
jbig2_arith_iaid_ctx_free:              # @jbig2_arith_iaid_ctx_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 32
.Ltmp22:
	.cfi_offset %rbx, -24
.Ltmp23:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB2_1
# BB#2:                                 # %if.then
	movq	(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	jbig2_free
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	jbig2_free              # TAILCALL
.LBB2_1:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	jbig2_arith_iaid_ctx_free, .Lfunc_end2-jbig2_arith_iaid_ctx_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed to allocate storage in jbig2_arith_iaid_ctx_new"
	.size	.L.str, 55

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"failed to allocate symbol ID storage in jbig2_arith_iaid_ctx_new"
	.size	.L.str.1, 65


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
