	.text
	.file	"zdict.bc"
	.globl	zdict
	.align	16, 0x90
	.type	zdict,@function
zdict:                                  # @zdict
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB0_3
# BB#1:                                 # %if.end
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	js	.LBB0_2
# BB#4:                                 # %if.end.5
	movq	8(%rdi), %rdi
	movq	%rax, %rdx
	jmp	dict_alloc              # TAILCALL
.LBB0_3:                                # %if.then
	movq	%rax, %rdi
	jmp	check_type_failed       # TAILCALL
.LBB0_2:                                # %cleanup
	movl	$-15, %eax
	retq
.Lfunc_end0:
	.size	zdict, .Lfunc_end0-zdict
	.cfi_endproc

	.globl	zbegin
	.align	16, 0x90
	.type	zbegin,@function
zbegin:                                 # @zbegin
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
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB1_9
# BB#1:                                 # %do.body
	movq	8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB1_8
# BB#2:                                 # %do.end
	leaq	368(%r14), %r15
	movq	368(%r14), %rax
	cmpq	384(%r14), %rax
	jne	.LBB1_5
# BB#3:                                 # %if.then.13
	movl	$1, %esi
	movq	%r15, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB1_6
# BB#4:                                 # %if.then.13.if.end.28_crit_edge
	movq	(%r15), %rax
.LBB1_5:                                # %if.end.28
	leaq	16(%rax), %rcx
	movq	%rcx, 368(%r14)
	movups	(%rbx), %xmm0
	movups	%xmm0, 16(%rax)
	movq	%r15, %rdi
	callq	dstack_set_top
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB1_8:                                # %cleanup.40
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB1_9:                                # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB1_6:                                # %if.then.19
	cmpl	$-3, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.22
	addq	$-16, 624(%r14)
	movl	$-3, %eax
	jmp	.LBB1_8
.Lfunc_end1:
	.size	zbegin, .Lfunc_end1-zbegin
	.cfi_endproc

	.globl	zend
	.align	16, 0x90
	.type	zend,@function
zend:                                   # @zend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -24
.Ltmp10:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	368(%rbx), %rcx
	movq	376(%rbx), %rdx
	leaq	16(%rcx), %rax
	subq	%rdx, %rax
	sarq	$4, %rax
	movl	412(%rbx), %esi
	addq	%rax, %rsi
	movl	464(%rbx), %edi
	movl	$-4, %eax
	cmpq	%rdi, %rsi
	je	.LBB2_4
# BB#1:                                 # %while.cond.preheader
	leaq	368(%rbx), %r14
	cmpq	%rdx, %rcx
	jne	.LBB2_3
	.align	16, 0x90
.LBB2_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	ref_stack_pop_block
	movq	368(%rbx), %rcx
	cmpq	376(%rbx), %rcx
	je	.LBB2_2
.LBB2_3:                                # %while.end
	addq	$-16, %rcx
	movq	%rcx, (%r14)
	movq	%r14, %rdi
	callq	dstack_set_top
	xorl	%eax, %eax
.LBB2_4:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	zend, .Lfunc_end2-zend
	.cfi_endproc

	.globl	zop_def
	.align	16, 0x90
	.type	zop_def,@function
zop_def:                                # @zop_def
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 48
.Ltmp16:
	.cfi_offset %rbx, -40
.Ltmp17:
	.cfi_offset %r12, -32
.Ltmp18:
	.cfi_offset %r14, -24
.Ltmp19:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzbl	-15(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB3_12
# BB#1:                                 # %entry
	movl	$-20, %eax
	cmpl	$14, %ecx
	je	.LBB3_11
# BB#2:                                 # %entry
	leaq	-16(%r14), %r15
	cmpl	$13, %ecx
	jne	.LBB3_5
# BB#3:                                 # %sw.bb
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r15, %rsi
	callq	names_index
	movl	488(%rbx), %edx
	decl	%edx
	andl	%eax, %edx
	incl	%edx
	movq	480(%rbx), %rcx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	$49152, %eax            # imm = 0xC000
	cmpl	%eax, %ecx
	jne	.LBB3_5
# BB#4:                                 # %cond.true
	shlq	$4, %rdx
	addq	496(%rbx), %rdx
	movq	%rdx, (%rsp)
	movzwl	(%r14), %eax
	andl	$12, %eax
	cmpl	472(%rbx), %eax
	jle	.LBB3_8
.LBB3_5:                                # %sw.epilog
	movzwl	(%r14), %ecx
	andl	$12, %ecx
	movl	$-7, %eax
	cmpl	472(%rbx), %ecx
	jg	.LBB3_11
# BB#6:                                 # %if.end.38
	leaq	368(%rbx), %r12
	movq	(%r12), %rdi
	leaq	(%rsp), %rdx
	movq	%r15, %rsi
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB3_13
# BB#7:                                 # %if.end.38.ra_crit_edge
	movq	(%rsp), %rdx
.LBB3_8:                                # %ra
	movzwl	(%rdx), %eax
	testl	72(%rbx), %eax
	jne	.LBB3_10
# BB#9:                                 # %if.then.59
	leaq	8(%rbx), %rdi
	movq	368(%rbx), %rax
	movq	8(%rax), %rsi
	movl	$.L.str, %ecx
	callq	alloc_save_change
	movq	(%rsp), %rdx
.LBB3_10:                               # %if.end.68
	movups	(%r14), %xmm0
	movups	%xmm0, (%rdx)
	movzwl	(%rdx), %eax
	orl	76(%rbx), %eax
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	jmp	.LBB3_11
.LBB3_12:                               # %sw.bb.19
	movl	$-17, %eax
.LBB3_11:                               # %cleanup.74
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB3_13:                               # %if.then.45
	movq	(%r12), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	dict_put
	jmp	.LBB3_11
.Lfunc_end3:
	.size	zop_def, .Lfunc_end3-zop_def
	.cfi_endproc

	.globl	zdef
	.align	16, 0x90
	.type	zdef,@function
zdef:                                   # @zdef
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	zop_def
	testl	%eax, %eax
	js	.LBB4_2
# BB#1:                                 # %if.then
	addq	$-32, 624(%rbx)
.LBB4_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end4:
	.size	zdef, .Lfunc_end4-zdef
	.cfi_endproc

	.globl	zwhere
	.align	16, 0x90
	.type	zwhere,@function
zwhere:                                 # @zwhere
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
	movq	%rdi, %r14
	movq	624(%r14), %r13
	movl	$-17, %eax
	cmpq	632(%r14), %r13
	jb	.LBB5_14
# BB#1:                                 # %if.end
	leaq	368(%r14), %rsi
	leaq	16(%rsp), %r15
	movq	%r15, %rdi
	callq	ref_stack_enum_begin
	leaq	8(%rsp), %r12
.LBB5_2:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movq	24(%rsp), %rbp
	movl	32(%rsp), %eax
	shlq	$4, %rax
	leaq	(%rax,%rbp), %rbx
	.align	16, 0x90
.LBB5_3:                                # %while.cond
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rbp, %rbx
	jbe	.LBB5_11
# BB#4:                                 # %do.body.7
                                        #   in Loop: Header=BB5_3 Depth=2
	movq	-8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB5_14
# BB#5:                                 # %do.end
                                        #   in Loop: Header=BB5_3 Depth=2
	addq	$-16, %rbx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	dict_find
	testl	%eax, %eax
	jns	.LBB5_7
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB5_3 Depth=2
	cmpl	$-2, %eax
	jne	.LBB5_14
.LBB5_7:                                # %if.end.15
                                        #   in Loop: Header=BB5_3 Depth=2
	testl	%eax, %eax
	jle	.LBB5_3
	jmp	.LBB5_8
.LBB5_11:                               # %do.cond.42
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%r15, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB5_2
# BB#12:                                # %do.end.45
	movw	$0, 8(%r13)
	movw	$256, (%r13)            # imm = 0x100
	jmp	.LBB5_13
.LBB5_8:                                # %do.body.19
	leaq	16(%r13), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB5_10
# BB#9:                                 # %if.then.25
	movl	$1, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB5_14
.LBB5_10:                               # %if.else
	movq	%rax, 624(%r14)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r13)
	movw	$1, 24(%r13)
	movw	$256, 16(%r13)          # imm = 0x100
.LBB5_13:                               # %cleanup.50
	xorl	%eax, %eax
.LBB5_14:                               # %cleanup.50
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	zwhere, .Lfunc_end5-zwhere
	.cfi_endproc

	.globl	zcopy_dict
	.align	16, 0x90
	.type	zcopy_dict,@function
zcopy_dict:                             # @zcopy_dict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -48
.Ltmp41:
	.cfi_offset %r12, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	leaq	-16(%rbx), %r14
	movzbl	-15(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB6_11
# BB#1:                                 # %do.body
	movq	-8(%rbx), %rax
	movl	$-7, %ebp
	testb	$32, (%rax)
	je	.LBB6_10
# BB#2:                                 # %do.body.7
	movq	8(%rbx), %rax
	testb	$16, (%rax)
	je	.LBB6_10
# BB#3:                                 # %do.end.19
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	cmpl	$0, 128(%rax)
	jne	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	%rbx, %rdi
	callq	dict_length
	movl	$-15, %ebp
	testl	%eax, %eax
	jne	.LBB6_10
# BB#5:                                 # %lor.lhs.false
	movq	%rbx, %rdi
	callq	dict_maxlength
	movl	%eax, %r12d
	movq	%r14, %rdi
	callq	dict_length
	cmpl	%eax, %r12d
	jb	.LBB6_10
.LBB6_6:                                # %if.end.29
	leaq	368(%r15), %rcx
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	dict_copy_entries
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_10
# BB#7:                                 # %if.end.34
	cmpl	$1, 80(%r15)
	jg	.LBB6_9
# BB#8:                                 # %if.then.37
	movq	-8(%rbx), %rax
	movq	8(%rbx), %rcx
	movzwl	(%rcx), %edx
	andl	$65519, %edx            # imm = 0xFFEF
	movzwl	(%rax), %eax
	andl	$16, %eax
	orl	%edx, %eax
	movw	%ax, (%rcx)
.LBB6_9:                                # %if.end.58
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r14)
	addq	$-16, 624(%r15)
	xorl	%ebp, %ebp
.LBB6_10:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_11:                               # %if.then
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.Lfunc_end6:
	.size	zcopy_dict, .Lfunc_end6-zcopy_dict
	.cfi_endproc

	.align	16, 0x90
	.type	zcleardictstack,@function
zcleardictstack:                        # @zcleardictstack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 32
.Ltmp48:
	.cfi_offset %rbx, -24
.Ltmp49:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	368(%rbx), %rax
	movq	376(%rbx), %rcx
	leaq	16(%rax), %rdx
	subq	%rcx, %rdx
	sarq	$4, %rdx
	movl	412(%rbx), %esi
	addq	%rdx, %rsi
	movl	464(%rbx), %edx
	cmpq	%rdx, %rsi
	je	.LBB7_5
# BB#1:
	leaq	368(%rbx), %r14
	.align	16, 0x90
.LBB7_2:                                # %while.cond.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	cmpq	%rcx, %rax
	jne	.LBB7_4
	.align	16, 0x90
.LBB7_3:                                # %while.body.i
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	callq	ref_stack_pop_block
	movq	368(%rbx), %rax
	cmpq	376(%rbx), %rax
	je	.LBB7_3
.LBB7_4:                                # %zend.exit.thread
                                        #   in Loop: Header=BB7_2 Depth=1
	addq	$-16, %rax
	movq	%rax, 368(%rbx)
	movq	%r14, %rdi
	callq	dstack_set_top
	movq	368(%rbx), %rax
	movq	376(%rbx), %rcx
	leaq	16(%rax), %rdx
	subq	%rcx, %rdx
	sarq	$4, %rdx
	movl	412(%rbx), %esi
	addq	%rdx, %rsi
	movl	464(%rbx), %edx
	cmpq	%rdx, %rsi
	jne	.LBB7_2
.LBB7_5:                                # %while.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	zcleardictstack, .Lfunc_end7-zcleardictstack
	.cfi_endproc

	.align	16, 0x90
	.type	zcountdictstack,@function
zcountdictstack:                        # @zcountdictstack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -24
.Ltmp54:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	368(%rbx), %rdi
	callq	ref_stack_count
	leaq	16(%r14), %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	%rcx, 624(%rbx)
	cmpl	$2, 80(%rbx)
	setl	%cl
	movzbl	%cl, %ecx
	subl	%ecx, %eax
	movq	%rax, 24(%r14)
	movw	$2816, 16(%r14)         # imm = 0xB00
	xorl	%eax, %eax
.LBB8_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	zcountdictstack, .Lfunc_end8-zcountdictstack
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentdict,@function
zcurrentdict:                           # @zcurrentdict
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	addq	$16, %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB9_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB9_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	368(%rdi), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	zcurrentdict, .Lfunc_end9-zcurrentdict
	.cfi_endproc

	.align	16, 0x90
	.type	zdictstack,@function
zdictstack:                             # @zdictstack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 48
.Ltmp59:
	.cfi_offset %rbx, -32
.Ltmp60:
	.cfi_offset %r14, -24
.Ltmp61:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	leaq	368(%rbx), %r14
	movq	%r14, %rdi
	callq	ref_stack_count
	cmpl	$2, 80(%rbx)
	setl	%cl
	movzwl	(%r15), %edx
	movl	%edx, %esi
	andl	$15360, %esi            # imm = 0x3C00
	cmpl	$1024, %esi             # imm = 0x400
	jne	.LBB10_6
# BB#1:                                 # %if.end.6
	movzbl	%cl, %ecx
	subl	%ecx, %eax
	movl	$-15, %ecx
	cmpl	%eax, 4(%r15)
	jb	.LBB10_4
# BB#2:                                 # %if.end.11
	andl	$16144, %edx            # imm = 0x3F10
	movl	$-7, %ecx
	cmpl	$1040, %edx             # imm = 0x410
	jne	.LBB10_4
# BB#3:                                 # %if.end.19
	addq	$8, %rbx
	movq	%rbx, (%rsp)
	movq	$.L.str.23, 8(%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	ref_stack_store
	jmp	.LBB10_5
.LBB10_6:                               # %if.then.4
	movq	%r15, %rdi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB10_4:                               # %cleanup
	movl	%ecx, %eax
.LBB10_5:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	zdictstack, .Lfunc_end10-zdictstack
	.cfi_endproc

	.align	16, 0x90
	.type	zknown,@function
zknown:                                 # @zknown
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 32
.Ltmp65:
	.cfi_offset %rbx, -24
.Ltmp66:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rdi
	movzbl	-15(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB11_1
# BB#2:                                 # %do.body
	movq	-8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB11_7
# BB#3:                                 # %do.end
	leaq	(%rsp), %rdx
	movq	%rbx, %rsi
	callq	dict_find
	cmpl	$2, %eax
	jb	.LBB11_6
# BB#4:                                 # %do.end
	cmpl	$-2, %eax
	jne	.LBB11_7
# BB#5:                                 # %sw.bb
	xorl	%eax, %eax
.LBB11_6:                               # %sw.epilog
	movw	%ax, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB11_7
.LBB11_1:                               # %if.then
	callq	check_type_failed
.LBB11_7:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	zknown, .Lfunc_end11-zknown
	.cfi_endproc

	.align	16, 0x90
	.type	zload,@function
zload:                                  # @zload
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 64
.Ltmp73:
	.cfi_offset %rbx, -48
.Ltmp74:
	.cfi_offset %r12, -40
.Ltmp75:
	.cfi_offset %r13, -32
.Ltmp76:
	.cfi_offset %r14, -24
.Ltmp77:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	624(%r15), %r14
	movzbl	1(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB12_5
# BB#1:                                 # %entry
	movl	$-20, %eax
	cmpl	$14, %ecx
	je	.LBB12_15
# BB#2:                                 # %entry
	cmpl	$13, %ecx
	jne	.LBB12_6
# BB#3:                                 # %sw.bb
	movq	8(%r15), %rax
	addq	$368, %r15              # imm = 0x170
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r14, %rsi
	callq	names_index
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	dstack_find_name_by_index
	movq	%rax, %rcx
	movq	%rcx, 8(%rsp)
	movl	$-21, %eax
	testq	%rcx, %rcx
	je	.LBB12_15
# BB#4:                                 # %if.end
	movups	(%rcx), %xmm0
	jmp	.LBB12_14
.LBB12_5:                               # %sw.bb.4
	movl	$-17, %eax
	jmp	.LBB12_15
.LBB12_6:                               # %sw.default
	addq	$368, %r15              # imm = 0x170
	movq	%r15, %rdi
	callq	ref_stack_count
	testl	%eax, %eax
	je	.LBB12_7
# BB#10:                                # %for.body.lr.ph
	movl	%eax, %r13d
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r12
	.align	16, 0x90
.LBB12_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movq	%rax, %rcx
	movq	8(%rcx), %rdx
	movl	$-7, %eax
	testb	$32, (%rdx)
	je	.LBB12_15
# BB#12:                                # %do.end
                                        #   in Loop: Header=BB12_11 Depth=1
	movq	%rcx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	dict_find
	testl	%eax, %eax
	jg	.LBB12_13
# BB#8:                                 # %for.cond
                                        #   in Loop: Header=BB12_11 Depth=1
	incq	%rbx
	cmpq	%r13, %rbx
	jb	.LBB12_11
# BB#9:
	movl	$-21, %eax
	jmp	.LBB12_15
.LBB12_7:
	movl	$-21, %eax
	jmp	.LBB12_15
.LBB12_13:                              # %if.then.22
	movq	8(%rsp), %rax
	movups	(%rax), %xmm0
.LBB12_14:                              # %cleanup.26
	movups	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB12_15:                              # %cleanup.26
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	zload, .Lfunc_end12-zload
	.cfi_endproc

	.align	16, 0x90
	.type	zmaxlength,@function
zmaxlength:                             # @zmaxlength
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB13_4
# BB#1:                                 # %do.body
	movq	8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB13_3
# BB#2:                                 # %do.end
	movq	%rbx, %rdi
	callq	dict_maxlength
	movl	%eax, %eax
	movq	%rax, 8(%rbx)
	movw	$2816, (%rbx)           # imm = 0xB00
	xorl	%eax, %eax
.LBB13_3:                               # %cleanup
	popq	%rbx
	retq
.LBB13_4:                               # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end13:
	.size	zmaxlength, .Lfunc_end13-zmaxlength
	.cfi_endproc

	.align	16, 0x90
	.type	zundef,@function
zundef:                                 # @zundef
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	leaq	-16(%rsi), %rdi
	movzbl	-15(%rsi), %eax
	cmpl	$2, %eax
	jne	.LBB14_7
# BB#1:                                 # %if.end
	cmpl	$0, 148(%rbx)
	jne	.LBB14_3
# BB#2:                                 # %do.body
	movq	-8(%rsi), %rcx
	movl	$-7, %eax
	testb	$16, (%rcx)
	je	.LBB14_6
.LBB14_3:                               # %if.end.10
	leaq	368(%rbx), %rdx
	callq	dict_undef
	testl	%eax, %eax
	jns	.LBB14_5
# BB#4:                                 # %if.end.10
	cmpl	$-21, %eax
	jne	.LBB14_6
.LBB14_5:                               # %if.end.17
	addq	$-32, 624(%rbx)
	xorl	%eax, %eax
.LBB14_6:                               # %cleanup
	popq	%rbx
	retq
.LBB14_7:                               # %if.then
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end14:
	.size	zundef, .Lfunc_end14-zundef
	.cfi_endproc

	.align	16, 0x90
	.type	zdicttomark,@function
zdicttomark:                            # @zdicttomark
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp85:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp86:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp88:
	.cfi_def_cfa_offset 80
.Ltmp89:
	.cfi_offset %rbx, -56
.Ltmp90:
	.cfi_offset %r12, -48
.Ltmp91:
	.cfi_offset %r13, -40
.Ltmp92:
	.cfi_offset %r14, -32
.Ltmp93:
	.cfi_offset %r15, -24
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	leaq	624(%r14), %r12
	movq	%r12, %rdi
	callq	ref_stack_counttomark
	movl	%eax, %ebp
	movl	$-24, %ebx
	testl	%ebp, %ebp
	je	.LBB15_12
# BB#1:                                 # %if.end
	leal	-1(%rbp), %r15d
	movl	$-15, %ebx
	testb	$1, %r15b
	jne	.LBB15_12
# BB#2:                                 # %if.end.3
	movq	8(%r14), %rdi
	movl	%r15d, %esi
	shrl	%esi
	leaq	8(%rsp), %rdx
	callq	dict_alloc
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB15_12
# BB#3:                                 # %if.end.7
	testb	$16, 184(%r14)
	jne	.LBB15_4
# BB#7:                                 # %for.cond.26.preheader
	testl	%r15d, %r15d
	je	.LBB15_11
# BB#8:                                 # %for.body.29.lr.ph
	addq	$368, %r14              # imm = 0x170
	xorl	%ebp, %ebp
	leaq	8(%rsp), %r13
	.align	16, 0x90
.LBB15_10:                              # %for.body.29
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rbp), %esi
	movq	%r12, %rdi
	callq	ref_stack_index
	movq	%rax, %rbx
	movl	%ebp, %esi
	movq	%r12, %rdi
	callq	ref_stack_index
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	dict_put
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB15_12
# BB#9:                                 # %for.cond.26
                                        #   in Loop: Header=BB15_10 Depth=1
	addl	$2, %ebp
	cmpl	%r15d, %ebp
	jb	.LBB15_10
	jmp	.LBB15_11
.LBB15_4:                               # %for.cond.preheader
	addq	$368, %r14              # imm = 0x170
	addl	$-3, %ebp
	leaq	8(%rsp), %r13
	.align	16, 0x90
.LBB15_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-2, %ebp
	je	.LBB15_11
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB15_5 Depth=1
	leal	1(%rbp), %esi
	movq	%r12, %rdi
	callq	ref_stack_index
	movq	%rax, %rbx
	movl	%ebp, %esi
	movq	%r12, %rdi
	callq	ref_stack_index
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	dict_put
	movl	%eax, %ebx
	addl	$-2, %ebp
	testl	%ebx, %ebx
	jns	.LBB15_5
	jmp	.LBB15_12
.LBB15_11:                              # %if.end.47
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	ref_stack_pop
	movq	(%r12), %rax
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%rax)
.LBB15_12:                              # %cleanup
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	zdicttomark, .Lfunc_end15-zdicttomark
	.cfi_endproc

	.align	16, 0x90
	.type	zforcecopynew,@function
zforcecopynew:                          # @zforcecopynew
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 32
.Ltmp98:
	.cfi_offset %rbx, -32
.Ltmp99:
	.cfi_offset %r14, -24
.Ltmp100:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %r15
	movzbl	-15(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB16_1
# BB#3:                                 # %do.body
	movq	-8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB16_9
# BB#4:                                 # %do.end
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB16_5
# BB#6:                                 # %if.end.15
	movq	8(%r14), %rax
	movq	192(%rax), %rcx
	movl	$-21, %eax
	cmpl	$0, 128(%rcx)
	je	.LBB16_9
# BB#7:                                 # %if.end.18
	leaq	368(%r14), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	dict_copy_entries
	testl	%eax, %eax
	js	.LBB16_9
# BB#8:                                 # %if.end.23
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB16_9:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB16_1:                               # %if.then
	movq	%r15, %rdi
	jmp	.LBB16_2
.LBB16_5:                               # %if.then.13
	movq	%rbx, %rdi
.LBB16_2:                               # %if.then
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end16:
	.size	zforcecopynew, .Lfunc_end16-zforcecopynew
	.cfi_endproc

	.align	16, 0x90
	.type	zforceundef,@function
zforceundef:                            # @zforceundef
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	leaq	-16(%rsi), %rdi
	movzbl	-15(%rsi), %eax
	cmpl	$2, %eax
	jne	.LBB17_2
# BB#1:                                 # %cleanup
	leaq	368(%rbx), %rdx
	callq	dict_undef
	addq	$-32, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB17_2:                               # %if.then
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end17:
	.size	zforceundef, .Lfunc_end17-zforceundef
	.cfi_endproc

	.align	16, 0x90
	.type	zknownget,@function
zknownget:                              # @zknownget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 48
.Ltmp107:
	.cfi_offset %rbx, -32
.Ltmp108:
	.cfi_offset %r14, -24
.Ltmp109:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	leaq	-16(%rbx), %r14
	movzbl	-15(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB18_1
# BB#2:                                 # %do.body
	movq	-8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB18_7
# BB#3:                                 # %do.end
	leaq	8(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB18_4
# BB#5:                                 # %if.else
	movq	8(%rsp), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%r14)
	movw	$1, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
	jmp	.LBB18_6
.LBB18_1:                               # %if.then
	movq	%r14, %rdi
	callq	check_type_failed
	jmp	.LBB18_7
.LBB18_4:                               # %if.then.10
	movw	$0, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, 624(%r15)
.LBB18_6:                               # %cleanup
	xorl	%eax, %eax
.LBB18_7:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	zknownget, .Lfunc_end18-zknownget
	.cfi_endproc

	.align	16, 0x90
	.type	zknownundef,@function
zknownundef:                            # @zknownundef
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp112:
	.cfi_def_cfa_offset 32
.Ltmp113:
	.cfi_offset %rbx, -24
.Ltmp114:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rdi
	movzbl	-15(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB19_4
# BB#1:                                 # %do.body
	movq	-8(%rbx), %rcx
	movl	$-7, %eax
	testb	$16, (%rcx)
	je	.LBB19_3
# BB#2:                                 # %do.end
	leaq	368(%r14), %rdx
	movq	%rbx, %rsi
	callq	dict_undef
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movw	%ax, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB19_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB19_4:                               # %if.then
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.Lfunc_end19:
	.size	zknownundef, .Lfunc_end19-zknownundef
	.cfi_endproc

	.align	16, 0x90
	.type	zsetmaxlength,@function
zsetmaxlength:                          # @zsetmaxlength
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 32
.Ltmp118:
	.cfi_offset %rbx, -32
.Ltmp119:
	.cfi_offset %r14, -24
.Ltmp120:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	-16(%rdi), %r14
	movzbl	-15(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB20_1
# BB#3:                                 # %if.end
	cmpl	$0, 148(%rbx)
	jne	.LBB20_5
# BB#4:                                 # %do.body
	movq	-8(%rdi), %rcx
	movl	$-7, %eax
	testb	$16, (%rcx)
	je	.LBB20_10
.LBB20_5:                               # %if.end.10
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB20_2
# BB#6:                                 # %if.end.19
	movq	8(%rdi), %r15
	movl	$-15, %eax
	testq	%r15, %r15
	js	.LBB20_10
# BB#7:                                 # %if.end.24
	movq	%r14, %rdi
	callq	dict_length
	movl	%eax, %ecx
	movl	$-2, %eax
	cmpl	%r15d, %ecx
	ja	.LBB20_10
# BB#8:                                 # %if.end.33
	leaq	368(%rbx), %rdx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	dict_resize
	testl	%eax, %eax
	js	.LBB20_10
# BB#9:                                 # %if.then.38
	addq	$-32, 624(%rbx)
.LBB20_10:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB20_1:                               # %if.then
	movq	%r14, %rdi
.LBB20_2:                               # %if.then.17
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end20:
	.size	zsetmaxlength, .Lfunc_end20-zsetmaxlength
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dict_put(value)"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0cleardictstack"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1begin"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0countdictstack"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0currentdict"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2def"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1dict"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"0dictstack"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0end"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"2known"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1load"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1maxlength"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"2.undef"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1where"
	.size	.L.str.13, 7

	.type	zdict1_op_defs,@object  # @zdict1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zdict1_op_defs
	.align	16
zdict1_op_defs:
	.quad	.L.str.1
	.quad	zcleardictstack
	.quad	.L.str.2
	.quad	zbegin
	.quad	.L.str.3
	.quad	zcountdictstack
	.quad	.L.str.4
	.quad	zcurrentdict
	.quad	.L.str.5
	.quad	zdef
	.quad	.L.str.6
	.quad	zdict
	.quad	.L.str.7
	.quad	zdictstack
	.quad	.L.str.8
	.quad	zend
	.quad	.L.str.9
	.quad	zknown
	.quad	.L.str.10
	.quad	zload
	.quad	.L.str.11
	.quad	zmaxlength
	.quad	.L.str.12
	.quad	zundef
	.quad	.L.str.13
	.quad	zwhere
	.zero	16
	.size	zdict1_op_defs, 224

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"1.dicttomark"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"2.forcecopynew"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"2.forceundef"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"2.knownget"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"1.knownundef"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"2.setmaxlength"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"level2dict"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"1>>"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"2undef"
	.size	.L.str.22, 7

	.type	zdict2_op_defs,@object  # @zdict2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zdict2_op_defs
	.align	16
zdict2_op_defs:
	.quad	.L.str.14
	.quad	zdicttomark
	.quad	.L.str.15
	.quad	zforcecopynew
	.quad	.L.str.16
	.quad	zforceundef
	.quad	.L.str.17
	.quad	zknownget
	.quad	.L.str.18
	.quad	zknownundef
	.quad	.L.str.19
	.quad	zsetmaxlength
	.quad	.L.str.20
	.quad	0
	.quad	.L.str.21
	.quad	zdicttomark
	.quad	.L.str.22
	.quad	zundef
	.zero	16
	.size	zdict2_op_defs, 160

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"dictstack"
	.size	.L.str.23, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
