	.text
	.file	"gdevpsfx.bc"
	.globl	psf_convert_type1_to_type2
	.align	16, 0x90
	.type	psf_convert_type1_to_type2,@function
psf_convert_type1_to_type2:             # @psf_convert_type1_to_type2
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
	subq	$13720, %rsp            # imm = 0x3598
.Ltmp6:
	.cfi_def_cfa_offset 13776
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	movups	%xmm0, 13496(%rsp)
	movl	$0, 1332(%rsp)
	movl	$0, 1336(%rsp)
	movl	$0, 1328(%rsp)
	movl	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	%r14, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%ebp, %ebp
	leaq	2496(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	gs_type1_interp_init
	movl	$8, 13564(%rsp)
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	%xmm2, 12736(%rsp)
	movups	%xmm1, 12720(%rsp)
	movups	%xmm0, 12704(%rsp)
	movq	12352(%rsp), %rax
	movl	512(%rax), %esi
	movslq	13472(%rsp), %rax
	decq	%rax
	leaq	(%rax,%rax,8), %rax
	movq	12704(%rsp,%rax,8), %rcx
	movw	$4330, %dx              # imm = 0x10EA
	testl	%esi, %esi
	jle	.LBB0_1
# BB#2:                                 # %for.body.i.i.preheader
	movq	%r14, 120(%rsp)         # 8-byte Spill
	incl	%esi
	movw	$4330, %dx              # imm = 0x10EA
	.align	16, 0x90
.LBB0_3:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %edi
	addl	%edi, %edx
	imull	$-12691, %edx, %edx     # imm = 0xFFFFFFFFFFFFCE6D
	addl	$22719, %edx            # imm = 0x58BF
	incq	%rcx
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB0_3
	jmp	.LBB0_4
.LBB0_1:
	movq	%r14, 120(%rsp)         # 8-byte Spill
.LBB0_4:                                # %type1_next_init.exit
	movq	%rcx, 12680(%rsp,%rax,8)
	movw	%dx, 12696(%rsp,%rax,8)
	leaq	1340(%rsp), %r13
	leaq	172(%rsp), %r14
	jmp	.LBB0_5
.LBB0_127:                              # %if.end.53
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$-2, %ecx
	movl	%ecx, 12676(%rsp)
	movl	100(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	.align	16, 0x90
.LBB0_5:                                # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_94 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_32 Depth 3
	movl	%ebp, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_41:                               # %for.cond.backedge
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	$0, 12676(%rsp)
.LBB0_6:                                # %for.cond
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_94 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_32 Depth 3
	leaq	2496(%rsp), %rdi
	callq	type1_next
	movl	12676(%rsp), %ecx
	movslq	%ecx, %r15
	cmpl	$13, %eax
	jle	.LBB0_7
# BB#13:                                # %for.cond
                                        #   in Loop: Header=BB0_6 Depth=2
	leal	-32(%rax), %edx
	cmpl	$7, %edx
	jbe	.LBB0_338
# BB#14:                                # %for.cond
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$16, %eax
	je	.LBB0_125
# BB#15:                                # %for.cond
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$14, %eax
	jne	.LBB0_12
	jmp	.LBB0_16
	.align	16, 0x90
.LBB0_7:                                # %for.cond
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$2, %eax
	jle	.LBB0_8
# BB#10:                                # %for.cond
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$3, %eax
	jne	.LBB0_11
# BB#42:                                # %sw.bb.20
                                        #   in Loop: Header=BB0_6 Depth=2
	movslq	160(%rsp), %rsi
	cmpq	$95, %rsi
	jg	.LBB0_41
# BB#43:                                # %while.cond.preheader.i.255
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	12476(%rsp,%r15,4), %eax
	addl	13496(%rsp), %eax
	movl	12480(%rsp,%r15,4), %ecx
	addl	%eax, %ecx
	leaq	(%rsi,%rsi,2), %rdi
	leaq	172(%rsp,%rdi,4), %rdx
	testl	%esi, %esi
	jle	.LBB0_44
# BB#45:                                # %land.rhs.i.259.preheader
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	160(%rsp,%rdi,4), %rsi
	.align	16, 0x90
.LBB0_46:                               # %land.rhs.i.259
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	12(%rsi), %rdi
	cmpl	(%rsi), %eax
	jl	.LBB0_49
# BB#47:                                # %lor.rhs.i.261
                                        #   in Loop: Header=BB0_46 Depth=3
	jne	.LBB0_52
# BB#48:                                # %land.rhs.12.i.264
                                        #   in Loop: Header=BB0_46 Depth=3
	cmpl	4(%rsi), %ecx
	jge	.LBB0_51
.LBB0_49:                               # %while.body.i.267
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	8(%rsi), %edi
	movl	%edi, 20(%rsi)
	movq	(%rsi), %rdi
	movq	%rdi, 12(%rsi)
	cmpq	%r14, %rsi
	leaq	-12(%rsi), %rsi
	ja	.LBB0_46
# BB#50:                                # %if.end.36.i.281.loopexitsplit
                                        #   in Loop: Header=BB0_6 Depth=2
	addq	$12, %rsi
	movq	%rsi, %rdi
	jmp	.LBB0_52
	.align	16, 0x90
.LBB0_338:                              # %for.cond
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	$1, %ebp
	jmpq	*.LJTI0_0(,%rdx,8)
.LBB0_55:                               # %sw.bb.35
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	13496(%rsp), %r12d
	movslq	160(%rsp), %rax
	cmpq	$95, %rax
	jg	.LBB0_67
# BB#56:                                # %while.cond.preheader.i.577
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	12460(%rsp,%r15,4), %ecx
	addl	%r12d, %ecx
	movl	12464(%rsp,%r15,4), %esi
	addl	%ecx, %esi
	leaq	(%rax,%rax,2), %rdi
	leaq	172(%rsp,%rdi,4), %rdx
	testl	%eax, %eax
	jle	.LBB0_57
# BB#58:                                # %land.rhs.i.581.preheader
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	160(%rsp,%rdi,4), %rax
	.align	16, 0x90
.LBB0_59:                               # %land.rhs.i.581
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	12(%rax), %rdi
	cmpl	(%rax), %ecx
	jl	.LBB0_62
# BB#60:                                # %lor.rhs.i.583
                                        #   in Loop: Header=BB0_59 Depth=3
	jne	.LBB0_64
# BB#61:                                # %land.rhs.12.i.586
                                        #   in Loop: Header=BB0_59 Depth=3
	cmpl	4(%rax), %esi
	jge	.LBB0_65
.LBB0_62:                               # %while.body.i.589
                                        #   in Loop: Header=BB0_59 Depth=3
	movl	8(%rax), %edi
	movl	%edi, 20(%rax)
	movq	(%rax), %rdi
	movq	%rdi, 12(%rax)
	cmpq	%r14, %rax
	leaq	-12(%rax), %rax
	ja	.LBB0_59
# BB#63:                                # %if.end.36.i.603.loopexitsplit
                                        #   in Loop: Header=BB0_6 Depth=2
	addq	$12, %rax
	movq	%rax, %rdi
	jmp	.LBB0_64
.LBB0_8:                                # %for.cond
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$1, %eax
	jne	.LBB0_9
# BB#28:                                # %sw.bb.16
                                        #   in Loop: Header=BB0_6 Depth=2
	movslq	1328(%rsp), %rsi
	cmpq	$95, %rsi
	jg	.LBB0_41
# BB#29:                                # %while.cond.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	12476(%rsp,%r15,4), %eax
	addl	13500(%rsp), %eax
	movl	12480(%rsp,%r15,4), %ecx
	addl	%eax, %ecx
	leaq	(%rsi,%rsi,2), %rdi
	leaq	1340(%rsp,%rdi,4), %rdx
	testl	%esi, %esi
	jle	.LBB0_30
# BB#31:                                # %land.rhs.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	1328(%rsp,%rdi,4), %rsi
	.align	16, 0x90
.LBB0_32:                               # %land.rhs.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	12(%rsi), %rdi
	cmpl	(%rsi), %eax
	jl	.LBB0_35
# BB#33:                                # %lor.rhs.i
                                        #   in Loop: Header=BB0_32 Depth=3
	jne	.LBB0_37
# BB#34:                                # %land.rhs.12.i
                                        #   in Loop: Header=BB0_32 Depth=3
	cmpl	4(%rsi), %ecx
	jge	.LBB0_39
.LBB0_35:                               # %while.body.i
                                        #   in Loop: Header=BB0_32 Depth=3
	movl	8(%rsi), %edi
	movl	%edi, 20(%rsi)
	movq	(%rsi), %rdi
	movq	%rdi, 12(%rsi)
	cmpq	%r13, %rsi
	leaq	-12(%rsi), %rsi
	ja	.LBB0_32
# BB#36:                                # %if.end.36.i.loopexitsplit
                                        #   in Loop: Header=BB0_6 Depth=2
	addq	$12, %rsi
	movq	%rsi, %rdi
	jmp	.LBB0_37
.LBB0_11:                               # %for.cond
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$13, %eax
	jne	.LBB0_12
# BB#26:                                # %sw.bb
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	12484(%rsp), %esi
	movl	12488(%rsp), %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	jmp	.LBB0_27
.LBB0_90:                               # %sw.bb.39
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	13500(%rsp), %ebp
	movslq	1328(%rsp), %rax
	cmpq	$95, %rax
	jg	.LBB0_102
# BB#91:                                # %while.cond.preheader.i.651
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	12460(%rsp,%r15,4), %ecx
	addl	%ebp, %ecx
	movl	12464(%rsp,%r15,4), %esi
	addl	%ecx, %esi
	leaq	(%rax,%rax,2), %rdi
	leaq	1340(%rsp,%rdi,4), %rdx
	testl	%eax, %eax
	jle	.LBB0_92
# BB#93:                                # %land.rhs.i.655.preheader
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	1328(%rsp,%rdi,4), %rax
	.align	16, 0x90
.LBB0_94:                               # %land.rhs.i.655
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	12(%rax), %rdi
	cmpl	(%rax), %ecx
	jl	.LBB0_97
# BB#95:                                # %lor.rhs.i.657
                                        #   in Loop: Header=BB0_94 Depth=3
	jne	.LBB0_99
# BB#96:                                # %land.rhs.12.i.660
                                        #   in Loop: Header=BB0_94 Depth=3
	cmpl	4(%rax), %esi
	jge	.LBB0_100
.LBB0_97:                               # %while.body.i.663
                                        #   in Loop: Header=BB0_94 Depth=3
	movl	8(%rax), %edi
	movl	%edi, 20(%rax)
	movq	(%rax), %rdi
	movq	%rdi, 12(%rax)
	cmpq	%r13, %rax
	leaq	-12(%rax), %rax
	ja	.LBB0_94
# BB#98:                                # %if.end.36.i.677.loopexitsplit
                                        #   in Loop: Header=BB0_6 Depth=2
	addq	$12, %rax
	movq	%rax, %rdi
	jmp	.LBB0_99
.LBB0_54:                               # %sw.bb.25
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	12484(%rsp), %esi
	movl	12488(%rsp), %edx
	movl	12492(%rsp), %ecx
	movl	12496(%rsp), %r8d
.LBB0_27:                               # %for.cond.backedge
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	2496(%rsp), %rdi
	callq	gs_type1_sbw
	movl	$0, 12676(%rsp)
	jmp	.LBB0_6
.LBB0_44:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rdx, %rdi
	jmp	.LBB0_52
.LBB0_30:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rdx, %rdi
	jmp	.LBB0_37
.LBB0_51:                               # %land.lhs.true.22.i.270
                                        #   in Loop: Header=BB0_6 Depth=2
	je	.LBB0_40
.LBB0_52:                               # %if.end.36.i.281
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	%eax, (%rdi)
.LBB0_53:                               # %for.cond.backedge
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	%ecx, 4(%rdi)
	incl	160(%rsp)
	movl	$0, 12676(%rsp)
	jmp	.LBB0_6
.LBB0_39:                               # %land.lhs.true.22.i
                                        #   in Loop: Header=BB0_6 Depth=2
	je	.LBB0_40
.LBB0_37:                               # %if.end.36.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	%eax, (%rdi)
.LBB0_38:                               # %for.cond.backedge
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	%ecx, 4(%rdi)
	incl	1328(%rsp)
	movl	$0, 12676(%rsp)
	jmp	.LBB0_6
.LBB0_57:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rdx, %rdi
	jmp	.LBB0_64
.LBB0_92:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rdx, %rdi
	jmp	.LBB0_99
.LBB0_9:                                # %for.cond
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$-1, %eax
	je	.LBB0_16
	.align	16, 0x90
.LBB0_12:                               # %if.end
                                        #   in Loop: Header=BB0_6 Depth=2
	testl	%eax, %eax
	jns	.LBB0_41
	jmp	.LBB0_268
.LBB0_65:                               # %land.lhs.true.22.i.592
                                        #   in Loop: Header=BB0_6 Depth=2
	jne	.LBB0_64
# BB#66:                                # %if.then.26.i.598
                                        #   in Loop: Header=BB0_6 Depth=2
	subq	%rdi, %rdx
	leaq	12(%rdi), %rsi
	callq	memmove
	movl	160(%rsp), %eax
	jmp	.LBB0_67
.LBB0_64:                               # %if.end.36.i.603
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	%ecx, (%rdi)
	movl	%esi, 4(%rdi)
	movl	160(%rsp), %eax
	incl	%eax
	movl	%eax, 160(%rsp)
.LBB0_67:                               # %type1_stem1.exit604
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$95, %eax
	jg	.LBB0_79
# BB#68:                                # %while.cond.preheader.i.614
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	12468(%rsp,%r15,4), %ecx
	addl	%r12d, %ecx
	movl	12472(%rsp,%r15,4), %esi
	addl	%ecx, %esi
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,2), %rdi
	leaq	172(%rsp,%rdi,4), %rdx
	testl	%eax, %eax
	jle	.LBB0_69
# BB#70:                                # %land.rhs.i.618.preheader
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	160(%rsp,%rdi,4), %rax
	.align	16, 0x90
.LBB0_71:                               # %land.rhs.i.618
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	12(%rax), %rdi
	cmpl	(%rax), %ecx
	jl	.LBB0_74
# BB#72:                                # %lor.rhs.i.620
                                        #   in Loop: Header=BB0_71 Depth=3
	jne	.LBB0_76
# BB#73:                                # %land.rhs.12.i.623
                                        #   in Loop: Header=BB0_71 Depth=3
	cmpl	4(%rax), %esi
	jge	.LBB0_77
.LBB0_74:                               # %while.body.i.626
                                        #   in Loop: Header=BB0_71 Depth=3
	movl	8(%rax), %edi
	movl	%edi, 20(%rax)
	movq	(%rax), %rdi
	movq	%rdi, 12(%rax)
	cmpq	%r14, %rax
	leaq	-12(%rax), %rax
	ja	.LBB0_71
# BB#75:                                # %if.end.36.i.640.loopexitsplit
                                        #   in Loop: Header=BB0_6 Depth=2
	addq	$12, %rax
	movq	%rax, %rdi
	jmp	.LBB0_76
.LBB0_69:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rdx, %rdi
	jmp	.LBB0_76
.LBB0_100:                              # %land.lhs.true.22.i.666
                                        #   in Loop: Header=BB0_6 Depth=2
	jne	.LBB0_99
# BB#101:                               # %if.then.26.i.672
                                        #   in Loop: Header=BB0_6 Depth=2
	subq	%rdi, %rdx
	leaq	12(%rdi), %rsi
	callq	memmove
	movl	1328(%rsp), %eax
	jmp	.LBB0_102
.LBB0_99:                               # %if.end.36.i.677
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	%ecx, (%rdi)
	movl	%esi, 4(%rdi)
	movl	1328(%rsp), %eax
	incl	%eax
	movl	%eax, 1328(%rsp)
.LBB0_102:                              # %type1_stem1.exit678
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$95, %eax
	jg	.LBB0_114
# BB#103:                               # %while.cond.preheader.i.370
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	12468(%rsp,%r15,4), %ecx
	addl	%ebp, %ecx
	movl	12472(%rsp,%r15,4), %esi
	addl	%ecx, %esi
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,2), %rdi
	leaq	1340(%rsp,%rdi,4), %rdx
	testl	%eax, %eax
	jle	.LBB0_104
# BB#105:                               # %land.rhs.i.374.preheader
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	1328(%rsp,%rdi,4), %rax
	.align	16, 0x90
.LBB0_106:                              # %land.rhs.i.374
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	12(%rax), %rdi
	cmpl	(%rax), %ecx
	jl	.LBB0_109
# BB#107:                               # %lor.rhs.i.376
                                        #   in Loop: Header=BB0_106 Depth=3
	jne	.LBB0_111
# BB#108:                               # %land.rhs.12.i.379
                                        #   in Loop: Header=BB0_106 Depth=3
	cmpl	4(%rax), %esi
	jge	.LBB0_112
.LBB0_109:                              # %while.body.i.382
                                        #   in Loop: Header=BB0_106 Depth=3
	movl	8(%rax), %edi
	movl	%edi, 20(%rax)
	movq	(%rax), %rdi
	movq	%rdi, 12(%rax)
	cmpq	%r13, %rax
	leaq	-12(%rax), %rax
	ja	.LBB0_106
# BB#110:                               # %if.end.36.i.396.loopexitsplit
                                        #   in Loop: Header=BB0_6 Depth=2
	addq	$12, %rax
	movq	%rax, %rdi
	jmp	.LBB0_111
.LBB0_104:                              #   in Loop: Header=BB0_6 Depth=2
	movq	%rdx, %rdi
	jmp	.LBB0_111
.LBB0_77:                               # %land.lhs.true.22.i.629
                                        #   in Loop: Header=BB0_6 Depth=2
	jne	.LBB0_76
# BB#78:                                # %if.then.26.i.635
                                        #   in Loop: Header=BB0_6 Depth=2
	subq	%rdi, %rdx
	leaq	12(%rdi), %rsi
	callq	memmove
	movl	160(%rsp), %eax
	jmp	.LBB0_79
.LBB0_76:                               # %if.end.36.i.640
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	%ecx, (%rdi)
	movl	%esi, 4(%rdi)
	movl	160(%rsp), %eax
	incl	%eax
	movl	%eax, 160(%rsp)
.LBB0_79:                               # %type1_stem1.exit641
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$95, %eax
	jg	.LBB0_41
# BB#80:                                # %while.cond.preheader.i.293
                                        #   in Loop: Header=BB0_6 Depth=2
	addl	12476(%rsp,%r15,4), %r12d
	movl	12480(%rsp,%r15,4), %ecx
	addl	%r12d, %ecx
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	leaq	172(%rsp,%rsi,4), %rdx
	testl	%eax, %eax
	jle	.LBB0_81
# BB#82:                                # %land.rhs.i.297.preheader
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	160(%rsp,%rsi,4), %rax
	.align	16, 0x90
.LBB0_83:                               # %land.rhs.i.297
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	12(%rax), %rdi
	cmpl	(%rax), %r12d
	jl	.LBB0_86
# BB#84:                                # %lor.rhs.i.299
                                        #   in Loop: Header=BB0_83 Depth=3
	jne	.LBB0_89
# BB#85:                                # %land.rhs.12.i.302
                                        #   in Loop: Header=BB0_83 Depth=3
	cmpl	4(%rax), %ecx
	jge	.LBB0_88
.LBB0_86:                               # %while.body.i.305
                                        #   in Loop: Header=BB0_83 Depth=3
	movl	8(%rax), %esi
	movl	%esi, 20(%rax)
	movq	(%rax), %rsi
	movq	%rsi, 12(%rax)
	cmpq	%r14, %rax
	leaq	-12(%rax), %rax
	ja	.LBB0_83
# BB#87:                                # %if.end.36.i.319.loopexitsplit
                                        #   in Loop: Header=BB0_6 Depth=2
	addq	$12, %rax
	movq	%rax, %rdi
	movl	%r12d, (%rdi)
	jmp	.LBB0_53
.LBB0_81:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rdx, %rdi
	movl	%r12d, (%rdi)
	jmp	.LBB0_53
.LBB0_112:                              # %land.lhs.true.22.i.385
                                        #   in Loop: Header=BB0_6 Depth=2
	jne	.LBB0_111
# BB#113:                               # %if.then.26.i.391
                                        #   in Loop: Header=BB0_6 Depth=2
	subq	%rdi, %rdx
	leaq	12(%rdi), %rsi
	callq	memmove
	movl	1328(%rsp), %eax
	jmp	.LBB0_114
.LBB0_111:                              # %if.end.36.i.396
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	%ecx, (%rdi)
	movl	%esi, 4(%rdi)
	movl	1328(%rsp), %eax
	incl	%eax
	movl	%eax, 1328(%rsp)
.LBB0_114:                              # %type1_stem1.exit397
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$95, %eax
	jg	.LBB0_41
# BB#115:                               # %while.cond.preheader.i.332
                                        #   in Loop: Header=BB0_6 Depth=2
	addl	12476(%rsp,%r15,4), %ebp
	movl	12480(%rsp,%r15,4), %ecx
	addl	%ebp, %ecx
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	leaq	1340(%rsp,%rsi,4), %rdx
	testl	%eax, %eax
	jle	.LBB0_116
# BB#117:                               # %land.rhs.i.336.preheader
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	1328(%rsp,%rsi,4), %rax
	.align	16, 0x90
.LBB0_118:                              # %land.rhs.i.336
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	12(%rax), %rdi
	cmpl	(%rax), %ebp
	jl	.LBB0_121
# BB#119:                               # %lor.rhs.i.338
                                        #   in Loop: Header=BB0_118 Depth=3
	jne	.LBB0_124
# BB#120:                               # %land.rhs.12.i.341
                                        #   in Loop: Header=BB0_118 Depth=3
	cmpl	4(%rax), %ecx
	jge	.LBB0_123
.LBB0_121:                              # %while.body.i.344
                                        #   in Loop: Header=BB0_118 Depth=3
	movl	8(%rax), %esi
	movl	%esi, 20(%rax)
	movq	(%rax), %rsi
	movq	%rsi, 12(%rax)
	cmpq	%r13, %rax
	leaq	-12(%rax), %rax
	ja	.LBB0_118
# BB#122:                               # %if.end.36.i.358.loopexitsplit
                                        #   in Loop: Header=BB0_6 Depth=2
	addq	$12, %rax
	movq	%rax, %rdi
	movl	%ebp, (%rdi)
	jmp	.LBB0_38
.LBB0_116:                              #   in Loop: Header=BB0_6 Depth=2
	movq	%rdx, %rdi
	movl	%ebp, (%rdi)
	jmp	.LBB0_38
.LBB0_88:                               # %land.lhs.true.22.i.308
                                        #   in Loop: Header=BB0_6 Depth=2
	je	.LBB0_40
.LBB0_89:                               # %if.end.36.i.319
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	%r12d, (%rdi)
	jmp	.LBB0_53
.LBB0_123:                              # %land.lhs.true.22.i.347
                                        #   in Loop: Header=BB0_6 Depth=2
	jne	.LBB0_124
.LBB0_40:                               # %if.then.26.i
                                        #   in Loop: Header=BB0_6 Depth=2
	subq	%rdi, %rdx
	leaq	12(%rdi), %rsi
	callq	memmove
	jmp	.LBB0_41
.LBB0_124:                              # %if.end.36.i.358
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	%ebp, (%rdi)
	jmp	.LBB0_38
.LBB0_125:                              # %sw.bb.43
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	12480(%rsp,%r15,4), %eax
	cmpl	$768, %eax              # imm = 0x300
	movl	100(%rsp), %edx         # 4-byte Reload
	movl	$1, %esi
	cmovel	%esi, %edx
	movl	%edx, 100(%rsp)         # 4-byte Spill
	orl	$256, %eax              # imm = 0x100
	cmpl	$3328, %eax             # imm = 0xD00
	jne	.LBB0_127
# BB#126:                               # %if.then.49
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	12476(%rsp,%r15,4), %eax
	sarl	$8, %eax
	subl	%eax, %r15d
	movl	%r15d, 12676(%rsp)
	movl	%r15d, %ecx
	jmp	.LBB0_127
.LBB0_16:                               # %for.cond.59.preheader
	movl	1328(%rsp), %eax
	testl	%eax, %eax
	movq	120(%rsp), %rbp         # 8-byte Reload
	jle	.LBB0_19
# BB#17:                                # %for.body.preheader
	leaq	1348(%rsp), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	%dx, (%rcx)
	incq	%rdx
	movslq	1328(%rsp), %rax
	addq	$12, %rcx
	cmpq	%rax, %rdx
	jl	.LBB0_18
.LBB0_19:                               # %for.cond.65.preheader
	movl	160(%rsp), %esi
	testl	%esi, %esi
	jle	.LBB0_22
# BB#20:                                # %for.body.69.lr.ph
	leaq	180(%rsp), %rcx
	movl	%eax, %edx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_21:                               # %for.body.69
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%rdi), %esi
	movw	%si, (%rcx)
	incq	%rdi
	movslq	160(%rsp), %rsi
	addq	$12, %rcx
	cmpq	%rsi, %rdi
	jl	.LBB0_21
.LBB0_22:                               # %for.end.78
	xorl	%ecx, %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	je	.LBB0_24
# BB#23:                                # %if.then.79
	leal	(%rsi,%rax), %ecx
	leal	7(%rsi,%rax), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rax,%rcx), %edx
	sarl	$3, %edx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	leaq	148(%rsp), %rdi
	xorl	%esi, %esi
	callq	memset
.LBB0_24:                               # %if.end.86
	movq	%rbp, 8(%rsp)
	movl	$0, (%rsp)
	leaq	2496(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	gs_type1_interp_init
	movl	$8, 13564(%rsp)
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	leaq	12704(%rsp), %rax
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movq	12352(%rsp), %rax
	movl	512(%rax), %esi
	movslq	13472(%rsp), %rax
	decq	%rax
	leaq	(%rax,%rax,8), %rax
	movq	12704(%rsp,%rax,8), %rcx
	movw	$4330, %dx              # imm = 0x10EA
	testl	%esi, %esi
	jle	.LBB0_25
# BB#128:                               # %for.body.i.i.418.preheader
	xorl	%edx, %edx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	incl	%esi
	movw	$4330, %dx              # imm = 0x10EA
	movq	128(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB0_129:                              # %for.body.i.i.418
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %edi
	addl	%edi, %edx
	imull	$-12691, %edx, %edx     # imm = 0xFFFFFFFFFFFFCE6D
	addl	$22719, %edx            # imm = 0x58BF
	incq	%rcx
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB0_129
	jmp	.LBB0_130
.LBB0_25:
	xorl	%esi, %esi
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movq	128(%rsp), %rbx         # 8-byte Reload
.LBB0_130:                              # %type1_next_init.exit423
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	movq	%rcx, 12680(%rsp,%rax,8)
	movw	%dx, 12696(%rsp,%rax,8)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$23, %eax
	movl	$3, %ecx
	cmovnel	%eax, %ecx
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	$18, %eax
	movl	$1, %ecx
	cmovel	%ecx, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	$-1, 80(%rsp)           # 4-byte Folded Spill
	movl	$1, %r14d
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	movl	$0, 116(%rsp)           # 4-byte Folded Spill
	movl	$-1, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	movl	$1, %r13d
	jmp	.LBB0_131
	.align	16, 0x90
.LBB0_184:                              # %for.end.199
                                        #   in Loop: Header=BB0_131 Depth=1
	addl	%r14d, %eax
	movl	$0, 12676(%rsp)
	movl	%r15d, %r14d
	movl	%eax, 116(%rsp)         # 4-byte Spill
.LBB0_131:                              # %for.cond.87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_146 Depth 2
                                        #     Child Loop BB0_183 Depth 2
	leaq	2496(%rsp), %rdi
	callq	type1_next
	movl	%eax, %r12d
	movslq	12676(%rsp), %rax
	leaq	12480(%rsp,%rax,4), %rbp
	xorl	%r15d, %r15d
	testl	%r14d, %r14d
	je	.LBB0_132
# BB#133:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$31, %r12d
	ja	.LBB0_134
# BB#135:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$-1073741344, %eax      # imm = 0xFFFFFFFFC00001E0
	btl	%r12d, %eax
	jae	.LBB0_134
# BB#136:                               # %if.then.109
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbp, %r14
	movq	128(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB0_143
# BB#137:                               # %if.then.112
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$32, %eax
	jl	.LBB0_139
# BB#138:                               # %if.then.i.429
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$12, %esi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	callq	spputc
	addl	$224, %ebp
	movzbl	%bpl, %esi
	jmp	.LBB0_142
	.align	16, 0x90
.LBB0_132:                              #   in Loop: Header=BB0_131 Depth=1
	movl	%r13d, %edx
	jmp	.LBB0_159
	.align	16, 0x90
.LBB0_134:                              #   in Loop: Header=BB0_131 Depth=1
	movl	%r14d, %r15d
	movl	%r13d, %edx
	jmp	.LBB0_159
.LBB0_139:                              # %if.else.i.431
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rax, %rdx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB0_141
# BB#140:                               # %cond.true.i.434
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dl, 1(%rax)
	jmp	.LBB0_143
.LBB0_141:                              # %cond.false.i.437
                                        #   in Loop: Header=BB0_131 Depth=1
	movzbl	%dl, %esi
.LBB0_142:                              # %do.end
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	callq	spputc
.LBB0_143:                              # %do.end
                                        #   in Loop: Header=BB0_131 Depth=1
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	movl	$0, %ebp
	je	.LBB0_148
# BB#144:                               # %if.then.115
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	je	.LBB0_147
# BB#145:                               # %if.then.117
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	(%r14), %esi
	movq	%rbx, %rdi
	callq	type2_put_fixed
	movl	12676(%rsp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12676(%rsp)
	cmpl	$2, %eax
	movl	$0, %eax
	jl	.LBB0_147
	.align	16, 0x90
.LBB0_146:                              # %for.body.123
                                        #   Parent Loop BB0_131 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12488(%rsp,%rax,4), %ecx
	movl	%ecx, 12484(%rsp,%rax,4)
	leaq	1(%rax), %rax
	movslq	12676(%rsp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB0_146
.LBB0_147:                              # %if.end.134
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	13496(%rsp), %rbp
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(%rbp,%rax), %r15d
	shrq	$32, %rbp
	addl	84(%rsp), %ebp          # 4-byte Folded Reload
.LBB0_148:                              # %do.body.144
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_153
# BB#149:                               # %if.then.146
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB0_151
# BB#150:                               # %cond.true.i.i
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$19, 1(%rax)
	jmp	.LBB0_152
.LBB0_151:                              # %cond.false.i.i
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$19, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB0_152:                              # %type2_put_hintmask.exit
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	leaq	148(%rsp), %rsi
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	13716(%rsp), %rcx
	callq	sputs
.LBB0_153:                              # %do.end.150
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	testl	%r15d, %r15d
	je	.LBB0_154
# BB#155:                               # %if.else.154
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r15d, %esi
	callq	type2_put_fixed
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	je	.LBB0_156
# BB#157:                               # %if.else.158
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	type2_put_fixed
	xorl	%r15d, %r15d
	movl	$21, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$2, 116(%rsp)           # 4-byte Folded Spill
	jmp	.LBB0_158
.LBB0_154:                              # %if.then.153
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%ebp, %esi
	callq	type2_put_fixed
	movl	$4, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$1, 116(%rsp)           # 4-byte Folded Spill
	xorl	%r15d, %r15d
	jmp	.LBB0_158
.LBB0_156:                              #   in Loop: Header=BB0_131 Depth=1
	movl	$22, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$1, 116(%rsp)           # 4-byte Folded Spill
.LBB0_158:                              # %if.end.161
                                        #   in Loop: Header=BB0_131 Depth=1
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	movq	%r14, %rbp
.LBB0_159:                              # %if.end.161
                                        #   in Loop: Header=BB0_131 Depth=1
	leal	1(%r12), %eax
	cmpl	$40, %eax
	jbe	.LBB0_163
# BB#160:                               # %if.end.161
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$65, %r12d
	je	.LBB0_212
.LBB0_161:                              # %if.end.166
                                        #   in Loop: Header=BB0_131 Depth=1
	testl	%r12d, %r12d
	js	.LBB0_162
# BB#166:                               # %if.end.170
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$-15, %eax
	cmpl	$31, %r12d
	movl	116(%rsp), %r14d        # 4-byte Reload
	jg	.LBB0_268
.LBB0_167:                              # %do.body.175
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB0_168
# BB#169:                               # %if.then.178
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$32, %eax
	movq	%rax, %rbp
	jl	.LBB0_171
# BB#170:                               # %if.then.i.453
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	movl	$12, %esi
	movq	%rbx, %rdi
	callq	spputc
	addl	$224, %ebp
	movzbl	%bpl, %esi
	jmp	.LBB0_174
	.align	16, 0x90
.LBB0_163:                              # %if.end.161
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$1, %r14d
	movl	%edx, %r13d
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_185:                              # %sw.bb.202
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r15d, 120(%rsp)        # 4-byte Spill
	movl	%edx, %r13d
	addq	$-4, %rbp
	movl	13500(%rsp), %edx
	leaq	1328(%rsp), %rdi
	jmp	.LBB0_186
	.align	16, 0x90
.LBB0_168:                              #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	jmp	.LBB0_176
.LBB0_212:                              # %sw.bb.268
                                        #   in Loop: Header=BB0_131 Depth=1
	xorl	%r13d, %r13d
	testl	%edx, %edx
	movl	%r15d, %r14d
	je	.LBB0_131
# BB#213:                               # %if.then.270
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	-4(%rbp), %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	(%rbp), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	jmp	.LBB0_285
.LBB0_197:                              # %sw.bb.221
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r15d, 120(%rsp)        # 4-byte Spill
	movl	%edx, %r13d
	addq	$-4, %rbp
	movl	13496(%rsp), %edx
	leaq	160(%rsp), %rdi
.LBB0_186:                              # %do.body.208
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbp, %rsi
	leaq	148(%rsp), %rcx
	jmp	.LBB0_187
.LBB0_214:                              # %sw.bb.273
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	(%rbp), %r13d
	addq	$-4, %rbp
	movq	%rbp, %r15
	decl	12676(%rsp)
	xorl	%r12d, %r12d
	jmp	.LBB0_217
.LBB0_288:                              # %sw.bb.503
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$5, %r12d
	movl	116(%rsp), %r14d        # 4-byte Reload
	cmpl	$46, %r14d
	jg	.LBB0_167
# BB#289:                               # %if.end.507
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$5, %r12d
	movq	128(%rsp), %rax         # 8-byte Reload
	cmpl	$5, %eax
	je	.LBB0_318
# BB#290:                               # %if.end.507
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$8, %eax
	jne	.LBB0_167
# BB#291:                               # %sw.bb.509
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	movl	$24, %r12d
	jmp	.LBB0_319
.LBB0_292:                              # %sw.bb.511
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$6, %r12d
	movl	116(%rsp), %r14d        # 4-byte Reload
	cmpl	$47, %r14d
	jg	.LBB0_167
# BB#293:                               # %lor.lhs.false.514
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r14d, %eax
	andl	$1, %eax
	orl	$6, %eax
	jmp	.LBB0_294
.LBB0_296:                              # %sw.bb.521
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$7, %r12d
	movl	116(%rsp), %r14d        # 4-byte Reload
	cmpl	$47, %r14d
	jg	.LBB0_167
# BB#297:                               # %lor.lhs.false.524
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r14d, %eax
	andl	$1, %eax
	xorl	$7, %eax
	jmp	.LBB0_294
.LBB0_304:                              # %sw.bb.560
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	116(%rsp), %r14d        # 4-byte Reload
	testl	%r14d, %r14d
	je	.LBB0_305
# BB#314:                               # %if.end.610
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$8, %r12d
	cmpl	$42, %r14d
	jg	.LBB0_167
# BB#315:                               # %if.end.614
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$8, %r12d
	movq	128(%rsp), %rcx         # 8-byte Reload
	leal	-26(%rcx), %eax
	cmpl	$5, %eax
	jbe	.LBB0_339
# BB#316:                               # %if.end.614
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$5, %ecx
	je	.LBB0_337
# BB#317:                               # %if.end.614
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$8, %ecx
	jne	.LBB0_167
.LBB0_318:                              #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
.LBB0_319:                              # %putthread-pre-split
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	jmp	.LBB0_181
.LBB0_247:                              # %sw.bb.351
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r12d
	movl	12484(%rsp), %esi
	movl	12488(%rsp), %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	leaq	2496(%rsp), %rdi
	callq	gs_type1_sbw
	movl	12488(%rsp), %eax
	jmp	.LBB0_248
.LBB0_270:                              # %do.body.450
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB0_271
# BB#272:                               # %if.then.453
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbp, %r12
	cmpl	$32, %eax
	jl	.LBB0_274
# BB#273:                               # %if.then.i.558
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$12, %esi
	movq	%rbx, %rdi
	movl	%edx, %r14d
	movq	%rax, %rbp
	callq	spputc
	addl	$224, %ebp
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	%r14d, %edx
	jmp	.LBB0_277
.LBB0_216:                              # %sw.bb.281
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	-4(%rbp), %r12d
	movl	(%rbp), %r13d
	addq	$-8, %rbp
	movq	%rbp, %r15
	addl	$-2, 12676(%rsp)
	jmp	.LBB0_217
.LBB0_215:                              # %sw.bb.277
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	(%rbp), %r12d
	addq	$-4, %rbp
	movq	%rbp, %r15
	decl	12676(%rsp)
	xorl	%r13d, %r13d
.LBB0_217:                              # %move
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	116(%rsp), %ebp         # 4-byte Reload
	movq	128(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB0_225
# BB#218:                               # %if.then.289
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r14d
	cmpl	$32, %eax
	jl	.LBB0_220
# BB#219:                               # %if.then.i.512
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$12, %esi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	callq	spputc
	addl	$224, %ebp
	movzbl	%bpl, %esi
	jmp	.LBB0_223
.LBB0_301:                              # %sw.bb.546
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	116(%rsp), %r14d        # 4-byte Reload
	cmpl	$44, %r14d
	movl	$30, %r12d
	jg	.LBB0_167
# BB#302:                               # %sw.bb.546
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r14d, %eax
	andl	$1, %eax
	jne	.LBB0_167
# BB#303:                               # %lor.lhs.false.552
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r14d, %eax
	shrl	$2, %eax
	andl	$1, %eax
	orl	$30, %eax
	jmp	.LBB0_294
.LBB0_298:                              # %sw.bb.532
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	116(%rsp), %r14d        # 4-byte Reload
	cmpl	$44, %r14d
	movl	$31, %r12d
	jg	.LBB0_167
# BB#299:                               # %sw.bb.532
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r14d, %eax
	andl	$1, %eax
	jne	.LBB0_167
# BB#300:                               # %lor.lhs.false.538
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r14d, %eax
	shrl	$2, %eax
	andl	$1, %eax
	xorl	$31, %eax
.LBB0_294:                              # %lor.lhs.false.514
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB0_167
# BB#295:                               #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	movq	128(%rsp), %r12         # 8-byte Reload
	jmp	.LBB0_181
.LBB0_201:                              # %sw.bb.237
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$-1, 80(%rsp)           # 4-byte Folded Reload
	je	.LBB0_202
# BB#203:                               # %if.else.248
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	148(%rsp), %rdi
	leaq	136(%rsp), %rsi
	movl	%edx, %ebp
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	movl	%ebp, %ecx
	movl	$-1, 80(%rsp)           # 4-byte Folded Spill
	jmp	.LBB0_204
.LBB0_198:                              # %sw.bb.227
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r15d, 120(%rsp)        # 4-byte Spill
	movl	%edx, %r13d
	leaq	-20(%rbp), %rsi
	movl	13496(%rsp), %r15d
	leaq	160(%rsp), %r14
	movq	%r14, %rdi
	movl	%r15d, %edx
	movq	%rbp, %r12
	leaq	148(%rsp), %rbp
	movq	%rbp, %rcx
	callq	type1_stem1
	leaq	-12(%r12), %rsi
	movq	%r14, %rdi
	movl	%r15d, %edx
	movq	%rbp, %rcx
	callq	type1_stem1
	addq	$-4, %r12
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movq	%rbp, %rcx
	jmp	.LBB0_187
.LBB0_200:                              # %sw.bb.232
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r15d, 120(%rsp)        # 4-byte Spill
	movl	%edx, %r13d
	leaq	-20(%rbp), %rsi
	movl	13500(%rsp), %r12d
	leaq	1328(%rsp), %r14
	movq	%r14, %rdi
	movl	%r12d, %edx
	movq	%rbp, %r15
	leaq	148(%rsp), %rbp
	movq	%rbp, %rcx
	callq	type1_stem1
	leaq	-12(%r15), %rsi
	movq	%r14, %rdi
	movl	%r12d, %edx
	movq	%rbp, %rcx
	callq	type1_stem1
	addq	$-4, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	movq	%rbp, %rcx
.LBB0_187:                              # %do.body.208
                                        #   in Loop: Header=BB0_131 Depth=1
	callq	type1_stem1
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	movl	120(%rsp), %r14d        # 4-byte Reload
	movq	128(%rsp), %rax         # 8-byte Reload
	je	.LBB0_195
# BB#188:                               # %do.body.208
                                        #   in Loop: Header=BB0_131 Depth=1
	testl	%eax, %eax
	js	.LBB0_195
# BB#189:                               # %if.then.214
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$32, %eax
	movq	%rax, %rbp
	jl	.LBB0_192
# BB#190:                               # %if.then.i.477
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$12, %esi
	movq	%rbx, %rdi
	callq	spputc
	addl	$224, %ebp
	jmp	.LBB0_191
.LBB0_269:                              # %sw.bb.435
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r12d
	movl	12484(%rsp), %esi
	movl	12488(%rsp), %edx
	movl	12492(%rsp), %ecx
	movl	12496(%rsp), %r8d
	leaq	2496(%rsp), %rdi
	callq	gs_type1_sbw
	movl	12492(%rsp), %eax
.LBB0_248:                              # %sbw
                                        #   in Loop: Header=BB0_131 Depth=1
	cltq
	movl	%eax, %ecx
	movq	default_defaultWidthX(%rip), %rdx
	subl	%edx, %ecx
	cmpq	%rdx, %rax
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	setne	%cl
	movzbl	%cl, %ebp
	movl	$1, %ecx
	movl	96(%rsp), %edx          # 4-byte Reload
	cmovnel	%ecx, %edx
	movl	%edx, 96(%rsp)          # 4-byte Spill
	movl	%esi, 12484(%rsp)
	movl	%ebp, 12676(%rsp)
	cmpl	$0, 1328(%rsp)
	je	.LBB0_252
# BB#249:                               # %if.then.378
                                        #   in Loop: Header=BB0_131 Depth=1
	xorl	%ebp, %ebp
	cmpq	default_defaultWidthX(%rip), %rax
	movl	$0, %eax
	je	.LBB0_251
# BB#250:                               # %if.then.381
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	callq	type2_put_fixed
	movl	12676(%rsp), %eax
.LBB0_251:                              # %if.end.384
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	leaq	1328(%rsp), %rdx
	movl	76(%rsp), %ecx          # 4-byte Reload
	callq	type2_put_stems
	movl	$0, 12676(%rsp)
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
.LBB0_252:                              # %if.end.388
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$0, 160(%rsp)
	movl	%r15d, %r14d
	movl	%r12d, %r13d
	je	.LBB0_131
# BB#253:                               # %if.then.391
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r12d, %r13d
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	testl	%ebp, %ebp
	movl	$0, %esi
	je	.LBB0_255
# BB#254:                               # %if.then.394
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	12484(%rsp), %esi
	movq	%rbx, %rdi
	callq	type2_put_fixed
	movl	12676(%rsp), %esi
.LBB0_255:                              # %if.end.397
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	leaq	160(%rsp), %rdx
	movl	60(%rsp), %ecx          # 4-byte Reload
	callq	type2_put_stems
	movl	$0, 12676(%rsp)
	movl	%r15d, %r14d
	jmp	.LBB0_131
.LBB0_192:                              # %if.else.i.479
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB0_191
# BB#193:                               # %cond.true.i.482
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	jmp	.LBB0_194
.LBB0_191:                              # %cond.false.i.485
                                        #   in Loop: Header=BB0_131 Depth=1
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB0_194:                              # %do.end.220
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$-1, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$0, 116(%rsp)           # 4-byte Folded Spill
.LBB0_195:                              # %do.end.220
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$0, 12676(%rsp)
.LBB0_196:                              # %for.cond.87
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	100(%rsp), %eax         # 4-byte Reload
	movq	%rax, 120(%rsp)         # 8-byte Spill
	jmp	.LBB0_131
.LBB0_220:                              # %if.else.i.514
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rax, %rdx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB0_222
# BB#221:                               # %cond.true.i.517
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dl, 1(%rax)
	jmp	.LBB0_224
.LBB0_222:                              # %cond.false.i.520
                                        #   in Loop: Header=BB0_131 Depth=1
	movzbl	%dl, %esi
.LBB0_223:                              # %do.end.292
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	callq	spputc
.LBB0_224:                              # %do.end.292
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$-1, %eax
	xorl	%ebp, %ebp
	movl	%r14d, %edx
.LBB0_225:                              # %do.end.292
                                        #   in Loop: Header=BB0_131 Depth=1
	testl	%edx, %edx
	je	.LBB0_226
# BB#227:                               # %if.then.294
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rax, 128(%rsp)         # 8-byte Spill
	cmpl	$0, 12676(%rsp)
	je	.LBB0_229
# BB#228:                               # %if.then.297
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	(%r15), %esi
	movq	%rbx, %rdi
	callq	type2_put_fixed
.LBB0_229:                              # %if.end.298
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	13496(%rsp), %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %r12d
	addl	%eax, %r12d
	shrq	$32, %rax
	addl	84(%rsp), %r13d         # 4-byte Folded Reload
	addl	%eax, %r13d
	jmp	.LBB0_230
.LBB0_226:                              #   in Loop: Header=BB0_131 Depth=1
	movq	%rax, 128(%rsp)         # 8-byte Spill
.LBB0_230:                              # %if.end.307
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$8, 13564(%rsp)
	jne	.LBB0_231
# BB#235:                               # %do.body.334
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_240
# BB#236:                               # %if.then.336
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB0_238
# BB#237:                               # %cond.true.i.i.525
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$19, 1(%rax)
	jmp	.LBB0_239
.LBB0_231:                              # %if.then.310
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	2496(%rsp), %rdi
	callq	type1_next
	movl	%eax, %ecx
	movl	$-15, %eax
	cmpl	$16, %ecx
	jne	.LBB0_268
# BB#232:                               # %if.end.315
                                        #   in Loop: Header=BB0_131 Depth=1
	movslq	12676(%rsp), %rcx
	cmpl	$512, 12480(%rsp,%rcx,4) # imm = 0x200
	jne	.LBB0_268
# BB#233:                               # %lor.lhs.false.323
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$0, 12476(%rsp,%rcx,4)
	jne	.LBB0_268
# BB#234:                               # %if.end.329
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%ebp, 116(%rsp)         # 4-byte Spill
	incl	13564(%rsp)
	movl	%r12d, 12476(%rsp,%rcx,4)
	movl	%r13d, 12480(%rsp,%rcx,4)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	jmp	.LBB0_131
.LBB0_238:                              # %cond.false.i.i.527
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$19, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB0_239:                              # %type2_put_hintmask.exit529
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	leaq	148(%rsp), %rsi
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	13716(%rsp), %rcx
	callq	sputs
.LBB0_240:                              # %do.end.340
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	testl	%r12d, %r12d
	je	.LBB0_241
# BB#242:                               # %if.else.344
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r12d, %esi
	callq	type2_put_fixed
	testl	%r13d, %r13d
	je	.LBB0_243
# BB#245:                               # %if.else.348
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	type2_put_fixed
	movl	$21, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$2, 116(%rsp)           # 4-byte Folded Spill
	jmp	.LBB0_246
.LBB0_241:                              # %if.then.343
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r13d, %esi
	callq	type2_put_fixed
	movl	$4, %eax
	jmp	.LBB0_244
.LBB0_305:                              # %if.then.563
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	(%rbp), %eax
	cmpl	$0, -4(%rbp)
	je	.LBB0_306
# BB#310:                               # %if.else.585
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$8, %r12d
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.LBB0_167
# BB#311:                               # %if.then.588
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.LBB0_312
# BB#313:                               # %if.else.599
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	-20(%rbp), %ecx
	movl	%ecx, (%rbp)
	movl	%eax, -20(%rbp)
	movl	%ecx, -16(%rbp)
	decl	12676(%rsp)
	movl	$27, %r12d
	jmp	.LBB0_167
.LBB0_271:                              #   in Loop: Header=BB0_131 Depth=1
	movl	116(%rsp), %r14d        # 4-byte Reload
	jmp	.LBB0_278
.LBB0_202:                              # %if.then.240
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	136(%rsp), %rdi
	leaq	148(%rsp), %r14
	movq	%r14, %rsi
	movq	64(%rsp), %rbp          # 8-byte Reload
	movl	%edx, %r12d
	movq	%rbp, %rdx
	callq	memcpy
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	memset
	movl	%r12d, %ecx
.LBB0_204:                              # %do.body.254
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	100(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movl	%r15d, %r14d
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	%ecx, %r13d
	je	.LBB0_131
# BB#205:                               # %do.body.254
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	%r15d, %r14d
	movl	100(%rsp), %eax         # 4-byte Reload
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	%ecx, %r13d
	js	.LBB0_131
# BB#206:                               # %if.then.260
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%ecx, %r13d
	movq	128(%rsp), %rbp         # 8-byte Reload
	cmpl	$32, %ebp
	jl	.LBB0_209
# BB#207:                               # %if.then.i.497
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$12, %esi
	movq	%rbx, %rdi
	callq	spputc
	addl	$224, %ebp
	jmp	.LBB0_208
.LBB0_243:                              #   in Loop: Header=BB0_131 Depth=1
	movl	$22, %eax
.LBB0_244:                              # %if.end.350
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$1, 116(%rsp)           # 4-byte Folded Spill
.LBB0_246:                              # %if.end.350
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$0, 12676(%rsp)
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB0_131
.LBB0_274:                              # %if.else.i.560
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rax, %rsi
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB0_276
# BB#275:                               # %cond.true.i.563
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%sil, 1(%rax)
	jmp	.LBB0_277
.LBB0_209:                              # %if.else.i.499
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB0_208
# BB#210:                               # %cond.true.i.502
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	jmp	.LBB0_211
.LBB0_208:                              # %cond.false.i.505
                                        #   in Loop: Header=BB0_131 Depth=1
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB0_211:                              # %for.cond.87
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$0, 116(%rsp)           # 4-byte Folded Spill
	movl	%r15d, %r14d
	movl	100(%rsp), %eax         # 4-byte Reload
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$-1, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	jmp	.LBB0_131
.LBB0_339:                              # %if.end.614
                                        #   in Loop: Header=BB0_131 Depth=1
	jmpq	*.LJTI0_2(,%rax,8)
.LBB0_323:                              # %sw.bb.630
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$8, %r12d
	movl	$26, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	cmpl	$0, -20(%rbp)
	jne	.LBB0_171
# BB#324:                               # %land.lhs.true.634
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$0, -4(%rbp)
	jne	.LBB0_171
# BB#325:                               # %if.then.638
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	leaq	-20(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movl	$12, %edx
	callq	memmove
	movl	(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	12676(%rsp), %eax
	addl	$-2, %eax
	movl	%eax, 12676(%rsp)
	movl	$26, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	jmp	.LBB0_182
.LBB0_276:                              # %cond.false.i.566
                                        #   in Loop: Header=BB0_131 Depth=1
	movzbl	%sil, %esi
	movq	%rbx, %rdi
	movl	%edx, %ebp
	callq	spputc
	movl	%ebp, %edx
.LBB0_277:                              # %do.end.456
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$-1, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%r14d, %r14d
	movq	%r12, %rbp
.LBB0_278:                              # %do.end.456
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	(%rbp), %ecx
	sarl	$8, %ecx
	movl	$-15, %eax
	cmpl	$11, %ecx
	jg	.LBB0_286
# BB#279:                               # %do.end.456
                                        #   in Loop: Header=BB0_131 Depth=1
	testl	%ecx, %ecx
	je	.LBB0_283
# BB#280:                               # %do.end.456
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$1, %ecx
	jne	.LBB0_281
# BB#284:                               # %sw.bb.473
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r14d, 116(%rsp)        # 4-byte Spill
	movl	$0, 13564(%rsp)
	addl	$-2, 12676(%rsp)
	jmp	.LBB0_285
.LBB0_286:                              # %do.end.456
                                        #   in Loop: Header=BB0_131 Depth=1
	addl	$-12, %ecx
	cmpl	$2, %ecx
	jae	.LBB0_268
# BB#287:                               # %sw.bb.497
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r14d, 116(%rsp)        # 4-byte Spill
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	movl	$-2, %ecx
	subl	%eax, %ecx
	addl	%ecx, 12676(%rsp)
.LBB0_285:                              # %for.cond.87
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r15d, %r14d
	movl	%edx, %r13d
	jmp	.LBB0_131
.LBB0_283:                              # %do.body.175.thread687
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	leaq	-64(%rbp), %rdi
	movl	-64(%rbp), %eax
	addl	%eax, -72(%rbp)
	movl	-60(%rbp), %eax
	addl	%eax, -68(%rbp)
	addq	$-56, %rbp
	movl	$44, %edx
	movq	%rbp, %rsi
	callq	memmove
	addl	$-6, 12676(%rsp)
	movl	$8, 13564(%rsp)
	movl	$2, 13568(%rsp)
	movl	$67, %r12d
	jmp	.LBB0_176
.LBB0_281:                              # %do.end.456
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$3, %ecx
	jne	.LBB0_268
# BB#282:                               # %sw.bb.477
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%r14d, 116(%rsp)        # 4-byte Spill
	xorl	%esi, %esi
	leaq	148(%rsp), %rdi
	movl	%edx, %r13d
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movl	$1, 13568(%rsp)
	addl	$-2, 12676(%rsp)
	movl	%r15d, %r14d
	jmp	.LBB0_196
.LBB0_306:                              # %if.then.567
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%eax, -4(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_307
# BB#308:                               # %if.else.580
                                        #   in Loop: Header=BB0_131 Depth=1
	decl	12676(%rsp)
	jmp	.LBB0_309
.LBB0_307:                              # %if.then.573
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	-20(%rbp), %rdi
	addq	$-16, %rbp
	movq	%rbp, %rsi
	movl	%edx, %ebp
	movl	$16, %edx
	callq	memmove
	movl	%ebp, %edx
	addl	$-2, 12676(%rsp)
.LBB0_309:                              # %do.body.175
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$26, %r12d
	xorl	%r14d, %r14d
	jmp	.LBB0_167
.LBB0_312:                              # %if.then.592
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	-16(%rbp), %rdi
	addq	$-12, %rbp
	movq	%rbp, %rsi
	movl	%edx, %ebp
	movl	$12, %edx
	callq	memmove
	movl	%ebp, %edx
	addl	$-2, 12676(%rsp)
	movl	$27, %r12d
	jmp	.LBB0_167
.LBB0_320:                              # %sw.bb.615
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$8, %r12d
	movl	$27, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	cmpl	$0, -16(%rbp)
	jne	.LBB0_171
# BB#321:                               # %land.lhs.true.619
                                        #   in Loop: Header=BB0_131 Depth=1
	cmpl	$0, (%rbp)
	jne	.LBB0_171
# BB#322:                               # %if.then.622
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	leaq	-16(%rbp), %rdi
	addq	$-12, %rbp
	movl	$12, %edx
	movq	%rbp, %rsi
	callq	memmove
	movl	12676(%rsp), %eax
	addl	$-2, %eax
	movl	%eax, 12676(%rsp)
	movl	$27, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	jmp	.LBB0_182
.LBB0_332:                              # %sw.bb.667
                                        #   in Loop: Header=BB0_131 Depth=1
	testb	$1, %r14b
	jne	.LBB0_333
# BB#334:                               # %if.end.671
                                        #   in Loop: Header=BB0_131 Depth=1
	testb	$4, %r14b
	je	.LBB0_329
	jmp	.LBB0_335
.LBB0_326:                              # %sw.bb.647
                                        #   in Loop: Header=BB0_131 Depth=1
	testb	$1, %r14b
	jne	.LBB0_327
# BB#328:                               # %if.end.651
                                        #   in Loop: Header=BB0_131 Depth=1
	testb	$4, %r14b
	jne	.LBB0_329
.LBB0_335:                              # %hrc
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$8, %r12d
	cmpl	$0, -16(%rbp)
	jne	.LBB0_171
# BB#336:                               # %if.end.680
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	leaq	-16(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	movl	$8, %edx
	callq	memmove
	movl	(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_331
.LBB0_337:                              # %sw.bb.688
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	movl	$25, %r12d
	jmp	.LBB0_319
.LBB0_333:                              #   in Loop: Header=BB0_131 Depth=1
	movl	$8, %r12d
	movl	$30, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	jmp	.LBB0_171
.LBB0_327:                              #   in Loop: Header=BB0_131 Depth=1
	movl	$8, %r12d
	movl	$31, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	jmp	.LBB0_171
.LBB0_329:                              # %vrc
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$8, %r12d
	cmpl	$0, -20(%rbp)
	je	.LBB0_330
.LBB0_171:                              # %if.else.i.455
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB0_173
# BB#172:                               # %cond.true.i.458
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movq	128(%rsp), %rcx         # 8-byte Reload
	movb	%cl, 1(%rax)
	jmp	.LBB0_175
.LBB0_173:                              # %cond.false.i.461
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	movq	128(%rsp), %rax         # 8-byte Reload
	movzbl	%al, %esi
.LBB0_174:                              # %do.body.182
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	callq	spputc
.LBB0_175:                              # %do.body.182
                                        #   in Loop: Header=BB0_131 Depth=1
	xorl	%r14d, %r14d
.LBB0_176:                              # %do.body.182
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB0_181
# BB#177:                               # %if.then.184
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB0_179
# BB#178:                               # %cond.true.i.i.466
                                        #   in Loop: Header=BB0_131 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$19, 1(%rax)
	jmp	.LBB0_180
.LBB0_179:                              # %cond.false.i.i.468
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	$19, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB0_180:                              # %type2_put_hintmask.exit470
                                        #   in Loop: Header=BB0_131 Depth=1
	movq	%rbx, %rdi
	leaq	148(%rsp), %rsi
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	13716(%rsp), %rcx
	callq	sputs
.LBB0_181:                              # %putthread-pre-split
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	12676(%rsp), %eax
	movl	%ebp, %ecx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	%r12, 128(%rsp)         # 8-byte Spill
.LBB0_182:                              # %put
                                        #   in Loop: Header=BB0_131 Depth=1
	testl	%eax, %eax
	movl	$0, %ebp
	jle	.LBB0_184
	.align	16, 0x90
.LBB0_183:                              # %for.body.193
                                        #   Parent Loop BB0_131 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12484(%rsp,%rbp,4), %esi
	movq	%rbx, %rdi
	callq	type2_put_fixed
	incq	%rbp
	movslq	12676(%rsp), %rax
	cmpq	%rax, %rbp
	jl	.LBB0_183
	jmp	.LBB0_184
.LBB0_330:                              # %if.end.660
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	%edx, %r13d
	leaq	-20(%rbp), %rdi
	addq	$-16, %rbp
	movl	$20, %edx
	movq	%rbp, %rsi
	callq	memmove
.LBB0_331:                              # %put
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	12676(%rsp), %eax
	decl	%eax
	movl	%eax, 12676(%rsp)
	jmp	.LBB0_182
.LBB0_162:
	movl	%r12d, %eax
	jmp	.LBB0_268
.LBB0_256:                              # %sw.bb.403
	movl	13496(%rsp), %eax
	leaq	-16(%rbp), %rdi
	subl	-16(%rbp), %eax
	addl	%eax, -12(%rbp)
	addq	$-12, %rbp
	movl	$16, %edx
	movq	%rbp, %rsi
	callq	memmove
	decl	12676(%rsp)
.LBB0_257:                              # %do.body.417
	movq	128(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB0_263
# BB#258:                               # %if.then.420
	cmpl	$32, %eax
	movq	%rax, %rbp
	jl	.LBB0_261
# BB#259:                               # %if.then.i.536
	movl	$12, %esi
	movq	%rbx, %rdi
	callq	spputc
	addl	$224, %ebp
	jmp	.LBB0_260
.LBB0_261:                              # %if.else.i.538
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB0_260
# BB#262:                               # %cond.true.i.541
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	jmp	.LBB0_263
.LBB0_260:                              # %cond.false.i.544
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB0_263:                              # %for.cond.424.preheader
	cmpl	$0, 12676(%rsp)
	jle	.LBB0_164
# BB#264:                               # %for.body.428.preheader
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_265:                              # %for.body.428
                                        # =>This Inner Loop Header: Depth=1
	movl	12484(%rsp,%rbp,4), %esi
	movq	%rbx, %rdi
	callq	type2_put_fixed
	incq	%rbp
	movslq	12676(%rsp), %rax
	cmpq	%rax, %rbp
	jl	.LBB0_265
.LBB0_164:                              # %if.then.165
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB0_266
# BB#165:                               # %cond.true.i.444
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$14, 1(%rax)
	jmp	.LBB0_267
.LBB0_266:                              # %cond.false.i.446
	movl	$14, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB0_267:                              # %cleanup.697
	xorl	%eax, %eax
.LBB0_268:                              # %cleanup.697
	addq	$13720, %rsp            # imm = 0x3598
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	psf_convert_type1_to_type2, .Lfunc_end0-psf_convert_type1_to_type2
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_5
	.quad	.LBB0_55
	.quad	.LBB0_90
	.quad	.LBB0_12
	.quad	.LBB0_12
	.quad	.LBB0_12
	.quad	.LBB0_16
	.quad	.LBB0_54
.LJTI0_1:
	.quad	.LBB0_164
	.quad	.LBB0_161
	.quad	.LBB0_185
	.quad	.LBB0_161
	.quad	.LBB0_197
	.quad	.LBB0_214
	.quad	.LBB0_288
	.quad	.LBB0_292
	.quad	.LBB0_296
	.quad	.LBB0_304
	.quad	.LBB0_131
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_247
	.quad	.LBB0_257
	.quad	.LBB0_161
	.quad	.LBB0_270
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_216
	.quad	.LBB0_215
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_301
	.quad	.LBB0_298
	.quad	.LBB0_201
	.quad	.LBB0_198
	.quad	.LBB0_200
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_256
	.quad	.LBB0_269
.LJTI0_2:
	.quad	.LBB0_323
	.quad	.LBB0_320
	.quad	.LBB0_167
	.quad	.LBB0_167
	.quad	.LBB0_332
	.quad	.LBB0_326

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	type1_next,@function
type1_next:                             # @type1_next
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
	subq	$72, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 128
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
	movq	%rdi, %rbx
	movslq	10976(%rbx), %rax
	leaq	(%rax,%rax,8), %rdx
	movslq	10180(%rbx), %rax
	movq	9856(%rbx), %rcx
	movl	512(%rcx), %r15d
	movq	10112(%rbx,%rdx,8), %rcx
	movq	%rcx, 64(%rsp)
	movl	10144(%rbx,%rdx,8), %r13d
	addq	10136(%rbx,%rdx,8), %r13
	movw	10128(%rbx,%rdx,8), %si
	movw	%si, 62(%rsp)
	cmpq	%r13, %rcx
	jae	.LBB1_1
# BB#2:                                 # %if.end.lr.ph.lr.ph
	leaq	10112(%rbx,%rdx,8), %r11
	leaq	9988(%rbx), %r10
	movl	%r15d, %esi
	shrl	$31, %esi
	xorl	$1, %esi
	movl	%esi, 20(%rsp)          # 4-byte Spill
	leaq	10136(%rbx,%rdx,8), %rsi
	leaq	10128(%rbx,%rdx,8), %rdx
	leaq	9984(%rbx,%rax,4), %r14
	leaq	10176(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	9984(%rbx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r11, %r12
.LBB1_3:                                # %if.end.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_30 Depth 2
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movq	%r11, 8(%rsp)           # 8-byte Spill
.LBB1_4:                                # %if.end
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%rcx), %rsi
	movq	%rsi, 64(%rsp)
	movzbl	(%rcx), %edx
	testl	%r15d, %r15d
	js	.LBB1_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB1_4 Depth=2
	movzwl	62(%rsp), %eax
	movl	%eax, %edi
	shrl	$8, %edi
	xorl	%edx, %edi
	addl	%edx, %eax
	imull	$52845, %eax, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movw	%ax, 62(%rsp)
	movl	%edi, %edx
.LBB1_6:                                # %cond.end
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpl	$32, %edx
	jl	.LBB1_24
# BB#7:                                 # %if.then.17
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpl	$246, %edx
	jg	.LBB1_10
# BB#8:                                 # %do.body.21
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$-10, %eax
	cmpq	48(%rsp), %r14          # 8-byte Folded Reload
	jae	.LBB1_61
# BB#9:                                 # %do.end
                                        #   in Loop: Header=BB1_4 Depth=2
	shll	$8, %edx
	addl	$-35584, %edx           # imm = 0xFFFFFFFFFFFF7500
	movl	%edx, 4(%r14)
	addq	$4, %r14
	movq	%r14, %rdi
	jmp	.LBB1_38
	.align	16, 0x90
.LBB1_24:                               # %if.end.163
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$-10, %eax
	leal	-10(%rdx), %ebp
	cmpl	$7, %ebp
	ja	.LBB1_25
# BB#68:                                # %if.end.163
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	jmpq	*.LJTI1_0(,%rbp,8)
.LBB1_40:                               # %sw.bb.192
                                        #   in Loop: Header=BB1_4 Depth=2
	movzbl	(%rsi), %edx
	testl	%r15d, %r15d
	js	.LBB1_42
# BB#41:                                # %cond.true.194
                                        #   in Loop: Header=BB1_4 Depth=2
	movzwl	62(%rsp), %eax
	movl	%eax, %esi
	shrl	$8, %esi
	xorl	%edx, %esi
	addl	%edx, %eax
	imull	$52845, %eax, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movw	%ax, 62(%rsp)
	movl	%esi, %edx
.LBB1_42:                               # %cond.end.208
                                        #   in Loop: Header=BB1_4 Depth=2
	addq	$2, %rcx
	movq	%rcx, 64(%rsp)
	leal	-12(%rdx), %eax
	cmpl	$5, %eax
	ja	.LBB1_58
# BB#43:                                # %cond.end.208
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_44:                               # %sw.bb.213
                                        #   in Loop: Header=BB1_4 Depth=2
	leaq	-4(%r14), %rdi
	cvtsi2sdl	-4(%r14), %xmm0
	cvtsi2sdl	(%r14), %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI1_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%r14)
	jmp	.LBB1_38
	.align	16, 0x90
.LBB1_10:                               # %if.else
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpl	$254, %edx
	jg	.LBB1_19
# BB#11:                                # %do.body.37
                                        #   in Loop: Header=BB1_4 Depth=2
	leaq	2(%rcx), %rax
	movq	%rax, 64(%rsp)
	movl	$-10, %eax
	cmpq	48(%rsp), %r14          # 8-byte Folded Reload
	jae	.LBB1_61
# BB#12:                                # %do.end.48
                                        #   in Loop: Header=BB1_4 Depth=2
	movzbl	1(%rcx), %eax
	testl	%r15d, %r15d
	movl	%eax, %ecx
	js	.LBB1_14
# BB#13:                                # %cond.true.50
                                        #   in Loop: Header=BB1_4 Depth=2
	movzwl	62(%rsp), %ecx
	shrl	$8, %ecx
	xorl	%eax, %ecx
.LBB1_14:                               # %cond.end.55
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%edx, %esi
	shll	$8, %esi
	cmpl	$250, %edx
	jg	.LBB1_16
# BB#15:                                # %do.end.62
                                        #   in Loop: Header=BB1_4 Depth=2
	addl	$2304, %esi             # imm = 0x900
	andl	$65280, %esi            # imm = 0xFF00
	leal	108(%rcx,%rsi), %ecx
	jmp	.LBB1_17
.LBB1_19:                               # %if.else.101
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$-10, %eax
	cmpl	$255, %edx
	jne	.LBB1_61
# BB#20:                                # %for.cond.106.preheader
                                        #   in Loop: Header=BB1_4 Depth=2
	testl	%r15d, %r15d
	movzbl	(%rsi), %r9d
	js	.LBB1_21
# BB#62:                                # %cond.true.110.1
                                        #   in Loop: Header=BB1_4 Depth=2
	movzwl	62(%rsp), %edx
	movl	%edx, %edi
	shrl	$8, %edi
	xorl	%r9d, %edi
	addl	%r9d, %edx
	imull	$52845, %edx, %edx      # imm = 0xCE6D
	addl	$22719, %edx            # imm = 0x58BF
	movw	%dx, 62(%rsp)
	leaq	2(%rcx), %rsi
	movq	%rsi, 64(%rsp)
	movzbl	2(%rcx), %esi
	movzwl	%dx, %ebp
	movl	%ebp, %edx
	shrl	$8, %edx
	xorl	%esi, %edx
	addl	%esi, %ebp
	imull	$52845, %ebp, %esi      # imm = 0xCE6D
	addl	$22719, %esi            # imm = 0x58BF
	movw	%si, 62(%rsp)
	movq	%rdi, %r9
	jmp	.LBB1_63
.LBB1_16:                               # %do.end.75
                                        #   in Loop: Header=BB1_4 Depth=2
	addl	$1280, %esi             # imm = 0x500
	andl	$65280, %esi            # imm = 0xFF00
	leal	108(%rcx,%rsi), %ecx
	negl	%ecx
.LBB1_17:                               # %if.end.86
                                        #   in Loop: Header=BB1_4 Depth=2
	shll	$8, %ecx
	movl	%ecx, 4(%r14)
	addq	$4, %r14
	movq	%r14, %rdi
	testl	%r15d, %r15d
	js	.LBB1_38
# BB#18:                                # %cond.true.88
                                        #   in Loop: Header=BB1_4 Depth=2
	movzwl	62(%rsp), %ecx
	addl	%eax, %ecx
	imull	$52845, %ecx, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movw	%ax, 62(%rsp)
	jmp	.LBB1_38
.LBB1_21:                               # %cond.end.124
                                        #   in Loop: Header=BB1_4 Depth=2
	leaq	2(%rcx), %rdx
	movq	%rdx, 64(%rsp)
	movzbl	2(%rcx), %edx
.LBB1_63:                               # %cond.end.124.1
                                        #   in Loop: Header=BB1_4 Depth=2
	leaq	3(%rcx), %rdi
	movq	%rdi, 64(%rsp)
	movzbl	3(%rcx), %edi
	testl	%r15d, %r15d
	js	.LBB1_65
# BB#64:                                # %cond.true.110.2
                                        #   in Loop: Header=BB1_4 Depth=2
	movzwl	62(%rsp), %esi
	movl	%esi, %ebp
	shrl	$8, %ebp
	xorl	%edi, %ebp
	addl	%edi, %esi
	imull	$52845, %esi, %esi      # imm = 0xCE6D
	addl	$22719, %esi            # imm = 0x58BF
	movw	%si, 62(%rsp)
	movl	%ebp, %edi
.LBB1_65:                               # %cond.end.124.2
                                        #   in Loop: Header=BB1_4 Depth=2
	leaq	4(%rcx), %rsi
	movq	%rsi, 64(%rsp)
	movzbl	4(%rcx), %r8d
	testl	%r15d, %r15d
	js	.LBB1_67
# BB#66:                                # %cond.true.110.3
                                        #   in Loop: Header=BB1_4 Depth=2
	movzwl	62(%rsp), %ebp
	movl	%ebp, %esi
	shrl	$8, %esi
	xorl	%r8d, %esi
	addl	%r8d, %ebp
	imull	$52845, %ebp, %ebp      # imm = 0xCE6D
	addl	$22719, %ebp            # imm = 0x58BF
	movw	%bp, 62(%rsp)
	movl	%esi, %r8d
.LBB1_67:                               # %cond.end.124.3
                                        #   in Loop: Header=BB1_4 Depth=2
	addq	$5, %rcx
	movq	%rcx, 64(%rsp)
	cmpq	48(%rsp), %r14          # 8-byte Folded Reload
	jae	.LBB1_61
# BB#22:                                # %do.end.142
                                        #   in Loop: Header=BB1_4 Depth=2
	shlq	$8, %r9
	orq	%r9, %rdx
	shlq	$8, %rdx
	orq	%rdx, %rdi
	shlq	$8, %rdi
	orq	%rdi, %r8
	movl	$2147483648, %eax       # imm = 0x80000000
	xorq	%rax, %r8
	addq	$-2147483648, %r8       # imm = 0xFFFFFFFF80000000
	movl	%r8d, %eax
	shll	$8, %eax
	movl	%eax, 4(%r14)
	addq	$4, %r14
	movq	%r8, %rax
	shlq	$40, %rax
	sarq	$40, %rax
	cmpq	%rax, %r8
	jne	.LBB1_37
# BB#23:                                #   in Loop: Header=BB1_4 Depth=2
	movq	%r14, %rdi
	jmp	.LBB1_38
.LBB1_37:                               # %if.then.150
                                        #   in Loop: Header=BB1_4 Depth=2
	leaq	62(%rsp), %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	leaq	64(%rsp), %rdx
	movq	%r14, %rcx
	movq	%r10, %rbp
	movq	%r11, %r12
	callq	gs_type1_check_float
	movq	%r12, %r11
	movq	24(%rsp), %r12          # 8-byte Reload
	movq	%rbp, %r10
	testl	%eax, %eax
	movq	%r14, %rdi
	jns	.LBB1_38
	jmp	.LBB1_61
.LBB1_45:                               # %sw.bb.225
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	(%r14), %eax
	sarl	$8, %eax
	leal	-14(%rax), %esi
	cmpl	$4, %esi
	ja	.LBB1_46
# BB#70:                                # %sw.bb.225
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	%r10, %rbp
	movl	$1, %edx
	jmpq	*.LJTI1_2(,%rsi,8)
.LBB1_50:                               # %sw.bb.231
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$2, %edx
	jmp	.LBB1_54
.LBB1_56:                               # %sw.bb.243
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	11072(%rbx), %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	je	.LBB1_61
# BB#57:                                # %if.then.247
                                        #   in Loop: Header=BB1_4 Depth=2
	decl	%ecx
	movl	%ecx, 11072(%rbx)
	movq	%r14, %rdi
	jmp	.LBB1_38
.LBB1_51:                               # %sw.bb.232
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$3, %edx
	jmp	.LBB1_54
.LBB1_52:                               # %sw.bb.233
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$4, %edx
	jmp	.LBB1_54
.LBB1_53:                               # %sw.bb.234
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$6, %edx
.LBB1_54:                               # %blend
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_type1_blend
	testl	%eax, %eax
	movq	%rbp, %r10
	movq	8(%rsp), %r11           # 8-byte Reload
	js	.LBB1_61
# BB#55:                                # %if.end.239
                                        #   in Loop: Header=BB1_4 Depth=2
	cltq
	shlq	$2, %rax
	subq	%rax, %r14
	movq	%r14, %rdi
	.align	16, 0x90
.LBB1_38:                               # %for.cond.backedge
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	64(%rsp), %rcx
	cmpq	%r13, %rcx
	movq	%rdi, %r14
	jb	.LBB1_4
	jmp	.LBB1_39
.LBB1_27:                               # %sw.bb.164
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	(%r14), %esi
	sarl	$8, %esi
	movq	9856(%rbx), %rdi
	addl	516(%rdi), %esi
	movslq	10976(%rbx), %rax
	leaq	(%rax,%rax,8), %rax
	leaq	10208(%rbx,%rax,8), %rcx
	xorl	%edx, %edx
	movq	%r12, %r13
	movq	%r10, %r12
	movq	%r11, %rbp
	callq	*456(%rdi)
	movq	%rbp, %r8
	movq	%r12, %r10
	movq	%r13, %r12
	testl	%eax, %eax
	js	.LBB1_61
# BB#28:                                # %if.end.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movslq	10976(%rbx), %rax
	leal	1(%rax), %ecx
	movl	%ecx, 10976(%rbx)
	movq	9856(%rbx), %rcx
	movl	512(%rcx), %edx
	leaq	(%rax,%rax,8), %rax
	movq	10208(%rbx,%rax,8), %rcx
	testl	%edx, %edx
	jle	.LBB1_69
# BB#29:                                # %for.body.i.i.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	incl	%edx
	movw	$4330, %si              # imm = 0x10EA
.LBB1_30:                               # %for.body.i.i
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rcx), %edi
	addl	%edi, %esi
	imull	$-12691, %esi, %esi     # imm = 0xFFFFFFFFFFFFCE6D
	addl	$22719, %esi            # imm = 0x58BF
	incq	%rcx
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB1_30
# BB#31:                                # %type1_callsubr.exit
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rcx, 10184(%rbx,%rax,8)
	movw	%si, 10200(%rbx,%rax,8)
	jmp	.LBB1_32
.LBB1_35:                               # %sw.bb.178
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpl	$2, 10976(%rbx)
	jl	.LBB1_61
# BB#36:                                # %if.then.182
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$.L.str, %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%r10, %rbp
	callq	gs_glyph_data_free
	movq	%rbp, %r10
	decl	10976(%rbx)
	leaq	-72(%r12), %r11
	movq	$-1, %rax
	jmp	.LBB1_33
.LBB1_69:                               # %type1_callsubr.exit.thread100
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rcx, 10184(%rbx,%rax,8)
	movw	$4330, 10200(%rbx,%rax,8) # imm = 0x10EA
.LBB1_32:                               # %if.end.173
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	64(%rsp), %rax
	movq	%rax, (%r8)
	movw	62(%rsp), %ax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movw	%ax, (%rcx)
	addq	$-4, %r14
	leaq	72(%r12), %r11
	movl	$1, %eax
.LBB1_33:                               # %load.backedge
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	(%r11), %rcx
	movq	%rcx, 64(%rsp)
	leaq	(%rax,%rax,8), %rax
	leaq	24(%r12,%rax,8), %rsi
	movl	32(%r12,%rax,8), %r13d
	addq	24(%r12,%rax,8), %r13
	leaq	16(%r12,%rax,8), %rdx
	movw	16(%r12,%rax,8), %ax
	movw	%ax, 62(%rsp)
	cmpq	%r13, %rcx
	movq	%r11, %r12
	jb	.LBB1_3
# BB#34:
	movl	$-1, %eax
	jmp	.LBB1_61
.LBB1_1:
	movl	$-1, %eax
	jmp	.LBB1_61
.LBB1_25:                               # %if.end.163
	testl	%edx, %edx
	je	.LBB1_61
# BB#26:                                # %if.end.163
	cmpl	$2, %edx
	je	.LBB1_61
.LBB1_60:                               # %for.end.253
	movq	%rsi, (%r11)
	movw	62(%rsp), %ax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movw	%ax, (%rcx)
	addq	$72, %r12
	leaq	10184(%rbx), %rax
	subq	%rax, %r12
	shrq	$3, %r12
	imull	$954437177, %r12d, %eax # imm = 0x38E38E39
	movl	%eax, 10976(%rbx)
	addq	$4, %r14
	subq	%r10, %r14
	shrq	$2, %r14
	movl	%r14d, 10180(%rbx)
	movl	%edx, %eax
.LBB1_61:                               # %cleanup.270
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_58:                               # %sw.default.211
	addl	$32, %edx
	jmp	.LBB1_59
.LBB1_39:
	movl	$-1, %eax
	jmp	.LBB1_61
.LBB1_46:                               # %sw.bb.225
	movl	$16, %edx
	cmpl	$3, %eax
	je	.LBB1_49
# BB#47:                                # %sw.bb.225
	testl	%eax, %eax
	je	.LBB1_48
.LBB1_59:                               # %for.end.253
	movq	%rcx, %rsi
	jmp	.LBB1_60
.LBB1_49:                               # %sw.bb.228
	movl	$1, 11072(%rbx)
	jmp	.LBB1_59
.LBB1_48:                               # %sw.bb.227
	movl	$2, 11072(%rbx)
	jmp	.LBB1_59
.Lfunc_end1:
	.size	type1_next, .Lfunc_end1-type1_next
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_27
	.quad	.LBB1_35
	.quad	.LBB1_40
	.quad	.LBB1_60
	.quad	.LBB1_60
	.quad	.LBB1_38
	.quad	.LBB1_60
	.quad	.LBB1_61
.LJTI1_1:
	.quad	.LBB1_44
	.quad	.LBB1_58
	.quad	.LBB1_58
	.quad	.LBB1_38
	.quad	.LBB1_45
	.quad	.LBB1_56
.LJTI1_2:
	.quad	.LBB1_54
	.quad	.LBB1_50
	.quad	.LBB1_51
	.quad	.LBB1_52
	.quad	.LBB1_53

	.text
	.align	16, 0x90
	.type	type1_stem1,@function
type1_stem1:                            # @type1_stem1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movslq	(%rdi), %rax
	cmpq	$95, %rax
	jg	.LBB2_13
# BB#1:                                 # %while.cond.preheader
	addl	(%rsi), %edx
	movl	4(%rsi), %ecx
	addl	%edx, %ecx
	leaq	(%rax,%rax,2), %rsi
	leaq	12(%rdi,%rsi,4), %r8
	testl	%eax, %eax
	jle	.LBB2_2
# BB#3:                                 # %land.rhs.preheader
	leaq	12(%rdi), %rax
	leaq	(%rdi,%rsi,4), %rsi
	.align	16, 0x90
.LBB2_4:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	leaq	12(%rsi), %rbx
	cmpl	(%rsi), %edx
	jl	.LBB2_7
# BB#5:                                 # %lor.rhs
                                        #   in Loop: Header=BB2_4 Depth=1
	jne	.LBB2_9
# BB#6:                                 # %land.rhs.12
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	4(%rsi), %ecx
	jge	.LBB2_10
.LBB2_7:                                # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	8(%rsi), %ebx
	movl	%ebx, 20(%rsi)
	movq	(%rsi), %rbx
	movq	%rbx, 12(%rsi)
	cmpq	%rax, %rsi
	leaq	-12(%rsi), %rsi
	ja	.LBB2_4
# BB#8:                                 # %if.end.36.loopexitsplit
	addq	$12, %rsi
	movq	%rsi, %rbx
	jmp	.LBB2_9
.LBB2_2:
	movq	%r8, %rbx
	jmp	.LBB2_9
.LBB2_10:                               # %land.lhs.true.22
	cmpl	-8(%rbx), %ecx
	jne	.LBB2_9
# BB#11:                                # %if.then.26
	leaq	12(%rbx), %rsi
	subq	%rbx, %r8
	movq	%rbx, %rdi
	movq	%r8, %rdx
	callq	memmove
	testq	%r14, %r14
	je	.LBB2_13
# BB#12:                                # %if.then.28
	movzwl	-4(%rbx), %eax
	movb	%al, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	shrq	$3, %rax
	movzbl	(%r14,%rax), %ecx
	orl	%edx, %ecx
	movb	%cl, (%r14,%rax)
	jmp	.LBB2_13
.LBB2_9:                                # %if.end.36
	movl	%edx, (%rbx)
	movl	%ecx, 4(%rbx)
	incl	(%rdi)
.LBB2_13:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	type1_stem1, .Lfunc_end2-type1_stem1
	.cfi_endproc

	.align	16, 0x90
	.type	type2_put_op,@function
type2_put_op:                           # @type2_put_op
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 32
.Ltmp34:
	.cfi_offset %rbx, -24
.Ltmp35:
	.cfi_offset %r14, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	cmpl	$32, %ebx
	jl	.LBB3_3
# BB#1:                                 # %if.then
	movl	$12, %esi
	movq	%r14, %rdi
	callq	spputc
	addl	$224, %ebx
	jmp	.LBB3_2
.LBB3_3:                                # %if.else
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB3_2
# BB#4:                                 # %if.end
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	%bl, 1(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB3_2:                                # %cond.false
	movzbl	%bl, %esi
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	spputc                  # TAILCALL
.Lfunc_end3:
	.size	type2_put_op, .Lfunc_end3-type2_put_op
	.cfi_endproc

	.align	16, 0x90
	.type	type2_put_fixed,@function
type2_put_fixed:                        # @type2_put_fixed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 32
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	%ebx, %ebp
	andl	$255, %ebp
	je	.LBB4_16
# BB#1:                                 # %if.else
	leal	8388608(%rbx), %eax
	cmpl	$16777215, %eax         # imm = 0xFFFFFF
	ja	.LBB4_14
# BB#2:                                 # %if.then.2
	movl	$255, %esi
	movq	%r14, %rdi
	callq	spputc
	movl	%ebx, %eax
	shrl	$8, %eax
	movswl	%ax, %edx
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB4_4
# BB#3:                                 # %cond.true.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	%dh, 1(%rax)  # NOREX
	jmp	.LBB4_5
.LBB4_16:                               # %if.then
	sarl	$8, %ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	type2_put_int           # TAILCALL
.LBB4_14:                               # %if.else.3
	sarl	$8, %ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	type2_put_int
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	type2_put_fixed
	movl	$12, %esi
	movq	%r14, %rdi
	callq	spputc
	movl	$10, %esi
	jmp	.LBB4_13
.LBB4_4:                                # %cond.false.i.i
	movzbl	%dh, %esi  # NOREX
	movq	%r14, %rdi
	movl	%edx, %ebp
	callq	spputc
	movl	%ebp, %edx
.LBB4_5:                                # %cond.end.i.i
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB4_7
# BB#6:                                 # %cond.true.19.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	%dl, 1(%rax)
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false.28.i.i
	movzbl	%dl, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB4_8:                                # %sputc2.exit.i
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB4_10
# BB#9:                                 # %cond.true.i.7.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	%bl, 1(%rax)
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false.i.11.i
	movzbl	%bl, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB4_11:                               # %cond.end.i.13.i
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB4_12
# BB#15:                                # %if.end.6
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	$0, 1(%rax)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB4_12:                               # %cond.false.28.i.19.i
	xorl	%esi, %esi
.LBB4_13:                               # %cond.false.28.i.19.i
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end4:
	.size	type2_put_fixed, .Lfunc_end4-type2_put_fixed
	.cfi_endproc

	.align	16, 0x90
	.type	type2_put_stems,@function
type2_put_stems:                        # @type2_put_stems
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 80
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%esi, %r15d
	movq	%rdi, %rbx
	cmpl	$0, (%rdx)
	jle	.LBB5_5
# BB#1:                                 # %for.body.preheader
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	16(%rax), %rbp
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %r12d
	movl	(%rbp), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	cmpl	$47, %r15d
	jl	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rbx, %rdi
	movl	4(%rsp), %esi           # 4-byte Reload
	callq	type2_put_op
	xorl	%r15d, %r15d
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%r12d, %esi
	subl	%r14d, %esi
	movq	%rbx, %rdi
	callq	type2_put_fixed
	movl	20(%rsp), %r14d         # 4-byte Reload
	movl	%r14d, %esi
	subl	%r12d, %esi
	movq	%rbx, %rdi
	callq	type2_put_fixed
	incq	%r13
	addl	$2, %r15d
	movq	8(%rsp), %rax           # 8-byte Reload
	movslq	(%rax), %rax
	addq	$12, %rbp
	cmpq	%rax, %r13
	jl	.LBB5_2
.LBB5_5:                                # %for.end
	movq	%rbx, %rdi
	movl	4(%rsp), %esi           # 4-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	type2_put_op            # TAILCALL
.Lfunc_end5:
	.size	type2_put_stems, .Lfunc_end5-type2_put_stems
	.cfi_endproc

	.align	16, 0x90
	.type	type2_put_int,@function
type2_put_int:                          # @type2_put_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp57:
	.cfi_def_cfa_offset 32
.Ltmp58:
	.cfi_offset %rbx, -24
.Ltmp59:
	.cfi_offset %r14, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_3
# BB#1:                                 # %if.then
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB6_10
# BB#2:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	addl	$139, %ebx
	movb	%bl, 1(%rax)
	jmp	.LBB6_19
.LBB6_3:                                # %if.else
	cmpl	$1131, %ebx             # imm = 0x46B
	ja	.LBB6_13
# BB#4:                                 # %if.then.18
	addl	$63124, %ebx            # imm = 0xF694
	jmp	.LBB6_5
.LBB6_10:                               # %cond.false
	addl	$139, %ebx
	jmp	.LBB6_11
.LBB6_13:                               # %if.else.20
	cmpl	$-1131, %ebx            # imm = 0xFFFFFFFFFFFFFB95
	jb	.LBB6_21
# BB#14:                                # %if.then.26
	movl	$64148, %edx            # imm = 0xFA94
	subl	%ebx, %edx
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB6_16
# BB#15:                                # %cond.true.i.38
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	%dh, 1(%rax)  # NOREX
	jmp	.LBB6_17
.LBB6_21:                               # %if.else.29
	leal	32768(%rbx), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	ja	.LBB6_23
# BB#22:                                # %if.then.35
	movl	$28, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB6_5:                                # %if.then.18
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB6_7
# BB#6:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	%bh, 1(%rax)  # NOREX
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false.i
	movzbl	%bh, %esi  # NOREX
	movq	%r14, %rdi
	callq	spputc
.LBB6_8:                                # %cond.end.i
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB6_11
# BB#9:                                 # %cond.true.19.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	%bl, 1(%rax)
	jmp	.LBB6_19
.LBB6_11:                               # %cond.false.28.i
	movzbl	%bl, %esi
.LBB6_12:                               # %cond.false.28.i
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	spputc                  # TAILCALL
.LBB6_16:                               # %cond.false.i.42
	movzbl	%dh, %esi  # NOREX
	movq	%r14, %rdi
	movl	%edx, %ebx
	callq	spputc
	movl	%ebx, %edx
.LBB6_17:                               # %cond.end.i.44
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB6_20
# BB#18:                                # %cond.true.19.i.47
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	%dl, 1(%rax)
.LBB6_19:                               # %if.end.40
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB6_23:                               # %if.else.37
	movl	%ebx, %esi
	sarl	$10, %esi
	movq	%r14, %rdi
	callq	type2_put_int
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB6_25
# BB#24:                                # %cond.true.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	$-6, 1(%rax)
	jmp	.LBB6_26
.LBB6_20:                               # %cond.false.28.i.50
	movzbl	%dl, %esi
	jmp	.LBB6_12
.LBB6_25:                               # %cond.false.i.i
	movl	$250, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB6_26:                               # %cond.end.i.i
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB6_28
# BB#27:                                # %cond.true.19.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	$-108, 1(%rax)
	jmp	.LBB6_29
.LBB6_28:                               # %cond.false.28.i.i
	movl	$148, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB6_29:                               # %type2_put_int.exit
	movl	$12, %esi
	movq	%r14, %rdi
	callq	spputc
	movl	$24, %esi
	movq	%r14, %rdi
	callq	spputc
	andl	$1023, %ebx             # imm = 0x3FF
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	type2_put_int
	movl	$12, %esi
	movq	%r14, %rdi
	callq	spputc
	movl	$10, %esi
	jmp	.LBB6_12
.Lfunc_end6:
	.size	type2_put_int, .Lfunc_end6-type2_put_int
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"type1_next"
	.size	.L.str, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
