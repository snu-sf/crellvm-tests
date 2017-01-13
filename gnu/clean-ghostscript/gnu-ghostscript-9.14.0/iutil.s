	.text
	.file	"iutil.bc"
	.globl	refcpy_to_old
	.align	16, 0x90
	.type	refcpy_to_old,@function
refcpy_to_old:                          # @refcpy_to_old
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
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
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r8, %r12
	movl	%ecx, %r15d
	movq	%rdx, %rbx
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	8(%rdi), %rax
	movl	%esi, %ecx
	testl	%r15d, %r15d
	je	.LBB0_4
# BB#1:
	movq	16(%rsp), %rdx          # 8-byte Reload
	movzwl	(%rdx), %edx
	andl	$12, %edx
	movl	%r15d, %esi
	movq	%rbx, %rdi
	movl	$-7, %r13d
	.align	16, 0x90
.LBB0_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi), %ebp
	andl	$12, %ebp
	cmpl	%edx, %ebp
	ja	.LBB0_16
# BB#2:                                 # %for.cond.i
                                        #   in Loop: Header=BB0_3 Depth=1
	decl	%esi
	addq	$16, %rdi
	testl	%esi, %esi
	jne	.LBB0_3
.LBB0_4:                                # %if.end
	movq	%rcx, %rdx
	shlq	$4, %rdx
	leaq	(%rdx,%rax), %r14
	cmpq	%rbx, %r14
	jbe	.LBB0_6
# BB#5:                                 # %lor.lhs.false
	movl	%r15d, %edx
	movq	%rdx, %rsi
	shlq	$4, %rsi
	leaq	(%rsi,%rbx), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB0_6
# BB#11:                                # %if.else
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	je	.LBB0_16
# BB#12:                                # %for.body.lr.ph
	leaq	(%rcx,%rdx), %rcx
	shlq	$4, %rcx
	leaq	-16(%rcx,%rax), %rbp
	shlq	$4, %rdx
	leaq	-16(%rdx,%rbx), %rbx
	.align	16, 0x90
.LBB0_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%r15d
	movzwl	(%rbp), %eax
	testl	64(%r12), %eax
	jne	.LBB0_15
# BB#14:                                # %cond.true.36
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%r12, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	alloc_save_change
.LBB0_15:                               # %cond.end.39
                                        #   in Loop: Header=BB0_13 Depth=1
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rbp)
	movzwl	(%rbp), %eax
	orl	68(%r12), %eax
	movw	%ax, (%rbp)
	addq	$-16, %rbp
	addq	$-16, %rbx
	testl	%r15d, %r15d
	jne	.LBB0_13
	jmp	.LBB0_16
.LBB0_6:                                # %while.cond.preheader
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	je	.LBB0_16
# BB#7:                                 # %while.body.lr.ph
	movq	8(%rsp), %rbp           # 8-byte Reload
	.align	16, 0x90
.LBB0_8:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%r15d
	movzwl	(%r14), %eax
	testl	64(%r12), %eax
	jne	.LBB0_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%r12, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	callq	alloc_save_change
.LBB0_10:                               # %cond.end
                                        #   in Loop: Header=BB0_8 Depth=1
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r14)
	movzwl	(%r14), %eax
	orl	68(%r12), %eax
	movw	%ax, (%r14)
	addq	$16, %r14
	addq	$16, %rbx
	testl	%r15d, %r15d
	jne	.LBB0_8
.LBB0_16:                               # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	refcpy_to_old, .Lfunc_end0-refcpy_to_old
	.cfi_endproc

	.globl	refs_check_space
	.align	16, 0x90
	.type	refs_check_space,@function
refs_check_space:                       # @refs_check_space
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	je	.LBB1_1
	.align	16, 0x90
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi), %ecx
	andl	$12, %ecx
	movl	$-7, %eax
	cmpl	%edx, %ecx
	ja	.LBB1_5
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB1_4 Depth=1
	decl	%esi
	addq	$16, %rdi
	testl	%esi, %esi
	jne	.LBB1_4
# BB#3:
	xorl	%eax, %eax
	retq
.LBB1_1:
	xorl	%eax, %eax
	retq
.LBB1_5:                                # %return
	retq
.Lfunc_end1:
	.size	refs_check_space, .Lfunc_end1-refs_check_space
	.cfi_endproc

	.globl	refcpy_to_new
	.align	16, 0x90
	.type	refcpy_to_new,@function
refcpy_to_new:                          # @refcpy_to_new
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	je	.LBB2_6
# BB#1:                                 # %while.body.lr.ph
	testb	$1, %dl
	jne	.LBB2_3
# BB#2:
	movl	%edx, %r8d
	jmp	.LBB2_4
.LBB2_3:                                # %while.body.prol
	leal	-1(%rdx), %r8d
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rdi)
	movzwl	(%rdi), %eax
	orl	68(%rcx), %eax
	movw	%ax, (%rdi)
	addq	$16, %rdi
	addq	$16, %rsi
.LBB2_4:                                # %while.body.lr.ph.split
	cmpl	$1, %edx
	je	.LBB2_6
	.align	16, 0x90
.LBB2_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rdi)
	movzwl	(%rdi), %eax
	orl	68(%rcx), %eax
	movw	%ax, (%rdi)
	movups	16(%rsi), %xmm0
	movups	%xmm0, 16(%rdi)
	movzwl	16(%rdi), %eax
	orl	68(%rcx), %eax
	addq	$32, %rsi
	addl	$-2, %r8d
	movw	%ax, 16(%rdi)
	leaq	32(%rdi), %rdi
	jne	.LBB2_5
.LBB2_6:                                # %while.end
	retq
.Lfunc_end2:
	.size	refcpy_to_new, .Lfunc_end2-refcpy_to_new
	.cfi_endproc

	.globl	refset_null_new
	.align	16, 0x90
	.type	refset_null_new,@function
refset_null_new:                        # @refset_null_new
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	je	.LBB3_6
# BB#1:                                 # %for.body.lr.ph
	addl	$3584, %edx             # imm = 0xE00
	leal	-1(%rsi), %eax
	testb	$7, %sil
	je	.LBB3_4
# BB#2:                                 # %for.body.prol.preheader
	movl	%esi, %ecx
	andl	$7, %ecx
	negl	%ecx
	.align	16, 0x90
.LBB3_3:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	decl	%esi
	movw	%dx, (%rdi)
	addq	$16, %rdi
	incl	%ecx
	jne	.LBB3_3
.LBB3_4:                                # %for.body.lr.ph.split
	cmpl	$7, %eax
	jb	.LBB3_6
	.align	16, 0x90
.LBB3_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	%dx, (%rdi)
	movw	%dx, 16(%rdi)
	movw	%dx, 32(%rdi)
	movw	%dx, 48(%rdi)
	movw	%dx, 64(%rdi)
	movw	%dx, 80(%rdi)
	movw	%dx, 96(%rdi)
	movw	%dx, 112(%rdi)
	subq	$-128, %rdi
	addl	$-8, %esi
	jne	.LBB3_5
.LBB3_6:                                # %for.end
	retq
.Lfunc_end3:
	.size	refset_null_new, .Lfunc_end3-refset_null_new
	.cfi_endproc

	.globl	obj_eq
	.align	16, 0x90
	.type	obj_eq,@function
obj_eq:                                 # @obj_eq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 96
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movzbl	1(%rbp), %ecx
	movzbl	1(%rbx), %eax
	cmpl	%eax, %ecx
	je	.LBB4_26
# BB#1:                                 # %if.then
	leal	-5(%rcx), %edx
	cmpl	$13, %edx
	ja	.LBB4_21
# BB#2:                                 # %if.then
	jmpq	*.LJTI4_0(,%rdx,8)
.LBB4_15:                               # %sw.bb.56
	addl	%ecx, %eax
	cmpl	$11, %eax
	jne	.LBB4_16
# BB#17:                                # %land.lhs.true
	cmpl	$0, 4(%rbp)
	je	.LBB4_19
# BB#18:
	xorl	%eax, %eax
	movzbl	%al, %r15d
	jmp	.LBB4_81
.LBB4_21:                               # %sw.default
	movzwl	(%rbp), %esi
	movl	$15, %edx
	cmpl	$5375, %esi             # imm = 0x14FF
	movl	$15, %esi
	ja	.LBB4_23
# BB#22:                                # %select.mid
	movl	%ecx, %esi
.LBB4_23:                               # %select.end
	movzwl	(%rbx), %ecx
	cmpl	$5375, %ecx             # imm = 0x14FF
	ja	.LBB4_25
# BB#24:                                # %select.mid162
	movzbl	%al, %edx
.LBB4_25:                               # %select.end161
	xorl	%r15d, %r15d
	cmpl	%edx, %esi
	jne	.LBB4_81
	jmp	.LBB4_26
.LBB4_3:                                # %sw.bb
	cmpl	$16, %eax
	jne	.LBB4_4
# BB#5:                                 # %land.rhs
	cvtsi2ssq	8(%rbp), %xmm0
	cmpeqss	8(%rbx), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	movzbl	%al, %r15d
	jmp	.LBB4_81
.LBB4_11:                               # %sw.bb.37
	xorl	%r15d, %r15d
	cmpl	$18, %eax
	jne	.LBB4_81
# BB#12:                                # %if.end
	movq	192(%r14), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %r15
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	names_string_ref
	movq	%r15, %rbp
	jmp	.LBB4_26
.LBB4_7:                                # %sw.bb.20
	cmpl	$11, %eax
	jne	.LBB4_8
# BB#9:                                 # %land.rhs.27
	cvtsi2ssq	8(%rbx), %xmm0
	cmpeqss	8(%rbp), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	movzbl	%al, %r15d
	jmp	.LBB4_81
.LBB4_13:                               # %sw.bb.45
	xorl	%r15d, %r15d
	cmpl	$13, %eax
	jne	.LBB4_81
# BB#14:                                # %if.end.53
	movq	192(%r14), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %r15
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	names_string_ref
	movq	%r15, %rbx
.LBB4_26:                               # %if.end.103
	movzwl	(%rbp), %eax
	cmpl	$5375, %eax             # imm = 0x14FF
	ja	.LBB4_42
# BB#27:                                # %cond.end.115
	movzbl	1(%rbp), %eax
	decl	%eax
	cmpl	$19, %eax
	ja	.LBB4_80
# BB#28:                                # %cond.end.115
	movl	$1, %r15d
	jmpq	*.LJTI4_1(,%rax,8)
.LBB4_61:                               # %sw.bb.164
	movq	8(%rbp), %rax
	cmpq	8(%rbx), %rax
	jmp	.LBB4_57
.LBB4_42:                               # %sw.bb.199
	movl	4(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB4_49
# BB#43:                                # %cond.true.204
	movl	op_def_count(%rip), %edx
	xorl	%eax, %eax
	shrl	$4, %edx
	movl	$op_defs_all, %ecx
	je	.LBB4_49
# BB#44:
	movq	8(%rbp), %rsi
	leaq	op_defs_all(,%rdx,8), %rbp
.LBB4_45:                               # %for.body.i.73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_46 Depth 2
	movq	(%rcx), %rdi
	cmpq	$0, (%rdi)
	movq	%rdi, %rdx
	je	.LBB4_48
	.align	16, 0x90
.LBB4_46:                               # %for.body.3.i.77
                                        #   Parent Loop BB4_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rsi, 8(%rdx)
	je	.LBB4_82
# BB#47:                                # %for.inc.i.81
                                        #   in Loop: Header=BB4_46 Depth=2
	cmpq	$0, 16(%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB4_46
.LBB4_48:                               # %for.inc.9.i.93
                                        #   in Loop: Header=BB4_45 Depth=1
	addq	$8, %rcx
	cmpq	%rbp, %rcx
	jb	.LBB4_45
	jmp	.LBB4_49
.LBB4_82:                               # %cleanup.i.90
	movl	$op_defs_all, %eax
	subl	%eax, %ecx
	subl	%edi, %edx
	shrl	$4, %edx
	leal	(%rdx,%rcx,2), %eax
	movzwl	%ax, %eax
.LBB4_49:                               # %cond.end.209
	movl	4(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.LBB4_56
# BB#50:                                # %cond.true.215
	movl	op_def_count(%rip), %esi
	xorl	%ecx, %ecx
	shrl	$4, %esi
	movl	$op_defs_all, %edx
	je	.LBB4_56
# BB#51:
	movq	8(%rbx), %rdi
	leaq	op_defs_all(,%rsi,8), %rbx
.LBB4_52:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_53 Depth 2
	movq	(%rdx), %rbp
	cmpq	$0, (%rbp)
	movq	%rbp, %rsi
	je	.LBB4_55
	.align	16, 0x90
.LBB4_53:                               # %for.body.3.i
                                        #   Parent Loop BB4_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rdi, 8(%rsi)
	je	.LBB4_83
# BB#54:                                # %for.inc.i
                                        #   in Loop: Header=BB4_53 Depth=2
	cmpq	$0, 16(%rsi)
	leaq	16(%rsi), %rsi
	jne	.LBB4_53
.LBB4_55:                               # %for.inc.9.i
                                        #   in Loop: Header=BB4_52 Depth=1
	addq	$8, %rdx
	cmpq	%rbx, %rdx
	jb	.LBB4_52
	jmp	.LBB4_56
.LBB4_83:                               # %cleanup.i
	movl	$op_defs_all, %ecx
	subl	%ecx, %edx
	subl	%ebp, %esi
	shrl	$4, %esi
	leal	(%rsi,%rdx,2), %ecx
	movzwl	%cx, %ecx
.LBB4_56:                               # %cond.end.221
	cmpl	%ecx, %eax
.LBB4_57:                               # %cleanup
	sete	%al
	movzbl	%al, %r15d
	jmp	.LBB4_81
.LBB4_16:
	xorl	%eax, %eax
	movzbl	%al, %r15d
	jmp	.LBB4_81
.LBB4_4:
	xorl	%eax, %eax
	movzbl	%al, %r15d
	jmp	.LBB4_81
.LBB4_8:
	xorl	%eax, %eax
	movzbl	%al, %r15d
	jmp	.LBB4_81
.LBB4_33:                               # %sw.bb.136
	movq	8(%rbp), %rax
	cmpq	8(%rbx), %rax
	movl	4(%rbp), %eax
	je	.LBB4_35
# BB#34:                                # %lor.lhs.false.142
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$0, %eax
	jne	.LBB4_36
.LBB4_35:                               # %land.rhs.147
	cmpl	4(%rbx), %eax
	sete	%cl
.LBB4_36:                               # %land.end.154
	movzbl	%cl, %r15d
	jmp	.LBB4_81
.LBB4_19:                               # %land.rhs.70
	cmpl	$0, 4(%rbx)
	sete	%al
	movzbl	%al, %r15d
	jmp	.LBB4_81
.LBB4_37:                               # %sw.bb.156
	movzwl	8(%rbx), %eax
	movzwl	8(%rbp), %ecx
	cmpl	%eax, %ecx
	jmp	.LBB4_57
.LBB4_38:                               # %sw.bb.170
	movq	8(%rbp), %rax
	cmpq	8(%rbx), %rax
	je	.LBB4_40
# BB#39:
	xorl	%eax, %eax
	movzbl	%al, %r15d
	jmp	.LBB4_81
.LBB4_29:                               # %sw.bb.117
	movq	8(%rbp), %rax
	cmpq	8(%rbx), %rax
	movl	4(%rbp), %eax
	je	.LBB4_31
# BB#30:                                # %lor.lhs.false
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$0, %eax
	jne	.LBB4_32
.LBB4_31:                               # %land.rhs.127
	cmpl	4(%rbx), %eax
	sete	%cl
.LBB4_32:                               # %land.end.134
	movzbl	%cl, %r15d
	jmp	.LBB4_81
.LBB4_62:                               # %sw.bb.259
	movq	8(%rbp), %rcx
	movq	8(%rbx), %rax
	.align	16, 0x90
.LBB4_63:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	movq	64(%rbx), %rcx
	cmpq	%rbx, %rcx
	jne	.LBB4_63
	.align	16, 0x90
.LBB4_64:                               # %while.cond.2.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	movq	64(%rbp), %rax
	cmpq	%rbp, %rax
	jne	.LBB4_64
# BB#65:                                # %while.end.7.i
	cmpq	%rbp, %rbx
	je	.LBB4_81
# BB#66:                                # %if.end.i
	movl	128(%rbx), %eax
	movl	%eax, %ecx
	orl	$2, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_80
# BB#67:                                # %sw.bb.i
	cmpl	128(%rbp), %eax
	jne	.LBB4_80
# BB#68:                                # %sw.epilog.i
	movq	408(%rbx), %rax
	cmpq	$16777216, %rax         # imm = 0x1000000
	jb	.LBB4_80
# BB#69:                                # %lor.lhs.false.i
	leaq	408(%rbp), %rsi
	movq	(%rsi), %rcx
	cmpq	$16777216, %rcx         # imm = 0x1000000
	jb	.LBB4_80
# BB#70:                                # %lor.lhs.false.19.i
	orq	%rax, %rcx
	jns	.LBB4_72
# BB#71:                                # %land.lhs.true.i
	leaq	408(%rbx), %rdi
	callq	uid_equal
	testl	%eax, %eax
	je	.LBB4_80
.LBB4_72:                               # %cleanup.cont.critedge.i
	movq	72(%rbx), %r13
	movq	72(%rbp), %r12
	leaq	16(%r13), %rsi
	leaq	16(%r12), %rdx
	movq	%r14, %rdi
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB4_80
# BB#73:                                # %land.lhs.true.32.i
	leaq	32(%r13), %rsi
	leaq	32(%r12), %rdx
	movq	%r14, %rdi
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB4_80
# BB#74:                                # %land.lhs.true.36.i
	leaq	48(%r13), %rsi
	leaq	48(%r12), %rdx
	movq	%r14, %rdi
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB4_80
# BB#75:                                # %land.lhs.true.40.i
	leaq	64(%r13), %rsi
	leaq	64(%r12), %rdx
	movq	%r14, %rdi
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB4_80
# BB#76:                                # %if.end.45.i
	cmpl	$1, 128(%rbx)
	jne	.LBB4_81
# BB#77:                                # %if.then.48.i
	leaq	32(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%r13, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB4_81
# BB#78:                                # %land.lhs.true.51.i
	leaq	24(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB4_81
# BB#79:                                # %land.lhs.true.55.i
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	%r14, %rdi
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB4_81
.LBB4_80:                               # %sw.epilog.265
	xorl	%r15d, %r15d
.LBB4_81:                               # %cleanup
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_58:                               # %sw.bb.225
	movss	8(%rbp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cmpeqss	8(%rbx), %xmm0
	movd	%xmm0, %r15d
	andl	$1, %r15d
	jmp	.LBB4_81
.LBB4_59:                               # %sw.bb.232
	movq	8(%rbx), %rax
	cmpq	8(%rbp), %rax
	jmp	.LBB4_57
.LBB4_60:                               # %sw.bb.238
	movq	8(%rbp), %rdi
	movl	4(%rbp), %esi
	movq	8(%rbx), %rdx
	movl	4(%rbx), %ecx
	callq	bytes_compare
	testl	%eax, %eax
	jmp	.LBB4_57
.LBB4_40:                               # %land.rhs.176
	movl	4(%rbp), %eax
	cmpl	4(%rbx), %eax
	sete	%al
	movzbl	%al, %r15d
	jmp	.LBB4_81
.Lfunc_end4:
	.size	obj_eq, .Lfunc_end4-obj_eq
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_15
	.quad	.LBB4_15
	.quad	.LBB4_21
	.quad	.LBB4_21
	.quad	.LBB4_21
	.quad	.LBB4_21
	.quad	.LBB4_3
	.quad	.LBB4_21
	.quad	.LBB4_11
	.quad	.LBB4_21
	.quad	.LBB4_21
	.quad	.LBB4_7
	.quad	.LBB4_21
	.quad	.LBB4_13
.LJTI4_1:
	.quad	.LBB4_37
	.quad	.LBB4_61
	.quad	.LBB4_38
	.quad	.LBB4_29
	.quad	.LBB4_33
	.quad	.LBB4_33
	.quad	.LBB4_80
	.quad	.LBB4_61
	.quad	.LBB4_61
	.quad	.LBB4_62
	.quad	.LBB4_61
	.quad	.LBB4_81
	.quad	.LBB4_61
	.quad	.LBB4_81
	.quad	.LBB4_42
	.quad	.LBB4_58
	.quad	.LBB4_59
	.quad	.LBB4_60
	.quad	.LBB4_61
	.quad	.LBB4_42

	.text
	.globl	op_find_index
	.align	16, 0x90
	.type	op_find_index,@function
op_find_index:                          # @op_find_index
	.cfi_startproc
# BB#0:                                 # %entry
	movl	op_def_count(%rip), %ecx
	shrl	$4, %ecx
	movl	$op_defs_all, %eax
	je	.LBB5_6
# BB#1:
	movq	8(%rdi), %rdx
	leaq	op_defs_all(,%rcx,8), %rdi
.LBB5_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movq	(%rax), %rsi
	cmpq	$0, (%rsi)
	movq	%rsi, %rcx
	je	.LBB5_5
	.align	16, 0x90
.LBB5_3:                                # %for.body.3
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rdx, 8(%rcx)
	je	.LBB5_8
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	cmpq	$0, 16(%rcx)
	leaq	16(%rcx), %rcx
	jne	.LBB5_3
.LBB5_5:                                # %for.inc.9
                                        #   in Loop: Header=BB5_2 Depth=1
	addq	$8, %rax
	cmpq	%rdi, %rax
	jb	.LBB5_2
.LBB5_6:
	xorl	%eax, %eax
	movzwl	%ax, %eax
	retq
.LBB5_8:                                # %cleanup
	movl	$op_defs_all, %edx
	subl	%edx, %eax
	subl	%esi, %ecx
	shrl	$4, %ecx
	leal	(%rcx,%rax,2), %eax
	movzwl	%ax, %eax
	retq
.Lfunc_end5:
	.size	op_find_index, .Lfunc_end5-op_find_index
	.cfi_endproc

	.globl	obj_ident_eq
	.align	16, 0x90
	.type	obj_ident_eq,@function
obj_ident_eq:                           # @obj_ident_eq
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	1(%rsi), %r8d
	xorl	%eax, %eax
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %r8d
	jne	.LBB6_6
# BB#1:                                 # %if.end
	movzbl	%r8b, %eax
	cmpl	$18, %eax
	jne	.LBB6_7
# BB#2:                                 # %if.then.12
	movq	8(%rsi), %rax
	cmpq	8(%rdx), %rax
	je	.LBB6_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB6_5
.LBB6_7:                                # %if.end.22
	jmp	obj_eq                  # TAILCALL
.LBB6_4:                                # %land.rhs
	movl	4(%rsi), %eax
	cmpl	4(%rdx), %eax
	sete	%al
.LBB6_5:                                # %land.end
	movzbl	%al, %eax
.LBB6_6:                                # %return
	retq
.Lfunc_end6:
	.size	obj_ident_eq, .Lfunc_end6-obj_ident_eq
	.cfi_endproc

	.globl	obj_string_data
	.align	16, 0x90
	.type	obj_string_data,@function
obj_string_data:                        # @obj_string_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 48
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movzbl	1(%rsi), %ecx
	cmpl	$18, %ecx
	jne	.LBB7_1
# BB#3:                                 # %do.body
	movl	$-7, %eax
	testb	$32, (%rsi)
	je	.LBB7_6
# BB#4:                                 # %do.end
	movq	8(%rsi), %rax
	movq	%rax, (%rbx)
	movl	4(%rsi), %eax
	jmp	.LBB7_5
.LBB7_1:                                # %entry
	movl	$-20, %eax
	cmpl	$13, %ecx
	jne	.LBB7_6
# BB#2:                                 # %sw.bb
	movq	192(%rdi), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %rdx
	callq	names_string_ref
	movq	16(%rsp), %rax
	movq	%rax, (%rbx)
	movl	12(%rsp), %eax
.LBB7_5:                                # %return
	movl	%eax, (%r14)
	xorl	%eax, %eax
.LBB7_6:                                # %return
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	obj_string_data, .Lfunc_end7-obj_string_data
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	953267991               # float 9.99999974E-5
	.text
	.globl	obj_cvp
	.align	16, 0x90
	.type	obj_cvp,@function
obj_cvp:                                # @obj_cvp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 256
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	%edx, %r12d
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	256(%rsp), %r14
	testl	%r8d, %r8d
	movzwl	(%rbp), %ecx
	movzwl	%cx, %eax
	je	.LBB8_48
# BB#1:                                 # %if.then
	cmpl	$5375, %eax             # imm = 0x14FF
	ja	.LBB8_6
# BB#2:                                 # %cond.end
	movzbl	1(%rbp), %edx
	movl	$.L.str.12, %ebx
	movl	%edx, %eax
	decl	%eax
	cmpl	$19, %eax
	ja	.LBB8_45
# BB#3:                                 # %cond.end
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_38:                               # %sw.bb.209
	movl	$.L.str.15, %ebx
	testb	$12, %cl
	je	.LBB8_87
# BB#39:                                # %if.end.217
	movl	$.L.str.16, %ebx
	testq	%r14, %r14
	je	.LBB8_87
# BB#40:                                # %if.end.220
	movq	8(%rbp), %rsi
	movq	%r14, %rdi
	callq	*128(%r14)
	movq	%rax, %rdi
	callq	gs_struct_type_name
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	movl	%ebp, 140(%rsp)
	cmpl	$5, %ebp
	jb	.LBB8_44
# BB#41:                                # %land.lhs.true
	movl	%ebp, %eax
	leaq	-4(%r14,%rax), %rdi
	movl	$.L.str.17, %esi
	movl	$4, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB8_43
# BB#42:                                # %if.then.233
	leal	-4(%rbp), %ebp
	movl	%ebp, 140(%rsp)
.LBB8_43:                               # %if.end.235
	movl	$-15, %eax
	cmpl	$48, %ebp
	ja	.LBB8_92
.LBB8_44:                               # %if.end.240
	leaq	144(%rsp), %rbx
	movb	$45, 144(%rsp)
	leaq	145(%rsp), %rdi
	movl	%ebp, %edx
	movq	%r14, %rsi
	callq	memcpy
	movl	140(%rsp), %ecx
	leal	1(%rcx), %eax
	movb	$45, 144(%rsp,%rax)
	addl	$2, %ecx
	jmp	.LBB8_88
.LBB8_48:                               # %if.end.278
	cmpl	$5375, %eax             # imm = 0x14FF
	ja	.LBB8_69
.LBB8_49:                               # %cond.end.290
	movl	$.L.str.23, %ebx
	movzbl	1(%rbp), %eax
	leal	-11(%rax), %edx
	cmpl	$9, %edx
	jbe	.LBB8_93
# BB#50:                                # %cond.end.290
	cmpl	$1, %eax
	jne	.LBB8_87
# BB#51:                                # %sw.bb.292
	movl	$.L.str.18, %ebx
	cmpw	$0, 8(%rbp)
	jne	.LBB8_87
# BB#52:                                # %select.mid
	movl	$.L.str.19, %ebx
	jmp	.LBB8_87
.LBB8_6:                                # %sw.bb.18
	leaq	146(%rsp), %rsi
	movl	264(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	140(%rsp), %rcx
	movl	$46, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	callq	obj_cvp
	testl	%eax, %eax
	js	.LBB8_92
# BB#7:                                 # %if.end.24
	leaq	144(%rsp), %rbx
	movl	140(%rsp), %ecx
	leal	3(%rcx), %eax
	movb	$45, 144(%rsp,%rax)
	leal	2(%rcx), %eax
	movb	$45, 144(%rsp,%rax)
	movb	$45, 145(%rsp)
	movb	$45, 144(%rsp)
	addl	$4, %ecx
	jmp	.LBB8_88
.LBB8_93:                               # %cond.end.290
	jmpq	*.LJTI8_1(,%rdx,8)
.LBB8_53:                               # %sw.bb.297
	leaq	144(%rsp), %rbx
	movq	8(%rbp), %rdx
	movl	$.L.str.20, %esi
	jmp	.LBB8_54
.LBB8_69:                               # %sw.bb.342
	movl	4(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB8_71
# BB#70:                                # %sw.bb.342.cond.end.354_crit_edge
	movl	op_def_count(%rip), %eax
	jmp	.LBB8_79
.LBB8_71:                               # %cond.true.348
	movl	op_def_count(%rip), %eax
	movl	%eax, %edx
	shrl	$4, %edx
	movl	$op_defs_all, %ecx
	je	.LBB8_77
# BB#72:
	movq	8(%rbp), %rsi
	leaq	op_defs_all(,%rdx,8), %rdi
.LBB8_73:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_74 Depth 2
	movq	(%rcx), %rbx
	cmpq	$0, (%rbx)
	movq	%rbx, %rdx
	je	.LBB8_76
	.align	16, 0x90
.LBB8_74:                               # %for.body.3.i
                                        #   Parent Loop BB8_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rsi, 8(%rdx)
	je	.LBB8_78
# BB#75:                                # %for.inc.i
                                        #   in Loop: Header=BB8_74 Depth=2
	cmpq	$0, 16(%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB8_74
.LBB8_76:                               # %for.inc.9.i
                                        #   in Loop: Header=BB8_73 Depth=1
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jb	.LBB8_73
	jmp	.LBB8_77
.LBB8_78:                               # %cleanup.i
	movl	$op_defs_all, %esi
	subl	%esi, %ecx
	subl	%ebx, %edx
	shrl	$4, %edx
	leal	(%rdx,%rcx,2), %ecx
	movzwl	%cx, %ecx
.LBB8_79:                               # %cond.end.354
	testl	%ecx, %ecx
	je	.LBB8_77
# BB#80:                                # %cond.end.354
	cmpl	%eax, %ecx
	jae	.LBB8_77
# BB#81:                                # %if.then.361
	movl	%ecx, %eax
	andl	$15, %eax
	shrl	$4, %ecx
	movq	op_defs_all(,%rcx,8), %rcx
	shlq	$4, %rax
	movq	(%rcx,%rax), %rbx
	incq	%rbx
	jmp	.LBB8_87
.LBB8_77:                               # %if.end.368
	leaq	144(%rsp), %rbx
	movq	8(%rbp), %rdx
	movl	$.L.str.21, %esi
.LBB8_54:                               # %rs
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	jmp	.LBB8_87
.LBB8_82:                               # %sw.bb.373
	movss	8(%rbp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI8_0(%rip), %xmm0
	jne	.LBB8_84
	jp	.LBB8_84
# BB#83:                                # %if.then.378
	leaq	144(%rsp), %rdi
	movl	$.L.str.22, %esi
	callq	strcpy
	jmp	.LBB8_85
.LBB8_55:                               # %do.body
	movl	$-7, %eax
	testb	$32, %cl
	je	.LBB8_92
# BB#56:                                # %do.end.i.169
	movq	8(%rbp), %rbx
	movl	4(%rbp), %ecx
	jmp	.LBB8_88
.LBB8_57:                               # %sw.bb.315
	movl	4(%rbp), %ebx
	testl	%ebx, %ebx
	jne	.LBB8_64
# BB#58:                                # %cond.true.320
	movl	op_def_count(%rip), %ecx
	xorl	%ebx, %ebx
	shrl	$4, %ecx
	movl	$op_defs_all, %eax
	je	.LBB8_64
# BB#59:
	movq	8(%rbp), %rdx
	leaq	op_defs_all(,%rcx,8), %rdi
.LBB8_60:                               # %for.body.i.181
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_61 Depth 2
	movq	(%rax), %rsi
	cmpq	$0, (%rsi)
	movq	%rsi, %rcx
	je	.LBB8_63
.LBB8_61:                               # %for.body.3.i.185
                                        #   Parent Loop BB8_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rdx, 8(%rcx)
	je	.LBB8_94
# BB#62:                                # %for.inc.i.189
                                        #   in Loop: Header=BB8_61 Depth=2
	cmpq	$0, 16(%rcx)
	leaq	16(%rcx), %rcx
	jne	.LBB8_61
.LBB8_63:                               # %for.inc.9.i.201
                                        #   in Loop: Header=BB8_60 Depth=1
	addq	$8, %rax
	cmpq	%rdi, %rax
	jb	.LBB8_60
	jmp	.LBB8_64
.LBB8_8:                                # %sw.bb.32
	testb	$-128, %cl
	jne	.LBB8_9
# BB#11:                                # %if.end.43
	testl	%r13d, %r13d
	je	.LBB8_13
# BB#12:                                # %if.then.46
	decl	%r13d
	movl	264(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	movq	64(%rsp), %rcx          # 8-byte Reload
	movl	%r13d, %r9d
	callq	obj_cvp
	jmp	.LBB8_92
.LBB8_9:                                # %sw.bb.i
	movq	192(%r14), %rax
	movq	120(%rax), %rdi
	leaq	96(%rsp), %rdx
	movq	%rbp, %rsi
.LBB8_10:                               # %nl
	callq	names_string_ref
	movq	104(%rsp), %rbx
	movl	100(%rsp), %ecx
	jmp	.LBB8_88
.LBB8_4:                                # %sw.bb.5
	movss	8(%rbp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 56(%rsp)         # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	leaq	144(%rsp), %rbx
	movl	$.L.str.9, %esi
	movb	$1, %al
	movq	%rbx, %rdi
	callq	gs_sprintf
	leaq	96(%rsp), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	movss	96(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	56(%rsp), %xmm0         # 4-byte Folded Reload
	jne	.LBB8_5
	jnp	.LBB8_86
.LBB8_5:                                # %if.then.13
	leaq	144(%rsp), %rdi
	movl	$.L.str.11, %esi
	movb	$1, %al
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gs_sprintf
	jmp	.LBB8_86
.LBB8_16:                               # %sw.bb.62
	testb	$32, %cl
	jne	.LBB8_17
.LBB8_45:                               # %cond.end.262
	movl	$-15, %eax
	cmpl	$20, %edx
	ja	.LBB8_92
# BB#46:                                # %if.end.268
	movl	$1174275, %ecx          # imm = 0x11EB03
	btq	%rdx, %rcx
	jb	.LBB8_92
# BB#47:
	movq	obj_cvp.type_strings(,%rdx,8), %rbx
	jmp	.LBB8_87
.LBB8_17:                               # %if.end.69
	movl	4(%rbp), %ecx
	cmpq	$200, %rcx
	seta	%dl
	movl	%ecx, 140(%rsp)
	cmpl	$1, %r8d
	sete	%bl
	testl	%r13d, %r13d
	je	.LBB8_18
# BB#20:                                # %if.else
	decl	%r13d
	movq	%r15, %rsi
	jmp	.LBB8_21
.LBB8_84:                               # %if.else.381
	cvtss2sd	%xmm0, %xmm0
	leaq	144(%rsp), %rdi
	movl	$.L.str.9, %esi
	movb	$1, %al
	callq	gs_sprintf
.LBB8_85:                               # %if.end.387
	leaq	144(%rsp), %rbx
.LBB8_86:                               # %rs
	movq	%rbx, %rdi
	callq	ensure_dot
.LBB8_87:                               # %rs
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rcx
.LBB8_88:                               # %nl
	movl	%ecx, 140(%rsp)
	movl	$-15, %eax
	movl	%ecx, %edx
	subl	%r13d, %edx
	jb	.LBB8_92
# BB#89:                                # %if.end.398
	cmpl	$0, 264(%rsp)
	jne	.LBB8_91
# BB#90:                                # %if.end.398
	cmpl	%r12d, %ecx
	ja	.LBB8_92
.LBB8_91:                               # %if.end.404
	movl	%edx, 140(%rsp)
	cmpl	%r12d, %edx
	cmovael	%r12d, %edx
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%edx, (%rax)
	movl	%r13d, %eax
	addq	%rax, %rbx
	movl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memmove
	cmpl	140(%rsp), %r12d
	sbbl	%eax, %eax
	andl	$1, %eax
.LBB8_92:                               # %cleanup.418
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_94:                               # %cleanup.i.198
	movl	$op_defs_all, %edx
	subl	%edx, %eax
	subl	%esi, %ecx
	shrl	$4, %ecx
	leal	(%rcx,%rax,2), %eax
	movzwl	%ax, %ebx
.LBB8_64:                               # %cond.end.326
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	get_op_array
	movq	192(%r14), %rcx
	movq	120(%rcx), %rdi
	subl	28(%rax), %ebx
	movq	16(%rax), %rax
	movzwl	(%rax,%rbx,2), %esi
	leaq	120(%rsp), %rbx
	movq	%rbx, %rdx
	callq	names_index_ref
	movq	192(%r14), %rax
	movq	120(%rax), %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	names_string_ref
	movzbl	121(%rsp), %ecx
	cmpl	$18, %ecx
	jne	.LBB8_65
# BB#67:                                # %do.body.i.152
	movq	120(%rsp), %rcx
	testb	$32, %cl
	movl	$-7, %eax
	je	.LBB8_92
# BB#68:                                # %do.end.i.154
	shrq	$32, %rcx
	movq	128(%rsp), %rbx
	jmp	.LBB8_88
.LBB8_65:                               # %cond.end.326
	movl	$-20, %eax
	cmpl	$13, %ecx
	jne	.LBB8_92
# BB#66:                                # %sw.bb.i.148
	movq	192(%r14), %rax
	movq	120(%rax), %rdi
	leaq	120(%rsp), %rsi
	leaq	96(%rsp), %rdx
	jmp	.LBB8_10
.LBB8_13:                               # %if.end.48
	movl	$-15, %eax
	testl	%r12d, %r12d
	je	.LBB8_92
# BB#14:                                # %if.end.52
	leaq	1(%r15), %rsi
	decl	%r12d
	movl	264(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movl	%r12d, %edx
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	obj_cvp
	testl	%eax, %eax
	js	.LBB8_92
# BB#15:                                # %if.end.59
	movb	$47, (%r15)
	incl	(%rbx)
	jmp	.LBB8_92
.LBB8_18:                               # %if.then.77
	movl	$-15, %eax
	testl	%r12d, %r12d
	je	.LBB8_92
# BB#19:                                # %if.end.81
	movb	$40, (%r15)
	leaq	1(%r15), %rsi
	xorl	%r13d, %r13d
.LBB8_21:                               # %if.end.85
	andb	%dl, %bl
	movb	%bl, 48(%rsp)           # 1-byte Spill
	movl	%r12d, %edi
	movq	8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, 96(%rsp)
	testb	%bl, %bl
	movl	$200, %edx
	cmovneq	%rdx, %rcx
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, 104(%rsp)
	testl	%r13d, %r13d
	je	.LBB8_22
# BB#23:                                # %while.body.lr.ph
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leal	(%r12,%r15), %eax
	movq	%r15, 32(%rsp)          # 8-byte Spill
	subl	%esi, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	leaq	143(%rsp), %r15
.LBB8_24:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, 80(%rsp)
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	(%r13,%rax), %eax
	cmpl	$50, %eax
	movl	$50, %ecx
	cmovael	%ecx, %eax
	movl	%eax, %eax
	leaq	(%rax,%r15), %rax
	movq	%rax, 88(%rsp)
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	leaq	96(%rsp), %rsi
	leaq	72(%rsp), %rdx
	callq	*s_PSSE_template+16(%rip)
	movl	%eax, %ebp
	movl	80(%rsp), %ebx
	subl	%r15d, %ebx
	movl	%r13d, %r14d
	subl	%ebx, %r14d
	jb	.LBB8_28
# BB#25:                                # %cleanup.thread
                                        #   in Loop: Header=BB8_24 Depth=1
	cmpl	$1, %ebp
	jne	.LBB8_26
# BB#27:                                # %cleanup.thread
                                        #   in Loop: Header=BB8_24 Depth=1
	cmpl	%ebx, %r13d
	movl	%r14d, %r13d
	jne	.LBB8_24
.LBB8_26:
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB8_29
.LBB8_22:                               # %while.end.thread
	leaq	80(%rsp), %rbx
	decq	%rsi
	movq	%rsi, 80(%rsp)
	leaq	-1(%r15,%rdi), %rax
	decq	%r15
	movq	%rax, 88(%rsp)
	xorl	%r14d, %r14d
	movq	64(%rsp), %r13          # 8-byte Reload
	jmp	.LBB8_30
.LBB8_28:                               # %cleanup
	subl	%r13d, %ebx
	movl	%r13d, %eax
	leaq	144(%rsp,%rax), %rsi
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r14, %rdx
	addq	%rbx, %rdx
	xorl	%r14d, %r14d
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	32(%rsp), %r15          # 8-byte Reload
.LBB8_29:                               # %while.end
	decq	%rdx
	movq	%rdx, 80(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	-1(%r15,%rax), %rax
	decq	%r15
	movq	%rax, 88(%rsp)
	cmpl	$1, %ebp
	leaq	80(%rsp), %rbx
	jne	.LBB8_31
.LBB8_30:                               # %if.then.153
	leaq	96(%rsp), %rsi
	leaq	72(%rsp), %rdx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	callq	*s_PSSE_template+16(%rip)
	movl	%eax, %ebp
	movq	(%rbx), %rdx
.LBB8_31:                               # %if.end.155
	movq	%rdx, %rcx
	subl	%r15d, %ecx
	movl	%ecx, (%r13)
	movl	$1, %eax
	testl	%ebp, %ebp
	jne	.LBB8_92
# BB#32:                                # %if.end.165
	movq	%r13, %r15
	subl	%ecx, %r12d
	cmpb	$0, 48(%rsp)            # 1-byte Folded Reload
	je	.LBB8_35
# BB#33:                                # %if.then.167
	movl	$4, %ebx
	subl	%r14d, %ebx
	cmpl	%ebx, %r12d
	jb	.LBB8_92
# BB#34:                                # %if.end.173
	incq	%rdx
	movl	%r14d, %eax
	movq	%rdx, %rdi
	leaq	.L.str.13(%rax), %rsi
	jmp	.LBB8_37
.LBB8_35:                               # %if.else.183
	movl	$1, %eax
	movl	$1, %ebx
	subl	%r14d, %ebx
	cmpl	%ebx, %r12d
	jb	.LBB8_92
# BB#36:                                # %if.end.189
	incq	%rdx
	movl	%r14d, %eax
	movq	%rdx, %rdi
	leaq	.L.str.14(%rax), %rsi
.LBB8_37:                               # %if.end.199
	movl	%ebx, %edx
	callq	memcpy
	addl	(%r15), %ebx
	movl	%ebx, (%r15)
	xorl	%eax, %eax
	jmp	.LBB8_92
.Lfunc_end8:
	.size	obj_cvp, .Lfunc_end8-obj_cvp
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_49
	.quad	.LBB8_45
	.quad	.LBB8_45
	.quad	.LBB8_45
	.quad	.LBB8_45
	.quad	.LBB8_45
	.quad	.LBB8_45
	.quad	.LBB8_38
	.quad	.LBB8_38
	.quad	.LBB8_45
	.quad	.LBB8_49
	.quad	.LBB8_45
	.quad	.LBB8_8
	.quad	.LBB8_87
	.quad	.LBB8_6
	.quad	.LBB8_4
	.quad	.LBB8_45
	.quad	.LBB8_16
	.quad	.LBB8_45
	.quad	.LBB8_6
.LJTI8_1:
	.quad	.LBB8_53
	.quad	.LBB8_87
	.quad	.LBB8_9
	.quad	.LBB8_87
	.quad	.LBB8_69
	.quad	.LBB8_82
	.quad	.LBB8_87
	.quad	.LBB8_55
	.quad	.LBB8_87
	.quad	.LBB8_57

	.text
	.align	16, 0x90
	.type	ensure_dot,@function
ensure_dot:                             # @ensure_dot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp46:
	.cfi_def_cfa_offset 32
.Ltmp47:
	.cfi_offset %rbx, -24
.Ltmp48:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movl	$101, %esi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB9_5
# BB#1:                                 # %if.then
	incq	%rbx
	leaq	4(%rsp), %rdx
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	movl	4(%rsp), %edx
	testl	%edx, %edx
	js	.LBB9_4
# BB#2:                                 # %if.then.2
	movl	$.L.str.27, %esi
	jmp	.LBB9_3
.LBB9_5:                                # %if.else.7
	movl	$46, %esi
	movq	%r14, %rdi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB9_6
# BB#7:                                 # %if.then.10
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	strcat                  # TAILCALL
.LBB9_4:                                # %if.else
	negl	%edx
	movl	$.L.str.28, %esi
.LBB9_3:                                # %if.end.13
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
.LBB9_6:                                # %if.end.13
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	ensure_dot, .Lfunc_end9-ensure_dot
	.cfi_endproc

	.globl	obj_cvs
	.align	16, 0x90
	.type	obj_cvs,@function
obj_cvs:                                # @obj_cvs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 96
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rdx, %rbp
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	%r13, (%rsp)
	movl	$0, 8(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%ecx, %edx
	movq	%r15, %rcx
	callq	obj_cvp
	movl	%eax, %ebx
	cmpl	$1, %ebx
	jne	.LBB10_7
# BB#1:                                 # %if.then
	movl	$-15, %ebx
	testq	%r14, %r14
	je	.LBB10_9
# BB#2:                                 # %if.then.1
	movzbl	1(%r12), %eax
	cmpl	$18, %eax
	jne	.LBB10_3
# BB#5:                                 # %do.body.i
	testb	$32, (%r12)
	je	.LBB10_9
# BB#6:                                 # %do.end.i
	movq	8(%r12), %rax
	movq	%rax, (%r14)
	movl	4(%r12), %eax
	movl	%eax, (%r15)
	jmp	.LBB10_9
.LBB10_7:                               # %if.else
	testq	%r14, %r14
	je	.LBB10_9
# BB#8:                                 # %if.then.4
	movq	%rbp, (%r14)
	jmp	.LBB10_9
.LBB10_3:                               # %if.then.1
	cmpl	$13, %eax
	jne	.LBB10_9
# BB#4:                                 # %sw.bb.i
	movq	192(%r13), %rax
	movq	120(%rax), %rdi
	leaq	24(%rsp), %rdx
	movq	%r12, %rsi
	callq	names_string_ref
	movq	32(%rsp), %rax
	movq	%rax, (%r14)
	movl	28(%rsp), %eax
	movl	%eax, (%r15)
.LBB10_9:                               # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	obj_cvs, .Lfunc_end10-obj_cvs
	.cfi_endproc

	.globl	op_index_ref
	.align	16, 0x90
	.type	op_index_ref,@function
op_index_ref:                           # @op_index_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %ebp
	cmpl	%ebp, op_def_count(%rip)
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movl	%ebp, %eax
	andl	$15, %eax
	movl	%ebp, %ecx
	shrl	$4, %ecx
	movq	op_defs_all(,%rcx,8), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, 8(%rbx)
	movw	$3968, %cx              # imm = 0xF80
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movl	%ebp, %esi
	callq	get_op_array
	movl	%ebp, %ecx
	shlq	$4, %rcx
	addq	8(%rax), %rcx
	movl	28(%rax), %edx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 8(%rbx)
	movl	$5120, %ecx             # imm = 0x1400
	addl	32(%rax), %ecx
.LBB11_3:                               # %cleanup
	movw	%cx, (%rbx)
	movl	%ebp, 4(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	op_index_ref, .Lfunc_end11-op_index_ref
	.cfi_endproc

	.globl	array_get
	.align	16, 0x90
	.type	array_get,@function
array_get:                              # @array_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 16
	movl	4(%rsi), %r8d
	movl	$-15, %eax
	cmpq	%rdx, %r8
	jbe	.LBB12_29
# BB#1:                                 # %if.end
	movzbl	1(%rsi), %r8d
	cmpl	$6, %r8d
	je	.LBB12_26
# BB#2:                                 # %if.end
	cmpl	$5, %r8d
	jne	.LBB12_3
# BB#5:                                 # %sw.bb.4
	movq	8(%rsi), %rsi
	testl	%edx, %edx
	je	.LBB12_27
# BB#6:                                 # %for.body.preheader
	leal	-1(%rdx), %r8d
	testb	$3, %dl
	je	.LBB12_12
# BB#7:                                 # %for.body.prol.preheader
	movl	%edx, %r9d
	andl	$3, %r9d
	negl	%r9d
	.align	16, 0x90
.LBB12_8:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB12_10
# BB#9:                                 #   in Loop: Header=BB12_8 Depth=1
	addq	$2, %rsi
	jmp	.LBB12_11
	.align	16, 0x90
.LBB12_10:                              # %select.mid
                                        #   in Loop: Header=BB12_8 Depth=1
	addq	$16, %rsi
.LBB12_11:                              # %select.end
                                        #   in Loop: Header=BB12_8 Depth=1
	decl	%edx
	incl	%r9d
	jne	.LBB12_8
.LBB12_12:                              # %for.body.preheader.split
	cmpl	$3, %r8d
	jb	.LBB12_27
	.align	16, 0x90
.LBB12_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB12_15
# BB#14:                                #   in Loop: Header=BB12_13 Depth=1
	addq	$2, %rsi
	jmp	.LBB12_16
	.align	16, 0x90
.LBB12_15:                              # %select.mid21
                                        #   in Loop: Header=BB12_13 Depth=1
	addq	$16, %rsi
.LBB12_16:                              # %select.end20
                                        #   in Loop: Header=BB12_13 Depth=1
	movzwl	(%rsi), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB12_18
# BB#17:                                #   in Loop: Header=BB12_13 Depth=1
	addq	$2, %rsi
	jmp	.LBB12_19
	.align	16, 0x90
.LBB12_18:                              # %select.mid23
                                        #   in Loop: Header=BB12_13 Depth=1
	addq	$16, %rsi
.LBB12_19:                              # %select.end22
                                        #   in Loop: Header=BB12_13 Depth=1
	movzwl	(%rsi), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB12_21
# BB#20:                                #   in Loop: Header=BB12_13 Depth=1
	addq	$2, %rsi
	jmp	.LBB12_22
	.align	16, 0x90
.LBB12_21:                              # %select.mid25
                                        #   in Loop: Header=BB12_13 Depth=1
	addq	$16, %rsi
.LBB12_22:                              # %select.end24
                                        #   in Loop: Header=BB12_13 Depth=1
	addl	$-4, %edx
	movzwl	(%rsi), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB12_24
# BB#23:                                #   in Loop: Header=BB12_13 Depth=1
	addq	$2, %rsi
	jmp	.LBB12_25
	.align	16, 0x90
.LBB12_24:                              # %select.mid27
                                        #   in Loop: Header=BB12_13 Depth=1
	addq	$16, %rsi
.LBB12_25:                              # %select.end26
                                        #   in Loop: Header=BB12_13 Depth=1
	testl	%edx, %edx
	jne	.LBB12_13
	jmp	.LBB12_27
.LBB12_26:                              # %sw.bb.13
	movq	8(%rsi), %rax
	leaq	(%rax,%rdx,2), %rsi
.LBB12_27:                              # %return
	movq	%rcx, %rdx
	callq	packed_get
	jmp	.LBB12_28
.LBB12_3:                               # %if.end
	movl	$-20, %eax
	cmpl	$4, %r8d
	jne	.LBB12_29
# BB#4:                                 # %sw.bb
	movq	8(%rsi), %rax
	shlq	$4, %rdx
	movups	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rcx)
.LBB12_28:                              # %return
	xorl	%eax, %eax
.LBB12_29:                              # %return
	popq	%rdx
	retq
.Lfunc_end12:
	.size	array_get, .Lfunc_end12-array_get
	.cfi_endproc

	.globl	packed_get
	.align	16, 0x90
	.type	packed_get,@function
packed_get:                             # @packed_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movzwl	(%rsi), %eax
	movl	%eax, %ecx
	shrl	$13, %ecx
	cmpl	$7, %ecx
	ja	.LBB13_2
# BB#1:                                 # %entry
	movl	%eax, %ebp
	andl	$4095, %ebp             # imm = 0xFFF
	jmpq	*.LJTI13_0(,%rcx,8)
.LBB13_10:                              # %sw.bb.15
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rbx)
	jmp	.LBB13_11
.LBB13_2:                               # %sw.default
	movw	$3584, (%rbx)           # imm = 0xE00
.LBB13_11:                              # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB13_3:                               # %sw.bb
	cmpl	%ebp, op_def_count(%rip)
	jbe	.LBB13_5
# BB#4:                                 # %if.then.i
	andl	$15, %eax
	movl	%ebp, %ecx
	shrl	$4, %ecx
	movq	op_defs_all(,%rcx,8), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, 8(%rbx)
	movw	$3968, %cx              # imm = 0xF80
	jmp	.LBB13_6
.LBB13_7:                               # %sw.bb.2
	movl	%ebp, %eax
	addq	$-2048, %rax            # imm = 0xFFFFFFFFFFFFF800
	movq	%rax, 8(%rbx)
	movw	$2816, (%rbx)           # imm = 0xB00
	jmp	.LBB13_11
.LBB13_8:                               # %sw.bb.7
	movq	192(%rdi), %rax
	movq	120(%rax), %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	names_index_ref         # TAILCALL
.LBB13_9:                               # %sw.bb.8
	movq	192(%rdi), %rax
	movq	120(%rax), %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	callq	names_index_ref
	orb	$-128, (%rbx)
	jmp	.LBB13_11
.LBB13_5:                               # %if.end.i
	movl	%ebp, %esi
	callq	get_op_array
	movl	%ebp, %ecx
	shlq	$4, %rcx
	addq	8(%rax), %rcx
	movl	28(%rax), %edx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 8(%rbx)
	movl	$5120, %ecx             # imm = 0x1400
	addl	32(%rax), %ecx
.LBB13_6:                               # %op_index_ref.exit
	movw	%cx, (%rbx)
	movl	%ebp, 4(%rbx)
	jmp	.LBB13_11
.Lfunc_end13:
	.size	packed_get, .Lfunc_end13-packed_get
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_10
	.quad	.LBB13_10
	.quad	.LBB13_3
	.quad	.LBB13_7
	.quad	.LBB13_2
	.quad	.LBB13_2
	.quad	.LBB13_8
	.quad	.LBB13_9

	.text
	.globl	string_to_ref
	.align	16, 0x90
	.type	string_to_ref,@function
string_to_ref:                          # @string_to_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp75:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 48
.Ltmp78:
	.cfi_offset %rbx, -48
.Ltmp79:
	.cfi_offset %r12, -40
.Ltmp80:
	.cfi_offset %r13, -32
.Ltmp81:
	.cfi_offset %r14, -24
.Ltmp82:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	strlen
	movq	%rax, %rbx
	movl	$112, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%ebx, %ecx
	movq	%r12, %r8
	callq	gs_alloc_string_ref
	testl	%eax, %eax
	js	.LBB14_2
# BB#1:                                 # %if.end
	movq	8(%r15), %rdi
	movl	%ebx, %edx
	movq	%r14, %rsi
	callq	memcpy
	xorl	%eax, %eax
.LBB14_2:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	string_to_ref, .Lfunc_end14-string_to_ref
	.cfi_endproc

	.globl	ref_to_string
	.align	16, 0x90
	.type	ref_to_string,@function
ref_to_string:                          # @ref_to_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 32
.Ltmp86:
	.cfi_offset %rbx, -32
.Ltmp87:
	.cfi_offset %r14, -24
.Ltmp88:
	.cfi_offset %r15, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movl	4(%r14), %r15d
	leal	1(%r15), %esi
	movq	%rax, %rdi
	callq	*136(%rax)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB15_2
# BB#1:                                 # %if.end
	movq	8(%r14), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, (%rbx,%r15)
	movq	%rbx, %rax
.LBB15_2:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	ref_to_string, .Lfunc_end15-ref_to_string
	.cfi_endproc

	.globl	num_params
	.align	16, 0x90
	.type	num_params,@function
num_params:                             # @num_params
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%r8d, %r8d
	testl	%esi, %esi
	movl	$0, %ecx
	jle	.LBB16_9
# BB#1:                                 # %while.body.lr.ph
	movslq	%esi, %rax
	leaq	(%rdx,%rax,8), %r9
	incl	%esi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	$-17, %eax
	.align	16, 0x90
.LBB16_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addl	%ecx, %ecx
	movzbl	-7(%rdi), %edx
	cmpl	$11, %edx
	je	.LBB16_7
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB16_2 Depth=1
	cmpl	$16, %edx
	jne	.LBB16_4
# BB#6:                                 # %sw.bb
                                        #   in Loop: Header=BB16_2 Depth=1
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -8(%r9)
	addq	$-8, %r9
	jmp	.LBB16_8
	.align	16, 0x90
.LBB16_7:                               # %sw.bb.2
                                        #   in Loop: Header=BB16_2 Depth=1
	cvtsi2sdq	(%rdi), %xmm0
	movsd	%xmm0, -8(%r9)
	addq	$-8, %r9
	orl	$1, %ecx
.LBB16_8:                               # %sw.epilog
                                        #   in Loop: Header=BB16_2 Depth=1
	decl	%esi
	addq	$-16, %rdi
	cmpl	$1, %esi
	jg	.LBB16_2
.LBB16_9:                               # %while.end
	testl	%ecx, %ecx
	cmovnsl	%ecx, %r8d
	movl	%r8d, %eax
.LBB16_10:                              # %cleanup
	retq
.LBB16_4:                               # %while.body
	testl	%edx, %edx
	je	.LBB16_10
# BB#5:                                 # %cleanup.loopexit19
	movl	$-20, %eax
	retq
.Lfunc_end16:
	.size	num_params, .Lfunc_end16-num_params
	.cfi_endproc

	.globl	float_params
	.align	16, 0x90
	.type	float_params,@function
float_params:                           # @float_params
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%esi, %esi
	jle	.LBB17_9
# BB#1:                                 # %for.body.lr.ph
	movslq	%esi, %rcx
	leaq	(%rdx,%rcx,4), %rcx
	incl	%esi
	addq	$8, %rdi
	.align	16, 0x90
.LBB17_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-7(%rdi), %edx
	cmpl	$11, %edx
	je	.LBB17_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB17_2 Depth=1
	cmpl	$16, %edx
	jne	.LBB17_4
# BB#6:                                 # %sw.bb
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	(%rdi), %edx
	movl	%edx, -4(%rcx)
	jmp	.LBB17_8
	.align	16, 0x90
.LBB17_7:                               # %sw.bb.1
                                        #   in Loop: Header=BB17_2 Depth=1
	cvtsi2ssq	(%rdi), %xmm0
	movss	%xmm0, -4(%rcx)
.LBB17_8:                               # %for.inc
                                        #   in Loop: Header=BB17_2 Depth=1
	addq	$-4, %rcx
	decl	%esi
	addq	$-16, %rdi
	cmpl	$1, %esi
	jg	.LBB17_2
	jmp	.LBB17_9
.LBB17_4:                               # %for.body
	movl	$-17, %eax
	testl	%edx, %edx
	jne	.LBB17_5
.LBB17_9:                               # %return
	retq
.LBB17_5:                               # %return.loopexit14
	movl	$-20, %eax
	retq
.Lfunc_end17:
	.size	float_params, .Lfunc_end17-float_params
	.cfi_endproc

	.globl	process_float_array
	.align	16, 0x90
	.type	process_float_array,@function
process_float_array:                    # @process_float_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp92:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp93:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 56
	subq	$392, %rsp              # imm = 0x188
.Ltmp95:
	.cfi_def_cfa_offset 448
.Ltmp96:
	.cfi_offset %rbx, -56
.Ltmp97:
	.cfi_offset %r12, -48
.Ltmp98:
	.cfi_offset %r13, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movzbl	1(%rbx), %eax
	cmpl	$4, %eax
	jne	.LBB18_1
# BB#5:                                 # %if.then
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.LBB18_59
# BB#6:                                 # %for.body.lr.ph.i
	movslq	%edx, %rdi
	movq	8(%rbx), %rsi
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rdi,4), %rcx
	incl	%edx
	shlq	$4, %rdi
	leaq	-8(%rsi,%rdi), %rdi
	.align	16, 0x90
.LBB18_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-7(%rdi), %esi
	cmpl	$11, %esi
	je	.LBB18_12
# BB#8:                                 # %for.body.i
                                        #   in Loop: Header=BB18_7 Depth=1
	cmpl	$16, %esi
	jne	.LBB18_9
# BB#11:                                # %sw.bb.i
                                        #   in Loop: Header=BB18_7 Depth=1
	movl	(%rdi), %esi
	movl	%esi, -4(%rcx)
	jmp	.LBB18_13
	.align	16, 0x90
.LBB18_12:                              # %sw.bb.1.i
                                        #   in Loop: Header=BB18_7 Depth=1
	cvtsi2ssq	(%rdi), %xmm0
	movss	%xmm0, -4(%rcx)
.LBB18_13:                              # %for.inc.i
                                        #   in Loop: Header=BB18_7 Depth=1
	addq	$-4, %rcx
	decl	%edx
	addq	$-16, %rdi
	cmpl	$1, %edx
	jg	.LBB18_7
	jmp	.LBB18_59
.LBB18_1:                               # %while.cond.preheader
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.LBB18_59
# BB#2:                                 # %while.body.lr.ph
	xorl	%esi, %esi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB18_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_16 Depth 2
                                        #       Child Loop BB18_24 Depth 3
                                        #       Child Loop BB18_29 Depth 3
                                        #     Child Loop BB18_50 Depth 2
	movslq	%edx, %r12
	cmpq	$20, %r12
	movq	%r12, %rdi
	movl	$20, %ecx
	cmovaq	%rcx, %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	%edx, %ebp
	movl	$20, %ecx
	cmoval	%ecx, %ebp
	testl	%eax, %eax
	setns	%cl
	js	.LBB18_4
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	%edx, 28(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	jle	.LBB18_46
# BB#15:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movslq	%esi, %r13
	movl	%esi, 32(%rsp)          # 4-byte Spill
	movl	%r13d, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leal	-1(%r13), %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movb	%r13b, %r15b
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB18_16:                              # %for.body
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_24 Depth 3
                                        #       Child Loop BB18_29 Depth 3
	leaq	(%r14,%r13), %rcx
	movl	4(%rbx), %edx
	movl	$-15, %eax
	cmpq	%rcx, %rdx
	jbe	.LBB18_57
# BB#17:                                # %if.end.i
                                        #   in Loop: Header=BB18_16 Depth=2
	movq	%r14, %rax
	shlq	$4, %rax
	leaq	64(%rsp,%rax), %rdx
	movzbl	1(%rbx), %esi
	cmpl	$6, %esi
	je	.LBB18_43
# BB#18:                                # %if.end.i
                                        #   in Loop: Header=BB18_16 Depth=2
	cmpl	$5, %esi
	jne	.LBB18_19
# BB#21:                                # %sw.bb.4.i
                                        #   in Loop: Header=BB18_16 Depth=2
	movq	8(%rbx), %rsi
	testl	%ecx, %ecx
	je	.LBB18_42
# BB#22:                                # %for.body.i.58.preheader
                                        #   in Loop: Header=BB18_16 Depth=2
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r14), %edi
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	(%rax,%r14), %eax
	testb	$3, %dil
	je	.LBB18_28
# BB#23:                                #   in Loop: Header=BB18_16 Depth=2
	movzbl	%r15b, %edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB18_24:                              # %for.body.i.58.prol
                                        #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rsi), %ebp
	cmpl	$16383, %ebp            # imm = 0x3FFF
	jbe	.LBB18_26
# BB#25:                                #   in Loop: Header=BB18_24 Depth=3
	addq	$2, %rsi
	jmp	.LBB18_27
	.align	16, 0x90
.LBB18_26:                              # %select.mid
                                        #   in Loop: Header=BB18_24 Depth=3
	addq	$16, %rsi
.LBB18_27:                              # %select.end
                                        #   in Loop: Header=BB18_24 Depth=3
	decl	%ecx
	incl	%edi
	jne	.LBB18_24
.LBB18_28:                              # %for.body.i.58.preheader.split
                                        #   in Loop: Header=BB18_16 Depth=2
	cmpl	$3, %eax
	jb	.LBB18_42
	.align	16, 0x90
.LBB18_29:                              # %for.body.i.58
                                        #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rsi), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB18_31
# BB#30:                                #   in Loop: Header=BB18_29 Depth=3
	addq	$2, %rsi
	jmp	.LBB18_32
	.align	16, 0x90
.LBB18_31:                              # %select.mid127
                                        #   in Loop: Header=BB18_29 Depth=3
	addq	$16, %rsi
.LBB18_32:                              # %select.end126
                                        #   in Loop: Header=BB18_29 Depth=3
	movzwl	(%rsi), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB18_34
# BB#33:                                #   in Loop: Header=BB18_29 Depth=3
	addq	$2, %rsi
	jmp	.LBB18_35
	.align	16, 0x90
.LBB18_34:                              # %select.mid132
                                        #   in Loop: Header=BB18_29 Depth=3
	addq	$16, %rsi
.LBB18_35:                              # %select.end131
                                        #   in Loop: Header=BB18_29 Depth=3
	movzwl	(%rsi), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB18_37
# BB#36:                                #   in Loop: Header=BB18_29 Depth=3
	addq	$2, %rsi
	jmp	.LBB18_38
	.align	16, 0x90
.LBB18_37:                              # %select.mid134
                                        #   in Loop: Header=BB18_29 Depth=3
	addq	$16, %rsi
.LBB18_38:                              # %select.end133
                                        #   in Loop: Header=BB18_29 Depth=3
	addl	$-4, %ecx
	movzwl	(%rsi), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB18_40
# BB#39:                                #   in Loop: Header=BB18_29 Depth=3
	addq	$2, %rsi
	jmp	.LBB18_41
	.align	16, 0x90
.LBB18_40:                              # %select.mid136
                                        #   in Loop: Header=BB18_29 Depth=3
	addq	$16, %rsi
.LBB18_41:                              # %select.end135
                                        #   in Loop: Header=BB18_29 Depth=3
	testl	%ecx, %ecx
	jne	.LBB18_29
.LBB18_42:                              # %for.end.i
                                        #   in Loop: Header=BB18_16 Depth=2
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	packed_get
	movq	48(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB18_44
	.align	16, 0x90
.LBB18_43:                              # %sw.bb.13.i
                                        #   in Loop: Header=BB18_16 Depth=2
	movq	8(%rbx), %rax
	leaq	(%rax,%rcx,2), %rsi
	movq	%rdi, %rbp
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	packed_get
	movq	%rbp, %rdi
	jmp	.LBB18_44
	.align	16, 0x90
.LBB18_19:                              # %if.end.i
                                        #   in Loop: Header=BB18_16 Depth=2
	movl	$-20, %eax
	cmpl	$4, %esi
	jne	.LBB18_57
# BB#20:                                # %sw.bb.i.57
                                        #   in Loop: Header=BB18_16 Depth=2
	movq	8(%rbx), %rax
	shlq	$4, %rcx
	movups	(%rax,%rcx), %xmm0
	movups	%xmm0, (%rdx)
.LBB18_44:                              # %array_get.exit
                                        #   in Loop: Header=BB18_16 Depth=2
	incq	%r14
	incb	%r15b
	cmpq	%rdi, %r14
	jl	.LBB18_16
# BB#45:                                #   in Loop: Header=BB18_3 Depth=1
	xorl	%eax, %eax
	movb	$1, %cl
	movl	32(%rsp), %esi          # 4-byte Reload
	movl	36(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB18_46
	.align	16, 0x90
.LBB18_4:                               #   in Loop: Header=BB18_3 Depth=1
	movl	%edx, 28(%rsp)          # 4-byte Spill
.LBB18_46:                              # %for.end
                                        #   in Loop: Header=BB18_3 Depth=1
	testb	%cl, %cl
	movl	$0, %ecx
	cmovnel	%ecx, %eax
	je	.LBB18_47
# BB#48:                                # %for.end
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	%esi, 32(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	jle	.LBB18_57
# BB#49:                                # %for.body.lr.ph.i.29
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdi,4), %rcx
	notq	%r12
	cmpq	$-21, %r12
	movq	$-21, %rax
	cmovaq	%r12, %rax
	movl	$-21, %edx
	cmovbel	%edx, %r12d
	notl	%r12d
	incl	%r12d
	shlq	$4, %rax
	leaq	40(%rsp), %rdx
	subq	%rax, %rdx
	.align	16, 0x90
.LBB18_50:                              # %for.body.i.36
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-7(%rdx), %esi
	cmpl	$11, %esi
	je	.LBB18_55
# BB#51:                                # %for.body.i.36
                                        #   in Loop: Header=BB18_50 Depth=2
	cmpl	$16, %esi
	jne	.LBB18_52
# BB#54:                                # %sw.bb.i.39
                                        #   in Loop: Header=BB18_50 Depth=2
	movl	(%rdx), %eax
	movl	%eax, -4(%rcx)
	jmp	.LBB18_56
	.align	16, 0x90
.LBB18_55:                              # %sw.bb.1.i.43
                                        #   in Loop: Header=BB18_50 Depth=2
	cvtsi2ssq	(%rdx), %xmm0
	movss	%xmm0, -4(%rcx)
.LBB18_56:                              # %for.inc.i.47
                                        #   in Loop: Header=BB18_50 Depth=2
	addq	$-4, %rcx
	decl	%r12d
	addq	$-16, %rdx
	xorl	%eax, %eax
	cmpl	$1, %r12d
	jg	.LBB18_50
	jmp	.LBB18_57
.LBB18_47:                              #   in Loop: Header=BB18_3 Depth=1
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movl	%esi, 32(%rsp)          # 4-byte Spill
	jmp	.LBB18_57
.LBB18_52:                              # %for.body.i.36
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	$-17, %eax
	testl	%esi, %esi
	je	.LBB18_57
# BB#53:                                # %if.end.28.loopexit87
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	$-20, %eax
	.align	16, 0x90
.LBB18_57:                              # %if.end.28
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	28(%rsp), %edx          # 4-byte Reload
	movl	36(%rsp), %ecx          # 4-byte Reload
	subl	%ecx, %edx
	jle	.LBB18_59
# BB#58:                                # %if.end.28
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	32(%rsp), %esi          # 4-byte Reload
	addl	%ecx, %esi
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rdi,4), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jns	.LBB18_3
	jmp	.LBB18_59
.LBB18_9:                               # %for.body.i
	movl	$-17, %eax
	testl	%esi, %esi
	je	.LBB18_59
# BB#10:                                # %cleanup.loopexit86
	movl	$-20, %eax
.LBB18_59:                              # %cleanup
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	process_float_array, .Lfunc_end18-process_float_array
	.cfi_endproc

	.globl	real_param
	.align	16, 0x90
	.type	real_param,@function
real_param:                             # @real_param
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	1(%rdi), %ecx
	testl	%ecx, %ecx
	movl	$-17, %eax
	je	.LBB19_7
# BB#1:                                 # %entry
	cmpl	$16, %ecx
	jne	.LBB19_2
# BB#5:                                 # %sw.bb.2
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	jmp	.LBB19_6
.LBB19_2:                               # %entry
	cmpl	$11, %ecx
	jne	.LBB19_4
# BB#3:                                 # %sw.bb
	cvtsi2sdq	8(%rdi), %xmm0
.LBB19_6:                               # %sw.epilog
	movsd	%xmm0, (%rsi)
	xorl	%eax, %eax
.LBB19_7:                               # %return
	retq
.LBB19_4:                               # %sw.default
	movl	$-20, %eax
	retq
.Lfunc_end19:
	.size	real_param, .Lfunc_end19-real_param
	.cfi_endproc

	.globl	float_param
	.align	16, 0x90
	.type	float_param,@function
float_param:                            # @float_param
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	1(%rdi), %ecx
	testl	%ecx, %ecx
	movl	$-17, %eax
	je	.LBB20_7
# BB#1:                                 # %entry
	cmpl	$16, %ecx
	jne	.LBB20_2
# BB#5:                                 # %sw.bb.2.i
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	jmp	.LBB20_6
.LBB20_2:                               # %entry
	cmpl	$11, %ecx
	jne	.LBB20_4
# BB#3:                                 # %sw.bb.i
	cvtsi2sdq	8(%rdi), %xmm0
.LBB20_6:                               # %if.then
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsi)
	xorl	%eax, %eax
.LBB20_7:                               # %if.end
	retq
.LBB20_4:                               # %sw.default.i
	movl	$-20, %eax
	retq
.Lfunc_end20:
	.size	float_param, .Lfunc_end20-float_param
	.cfi_endproc

	.globl	int_param
	.align	16, 0x90
	.type	int_param,@function
int_param:                              # @int_param
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB21_1
# BB#2:                                 # %if.end
	movq	8(%rdi), %rcx
	movslq	%esi, %rsi
	movl	$-15, %eax
	cmpq	%rsi, %rcx
	ja	.LBB21_4
# BB#3:                                 # %do.end
	movl	%ecx, (%rdx)
	xorl	%eax, %eax
.LBB21_4:                               # %return
	retq
.LBB21_1:                               # %if.then
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	leal	-20(%rax,%rax,2), %eax
	retq
.Lfunc_end21:
	.size	int_param, .Lfunc_end21-int_param
	.cfi_endproc

	.globl	check_type_failed
	.align	16, 0x90
	.type	check_type_failed,@function
check_type_failed:                      # @check_type_failed
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-17, %eax
	cmpb	$0, 1(%rdi)
	je	.LBB22_2
# BB#1:                                 # %select.mid
	movl	$-20, %eax
.LBB22_2:                               # %select.end
	retq
.Lfunc_end22:
	.size	check_type_failed, .Lfunc_end22-check_type_failed
	.cfi_endproc

	.globl	make_reals
	.align	16, 0x90
	.type	make_reals,@function
make_reals:                             # @make_reals
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	je	.LBB23_7
# BB#1:                                 # %for.body.preheader
	leal	-1(%rdx), %eax
	testb	$3, %dl
	je	.LBB23_4
# BB#2:                                 # %for.body.prol.preheader
	movl	%edx, %ecx
	andl	$3, %ecx
	negl	%ecx
	.align	16, 0x90
.LBB23_3:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	decl	%edx
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rdi)
	movw	$4096, (%rdi)           # imm = 0x1000
	addq	$16, %rdi
	addq	$8, %rsi
	incl	%ecx
	jne	.LBB23_3
.LBB23_4:                               # %for.body.preheader.split
	cmpl	$3, %eax
	jb	.LBB23_7
# BB#5:                                 # %for.body.preheader.split.split
	addq	$56, %rdi
	.align	16, 0x90
.LBB23_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -48(%rdi)
	movw	$4096, -56(%rdi)        # imm = 0x1000
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rdi)
	movw	$4096, -40(%rdi)        # imm = 0x1000
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -16(%rdi)
	movw	$4096, -24(%rdi)        # imm = 0x1000
	addl	$-4, %edx
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	leaq	32(%rsi), %rsi
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rdi)
	movw	$4096, -8(%rdi)         # imm = 0x1000
	leaq	64(%rdi), %rdi
	jne	.LBB23_6
.LBB23_7:                               # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	make_reals, .Lfunc_end23-make_reals
	.cfi_endproc

	.globl	make_floats
	.align	16, 0x90
	.type	make_floats,@function
make_floats:                            # @make_floats
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	je	.LBB24_7
# BB#1:                                 # %for.body.preheader
	leal	-1(%rdx), %r8d
	testb	$3, %dl
	je	.LBB24_4
# BB#2:                                 # %for.body.prol.preheader
	movl	%edx, %ecx
	andl	$3, %ecx
	negl	%ecx
	.align	16, 0x90
.LBB24_3:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	decl	%edx
	movl	(%rsi), %eax
	movl	%eax, 8(%rdi)
	movw	$4096, (%rdi)           # imm = 0x1000
	addq	$16, %rdi
	addq	$4, %rsi
	incl	%ecx
	jne	.LBB24_3
.LBB24_4:                               # %for.body.preheader.split
	cmpl	$3, %r8d
	jb	.LBB24_7
# BB#5:                                 # %for.body.preheader.split.split
	addq	$56, %rdi
	.align	16, 0x90
.LBB24_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %eax
	movl	%eax, -48(%rdi)
	movw	$4096, -56(%rdi)        # imm = 0x1000
	movl	4(%rsi), %eax
	movl	%eax, -32(%rdi)
	movw	$4096, -40(%rdi)        # imm = 0x1000
	movl	8(%rsi), %eax
	movl	%eax, -16(%rdi)
	movw	$4096, -24(%rdi)        # imm = 0x1000
	addl	$-4, %edx
	movl	12(%rsi), %eax
	leaq	16(%rsi), %rsi
	movl	%eax, (%rdi)
	movw	$4096, -8(%rdi)         # imm = 0x1000
	leaq	64(%rdi), %rdi
	jne	.LBB24_6
.LBB24_7:                               # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	make_floats, .Lfunc_end24-make_floats
	.cfi_endproc

	.globl	check_proc_failed
	.align	16, 0x90
	.type	check_proc_failed,@function
check_proc_failed:                      # @check_proc_failed
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rdi), %eax
	movl	%eax, %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB25_2
# BB#1:                                 # %if.then
	testb	$-128, %al
	movl	$-20, %ecx
	movl	$-7, %eax
	cmovel	%ecx, %eax
	retq
.LBB25_2:                               # %if.else.7
	movl	$-17, %eax
	cmpb	$0, 1(%rdi)
	je	.LBB25_4
# BB#3:                                 # %select.mid
	movl	$-20, %eax
.LBB25_4:                               # %return
	retq
.Lfunc_end25:
	.size	check_proc_failed, .Lfunc_end25-check_proc_failed
	.cfi_endproc

	.globl	read_matrix
	.align	16, 0x90
	.type	read_matrix,@function
read_matrix:                            # @read_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 40
	subq	$104, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 144
.Ltmp107:
	.cfi_offset %rbx, -40
.Ltmp108:
	.cfi_offset %r12, -32
.Ltmp109:
	.cfi_offset %r14, -24
.Ltmp110:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movb	1(%r12), %al
	movzbl	%al, %ecx
	leal	-5(%rcx), %edx
	cmpl	$2, %edx
	jae	.LBB26_1
# BB#3:                                 # %for.cond.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB26_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_13 Depth 2
                                        #     Child Loop BB26_18 Depth 2
	movl	4(%r12), %ecx
	movl	$-15, %eax
	cmpq	%rbx, %rcx
	jbe	.LBB26_47
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB26_4 Depth=1
	movq	%rbx, %rcx
	shlq	$4, %rcx
	leaq	(%rsp,%rcx), %rdx
	movzbl	1(%r12), %esi
	cmpl	$6, %esi
	je	.LBB26_31
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB26_4 Depth=1
	cmpl	$5, %esi
	jne	.LBB26_7
# BB#9:                                 # %sw.bb.4.i
                                        #   in Loop: Header=BB26_4 Depth=1
	movq	8(%r12), %rsi
	testl	%ebx, %ebx
	je	.LBB26_32
# BB#10:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB26_4 Depth=1
	leal	-1(%rbx), %r8d
	testb	$3, %bl
	je	.LBB26_11
# BB#12:                                #   in Loop: Header=BB26_4 Depth=1
	movl	%ebx, %edi
	andl	$3, %edi
	negl	%edi
	movl	%ebx, %eax
	.align	16, 0x90
.LBB26_13:                              # %for.body.i.prol
                                        #   Parent Loop BB26_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rsi), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	jbe	.LBB26_15
# BB#14:                                #   in Loop: Header=BB26_13 Depth=2
	addq	$2, %rsi
	jmp	.LBB26_16
	.align	16, 0x90
.LBB26_15:                              # %select.mid
                                        #   in Loop: Header=BB26_13 Depth=2
	addq	$16, %rsi
.LBB26_16:                              # %select.end
                                        #   in Loop: Header=BB26_13 Depth=2
	decl	%eax
	incl	%edi
	jne	.LBB26_13
	jmp	.LBB26_17
	.align	16, 0x90
.LBB26_31:                              # %sw.bb.13.i
                                        #   in Loop: Header=BB26_4 Depth=1
	movq	8(%r12), %rax
	leaq	(%rax,%rbx,2), %rsi
	jmp	.LBB26_32
	.align	16, 0x90
.LBB26_7:                               # %if.end.i
                                        #   in Loop: Header=BB26_4 Depth=1
	movl	$-20, %eax
	cmpl	$4, %esi
	jne	.LBB26_47
# BB#8:                                 # %sw.bb.i
                                        #   in Loop: Header=BB26_4 Depth=1
	movq	8(%r12), %rax
	movups	(%rax,%rcx), %xmm0
	movups	%xmm0, (%rdx)
	jmp	.LBB26_33
.LBB26_11:                              #   in Loop: Header=BB26_4 Depth=1
	movl	%ebx, %eax
.LBB26_17:                              # %for.body.i.preheader.split
                                        #   in Loop: Header=BB26_4 Depth=1
	cmpl	$3, %r8d
	jb	.LBB26_32
	.align	16, 0x90
.LBB26_18:                              # %for.body.i
                                        #   Parent Loop BB26_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rsi), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	jbe	.LBB26_20
# BB#19:                                #   in Loop: Header=BB26_18 Depth=2
	addq	$2, %rsi
	jmp	.LBB26_21
	.align	16, 0x90
.LBB26_20:                              # %select.mid50
                                        #   in Loop: Header=BB26_18 Depth=2
	addq	$16, %rsi
.LBB26_21:                              # %select.end49
                                        #   in Loop: Header=BB26_18 Depth=2
	movzwl	(%rsi), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	jbe	.LBB26_23
# BB#22:                                #   in Loop: Header=BB26_18 Depth=2
	addq	$2, %rsi
	jmp	.LBB26_24
	.align	16, 0x90
.LBB26_23:                              # %select.mid90
                                        #   in Loop: Header=BB26_18 Depth=2
	addq	$16, %rsi
.LBB26_24:                              # %select.end89
                                        #   in Loop: Header=BB26_18 Depth=2
	movzwl	(%rsi), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	jbe	.LBB26_26
# BB#25:                                #   in Loop: Header=BB26_18 Depth=2
	addq	$2, %rsi
	jmp	.LBB26_27
	.align	16, 0x90
.LBB26_26:                              # %select.mid92
                                        #   in Loop: Header=BB26_18 Depth=2
	addq	$16, %rsi
.LBB26_27:                              # %select.end91
                                        #   in Loop: Header=BB26_18 Depth=2
	addl	$-4, %eax
	movzwl	(%rsi), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	jbe	.LBB26_29
# BB#28:                                #   in Loop: Header=BB26_18 Depth=2
	addq	$2, %rsi
	jmp	.LBB26_30
	.align	16, 0x90
.LBB26_29:                              # %select.mid94
                                        #   in Loop: Header=BB26_18 Depth=2
	addq	$16, %rsi
.LBB26_30:                              # %select.end93
                                        #   in Loop: Header=BB26_18 Depth=2
	testl	%eax, %eax
	jne	.LBB26_18
	.align	16, 0x90
.LBB26_32:                              # %for.inc
                                        #   in Loop: Header=BB26_4 Depth=1
	movq	%r15, %rdi
	callq	packed_get
.LBB26_33:                              # %for.inc
                                        #   in Loop: Header=BB26_4 Depth=1
	incq	%rbx
	cmpq	$6, %rbx
	jl	.LBB26_4
# BB#34:                                # %cleanup.thread
	leaq	(%rsp), %rcx
	jmp	.LBB26_35
.LBB26_1:                               # %entry
	cmpl	$4, %ecx
	jne	.LBB26_70
# BB#2:                                 # %sw.bb
	movq	8(%r12), %rcx
.LBB26_35:                              # %do.body
	movl	$-7, %eax
	testb	$32, (%r12)
	je	.LBB26_47
# BB#36:                                # %do.end
	movl	$-15, %eax
	cmpl	$6, 4(%r12)
	jne	.LBB26_47
# BB#37:                                # %if.end.17
	movzbl	81(%rcx), %esi
	testl	%esi, %esi
	movl	$-17, %eax
	je	.LBB26_45
# BB#38:                                # %if.end.17
	movl	$-20, %edx
	cmpl	$11, %esi
	jne	.LBB26_39
# BB#41:                                # %sw.bb.1.i
	cvtsi2ssq	88(%rcx), %xmm0
	movss	%xmm0, 20(%r14)
	jmp	.LBB26_42
.LBB26_70:                              # %sw.default
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	leal	-20(%rax,%rax,2), %eax
	jmp	.LBB26_47
.LBB26_39:                              # %if.end.17
	cmpl	$16, %esi
	jne	.LBB26_46
# BB#40:                                # %sw.bb.i.24
	movl	88(%rcx), %esi
	movl	%esi, 20(%r14)
.LBB26_42:                              # %for.inc.i
	movzbl	65(%rcx), %esi
	cmpl	$16, %esi
	je	.LBB26_49
# BB#43:                                # %for.inc.i
	cmpl	$11, %esi
	jne	.LBB26_44
# BB#48:                                # %sw.bb.1.i.1
	xorps	%xmm0, %xmm0
	cvtsi2ssq	72(%rcx), %xmm0
	movss	%xmm0, 16(%r14)
	jmp	.LBB26_50
.LBB26_49:                              # %sw.bb.i.24.1
	movl	72(%rcx), %esi
	movl	%esi, 16(%r14)
.LBB26_50:                              # %for.inc.i.1
	movzbl	49(%rcx), %esi
	testl	%esi, %esi
	je	.LBB26_45
# BB#51:                                # %for.inc.i.1
	cmpl	$16, %esi
	jne	.LBB26_52
# BB#54:                                # %sw.bb.i.24.2
	movl	56(%rcx), %esi
	movl	%esi, 12(%r14)
	jmp	.LBB26_55
.LBB26_44:                              # %for.inc.i
	testl	%esi, %esi
	jne	.LBB26_46
	jmp	.LBB26_45
.LBB26_52:                              # %for.inc.i.1
	cmpl	$11, %esi
	jne	.LBB26_46
# BB#53:                                # %sw.bb.1.i.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	56(%rcx), %xmm0
	movss	%xmm0, 12(%r14)
.LBB26_55:                              # %for.inc.i.2
	movzbl	33(%rcx), %esi
	testl	%esi, %esi
	je	.LBB26_45
# BB#56:                                # %for.inc.i.2
	cmpl	$16, %esi
	jne	.LBB26_57
# BB#59:                                # %sw.bb.i.24.3
	movl	40(%rcx), %esi
	movl	%esi, 8(%r14)
	jmp	.LBB26_60
.LBB26_57:                              # %for.inc.i.2
	cmpl	$11, %esi
	jne	.LBB26_46
# BB#58:                                # %sw.bb.1.i.3
	xorps	%xmm0, %xmm0
	cvtsi2ssq	40(%rcx), %xmm0
	movss	%xmm0, 8(%r14)
.LBB26_60:                              # %for.inc.i.3
	movzbl	17(%rcx), %esi
	testl	%esi, %esi
	je	.LBB26_45
# BB#61:                                # %for.inc.i.3
	cmpl	$16, %esi
	jne	.LBB26_62
# BB#64:                                # %sw.bb.i.24.4
	movl	24(%rcx), %esi
	movl	%esi, 4(%r14)
	jmp	.LBB26_65
.LBB26_62:                              # %for.inc.i.3
	cmpl	$11, %esi
	jne	.LBB26_46
# BB#63:                                # %sw.bb.1.i.4
	xorps	%xmm0, %xmm0
	cvtsi2ssq	24(%rcx), %xmm0
	movss	%xmm0, 4(%r14)
.LBB26_65:                              # %for.inc.i.4
	movzbl	1(%rcx), %esi
	testl	%esi, %esi
	je	.LBB26_45
# BB#66:                                # %for.inc.i.4
	cmpl	$16, %esi
	jne	.LBB26_67
# BB#69:                                # %sw.bb.i.24.5
	movl	8(%rcx), %eax
	movl	%eax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB26_45
.LBB26_67:                              # %for.inc.i.4
	cmpl	$11, %esi
	jne	.LBB26_46
# BB#68:                                # %sw.bb.1.i.5
	xorps	%xmm0, %xmm0
	cvtsi2ssq	8(%rcx), %xmm0
	movss	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB26_45:                              # %float_params.exit.loopexit
	movl	%eax, %edx
.LBB26_46:                              # %float_params.exit
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%edx, %eax
.LBB26_47:                              # %cleanup.21
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end26:
	.size	read_matrix, .Lfunc_end26-read_matrix
	.cfi_endproc

	.globl	write_matrix_in
	.align	16, 0x90
	.type	write_matrix_in,@function
write_matrix_in:                        # @write_matrix_in
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp114:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp117:
	.cfi_def_cfa_offset 64
.Ltmp118:
	.cfi_offset %rbx, -56
.Ltmp119:
	.cfi_offset %r12, -48
.Ltmp120:
	.cfi_offset %r13, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r15
	movzwl	(%r15), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$1040, %eax             # imm = 0x410
	jne	.LBB27_1
# BB#3:                                 # %if.end
	movl	$-15, %eax
	cmpl	$6, 4(%r15)
	jne	.LBB27_11
# BB#4:                                 # %if.end.11
	movq	8(%r15), %rbx
	movl	$6, %ebp
	.align	16, 0x90
.LBB27_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%r12, %r12
	je	.LBB27_9
# BB#6:                                 # %if.then.14
                                        #   in Loop: Header=BB27_5 Depth=1
	movzwl	(%rbx), %eax
	testl	64(%r12), %eax
	jne	.LBB27_8
# BB#7:                                 # %cond.true.21
                                        #   in Loop: Header=BB27_5 Depth=1
	movl	$.L.str.24, %ecx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	alloc_save_change
.LBB27_8:                               # %cond.end.24
                                        #   in Loop: Header=BB27_5 Depth=1
	movl	(%r13), %eax
	movl	%eax, 8(%rbx)
	movl	68(%r12), %eax
	movl	$4096, %ecx             # imm = 0x1000
	addl	%ecx, %eax
	jmp	.LBB27_10
	.align	16, 0x90
.LBB27_9:                               # %if.else
                                        #   in Loop: Header=BB27_5 Depth=1
	movl	(%r13), %eax
	movl	%eax, 8(%rbx)
	movq	%r14, %rdi
	callq	imemory_new_mask
	addl	$4096, %eax             # imm = 0x1000
.LBB27_10:                              # %for.inc
                                        #   in Loop: Header=BB27_5 Depth=1
	movw	%ax, (%rbx)
	addq	$16, %rbx
	addq	$4, %r13
	xorl	%eax, %eax
	decl	%ebp
	jg	.LBB27_5
	jmp	.LBB27_11
.LBB27_1:                               # %if.then
	movzbl	1(%r15), %ecx
	movl	$-7, %eax
	cmpl	$4, %ecx
	je	.LBB27_11
# BB#2:                                 # %cond.true
	testb	%cl, %cl
	sete	%al
	movzbl	%al, %eax
	leal	-20(%rax,%rax,2), %eax
.LBB27_11:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	write_matrix_in, .Lfunc_end27-write_matrix_in
	.cfi_endproc

	.type	ref_type_properties,@object # @ref_type_properties
	.section	.rodata,"a",@progbits
	.globl	ref_type_properties
	.align	16
ref_type_properties:
	.ascii	"\000\000\t\003\003\003\003\003\000\001\000\000\000\002\004\002\000\000\003\001\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002"
	.size	ref_type_properties, 64

	.type	obj_cvp.type_strings,@object # @obj_cvp.type_strings
	.align	16
obj_cvp.type_strings:
	.quad	0
	.quad	0
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.3
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	.L.str.4
	.quad	0
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	0
	.size	obj_cvp.type_strings, 168

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-dict-"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"-file-"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"-array-"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-packedarray-"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-fontID-"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-mark-"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-save-"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"-string-"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"-device-"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%g"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%f"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%.9g"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"null"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"...)"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	")"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"-foreign-struct-"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"-(struct)-"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"type"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"true"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"false"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%ld"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"@0x%lx"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"0.0001"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"--nostringval--"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"write_matrix"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Private"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%d"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"+%02d"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"-%02d"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	".0"
	.size	.L.str.29, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
