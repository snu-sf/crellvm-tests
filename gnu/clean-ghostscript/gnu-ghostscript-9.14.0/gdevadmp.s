	.text
	.file	"gdevadmp.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1129840640              # float 216
.LCPI0_1:
	.long	1125122048              # float 144
.LCPI0_2:
	.long	1126170624              # float 160
	.text
	.align	16, 0x90
	.type	dmp_print_page,@function
dmp_print_page:                         # @dmp_print_page
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
	subq	$168, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 224
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gx_device_raster
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leal	(,%rax,8), %ebp
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r12
	movq	%r12, 120(%rsp)         # 8-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.6, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	movq	%r15, 112(%rsp)         # 8-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	leal	(%rbp,%rbp,2), %r13d
	movl	$1, %edx
	movl	$.L.str.7, %ecx
	movl	%r13d, %esi
	callq	*88(%rdi)
	testq	%r12, %r12
	je	.LBB0_3
# BB#1:                                 # %entry
	testq	%r15, %r15
	je	.LBB0_3
# BB#2:                                 # %entry
	testq	%rax, %rax
	je	.LBB0_3
# BB#9:                                 # %if.end.46
	movss	888(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jne	.LBB0_11
	jp	.LBB0_11
# BB#10:                                # %if.end.61.thread
	movl	%r13d, 156(%rsp)        # 4-byte Spill
	movq	%r12, 120(%rsp)         # 8-byte Spill
	movl	$.L.str.8, %edi
	movq	%rax, %r13
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.9, %edi
	movq	%r14, %rsi
	callq	fputs
	movq	%rbx, %rax
	movl	$4, %r14d
	jmp	.LBB0_17
.LBB0_3:                                # %if.then
	movq	%rax, %r14
	testq	%r12, %r12
	je	.LBB0_5
# BB#4:                                 # %if.then.22
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.5, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB0_5:                                # %if.end
	testq	%r15, %r15
	movq	%rbx, %rax
	je	.LBB0_7
# BB#6:                                 # %if.then.29
	movq	%rax, %rbx
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	%rbx, %rax
.LBB0_7:                                # %if.end.36
	movl	$-25, %ebp
	movq	%r14, %rsi
	testq	%rsi, %rsi
	je	.LBB0_92
# BB#8:                                 # %if.then.38
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
	jmp	.LBB0_92
.LBB0_11:                               # %if.else
	movl	%r13d, 156(%rsp)        # 4-byte Spill
	movq	%r12, 120(%rsp)         # 8-byte Spill
	movq	%rax, %r13
	ucomiss	.LCPI0_1(%rip), %xmm0
	jne	.LBB0_13
	jp	.LBB0_13
# BB#12:                                # %if.end.61.thread209
	movq	%rbx, %r12
	movl	$.L.str.8, %edi
	movq	%r14, %rbx
	movq	%rbx, %rsi
	callq	fputs
	movl	$3, %r14d
	jmp	.LBB0_14
.LBB0_13:                               # %if.end.61
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 144(%rsp)        # 4-byte Spill
	movq	%rbx, %r12
	movl	$.L.str.8, %edi
	movq	%r14, %rbx
	movq	%rbx, %rsi
	callq	fputs
	movl	$2, %r14d
	movss	144(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_2(%rip), %xmm0
	jne	.LBB0_15
	jp	.LBB0_15
.LBB0_14:                               # %sw.bb.64
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	$.L.str.10, %edi
	movq	%rbx, %rsi
	callq	fputs
.LBB0_16:                               # %while.cond.preheader
	movq	%r12, %rax
.LBB0_17:                               # %while.cond.preheader
	movq	136(%rsp), %rcx         # 8-byte Reload
	cmpl	$0, 836(%rax)
	jle	.LBB0_18
# BB#19:                                # %while.body.lr.ph.lr.ph
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movslq	%ecx, %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movslq	%ebp, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	(%r13,%rcx), %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movslq	156(%rsp), %rax         # 4-byte Folded Reload
	leaq	(%rax,%r13), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r13, 104(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rcx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	imulq	$7, %rdx, %rax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rdx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	negq	%rdx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	incq	%r15
	movq	%r15, 48(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB0_20
.LBB0_18:
	movq	%r13, %rbp
	movq	%rax, 160(%rsp)         # 8-byte Spill
	jmp	.LBB0_89
.LBB0_84:                               # %sw.bb.336
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	%r13, %rbp
	addl	$24, %ecx
	movl	$4, %r14d
	jmp	.LBB0_86
	.align	16, 0x90
.LBB0_20:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #         Child Loop BB0_23 Depth 4
                                        #         Child Loop BB0_33 Depth 4
                                        #         Child Loop BB0_39 Depth 4
                                        #       Child Loop BB0_70 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_43 Depth 3
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_57 Depth 3
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_68 Depth 3
                                        #       Child Loop BB0_95 Depth 3
	movl	%r14d, 100(%rsp)        # 4-byte Spill
	cmpl	$3, %r14d
	sete	%al
	movzbl	%al, %edx
	incq	%rdx
	cmpl	$4, %r14d
	movl	$3, %eax
	cmoveq	%rax, %rdx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
.LBB0_21:                               # %while.body
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #         Child Loop BB0_23 Depth 4
                                        #         Child Loop BB0_33 Depth 4
                                        #         Child Loop BB0_39 Depth 4
                                        #       Child Loop BB0_70 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_43 Depth 3
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_57 Depth 3
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_68 Depth 3
                                        #       Child Loop BB0_95 Depth 3
	movl	%ecx, 156(%rsp)         # 4-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_22:                               # %for.cond.75.preheader
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_23 Depth 4
                                        #         Child Loop BB0_33 Depth 4
                                        #         Child Loop BB0_39 Depth 4
	leaq	(,%r13,8), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rbp         # 8-byte Reload
	movq	64(%rsp), %r15          # 8-byte Reload
	xorl	%r12d, %r12d
	movq	72(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB0_23:                               # %for.body.77
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        #       Parent Loop BB0_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$3, %r14d
	jne	.LBB0_24
# BB#27:                                # %sw.bb.80
                                        #   in Loop: Header=BB0_23 Depth=4
	leal	(%r13,%r12,2), %esi
	jmp	.LBB0_28
	.align	16, 0x90
.LBB0_24:                               # %for.body.77
                                        #   in Loop: Header=BB0_23 Depth=4
	cmpl	$4, %r14d
	jne	.LBB0_25
# BB#26:                                # %sw.bb.78
                                        #   in Loop: Header=BB0_23 Depth=4
	movq	128(%rsp), %rcx         # 8-byte Reload
	leal	(%r12,%rcx), %esi
	jmp	.LBB0_28
	.align	16, 0x90
.LBB0_25:                               # %for.body.77.sw.epilog.85_crit_edge
                                        #   in Loop: Header=BB0_23 Depth=4
	movl	%r12d, %esi
.LBB0_28:                               # %sw.epilog.85
                                        #   in Loop: Header=BB0_23 Depth=4
	movq	160(%rsp), %rdi         # 8-byte Reload
	addl	156(%rsp), %esi         # 4-byte Folded Reload
	cmpl	836(%rdi), %esi
	jle	.LBB0_30
# BB#29:                                # %if.then.89
                                        #   in Loop: Header=BB0_23 Depth=4
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memset
	jmp	.LBB0_31
	.align	16, 0x90
.LBB0_30:                               # %if.else.92
                                        #   in Loop: Header=BB0_23 Depth=4
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	movq	%r15, %rdx
	movq	136(%rsp), %rcx         # 8-byte Reload
	callq	gdev_prn_copy_scan_lines
.LBB0_31:                               # %for.inc
                                        #   in Loop: Header=BB0_23 Depth=4
	incq	%r12
	addq	144(%rsp), %r15         # 8-byte Folded Reload
	addq	%rbx, %rbp
	cmpq	$8, %r12
	jne	.LBB0_23
# BB#32:                                # %for.end
                                        #   in Loop: Header=BB0_22 Depth=3
	movq	136(%rsp), %r12         # 8-byte Reload
	testl	%r12d, %r12d
	movq	112(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rbp
	movq	120(%rsp), %rbx         # 8-byte Reload
	movq	56(%rsp), %r14          # 8-byte Reload
	jle	.LBB0_34
	.align	16, 0x90
.LBB0_33:                               # %for.body.104
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        #       Parent Loop BB0_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$1, %ecx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movq	%rbp, %rdx
	callq	memflip8x8
	incq	%rbx
	addq	$8, %rbp
	cmpq	%r14, %rbx
	jb	.LBB0_33
.LBB0_34:                               # %for.end.107
                                        #   in Loop: Header=BB0_22 Depth=3
	movl	100(%rsp), %r14d        # 4-byte Reload
	cmpl	$3, %r14d
	jne	.LBB0_35
# BB#37:                                # %sw.bb.111
                                        #   in Loop: Header=BB0_22 Depth=3
	movq	%r13, %rax
	imulq	40(%rsp), %rax          # 8-byte Folded Reload
	movq	104(%rsp), %rdi         # 8-byte Reload
	leaq	(%rax,%rdi), %rax
	movq	80(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB0_38
	.align	16, 0x90
.LBB0_35:                               # %for.end.107
                                        #   in Loop: Header=BB0_22 Depth=3
	cmpl	$4, %r14d
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rax
	movq	80(%rsp), %rbp          # 8-byte Reload
	jne	.LBB0_38
# BB#36:                                # %sw.bb.108
                                        #   in Loop: Header=BB0_22 Depth=3
	leaq	(%rdi,%r13), %rax
.LBB0_38:                               # %while.cond.118.preheader
                                        #   in Loop: Header=BB0_22 Depth=3
	testl	%r12d, %r12d
	movq	%r12, 136(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rcx          # 8-byte Reload
	jle	.LBB0_40
	.align	16, 0x90
.LBB0_39:                               # %while.body.122
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        #       Parent Loop BB0_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, %r14d
	movb	-1(%rcx), %dl
	movb	%dl, (%rax)
	leaq	1(%rax), %rdx
	leaq	3(%rax), %rax
	cmovneq	%rdx, %rax
	movl	%ecx, %edx
	subl	%r15d, %edx
	incq	%rcx
	cmpl	%ebp, %edx
	jl	.LBB0_39
.LBB0_40:                               # %for.inc.131
                                        #   in Loop: Header=BB0_22 Depth=3
	incq	%r13
	cmpq	88(%rsp), %r13          # 8-byte Folded Reload
	jl	.LBB0_22
# BB#41:                                # %for.end.133
                                        #   in Loop: Header=BB0_21 Depth=2
	cmpl	$3, %r14d
	movq	24(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rax
	movq	112(%rsp), %r15         # 8-byte Reload
	jne	.LBB0_42
	.align	16, 0x90
.LBB0_57:                               # %while.cond.218
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rbx
	cmpq	%rdi, %rbx
	jbe	.LBB0_58
# BB#59:                                # %land.rhs.221
                                        #   in Loop: Header=BB0_57 Depth=3
	leaq	-1(%rbx), %rax
	cmpb	$0, -1(%rbx)
	je	.LBB0_57
# BB#60:                                # %land.rhs.233.preheader
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rdi, %rbp
	movq	32(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB0_61:                               # %land.rhs.233
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, (%rbp)
	jne	.LBB0_63
# BB#62:                                # %while.body.239
                                        #   in Loop: Header=BB0_61 Depth=3
	incq	%rbp
	cmpq	%rbx, %rbp
	jb	.LBB0_61
	jmp	.LBB0_63
	.align	16, 0x90
.LBB0_42:                               # %for.end.133
                                        #   in Loop: Header=BB0_21 Depth=2
	cmpl	$4, %r14d
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r12, %rcx
	jne	.LBB0_70
	.align	16, 0x90
.LBB0_43:                               # %while.cond.138
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %r12
	cmpq	%rdi, %r12
	jbe	.LBB0_44
# BB#45:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_43 Depth=3
	cmpb	$0, -1(%r12)
	jne	.LBB0_48
# BB#46:                                # %land.lhs.true.145
                                        #   in Loop: Header=BB0_43 Depth=3
	cmpb	$0, -2(%r12)
	jne	.LBB0_48
# BB#47:                                # %land.rhs
                                        #   in Loop: Header=BB0_43 Depth=3
	leaq	-3(%r12), %rax
	cmpb	$0, -3(%r12)
	je	.LBB0_43
.LBB0_48:                               # %land.lhs.true.160.preheader
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rdi, %rbx
	.align	16, 0x90
.LBB0_49:                               # %land.lhs.true.160
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, (%rbx)
	jne	.LBB0_53
# BB#50:                                # %land.lhs.true.165
                                        #   in Loop: Header=BB0_49 Depth=3
	cmpb	$0, 1(%rbx)
	jne	.LBB0_53
# BB#51:                                # %land.rhs.170
                                        #   in Loop: Header=BB0_49 Depth=3
	cmpb	$0, 2(%rbx)
	jne	.LBB0_53
# BB#52:                                # %while.body.176
                                        #   in Loop: Header=BB0_49 Depth=3
	addq	$3, %rbx
	cmpq	%r12, %rbx
	jb	.LBB0_49
	jmp	.LBB0_53
	.align	16, 0x90
.LBB0_70:                               # %while.cond.282
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rbx
	cmpq	%rdi, %rbx
	jbe	.LBB0_71
# BB#72:                                # %land.rhs.285
                                        #   in Loop: Header=BB0_70 Depth=3
	leaq	-1(%rbx), %rcx
	cmpb	$0, -1(%rbx)
	je	.LBB0_70
# BB#73:                                # %land.rhs.297.preheader
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rdi, %rbp
	.align	16, 0x90
.LBB0_74:                               # %land.rhs.297
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, (%rbp)
	jne	.LBB0_76
# BB#75:                                # %while.body.303
                                        #   in Loop: Header=BB0_74 Depth=3
	incq	%rbp
	cmpq	%rbx, %rbp
	jb	.LBB0_74
	jmp	.LBB0_76
	.align	16, 0x90
.LBB0_58:                               #   in Loop: Header=BB0_21 Depth=2
	movq	%rdi, %rbp
	movq	32(%rsp), %r13          # 8-byte Reload
.LBB0_63:                               # %while.end.241
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rdi, %rax
	cmpq	%rbp, %rbx
	je	.LBB0_67
# BB#64:                                # %if.then.244
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rbp, %rdx
	subq	%rax, %rdx
	cmpq	$8, %rdx
	movq	%rax, %r15
	jl	.LBB0_66
# BB#65:                                # %if.then.250
                                        #   in Loop: Header=BB0_21 Depth=2
	movl	$.L.str.14, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	movq	%rbp, %r15
.LBB0_66:                               # %if.end.257
                                        #   in Loop: Header=BB0_21 Depth=2
	subq	%r15, %rbx
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	fprintf
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	24(%rsp), %r12          # 8-byte Reload
.LBB0_67:                               # %for.inc.274
                                        #   in Loop: Header=BB0_21 Depth=2
	movl	$.L.str.16, %edi
	movq	%r13, %rsi
	callq	fputs
	movq	8(%rsp), %rax           # 8-byte Reload
	.align	16, 0x90
.LBB0_68:                               # %while.cond.218.1
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rbx
	cmpq	%r12, %rbx
	jbe	.LBB0_69
# BB#93:                                # %land.rhs.221.1
                                        #   in Loop: Header=BB0_68 Depth=3
	leaq	-1(%rbx), %rax
	cmpb	$0, -1(%rbx)
	je	.LBB0_68
# BB#94:                                # %land.rhs.233.1.preheader
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%r12, %rbp
	.align	16, 0x90
.LBB0_95:                               # %land.rhs.233.1
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, (%rbp)
	jne	.LBB0_97
# BB#96:                                # %while.body.239.1
                                        #   in Loop: Header=BB0_95 Depth=3
	incq	%rbp
	cmpq	%rbx, %rbp
	jb	.LBB0_95
	jmp	.LBB0_97
	.align	16, 0x90
.LBB0_69:                               #   in Loop: Header=BB0_21 Depth=2
	movq	%r12, %rbp
.LBB0_97:                               # %while.end.241.1
                                        #   in Loop: Header=BB0_21 Depth=2
	cmpq	%rbp, %rbx
	je	.LBB0_101
# BB#98:                                # %if.then.244.1
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rbp, %rdx
	movq	24(%rsp), %rax          # 8-byte Reload
	subq	%rax, %rdx
	cmpq	$8, %rdx
	movq	%rax, %r15
	jl	.LBB0_100
# BB#99:                                # %if.then.250.1
                                        #   in Loop: Header=BB0_21 Depth=2
	movl	$.L.str.14, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	%rbp, %r15
.LBB0_100:                              # %if.end.257.1
                                        #   in Loop: Header=BB0_21 Depth=2
	subq	%r15, %rbx
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	fprintf
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	fwrite
.LBB0_101:                              # %for.inc.274.1
                                        #   in Loop: Header=BB0_21 Depth=2
	movl	$.L.str.17, %edi
	movq	%r13, %rsi
	callq	fputs
	jmp	.LBB0_81
.LBB0_71:                               #   in Loop: Header=BB0_21 Depth=2
	movq	%rdi, %rbp
.LBB0_76:                               # %while.end.305
                                        #   in Loop: Header=BB0_21 Depth=2
	cmpq	%rbp, %rbx
	movq	32(%rsp), %r13          # 8-byte Reload
	je	.LBB0_82
# BB#77:                                # %if.then.308
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rbp, %rdx
	movq	104(%rsp), %rax         # 8-byte Reload
	subq	%rax, %rdx
	cmpq	$8, %rdx
	movq	%rax, %r15
	jl	.LBB0_79
# BB#78:                                # %if.then.314
                                        #   in Loop: Header=BB0_21 Depth=2
	movl	$.L.str.14, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	movq	%rbp, %r15
.LBB0_79:                               # %if.end.321
                                        #   in Loop: Header=BB0_21 Depth=2
	subq	%r15, %rbx
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	fprintf
	movslq	%ebx, %rdx
	jmp	.LBB0_80
.LBB0_44:                               #   in Loop: Header=BB0_21 Depth=2
	movq	%rdi, %rbx
.LBB0_53:                               # %while.end.178
                                        #   in Loop: Header=BB0_21 Depth=2
	cmpq	%rbx, %r12
	movq	32(%rsp), %r13          # 8-byte Reload
	je	.LBB0_82
# BB#54:                                # %if.then.181
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rbx, %rax
	movq	104(%rsp), %rcx         # 8-byte Reload
	subq	%rcx, %rax
	cmpq	$8, %rax
	movq	%rcx, %r15
	jl	.LBB0_56
# BB#55:                                # %if.then.187
                                        #   in Loop: Header=BB0_21 Depth=2
	movabsq	$6148914691236517206, %rcx # imm = 0x5555555555555556
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	leal	(%rax,%rdx), %edx
	movl	$.L.str.12, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	movq	%rbx, %r15
.LBB0_56:                               # %if.end.194
                                        #   in Loop: Header=BB0_21 Depth=2
	subq	%r15, %r12
	movq	%r12, %rax
	movabsq	$6148914691236517206, %rcx # imm = 0x5555555555555556
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	leal	(%rax,%rdx), %edx
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	callq	fprintf
	movslq	%r12d, %rdx
.LBB0_80:                               # %sw.epilog.334
                                        #   in Loop: Header=BB0_21 Depth=2
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	fwrite
.LBB0_81:                               # %sw.epilog.334
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	112(%rsp), %r15         # 8-byte Reload
.LBB0_82:                               # %sw.epilog.334
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	$.L.str.18, %edi
	movq	%r13, %rsi
	callq	fputs
	cmpl	$3, %r14d
	je	.LBB0_85
# BB#83:                                # %sw.epilog.334
                                        #   in Loop: Header=BB0_21 Depth=2
	cmpl	$4, %r14d
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	104(%rsp), %r13         # 8-byte Reload
	movl	156(%rsp), %ecx         # 4-byte Reload
	je	.LBB0_84
# BB#87:                                # %sw.default.341
                                        #   in Loop: Header=BB0_21 Depth=2
	addl	$8, %ecx
	cmpl	836(%rax), %ecx
	jl	.LBB0_21
	jmp	.LBB0_88
	.align	16, 0x90
.LBB0_85:                               # %sw.bb.338
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	156(%rsp), %ecx         # 4-byte Reload
	addl	$16, %ecx
	movl	$3, %r14d
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	104(%rsp), %rbp         # 8-byte Reload
.LBB0_86:                               # %while.cond.outer.backedge
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	%rax, 160(%rsp)         # 8-byte Spill
	cmpl	836(%rax), %ecx
	jl	.LBB0_20
	jmp	.LBB0_90
.LBB0_88:
	movq	%r13, %rbp
.LBB0_89:                               # %while.end.344
	cmpl	$1, %r14d
	je	.LBB0_91
.LBB0_90:                               # %if.then.347
	movl	$.L.str.19, %edi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	fputs
.LBB0_91:                               # %if.end.349
	movl	$.L.str.20, %edi
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	fputs
	movq	%rbx, %rdi
	callq	fflush
	movq	160(%rsp), %rbx         # 8-byte Reload
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.5, %edx
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	xorl	%ebp, %ebp
.LBB0_92:                               # %cleanup
	movl	%ebp, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_15:                               # %sw.default
	movl	$.L.str.11, %edi
	movq	%rbx, %rsi
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	callq	fputs
	movl	$1, %r14d
	jmp	.LBB0_16
.Lfunc_end0:
	.size	dmp_print_page, .Lfunc_end0-dmp_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"appledmp"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_appledmp_device,@object # @gs_appledmp_device
	.section	.rodata,"a",@progbits
	.globl	gs_appledmp_device
	.align	8
gs_appledmp_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
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
	.long	1020                    # 0x3fc
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1123024896              # float 1.200000e+02
	.long	1116733440              # float 7.200000e+01
	.long	1123024896              # float 1.200000e+02
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.long	0                       # float 0.000000e+00
	.long	1108344832              # float 3.600000e+01
	.long	1108344832              # float 3.600000e+01
	.long	0                       # float 0.000000e+00
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
	.quad	dmp_print_page
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
	.size	gs_appledmp_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"iwlo"
	.size	.L.str.2, 5

	.type	gs_iwlo_device,@object  # @gs_iwlo_device
	.section	.rodata,"a",@progbits
	.globl	gs_iwlo_device
	.align	8
gs_iwlo_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
	.quad	.L.str.2
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
	.long	1360                    # 0x550
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1126170624              # float 1.600000e+02
	.long	1116733440              # float 7.200000e+01
	.long	1126170624              # float 1.600000e+02
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.long	0                       # float 0.000000e+00
	.long	1108344832              # float 3.600000e+01
	.long	1108344832              # float 3.600000e+01
	.long	0                       # float 0.000000e+00
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
	.quad	dmp_print_page
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
	.size	gs_iwlo_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"iwhi"
	.size	.L.str.3, 5

	.type	gs_iwhi_device,@object  # @gs_iwhi_device
	.section	.rodata,"a",@progbits
	.globl	gs_iwhi_device
	.align	8
gs_iwhi_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
	.quad	.L.str.3
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
	.long	1360                    # 0x550
	.long	1584                    # 0x630
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1126170624              # float 1.600000e+02
	.long	1125122048              # float 1.440000e+02
	.long	1126170624              # float 1.600000e+02
	.long	1125122048              # float 1.440000e+02
	.zero	8
	.long	0                       # float 0.000000e+00
	.long	1108344832              # float 3.600000e+01
	.long	1108344832              # float 3.600000e+01
	.long	0                       # float 0.000000e+00
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
	.quad	dmp_print_page
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
	.size	gs_iwhi_device, 18472

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"iwlq"
	.size	.L.str.4, 5

	.type	gs_iwlq_device,@object  # @gs_iwlq_device
	.section	.rodata,"a",@progbits
	.globl	gs_iwlq_device
	.align	8
gs_iwlq_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
	.quad	.L.str.4
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
	.long	2720                    # 0xaa0
	.long	2376                    # 0x948
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1134559232              # float 3.200000e+02
	.long	1129840640              # float 2.160000e+02
	.long	1134559232              # float 3.200000e+02
	.long	1129840640              # float 2.160000e+02
	.zero	8
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1108344832              # float 3.600000e+01
	.long	0                       # float 0.000000e+00
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
	.quad	dmp_print_page
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
	.size	gs_iwlq_device, 18472

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"dmp_print_page(buf1)"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dmp_print_page(buf2)"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dmp_print_page(prn)"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\r\n\033>\033T16"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033P\033a3"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033P"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033q"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033U%04d%c%c%c"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\033C%04d"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\033V%04d%c"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\033G%04d"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\033T01\r\n"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\033T15"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\r\n"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\033T99\n\n\033r\n\n\n\n\033f"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\033T16\f\033<\033B\033E"
	.size	.L.str.20, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
