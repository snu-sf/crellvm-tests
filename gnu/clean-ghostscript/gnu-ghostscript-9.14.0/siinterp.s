	.text
	.file	"siinterp.bc"
	.align	16, 0x90
	.type	s_IIEncode_init,@function
s_IIEncode_init:                        # @s_IIEncode_init
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
	movq	8(%rbx), %r14
	movl	132(%rbx), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	sarl	$3, %ecx
	movl	112(%rbx), %eax
	imull	%eax, %ecx
	movl	%ecx, 208(%rbx)
	movl	140(%rbx), %edx
	movl	%edx, %r8d
	sarl	$31, %r8d
	shrl	$29, %r8d
	addl	%edx, %r8d
	sarl	$3, %r8d
	imull	%eax, %r8d
	movl	%r8d, 212(%rbx)
	movl	148(%rbx), %esi
	imull	%esi, %ecx
	movl	%ecx, 216(%rbx)
	movl	156(%rbx), %ecx
	movl	%ecx, %eax
	imull	%r8d, %eax
	movl	%eax, 220(%rbx)
	movl	$0, 244(%rbx)
	movl	$0, 320(%rbx)
	movl	$0, 316(%rbx)
	leaq	248(%rbx), %rdi
	movl	$0, 248(%rbx)
	leal	-1(%rcx), %eax
	movl	%eax, 252(%rbx)
	testl	%ecx, %ecx
	je	.LBB0_1
# BB#2:                                 # %if.else
	testl	%esi, %esi
	js	.LBB0_3
# BB#5:                                 # %if.else.59
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	%eax, 8(%rdi)
	movl	%edx, 12(%rdi)
	jmp	.LBB0_6
.LBB0_1:                                # %if.then
	movq	$0, 8(%rdi)
	jmp	.LBB0_6
.LBB0_3:                                # %if.then.26
	movl	%esi, %r10d
	negl	%r10d
	xorl	%edx, %edx
	movl	%r10d, %eax
	divl	%ecx
	movl	%eax, %r9d
	negl	%eax
	movl	%eax, 8(%rdi)
	movl	%r10d, %eax
	cltd
	idivl	%ecx
	movl	%edx, 12(%rdi)
	testl	%edx, %edx
	je	.LBB0_6
# BB#4:                                 # %if.then.46
	notl	%r9d
	movl	%r9d, 8(%rdi)
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, 12(%rdi)
.LBB0_6:                                # %if.end.77
	movl	%ecx, 264(%rbx)
	movl	16(%rdi), %eax
	movl	%eax, 284(%rbx)
	movups	(%rdi), %xmm0
	movups	%xmm0, 268(%rbx)
	movq	$0, 288(%rbx)
	movl	$0, 296(%rbx)
	movl	152(%rbx), %edi
	leal	-1(%rdi), %eax
	movl	%eax, 300(%rbx)
	testl	%edi, %edi
	je	.LBB0_7
# BB#8:                                 # %if.else.104
	movl	160(%rbx), %ecx
	testl	%ecx, %ecx
	js	.LBB0_9
# BB#11:                                # %if.else.143
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%eax, 304(%rbx)
	movl	%edx, 308(%rbx)
	jmp	.LBB0_12
.LBB0_7:                                # %if.then.97
	movq	$0, 304(%rbx)
	jmp	.LBB0_12
.LBB0_9:                                # %if.then.107
	negl	%ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, %r9d
	negl	%eax
	movl	%eax, 304(%rbx)
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%edx, 308(%rbx)
	testl	%edx, %edx
	je	.LBB0_12
# BB#10:                                # %if.then.128
	notl	%r9d
	movl	%r9d, 304(%rbx)
	movl	%edi, %eax
	subl	%edx, %eax
	movl	%eax, 308(%rbx)
.LBB0_12:                               # %if.end.161
	movl	%edi, 312(%rbx)
	movl	$.L.str.1, %ecx
	movq	%r14, %rdi
	movl	%r8d, %edx
	callq	*88(%r14)
	movq	%rax, 224(%rbx)
	movl	148(%rbx), %esi
	movl	212(%rbx), %edx
	movl	$.L.str.2, %ecx
	movq	%r14, %rdi
	callq	*88(%r14)
	movq	%rax, 232(%rbx)
	testq	%rax, %rax
	je	.LBB0_14
# BB#13:                                # %if.end.161
	movq	224(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB0_14
# BB#15:                                # %if.end.185
	movl	140(%rbx), %ecx
	cmpl	$8, 132(%rbx)
	jne	.LBB0_23
# BB#16:                                # %cond.true
	movl	136(%rbx), %edx
	cmpl	$8, %ecx
	jne	.LBB0_19
# BB#17:                                # %cond.true.192
	xorl	%eax, %eax
	cmpl	144(%rbx), %edx
	je	.LBB0_26
# BB#18:                                # %select.mid
	movl	$2, %eax
	jmp	.LBB0_26
.LBB0_14:                               # %if.then.184
	movq	8(%rbx), %r14
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	*24(%r14)
	movq	$0, 232(%rbx)
	movq	224(%rbx), %rsi
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 224(%rbx)
	movl	$-2, %eax
	jmp	.LBB0_27
.LBB0_23:                               # %cond.false.211
	movl	$10, %eax
	cmpl	$8, %ecx
	je	.LBB0_26
# BB#24:                                # %cond.false.216
	movl	136(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	144(%rbx), %ecx
	je	.LBB0_26
# BB#25:                                # %select.mid130
	movl	$12, %eax
	jmp	.LBB0_26
.LBB0_19:                               # %cond.false
	movl	$8, %eax
	cmpl	$255, %edx
	jne	.LBB0_26
# BB#20:                                # %land.lhs.true
	cmpl	$32760, 144(%rbx)       # imm = 0x7FF8
	jne	.LBB0_26
# BB#21:                                # %cond.true.202
	movl	$6, %eax
	cmpl	$3, 112(%rbx)
	je	.LBB0_26
# BB#22:                                # %select.mid128
	movl	$4, %eax
.LBB0_26:                               # %cond.end.225
	movl	%eax, 240(%rbx)
	xorl	%eax, %eax
.LBB0_27:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	s_IIEncode_init, .Lfunc_end0-s_IIEncode_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_IIEncode_process,@function
s_IIEncode_process:                     # @s_IIEncode_process
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
	subq	$56, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 112
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
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r12
	movq	8(%r14), %rbp
	movq	16(%r14), %rcx
	movl	%ebp, %r15d
	andl	$1, %r15d
	addl	240(%r12), %r15d
	movl	%r15d, 36(%rsp)         # 4-byte Spill
	incq	%rbp
	movslq	212(%r12), %rax
	subq	%rax, %rcx
	incq	%rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	248(%r12), %r8
	movq	%r8, 48(%rsp)           # 8-byte Spill
	leaq	268(%r12), %r9
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movl	292(%r12), %eax
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_29:                               # %while.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, 244(%r12)
	incl	%eax
	movl	%eax, 292(%r12)
	movl	16(%r9), %ecx
	movl	%ecx, 16(%r8)
	movups	(%r9), %xmm0
	movups	%xmm0, (%r8)
.LBB1_1:                                # %top.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_24 Depth 3
                                        #       Child Loop BB1_21 Depth 3
                                        #       Child Loop BB1_18 Depth 3
                                        #       Child Loop BB1_14 Depth 3
                                        #       Child Loop BB1_11 Depth 3
	cmpl	%eax, 296(%r12)
	jle	.LBB1_30
# BB#2:                                 # %top.outer.while.cond.preheader_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	244(%r12), %edx
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_30:                               # %if.end.196.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%rbp), %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB1_31:                               # %if.end.196
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, 8(%r14)
	movl	$-1, %ebx
	cmpl	160(%r12), %eax
	jge	.LBB1_39
# BB#32:                                # %if.end.204
                                        #   in Loop: Header=BB1_31 Depth=2
	movslq	316(%r12), %rdi
	movl	216(%r12), %eax
	cmpl	%edi, %eax
	jbe	.LBB1_35
# BB#33:                                # %if.then.207
                                        #   in Loop: Header=BB1_31 Depth=2
	subl	%edi, %eax
	movq	(%r13), %rsi
	movq	8(%r13), %r14
	subq	%rsi, %r14
	cmpq	%r14, %rax
	movq	%r14, %rcx
	cmovleq	%rax, %rcx
	cmovll	%eax, %r14d
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	je	.LBB1_39
# BB#34:                                # %cleanup.251
                                        #   in Loop: Header=BB1_31 Depth=2
	addq	232(%r12), %rdi
	incq	%rsi
	movq	%r13, %r15
	movl	%ecx, %r13d
	movq	%r13, %rdx
	callq	memcpy
	movq	24(%rsp), %r9           # 8-byte Reload
	addl	316(%r12), %r14d
	movl	%r14d, 316(%r12)
	addq	%r13, (%r15)
	movq	%r15, %r13
	cmpl	216(%r12), %r14d
	movq	40(%rsp), %r14          # 8-byte Reload
	movl	36(%rsp), %r15d         # 4-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	jb	.LBB1_39
.LBB1_35:                               # %if.end.254
                                        #   in Loop: Header=BB1_31 Depth=2
	movl	$0, 316(%r12)
	movl	$0, 244(%r12)
	movl	16(%r9), %eax
	movl	%eax, 16(%r8)
	movups	(%r9), %xmm0
	movups	%xmm0, (%r8)
	movl	300(%r12), %eax
	subl	308(%r12), %eax
	movl	%eax, 300(%r12)
	movl	296(%r12), %ecx
	jns	.LBB1_37
# BB#36:                                # %if.then.272
                                        #   in Loop: Header=BB1_31 Depth=2
	incl	%ecx
	movl	%ecx, 296(%r12)
	addl	312(%r12), %eax
	movl	%eax, 300(%r12)
.LBB1_37:                               # %if.end.284
                                        #   in Loop: Header=BB1_31 Depth=2
	addl	304(%r12), %ecx
	movl	%ecx, 296(%r12)
	movl	292(%r12), %eax
	xorl	%edx, %edx
	cmpl	%eax, %ecx
	jle	.LBB1_31
.LBB1_3:                                # %while.cond.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	156(%r12), %edx
	jge	.LBB1_29
# BB#4:                                 # %while.body.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	(%r8), %esi
	movq	8(%rsp), %r10           # 8-byte Reload
	.align	16, 0x90
.LBB1_5:                                # %while.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
                                        #       Child Loop BB1_21 Depth 3
                                        #       Child Loop BB1_18 Depth 3
                                        #       Child Loop BB1_14 Depth 3
                                        #       Child Loop BB1_11 Depth 3
	movslq	208(%r12), %rdx
	imull	%edx, %esi
	cmpq	%r10, %rbp
	ja	.LBB1_38
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	%r15d, %eax
	cmpl	$13, %r15d
	ja	.LBB1_25
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB1_5 Depth=2
	addq	232(%r12), %rsi
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_12:                               # %sw.bb.33
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	112(%r12), %eax
	testl	%eax, %eax
	jle	.LBB1_25
# BB#13:                                # %for.body.40.preheader
                                        #   in Loop: Header=BB1_5 Depth=2
	incl	%eax
	.align	16, 0x90
.LBB1_14:                               # %for.body.40
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rsi), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	movl	%ecx, %edi
	shrl	%edi
	orl	%edx, %edi
	shrl	$5, %ecx
	subl	%ecx, %edi
	movswl	%di, %ecx
	movb	%ch, (%rbp)  # NOREX
	movb	%cl, 1(%rbp)
	incq	%rsi
	addq	$2, %rbp
	decl	%eax
	cmpl	$1, %eax
	jg	.LBB1_14
	jmp	.LBB1_25
.LBB1_8:                                # %sw.bb
                                        #   in Loop: Header=BB1_5 Depth=2
	movq	%rbp, %rdi
	movq	%r9, %rbx
	callq	memcpy
	movq	8(%rsp), %r10           # 8-byte Reload
	movq	%rbx, %r9
	movq	48(%rsp), %r8           # 8-byte Reload
	movslq	208(%r12), %rax
	addq	%rax, %rbp
	jmp	.LBB1_25
.LBB1_9:                                # %sw.bb.23
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	112(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB1_25
# BB#10:                                # %for.body.preheader
                                        #   in Loop: Header=BB1_5 Depth=2
	incl	%ecx
	.align	16, 0x90
.LBB1_11:                               # %for.body
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rsi), %eax
	imull	144(%r12), %eax
	xorl	%edx, %edx
	divl	136(%r12)
	movb	%al, (%rbp)
	incq	%rsi
	incq	%rbp
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB1_11
	jmp	.LBB1_25
.LBB1_16:                               # %sw.bb.92
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	112(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB1_25
# BB#17:                                # %for.body.99.preheader
                                        #   in Loop: Header=BB1_5 Depth=2
	incl	%ecx
	.align	16, 0x90
.LBB1_18:                               # %for.body.99
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rsi), %eax
	imull	144(%r12), %eax
	xorl	%edx, %edx
	divl	136(%r12)
	movb	%ah, (%rbp)  # NOREX
	movb	%al, 1(%rbp)
	incq	%rsi
	addq	$2, %rbp
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB1_18
	jmp	.LBB1_25
.LBB1_19:                               # %sw.bb.117
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	112(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB1_25
# BB#20:                                # %for.body.124.preheader
                                        #   in Loop: Header=BB1_5 Depth=2
	incl	%ecx
	.align	16, 0x90
.LBB1_21:                               # %for.body.124
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rsi), %eax
	imull	144(%r12), %eax
	xorl	%edx, %edx
	divl	136(%r12)
	movb	%al, (%rbp)
	addq	$2, %rsi
	incq	%rbp
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB1_21
	jmp	.LBB1_25
.LBB1_22:                               # %sw.bb.137
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	112(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB1_25
# BB#23:                                # %for.body.144.preheader
                                        #   in Loop: Header=BB1_5 Depth=2
	incl	%ecx
	.align	16, 0x90
.LBB1_24:                               # %for.body.144
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rsi), %eax
	imull	144(%r12), %eax
	xorl	%edx, %edx
	divl	136(%r12)
	movb	%ah, (%rbp)  # NOREX
	movb	%al, 1(%rbp)
	addq	$2, %rsi
	addq	$2, %rbp
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB1_24
	jmp	.LBB1_25
.LBB1_15:                               # %sw.bb.56
                                        #   in Loop: Header=BB1_5 Depth=2
	movzbl	(%rsi), %eax
	movl	%eax, %ecx
	shll	$7, %ecx
	movl	%eax, %edx
	shrl	%edx
	orl	%ecx, %edx
	shrl	$5, %eax
	subl	%eax, %edx
	movw	%dx, (%rbp)
	movzbl	1(%rsi), %eax
	movl	%eax, %ecx
	shll	$7, %ecx
	movl	%eax, %edx
	shrl	%edx
	orl	%ecx, %edx
	shrl	$5, %eax
	subl	%eax, %edx
	movw	%dx, 2(%rbp)
	movzbl	2(%rsi), %eax
	movl	%eax, %ecx
	shll	$7, %ecx
	movl	%eax, %edx
	shrl	%edx
	orl	%ecx, %edx
	shrl	$5, %eax
	subl	%eax, %edx
	movw	%dx, 4(%rbp)
	addq	$6, %rbp
	.align	16, 0x90
.LBB1_25:                               # %do.body
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	4(%r8), %eax
	subl	12(%r8), %eax
	movl	%eax, 4(%r8)
	movl	(%r8), %esi
	jns	.LBB1_27
# BB#26:                                # %if.then.171
                                        #   in Loop: Header=BB1_5 Depth=2
	incl	%esi
	movl	%esi, (%r8)
	addl	16(%r8), %eax
	movl	%eax, 4(%r8)
.LBB1_27:                               # %cleanup.thread
                                        #   in Loop: Header=BB1_5 Depth=2
	addl	256(%r12), %esi
	movl	%esi, 248(%r12)
	movl	244(%r12), %eax
	incl	%eax
	movl	%eax, 244(%r12)
	cmpl	156(%r12), %eax
	jl	.LBB1_5
# BB#28:                                # %while.cond.while.end_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	292(%r12), %eax
	jmp	.LBB1_29
.LBB1_38:                               # %cleanup
	decq	%rbp
	movq	%rbp, 8(%r14)
	movl	$1, %ebx
.LBB1_39:                               # %cleanup.294
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_IIEncode_process, .Lfunc_end1-s_IIEncode_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_9
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_15
	.quad	.LBB1_16
	.quad	.LBB1_16
	.quad	.LBB1_19
	.quad	.LBB1_19
	.quad	.LBB1_22
	.quad	.LBB1_22

	.text
	.align	16, 0x90
	.type	s_IIEncode_release,@function
s_IIEncode_release:                     # @s_IIEncode_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %r14
	movq	232(%rbx), %rsi
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 232(%rbx)
	movq	224(%rbx), %rsi
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 224(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	s_IIEncode_release, .Lfunc_end2-s_IIEncode_release
	.cfi_endproc

	.type	st_IIEncode_state,@object # @st_IIEncode_state
	.section	.rodata,"a",@progbits
	.align	8
st_IIEncode_state:
	.long	328                     # 0x148
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	iiencode_state_reloc_ptrs
	.size	st_IIEncode_state, 64

	.type	s_IIEncode_template,@object # @s_IIEncode_template
	.globl	s_IIEncode_template
	.align	8
s_IIEncode_template:
	.quad	st_IIEncode_state
	.quad	s_IIEncode_init
	.quad	s_IIEncode_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	s_IIEncode_release
	.quad	0
	.quad	0
	.size	s_IIEncode_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ImageInterpolateEncode state"
	.size	.L.str, 29

	.type	iiencode_state_reloc_ptrs,@object # @iiencode_state_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
iiencode_state_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	iiencode_state_enum_ptrs
	.size	iiencode_state_reloc_ptrs, 24

	.type	iiencode_state_enum_ptrs,@object # @iiencode_state_enum_ptrs
	.align	2
iiencode_state_enum_ptrs:
	.short	0                       # 0x0
	.short	224                     # 0xe0
	.short	0                       # 0x0
	.short	232                     # 0xe8
	.size	iiencode_state_enum_ptrs, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"IIEncode prev"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"IIEncode cur"
	.size	.L.str.2, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
