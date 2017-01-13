	.text
	.file	"gdevdm24.bc"
	.align	16, 0x90
	.type	necp6_print_page,@function
necp6_print_page:                       # @necp6_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp0:
	.cfi_def_cfa_offset 32
	movabsq	$22829165079956736, %rax # imm = 0x511B01331C0D00
	movq	%rax, 14(%rsp)
	movabsq	$936867587056943131, %rax # imm = 0xD006C1B501B401B
	movq	%rax, 8(%rsp)
	leaq	8(%rsp), %rdx
	callq	dot24_print_page
	addq	$24, %rsp
	retq
.Lfunc_end0:
	.size	necp6_print_page, .Lfunc_end0-necp6_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	lq850_print_page,@function
lq850_print_page:                       # @lq850_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
	movabsq	$22829164945673472, %rax # imm = 0x511B012B1B0D00
	movq	%rax, 14(%rsp)
	movabsq	$936867587056943131, %rax # imm = 0xD006C1B501B401B
	movq	%rax, 8(%rsp)
	leaq	8(%rsp), %rdx
	callq	dot24_print_page
	addq	$24, %rsp
	retq
.Lfunc_end1:
	.size	lq850_print_page, .Lfunc_end1-lq850_print_page
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1092616192              # float 10
	.text
	.align	16, 0x90
	.type	dot24_print_page,@function
dot24_print_page:                       # @dot24_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 256
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	%r12, 112(%rsp)         # 8-byte Spill
	cvttss2si	884(%r12), %ebx
	movl	%ebx, 108(%rsp)         # 4-byte Spill
	cvttss2si	888(%r12), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	cmpl	$360, %eax              # imm = 0x168
	sete	168(%rsp)               # 1-byte Folded Spill
	movl	$48, %eax
	movl	$24, %ebp
	cmovel	%eax, %ebp
	movl	%ebp, 88(%rsp)          # 4-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r15d
	movl	%ebp, %esi
	imull	%r15d, %esi
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r13
	movl	832(%r12), %eax
	addl	$7, %eax
	andl	$-8, %eax
	leal	(%rax,%rax,2), %esi
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	callq	*88(%rdi)
	movslq	%ebx, %rcx
	imulq	$1717986919, %rcx, %rbx # imm = 0x66666667
	movq	%rbx, %rcx
	shrq	$63, %rcx
	sarq	$34, %rbx
	addl	%ecx, %ebx
	testq	%r13, %r13
	je	.LBB2_2
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB2_2
# BB#6:                                 # %if.end.41
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movl	$13, %esi
	movl	$1, %edx
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	%r14, 176(%rsp)         # 8-byte Spill
	movq	%r14, %rcx
	callq	fwrite
	cvtsi2ssl	832(%r12), %xmm0
	divss	884(%r12), %xmm0
	mulss	.LCPI2_0(%rip), %xmm0
	cvttss2si	%xmm0, %edi
	addl	$2, %edi
	movq	%r14, %rsi
	callq	fputc
	cmpl	$0, 836(%r12)
	movq	%r13, 152(%rsp)         # 8-byte Spill
	jle	.LBB2_84
# BB#7:                                 # %while.body.lr.ph
	movzbl	168(%rsp), %eax         # 1-byte Folded Reload
	leal	1(%rax), %esi
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	leal	(%rbx,%rbx,2), %ecx
	cmpl	$360, 92(%rsp)          # 4-byte Folded Reload
                                        # imm = 0x168
	sete	%dl
	cmpl	$360, 108(%rsp)         # 4-byte Folded Reload
                                        # imm = 0x168
	sete	%bl
	leaq	1(%r13), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	leal	-1(%r15), %edi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movzbl	%dl, %edx
	movl	$2, %edi
	subl	%edx, %edi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	%r15d, %edi
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	leal	(,%r15,8), %edx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	leal	(%rdx,%rdx,2), %edx
	leaq	(%rdx,%r13), %rdx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	leaq	(%r13,%rdi), %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	44(%rsp), %edx          # 4-byte Reload
	subl	%r15d, %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	movzbl	%bl, %edx
	addl	$39, %edx
	movl	%edx, 104(%rsp)         # 4-byte Spill
	leal	-1(%rsi), %edx
	movl	%edx, 132(%rsp)         # 4-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	$48, %ecx
	subl	%eax, %ecx
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%r15d, %eax
	shll	$4, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB2_8:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
                                        #     Child Loop BB2_20 Depth 2
                                        #     Child Loop BB2_24 Depth 2
                                        #     Child Loop BB2_30 Depth 2
                                        #       Child Loop BB2_32 Depth 3
                                        #       Child Loop BB2_34 Depth 3
                                        #       Child Loop BB2_39 Depth 3
                                        #         Child Loop BB2_41 Depth 4
                                        #           Child Loop BB2_55 Depth 5
                                        #         Child Loop BB2_64 Depth 4
                                        #       Child Loop BB2_75 Depth 3
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	%r13, %rdx
	movl	%r15d, %ecx
	callq	gdev_prn_copy_scan_lines
	cmpb	$0, (%r13)
	movq	176(%rsp), %rbp         # 8-byte Reload
	jne	.LBB2_12
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	%r13, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB2_12
# BB#10:                                # %if.then.64
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	(%rbx,%rax), %ebx
	movl	$1, %eax
	jmp	.LBB2_83
	.align	16, 0x90
.LBB2_11:                               # %while.body.71
                                        #   in Loop: Header=BB2_12 Depth=2
	movl	$.L.str.5, %edi
	movq	%rbp, %rsi
	callq	fputs
	addl	$-510, %ebx             # imm = 0xFFFFFFFFFFFFFE02
.LBB2_12:                               # %while.body.71
                                        #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %edx
	sarl	%edx
	cmpl	$255, %edx
	jg	.LBB2_11
# BB#13:                                # %while.end
                                        #   in Loop: Header=BB2_8 Depth=1
	testl	%ebx, %ebx
	je	.LBB2_18
# BB#14:                                # %if.then.75
                                        #   in Loop: Header=BB2_8 Depth=1
	testl	%edx, %edx
	je	.LBB2_16
# BB#15:                                # %if.then.78
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
.LBB2_16:                               # %if.end.81
                                        #   in Loop: Header=BB2_8 Depth=1
	testb	$1, %bl
	je	.LBB2_18
# BB#17:                                # %if.then.84
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	$10, %edi
	movq	%rbp, %rsi
	callq	fputc
.LBB2_18:                               # %if.end.87
                                        #   in Loop: Header=BB2_8 Depth=1
	cmpl	$360, 92(%rsp)          # 4-byte Folded Reload
                                        # imm = 0x168
	jne	.LBB2_27
# BB#19:                                # %for.body.preheader
                                        #   in Loop: Header=BB2_8 Depth=1
	leal	2(%r14), %ebp
	movl	$1, %ebx
	movq	72(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB2_20:                               # %for.body
                                        #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	112(%rsp), %rdi         # 8-byte Reload
	movl	%ebp, %esi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	callq	gdev_prn_copy_scan_lines
	testl	%eax, %eax
	je	.LBB2_21
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB2_20 Depth=2
	incl	%ebx
	addq	168(%rsp), %r12         # 8-byte Folded Reload
	addl	$2, %ebp
	cmpl	$24, %ebx
	jl	.LBB2_20
	jmp	.LBB2_23
	.align	16, 0x90
.LBB2_27:                               # %if.else
                                        #   in Loop: Header=BB2_8 Depth=1
	leal	1(%r14), %esi
	movq	%r14, 96(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	movl	68(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	incl	%eax
	xorl	%r14d, %r14d
	cmpl	$23, %eax
	jg	.LBB2_30
# BB#28:                                # %if.then.137
                                        #   in Loop: Header=BB2_8 Depth=1
	imull	%r15d, %eax
	leaq	(%r13,%rax), %rdi
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %edx
	subl	%eax, %edx
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	jmp	.LBB2_29
	.align	16, 0x90
.LBB2_21:                               # %if.then.97
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	$24, %edx
	subl	%ebx, %edx
	imull	%r15d, %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	memset
.LBB2_23:                               # %for.end
                                        #   in Loop: Header=BB2_8 Depth=1
	leal	1(%r14), %ebp
	movq	%r14, 96(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	movq	160(%rsp), %r12         # 8-byte Reload
	.align	16, 0x90
.LBB2_24:                               # %for.body.112
                                        #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	112(%rsp), %rdi         # 8-byte Reload
	movl	%ebp, %esi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	callq	gdev_prn_copy_scan_lines
	testl	%eax, %eax
	je	.LBB2_25
# BB#26:                                # %for.inc.124
                                        #   in Loop: Header=BB2_24 Depth=2
	incl	%ebx
	addq	168(%rsp), %r12         # 8-byte Folded Reload
	addl	$2, %ebp
	xorl	%r14d, %r14d
	cmpl	$24, %ebx
	jl	.LBB2_24
	jmp	.LBB2_30
	.align	16, 0x90
.LBB2_25:                               # %if.then.118
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	$24, %edx
	subl	%ebx, %edx
	imull	%r15d, %edx
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%r12, %rdi
.LBB2_29:                               # %for.body.150
                                        #   in Loop: Header=BB2_8 Depth=1
	callq	memset
	.align	16, 0x90
.LBB2_30:                               # %for.body.150
                                        #   Parent Loop BB2_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_32 Depth 3
                                        #       Child Loop BB2_34 Depth 3
                                        #       Child Loop BB2_39 Depth 3
                                        #         Child Loop BB2_41 Depth 4
                                        #           Child Loop BB2_55 Depth 5
                                        #         Child Loop BB2_64 Depth 4
                                        #       Child Loop BB2_75 Depth 3
	movl	%r14d, 184(%rsp)        # 4-byte Spill
	testl	%r14d, %r14d
	movq	160(%rsp), %rbx         # 8-byte Reload
	cmoveq	%r13, %rbx
	testl	%r15d, %r15d
	movq	192(%rsp), %rbp         # 8-byte Reload
	movq	136(%rsp), %r14         # 8-byte Reload
	movq	%r15, %r13
	movq	120(%rsp), %r15         # 8-byte Reload
	je	.LBB2_33
# BB#31:                                #   in Loop: Header=BB2_30 Depth=2
	movq	192(%rsp), %rbp         # 8-byte Reload
	movq	168(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %r12
	.align	16, 0x90
.LBB2_32:                               # %for.body.162
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$3, %ecx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%rbp, %rdx
	callq	memflip8x8
	leaq	(%rbx,%r14), %rdi
	leaq	1(%rbp), %rdx
	movl	$3, %ecx
	movl	%r13d, %esi
	callq	memflip8x8
	leaq	(%rbx,%r15), %rdi
	leaq	2(%rbp), %rdx
	movl	$3, %ecx
	movl	%r13d, %esi
	callq	memflip8x8
	incq	%rbx
	addq	$24, %rbp
	cmpq	%r12, %rbx
	jb	.LBB2_32
.LBB2_33:                               # %while.cond.174.preheader
                                        #   in Loop: Header=BB2_30 Depth=2
	addq	$-3, %rbp
	movq	%r13, %r15
	movl	184(%rsp), %r14d        # 4-byte Reload
	movq	192(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB2_34:                               # %while.cond.174
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rbx
	cmpq	%rax, %rbx
	jb	.LBB2_38
# BB#35:                                # %land.lhs.true.178
                                        #   in Loop: Header=BB2_34 Depth=3
	cmpb	$0, 2(%rbx)
	jne	.LBB2_38
# BB#36:                                # %land.lhs.true.183
                                        #   in Loop: Header=BB2_34 Depth=3
	cmpb	$0, 1(%rbx)
	jne	.LBB2_38
# BB#37:                                # %land.rhs
                                        #   in Loop: Header=BB2_34 Depth=3
	leaq	-3(%rbx), %rbp
	cmpb	$0, (%rbx)
	je	.LBB2_34
.LBB2_38:                               # %while.cond.174.for.cond.195.preheader_crit_edge
                                        #   in Loop: Header=BB2_30 Depth=2
	addq	$3, %rbx
	jmp	.LBB2_39
.LBB2_68:                               # %if.end.311
                                        #   in Loop: Header=BB2_39 Depth=3
	movl	$.L.str.7, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	16(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB2_39:                               # %for.cond.195.preheader
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_41 Depth 4
                                        #           Child Loop BB2_55 Depth 5
                                        #         Child Loop BB2_64 Depth 4
	cmpq	%rbx, %rax
	jae	.LBB2_79
# BB#40:                                # %for.body.198.lr.ph
                                        #   in Loop: Header=BB2_39 Depth=3
	movq	%rax, %r13
	movq	%r13, %rbp
	.align	16, 0x90
.LBB2_41:                               # %for.body.198
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        #       Parent Loop BB2_39 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_55 Depth 5
	cmpb	$0, (%rbp)
	jne	.LBB2_69
# BB#42:                                # %land.lhs.true.203
                                        #   in Loop: Header=BB2_41 Depth=4
	leaq	12(%rbp), %rax
	cmpq	%rbx, %rax
	ja	.LBB2_69
# BB#43:                                # %land.lhs.true.207
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpb	$0, 1(%rbp)
	jne	.LBB2_69
# BB#44:                                # %land.lhs.true.212
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpb	$0, 2(%rbp)
	jne	.LBB2_69
# BB#45:                                # %land.lhs.true.217
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpb	$0, 3(%rbp)
	jne	.LBB2_69
# BB#46:                                # %land.lhs.true.222
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpb	$0, 4(%rbp)
	jne	.LBB2_69
# BB#47:                                # %land.lhs.true.227
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpb	$0, 5(%rbp)
	jne	.LBB2_69
# BB#48:                                # %land.lhs.true.232
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpb	$0, 6(%rbp)
	jne	.LBB2_69
# BB#49:                                # %land.lhs.true.237
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpb	$0, 7(%rbp)
	jne	.LBB2_69
# BB#50:                                # %land.lhs.true.242
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpb	$0, 8(%rbp)
	jne	.LBB2_69
# BB#51:                                # %land.lhs.true.247
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpb	$0, 9(%rbp)
	jne	.LBB2_69
# BB#52:                                # %land.lhs.true.252
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpb	$0, 10(%rbp)
	jne	.LBB2_69
# BB#53:                                # %land.lhs.true.257
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpb	$0, 11(%rbp)
	je	.LBB2_54
	.align	16, 0x90
.LBB2_69:                               # %if.else.314
                                        #   in Loop: Header=BB2_41 Depth=4
	addq	$3, %rbp
	movq	%rbp, %r12
.LBB2_70:                               # %for.cond.195.backedge
                                        #   in Loop: Header=BB2_41 Depth=4
	cmpq	%rbx, %r12
	movq	%r12, %rbp
	jb	.LBB2_41
	jmp	.LBB2_71
.LBB2_54:                               #   in Loop: Header=BB2_41 Depth=4
	leaq	10(%rbp), %rcx
.LBB2_55:                               # %while.cond.264
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        #       Parent Loop BB2_39 Depth=3
                                        #         Parent Loop BB2_41 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%rax, %r12
	leaq	3(%r12), %rax
	cmpq	%rbx, %rax
	ja	.LBB2_59
# BB#56:                                # %land.lhs.true.268
                                        #   in Loop: Header=BB2_55 Depth=5
	cmpb	$0, (%r12)
	jne	.LBB2_59
# BB#57:                                # %land.lhs.true.273
                                        #   in Loop: Header=BB2_55 Depth=5
	cmpb	$0, 1(%r12)
	jne	.LBB2_59
# BB#58:                                # %land.rhs.278
                                        #   in Loop: Header=BB2_55 Depth=5
	cmpb	$0, 2(%r12)
	je	.LBB2_55
.LBB2_59:                               # %while.end.286
                                        #   in Loop: Header=BB2_41 Depth=4
	movq	%r12, %rax
	movq	192(%rsp), %rsi         # 8-byte Reload
	subq	%rsi, %rax
	cqto
	movq	24(%rsp), %rdi          # 8-byte Reload
	idivq	%rdi
	movq	%rax, %rdx
	movl	%edi, %eax
	imull	%edx, %eax
	cltq
	leaq	(%rax,%rsi), %rax
	cmpq	%rcx, %rax
	jbe	.LBB2_70
# BB#60:                                # %if.then.296
                                        #   in Loop: Header=BB2_39 Depth=3
	movq	%rax, 16(%rsp)          # 8-byte Spill
	subq	%r13, %rbp
	movq	176(%rsp), %r12         # 8-byte Reload
	jbe	.LBB2_68
# BB#61:                                # %if.then.299
                                        #   in Loop: Header=BB2_39 Depth=3
	movq	%rdx, (%rsp)            # 8-byte Spill
	cmpl	$360, 108(%rsp)         # 4-byte Folded Reload
                                        # imm = 0x168
	jne	.LBB2_67
# BB#62:                                # %if.then.301
                                        #   in Loop: Header=BB2_39 Depth=3
	cmpl	$7, %ebp
	movl	$6, %ecx
	jl	.LBB2_63
.LBB2_64:                               # %for.body.i
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        #       Parent Loop BB2_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, %rax
	movb	-3(%r13,%rax), %cl
	notb	%cl
	orb	(%r13,%rax), %cl
	andb	%cl, -6(%r13,%rax)
	movb	-2(%r13,%rax), %cl
	notb	%cl
	orb	1(%r13,%rax), %cl
	andb	%cl, -5(%r13,%rax)
	movb	-1(%r13,%rax), %cl
	notb	%cl
	orb	2(%r13,%rax), %cl
	andb	%cl, -4(%r13,%rax)
	leaq	3(%rax), %rcx
	cmpl	%ebp, %ecx
	jl	.LBB2_64
# BB#65:                                #   in Loop: Header=BB2_39 Depth=3
	leaq	3(%r13,%rax), %rax
	jmp	.LBB2_66
.LBB2_63:                               #   in Loop: Header=BB2_39 Depth=3
	leaq	6(%r13), %rax
.LBB2_66:                               # %dot24_improve_bitmap.exit
                                        #   in Loop: Header=BB2_39 Depth=3
	movb	-3(%rax), %cl
	notb	%cl
	andb	%cl, -6(%rax)
	movb	-2(%rax), %cl
	notb	%cl
	andb	%cl, -5(%rax)
	movb	-1(%rax), %cl
	notb	%cl
	andb	%cl, -4(%rax)
.LBB2_67:                               # %if.end.306
                                        #   in Loop: Header=BB2_39 Depth=3
	movslq	%ebp, %rax
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$32, %rcx
	addl	%eax, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	$27, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$42, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	104(%rsp), %edi         # 4-byte Reload
	movq	%r12, %rsi
	callq	fputc
	movq	8(%rsp), %rax           # 8-byte Reload
	movzbl	%al, %edi
	movq	%r12, %rsi
	callq	fputc
	movq	8(%rsp), %rdi           # 8-byte Reload
	sarl	$8, %edi
	movq	%r12, %rsi
	callq	fputc
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	fwrite
	movq	(%rsp), %rdx            # 8-byte Reload
	jmp	.LBB2_68
	.align	16, 0x90
.LBB2_71:                               # %for.end.317
                                        #   in Loop: Header=BB2_30 Depth=2
	subq	%r13, %r12
	jbe	.LBB2_79
# BB#72:                                # %if.then.320
                                        #   in Loop: Header=BB2_30 Depth=2
	cmpl	$360, 108(%rsp)         # 4-byte Folded Reload
                                        # imm = 0x168
	jne	.LBB2_78
# BB#73:                                # %if.then.322
                                        #   in Loop: Header=BB2_30 Depth=2
	cmpl	$7, %r12d
	movl	$6, %ecx
	jl	.LBB2_74
	.align	16, 0x90
.LBB2_75:                               # %for.body.i.27
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rax
	movb	-3(%r13,%rax), %cl
	notb	%cl
	orb	(%r13,%rax), %cl
	andb	%cl, -6(%r13,%rax)
	movb	-2(%r13,%rax), %cl
	notb	%cl
	orb	1(%r13,%rax), %cl
	andb	%cl, -5(%r13,%rax)
	movb	-1(%r13,%rax), %cl
	notb	%cl
	orb	2(%r13,%rax), %cl
	andb	%cl, -4(%r13,%rax)
	leaq	3(%rax), %rcx
	cmpl	%r12d, %ecx
	jl	.LBB2_75
# BB#76:                                #   in Loop: Header=BB2_30 Depth=2
	leaq	3(%r13,%rax), %rax
	jmp	.LBB2_77
.LBB2_74:                               #   in Loop: Header=BB2_30 Depth=2
	leaq	6(%r13), %rax
.LBB2_77:                               # %dot24_improve_bitmap.exit41
                                        #   in Loop: Header=BB2_30 Depth=2
	movb	-3(%rax), %cl
	notb	%cl
	andb	%cl, -6(%rax)
	movb	-2(%rax), %cl
	notb	%cl
	andb	%cl, -5(%rax)
	movb	-1(%rax), %cl
	notb	%cl
	andb	%cl, -4(%rax)
.LBB2_78:                               # %if.end.327
                                        #   in Loop: Header=BB2_30 Depth=2
	movslq	%r12d, %rax
	imulq	$1431655766, %rax, %rbx # imm = 0x55555556
	movq	%rbx, %rax
	shrq	$63, %rax
	shrq	$32, %rbx
	addl	%eax, %ebx
	movl	$27, %edi
	movq	176(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rsi
	callq	fputc
	movl	$42, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	104(%rsp), %edi         # 4-byte Reload
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	fputc
	sarl	$8, %ebx
	movl	%ebx, %edi
	movq	%rbp, %rsi
	callq	fputc
	movslq	%r12d, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%rbp, %rcx
	callq	fwrite
.LBB2_79:                               # %if.end.332
                                        #   in Loop: Header=BB2_30 Depth=2
	movl	$13, %edi
	movq	176(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	fputc
	cmpl	132(%rsp), %r14d        # 4-byte Folded Reload
	jge	.LBB2_81
# BB#80:                                # %if.then.337
                                        #   in Loop: Header=BB2_30 Depth=2
	movl	$10, %edi
	movq	%rbx, %rsi
	callq	fputc
.LBB2_81:                               # %for.inc.340
                                        #   in Loop: Header=BB2_30 Depth=2
	incl	%r14d
	movq	144(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r14d
	movq	152(%rsp), %r13         # 8-byte Reload
	jl	.LBB2_30
# BB#82:                                #   in Loop: Header=BB2_8 Depth=1
	movl	88(%rsp), %eax          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %ebx
	movq	112(%rsp), %r12         # 8-byte Reload
	movq	96(%rsp), %r14          # 8-byte Reload
.LBB2_83:                               # %cleanup
                                        #   in Loop: Header=BB2_8 Depth=1
	addl	%eax, %r14d
	cmpl	836(%r12), %r14d
	jl	.LBB2_8
.LBB2_84:                               # %while.end.350
	movl	$.L.str.8, %edi
	movq	176(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	fputs
	movq	%rbx, %rdi
	callq	fflush
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	192(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	xorl	%ebx, %ebx
	jmp	.LBB2_85
.LBB2_2:                                # %if.then
	testq	%rax, %rax
	je	.LBB2_4
# BB#3:                                 # %if.then.26
	movq	24(%r12), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.4, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
.LBB2_4:                                # %if.end
	movl	$-25, %ebx
	testq	%r13, %r13
	je	.LBB2_85
# BB#5:                                 # %if.then.33
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
.LBB2_85:                               # %cleanup.365
	movl	%ebx, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dot24_print_page, .Lfunc_end2-dot24_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"necp6"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_necp6_device,@object # @gs_necp6_device
	.section	.rodata,"a",@progbits
	.globl	gs_necp6_device
	.align	8
gs_necp6_device:
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
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
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
	.quad	necp6_print_page
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
	.size	gs_necp6_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"lq850"
	.size	.L.str.2, 6

	.type	gs_lq850_device,@object # @gs_lq850_device
	.section	.rodata,"a",@progbits
	.globl	gs_lq850_device
	.align	8
gs_lq850_device:
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
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
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
	.quad	lq850_print_page
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
	.size	gs_lq850_device, 18472

	.type	.Lnecp6_print_page.necp6_init_string,@object # @necp6_print_page.necp6_init_string
.Lnecp6_print_page.necp6_init_string:
	.asciz	"\033@\033P\033l\000\r\0343\001\033Q"
	.size	.Lnecp6_print_page.necp6_init_string, 14

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"dot24_print_page (in)"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dot24_print_page (out)"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033J\377"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033J%c"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033D%c%c\t"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\f\033@"
	.size	.L.str.8, 4

	.type	.Llq850_print_page.lq850_init_string,@object # @lq850_print_page.lq850_init_string
	.section	.rodata,"a",@progbits
.Llq850_print_page.lq850_init_string:
	.asciz	"\033@\033P\033l\000\r\033+\001\033Q"
	.size	.Llq850_print_page.lq850_init_string, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
