	.text
	.file	"ttload.bc"
	.globl	Load_TrueType_MaxProfile
	.align	16, 0x90
	.type	Load_TrueType_MaxProfile,@function
Load_TrueType_MaxProfile:               # @Load_TrueType_MaxProfile
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
	movq	%rdi, %rbx
	movq	(%rbx), %r14
	movq	8(%rbx), %rax
	movl	72(%rax), %esi
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	%r14, %rdi
	callq	ttfReader__UInt
	movl	%eax, 16(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 20(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 22(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 24(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 26(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 28(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 30(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 32(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 34(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 36(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 38(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 40(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 42(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 44(%rbx)
	movq	%r14, %rdi
	callq	ttfReader__UShort
	movw	%ax, 46(%rbx)
	movzwl	20(%rbx), %ecx
	movl	%ecx, 96(%rbx)
	movzwl	26(%rbx), %ecx
	movzwl	22(%rbx), %edx
	cmpl	%edx, %ecx
	cmovaw	%cx, %dx
	movzwl	%dx, %ecx
	movl	%ecx, 100(%rbx)
	movzwl	28(%rbx), %ecx
	movzwl	24(%rbx), %edx
	cmpl	%edx, %ecx
	cmovaw	%cx, %dx
	movzwl	%dx, %ecx
	movl	%ecx, 104(%rbx)
	movzwl	44(%rbx), %ecx
	movzwl	%ax, %eax
	addl	%ecx, %eax
	movl	%eax, 108(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	Load_TrueType_MaxProfile, .Lfunc_end0-Load_TrueType_MaxProfile
	.cfi_endproc

	.globl	Load_TrueType_CVT
	.align	16, 0x90
	.type	Load_TrueType_CVT,@function
Load_TrueType_CVT:                      # @Load_TrueType_CVT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -48
.Ltmp11:
	.cfi_offset %r12, -40
.Ltmp12:
	.cfi_offset %r13, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	(%r14), %r13
	movq	8(%r14), %rbx
	movq	160(%rbx), %rax
	movq	32(%rax), %r15
	movl	(%rbx), %esi
	movq	%r13, %rdi
	callq	*16(%r13)
	movq	$0, 88(%r14)
	movl	4(%rbx), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %esi
	sarl	%esi
	movl	%esi, 80(%r14)
	cmpl	$2, %eax
	jl	.LBB1_3
# BB#1:                                 # %if.then
	addl	%esi, %esi
	movl	$.L.str, %edx
	movq	%r15, %rdi
	callq	*(%r15)
	movq	%rax, 88(%r14)
	movl	$256, %r15d             # imm = 0x100
	testq	%rax, %rax
	je	.LBB1_7
# BB#2:                                 # %if.then.if.end.10_crit_edge
	movl	80(%r14), %esi
.LBB1_3:                                # %if.end.10
	xorl	%r15d, %r15d
	testl	%esi, %esi
	jle	.LBB1_7
# BB#4:
	movslq	%esi, %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_5:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	*(%r13)
	testl	%eax, %eax
	jne	.LBB1_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	%r13, %rdi
	callq	ttfReader__Short
	movq	88(%r14), %rcx
	movw	%ax, (%rcx,%rbx,2)
	incq	%rbx
	cmpq	%r12, %rbx
	jl	.LBB1_5
.LBB1_7:                                # %cleanup
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	Load_TrueType_CVT, .Lfunc_end1-Load_TrueType_CVT
	.cfi_endproc

	.globl	Load_TrueType_Programs
	.align	16, 0x90
	.type	Load_TrueType_Programs,@function
Load_TrueType_Programs:                 # @Load_TrueType_Programs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r12, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	(%rbx), %r14
	movq	8(%rbx), %r12
	movq	160(%r12), %rax
	movq	32(%rax), %r15
	movq	$0, 56(%rbx)
	movq	$0, 72(%rbx)
	movl	8(%r12), %esi
	testl	%esi, %esi
	je	.LBB2_1
# BB#2:                                 # %if.else
	movl	12(%r12), %eax
	movl	%eax, 52(%rbx)
	movq	%r14, %rdi
	callq	*16(%r14)
	movl	52(%rbx), %esi
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	*(%r15)
	movq	%rax, %rcx
	movq	%rcx, 56(%rbx)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB2_9
# BB#3:                                 # %if.end
	movl	52(%rbx), %edx
	movq	%r14, %rdi
	movq	%rcx, %rsi
	callq	*8(%r14)
	jmp	.LBB2_4
.LBB2_1:                                # %if.then
	movq	$0, 56(%rbx)
	movl	$0, 52(%rbx)
.LBB2_4:                                # %if.end.15
	movl	80(%r12), %esi
	testl	%esi, %esi
	je	.LBB2_5
# BB#6:                                 # %if.else.20
	movl	84(%r12), %eax
	movl	%eax, 64(%rbx)
	movq	%r14, %rdi
	callq	*16(%r14)
	movl	64(%rbx), %esi
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	*(%r15)
	movq	%rax, %rcx
	movq	%rcx, 72(%rbx)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB2_9
# BB#7:                                 # %if.end.34
	movl	64(%rbx), %edx
	movq	%r14, %rdi
	movq	%rcx, %rsi
	callq	*8(%r14)
	jmp	.LBB2_8
.LBB2_5:                                # %if.then.18
	movq	$0, 72(%rbx)
	movl	$0, 64(%rbx)
.LBB2_8:                                # %cleanup
	xorl	%eax, %eax
.LBB2_9:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	Load_TrueType_Programs, .Lfunc_end2-Load_TrueType_Programs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Load_TrueType_CVT"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Load_TrueType_Programs"
	.size	.L.str.1, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
