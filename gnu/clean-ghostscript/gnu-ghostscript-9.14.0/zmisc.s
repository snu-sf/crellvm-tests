	.text
	.file	"zmisc.bc"
	.align	16, 0x90
	.type	zbind,@function
zbind:                                  # @zbind
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
	subq	$72, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 128
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
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	leal	-5(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB0_4
# BB#1:                                 # %entry
	cmpl	$20, %eax
	jne	.LBB0_2
# BB#7:                                 # %sw.bb.5
	movq	8(%rbx), %rax
	movups	(%rax), %xmm0
	jmp	.LBB0_5
.LBB0_2:                                # %entry
	cmpl	$4, %eax
	jne	.LBB0_8
# BB#3:                                 # %sw.bb
	xorl	%r15d, %r15d
	testb	$16, (%rbx)
	je	.LBB0_50
.LBB0_4:                                # %sw.bb.4
	movups	(%rbx), %xmm0
.LBB0_5:                                # %do.body
	movaps	%xmm0, 48(%rsp)
	movq	%rdi, %r15
	addq	$16, %rbx
	cmpq	640(%r15), %rbx
	jbe	.LBB0_9
# BB#6:                                 # %if.then.9
	movl	$1, 688(%r15)
	movl	$-16, %r15d
	jmp	.LBB0_50
.LBB0_9:                                # %if.else
	leaq	624(%r15), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rbx, 624(%r15)
	movaps	48(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	leaq	8(%r15), %r12
	leaq	368(%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$1, %eax
	.align	16, 0x90
.LBB0_10:                               # %while.cond.17.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	4(%rbx), %eax
	testl	%eax, %eax
	je	.LBB0_25
# BB#11:                                #   in Loop: Header=BB0_10 Depth=1
	leaq	4(%rbx), %rcx
	jmp	.LBB0_12
.LBB0_39:                               #   in Loop: Header=BB0_12 Depth=2
	movq	%rdx, %r15
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_12:                               # %while.body.20
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rbx), %r14
	decl	%eax
	movl	%eax, (%rcx)
	movzwl	(%r14), %esi
	cmpl	$16384, %esi            # imm = 0x4000
	jb	.LBB0_30
# BB#13:                                # %if.then.27
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpl	$57344, %esi            # imm = 0xE000
	jb	.LBB0_23
# BB#14:                                # %if.then.31
                                        #   in Loop: Header=BB0_12 Depth=2
	movq	(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	andl	$4095, %esi             # imm = 0xFFF
	leaq	32(%rsp), %rbp
	movq	%rbp, %rdx
	callq	names_index_ref
	movq	(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%rbp, %rsi
	callq	names_index
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	%eax, %esi
	callq	dstack_find_name_by_index
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB0_23
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_12 Depth=2
	movzwl	(%r13), %eax
	testb	$-128, %al
	je	.LBB0_23
# BB#16:                                # %land.rhs.i
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpl	$5375, %eax             # imm = 0x14FF
	ja	.LBB0_19
# BB#17:                                # %cond.false.i
                                        #   in Loop: Header=BB0_12 Depth=2
	movzbl	1(%r13), %ecx
	cmpl	$20, %ecx
	je	.LBB0_19
# BB#18:                                # %cond.false.i
                                        #   in Loop: Header=BB0_12 Depth=2
	movzbl	%cl, %ecx
	cmpl	$15, %ecx
	jne	.LBB0_23
.LBB0_19:                               # %if.then.44
                                        #   in Loop: Header=BB0_12 Depth=2
	andl	$12, %eax
	movzwl	(%rbx), %ecx
	andl	$12, %ecx
	cmpl	%ecx, %eax
	ja	.LBB0_29
# BB#20:                                # %if.end.56
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	$.L.str.14, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	alloc_save_change
	movl	4(%r13), %eax
	testl	%eax, %eax
	jne	.LBB0_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB0_12 Depth=2
	movq	%r13, %rdi
	callq	op_find_index
	movzwl	%ax, %eax
.LBB0_22:                               # %cond.end
                                        #   in Loop: Header=BB0_12 Depth=2
	addl	$16384, %eax            # imm = 0x4000
	movw	%ax, (%r14)
	.align	16, 0x90
.LBB0_23:                               # %cleanup.74.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	addq	$2, %r14
	movq	%r14, 8(%rbx)
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_30:                               # %if.else.77
                                        #   in Loop: Header=BB0_12 Depth=2
	leaq	16(%r14), %rax
	movq	%rax, 8(%rbx)
	movzbl	1(%r14), %eax
	leal	-5(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB0_45
# BB#31:                                # %if.else.77
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpl	$4, %eax
	jne	.LBB0_32
# BB#44:                                # %sw.bb.139
                                        #   in Loop: Header=BB0_12 Depth=2
	testb	$16, (%r14)
	je	.LBB0_24
	.align	16, 0x90
.LBB0_45:                               # %sw.bb.147
                                        #   in Loop: Header=BB0_12 Depth=2
	movzwl	(%r14), %eax
	testb	$-128, %al
	je	.LBB0_24
# BB#46:                                # %if.then.153
                                        #   in Loop: Header=BB0_12 Depth=2
	andl	$65519, %eax            # imm = 0xFFEF
	movw	%ax, (%r14)
	cmpq	640(%r15), %rbx
	jae	.LBB0_47
# BB#51:                                # %if.else.184
                                        #   in Loop: Header=BB0_12 Depth=2
	movups	(%r14), %xmm0
	movups	%xmm0, 16(%rbx)
	addq	$16, %rbx
	incl	28(%rsp)                # 4-byte Folded Spill
	jmp	.LBB0_24
.LBB0_32:                               # %if.else.77
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpl	$13, %eax
	jne	.LBB0_24
# BB#33:                                # %sw.bb.83
                                        #   in Loop: Header=BB0_12 Depth=2
	testb	$-128, (%r14)
	je	.LBB0_24
# BB#34:                                # %if.then.89
                                        #   in Loop: Header=BB0_12 Depth=2
	movq	(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r14, %rsi
	callq	names_index
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	%eax, %esi
	callq	dstack_find_name_by_index
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB0_24
# BB#35:                                # %land.lhs.true.100
                                        #   in Loop: Header=BB0_12 Depth=2
	movzwl	(%r13), %eax
	testb	$-128, %al
	je	.LBB0_24
# BB#36:                                # %land.rhs.i.97
                                        #   in Loop: Header=BB0_12 Depth=2
	movq	%r15, %rdx
	cmpl	$5375, %eax             # imm = 0x14FF
	ja	.LBB0_40
# BB#37:                                # %cond.false.i.102
                                        #   in Loop: Header=BB0_12 Depth=2
	movzbl	1(%r13), %ecx
	cmpl	$20, %ecx
	je	.LBB0_40
# BB#38:                                # %cond.false.i.102
                                        #   in Loop: Header=BB0_12 Depth=2
	movzbl	%cl, %ecx
	cmpl	$15, %ecx
	jne	.LBB0_39
.LBB0_40:                               # %if.then.103
                                        #   in Loop: Header=BB0_12 Depth=2
	andl	$12, %eax
	movzwl	(%rbx), %ecx
	andl	$12, %ecx
	movl	$-7, %r15d
	cmpl	%ecx, %eax
	ja	.LBB0_50
# BB#41:                                # %if.end.115
                                        #   in Loop: Header=BB0_12 Depth=2
	movzwl	(%r14), %eax
	movq	%rdx, %r15
	testl	72(%r15), %eax
	jne	.LBB0_43
# BB#42:                                # %cond.true.123
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	$.L.str.14, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	alloc_save_change
.LBB0_43:                               # %cond.end.127
                                        #   in Loop: Header=BB0_12 Depth=2
	movups	(%r13), %xmm0
	movups	%xmm0, (%r14)
	movzwl	(%r14), %eax
	orl	76(%r15), %eax
	movw	%ax, (%r14)
	jmp	.LBB0_24
.LBB0_47:                               # %if.then.164
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	28(%rsp), %r13d         # 4-byte Reload
	movq	%r15, %rbp
	movups	(%r14), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rbx, (%rax)
	movq	%rax, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_push
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_49
# BB#48:                                # %cleanup.180.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	movq	(%rbx), %rbx
	movaps	32(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	incl	%r13d
	movl	%r13d, 28(%rsp)         # 4-byte Spill
	movq	%rbp, %r15
	.align	16, 0x90
.LBB0_24:                               # %while.cond.17.backedge
                                        #   in Loop: Header=BB0_12 Depth=2
	leaq	4(%rbx), %rcx
	movl	4(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB0_12
.LBB0_25:                               # %while.end
                                        #   in Loop: Header=BB0_10 Depth=1
	addq	$-16, %rbx
	movl	28(%rsp), %eax          # 4-byte Reload
	decl	%eax
	cmpq	632(%r15), %rbx
	jae	.LBB0_27
# BB#26:                                # %if.then.201
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	%eax, %r14d
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbx, (%rbp)
	movq	%rbp, %rdi
	callq	ref_stack_pop_block
	movq	(%rbp), %rbx
	movl	%r14d, %eax
.LBB0_27:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_10 Depth=1
	testl	%eax, %eax
	jne	.LBB0_10
# BB#28:                                # %while.end.212
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rbx, (%rax)
	xorl	%r15d, %r15d
	jmp	.LBB0_50
.LBB0_49:                               # %cleanup.180
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	ref_stack_pop
	jmp	.LBB0_50
.LBB0_8:                                # %sw.default
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %r15d
	jmp	.LBB0_50
.LBB0_29:                               # %cleanup.74
	movl	$-7, %r15d
.LBB0_50:                               # %cleanup.216
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zbind, .Lfunc_end0-zbind
	.cfi_endproc

	.align	16, 0x90
	.type	zgetenv,@function
zgetenv:                                # @zgetenv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r12, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %r12
	movl	$0, 4(%rsp)
	movzwl	(%r12), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB1_1
# BB#3:                                 # %if.end
	movq	8(%r14), %rsi
	movl	$.L.str.15, %edx
	movq	%r12, %rdi
	callq	ref_to_string
	movq	%rax, %r15
	movl	$-25, %ebx
	testq	%r15, %r15
	je	.LBB1_11
# BB#4:                                 # %if.end.11
	xorl	%ebx, %ebx
	leaq	4(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gp_getenv
	movq	8(%r14), %rdi
	testl	%eax, %eax
	jle	.LBB1_6
# BB#5:                                 # %if.then.15
	movl	4(%r12), %edx
	incl	%edx
	movl	$.L.str.15, %ecx
	movq	%r15, %rsi
	callq	*160(%rdi)
	movw	$0, 8(%r12)
	movw	$256, (%r12)            # imm = 0x100
	jmp	.LBB1_11
.LBB1_1:                                # %if.then
	movzbl	1(%r12), %eax
	movl	$-7, %ebx
	cmpl	$18, %eax
	je	.LBB1_11
# BB#2:                                 # %cond.true
	movq	%r12, %rdi
	callq	check_type_failed
	movl	%eax, %ebx
.LBB1_11:                               # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB1_6:                                # %if.end.24
	movl	4(%rsp), %esi
	movl	$.L.str.16, %edx
	callq	*136(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB1_7
# BB#8:                                 # %if.end.43
	leaq	4(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gp_getenv
	movq	8(%r14), %rdi
	movl	4(%r12), %edx
	incl	%edx
	movl	$.L.str.15, %ecx
	movq	%r15, %rsi
	callq	*160(%rdi)
	movq	8(%r14), %rdi
	movl	4(%rsp), %edx
	leal	-1(%rdx), %ecx
	movl	$.L.str.16, %r8d
	movq	%rbx, %rsi
	callq	*152(%rdi)
	leaq	16(%r12), %rcx
	cmpq	640(%r14), %rcx
	jbe	.LBB1_10
# BB#9:                                 # %if.then.64
	movl	$1, 688(%r14)
	movl	$-16, %ebx
	jmp	.LBB1_11
.LBB1_7:                                # %if.then.33
	movq	8(%r14), %rdi
	movl	4(%r12), %edx
	incl	%edx
	movl	$.L.str.15, %ecx
	movq	%r15, %rsi
	callq	*160(%rdi)
	movl	$-25, %ebx
	jmp	.LBB1_11
.LBB1_10:                               # %if.else
	movq	%rcx, 624(%r14)
	movq	%rax, 8(%r12)
	movl	56(%r14), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, (%r12)
	movl	4(%rsp), %eax
	decl	%eax
	movl	%eax, 4(%r12)
	movw	$1, 24(%r12)
	movw	$256, 16(%r12)          # imm = 0x100
	xorl	%ebx, %ebx
	jmp	.LBB1_11
.Lfunc_end1:
	.size	zgetenv, .Lfunc_end1-zgetenv
	.cfi_endproc

	.align	16, 0x90
	.type	zdefaultpapersize,@function
zdefaultpapersize:                      # @zdefaultpapersize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movl	$0, 12(%rsp)
	leaq	12(%rsp), %rsi
	xorl	%edi, %edi
	callq	gp_defaultpapersize
	testl	%eax, %eax
	jle	.LBB2_4
# BB#1:                                 # %do.body
	leaq	16(%r15), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB2_3
# BB#2:                                 # %if.then.4
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB2_9
.LBB2_4:                                # %if.end.11
	movq	8(%rbx), %rdi
	movl	12(%rsp), %esi
	movl	$.L.str.17, %edx
	callq	*136(%rdi)
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB2_9
# BB#5:                                 # %if.end.17
	leaq	12(%rsp), %rsi
	movq	%r14, %rdi
	callq	gp_defaultpapersize
	movq	8(%rbx), %rdi
	movl	12(%rsp), %edx
	leal	-1(%rdx), %ecx
	movl	$.L.str.17, %r8d
	movq	%r14, %rsi
	callq	*152(%rdi)
	leaq	32(%r15), %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB2_7
# BB#6:                                 # %if.then.31
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB2_9
.LBB2_3:                                # %if.else
	movq	%rax, 624(%rbx)
	movw	$0, 24(%r15)
	movw	$256, 16(%r15)          # imm = 0x100
	jmp	.LBB2_8
.LBB2_7:                                # %if.else.35
	movq	%rcx, 624(%rbx)
	movq	%rax, 24(%r15)
	movl	56(%rbx), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, 16(%r15)
	movl	12(%rsp), %eax
	decl	%eax
	movl	%eax, 20(%r15)
	movw	$1, 40(%r15)
	movw	$256, 32(%r15)          # imm = 0x100
.LBB2_8:                                # %cleanup
	xorl	%eax, %eax
.LBB2_9:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	zdefaultpapersize, .Lfunc_end2-zdefaultpapersize
	.cfi_endproc

	.align	16, 0x90
	.type	zmakeoperator,@function
zmakeoperator:                          # @zmakeoperator
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 64
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	624(%r12), %rbx
	leaq	-16(%rbx), %r14
	movzbl	-15(%rbx), %eax
	cmpl	$13, %eax
	jne	.LBB3_14
# BB#1:                                 # %do.body
	movzwl	(%rbx), %ecx
	movl	%ecx, %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB3_15
# BB#2:                                 # %do.end
	andl	$12, %ecx
	cmpl	$12, %ecx
	jne	.LBB3_3
# BB#5:                                 # %sw.bb.16
	leaq	304(%r12), %r15
	jmp	.LBB3_6
.LBB3_14:                               # %if.then
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB3_15:                               # %if.then.9
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_proc_failed       # TAILCALL
.LBB3_3:                                # %do.end
	movl	$-7, %eax
	cmpl	$8, %ecx
	jne	.LBB3_13
# BB#4:                                 # %sw.bb
	leaq	264(%r12), %r15
.LBB3_6:                                # %sw.epilog
	movq	8(%r15), %rcx
	movl	24(%r15), %eax
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	.align	16, 0x90
.LBB3_7:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB3_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB3_7 Depth=1
	leal	(%rbp,%rdx), %eax
	andq	%rdx, %rax
	shlq	$4, %rax
	movzbl	1(%rcx,%rax), %esi
	leaq	-1(%rbp), %rax
	cmpl	$14, %esi
	je	.LBB3_7
.LBB3_9:                                # %while.end
	movl	$-13, %eax
	cmpl	4(%r15), %ebp
	je	.LBB3_13
# BB#10:                                # %if.end.32
	movq	%rbp, %rax
	andq	%rdx, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	shlq	$4, %rax
	leaq	(%rcx,%rax), %r13
	movzwl	(%rcx,%rax), %eax
	testl	72(%r12), %eax
	jne	.LBB3_12
# BB#11:                                # %cond.true
	leaq	8(%r12), %rdi
	movl	$.L.str.18, %ecx
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	alloc_save_change
.LBB3_12:                               # %cond.end
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r13)
	movzwl	(%r13), %eax
	orl	76(%r12), %eax
	movw	%ax, (%r13)
	movq	8(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r14, %rsi
	callq	names_index
	movq	16(%r15), %rcx
	movq	(%rsp), %rdx            # 8-byte Reload
	movw	%ax, (%rcx,%rdx,2)
	movq	8(%r12), %rdi
	movl	28(%r15), %esi
	addl	%ebp, %esi
	movq	%r14, %rdx
	callq	op_index_ref
	leal	1(%rbp), %eax
	movl	%eax, 24(%r15)
	addq	$-16, 624(%r12)
	xorl	%eax, %eax
.LBB3_13:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zmakeoperator, .Lfunc_end3-zmakeoperator
	.cfi_endproc

	.align	16, 0x90
	.type	zoserrno,@function
zoserrno:                               # @zoserrno
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB4_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB4_2:                                # %if.else
	movq	%rax, 624(%rdi)
	callq	__errno_location
	movslq	(%rax), %rax
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	zoserrno, .Lfunc_end4-zoserrno
	.cfi_endproc

	.align	16, 0x90
	.type	zoserrorstring,@function
zoserrorstring:                         # @zoserrorstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 32
.Ltmp47:
	.cfi_offset %rbx, -32
.Ltmp48:
	.cfi_offset %r14, -24
.Ltmp49:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB5_16
# BB#1:                                 # %if.end
	movl	8(%rbx), %edi
	callq	gp_strerror
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB5_3
# BB#2:                                 # %lor.lhs.false
	movq	%r15, %rdi
	callq	strlen
	testl	%eax, %eax
	je	.LBB5_3
# BB#4:                                 # %if.end.14
	movq	640(%r14), %rax
	subq	624(%r14), %rax
	cmpq	$15, %rax
	jle	.LBB5_5
# BB#6:                                 # %if.end.25
	movq	8(%r14), %rdx
	movl	$.L.str.19, %ecx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	string_to_ref
	testl	%eax, %eax
	js	.LBB5_15
# BB#7:                                 # %while.cond.preheader
	movl	4(%rbx), %eax
	testl	%eax, %eax
	je	.LBB5_12
# BB#8:                                 # %land.rhs.lr.ph
	decl	%eax
	movq	8(%rbx), %rcx
	addq	%rax, %rcx
	.align	16, 0x90
.LBB5_9:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %edx
	cmpl	$13, %edx
	je	.LBB5_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB5_9 Depth=1
	movzbl	%dl, %edx
	cmpl	$10, %edx
	jne	.LBB5_12
.LBB5_11:                               # %while.body
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	%eax, 4(%rbx)
	decl	%eax
	decq	%rcx
	cmpl	$-1, %eax
	jne	.LBB5_9
.LBB5_12:                               # %do.body
	leaq	16(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB5_13
.LBB5_5:                                # %if.then.22
	movl	$1, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB5_15
.LBB5_16:                               # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB5_3:                                # %if.then.10
	movw	$0, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
.LBB5_14:                               # %cleanup
	xorl	%eax, %eax
.LBB5_15:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB5_13:                               # %if.else
	movq	%rax, 624(%r14)
	movw	$1, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	jmp	.LBB5_14
.Lfunc_end5:
	.size	zoserrorstring, .Lfunc_end5-zoserrorstring
	.cfi_endproc

	.align	16, 0x90
	.type	zrealtime,@function
zrealtime:                              # @zrealtime
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp53:
	.cfi_def_cfa_offset 48
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
.Ltmp56:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movq	8(%rbx), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	%rax, %r14
	leaq	(%rsp), %rdi
	callq	gp_get_realtime
	movq	8(%rsp), %rax
	subq	160(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	(%rsp), %rcx
	subq	152(%r14), %rcx
	movq	%rcx, (%rsp)
	leaq	16(%r15), %rdx
	cmpq	640(%rbx), %rdx
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	%rdx, 624(%rbx)
	imulq	$1000, %rcx, %rcx       # imm = 0x3E8
	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%r15)
	movw	$2816, 16(%r15)         # imm = 0xB00
	xorl	%eax, %eax
.LBB6_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	zrealtime, .Lfunc_end6-zrealtime
	.cfi_endproc

	.align	16, 0x90
	.type	zserialnumber,@function
zserialnumber:                          # @zserialnumber
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB7_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB7_2:                                # %if.else
	movq	%rax, 624(%rdi)
	callq	gp_serialnumber
	cltq
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end7:
	.size	zserialnumber, .Lfunc_end7-zserialnumber
	.cfi_endproc

	.align	16, 0x90
	.type	zsetdebug,@function
zsetdebug:                              # @zsetdebug
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	624(%rax), %rdi
	movzwl	-16(%rdi), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$4640, %ecx             # imm = 0x1220
	jne	.LBB8_1
# BB#3:                                 # %if.end
	movzbl	1(%rdi), %ecx
	cmpl	$1, %ecx
	jne	.LBB8_10
# BB#4:                                 # %for.cond.preheader
	cmpl	$0, -12(%rdi)
	je	.LBB8_8
# BB#5:                                 # %for.body.lr.ph
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB8_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	8(%rdi), %dl
	movq	-8(%rdi), %rsi
	movzbl	(%rsi,%rcx), %esi
	andl	$127, %esi
	movb	%dl, gs_debug(%rsi)
	incq	%rcx
	cmpl	-12(%rdi), %ecx
	jb	.LBB8_6
# BB#7:                                 # %for.cond.for.end_crit_edge
	movq	624(%rax), %rdi
.LBB8_8:                                # %for.end
	addq	$-32, %rdi
	movq	%rdi, 624(%rax)
	xorl	%eax, %eax
	jmp	.LBB8_9
.LBB8_1:                                # %if.then
	addq	$-16, %rdi
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	jne	.LBB8_2
.LBB8_9:                                # %cleanup
	retq
.LBB8_10:                               # %if.then.16
	jmp	check_type_failed       # TAILCALL
.LBB8_2:                                # %cond.true
	jmp	check_type_failed       # TAILCALL
.Lfunc_end8:
	.size	zsetdebug, .Lfunc_end8-zsetdebug
	.cfi_endproc

	.align	16, 0x90
	.type	zmementolistnewblocks,@function
zmementolistnewblocks:                  # @zmementolistnewblocks
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	zmementolistnewblocks, .Lfunc_end9-zmementolistnewblocks
	.cfi_endproc

	.align	16, 0x90
	.type	zsetoserrno,@function
zsetoserrno:                            # @zsetoserrno
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 32
.Ltmp62:
	.cfi_offset %rbx, -32
.Ltmp63:
	.cfi_offset %r14, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB10_2
# BB#1:                                 # %cleanup
	movl	8(%rbx), %ebp
	callq	__errno_location
	movl	%ebp, (%rax)
	addq	$-16, %rbx
	movq	%rbx, 624(%r14)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB10_2:                               # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.Lfunc_end10:
	.size	zsetoserrno, .Lfunc_end10-zsetoserrno
	.cfi_endproc

	.align	16, 0x90
	.type	zusertime,@function
zusertime:                              # @zusertime
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp67:
	.cfi_def_cfa_offset 48
.Ltmp68:
	.cfi_offset %rbx, -24
.Ltmp69:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	(%rsp), %rdi
	callq	gp_get_usertime
	leaq	16(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movq	%rax, 624(%rbx)
	imulq	$1000, (%rsp), %rcx     # imm = 0x3E8
	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
	imulq	8(%rsp)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%r14)
	movw	$2816, 16(%r14)         # imm = 0xB00
	xorl	%eax, %eax
.LBB11_3:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	zusertime, .Lfunc_end11-zusertime
	.cfi_endproc

	.align	16, 0x90
	.type	zsetCPSImode,@function
zsetCPSImode:                           # @zsetCPSImode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp72:
	.cfi_def_cfa_offset 32
.Ltmp73:
	.cfi_offset %rbx, -24
.Ltmp74:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB12_5
# BB#1:                                 # %if.end
	movq	8(%r14), %rdi
	movzwl	8(%rbx), %esi
	callq	gs_setcpsimode
	movl	184(%r14), %eax
	cmpw	$0, 8(%rbx)
	je	.LBB12_2
# BB#3:                                 # %select.mid
	orl	$128, %eax
	jmp	.LBB12_4
.LBB12_5:                               # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.LBB12_2:
	andl	$-129, %eax
.LBB12_4:                               # %cleanup
	movl	%eax, 184(%r14)
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	zsetCPSImode, .Lfunc_end12-zsetCPSImode
	.cfi_endproc

	.align	16, 0x90
	.type	zgetCPSImode,@function
zgetCPSImode:                           # @zgetCPSImode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB13_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB13_2:                               # %if.else
	movq	%rax, 624(%rdi)
	movq	8(%rdi), %rdi
	callq	gs_currentcpsimode
	movw	%ax, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end13:
	.size	zgetCPSImode, .Lfunc_end13-zgetCPSImode
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1bind"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1getenv"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0.defaultpapersize"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2.makeoperator"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0.oserrno"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1.oserrorstring"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"0realtime"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"1serialnumber"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"2.setdebug"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"0.mementolistnewblocks"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1.setoserrno"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"0usertime"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1.setCPSImode"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"0.getCPSImode"
	.size	.L.str.13, 14

	.type	zmisc_op_defs,@object   # @zmisc_op_defs
	.section	.rodata,"a",@progbits
	.globl	zmisc_op_defs
	.align	16
zmisc_op_defs:
	.quad	.L.str
	.quad	zbind
	.quad	.L.str.1
	.quad	zgetenv
	.quad	.L.str.2
	.quad	zdefaultpapersize
	.quad	.L.str.3
	.quad	zmakeoperator
	.quad	.L.str.4
	.quad	zoserrno
	.quad	.L.str.5
	.quad	zoserrorstring
	.quad	.L.str.6
	.quad	zrealtime
	.quad	.L.str.7
	.quad	zserialnumber
	.quad	.L.str.8
	.quad	zsetdebug
	.quad	.L.str.9
	.quad	zmementolistnewblocks
	.quad	.L.str.10
	.quad	zsetoserrno
	.quad	.L.str.11
	.quad	zusertime
	.quad	.L.str.12
	.quad	zsetCPSImode
	.quad	.L.str.13
	.quad	zgetCPSImode
	.zero	16
	.size	zmisc_op_defs, 240

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"bind"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"getenv key"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"getenv value"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"defaultpapersize value"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"makeoperator"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	".oserrorstring"
	.size	.L.str.19, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
