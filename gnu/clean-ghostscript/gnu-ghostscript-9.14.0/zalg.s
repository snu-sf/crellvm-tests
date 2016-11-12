	.text
	.file	"zalg.bc"
	.align	16, 0x90
	.type	zsort,@function
zsort:                                  # @zsort
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
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movb	-15(%rbx), %cl
	movb	%cl, %al
	addb	$-5, %al
	movzbl	%al, %edx
	movl	$-7, %eax
	cmpl	$2, %edx
	jb	.LBB0_18
# BB#1:                                 # %if.end
	leaq	-16(%rbx), %r15
	movzwl	(%r15), %edx
	andl	$16144, %edx            # imm = 0x3F10
	cmpl	$1040, %edx             # imm = 0x410
	jne	.LBB0_2
# BB#5:                                 # %if.end.25
	movzwl	(%rbx), %ecx
	testb	$-128, %cl
	je	.LBB0_6
# BB#7:                                 # %if.end.34
	movzwl	%cx, %edx
	cmpl	$5375, %edx             # imm = 0x14FF
	ja	.LBB0_11
# BB#8:                                 # %cond.end.48
	movzbl	1(%rbx), %edx
	cmpl	$20, %edx
	ja	.LBB0_6
# BB#9:                                 # %cond.end.48
	movl	$262256, %esi           # imm = 0x40070
	btl	%edx, %esi
	jae	.LBB0_10
# BB#17:                                # %sw.bb
	testb	$64, %cl
	jne	.LBB0_11
	jmp	.LBB0_18
.LBB0_2:                                # %if.then.16
	movzbl	%cl, %ecx
	cmpl	$4, %ecx
	je	.LBB0_18
# BB#3:                                 # %cond.true
	movq	%r15, %rdi
	jmp	.LBB0_4
.LBB0_10:                               # %cond.end.48
	movl	$1089536, %eax          # imm = 0x10A000
	btl	%edx, %eax
	jae	.LBB0_6
.LBB0_11:                               # %sw.epilog
	movl	-12(%rbx), %r13d
	cmpq	$1, %r13
	ja	.LBB0_13
# BB#12:                                # %if.then.65
	movq	%r15, 624(%r14)
	xorl	%eax, %eax
.LBB0_18:                               # %cleanup.204
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB0_6:                                # %if.then.31
	movq	%rbx, %rdi
.LBB0_4:                                # %cond.true
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB0_13:                               # %if.else
	movq	520(%r14), %rax
	movq	$-176, %rcx
	addq	536(%r14), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_16
# BB#14:                                # %if.then.76
	leaq	520(%r14), %r12
	movl	$11, %esi
	movq	%r12, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB0_18
# BB#15:                                # %if.then.76.if.end.84_crit_edge
	movq	(%r12), %rax
.LBB0_16:                               # %if.end.84
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$zsort_cleanup, 24(%rax)
	movq	520(%r14), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	movl	%r13d, %ecx
	shrl	%ecx
	incl	%ecx
	movq	%rcx, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	movq	%r13, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movq	$0, 56(%rax)
	movw	$2816, 48(%rax)         # imm = 0xB00
	movq	$0, 72(%rax)
	movw	$2816, 64(%rax)         # imm = 0xB00
	movw	$3584, 80(%rax)         # imm = 0xE00
	movq	$2, 104(%rax)
	movw	$2816, 96(%rax)         # imm = 0xB00
	movups	(%rbx), %xmm0
	movups	%xmm0, 112(%rax)
	movq	520(%r14), %rax
	movups	(%r15), %xmm0
	movups	%xmm0, 128(%rax)
	movq	520(%r14), %rax
	movq	%rax, %rcx
	subq	$-128, %rcx
	movq	%rcx, 520(%r14)
	movq	$zsort_continue, 152(%rax)
	movq	520(%r14), %rax
	movw	$3968, 16(%rax)         # imm = 0xF80
	movl	$0, 20(%rax)
	movw	$3584, (%rbx)           # imm = 0xE00
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	zsort_continue          # TAILCALL
.Lfunc_end0:
	.size	zsort, .Lfunc_end0-zsort
	.cfi_endproc

	.align	16, 0x90
	.type	zsort_continue,@function
zsort_continue:                         # @zsort_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 64
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	520(%r14), %rbx
	movq	624(%r14), %rbp
	movq	-24(%rbx), %rax
	movq	8(%rbx), %r15
	leaq	-16(%r15), %r13
	cmpq	$6, %rax
	je	.LBB1_25
# BB#1:                                 # %entry
	cmpq	$5, %rax
	jne	.LBB1_2
# BB#20:                                # %sw.bb.155
	movl	$-20, %eax
	movzbl	1(%rbp), %ecx
	cmpl	$1, %ecx
	jne	.LBB1_33
# BB#21:                                # %if.end.164
	cmpw	$0, 8(%rbp)
	je	.LBB1_23
# BB#22:                                # %if.then.167
	incq	-56(%rbx)
	jmp	.LBB1_23
.LBB1_25:                               # %sw.bb.200
	movl	$-20, %eax
	movzbl	1(%rbp), %ecx
	cmpl	$1, %ecx
	jne	.LBB1_33
# BB#26:                                # %if.end.209
	leaq	-72(%rbx), %r12
	cmpw	$0, 8(%rbp)
	movq	-72(%rbx), %rax
	je	.LBB1_12
# BB#27:                                # %if.then.214
	movq	%rax, %rcx
	shlq	$4, %rcx
	movzwl	(%r13,%rcx), %edx
	testl	72(%r14), %edx
	jne	.LBB1_29
# BB#28:                                # %cond.true.227
	leaq	(%rcx,%r13), %rdx
	leaq	8(%r14), %rdi
	movl	$.L.str.4, %ecx
	movq	%rbx, %rsi
	callq	alloc_save_change
	movq	-72(%rbx), %rax
.LBB1_29:                               # %cond.end.236
	shlq	$4, %rax
	leaq	-56(%rbx), %rcx
	movq	-56(%rbx), %rdx
	shlq	$4, %rdx
	movups	(%r13,%rdx), %xmm0
	movups	%xmm0, (%r13,%rax)
	movq	-72(%rbx), %rax
	shlq	$4, %rax
	movzwl	(%r13,%rax), %edx
	orl	76(%r14), %edx
	movw	%dx, (%r13,%rax)
	movq	-56(%rbx), %rax
	jmp	.LBB1_10
.LBB1_2:                                # %entry
	cmpq	$2, %rax
	je	.LBB1_3
# BB#30:                                # %sw.default
	addq	$-16, %rbp
	movq	%rbp, 624(%r14)
	movl	$-28, %eax
	jmp	.LBB1_33
.LBB1_3:                                # %H2
	movq	-104(%rbx), %rax
	cmpq	$2, %rax
	jl	.LBB1_5
# BB#4:                                 # %if.then
	decq	%rax
	movq	%rax, -104(%rbx)
	movq	%rax, %rcx
	shlq	$4, %rcx
	movups	(%r13,%rcx), %xmm0
	movups	%xmm0, -48(%rbx)
	jmp	.LBB1_9
.LBB1_5:                                # %if.else
	movq	-88(%rbx), %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	movups	(%r13,%rcx), %xmm0
	movups	%xmm0, -48(%rbx)
	movzwl	(%r13,%rcx), %edx
	leaq	8(%r14), %r12
	testl	72(%r14), %edx
	jne	.LBB1_7
# BB#6:                                 # %cond.true
	leaq	(%rcx,%r13), %rdx
	movl	$.L.str.2, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	alloc_save_change
	movq	-88(%rbx), %rax
.LBB1_7:                                # %cond.end
	shlq	$4, %rax
	movups	(%r15), %xmm0
	movups	%xmm0, (%r13,%rax)
	movq	-88(%rbx), %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	movzwl	(%r13,%rcx), %edx
	orl	76(%r14), %edx
	movw	%dx, (%r13,%rcx)
	leaq	-1(%rax), %rcx
	movq	%rcx, -88(%rbx)
	cmpq	$3, %rax
	jge	.LBB1_8
# BB#15:                                # %if.then.57
	leaq	-48(%rbx), %rbp
	movzwl	(%r15), %eax
	testl	72(%r14), %eax
	jne	.LBB1_17
# BB#16:                                # %cond.true.67
	movl	$.L.str.3, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	alloc_save_change
.LBB1_17:                               # %cond.end.73
	movups	(%rbp), %xmm0
	movups	%xmm0, (%r15)
	movzwl	(%r15), %eax
	orl	76(%r14), %eax
	movw	%ax, (%r15)
	addq	$-144, 520(%r14)
	addq	$-16, 624(%r14)
	movl	$14, %eax
	jmp	.LBB1_33
.LBB1_8:                                # %cond.end.if.end.93_crit_edge
	movq	-104(%rbx), %rax
.LBB1_9:                                # %if.end.93
	leaq	-56(%rbx), %rcx
	movq	%rax, -56(%rbx)
	leaq	-72(%rbx), %r12
.LBB1_10:                               # %H4
	movq	%rax, -72(%rbx)
	leaq	(%rax,%rax), %rdx
	movq	%rdx, -56(%rbx)
	cmpq	-88(%rbx), %rdx
	jge	.LBB1_11
# BB#18:                                # %if.else.128
	movq	$5, -24(%rbx)
	leaq	16(%rbp), %rax
	cmpq	640(%r14), %rax
	ja	.LBB1_19
# BB#31:                                # %if.else.140
	movq	%rax, 624(%r14)
	shlq	$4, %rdx
	movups	(%r13,%rdx), %xmm0
	movups	%xmm0, (%rbp)
	movq	(%rcx), %rcx
	shlq	$4, %rcx
	movups	16(%rcx,%r13), %xmm0
	jmp	.LBB1_32
.LBB1_11:                               # %if.then.117
	jne	.LBB1_12
.LBB1_23:                               # %H6
	movq	$6, -24(%rbx)
	leaq	16(%rbp), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB1_24
.LBB1_19:                               # %if.then.137
	movl	$1, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB1_33
.LBB1_12:                               # %H8
	movq	%rax, %rcx
	shlq	$4, %rcx
	movzwl	(%r13,%rcx), %edx
	testl	72(%r14), %edx
	jne	.LBB1_14
# BB#13:                                # %cond.true.270
	leaq	(%rcx,%r13), %rdx
	leaq	8(%r14), %rdi
	movl	$.L.str.5, %ecx
	movq	%rbx, %rsi
	callq	alloc_save_change
	movq	(%r12), %rax
.LBB1_14:                               # %cond.end.279
	shlq	$4, %rax
	movups	-48(%rbx), %xmm0
	movups	%xmm0, (%r13,%rax)
	movq	(%r12), %rax
	shlq	$4, %rax
	movzwl	(%r13,%rax), %ecx
	orl	76(%r14), %ecx
	movw	%cx, (%r13,%rax)
	jmp	.LBB1_3
.LBB1_24:                               # %if.else.186
	movq	%rax, 624(%r14)
	movups	-48(%rbx), %xmm0
	movups	%xmm0, (%rbp)
	movq	-56(%rbx), %rcx
	shlq	$4, %rcx
	movups	(%r13,%rcx), %xmm0
.LBB1_32:                               # %sw.epilog
	movups	%xmm0, (%rax)
	movq	520(%r14), %rax
	leaq	32(%rax), %rcx
	movq	%rcx, 520(%r14)
	movups	-16(%rbx), %xmm0
	movups	%xmm0, 32(%rax)
	movl	$5, %eax
.LBB1_33:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zsort_continue, .Lfunc_end1-zsort_continue
	.cfi_endproc

	.align	16, 0x90
	.type	zsort_cleanup,@function
zsort_cleanup:                          # @zsort_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	zsort_cleanup, .Lfunc_end2-zsort_cleanup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"2.sort"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1%zsort_continue"
	.size	.L.str.1, 17

	.type	zalg_op_defs,@object    # @zalg_op_defs
	.section	.rodata,"a",@progbits
	.globl	zalg_op_defs
	.align	16
zalg_op_defs:
	.quad	.L.str
	.quad	zsort
	.quad	.L.str.1
	.quad	zsort_continue
	.zero	16
	.size	zalg_op_defs, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	".sort(H2-a)"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	".sort(H2-b)"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	".sort(H7)"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	".sort(H8)"
	.size	.L.str.5, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
