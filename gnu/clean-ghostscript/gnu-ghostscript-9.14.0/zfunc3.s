	.text
	.file	"zfunc3.bc"
	.globl	gs_build_function_2
	.align	16, 0x90
	.type	gs_build_function_2,@function
gs_build_function_2:                    # @gs_build_function_2
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
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 112
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, %r14
	movq	%rsi, %rbx
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	leaq	48(%rsp), %rdx
	movl	$.L.str, %esi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	dict_float_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_13
# BB#1:                                 # %lor.lhs.false
	leaq	32(%rsp), %rcx
	movl	$.L.str.1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %r8
	callq	fn_build_float_array_forced
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_2
# BB#3:                                 # %lor.lhs.false.4
	leaq	40(%rsp), %rcx
	movl	$.L.str.2, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %r8
	callq	fn_build_float_array_forced
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_13
# BB#4:                                 # %if.end
	movl	$1, %ecx
	cmpq	$0, 32(%rsp)
	movl	$1, %eax
	je	.LBB0_6
# BB#5:                                 # %select.mid
	movl	%r12d, %eax
.LBB0_6:                                # %select.end
	cmpq	$0, 40(%rsp)
	je	.LBB0_8
# BB#7:                                 # %select.mid19
	movl	%ebp, %ecx
.LBB0_8:                                # %select.end18
	cmpq	$0, 24(%rsp)
	jne	.LBB0_10
# BB#9:                                 # %if.then.17
	movl	%eax, 16(%rsp)
.LBB0_10:                               # %if.end.18
	cmpl	%ecx, %eax
	jne	.LBB0_13
# BB#11:                                # %lor.lhs.false.20
	cmpl	16(%rsp), %eax
	jne	.LBB0_13
# BB#12:                                # %if.end.24
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	gs_function_ElIn_init
	movl	%eax, %ebp
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jns	.LBB0_14
	jmp	.LBB0_13
.LBB0_2:
	movl	%r12d, %ebp
.LBB0_13:                               # %fail
	leaq	(%rsp), %rdi
	movq	%r15, %rsi
	callq	gs_function_ElIn_free_params
	testl	%ebp, %ebp
	movl	$-15, %eax
	cmovsl	%ebp, %eax
.LBB0_14:                               # %cleanup
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_build_function_2, .Lfunc_end0-gs_build_function_2
	.cfi_endproc

	.globl	gs_build_function_3
	.align	16, 0x90
	.type	gs_build_function_3,@function
gs_build_function_3:                    # @gs_build_function_3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 208
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, %r14
	movl	%ecx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	$0, 120(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 128(%rsp)
	leaq	72(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB1_1
# BB#2:                                 # %do.body
	movq	72(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$4, %edx
	jne	.LBB1_30
# BB#3:                                 # %do.end
	movl	4(%rcx), %ebp
	movl	%ebp, 112(%rsp)
	leaq	64(%rsp), %rsi
	movl	%ebp, %edi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	alloc_function_array
	testl	%eax, %eax
	js	.LBB1_30
# BB#4:                                 # %if.end.12
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rax
	movq	%rax, 120(%rsp)
	testl	%ebp, %ebp
	jle	.LBB1_8
# BB#5:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	leaq	48(%rsp), %r14
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB1_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rsi
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	array_get
	movq	64(%rsp), %rdx
	addq	%rbp, %rdx
	movl	$0, (%rsp)
	xorl	%r9d, %r9d
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	movl	%r15d, %ecx
	movq	%rbx, %r8
	callq	fn_build_sub_function
	movl	%eax, %r12d
	sarl	$31, %eax
	testb	$7, %al
	jne	.LBB1_29
# BB#7:                                 # %for.cond
                                        #   in Loop: Header=BB1_6 Depth=1
	incq	%r13
	movslq	112(%rsp), %rax
	addq	$8, %rbp
	cmpq	%rax, %r13
	jl	.LBB1_6
.LBB1_8:                                # %cleanup.25.thread41
	leaq	128(%rsp), %r8
	movl	$.L.str.4, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	fn_build_float_array
	movl	%eax, %r12d
	movl	112(%rsp), %eax
	decl	%eax
	cmpl	%eax, %r12d
	jne	.LBB1_29
# BB#9:                                 # %if.end.36
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	callq	gs_currentcpsimode
	testl	%eax, %eax
	je	.LBB1_25
# BB#10:                                # %if.then.38
	movl	112(%rsp), %r14d
	leal	(%r14,%r14), %r13d
	movl	$4, %edx
	movl	$.L.str.5, %ecx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	movq	%r15, 136(%rsp)
	movl	$-25, %r12d
	testq	%r15, %r15
	je	.LBB1_29
# BB#11:                                # %if.end.45
	leaq	48(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	movl	$-21, %r12d
	testl	%eax, %eax
	jle	.LBB1_29
# BB#12:                                # %if.end.50
	movq	48(%rsp), %rsi
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	movl	$-20, %r12d
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB1_29
# BB#13:                                # %if.end.57
	movl	4(%rsi), %ecx
	movl	%ecx, %ebx
	cmpl	%ebx, %r13d
	movl	%ebx, %ebp
	cmovbl	%r13d, %ebp
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %edx
	movq	%r15, %rcx
	callq	process_float_array
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_29
# BB#14:                                # %while.cond.preheader
	cmpl	%r13d, %ebp
	jae	.LBB1_26
# BB#15:                                # %while.body.lr.ph
	cmpl	%ebx, %r13d
	movl	%r13d, %eax
	cmoval	%ebx, %eax
	movl	%eax, %r10d
	notl	%eax
	leal	(%rax,%r14,2), %eax
	leaq	1(%rax), %rdx
	movabsq	$8589934584, %r9        # imm = 0x1FFFFFFF8
	movq	%rdx, %rsi
	andq	%r9, %rsi
	andq	%r9, %rdx
	leaq	1(%rax,%r10), %r8
	je	.LBB1_22
# BB#16:                                # %vector.body.preheader
	cmpl	%ebx, %r13d
	movl	%r13d, %eax
	cmoval	%ebx, %eax
	notl	%eax
	leal	(%rax,%r14,2), %edi
	incq	%rdi
	andq	%r9, %rdi
	addq	$-8, %rdi
	movl	%edi, %eax
	shrl	$3, %eax
	incl	%eax
	testb	$3, %al
	movq	%r10, %rax
	je	.LBB1_19
# BB#17:                                # %vector.body.prol.preheader
	movl	%ebx, %eax
	notl	%eax
	movl	%r13d, %edx
	notl	%edx
	cmpl	%edx, %eax
	cmoval	%eax, %edx
	leal	1(%rdx,%r14,2), %edx
	andl	$24, %edx
	addl	$-8, %edx
	shrl	$3, %edx
	incl	%edx
	andl	$3, %edx
	negq	%rdx
	xorps	%xmm0, %xmm0
	movq	%r10, %rax
.LBB1_18:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%r15,%rax,4)
	movups	%xmm0, 16(%r15,%rax,4)
	addq	$8, %rax
	incq	%rdx
	jne	.LBB1_18
.LBB1_19:                               # %vector.body.preheader.split
	addq	%rsi, %r10
	addl	%esi, %ebp
	cmpq	$24, %rdi
	jb	.LBB1_22
# BB#20:                                # %vector.body.preheader.split.split
	notl	%ebx
	movl	%r13d, %esi
	notl	%esi
	cmpl	%esi, %ebx
	cmoval	%ebx, %esi
	leal	(%rsi,%r14,2), %edx
	incq	%rdx
	andq	%r9, %rdx
	notl	%esi
	addq	%rdx, %rsi
	subq	%rax, %rsi
	leaq	112(%r15,%rax,4), %rax
	xorps	%xmm0, %xmm0
.LBB1_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-32, %rsi
	jne	.LBB1_21
.LBB1_22:                               # %middle.block
	cmpq	%r10, %r8
	je	.LBB1_26
# BB#23:                                # %while.body.preheader
	leaq	(%r15,%r10,4), %rax
.LBB1_24:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%ebp
	movl	$0, (%rax)
	addq	$4, %rax
	cmpl	%r13d, %ebp
	jb	.LBB1_24
	jmp	.LBB1_26
.LBB1_1:                                # %if.then
	movl	$-15, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB1_30
.LBB1_25:                               # %if.else
	leaq	136(%rsp), %r8
	movl	$.L.str.5, %esi
	movl	$1, %edx
	movl	$1, %ecx
	movq	%rbp, %rdi
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	fn_build_float_array
	movl	%eax, %r12d
	movl	112(%rsp), %eax
	addl	%eax, %eax
	cmpl	%eax, %r12d
	jne	.LBB1_29
.LBB1_26:                               # %if.end.92
	cmpq	$0, 104(%rsp)
	jne	.LBB1_28
# BB#27:                                # %if.then.95
	movq	120(%rsp), %rax
	movq	(%rax), %rax
	movl	88(%rax), %eax
	movl	%eax, 96(%rsp)
.LBB1_28:                               # %if.end.100
	leaq	80(%rsp), %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	gs_function_1ItSg_init
	movl	%eax, %r12d
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jns	.LBB1_30
.LBB1_29:                               # %fail
	leaq	80(%rsp), %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	gs_function_1ItSg_free_params
	testl	%r12d, %r12d
	movl	$-15, %eax
	cmovsl	%r12d, %eax
.LBB1_30:                               # %cleanup.112
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_build_function_3, .Lfunc_end1-gs_build_function_3
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"N"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"C0"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"C1"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Functions"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Bounds"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Encode"
	.size	.L.str.5, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
