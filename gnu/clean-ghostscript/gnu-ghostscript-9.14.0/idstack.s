	.text
	.file	"idstack.bc"
	.globl	dstack_dict_is_permanent
	.align	16, 0x90
	.type	dstack_dict_is_permanent,@function
dstack_dict_is_permanent:               # @dstack_dict_is_permanent
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	8(%rsi), %r15
	cmpl	$0, 40(%r14)
	je	.LBB0_1
# BB#5:                                 # %if.else
	movq	%r14, %rdi
	callq	ref_stack_count
	movl	%eax, %ebp
	subl	96(%r14), %eax
	cmpl	%ebp, %eax
	jae	.LBB0_6
# BB#9:                                 # %for.body.12.lr.ph
	movslq	%eax, %rbx
	.align	16, 0x90
.LBB0_10:                               # %for.body.12
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movq	%rax, %rcx
	movl	$1, %eax
	cmpq	%r15, 8(%rcx)
	je	.LBB0_11
# BB#7:                                 # %for.cond.10
                                        #   in Loop: Header=BB0_10 Depth=1
	incq	%rbx
	cmpl	%ebp, %ebx
	jb	.LBB0_10
# BB#8:
	xorl	%eax, %eax
	jmp	.LBB0_11
.LBB0_1:                                # %for.cond.preheader
	movl	96(%r14), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB0_11
# BB#2:                                 # %for.body.lr.ph
	movq	8(%r14), %rdx
	addq	$8, %rdx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	cmpq	%r15, (%rdx)
	je	.LBB0_11
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB0_4 Depth=1
	addq	$16, %rdx
	incl	%esi
	xorl	%eax, %eax
	cmpl	%ecx, %esi
	jb	.LBB0_4
	jmp	.LBB0_11
.LBB0_6:
	xorl	%eax, %eax
.LBB0_11:                               # %cleanup.25
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dstack_dict_is_permanent, .Lfunc_end0-dstack_dict_is_permanent
	.cfi_endproc

	.globl	dstack_find_name_by_index
	.align	16, 0x90
	.type	dstack_find_name_by_index,@function
dstack_find_name_by_index:              # @dstack_find_name_by_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 80
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %r14
	movq	(%r14), %r13
	leal	49152(%r15), %eax
	xorl	%ecx, %ecx
	cmpl	$4096, %r15d            # imm = 0x1000
	movzwl	%ax, %edi
	cmovael	%ecx, %edi
	movq	%r13, %r9
.LBB1_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_7 Depth 2
	movq	8(%r9), %r8
	movl	4(%r8), %ecx
	leal	-1(%rcx), %ebp
	movzbl	17(%r8), %eax
	cmpl	$6, %eax
	jne	.LBB1_15
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	24(%r8), %rsi
	cmpl	$8388610, %ebp          # imm = 0x800002
	jb	.LBB1_4
# BB#3:                                 # %cond.true.10
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	movl	%r15d, %eax
	divl	%ebp
	movl	%edx, %ecx
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_15:                               # %if.else.50
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	24(%r8), %rsi
	cmpl	$8388610, %ebp          # imm = 0x800002
	jb	.LBB1_17
# BB#16:                                # %cond.true.59
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	movl	%r15d, %eax
	divl	%ebp
	jmp	.LBB1_18
	.align	16, 0x90
.LBB1_4:                                # %cond.false.11
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	$-2, %ecx
	andl	%r15d, %ecx
.LBB1_5:                                # %cond.end.13
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	%ecx
	movslq	%ecx, %rcx
	leaq	(%rsi,%rcx,2), %rax
	movzwl	(%rsi,%rcx,2), %ecx
	cmpl	%edi, %ecx
	je	.LBB1_14
# BB#6:                                 # %if.else.lr.ph.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%ebp, %edx
	leaq	(%rsi,%rdx,2), %rbp
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_7:                                # %if.else
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	%cx, %ecx
	cmpl	$49151, %ecx            # imm = 0xBFFF
	ja	.LBB1_13
# BB#8:                                 # %if.then.31
                                        #   in Loop: Header=BB1_7 Depth=2
	cmpl	$24576, %ecx            # imm = 0x6000
	je	.LBB1_27
# BB#9:                                 # %if.end
                                        #   in Loop: Header=BB1_7 Depth=2
	cmpq	%rax, %rsi
	je	.LBB1_10
.LBB1_13:                               # %for.inc
                                        #   in Loop: Header=BB1_7 Depth=2
	movzwl	-2(%rax), %ecx
	addq	$-2, %rax
	cmpl	%edi, %ecx
	jne	.LBB1_7
	jmp	.LBB1_14
.LBB1_10:                               # %if.then.38
                                        #   in Loop: Header=BB1_7 Depth=2
	testl	%edx, %edx
	jne	.LBB1_27
# BB#11:                                # %if.else.40
                                        #   in Loop: Header=BB1_7 Depth=2
	movzwl	(%rbp), %ecx
	movl	$1, %edx
	cmpl	%edi, %ecx
	movq	%rbp, %rax
	jne	.LBB1_7
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_17:                               # %cond.false.61
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	-2(%rcx), %edx
	andl	%r15d, %edx
.LBB1_18:                               # %for.cond.69.outer
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%edx, %eax
	shlq	$4, %rax
	addq	$16, %rax
	jmp	.LBB1_19
	.align	16, 0x90
.LBB1_26:                               # %for.cond.69.backedge
                                        #   in Loop: Header=BB1_19 Depth=2
	addq	$-16, %rax
.LBB1_19:                               # %for.cond.69
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%rsi,%rax), %edx
	cmpl	$14, %edx
	jne	.LBB1_20
# BB#24:                                # %if.then.109
                                        #   in Loop: Header=BB1_19 Depth=2
	testb	$-128, (%rsi,%rax)
	je	.LBB1_27
# BB#25:                                # %if.end.116
                                        #   in Loop: Header=BB1_19 Depth=2
	testq	%rax, %rax
	jne	.LBB1_26
	jmp	.LBB1_36
	.align	16, 0x90
.LBB1_20:                               # %for.cond.69
                                        #   in Loop: Header=BB1_19 Depth=2
	movzbl	%dl, %edx
	cmpl	$13, %edx
	jne	.LBB1_26
# BB#21:                                # %if.then.77
                                        #   in Loop: Header=BB1_19 Depth=2
	movq	8(%rsi,%rax), %rdx
	movl	4(%rsi,%rax), %ebx
	movl	%ebx, %ebp
	andl	$511, %ebp              # imm = 0x1FF
	shlq	$3, %rbp
	subq	%rbp, %rdx
	addl	4096(%rdx), %ebx
	cmpl	%r15d, %ebx
	jne	.LBB1_26
	jmp	.LBB1_22
.LBB1_36:                               # %if.then.119
                                        #   in Loop: Header=BB1_1 Depth=1
	shlq	$4, %rcx
	.align	16, 0x90
.LBB1_37:                               # %for.cond.69.1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-16, %rcx
	movzbl	1(%rsi,%rcx), %eax
	cmpl	$13, %eax
	jne	.LBB1_38
# BB#41:                                # %if.then.77.1
                                        #   in Loop: Header=BB1_37 Depth=2
	movq	8(%rsi,%rcx), %rax
	movl	4(%rsi,%rcx), %ebp
	movl	%ebp, %edx
	andl	$511, %edx              # imm = 0x1FF
	shlq	$3, %rdx
	subq	%rdx, %rax
	addl	4096(%rax), %ebp
	cmpl	%r15d, %ebp
	jne	.LBB1_37
	jmp	.LBB1_42
	.align	16, 0x90
.LBB1_38:                               # %for.cond.69.1
                                        #   in Loop: Header=BB1_37 Depth=2
	movzbl	%al, %eax
	cmpl	$14, %eax
	jne	.LBB1_37
# BB#39:                                # %if.then.109.1
                                        #   in Loop: Header=BB1_37 Depth=2
	testb	$-128, (%rsi,%rcx)
	je	.LBB1_27
# BB#40:                                # %if.end.116.1
                                        #   in Loop: Header=BB1_37 Depth=2
	testq	%rcx, %rcx
	jne	.LBB1_37
	.align	16, 0x90
.LBB1_27:                               # %do.cond.141
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	8(%r14), %rcx
	cmpq	%rcx, %r9
	leaq	-16(%r9), %r9
	ja	.LBB1_1
# BB#28:                                # %do.end.146
	xorl	%eax, %eax
	cmpl	$0, 40(%r14)
	je	.LBB1_35
# BB#29:                                # %if.end.150
	addq	$16, %r13
	subq	%rcx, %r13
	shrq	$4, %r13
	movq	%r14, %rdi
	callq	ref_stack_count
	movl	%eax, %r12d
	movq	(%r14), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %rdx
	movl	%r15d, %esi
	callq	names_index_ref
	xorl	%r15d, %r15d
	cmpl	%r12d, %r13d
	jae	.LBB1_34
# BB#30:                                # %for.body.lr.ph
	movl	%r13d, %ebx
	movl	%r12d, %ebp
	leaq	8(%rsp), %r12
	leaq	(%rsp), %r13
	xorl	%r15d, %r15d
.LBB1_32:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	dict_find
	testl	%eax, %eax
	jg	.LBB1_33
# BB#31:                                # %for.cond.169
                                        #   in Loop: Header=BB1_32 Depth=1
	incq	%rbx
	cmpq	%rbp, %rbx
	jb	.LBB1_32
	jmp	.LBB1_34
.LBB1_22:
	leaq	(%rax,%rsi), %rax
	jmp	.LBB1_23
.LBB1_42:
	leaq	(%rcx,%rsi), %rax
.LBB1_23:                               # %cleanup.131
	subq	%rsi, %rax
	addq	8(%r8), %rax
	jmp	.LBB1_35
.LBB1_12:
	movq	%rbp, %rax
.LBB1_14:                               # %cleanup
	subq	%rsi, %rax
	shlq	$3, %rax
	addq	8(%r8), %rax
.LBB1_35:                               # %cleanup.194
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_33:                               # %do.end.181
	movq	(%rsp), %r15
.LBB1_34:                               # %cleanup.186
	movq	%r15, %rax
	jmp	.LBB1_35
.Lfunc_end1:
	.size	dstack_find_name_by_index, .Lfunc_end1-dstack_find_name_by_index
	.cfi_endproc

	.globl	dstack_set_top
	.align	16, 0x90
	.type	dstack_set_top,@function
dstack_set_top:                         # @dstack_set_top
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	movzbl	17(%rcx), %edx
	cmpl	$6, %edx
	jne	.LBB2_3
# BB#1:                                 # %land.lhs.true
	testb	$32, (%rcx)
	jne	.LBB2_2
.LBB2_3:                                # %if.else
	movq	$no_packed_keys, 112(%rdi)
	movl	$1, 120(%rdi)
	jmp	.LBB2_4
.LBB2_2:                                # %if.then
	movq	24(%rcx), %rdx
	movq	%rdx, 112(%rdi)
	movl	4(%rcx), %edx
	decl	%edx
	movl	%edx, 120(%rdi)
	movq	8(%rcx), %rcx
	movq	%rcx, 128(%rdi)
.LBB2_4:                                # %if.end
	movq	8(%rax), %rdx
	movl	$-1, %ecx
	testb	$16, (%rdx)
	je	.LBB2_6
# BB#5:                                 # %if.else.25
	movzwl	(%rax), %ecx
	andl	$12, %ecx
.LBB2_6:                                # %if.end.31
	movl	%ecx, 104(%rdi)
	retq
.Lfunc_end2:
	.size	dstack_set_top, .Lfunc_end2-dstack_set_top
	.cfi_endproc

	.globl	dstack_gc_cleanup
	.align	16, 0x90
	.type	dstack_gc_cleanup,@function
dstack_gc_cleanup:                      # @dstack_gc_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 96
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	callq	ref_stack_count
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	96(%rbx), %ecx
	testq	%rcx, %rcx
	je	.LBB3_10
# BB#1:                                 # %for.body.lr.ph
	leaq	24(%rsp), %r12
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, %esi
	subl	%ecx, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	ref_stack_index
	movq	8(%rax), %r14
	movl	4(%r14), %r15d
	testq	%r15, %r15
	je	.LBB3_9
# BB#3:                                 # %for.body.9.lr.ph
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	8(%r14), %r13
	leaq	16(%r14), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_4:                                # %for.body.9
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	72(%r14), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	array_get
	movzbl	25(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB3_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	cmpq	$2, %rcx
	jb	.LBB3_8
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB3_4 Depth=2
	cmpq	%rcx, %r13
	je	.LBB3_9
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	%r13, (%rax)
.LBB3_8:                                # %cleanup
                                        #   in Loop: Header=BB3_4 Depth=2
	incq	%rbp
	addq	$16, %r13
	cmpq	%r15, %rbp
	jb	.LBB3_4
.LBB3_9:                                # %for.end
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rax
	decq	%rax
	cmpl	$1, %ecx
	movq	%rax, %rcx
	jne	.LBB3_2
.LBB3_10:                               # %for.end.30
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dstack_gc_cleanup, .Lfunc_end3-dstack_gc_cleanup
	.cfi_endproc

	.type	no_packed_keys,@object  # @no_packed_keys
	.section	.rodata,"a",@progbits
	.align	2
no_packed_keys:
	.short	24577                   # 0x6001
	.short	24576                   # 0x6000
	.size	no_packed_keys, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
