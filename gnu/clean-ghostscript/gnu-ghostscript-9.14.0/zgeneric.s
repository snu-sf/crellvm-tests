	.text
	.file	"zgeneric.bc"
	.globl	zcopy
	.align	16, 0x90
	.type	zcopy,@function
zcopy:                                  # @zcopy
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movzbl	1(%r15), %eax
	cmpl	$11, %eax
	jne	.LBB0_14
# BB#1:                                 # %if.then
	leaq	624(%rbx), %r14
	movq	8(%r15), %rbp
	movq	%r15, %rax
	subq	632(%rbx), %rax
	shrq	$4, %rax
	cmpl	%eax, %ebp
	jbe	.LBB0_11
# BB#2:                                 # %if.end.i
	movq	%r14, %rdi
	callq	ref_stack_count
	cltq
	movl	$-17, %r12d
	cmpq	%rax, %rbp
	jge	.LBB0_23
# BB#3:                                 # %if.end.18.i
	movq	8(%r15), %rbx
	movl	$-15, %r12d
	testq	%rbx, %rbx
	js	.LBB0_23
# BB#4:                                 # %do.body.i
	movzbl	1(%r15), %eax
	cmpl	$11, %eax
	jne	.LBB0_24
# BB#5:                                 # %if.end.33.i
	movq	%r14, %rdi
	callq	ref_stack_count
	movl	%eax, %eax
	cmpq	%rax, %rbx
	jae	.LBB0_23
# BB#6:                                 # %do.end.i
	movl	8(%r15), %ebp
	jmp	.LBB0_7
.LBB0_14:                               # %if.end
	movq	632(%rbx), %rcx
	addq	$16, %rcx
	movl	$-17, %r12d
	cmpq	%rcx, %r15
	jb	.LBB0_23
# BB#15:                                # %if.end.7
	cmpl	$2, %eax
	je	.LBB0_20
# BB#16:                                # %if.end.7
	cmpl	$18, %eax
	je	.LBB0_18
# BB#17:                                # %if.end.7
	cmpl	$4, %eax
	jne	.LBB0_24
.LBB0_18:                               # %sw.bb
	leaq	-16(%r15), %r14
	xorl	%edx, %edx
	movl	$.L.str.12, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	copy_interval
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_23
# BB#19:                                # %if.end.i.14
	movl	-12(%r15), %eax
	movl	%eax, 4(%r15)
	movups	(%r15), %xmm0
	movups	%xmm0, (%r14)
	addq	$-16, 624(%rbx)
	jmp	.LBB0_22
.LBB0_11:                               # %if.else.i
	movq	%rbp, %rdx
	shlq	$32, %rdx
	sarq	$28, %rdx
	leaq	-16(%r15,%rdx), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB0_12
.LBB0_7:                                # %if.end.80.i
	leal	-1(%rbp), %esi
	movq	%r14, %rdi
	callq	ref_stack_push
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_23
# BB#8:                                 # %for.cond.preheader.i
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jle	.LBB0_23
# BB#9:                                 # %for.body.lr.ph.i
	movslq	%ebp, %r13
	movl	%ebp, %ebp
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_10:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movq	%rax, %r15
	leaq	(%r13,%rbx), %rsi
	movq	%r14, %rdi
	callq	ref_stack_index
	movups	(%rax), %xmm0
	movups	%xmm0, (%r15)
	incq	%rbx
	cmpl	%ebx, %ebp
	jne	.LBB0_10
	jmp	.LBB0_23
.LBB0_12:                               # %if.then.55.i
	movslq	%ebp, %rax
	shlq	$4, %rax
	movq	%r15, %rsi
	subq	%rax, %rsi
	movq	%r15, %rdi
	callq	memcpy
	leal	-1(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB0_21
# BB#13:                                # %if.then.68.i
	movl	%eax, 688(%rbx)
	movl	$-16, %r12d
	jmp	.LBB0_23
.LBB0_20:                               # %sw.bb.9
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	zcopy_dict              # TAILCALL
.LBB0_24:                               # %if.then.31.i
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB0_21:                               # %if.else.72.i
	movq	%rcx, (%r14)
.LBB0_22:                               # %cleanup
	xorl	%r12d, %r12d
.LBB0_23:                               # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zcopy, .Lfunc_end0-zcopy
	.cfi_endproc

	.align	16, 0x90
	.type	zforall,@function
zforall:                                # @zforall
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r13, -32
.Ltmp21:
	.cfi_offset %r14, -24
.Ltmp22:
	.cfi_offset %r15, -16
	movq	%rdi, %r13
	movq	624(%r13), %r14
	movq	520(%r13), %rdx
	movq	536(%r13), %rax
	addq	$-96, %rax
	cmpq	%rax, %rdx
	jbe	.LBB1_2
# BB#1:                                 # %if.then
	leaq	520(%r13), %rdi
	movl	$6, %esi
	movq	%rdx, %rbx
	callq	ref_stack_extend
	movq	%rbx, %rdx
	testl	%eax, %eax
	js	.LBB1_19
.LBB1_2:                                # %do.body
	movzwl	(%r14), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB1_20
# BB#3:                                 # %do.end
	leaq	-16(%r14), %r15
	movzbl	1(%r15), %eax
	cmpl	$4, %eax
	jle	.LBB1_4
# BB#8:                                 # %do.end
	leal	-5(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB1_9
# BB#15:                                # %do.body.77
	movl	$-7, %eax
	testb	$32, (%r15)
	je	.LBB1_19
# BB#16:                                # %do.end.86
	movq	$packedarray_continue, 72(%rdx)
	jmp	.LBB1_17
.LBB1_20:                               # %if.then.17
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	check_proc_failed       # TAILCALL
.LBB1_4:                                # %do.end
	cmpl	$2, %eax
	jne	.LBB1_5
# BB#11:                                # %do.body.37
	movq	-8(%r14), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB1_19
# BB#12:                                # %do.end.47
	movq	%r15, %rdi
	movq	%rdx, %r12
	callq	dict_first
	movq	%r12, %rdx
	cltq
	movq	%rax, 72(%rdx)
	movw	$2816, 64(%rdx)         # imm = 0xB00
	movq	$dict_continue, 88(%rdx)
	movw	$3968, 80(%rdx)         # imm = 0xF80
	movl	$0, 84(%rdx)
	movl	$5, %eax
	jmp	.LBB1_18
.LBB1_9:                                # %do.end
	cmpl	$18, %eax
	jne	.LBB1_10
# BB#13:                                # %do.body.60
	movl	$-7, %eax
	testb	$32, (%r15)
	je	.LBB1_19
# BB#14:                                # %do.end.69
	movq	$string_continue, 72(%rdx)
	jmp	.LBB1_17
.LBB1_5:                                # %do.end
	cmpl	$4, %eax
	jne	.LBB1_10
# BB#6:                                 # %do.body.24
	movl	$-7, %eax
	testb	$32, (%r15)
	jne	.LBB1_7
.LBB1_19:                               # %cleanup.115
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB1_10:                               # %sw.default
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB1_7:                                # %do.end.32
	movq	$array_continue, 72(%rdx)
.LBB1_17:                               # %sw.epilog
	movw	$3968, 64(%rdx)         # imm = 0xF80
	movl	$0, 68(%rdx)
	movl	$4, %eax
.LBB1_18:                               # %sw.epilog
	shlq	$4, %rax
	movq	$forall_cleanup, 24(%rdx)
	movw	$3712, 16(%rdx)         # imm = 0xE80
	movl	$2, 20(%rdx)
	movups	(%r15), %xmm0
	movups	%xmm0, 32(%rdx)
	movups	(%r14), %xmm0
	movups	%xmm0, 48(%rdx)
	leaq	-16(%rdx,%rax), %rcx
	movq	%rcx, 520(%r13)
	addq	$-32, 624(%r13)
	movq	%r13, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmpq	*8(%rdx,%rax)           # TAILCALL
.Lfunc_end1:
	.size	zforall, .Lfunc_end1-zforall
	.cfi_endproc

	.align	16, 0x90
	.type	zforceput,@function
zforceput:                              # @zforceput
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp29:
	.cfi_def_cfa_offset 64
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %r12
	leaq	-32(%rbx), %r15
	movzbl	-31(%rbx), %ecx
	cmpl	$2, %ecx
	jne	.LBB2_1
# BB#10:                                # %sw.bb.46
	movq	-24(%rbx), %rax
	leaq	368(%r14), %r13
	cmpq	512(%r14), %rax
	je	.LBB2_12
# BB#11:                                # %lor.lhs.false
	movq	8(%r14), %rdi
	callq	imemory_save_level
	testl	%eax, %eax
	je	.LBB2_12
# BB#13:                                # %if.else
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	dict_put
	jmp	.LBB2_14
.LBB2_1:                                # %entry
	movl	$-20, %eax
	cmpl	$4, %ecx
	jne	.LBB2_16
# BB#2:                                 # %do.body
	movzbl	1(%r12), %eax
	cmpl	$11, %eax
	jne	.LBB2_17
# BB#3:                                 # %if.end
	movq	-8(%rbx), %rcx
	movl	-28(%rbx), %edx
	movl	$-15, %eax
	cmpq	%rdx, %rcx
	jae	.LBB2_16
# BB#4:                                 # %do.end
	movzwl	-32(%rbx), %eax
	andl	$12, %eax
	movzwl	(%rbx), %edx
	andl	$12, %edx
	cmpl	%edx, %eax
	jbe	.LBB2_7
# BB#5:                                 # %if.then.22
	movq	8(%r14), %rdi
	callq	imemory_save_level
	movl	%eax, %ecx
	movl	$-7, %eax
	testl	%ecx, %ecx
	jne	.LBB2_16
# BB#6:                                 # %if.then.22.if.end.26_crit_edge
	movq	-8(%rbx), %rcx
.LBB2_7:                                # %if.end.26
	movq	-24(%rbx), %rax
	movl	%ecx, %ecx
	shlq	$4, %rcx
	leaq	(%rax,%rcx), %r12
	movzwl	(%rax,%rcx), %eax
	testl	72(%r14), %eax
	jne	.LBB2_9
# BB#8:                                 # %cond.true
	leaq	8(%r14), %rdi
	movl	$.L.str.13, %ecx
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	alloc_save_change
.LBB2_9:                                # %cond.end
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r12)
	movzwl	(%r12), %eax
	orl	76(%r14), %eax
	movw	%ax, (%r12)
	jmp	.LBB2_15
.LBB2_12:                               # %if.then.56
	movzwl	-32(%rbx), %eax
	movl	%eax, %ebp
	andl	$12, %ebp
	orl	$12, %eax
	movw	%ax, -32(%rbx)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	dict_put
	movzwl	-32(%rbx), %ecx
	andl	$65523, %ecx            # imm = 0xFFF3
	orl	%ebp, %ecx
	movw	%cx, -32(%rbx)
.LBB2_14:                               # %if.end.81
	testl	%eax, %eax
	js	.LBB2_16
.LBB2_15:                               # %sw.epilog
	addq	$-48, 624(%r14)
	xorl	%eax, %eax
.LBB2_16:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_17:                               # %if.then
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.Lfunc_end2:
	.size	zforceput, .Lfunc_end2-zforceput
	.cfi_endproc

	.align	16, 0x90
	.type	zget,@function
zget:                                   # @zget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp38:
	.cfi_def_cfa_offset 32
.Ltmp39:
	.cfi_offset %rbx, -24
.Ltmp40:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rcx
	leaq	-16(%rcx), %rbx
	movzbl	-15(%rcx), %edx
	cmpl	$3, %edx
	jle	.LBB3_1
# BB#6:                                 # %entry
	leal	-4(%rdx), %eax
	cmpl	$3, %eax
	jae	.LBB3_7
# BB#13:                                # %sw.bb.48
	movzbl	1(%rcx), %eax
	cmpl	$11, %eax
	jne	.LBB3_10
# BB#14:                                # %do.body.58
	movl	$-7, %eax
	testb	$32, (%rbx)
	je	.LBB3_17
# BB#15:                                # %do.end.67
	movq	8(%r14), %rdi
	movq	8(%rcx), %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rcx
	callq	array_get
	testl	%eax, %eax
	jns	.LBB3_16
	jmp	.LBB3_17
.LBB3_1:                                # %entry
	movl	$-17, %eax
	testl	%edx, %edx
	je	.LBB3_17
# BB#2:                                 # %entry
	cmpl	$2, %edx
	jne	.LBB3_18
# BB#3:                                 # %do.body
	movq	-8(%rcx), %rdx
	movl	$-7, %eax
	testb	$32, (%rdx)
	je	.LBB3_17
# BB#4:                                 # %do.end
	leaq	(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	callq	dict_find
	movl	%eax, %ecx
	movl	$-21, %eax
	testl	%ecx, %ecx
	jle	.LBB3_17
# BB#5:                                 # %if.end.6
	movq	(%rsp), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%rbx)
	jmp	.LBB3_16
.LBB3_7:                                # %entry
	cmpl	$18, %edx
	jne	.LBB3_18
# BB#8:                                 # %do.body.9
	movl	$-7, %eax
	testb	$32, (%rbx)
	je	.LBB3_17
# BB#9:                                 # %do.body.19
	movzbl	1(%rcx), %eax
	cmpl	$11, %eax
	jne	.LBB3_10
# BB#11:                                # %if.end.28
	movq	8(%rcx), %rdx
	movl	-12(%rcx), %esi
	movl	$-15, %eax
	cmpq	%rsi, %rdx
	jae	.LBB3_17
# BB#12:                                # %do.end.37
	movl	%edx, %eax
	movq	-8(%rcx), %rdx
	movzbl	(%rdx,%rax), %eax
	movq	%rax, -8(%rcx)
	movw	$2816, -16(%rcx)        # imm = 0xB00
.LBB3_16:                               # %sw.epilog
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB3_17
.LBB3_10:                               # %if.then.26
	movq	%rcx, %rdi
	callq	check_type_failed
	jmp	.LBB3_17
.LBB3_18:                               # %sw.default
	movl	$-20, %eax
.LBB3_17:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	zget, .Lfunc_end3-zget
	.cfi_endproc

	.align	16, 0x90
	.type	zgetinterval,@function
zgetinterval:                           # @zgetinterval
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	leaq	-32(%rcx), %rdx
	movzbl	-31(%rcx), %esi
	cmpl	$18, %esi
	ja	.LBB4_39
# BB#1:                                 # %entry
	movl	$262256, %eax           # imm = 0x40070
	btl	%esi, %eax
	jae	.LBB4_39
# BB#2:                                 # %do.body
	movl	$-7, %eax
	testb	$32, (%rdx)
	je	.LBB4_38
# BB#3:                                 # %do.body.5
	leaq	-16(%rcx), %rax
	movzbl	1(%rax), %edx
	cmpl	$11, %edx
	jne	.LBB4_40
# BB#4:                                 # %if.end.13
	movq	-8(%rcx), %r10
	movl	-28(%rcx), %r9d
	movl	$-15, %eax
	cmpq	%r9, %r10
	ja	.LBB4_38
# BB#5:                                 # %do.end.21
	movzbl	1(%rcx), %edx
	cmpl	$11, %edx
	jne	.LBB4_41
# BB#6:                                 # %if.end.34
	movq	8(%rcx), %r8
	subl	%r10d, %r9d
	cmpq	%r9, %r8
	ja	.LBB4_38
# BB#7:                                 # %do.end.45
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	cmpl	$5, %esi
	jg	.LBB4_15
# BB#8:                                 # %do.end.45
	cmpl	$4, %esi
	jne	.LBB4_9
# BB#42:                                # %sw.bb.53
	andq	%rax, %r10
	shlq	$4, %r10
	jmp	.LBB4_36
.LBB4_39:                               # %sw.default
	movq	%rdx, %rdi
	jmp	check_type_failed       # TAILCALL
.LBB4_40:                               # %if.then.11
	movq	%rax, %rdi
	jmp	check_type_failed       # TAILCALL
.LBB4_41:                               # %if.then.32
	movq	%rcx, %rdi
	jmp	check_type_failed       # TAILCALL
.LBB4_15:                               # %do.end.45
	cmpl	$6, %esi
	jne	.LBB4_16
# BB#35:                                # %sw.bb.71
	andq	%rax, %r10
	addq	%r10, %r10
	jmp	.LBB4_36
.LBB4_9:                                # %do.end.45
	cmpl	$5, %esi
	jne	.LBB4_37
# BB#10:                                # %sw.bb.60
	movq	-24(%rcx), %rax
	testl	%r10d, %r10d
	je	.LBB4_34
# BB#11:                                # %for.body.preheader
	leal	-1(%r10), %r9d
	testb	$3, %r10b
	je	.LBB4_20
# BB#12:                                # %for.body.prol.preheader
	movl	%r10d, %esi
	andl	$3, %esi
	negl	%esi
.LBB4_13:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %edx
	cmpl	$16383, %edx            # imm = 0x3FFF
	jbe	.LBB4_18
# BB#14:                                #   in Loop: Header=BB4_13 Depth=1
	addq	$2, %rax
	jmp	.LBB4_19
.LBB4_18:                               # %select.mid
                                        #   in Loop: Header=BB4_13 Depth=1
	addq	$16, %rax
.LBB4_19:                               # %select.end
                                        #   in Loop: Header=BB4_13 Depth=1
	decl	%r10d
	incl	%esi
	jne	.LBB4_13
.LBB4_20:                               # %for.body.preheader.split
	cmpl	$3, %r9d
	jb	.LBB4_34
.LBB4_21:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %edx
	cmpl	$16383, %edx            # imm = 0x3FFF
	jbe	.LBB4_23
# BB#22:                                #   in Loop: Header=BB4_21 Depth=1
	addq	$2, %rax
	jmp	.LBB4_24
.LBB4_23:                               # %select.mid35
                                        #   in Loop: Header=BB4_21 Depth=1
	addq	$16, %rax
.LBB4_24:                               # %select.end34
                                        #   in Loop: Header=BB4_21 Depth=1
	movzwl	(%rax), %edx
	cmpl	$16383, %edx            # imm = 0x3FFF
	jbe	.LBB4_26
# BB#25:                                #   in Loop: Header=BB4_21 Depth=1
	addq	$2, %rax
	jmp	.LBB4_27
.LBB4_26:                               # %select.mid45
                                        #   in Loop: Header=BB4_21 Depth=1
	addq	$16, %rax
.LBB4_27:                               # %select.end44
                                        #   in Loop: Header=BB4_21 Depth=1
	movzwl	(%rax), %edx
	cmpl	$16383, %edx            # imm = 0x3FFF
	jbe	.LBB4_29
# BB#28:                                #   in Loop: Header=BB4_21 Depth=1
	addq	$2, %rax
	jmp	.LBB4_30
.LBB4_29:                               # %select.mid47
                                        #   in Loop: Header=BB4_21 Depth=1
	addq	$16, %rax
.LBB4_30:                               # %select.end46
                                        #   in Loop: Header=BB4_21 Depth=1
	addl	$-4, %r10d
	movzwl	(%rax), %edx
	cmpl	$16383, %edx            # imm = 0x3FFF
	jbe	.LBB4_32
# BB#31:                                #   in Loop: Header=BB4_21 Depth=1
	addq	$2, %rax
	jmp	.LBB4_33
.LBB4_32:                               # %select.mid49
                                        #   in Loop: Header=BB4_21 Depth=1
	addq	$16, %rax
.LBB4_33:                               # %select.end48
                                        #   in Loop: Header=BB4_21 Depth=1
	testl	%r10d, %r10d
	jne	.LBB4_21
.LBB4_34:                               # %for.end
	movq	%rax, -24(%rcx)
	jmp	.LBB4_37
.LBB4_16:                               # %do.end.45
	cmpl	$18, %esi
	jne	.LBB4_37
# BB#17:                                # %sw.bb.56
	andq	%rax, %r10
.LBB4_36:                               # %sw.epilog.76
	addq	%r10, -24(%rcx)
.LBB4_37:                               # %sw.epilog.76
	movl	%r8d, -28(%rcx)
	addq	$-32, 624(%rdi)
	xorl	%eax, %eax
.LBB4_38:                               # %cleanup
	retq
.Lfunc_end4:
	.size	zgetinterval, .Lfunc_end4-zgetinterval
	.cfi_endproc

	.align	16, 0x90
	.type	zlength,@function
zlength:                                # @zlength
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -24
.Ltmp45:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzbl	1(%r14), %eax
	addl	$-2, %eax
	cmpl	$16, %eax
	ja	.LBB5_13
# BB#1:                                 # %entry
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_2:                                # %do.body
	movl	$-7, %eax
	testb	$32, (%r14)
	je	.LBB5_8
# BB#3:                                 # %do.end
	movl	4(%r14), %eax
	jmp	.LBB5_7
.LBB5_13:                               # %sw.default
	movq	%r14, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.LBB5_4:                                # %do.body.9
	movq	8(%r14), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB5_8
# BB#5:                                 # %do.end.19
	movq	%r14, %rdi
	callq	dict_length
	jmp	.LBB5_6
.LBB5_10:                               # %sw.bb.33
	movq	8(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	*128(%rdi)
	movq	%rax, %rcx
	movl	$st_bytes, %edx
	movl	$-20, %eax
	cmpq	%rdx, %rcx
	jne	.LBB5_8
# BB#11:                                # %do.body.43
	movl	$-7, %eax
	testb	$32, (%r14)
	je	.LBB5_8
# BB#12:                                # %do.end.52
	movq	8(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	*120(%rdi)
.LBB5_6:                                # %cleanup
	movl	%eax, %eax
	jmp	.LBB5_7
.LBB5_9:                                # %sw.bb.25
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %rdx
	movq	%r14, %rsi
	callq	names_string_ref
	movl	12(%rsp), %eax
.LBB5_7:                                # %cleanup
	movq	%rax, 8(%r14)
	movw	$2816, (%r14)           # imm = 0xB00
	xorl	%eax, %eax
.LBB5_8:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	zlength, .Lfunc_end5-zlength
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_4
	.quad	.LBB5_13
	.quad	.LBB5_2
	.quad	.LBB5_2
	.quad	.LBB5_2
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_10
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_9
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_2

	.text
	.align	16, 0x90
	.type	zput,@function
zput:                                   # @zput
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 64
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	$4294967295, %ebp       # imm = 0xFFFFFFFF
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %r12
	leaq	-32(%rbx), %r15
	movzbl	-31(%rbx), %eax
	leal	-2(%rax), %ecx
	cmpl	$7, %ecx
	jbe	.LBB6_8
# BB#1:                                 # %entry
	cmpl	$18, %eax
	jne	.LBB6_28
# BB#2:                                 # %sw.bb.73
	movq	-24(%rbx), %r13
	movl	-28(%rbx), %ecx
	jmp	.LBB6_3
.LBB6_8:                                # %entry
	movl	$-7, %eax
	jmpq	*.LJTI6_0(,%rcx,8)
.LBB6_9:                                # %sw.bb
	cmpl	$0, 148(%r14)
	jne	.LBB6_11
# BB#10:                                # %do.body
	movq	-24(%rbx), %rax
	testb	$16, (%rax)
	movl	$-7, %eax
	je	.LBB6_12
.LBB6_11:                               # %if.end.7
	leaq	368(%r14), %rcx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	dict_put
	testl	%eax, %eax
	jns	.LBB6_25
	jmp	.LBB6_12
.LBB6_28:                               # %sw.default
	movq	%r15, %rdi
.LBB6_17:                               # %if.then.30
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB6_13:                               # %do.body.13
	movzwl	(%r15), %edx
	testb	$16, %dl
	jne	.LBB6_15
# BB#14:
	movl	$-7, %eax
	jmp	.LBB6_12
.LBB6_26:                               # %sw.bb.131
	movq	8(%r14), %rdi
	movq	-24(%rbx), %rsi
	callq	*128(%rdi)
	movq	%rax, %rcx
	movl	$st_bytes, %edx
	movl	$-20, %eax
	cmpq	%rdx, %rcx
	jne	.LBB6_12
# BB#27:                                # %if.end.140
	movq	-24(%rbx), %r13
	movq	8(%r14), %rdi
	movq	%r13, %rsi
	callq	*120(%rdi)
	movl	%eax, %ecx
.LBB6_3:                                # %do.body.77
	testb	$16, (%r15)
	movl	$-7, %eax
	je	.LBB6_12
# BB#4:                                 # %do.body.87
	movzbl	1(%r12), %eax
	cmpl	$11, %eax
	jne	.LBB6_16
# BB#5:                                 # %if.end.96
	movq	-8(%rbx), %rdx
	movl	%ecx, %ecx
	movl	$-15, %eax
	cmpq	%rcx, %rdx
	jae	.LBB6_12
# BB#6:                                 # %do.body.106
	movzbl	1(%rbx), %ecx
	cmpl	$11, %ecx
	jne	.LBB6_7
# BB#23:                                # %if.end.115
	movq	8(%rbx), %rcx
	cmpq	$255, %rcx
	ja	.LBB6_12
# BB#24:                                # %do.end.123
	andq	%rbp, %rdx
	movb	%cl, (%r13,%rdx)
	jmp	.LBB6_25
.LBB6_15:                               # %do.body.23
	movzbl	1(%r12), %eax
	cmpl	$11, %eax
	jne	.LBB6_16
# BB#18:                                # %if.end.32
	movq	-8(%rbx), %rcx
	movl	-28(%rbx), %esi
	movl	$-15, %eax
	cmpq	%rsi, %rcx
	jae	.LBB6_12
# BB#19:                                # %do.end.41
	movzwl	(%rbx), %eax
	andl	$12, %eax
	andl	$12, %edx
	cmpl	%edx, %eax
	movl	$-7, %eax
	ja	.LBB6_12
# BB#20:                                # %if.end.53
	movq	-24(%rbx), %rax
	andq	%rbp, %rcx
	shlq	$4, %rcx
	leaq	(%rax,%rcx), %r12
	movzwl	(%rax,%rcx), %eax
	testl	72(%r14), %eax
	jne	.LBB6_22
# BB#21:                                # %cond.true
	leaq	8(%r14), %rdi
	movl	$.L.str.13, %ecx
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	alloc_save_change
.LBB6_22:                               # %cond.end
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r12)
	movzwl	(%r12), %eax
	orl	76(%r14), %eax
	movw	%ax, (%r12)
.LBB6_25:                               # %sw.epilog
	addq	$-48, 624(%r14)
	xorl	%eax, %eax
.LBB6_12:                               # %cleanup.156
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_16:                               # %if.then.30
	movq	%r12, %rdi
	jmp	.LBB6_17
.LBB6_7:                                # %if.then.113
	movq	%rbx, %rdi
	jmp	.LBB6_17
.Lfunc_end6:
	.size	zput, .Lfunc_end6-zput
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_9
	.quad	.LBB6_28
	.quad	.LBB6_13
	.quad	.LBB6_12
	.quad	.LBB6_12
	.quad	.LBB6_28
	.quad	.LBB6_28
	.quad	.LBB6_26

	.text
	.align	16, 0x90
	.type	zputinterval,@function
zputinterval:                           # @zputinterval
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 48
.Ltmp64:
	.cfi_offset %rbx, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %r15
	leaq	-32(%rbx), %rsi
	movzbl	-31(%rbx), %eax
	cmpq	$9, %rax
	movl	$-20, %ebp
	jbe	.LBB7_6
# BB#1:                                 # %entry
	cmpl	$18, %eax
	jne	.LBB7_24
	jmp	.LBB7_2
.LBB7_6:                                # %entry
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_10:                               # %sw.bb.20
	movl	$-7, %ebp
	jmp	.LBB7_24
.LBB7_2:                                # %do.body
	movl	$-7, %ebp
	testb	$16, (%rsi)
	je	.LBB7_24
# BB#3:                                 # %do.body.26
	movzbl	1(%r15), %eax
	cmpl	$11, %eax
	jne	.LBB7_4
# BB#21:                                # %if.end.34
	movq	-8(%rbx), %rdx
	movl	-28(%rbx), %eax
	movl	$-15, %ebp
	cmpq	%rax, %rdx
	ja	.LBB7_24
# BB#22:                                # %sw.epilog
	movl	$.L.str.14, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	copy_interval
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB7_23
	jmp	.LBB7_24
.LBB7_7:                                # %sw.bb
	movzbl	1(%rbx), %eax
	cmpq	$18, %rax
	ja	.LBB7_24
# BB#8:                                 # %sw.bb
	movl	$262161, %ecx           # imm = 0x40011
	btq	%rax, %rcx
	jae	.LBB7_24
# BB#9:                                 # %if.else
	movl	$-17, %ebp
	jmp	.LBB7_24
.LBB7_11:                               # %sw.bb.47
	testb	$16, (%rsi)
	jne	.LBB7_13
# BB#12:
	movl	$-7, %ebp
	jmp	.LBB7_24
.LBB7_13:                               # %do.end.57
	movq	8(%r14), %rdi
	movq	-24(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_bytes, %ecx
	cmpq	%rcx, %rax
	jne	.LBB7_24
# BB#14:                                # %if.end.65
	movq	8(%r14), %rdi
	movq	-24(%rbx), %rsi
	callq	*120(%rdi)
	movzbl	-15(%rbx), %ecx
	cmpl	$11, %ecx
	jne	.LBB7_4
# BB#15:                                # %if.end.83
	movq	-8(%rbx), %rcx
	movl	%eax, %edx
	movl	$-15, %ebp
	cmpq	%rdx, %rcx
	ja	.LBB7_24
# BB#16:                                # %do.end.92
	movzwl	(%rbx), %edx
	andl	$16160, %edx            # imm = 0x3F20
	cmpl	$4640, %edx             # imm = 0x1220
	jne	.LBB7_17
# BB#19:                                # %if.end.110
	movl	4(%rbx), %edx
	subl	%ecx, %eax
	cmpl	%eax, %edx
	ja	.LBB7_24
# BB#20:                                # %sw.epilog.thread
	movl	%ecx, %edi
	addq	-24(%rbx), %rdi
	movq	8(%rbx), %rsi
	callq	memcpy
	xorl	%ebp, %ebp
.LBB7_23:                               # %if.then.127
	addq	$-48, 624(%r14)
.LBB7_24:                               # %cleanup.133
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_4:                                # %if.then.33
	movq	%r15, %rdi
.LBB7_5:                                # %if.then.33
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB7_17:                               # %if.then.102
	movzbl	1(%rbx), %eax
	cmpl	$18, %eax
	movl	$-7, %ebp
	je	.LBB7_24
# BB#18:                                # %cond.true
	movq	%rbx, %rdi
	jmp	.LBB7_5
.Lfunc_end7:
	.size	zputinterval, .Lfunc_end7-zputinterval
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_7
	.quad	.LBB7_24
	.quad	.LBB7_24
	.quad	.LBB7_24
	.quad	.LBB7_2
	.quad	.LBB7_10
	.quad	.LBB7_10
	.quad	.LBB7_24
	.quad	.LBB7_24
	.quad	.LBB7_11

	.text
	.align	16, 0x90
	.type	array_continue,@function
array_continue:                         # @array_continue
	.cfi_startproc
# BB#0:                                 # %entry
	movq	520(%rdi), %rax
	movl	-12(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB8_4
# BB#1:                                 # %do.body
	movq	624(%rdi), %rdx
	addq	$16, %rdx
	cmpq	640(%rdi), %rdx
	jbe	.LBB8_3
# BB#2:                                 # %if.then.6
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB8_4:                                # %if.else.23
	addq	$-48, %rax
	movq	%rax, 520(%rdi)
	movl	$14, %eax
	retq
.LBB8_3:                                # %if.else
	movq	%rdx, 624(%rdi)
	decl	%ecx
	movl	%ecx, -12(%rax)
	movq	-8(%rax), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rdx)
	addq	$16, -8(%rax)
	movq	520(%rdi), %rcx
	leaq	32(%rcx), %rdx
	movq	%rdx, 520(%rdi)
	movups	(%rax), %xmm0
	movups	%xmm0, 32(%rcx)
	movl	$5, %eax
	retq
.Lfunc_end8:
	.size	array_continue, .Lfunc_end8-array_continue
	.cfi_endproc

	.align	16, 0x90
	.type	dict_continue,@function
dict_continue:                          # @dict_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp70:
	.cfi_def_cfa_offset 32
.Ltmp71:
	.cfi_offset %rbx, -24
.Ltmp72:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdx
	leaq	32(%rdx), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB9_2
# BB#1:                                 # %if.then
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB9_5
.LBB9_2:                                # %if.else
	movq	520(%rbx), %r14
	leaq	-32(%r14), %rdi
	movl	8(%r14), %esi
	movq	%rax, 624(%rbx)
	addq	$16, %rdx
	callq	dict_next
	testl	%eax, %eax
	js	.LBB9_4
# BB#3:                                 # %if.then.18
	cltq
	movq	520(%rbx), %rcx
	movq	%rax, 8(%rcx)
	leaq	32(%rcx), %rax
	movq	%rax, 520(%rbx)
	movups	-16(%r14), %xmm0
	movups	%xmm0, 32(%rcx)
	movl	$5, %eax
	jmp	.LBB9_5
.LBB9_4:                                # %if.else.32
	addq	$-32, 624(%rbx)
	addq	$-64, 520(%rbx)
	movl	$14, %eax
.LBB9_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	dict_continue, .Lfunc_end9-dict_continue
	.cfi_endproc

	.align	16, 0x90
	.type	packedarray_continue,@function
packedarray_continue:                   # @packedarray_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 32
.Ltmp76:
	.cfi_offset %rbx, -32
.Ltmp77:
	.cfi_offset %r14, -24
.Ltmp78:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %r15
	movl	-12(%r15), %eax
	testl	%eax, %eax
	je	.LBB10_7
# BB#1:                                 # %if.then
	movq	624(%rbx), %rdx
	movq	-8(%r15), %r14
	decl	%eax
	movl	%eax, -12(%r15)
	addq	$16, %rdx
	cmpq	640(%rbx), %rdx
	jbe	.LBB10_3
# BB#2:                                 # %if.then.9
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB10_8
.LBB10_7:                               # %if.else.28
	addq	$-48, %r15
	movq	%r15, 520(%rbx)
	movl	$14, %eax
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	%rdx, 624(%rbx)
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	packed_get
	movzwl	(%r14), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB10_5
# BB#4:
	addq	$2, %r14
	jmp	.LBB10_6
.LBB10_5:                               # %select.mid
	addq	$16, %r14
.LBB10_6:                               # %select.end
	movq	%r14, -8(%r15)
	movq	520(%rbx), %rax
	leaq	32(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movups	(%r15), %xmm0
	movups	%xmm0, 32(%rax)
	movl	$5, %eax
.LBB10_8:                               # %cleanup.33
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	packedarray_continue, .Lfunc_end10-packedarray_continue
	.cfi_endproc

	.align	16, 0x90
	.type	string_continue,@function
string_continue:                        # @string_continue
	.cfi_startproc
# BB#0:                                 # %entry
	movq	520(%rdi), %rax
	movl	-12(%rax), %edx
	testl	%edx, %edx
	je	.LBB11_4
# BB#1:                                 # %if.then
	movq	624(%rdi), %rcx
	decl	%edx
	movl	%edx, -12(%rax)
	leaq	16(%rcx), %rdx
	cmpq	640(%rdi), %rdx
	jbe	.LBB11_3
# BB#2:                                 # %if.then.8
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB11_4:                               # %if.else.25
	addq	$-48, %rax
	movq	%rax, 520(%rdi)
	movl	$14, %eax
	retq
.LBB11_3:                               # %if.else
	movq	%rdx, 624(%rdi)
	movq	-8(%rax), %rdx
	movzbl	(%rdx), %esi
	movq	%rsi, 24(%rcx)
	movw	$2816, 16(%rcx)         # imm = 0xB00
	incq	%rdx
	movq	%rdx, -8(%rax)
	movq	520(%rdi), %rcx
	leaq	32(%rcx), %rdx
	movq	%rdx, 520(%rdi)
	movups	(%rax), %xmm0
	movups	%xmm0, 32(%rcx)
	movl	$5, %eax
	retq
.Lfunc_end11:
	.size	string_continue, .Lfunc_end11-string_continue
	.cfi_endproc

	.align	16, 0x90
	.type	copy_interval,@function
copy_interval:                          # @copy_interval
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp83:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp85:
	.cfi_def_cfa_offset 96
.Ltmp86:
	.cfi_offset %rbx, -56
.Ltmp87:
	.cfi_offset %r12, -48
.Ltmp88:
	.cfi_offset %r13, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movq	%rsi, %r15
	movq	%rdi, %r12
	movzbl	1(%rcx), %edi
	movl	4(%rcx), %ebx
	movzbl	1(%r15), %esi
	cmpl	%esi, %edi
	je	.LBB12_3
# BB#1:                                 # %lor.lhs.false
	movb	%dil, %al
	addb	$-5, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	ja	.LBB12_20
# BB#2:                                 # %lor.lhs.false
	movzbl	%sil, %eax
	cmpl	$4, %eax
	jne	.LBB12_20
.LBB12_3:                               # %do.body
	movl	$-7, %r13d
	testb	$32, (%rcx)
	je	.LBB12_19
# BB#4:                                 # %do.body.23
	testb	$16, (%r15)
	je	.LBB12_19
# BB#5:                                 # %do.end.32
	movl	4(%r15), %eax
	subl	%edx, %eax
	movl	$-15, %r13d
	cmpl	%eax, %ebx
	ja	.LBB12_19
# BB#6:                                 # %if.end.38
	xorl	%r13d, %r13d
	leal	-5(%rdi), %eax
	cmpl	$2, %eax
	jae	.LBB12_7
# BB#11:                                # %sw.bb.46
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	je	.LBB12_19
# BB#12:                                # %for.body.lr.ph
	movq	8(%rcx), %rbp
	movl	%edx, %r14d
	shlq	$4, %r14
	addq	8(%r15), %r14
	leaq	8(%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB12_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r12), %rdi
	movq	%rbp, %rsi
	leaq	24(%rsp), %rdx
	callq	packed_get
	movzwl	(%r14), %eax
	testl	72(%r12), %eax
	jne	.LBB12_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	alloc_save_change
.LBB12_15:                              # %cond.end
                                        #   in Loop: Header=BB12_13 Depth=1
	movups	24(%rsp), %xmm0
	movups	%xmm0, (%r14)
	movzwl	(%r14), %eax
	orl	76(%r12), %eax
	movw	%ax, (%r14)
	movzwl	(%rbp), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB12_17
# BB#16:                                #   in Loop: Header=BB12_13 Depth=1
	addq	$2, %rbp
	jmp	.LBB12_18
	.align	16, 0x90
.LBB12_17:                              # %select.mid
                                        #   in Loop: Header=BB12_13 Depth=1
	addq	$16, %rbp
.LBB12_18:                              # %select.end
                                        #   in Loop: Header=BB12_13 Depth=1
	addq	$16, %r14
	decl	%ebx
	jne	.LBB12_13
	jmp	.LBB12_19
.LBB12_20:                              # %if.then
	movq	%rcx, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB12_7:                               # %if.end.38
	cmpl	$18, %edi
	jne	.LBB12_8
# BB#10:                                # %sw.bb.40
	movl	%edx, %edi
	addq	8(%r15), %rdi
	movq	8(%rcx), %rsi
	movq	%rbx, %rdx
	callq	memmove
	jmp	.LBB12_19
.LBB12_8:                               # %if.end.38
	cmpl	$4, %edi
	jne	.LBB12_19
# BB#9:                                 # %sw.bb
	movq	8(%rcx), %rax
	addq	$8, %r12
	movq	%r15, %rdi
	movl	%edx, %esi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	movq	%r12, %r8
	movq	%rbp, %r9
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	refcpy_to_old           # TAILCALL
.LBB12_19:                              # %cleanup
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	copy_interval, .Lfunc_end12-copy_interval
	.cfi_endproc

	.align	16, 0x90
	.type	forall_cleanup,@function
forall_cleanup:                         # @forall_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end13:
	.size	forall_cleanup, .Lfunc_end13-forall_cleanup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1copy"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2forall"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"3.forceput"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2get"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"3getinterval"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1length"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"3put"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"3putinterval"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0%array_continue"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"0%dict_continue"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"0%packedarray_continue"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"0%string_continue"
	.size	.L.str.11, 18

	.type	zgeneric_op_defs,@object # @zgeneric_op_defs
	.section	.rodata,"a",@progbits
	.globl	zgeneric_op_defs
	.align	16
zgeneric_op_defs:
	.quad	.L.str
	.quad	zcopy
	.quad	.L.str.1
	.quad	zforall
	.quad	.L.str.2
	.quad	zforceput
	.quad	.L.str.3
	.quad	zget
	.quad	.L.str.4
	.quad	zgetinterval
	.quad	.L.str.5
	.quad	zlength
	.quad	.L.str.6
	.quad	zput
	.quad	.L.str.7
	.quad	zputinterval
	.quad	.L.str.8
	.quad	array_continue
	.quad	.L.str.9
	.quad	dict_continue
	.quad	.L.str.10
	.quad	packedarray_continue
	.quad	.L.str.11
	.quad	string_continue
	.zero	16
	.size	zgeneric_op_defs, 208

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"copy"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"put"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"putinterval"
	.size	.L.str.14, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
