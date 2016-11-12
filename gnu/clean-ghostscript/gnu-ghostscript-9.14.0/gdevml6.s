	.text
	.file	"gdevml6.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1142292480              # float 600
.LCPI0_1:
	.long	1133903872              # float 300
	.text
	.align	16, 0x90
	.type	ml600_print_page,@function
ml600_print_page:                       # @ml600_print_page
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
	subq	$5432, %rsp             # imm = 0x1538
.Ltmp6:
	.cfi_def_cfa_offset 5488
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
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	$1, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.4, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$160, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movl	$1, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.4, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$161, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movl	$1, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.4, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$162, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movss	888(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	%rbx, %r14
	ucomiss	.LCPI0_0(%rip), %xmm0
	jbe	.LBB0_2
# BB#1:                                 # %if.then.i
	movl	$176, 32(%rsp)
	movl	$4, 24(%rsp)
	movl	$88, 16(%rsp)
	movl	$2, 8(%rsp)
	movl	$0, (%rsp)
	movl	$4, 112(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.5, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$165, %r8d
	movl	$4, %r9d
	jmp	.LBB0_4
.LBB0_2:                                # %if.else.i
	ucomiss	.LCPI0_1(%rip), %xmm0
	jbe	.LBB0_5
# BB#3:                                 # %if.then.7.i
	movl	$88, 16(%rsp)
	movl	$2, 8(%rsp)
	movl	$0, (%rsp)
	movl	$2, 112(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.6, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$165, %r8d
	movl	$2, %r9d
.LBB0_4:                                # %page_header.exit
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	jmp	.LBB0_6
.LBB0_5:                                # %if.else.9.i
	movl	$44, 16(%rsp)
	movl	$1, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.6, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$165, %r8d
	movl	$2, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movl	$1, 112(%rsp)           # 4-byte Folded Spill
.LBB0_6:                                # %page_header.exit
	movl	$0, 96(%rsp)
	movl	$0, 88(%rsp)
	movl	$0, 80(%rsp)
	movl	$0, 72(%rsp)
	movl	$0, 64(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$2, 32(%rsp)
	movl	$0, 24(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%ebx, %ebx
	movl	$.L.str.7, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$241, %r8d
	movl	$12, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movl	$3, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.4, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$166, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 3674(%rsp,%rbx)
	movups	%xmm0, 3690(%rsp,%rbx)
	movups	%xmm0, 3706(%rsp,%rbx)
	movups	%xmm0, 3722(%rsp,%rbx)
	movups	%xmm0, 3738(%rsp,%rbx)
	movups	%xmm0, 3754(%rsp,%rbx)
	movups	%xmm0, 3770(%rsp,%rbx)
	movups	%xmm0, 3786(%rsp,%rbx)
	movups	%xmm0, 3802(%rsp,%rbx)
	movups	%xmm0, 3818(%rsp,%rbx)
	movups	%xmm0, 3834(%rsp,%rbx)
	movups	%xmm0, 3850(%rsp,%rbx)
	addq	$192, %rbx
	cmpq	$1728, %rbx             # imm = 0x6C0
	jne	.LBB0_7
# BB#8:                                 # %for.body
	xorps	%xmm0, %xmm0
	movups	%xmm0, 5402(%rsp)
	movq	$0, 5418(%rsp)
	movw	$0, 5426(%rsp)
	xorl	%esi, %esi
	movq	%r14, %rbx
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	gx_device_raster
	movl	%eax, %r10d
	movl	%r10d, 116(%rsp)        # 4-byte Spill
	cmpl	$877, %r10d             # imm = 0x36D
	jg	.LBB0_39
# BB#9:                                 # %for.body
	testl	%r10d, %r10d
	je	.LBB0_39
# BB#10:                                # %if.end
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	subl	832(%rbx), %ecx
	andb	$7, %cl
	movl	$255, %eax
	shll	%cl, %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	cmpl	$0, 836(%rbx)
	jle	.LBB0_38
# BB#11:                                # %for.body.10.lr.ph
	movslq	%r10d, %r14
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_12:                               # %for.body.10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_50 Depth 3
	movq	%rax, 152(%rsp)         # 8-byte Spill
	cltq
	movq	%rax, 144(%rsp)         # 8-byte Spill
	imulq	$1754, %rax, %rax       # imm = 0x6DA
	leaq	1920(%rsp,%rax), %r13
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movq	%r13, %rdx
	movl	%r10d, %ecx
	movl	%r10d, %ebp
	callq	gdev_prn_copy_scan_lines
	movl	%ebp, %r10d
	movzbl	-1(%r14,%r13), %eax
	andl	132(%rsp), %eax         # 4-byte Folded Reload
	movb	%al, -1(%r14,%r13)
	xorl	%eax, %eax
	testl	%r10d, %r10d
	jle	.LBB0_16
# BB#13:                                # %for.body.25.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_14:                               # %for.body.25
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%r13,%rax)
	jne	.LBB0_16
# BB#15:                                # %for.inc.35
                                        #   in Loop: Header=BB0_14 Depth=2
	incq	%rax
	cmpq	%r14, %rax
	jl	.LBB0_14
.LBB0_16:                               # %for.end.37
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	%r10d, %eax
	jne	.LBB0_18
# BB#17:                                # %if.then.40
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	notl	%eax
	andl	$1, %eax
	movl	$1, %r15d
	jmp	.LBB0_37
	.align	16, 0x90
.LBB0_18:                               # %if.end.43
                                        #   in Loop: Header=BB0_12 Depth=1
	testl	%r15d, %r15d
	movq	136(%rsp), %rbp         # 8-byte Reload
	je	.LBB0_23
# BB#19:                                # %if.then.44
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	%r12d, %eax
	cltd
	idivl	112(%rsp)               # 4-byte Folded Reload
	movl	%edx, %r15d
	movl	%eax, %ebx
	movl	$2, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.4, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$166, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movzbl	%bh, %eax  # NOREX
	movzbl	%bl, %ecx
	movl	%ecx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.5, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$164, %r8d
	movl	$4, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	testl	%r15d, %r15d
	jle	.LBB0_22
# BB#20:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.4, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$166, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	.align	16, 0x90
.LBB0_21:                               # %for.body.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$0, 8(%rsp)
	movl	$1, (%rsp)
	movl	$.L.str.4, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$167, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	decl	%r15d
	jne	.LBB0_21
.LBB0_22:                               # %move_pos.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$3, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.4, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$166, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movl	116(%rsp), %r10d        # 4-byte Reload
.LBB0_23:                               # %if.end.47
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	152(%rsp), %r15         # 8-byte Reload
	notl	%r15d
	andl	$1, %r15d
	testl	%r10d, %r10d
	movl	$0, %ebx
	jle	.LBB0_36
# BB#24:                                # %while.cond.1.preheader.i.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	incb	%al
	movzbl	%al, %eax
	andl	$1, %eax
	imulq	$1754, %rax, %rax       # imm = 0x6DA
	leaq	1920(%rsp,%rax), %r8
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
.LBB0_26:                               # %while.cond.1.preheader.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_50 Depth 3
	cmpl	%r10d, %ecx
	jge	.LBB0_36
# BB#27:                                # %land.rhs.lr.ph.i
                                        #   in Loop: Header=BB0_26 Depth=2
	movq	%rbp, %r9
	movslq	%ecx, %rsi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_28:                               # %land.rhs.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	(%rsi,%rdx), %rcx
	movzbl	(%r8,%rcx), %edi
	movzbl	(%r13,%rcx), %ebp
	cmpl	%edi, %ebp
	jne	.LBB0_29
# BB#34:                                # %while.body.8.i
                                        #   in Loop: Header=BB0_28 Depth=3
	leaq	1(%rsi,%rdx), %rcx
	incq	%rdx
	cmpq	%r14, %rcx
	jl	.LBB0_28
	jmp	.LBB0_35
	.align	16, 0x90
.LBB0_29:                               # %while.cond.12.preheader.i
                                        #   in Loop: Header=BB0_26 Depth=2
	leal	1(%rcx), %edi
	movl	$1, %esi
	cmpl	%r10d, %edi
	jge	.LBB0_41
# BB#30:                                # %land.rhs.17.i.preheader
                                        #   in Loop: Header=BB0_26 Depth=2
	movslq	%ecx, %rdi
	addq	$2, %rdi
	movl	$1, %ebp
	.align	16, 0x90
.LBB0_31:                               # %land.rhs.17.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rcx,%rbp), %esi
	movslq	%esi, %rsi
	imulq	$1754, %r15, %rax       # imm = 0x6DA
	leaq	1920(%rsp,%rax), %rax
	movzbl	(%rsi,%rax), %eax
	movzbl	(%rsi,%r13), %esi
	cmpl	%eax, %esi
	je	.LBB0_40
# BB#32:                                # %while.body.29.i
                                        #   in Loop: Header=BB0_31 Depth=3
	leaq	1(%rbp), %rsi
	cmpq	$7, %rsi
	jg	.LBB0_41
# BB#33:                                # %while.body.29.i
                                        #   in Loop: Header=BB0_31 Depth=3
	leaq	-1(%rdi,%rbp), %rax
	cmpq	%r14, %rax
	movq	%rsi, %rbp
	jl	.LBB0_31
	jmp	.LBB0_41
.LBB0_40:                               # %land.rhs.17.while.end.31_crit_edge.i
                                        #   in Loop: Header=BB0_26 Depth=2
	movl	%ebp, %esi
.LBB0_41:                               # %while.end.31.i
                                        #   in Loop: Header=BB0_26 Depth=2
	cmpl	$30, %edx
	jg	.LBB0_43
# BB#42:                                # %if.then.34.i
                                        #   in Loop: Header=BB0_26 Depth=2
	movl	%esi, %eax
	shll	$5, %eax
	addl	$224, %eax
	andl	$31, %edx
	orl	%eax, %edx
	movslq	%ebx, %rax
	incl	%ebx
	movb	%dl, 160(%rsp,%rax)
	movq	%r9, %rbp
	jmp	.LBB0_48
	.align	16, 0x90
.LBB0_43:                               # %if.else.i.50
                                        #   in Loop: Header=BB0_26 Depth=2
	addl	$-31, %edx
	movl	%esi, %eax
	shll	$5, %eax
	addl	$224, %eax
	orl	$31, %eax
	movslq	%ebx, %rdi
	movb	%al, 160(%rsp,%rdi)
	incl	%edi
	cmpl	$255, %edx
	jl	.LBB0_44
# BB#45:                                # %while.body.52.lr.ph.i
                                        #   in Loop: Header=BB0_26 Depth=2
	movslq	%edi, %rdi
	movq	%r9, %rbp
	.align	16, 0x90
.LBB0_46:                               # %while.body.52.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdi, %rbx
	addl	$-255, %edx
	movb	$-1, 160(%rsp,%rbx)
	leaq	1(%rbx), %rdi
	cmpl	$254, %edx
	jg	.LBB0_46
	jmp	.LBB0_47
.LBB0_44:                               #   in Loop: Header=BB0_26 Depth=2
	movq	%r9, %rbp
.LBB0_47:                               # %while.end.57.i
                                        #   in Loop: Header=BB0_26 Depth=2
	addl	$2, %ebx
	movslq	%edi, %rax
	movb	%dl, 160(%rsp,%rax)
.LBB0_48:                               # %while.cond.63.preheader.i
                                        #   in Loop: Header=BB0_26 Depth=2
	testl	%esi, %esi
	jle	.LBB0_25
# BB#49:                                # %while.body.66.lr.ph.i
                                        #   in Loop: Header=BB0_26 Depth=2
	movslq	%ebx, %rbx
	movslq	%ecx, %rcx
	incl	%esi
	.align	16, 0x90
.LBB0_50:                               # %while.body.66.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%r13,%rcx), %al
	movb	%al, 160(%rsp,%rbx)
	incq	%rbx
	incq	%rcx
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB0_50
.LBB0_25:                               # %while.cond.loopexit.i
                                        #   in Loop: Header=BB0_26 Depth=2
	cmpl	%r10d, %ecx
	jl	.LBB0_26
	jmp	.LBB0_36
	.align	16, 0x90
.LBB0_35:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%r9, %rbp
.LBB0_36:                               # %make_line_data.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movl	$.L.str.2, %esi
	movl	$27, %edx
	movl	$124, %ecx
	movl	$167, %r8d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r10d, %r13d
	callq	fprintf
	movzbl	%bh, %edx  # NOREX
	movzbl	%bl, %ecx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movslq	%ebx, %rdx
	movl	$1, %esi
	leaq	160(%rsp), %rdi
	movq	%rbp, %rcx
	callq	fwrite
	movq	%r15, %rax
	movl	%r13d, %r10d
	movq	120(%rsp), %rbx         # 8-byte Reload
	xorl	%r15d, %r15d
.LBB0_37:                               # %cleanup
                                        #   in Loop: Header=BB0_12 Depth=1
	incl	%r12d
	cmpl	836(%rbx), %r12d
	jl	.LBB0_12
.LBB0_38:                               # %for.end.64
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movq	136(%rsp), %rdi         # 8-byte Reload
	callq	fprintf
.LBB0_39:                               # %cleanup.66
	xorl	%eax, %eax
	addq	$5432, %rsp             # imm = 0x1538
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ml600_print_page, .Lfunc_end0-ml600_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	ml600_open,@function
ml600_open:                             # @ml600_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	callq	gdev_prn_open
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB1_3
# BB#1:                                 # %if.end
	movl	$1, %esi
	movq	%r14, %rdi
	callq	gdev_prn_open_printer
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB1_3
# BB#2:                                 # %if.end.4
	movq	17176(%r14), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str.2, %esi
	movl	$27, %edx
	movl	$47, %ecx
	movl	$242, %r8d
	xorl	%eax, %eax
	callq	fprintf
.LBB1_3:                                # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	ml600_open, .Lfunc_end1-ml600_open
	.cfi_endproc

	.align	16, 0x90
	.type	ml600_close,@function
ml600_close:                            # @ml600_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB2_1
# BB#2:                                 # %if.end
	movq	17176(%rbx), %rdi
	movl	$.L.str.2, %esi
	movl	$27, %edx
	movl	$47, %ecx
	movl	$254, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.LBB2_1:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end2:
	.size	ml600_close, .Lfunc_end2-ml600_close
	.cfi_endproc

	.type	ml600_procs,@object     # @ml600_procs
	.data
	.align	8
ml600_procs:
	.quad	ml600_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	ml600_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	ml600_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ml600"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_ml600_device,@object # @gs_ml600_device
	.data
	.globl	gs_ml600_device
	.align	8
gs_ml600_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	ml600_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4980                    # 0x1374
	.long	7020                    # 0x1b6c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142253158              # float 5.976000e+02
	.long	1146263962              # float 8.424000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270508544              # float -1.200000e+02
	.long	3270508544              # float -1.200000e+02
	.long	1097229926              # float 1.440000e+01
	.long	1097229926              # float 1.440000e+01
	.long	1097229926              # float 1.440000e+01
	.long	1097229926              # float 1.440000e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	ml600_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.size	gs_ml600_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%c%c%c"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\f"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%c%c%c%c%c%c"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%c%c%c%c%c%c%c%c%c"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c%c%c%c%c%c%c"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c"
	.size	.L.str.7, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%c%c"
	.size	.L.str.8, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
