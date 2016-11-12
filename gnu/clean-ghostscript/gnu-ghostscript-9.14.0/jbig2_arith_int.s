	.text
	.file	"jbig2_arith_int.bc"
	.globl	jbig2_arith_int_ctx_new
	.align	16, 0x90
	.type	jbig2_arith_int_ctx_new,@function
jbig2_arith_int_ctx_new:                # @jbig2_arith_int_ctx_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	(%r14), %rdi
	movl	$1, %esi
	movl	$512, %edx              # imm = 0x200
	callq	jbig2_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_1
# BB#2:                                 # %if.else
	xorl	%esi, %esi
	movl	$512, %edx              # imm = 0x200
	movq	%rbx, %rdi
	callq	memset
	jmp	.LBB0_3
.LBB0_1:                                # %if.then
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB0_3:                                # %if.end
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	jbig2_arith_int_ctx_new, .Lfunc_end0-jbig2_arith_int_ctx_new
	.cfi_endproc

	.globl	jbig2_arith_int_decode
	.align	16, 0x90
	.type	jbig2_arith_int_decode,@function
jbig2_arith_int_decode:                 # @jbig2_arith_int_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 80
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	leaq	1(%r13), %rsi
	movq	%r15, %rdi
	callq	jbig2_arith_decode
	movl	%eax, %ebp
	movl	$-1, %r12d
	testl	%ebp, %ebp
	js	.LBB1_20
# BB#1:                                 # %if.end
	movl	%ebp, %ebx
	orl	$2, %ebx
	movslq	%ebx, %rax
	leaq	(%rax,%r13), %rsi
	movq	%r15, %rdi
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_20
# BB#2:                                 # %if.end.7
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	%r15, %r13
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	addl	%ebx, %ebx
	orl	%eax, %ebx
	xorl	%r14d, %r14d
	movl	$2, %r15d
	testl	%eax, %eax
	je	.LBB1_3
# BB#4:                                 # %if.then.10
	movslq	%ebx, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	%r13, %rdi
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_20
# BB#5:                                 # %if.end.16
	addl	%ebx, %ebx
	orl	%eax, %ebx
	movl	$4, %r15d
	testl	%eax, %eax
	je	.LBB1_6
# BB#7:                                 # %if.then.20
	movslq	%ebx, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	%r13, %r15
	movq	%r15, %rdi
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_20
# BB#8:                                 # %if.end.26
	addl	%ebx, %ebx
	orl	%eax, %ebx
	testl	%eax, %eax
	je	.LBB1_9
# BB#10:                                # %if.then.30
	movslq	%ebx, %rax
	movq	16(%rsp), %r13          # 8-byte Reload
	leaq	(%rax,%r13), %rsi
	movq	%r15, %rdi
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_20
# BB#11:                                # %if.end.36
	addl	%ebx, %ebx
	orl	%eax, %ebx
	testl	%eax, %eax
	je	.LBB1_12
# BB#13:                                # %if.then.40
	movslq	%ebx, %rax
	leaq	(%rax,%r13), %rsi
	movq	%r15, %rdi
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_20
# BB#14:                                # %if.end.46
	movq	%r15, %r13
	addl	%ebx, %ebx
	orl	%eax, %ebx
	testl	%eax, %eax
	movl	$12, %eax
	movl	$32, %r15d
	cmovel	%eax, %r15d
	movl	$340, %eax              # imm = 0x154
	movl	$4436, %ebp             # imm = 0x1154
	cmovel	%eax, %ebp
	jmp	.LBB1_15
.LBB1_3:
	xorl	%ebp, %ebp
	jmp	.LBB1_15
.LBB1_6:
	movl	$4, %ebp
	jmp	.LBB1_15
.LBB1_9:
	movq	%r15, %r13
	movl	$20, %ebp
	movl	$6, %r15d
	jmp	.LBB1_15
.LBB1_12:
	movq	%r15, %r13
	movl	$84, %ebp
	movl	$8, %r15d
.LBB1_15:                               # %if.end.59
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	%r13, %rdi
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_17
# BB#18:                                # %if.end.66
                                        #   in Loop: Header=BB1_16 Depth=1
	leal	(%rbx,%rbx), %ecx
	andl	$510, %ecx              # imm = 0x1FE
	andl	$256, %ebx              # imm = 0x100
	orl	%ecx, %ebx
	orl	%eax, %ebx
	addl	%r12d, %r12d
	orl	%eax, %r12d
	incl	%r14d
	cmpl	%r15d, %r14d
	jl	.LBB1_16
# BB#19:                                # %for.end
	addl	%ebp, %r12d
	movl	%r12d, %eax
	negl	%eax
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	setne	%cl
	cmovel	%r12d, %eax
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	%eax, (%rdx)
	testl	%eax, %eax
	sete	%al
	andb	%cl, %al
	movzbl	%al, %r12d
	jmp	.LBB1_20
.LBB1_17:
	movl	$-1, %r12d
.LBB1_20:                               # %cleanup
	movl	%r12d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	jbig2_arith_int_decode, .Lfunc_end1-jbig2_arith_int_decode
	.cfi_endproc

	.globl	jbig2_arith_int_ctx_free
	.align	16, 0x90
	.type	jbig2_arith_int_ctx_free,@function
jbig2_arith_int_ctx_free:               # @jbig2_arith_int_ctx_free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	jbig2_free              # TAILCALL
.Lfunc_end2:
	.size	jbig2_arith_int_ctx_free, .Lfunc_end2-jbig2_arith_int_ctx_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed to allocate Jbig2ArithIntCtx in jbig2_arith_int_ctx_new"
	.size	.L.str, 63


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
