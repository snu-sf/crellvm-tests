	.text
	.file	"gdevpcl3.bc"
	.align	16, 0x90
	.type	pcl3_print_page,@function
pcl3_print_page:                        # @pcl3_print_page
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
	subq	$120, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 176
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
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	$.L.str.25, %ebp
	cmpl	$0, 18588(%r15)
	jne	.LBB0_2
# BB#1:                                 # %select.mid
	movl	$.L.str.26, %ebp
.LBB0_2:                                # %select.end
	movq	%r15, %rdi
	callq	gdev_prn_file_is_new
	testl	%eax, %eax
	jne	.LBB0_6
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, 18676(%r15)
	je	.LBB0_6
# BB#4:                                 # %lor.lhs.false.3
	cmpl	$0, 18680(%r15)
	je	.LBB0_5
.LBB0_6:                                # %if.then
	leaq	18688(%r15), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pcl3_init_file
	testl	%eax, %eax
	jne	.LBB0_7
# BB#9:                                 # %if.end.9
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movl	$1, 18676(%r15)
	jmp	.LBB0_10
.LBB0_5:                                # %lor.lhs.false.3.if.end.11_crit_edge
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	leaq	18688(%r15), %rbx
.LBB0_10:                               # %if.end.11
	leaq	48(%rsp), %rdi
	xorl	%esi, %esi
	movl	$72, %edx
	callq	memset
	movq	%rbx, 56(%rsp)
	movq	%r15, %rdi
	callq	eprn_number_of_bitplanes
	movl	%eax, %r13d
	movl	%r13d, %r14d
	movq	%r14, 32(%rsp)          # 8-byte Spill
	leaq	(,%r14,4), %rdi
	callq	malloc
	movq	%rax, %rbp
	shlq	$4, %r14
	movq	%r14, %rdi
	callq	malloc
	movq	%rax, 72(%rsp)
	movl	18856(%r15), %ecx
	cmpl	$9, %ecx
	ja	.LBB0_13
# BB#11:                                # %if.end.11
	movl	$552, %edx              # imm = 0x228
	btl	%ecx, %edx
	jae	.LBB0_13
# BB#12:                                # %if.then.32
	movq	%r14, %rdi
	callq	malloc
	movq	%rax, 64(%rsp)
	movq	72(%rsp), %rax
.LBB0_13:                               # %if.end.36
	movq	%rbp, %r14
	testq	%r14, %r14
	je	.LBB0_18
# BB#14:                                # %if.end.36
	testq	%rax, %rax
	je	.LBB0_18
# BB#15:                                # %lor.lhs.false.43
	movl	18856(%r15), %eax
	cmpl	$9, %eax
	ja	.LBB0_20
# BB#16:                                # %lor.lhs.false.43
	movl	$552, %ecx              # imm = 0x228
	btl	%eax, %ecx
	jae	.LBB0_20
# BB#17:                                # %land.lhs.true
	cmpq	$0, 64(%rsp)
	je	.LBB0_18
.LBB0_20:                               # %if.end.67
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r12, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	eprn_number_of_octets
	movl	(%r14), %edi
	leal	(,%rdi,8), %eax
	movl	%eax, 48(%rsp)
	testl	%r13d, %r13d
	je	.LBB0_24
# BB#21:                                # %for.body.preheader
	callq	malloc
	movq	72(%rsp), %rcx
	movq	%rax, (%rcx)
	cmpl	$1, %r13d
	je	.LBB0_24
# BB#22:                                # %for.body.for.body_crit_edge.preheader
	leal	-1(%r13), %ebp
	movl	$4, %r12d
	.align	16, 0x90
.LBB0_23:                               # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r14,%r12), %edi
	callq	malloc
	movq	72(%rsp), %rcx
	movq	%rax, (%rcx,%r12,4)
	addq	$4, %r12
	decl	%ebp
	jne	.LBB0_23
.LBB0_24:                               # %for.end
	movl	18856(%r15), %eax
	cmpl	$9, %eax
	movq	%rbx, %r12
	ja	.LBB0_57
# BB#25:                                # %for.end
	movl	$552, %ecx              # imm = 0x228
	btl	%eax, %ecx
	jae	.LBB0_57
# BB#26:                                # %for.cond.93.preheader
	testl	%r13d, %r13d
	je	.LBB0_27
# BB#55:                                # %for.body.96.lr.ph
	xorl	%ebp, %ebp
	movl	%r13d, %ebx
	.align	16, 0x90
.LBB0_56:                               # %for.body.96
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rbp), %edi
	callq	malloc
	movq	64(%rsp), %rcx
	movq	%rax, (%rcx,%rbp,4)
	addq	$4, %rbp
	decl	%ebx
	jne	.LBB0_56
.LBB0_57:                               # %if.end.109
	movl	(%r14), %edi
	leaq	96(%rsp), %rbp
	movq	%rdi, 96(%rsp)
	cmpl	$1, %r13d
	seta	%al
	cmpl	$2, %r13d
	jb	.LBB0_28
# BB#58:                                # %for.body.115.preheader
	movl	$1, %ecx
	testb	$1, %r13b
	jne	.LBB0_59
# BB#60:                                # %for.body.115.prol
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	4(%r14), %eax
	movl	$2, %ecx
	cmpl	%edi, %eax
	jbe	.LBB0_62
# BB#61:                                # %if.then.122.prol
	movq	%rax, 96(%rsp)
	movl	$2, %ecx
	movq	%rax, %rdi
	jmp	.LBB0_62
.LBB0_18:
	leaq	64(%rsp), %rbx
	movq	%r14, %rdi
	callq	free
	movq	72(%rsp), %rdi
	callq	free
	movq	(%rbx), %rdi
	jmp	.LBB0_19
.LBB0_59:
	movl	%eax, 20(%rsp)          # 4-byte Spill
.LBB0_62:                               # %for.body.115.preheader.split
	cmpl	$2, %r13d
	je	.LBB0_29
# BB#63:                                # %for.body.115.preheader.split.split
	movl	%r13d, %eax
	subl	%ecx, %eax
	leaq	4(%r14,%rcx,4), %rcx
	.align	16, 0x90
.LBB0_64:                               # %for.body.115
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rcx), %edx
	cmpq	%rdi, %rdx
	jbe	.LBB0_66
# BB#65:                                # %if.then.122
                                        #   in Loop: Header=BB0_64 Depth=1
	movq	%rdx, 96(%rsp)
	movq	%rdx, %rdi
.LBB0_66:                               # %for.inc.128
                                        #   in Loop: Header=BB0_64 Depth=1
	movl	(%rcx), %edx
	cmpq	%rdi, %rdx
	jbe	.LBB0_68
# BB#67:                                # %if.then.122.1
                                        #   in Loop: Header=BB0_64 Depth=1
	movq	%rdx, 96(%rsp)
	movq	%rdx, %rdi
.LBB0_68:                               # %for.inc.128.1
                                        #   in Loop: Header=BB0_64 Depth=1
	addq	$8, %rcx
	addl	$-2, %eax
	jne	.LBB0_64
	jmp	.LBB0_29
.LBB0_27:                               # %if.end.109.thread
	movl	(%r14), %edi
	leaq	96(%rsp), %rbp
	movq	%rdi, 96(%rsp)
.LBB0_28:                               # %lor.rhs.1
	movl	$0, 20(%rsp)            # 4-byte Folded Spill
.LBB0_29:                               # %lor.rhs.1
	callq	malloc
	movq	%rax, 80(%rsp)
	cmpl	$3, 18856(%r15)
	jne	.LBB0_31
# BB#30:                                # %for.body.140.1
	movq	(%rbp), %rdi
	callq	malloc
	movq	%rax, 88(%rsp)
.LBB0_31:                               # %while.cond.preheader
	xorl	%eax, %eax
	testl	%r13d, %r13d
	je	.LBB0_35
# BB#32:                                # %land.rhs.151.lr.ph
	xorl	%eax, %eax
	movq	72(%rsp), %rcx
	.align	16, 0x90
.LBB0_33:                               # %land.rhs.151
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rcx)
	je	.LBB0_35
# BB#34:                                # %while.body
                                        #   in Loop: Header=BB0_33 Depth=1
	incl	%eax
	addq	$16, %rcx
	cmpl	%r13d, %eax
	jb	.LBB0_33
.LBB0_35:                               # %while.end
	cmpl	%r13d, %eax
	jne	.LBB0_46
# BB#36:                                # %land.lhs.true.162
	movl	18856(%r15), %ecx
	cmpl	$9, %ecx
	ja	.LBB0_47
# BB#37:                                # %land.lhs.true.162
	movl	$552, %eax              # imm = 0x228
	btl	%ecx, %eax
	jae	.LBB0_47
# BB#38:                                # %while.cond.178.preheader
	xorl	%eax, %eax
	testl	%r13d, %r13d
	je	.LBB0_42
# BB#39:                                # %land.rhs.181.lr.ph
	xorl	%eax, %eax
	movq	64(%rsp), %rdx
	.align	16, 0x90
.LBB0_40:                               # %land.rhs.181
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rdx)
	je	.LBB0_42
# BB#41:                                # %while.body.189
                                        #   in Loop: Header=BB0_40 Depth=1
	incl	%eax
	addq	$16, %rdx
	cmpl	%r13d, %eax
	jb	.LBB0_40
.LBB0_42:                               # %while.end.191
	cmpl	%r13d, %eax
	jne	.LBB0_46
# BB#43:                                # %land.lhs.true.194
	cmpl	$3, %ecx
	jne	.LBB0_47
# BB#44:                                # %land.lhs.true.199
	xorl	%eax, %eax
	cmpq	$0, 88(%rsp)
	je	.LBB0_46
# BB#45:                                # %select.mid342
	movl	%r13d, %eax
.LBB0_46:                               # %if.end.206
	cmpl	%r13d, %eax
	jb	.LBB0_48
.LBB0_47:                               # %lor.lhs.false.209
	cmpq	$0, 80(%rsp)
	je	.LBB0_48
# BB#69:                                # %if.end.261
	movq	%r12, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	pcl3_begin_page
	testl	%eax, %eax
	jne	.LBB0_7
# BB#70:                                # %if.end.271
	leaq	48(%rsp), %rsi
	movq	%r12, %rdi
	callq	pcl3_begin_raster
	testl	%eax, %eax
	jne	.LBB0_7
# BB#71:                                # %while.cond.281.preheader
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	72(%rsp), %rsi
	movq	%r15, %rdi
	callq	eprn_get_planes
	testl	%eax, %eax
	jne	.LBB0_81
# BB#72:                                # %while.body.286.lr.ph
	xorl	%r12d, %r12d
.LBB0_73:                               # %while.body.286
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_76 Depth 2
                                        #     Child Loop BB0_94 Depth 2
                                        #     Child Loop BB0_97 Depth 2
                                        #       Child Loop BB0_98 Depth 3
	cmpl	$1, 18556(%r15)
	jne	.LBB0_74
# BB#92:                                # %for.cond.291.preheader
                                        #   in Loop: Header=BB0_73 Depth=1
	movq	72(%rsp), %rax
	movl	8(%rax), %esi
	movl	$1, %ecx
	movl	20(%rsp), %edx          # 4-byte Reload
	testb	%dl, %dl
	je	.LBB0_96
# BB#93:                                # %land.rhs.294.preheader
                                        #   in Loop: Header=BB0_73 Depth=1
	leaq	24(%rax), %rdx
	movl	$1, %ecx
	.align	16, 0x90
.LBB0_94:                               # %land.rhs.294
                                        #   Parent Loop BB0_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, (%rdx)
	jne	.LBB0_78
# BB#95:                                # %for.inc.305
                                        #   in Loop: Header=BB0_94 Depth=2
	incl	%ecx
	addq	$16, %rdx
	cmpl	%r13d, %ecx
	jb	.LBB0_94
.LBB0_96:                               # %land.lhs.true.310
                                        #   in Loop: Header=BB0_73 Depth=1
	cmpl	(%r14), %esi
	movl	$0, %edx
	jne	.LBB0_78
	jmp	.LBB0_97
.LBB0_104:                              # %land.rhs.349.do.body_crit_edge
                                        #   in Loop: Header=BB0_97 Depth=2
	movq	%rdx, %rcx
	shlq	$4, %rcx
	movl	8(%rax,%rcx), %esi
.LBB0_97:                               # %do.body
                                        #   Parent Loop BB0_73 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_98 Depth 3
	movq	%rdx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %rcx
	movslq	%esi, %rsi
	leal	-1(%rsi), %edi
	movslq	%edi, %rdi
	.align	16, 0x90
.LBB0_98:                               # %while.cond.322
                                        #   Parent Loop BB0_73 Depth=1
                                        #     Parent Loop BB0_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rbx
	cmpq	$2, %rbx
	jl	.LBB0_100
# BB#99:                                # %land.rhs.325
                                        #   in Loop: Header=BB0_98 Depth=3
	movq	(%rcx), %rsi
	movzbl	(%rsi,%rdi), %ebp
	leaq	-1(%rbx), %rsi
	decq	%rdi
	cmpl	$255, %ebp
	je	.LBB0_98
.LBB0_100:                              # %land.rhs.325.do.cond_crit_edge
                                        #   in Loop: Header=BB0_97 Depth=2
	decl	%ebx
	testl	%ebx, %ebx
	jne	.LBB0_101
# BB#102:                               # %land.lhs.true.340
                                        #   in Loop: Header=BB0_97 Depth=2
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	cmpl	$255, %ecx
	movl	%edx, %ecx
	jne	.LBB0_78
# BB#103:                               # %land.rhs.349
                                        #   in Loop: Header=BB0_97 Depth=2
	incq	%rdx
	cmpq	32(%rsp), %rdx          # 8-byte Folded Reload
	movl	%edx, %ecx
	jb	.LBB0_104
	jmp	.LBB0_78
.LBB0_74:                               # %for.cond.355.preheader
                                        #   in Loop: Header=BB0_73 Depth=1
	xorl	%ecx, %ecx
	testl	%r13d, %r13d
	je	.LBB0_78
# BB#75:                                # %land.rhs.358.lr.ph
                                        #   in Loop: Header=BB0_73 Depth=1
	movq	72(%rsp), %rax
	addq	$8, %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_76:                               # %land.rhs.358
                                        #   Parent Loop BB0_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, (%rax)
	jne	.LBB0_78
# BB#77:                                # %for.inc.367
                                        #   in Loop: Header=BB0_76 Depth=2
	incl	%ecx
	addq	$16, %rax
	cmpl	%r13d, %ecx
	jb	.LBB0_76
	jmp	.LBB0_78
.LBB0_101:                              #   in Loop: Header=BB0_73 Depth=1
	movl	%edx, %ecx
.LBB0_78:                               # %if.end.370
                                        #   in Loop: Header=BB0_73 Depth=1
	cmpl	%r13d, %ecx
	jne	.LBB0_105
# BB#79:                                # %if.then.373
                                        #   in Loop: Header=BB0_73 Depth=1
	incl	%r12d
	jmp	.LBB0_80
.LBB0_105:                              # %if.else.375
                                        #   in Loop: Header=BB0_73 Depth=1
	testl	%r12d, %r12d
	jle	.LBB0_106
# BB#107:                               # %if.then.378
                                        #   in Loop: Header=BB0_73 Depth=1
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdi
	leaq	48(%rsp), %rbp
	movq	%rbp, %rsi
	movl	%r12d, %edx
	callq	pcl3_skip_groups
	movq	%rbp, %rsi
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB0_108
	jmp	.LBB0_7
.LBB0_106:                              #   in Loop: Header=BB0_73 Depth=1
	movq	8(%rsp), %rbx           # 8-byte Reload
	leaq	48(%rsp), %rsi
.LBB0_108:                              # %if.end.388
                                        #   in Loop: Header=BB0_73 Depth=1
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%rbx, %rdi
	callq	pcl3_transfer_group
	testl	%eax, %eax
	jne	.LBB0_7
.LBB0_80:                               # %while.cond.281.backedge
                                        #   in Loop: Header=BB0_73 Depth=1
	movq	72(%rsp), %rsi
	movq	%r15, %rdi
	callq	eprn_get_planes
	testl	%eax, %eax
	je	.LBB0_73
.LBB0_81:                               # %while.end.399
	leaq	48(%rsp), %rsi
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdi
	callq	pcl3_end_raster
	testl	%eax, %eax
	jne	.LBB0_7
# BB#82:                                # %if.end.408
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	pcl3_end_page
	testl	%eax, %eax
	je	.LBB0_83
.LBB0_7:                                # %if.then.6
	movl	$-100, %ecx
	movl	$-12, %eax
	cmovgl	%ecx, %eax
	jmp	.LBB0_8
.LBB0_48:                               # %for.cond.215.preheader
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	je	.LBB0_54
# BB#49:
	movl	$552, %r12d             # imm = 0x228
	.align	16, 0x90
.LBB0_50:                               # %for.body.218
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax
	movq	(%rax,%rbp), %rdi
	callq	free
	movl	18856(%r15), %eax
	cmpl	$9, %eax
	ja	.LBB0_53
# BB#51:                                # %for.body.218
                                        #   in Loop: Header=BB0_50 Depth=1
	btl	%eax, %r12d
	jae	.LBB0_53
# BB#52:                                # %if.then.237
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	64(%rsp), %rax
	movq	(%rax,%rbp), %rdi
	callq	free
.LBB0_53:                               # %for.inc.243
                                        #   in Loop: Header=BB0_50 Depth=1
	addq	$16, %rbp
	decl	%r13d
	jne	.LBB0_50
.LBB0_54:                               # %for.end.245
	movq	%r14, %rdi
	callq	free
	movq	72(%rsp), %rdi
	callq	free
	movq	64(%rsp), %rdi
	callq	free
	movq	80(%rsp), %rdi
	callq	free
	movq	88(%rsp), %rdi
.LBB0_19:                               # %cleanup
	callq	free
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.121, %edi
	xorl	%eax, %eax
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	errprintf_nomem
	movl	$-25, %eax
.LBB0_8:                                # %cleanup
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_83:                               # %for.cond.419.preheader
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	je	.LBB0_86
# BB#84:
	movl	%r13d, %ebx
.LBB0_85:                               # %for.body.422
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax
	movq	(%rax,%rbp), %rdi
	callq	free
	addq	$16, %rbp
	decl	%ebx
	jne	.LBB0_85
.LBB0_86:                               # %for.end.429
	movl	18856(%r15), %eax
	cmpl	$9, %eax
	ja	.LBB0_91
# BB#87:                                # %for.end.429
	movl	$552, %ecx              # imm = 0x228
	btl	%eax, %ecx
	jae	.LBB0_91
# BB#88:                                # %for.cond.445.preheader
	testl	%r13d, %r13d
	je	.LBB0_91
# BB#89:                                # %for.body.448.lr.ph
	xorl	%ebx, %ebx
.LBB0_90:                               # %for.body.448
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	movq	(%rax,%rbx), %rdi
	callq	free
	addq	$16, %rbx
	decl	%r13d
	jne	.LBB0_90
.LBB0_91:                               # %for.cond.457.preheader
	movq	80(%rsp), %rdi
	callq	free
	movq	88(%rsp), %rdi
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	72(%rsp), %rdi
	callq	free
	movq	64(%rsp), %rdi
	callq	free
	xorl	%eax, %eax
	jmp	.LBB0_8
.Lfunc_end0:
	.size	pcl3_print_page, .Lfunc_end0-pcl3_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pcl3_flag_mismatch_reporter,@function
pcl3_flag_mismatch_reporter:            # @pcl3_flag_mismatch_reporter
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
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movl	$.L.str.25, %r15d
	cmpl	$0, 116(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %select.mid
	movl	$.L.str.26, %r15d
.LBB1_2:                                # %select.end
	movl	32(%rbp), %ebx
	cmpl	$2048, %ebx             # imm = 0x800
	jne	.LBB1_3
# BB#5:                                 # %if.then.5
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	(%rbp), %rax
	movq	(%rax), %rdx
	movl	$.L.str.113, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	errprintf_nomem
	testl	%r14d, %r14d
	jne	.LBB1_7
# BB#6:                                 # %if.then.12
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.114, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB1_7:                                # %if.end
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.115, %edi
	jmp	.LBB1_8
.LBB1_3:                                # %select.end
	testl	%ebx, %ebx
	jne	.LBB1_9
# BB#4:                                 # %if.then
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	(%rbp), %rax
	movq	(%rax), %rdx
	movl	$.L.str.112, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	errprintf_nomem         # TAILCALL
.LBB1_9:                                # %if.else.19
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	cmpl	$512, %ebx              # imm = 0x200
	jne	.LBB1_14
# BB#10:                                # %if.then.22
	movq	(%rbp), %rax
	movq	(%rax), %rdx
	movl	$.L.str.116, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	errprintf_nomem
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	testl	%r14d, %r14d
	je	.LBB1_12
# BB#11:                                # %if.then.29
	movl	$.L.str.117, %edi
	jmp	.LBB1_13
.LBB1_14:                               # %if.else.41
	movl	$.L.str.120, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	errprintf_nomem         # TAILCALL
.LBB1_12:                               # %if.else.33
	movl	$.L.str.118, %edi
.LBB1_13:                               # %if.end.37
	xorl	%eax, %eax
	callq	errprintf_nomem
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.119, %edi
.LBB1_8:                                # %if.end
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	errprintf_nomem         # TAILCALL
.Lfunc_end1:
	.size	pcl3_flag_mismatch_reporter, .Lfunc_end1-pcl3_flag_mismatch_reporter
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pcl3_open_device,@function
pcl3_open_device:                       # @pcl3_open_device
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
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 112
.Ltmp29:
	.cfi_offset %rbx, -48
.Ltmp30:
	.cfi_offset %r12, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$0, 18588(%rbx)
	movl	$.L.str.25, %r14d
	movl	$.L.str.26, %eax
	cmoveq	%rax, %r14
	movl	$.L.str.27, %r15d
	cmoveq	%rax, %r15
	cmpl	$0, 18672(%rbx)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	init
.LBB2_2:                                # %if.end
	cmpl	$2, 18560(%rbx)
	ja	.LBB2_5
# BB#3:                                 # %lor.lhs.false
	cmpl	$2, 18564(%rbx)
	jbe	.LBB2_4
.LBB2_5:                                # %land.lhs.true
	leaq	18688(%rbx), %rbp
	cmpl	$-1, 18768(%rbx)
	jne	.LBB2_7
# BB#6:                                 # %if.then.10
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	errprintf_nomem
	jmp	.LBB2_7
.LBB2_4:                                # %lor.lhs.false.if.end.13_crit_edge
	leaq	18688(%rbx), %rbp
.LBB2_7:                                # %if.end.13
	movl	$2048, %eax             # imm = 0x800
	cmpl	$-1, 18752(%rbx)
	je	.LBB2_9
# BB#8:                                 # %select.mid
	xorl	%eax, %eax
.LBB2_9:                                # %select.end
	movl	18660(%rbx), %ecx
	cmpl	$1, %ecx
	sete	%dl
	movzbl	%dl, %esi
	shll	$9, %esi
	orl	%eax, %esi
	xorl	%edx, %edx
	testl	%ecx, %ecx
	movl	$card_is_optional, %eax
	cmoveq	%rax, %rdx
	movq	%rbx, %rdi
	callq	eprn_set_media_flags
	movl	$0, 18552(%rbx)
	movq	%rbx, %rdi
	callq	eprn_open_device
	testl	%eax, %eax
	jne	.LBB2_42
# BB#10:                                # %if.end.26
	movl	18528(%rbx), %edi
	callq	pcl3_page_size
	movl	%eax, 18744(%rbx)
	testl	%eax, %eax
	je	.LBB2_11
# BB#17:                                # %if.end.63
	movl	$-1, 18760(%rbx)
	cmpl	$0, 17168(%rbx)
	jle	.LBB2_25
# BB#18:                                # %if.then.66
	cmpl	$0, 17164(%rbx)
	je	.LBB2_24
# BB#19:                                # %if.then.68
	movss	856(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	860(%rbx), %xmm0
	seta	%al
	movzbl	%al, %eax
	addl	18532(%rbx), %eax
	andl	$1, %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	cmpl	$0, 18668(%rbx)
	setne	%dl
	movzbl	%dl, %edx
	movl	18664(%rbx), %esi
	cmpl	$3, %esi
	jne	.LBB2_21
# BB#20:
	xorl	%esi, %esi
	jmp	.LBB2_23
.LBB2_11:                               # %if.then.32
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.29, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	movq	%r14, %rdx
	callq	errprintf_nomem
	movl	18528(%rbx), %edx
	leaq	(%rsp), %rdi
	movl	$50, %esi
	movl	$flag_description, %ecx
	callq	ms_find_name_from_code
	movl	%eax, %r15d
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	testl	%r15d, %r15d
	je	.LBB2_12
# BB#13:                                # %if.else
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	jmp	.LBB2_14
.LBB2_24:                               # %if.else.111
	movl	$0, 18760(%rbx)
	jmp	.LBB2_25
.LBB2_12:                               # %if.then.40
	leaq	(%rsp), %rsi
	movl	$.L.str.30, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB2_14:                               # %if.end.48
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movss	856(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	860(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movl	$.L.str.32, %edi
	movb	$2, %al
	movq	%r14, %rsi
	callq	errprintf_nomem
	cmpq	$0, 18480(%rbx)
	je	.LBB2_16
# BB#15:                                # %if.then.58
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.33, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	movq	%r14, %rdx
	callq	errprintf_nomem
.LBB2_16:                               # %if.end.62
	movl	$-15, %eax
	jmp	.LBB2_42
.LBB2_21:                               # %land.rhs
	cmpl	%edx, %ecx
	setne	%dil
	cmpl	$1, %esi
	setne	%r8b
	cmpl	$2, %esi
	setne	%sil
	cmpl	%edx, %ecx
	je	.LBB2_23
# BB#22:
	andb	%dil, %r8b
	movb	%r8b, %sil
.LBB2_23:                               # %land.end.96
	movzbl	%sil, %esi
	movl	%esi, %edi
	andl	$1, %edi
	movl	%edi, 18552(%rbx)
	testb	$1, %sil
	cmovnel	%eax, %ecx
	cmpl	%edx, %ecx
	sete	%al
	movzbl	%al, %eax
	incl	%eax
	movl	%eax, 18760(%rbx)
.LBB2_25:                               # %if.end.114
	movl	18556(%rbx), %eax
	cmpq	$4, %rax
	ja	.LBB2_43
# BB#26:                                # %if.end.114
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_33:                               # %sw.bb.14.i
	movl	$3, 18784(%rbx)
	movl	$4, 18788(%rbx)
	jmp	.LBB2_34
.LBB2_27:                               # %sw.bb.i
	movq	18472(%rbx), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rcx
	xorl	%edx, %edx
	testq	%rcx, %rcx
	je	.LBB2_30
	.align	16, 0x90
.LBB2_29:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rax)
	movq	%rcx, %rdx
	jne	.LBB2_30
# BB#28:                                # %while.cond.i
                                        #   in Loop: Header=BB2_29 Depth=1
	movq	32(%rax), %rcx
	addq	$24, %rax
	testq	%rcx, %rcx
	movl	$0, %edx
	jne	.LBB2_29
.LBB2_30:                               # %while.end.i
	testq	%rdx, %rdx
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 18784(%rbx)
	movl	$1, 18788(%rbx)
	movl	$0, 18772(%rbx)
	jmp	.LBB2_34
.LBB2_32:                               # %sw.bb.11.i
	movl	$4, 18784(%rbx)
	movl	$3, 18788(%rbx)
	jmp	.LBB2_34
.LBB2_31:                               # %sw.bb.8.i
	movl	$2, 18784(%rbx)
	movl	$3, 18788(%rbx)
.LBB2_34:                               # %for.body.lr.ph
	movl	100(%rbp), %ecx
	leaq	18804(%rbx), %rax
	xorl	%edx, %edx
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB2_35:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	884(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rsi
	movl	%esi, -4(%rax)
	movss	888(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rsi
	movl	%esi, (%rax)
	incl	%edx
	addq	$12, %rax
	cmpl	%ecx, %edx
	jb	.LBB2_35
# BB#36:                                # %for.end
	movl	18784(%rbx), %eax
	cmpl	$4, %eax
	je	.LBB2_38
# BB#37:                                # %for.end
	cmpl	$2, %eax
	jne	.LBB2_39
.LBB2_38:                               # %for.cond.137.preheader
	movl	18564(%rbx), %eax
	movl	%eax, 18808(%rbx)
	movl	%eax, 18820(%rbx)
	movl	%eax, 18832(%rbx)
	xorl	%eax, %eax
.LBB2_42:                               # %cleanup
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_39:                               # %if.else.149
	movl	18560(%rbx), %eax
	movl	%eax, 18808(%rbx)
	xorl	%eax, %eax
	cmpl	$2, %ecx
	jb	.LBB2_42
# BB#40:                                # %for.body.159.lr.ph
	movl	100(%rbp), %ecx
	leaq	18820(%rbx), %rdx
	movl	$1, %esi
	.align	16, 0x90
.LBB2_41:                               # %for.body.159
                                        # =>This Inner Loop Header: Depth=1
	movl	18564(%rbx), %edi
	movl	%edi, (%rdx)
	incl	%esi
	addq	$12, %rdx
	cmpl	%ecx, %esi
	jb	.LBB2_41
	jmp	.LBB2_42
.LBB2_43:                               # %sw.default.i
	movl	$.L.str.39, %edi
	movl	$.L.str.35, %esi
	movl	$843, %edx              # imm = 0x34B
	movl	$.L__PRETTY_FUNCTION__.set_palette, %ecx
	callq	__assert_fail
.Lfunc_end2:
	.size	pcl3_open_device, .Lfunc_end2-pcl3_open_device
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_27
	.quad	.LBB2_32
	.quad	.LBB2_31
	.quad	.LBB2_33
	.quad	.LBB2_33

	.text
	.align	16, 0x90
	.type	pcl3_close_device,@function
pcl3_close_device:                      # @pcl3_close_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 18676(%rbx)
	je	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movq	17176(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_3
# BB#2:                                 # %if.then
	leaq	18688(%rbx), %rsi
	callq	pcl3_end_file
	movl	$0, 18676(%rbx)
.LBB3_3:                                # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	eprn_close_device       # TAILCALL
.Lfunc_end3:
	.size	pcl3_close_device, .Lfunc_end3-pcl3_close_device
	.cfi_endproc

	.align	16, 0x90
	.type	pcl3_get_params,@function
pcl3_get_params:                        # @pcl3_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 96
.Ltmp41:
	.cfi_offset %rbx, -40
.Ltmp42:
	.cfi_offset %r12, -32
.Ltmp43:
	.cfi_offset %r14, -24
.Ltmp44:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	cmpl	$0, 18672(%rbx)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	init
.LBB4_2:                                # %if.end
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	eprn_get_params
	testl	%eax, %eax
	js	.LBB4_104
# BB#3:                                 # %if.end.2
	leaq	18688(%rbx), %r14
	movl	168(%r14), %eax
	movl	%eax, 12(%rsp)
	leaq	12(%rsp), %rdx
	movl	$.L.str.40, %esi
	movq	%r15, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_104
# BB#4:                                 # %if.end.6
	leaq	18680(%rbx), %rdx
	movl	$.L.str.41, %esi
	movq	%r15, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_104
# BB#5:                                 # %if.end.10
	cmpl	$0, 164(%r14)
	js	.LBB4_6
# BB#7:                                 # %if.else
	leaq	164(%r14), %rdx
	movl	$.L.str.42, %esi
	movq	%r15, %rdi
	callq	param_write_int
	jmp	.LBB4_8
.LBB4_6:                                # %if.then.12
	movl	$.L.str.42, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB4_8:                                # %if.else
	testl	%eax, %eax
	js	.LBB4_104
# BB#9:                                 # %land.lhs.true
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB4_17
# BB#10:                                # %cond.true
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB4_18
# BB#11:                                # %cond.true
	testl	%eax, %eax
	jne	.LBB4_18
# BB#12:                                # %if.then.33
	movzbl	1(%rdi), %eax
	addl	$-99, %eax
	cmpq	$2, %rcx
	jb	.LBB4_18
# BB#13:                                # %if.then.33
	testl	%eax, %eax
	jne	.LBB4_18
# BB#14:                                # %if.then.43
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB4_18
# BB#15:                                # %if.then.43
	testl	%eax, %eax
	jne	.LBB4_18
# BB#16:                                # %if.then.53
	movzbl	3(%rdi), %eax
	addl	$-51, %eax
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false
	movl	$.L.str, %esi
	callq	strcmp
.LBB4_18:                               # %cond.end
	testl	%eax, %eax
	jne	.LBB4_20
# BB#19:                                # %if.then.66
	movl	18664(%rbx), %edi
	leaq	16(%rsp), %r12
	movl	$duplex_capabilities_list, %esi
	movq	%r12, %rdx
	callq	eprn_get_string
	movl	$.L.str.43, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB4_104
.LBB4_20:                               # %if.end.73
	movl	76(%r14), %eax
	movl	%eax, 32(%rsp)
	leaq	32(%rsp), %rdx
	movl	$.L.str.44, %esi
	movq	%r15, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_104
# BB#21:                                # %cleanup.cont
	movl	60(%r14), %edi
	leaq	16(%rsp), %r12
	movl	$media_type_list, %esi
	movq	%r12, %rdx
	callq	get_string_for_int
	movl	$.L.str.45, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB4_104
# BB#22:                                # %if.end.86
	leaq	68(%r14), %rdx
	movl	$.L.str.46, %esi
	movq	%r15, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_104
# BB#23:                                # %if.end.91
	leaq	64(%r14), %rdx
	movl	$.L.str.47, %esi
	movq	%r15, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_104
# BB#24:                                # %land.lhs.true.102
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB4_32
# BB#25:                                # %cond.true.106
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB4_33
# BB#26:                                # %cond.true.106
	testl	%eax, %eax
	jne	.LBB4_33
# BB#27:                                # %if.then.121
	movzbl	1(%rdi), %eax
	addl	$-99, %eax
	cmpq	$2, %rcx
	jb	.LBB4_33
# BB#28:                                # %if.then.121
	testl	%eax, %eax
	jne	.LBB4_33
# BB#29:                                # %if.then.131
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB4_33
# BB#30:                                # %if.then.131
	testl	%eax, %eax
	jne	.LBB4_33
# BB#31:                                # %if.then.141
	movzbl	3(%rdi), %eax
	addl	$-51, %eax
	jmp	.LBB4_33
.LBB4_32:                               # %cond.false.150
	movl	$.L.str, %esi
	callq	strcmp
.LBB4_33:                               # %cond.end.153
	testl	%eax, %eax
	movl	(%r14), %eax
	je	.LBB4_35
# BB#34:                                # %cond.end.153
	cmpl	$3, %eax
	jb	.LBB4_36
.LBB4_35:                               # %if.then.159
	cmpl	$4, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 32(%rsp)
	leaq	32(%rsp), %rdx
	movl	$.L.str.48, %esi
	movq	%r15, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_104
.LBB4_36:                               # %if.end.173
	movl	32(%r14), %eax
	testl	%eax, %eax
	je	.LBB4_37
# BB#38:                                # %if.else.182
	movq	24(%r14), %rcx
	movq	%rcx, 16(%rsp)
	movl	%eax, 24(%rsp)
	movl	$0, 28(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.49, %esi
	movq	%r15, %rdi
	callq	param_write_string
	jmp	.LBB4_39
.LBB4_37:                               # %if.then.176
	movl	$.L.str.49, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB4_39:                               # %if.else.182
	testl	%eax, %eax
	js	.LBB4_104
# BB#40:                                # %if.end.192
	movl	48(%r14), %eax
	testl	%eax, %eax
	je	.LBB4_41
# BB#42:                                # %if.else.202
	movq	40(%r14), %rcx
	movq	%rcx, 16(%rsp)
	movl	%eax, 24(%rsp)
	movl	$0, 28(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.50, %esi
	movq	%r15, %rdi
	callq	param_write_string
	jmp	.LBB4_43
.LBB4_41:                               # %if.then.196
	movl	$.L.str.50, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB4_43:                               # %if.else.202
	testl	%eax, %eax
	js	.LBB4_104
# BB#44:                                # %if.end.215
	movq	8(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB4_45
# BB#46:                                # %if.else.224
	movq	%rdi, 16(%rsp)
	callq	strlen
	movl	%eax, 24(%rsp)
	movl	$0, 28(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.51, %esi
	movq	%r15, %rdi
	callq	param_write_string
	jmp	.LBB4_47
.LBB4_45:                               # %if.then.218
	movl	$.L.str.51, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB4_47:                               # %if.else.224
	testl	%eax, %eax
	js	.LBB4_104
# BB#48:                                # %if.end.237
	movq	16(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB4_49
# BB#50:                                # %if.else.246
	movq	%rdi, 16(%rsp)
	callq	strlen
	movl	%eax, 24(%rsp)
	movl	$0, 28(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.52, %esi
	movq	%r15, %rdi
	callq	param_write_string
	jmp	.LBB4_51
.LBB4_49:                               # %if.then.240
	movl	$.L.str.52, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB4_51:                               # %if.else.246
	testl	%eax, %eax
	js	.LBB4_104
# BB#52:                                # %if.end.259
	movl	80(%r14), %edi
	leaq	16(%rsp), %r12
	movl	$print_quality_list, %esi
	movq	%r12, %rdx
	callq	get_string_for_int
	movl	$.L.str.53, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB4_104
# BB#53:                                # %if.end.264
	cmpl	$1, 160(%r14)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 32(%rsp)
	leaq	32(%rsp), %rdx
	movl	$.L.str.54, %esi
	movq	%r15, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_104
# BB#54:                                # %cleanup.cont.276
	leaq	4(%r14), %rdx
	movl	$.L.str.55, %esi
	movq	%r15, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_104
# BB#55:                                # %land.lhs.true.287
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB4_63
# BB#56:                                # %cond.true.291
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB4_64
# BB#57:                                # %cond.true.291
	testl	%eax, %eax
	jne	.LBB4_64
# BB#58:                                # %if.then.306
	movzbl	1(%rdi), %eax
	addl	$-99, %eax
	cmpq	$2, %rcx
	jb	.LBB4_64
# BB#59:                                # %if.then.306
	testl	%eax, %eax
	jne	.LBB4_64
# BB#60:                                # %if.then.316
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB4_64
# BB#61:                                # %if.then.316
	testl	%eax, %eax
	jne	.LBB4_64
# BB#62:                                # %if.then.326
	movzbl	3(%rdi), %eax
	addl	$-51, %eax
	jmp	.LBB4_64
.LBB4_63:                               # %cond.false.335
	movl	$.L.str, %esi
	callq	strcmp
.LBB4_64:                               # %cond.end.338
	testl	%eax, %eax
	jne	.LBB4_67
# BB#65:                                # %if.then.342
	movl	18656(%rbx), %eax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	%eax, 40(%rsp)
	leaq	32(%rsp), %rdi
	movl	$subdevice_list, %esi
	movl	$26, %edx
	movl	$16, %ecx
	movl	$cmp_by_value, %r8d
	callq	bsearch
	testq	%rax, %rax
	je	.LBB4_105
# BB#66:                                # %find_subdevice_name.exit
	movq	(%rax), %rdi
	movq	%rdi, 16(%rsp)
	callq	strlen
	movl	%eax, 24(%rsp)
	movl	$1, 28(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.56, %esi
	movq	%r15, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB4_104
.LBB4_67:                               # %land.lhs.true.364
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB4_75
# BB#68:                                # %cond.true.368
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB4_76
# BB#69:                                # %cond.true.368
	testl	%eax, %eax
	jne	.LBB4_76
# BB#70:                                # %if.then.383
	movzbl	1(%rdi), %eax
	addl	$-99, %eax
	cmpq	$2, %rcx
	jb	.LBB4_76
# BB#71:                                # %if.then.383
	testl	%eax, %eax
	jne	.LBB4_76
# BB#72:                                # %if.then.393
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB4_76
# BB#73:                                # %if.then.393
	testl	%eax, %eax
	jne	.LBB4_76
# BB#74:                                # %if.then.403
	movzbl	3(%rdi), %eax
	addl	$-51, %eax
	jmp	.LBB4_76
.LBB4_75:                               # %cond.false.412
	movl	$.L.str, %esi
	callq	strcmp
.LBB4_76:                               # %cond.end.415
	testl	%eax, %eax
	jne	.LBB4_78
# BB#77:                                # %if.then.419
	leaq	18668(%rbx), %rdx
	movl	$.L.str.57, %esi
	movq	%r15, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_104
.LBB4_78:                               # %if.end.425
	movl	18660(%rbx), %eax
	testl	%eax, %eax
	je	.LBB4_79
# BB#80:                                # %if.else.434
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 32(%rsp)
	leaq	32(%rsp), %rdx
	movl	$.L.str.58, %esi
	movq	%r15, %rdi
	callq	param_write_bool
	jmp	.LBB4_81
.LBB4_79:                               # %if.then.428
	movl	$.L.str.58, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB4_81:                               # %if.else.434
	testl	%eax, %eax
	js	.LBB4_104
# BB#82:                                # %if.end.448
	cmpl	$2, (%r14)
	ja	.LBB4_89
# BB#83:                                # %if.then.452
	cmpl	$0, 84(%r14)
	je	.LBB4_84
# BB#85:                                # %if.else.461
	leaq	84(%r14), %rdx
	movl	$.L.str.59, %esi
	movq	%r15, %rdi
	callq	param_write_int
	jmp	.LBB4_86
.LBB4_89:                               # %land.lhs.true.485
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB4_97
# BB#90:                                # %cond.true.489
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB4_98
# BB#91:                                # %cond.true.489
	testl	%eax, %eax
	jne	.LBB4_98
# BB#92:                                # %if.then.504
	movzbl	1(%rdi), %eax
	addl	$-99, %eax
	cmpq	$2, %rcx
	jb	.LBB4_98
# BB#93:                                # %if.then.504
	testl	%eax, %eax
	jne	.LBB4_98
# BB#94:                                # %if.then.514
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB4_98
# BB#95:                                # %if.then.514
	testl	%eax, %eax
	jne	.LBB4_98
# BB#96:                                # %if.then.524
	movzbl	3(%rdi), %eax
	addl	$-51, %eax
	jmp	.LBB4_98
.LBB4_97:                               # %cond.false.533
	movl	$.L.str, %esi
	callq	strcmp
.LBB4_98:                               # %cond.end.536
	testl	%eax, %eax
	jne	.LBB4_103
# BB#99:                                # %if.then.540
	movl	$.L.str.59, %esi
	movq	%r15, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_104
# BB#100:                               # %if.end.545
	movl	$.L.str.60, %esi
	movq	%r15, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_104
# BB#101:                               # %if.end.550
	movl	$.L.str.61, %esi
	movq	%r15, %rdi
	callq	param_write_null
	jmp	.LBB4_102
.LBB4_84:                               # %if.then.455
	movl	$.L.str.59, %esi
	movq	%r15, %rdi
	callq	param_write_null
.LBB4_86:                               # %if.else.461
	testl	%eax, %eax
	js	.LBB4_104
# BB#87:                                # %if.end.468
	leaq	92(%r14), %rdx
	movl	$.L.str.60, %esi
	movq	%r15, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_104
# BB#88:                                # %if.end.473
	addq	$88, %r14
	movl	$.L.str.61, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	param_write_int
.LBB4_102:                              # %if.end.550
	testl	%eax, %eax
	js	.LBB4_104
.LBB4_103:                              # %if.end.557
	xorl	%eax, %eax
.LBB4_104:                              # %cleanup.558
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB4_105:                              # %cond.false.i
	movl	$.L.str.85, %edi
	movl	$.L.str.35, %esi
	movl	$485, %edx              # imm = 0x1E5
	movl	$.L__PRETTY_FUNCTION__.find_subdevice_name, %ecx
	callq	__assert_fail
.Lfunc_end4:
	.size	pcl3_get_params, .Lfunc_end4-pcl3_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	pcl3_put_params,@function
pcl3_put_params:                        # @pcl3_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 144
.Ltmp52:
	.cfi_offset %rbx, -56
.Ltmp53:
	.cfi_offset %r12, -48
.Ltmp54:
	.cfi_offset %r13, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	cmpl	$0, 18588(%r14)
	movl	$.L.str.25, %r13d
	movl	$.L.str.26, %eax
	cmoveq	%rax, %r13
	movl	$.L.str.27, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	18556(%r14), %ebx
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB5_9
# BB#1:                                 # %cond.true
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB5_2
# BB#3:                                 # %cond.true
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	jne	.LBB5_10
# BB#4:                                 # %if.then
	movzbl	1(%rdi), %eax
	addl	$-99, %eax
	cmpq	$2, %rcx
	jb	.LBB5_10
# BB#5:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB5_10
# BB#6:                                 # %if.then.23
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB5_10
# BB#7:                                 # %if.then.23
	testl	%eax, %eax
	jne	.LBB5_10
# BB#8:                                 # %if.then.33
	movzbl	3(%rdi), %eax
	addl	$-51, %eax
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	movl	$.L.str, %esi
	callq	strcmp
	jmp	.LBB5_10
.LBB5_2:
	movl	%ebx, 36(%rsp)          # 4-byte Spill
.LBB5_10:                               # %cond.end
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	.LBB5_21
# BB#11:                                # %if.then.46
	leaq	48(%rsp), %rdx
	movl	$.L.str.56, %esi
	movq	%r12, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB5_12
# BB#20:                                # %if.else.99
	movl	%eax, %ebx
	sarl	$31, %ebx
	andl	%eax, %ebx
	jmp	.LBB5_21
.LBB5_12:                               # %while.cond.preheader
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movl	56(%rsp), %r13d
	movl	$.L.str.36, %ebx
	movq	48(%rsp), %r15
	xorl	%ebp, %ebp
	movl	$subdevice_list+16, %r14d
	.align	16, 0x90
.LBB5_13:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	strlen
	cmpq	%rax, %r13
	jne	.LBB5_15
# BB#14:                                # %lor.rhs
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB5_17
.LBB5_15:                               # %while.body
                                        #   in Loop: Header=BB5_13 Depth=1
	incq	%rbp
	movq	(%r14), %rbx
	addq	$16, %r14
	cmpl	$26, %ebp
	jne	.LBB5_13
# BB#16:                                # %if.else
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.86, %edi
	xorl	%eax, %eax
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rsi
	callq	errprintf_nomem
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	24(%r14), %rdi
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	callq	errwrite
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.87, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movq	(%r12), %rax
	movl	$-15, %ebx
	movl	$.L.str.56, %esi
	movl	$-15, %edx
	movq	%r12, %rdi
	callq	*56(%rax)
	jmp	.LBB5_21
.LBB5_17:                               # %if.then.76
	movq	24(%rsp), %r14          # 8-byte Reload
	cmpl	$0, 84(%r14)
	movq	16(%rsp), %r13          # 8-byte Reload
	je	.LBB5_19
# BB#18:                                # %if.then.78
	movq	%r14, %rdi
	callq	gs_closedevice
.LBB5_19:                               # %if.end.80
	shlq	$4, %rbp
	movl	subdevice_list+8(%rbp), %eax
	movl	%eax, 18656(%r14)
	movl	$0, 18672(%r14)
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	pcl3_printers+8(%rax), %rsi
	movq	%r14, %rdi
	callq	eprn_init_device
	xorl	%ebx, %ebx
.LBB5_21:                               # %if.end.105
	cmpl	$0, 18672(%r14)
	jne	.LBB5_23
# BB#22:                                # %if.then.108
	movq	%r14, %rdi
	callq	init
.LBB5_23:                               # %if.end.109
	leaq	18688(%r14), %r15
	leaq	44(%rsp), %rdx
	movl	$.L.str.40, %esi
	movq	%r12, %rdi
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB5_24
# BB#32:                                # %if.else.161
	cmovsl	%eax, %ebx
	jmp	.LBB5_33
.LBB5_24:                               # %if.then.113
	movl	44(%rsp), %eax
	cmpl	$4, %eax
	jae	.LBB5_25
.LBB5_31:                               # %if.else.158
	movl	%eax, 168(%r15)
.LBB5_33:                               # %if.end.166
	leaq	18680(%r14), %rdx
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movl	$.L.str.59, %esi
	movq	%r12, %rdi
	callq	param_read_null
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB5_42
# BB#34:                                # %if.else.176
	jns	.LBB5_40
# BB#35:                                # %land.lhs.true.179
	leaq	44(%rsp), %rdx
	movl	$.L.str.59, %esi
	movq	%r12, %rdi
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB5_36
.LBB5_40:                               # %if.else.206
	testl	%eax, %eax
	cmovsl	%eax, %ebx
.LBB5_41:                               # %if.end.212
	movl	$-1, %ecx
.LBB5_42:                               # %if.end.212
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB5_43
# BB#44:                                # %if.else.217
	jns	.LBB5_52
# BB#45:                                # %land.lhs.true.220
	leaq	44(%rsp), %rdx
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB5_46
.LBB5_52:                               # %if.else.259
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	jmp	.LBB5_53
.LBB5_43:                               # %if.then.216
	movl	$-1, 164(%r15)
.LBB5_53:                               # %land.lhs.true.271
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB5_61
# BB#54:                                # %cond.true.275
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB5_62
# BB#55:                                # %cond.true.275
	testl	%eax, %eax
	jne	.LBB5_62
# BB#56:                                # %if.then.290
	movzbl	1(%rdi), %eax
	addl	$-99, %eax
	cmpq	$2, %rcx
	jb	.LBB5_62
# BB#57:                                # %if.then.290
	testl	%eax, %eax
	jne	.LBB5_62
# BB#58:                                # %if.then.300
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB5_62
# BB#59:                                # %if.then.300
	testl	%eax, %eax
	jne	.LBB5_62
# BB#60:                                # %if.then.310
	movzbl	3(%rdi), %eax
	addl	$-51, %eax
	jmp	.LBB5_62
.LBB5_61:                               # %cond.false.319
	movl	$.L.str, %esi
	callq	strcmp
.LBB5_62:                               # %cond.end.322
	testl	%eax, %eax
	jne	.LBB5_75
# BB#63:                                # %if.then.326
	leaq	48(%rsp), %rdx
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB5_64
# BB#74:                                # %if.else.377
	cmovsl	%eax, %ebx
	jmp	.LBB5_75
.LBB5_64:                               # %if.then.330
	leaq	48(%rsp), %rdi
	leaq	44(%rsp), %rdx
	movl	$duplex_capabilities_list, %esi
	callq	eprn_get_int
	testl	%eax, %eax
	je	.LBB5_65
# BB#73:                                # %if.else.359
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.94, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	errprintf_nomem
	movq	24(%r14), %rdi
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	callq	errwrite
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.87, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB5_69:                               # %if.end.383
	movq	(%r12), %rax
	movl	$-15, %ebx
	movl	$.L.str.43, %esi
	movl	$-15, %edx
	movq	%r12, %rdi
	callq	*56(%rax)
	jmp	.LBB5_75
.LBB5_36:                               # %if.then.183
	movl	44(%rsp), %ecx
	leal	-1(%rcx), %eax
	cmpl	$4, %eax
	ja	.LBB5_39
# BB#37:                                # %land.lhs.true.189
	cmpl	$4, %ecx
	jl	.LBB5_42
# BB#38:                                # %land.lhs.true.189
	cmpl	$8, 18656(%r14)
	jne	.LBB5_42
.LBB5_39:                               # %if.else.198
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	44(%rsp), %edx
	movl	$.L.str.90, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	errprintf_nomem
	movq	(%r12), %rax
	movl	$-15, %ebx
	movl	$.L.str.59, %esi
	movl	$-15, %edx
	movq	%r12, %rdi
	callq	*56(%rax)
	jmp	.LBB5_41
.LBB5_46:                               # %if.then.224
	movl	44(%rsp), %eax
	cmpl	$1200, %eax             # imm = 0x4B0
	ja	.LBB5_50
# BB#47:                                # %if.then.230
	movl	18656(%r14), %ecx
	addl	$-7, %ecx
	cmpl	$1, %ecx
	ja	.LBB5_49
# BB#48:                                # %if.then.238
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	18472(%r14), %rax
	movq	(%rax), %rdx
	movl	$.L.str.91, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	errprintf_nomem
	jmp	.LBB5_51
.LBB5_25:                               # %if.then.113
	cmpl	$9, %eax
	jne	.LBB5_26
# BB#28:                                # %land.lhs.true.138
	movl	18656(%r14), %ecx
	cmpl	$7, %ecx
	ja	.LBB5_31
# BB#29:                                # %land.lhs.true.138
	movl	$131, %edx
	btl	%ecx, %edx
	jae	.LBB5_31
# BB#30:                                # %if.then.149
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	18472(%r14), %rax
	movq	(%rax), %rdx
	movl	$.L.str.89, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	errprintf_nomem
	jmp	.LBB5_27
.LBB5_65:                               # %if.then.334
	movl	18656(%r14), %eax
	cmpl	$25, %eax
	jne	.LBB5_66
# BB#70:                                # %if.then.345thread-pre-split
	movl	44(%rsp), %eax
	jmp	.LBB5_71
.LBB5_50:                               # %if.else.251
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	44(%rsp), %edx
	movl	$.L.str.92, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	errprintf_nomem
.LBB5_51:                               # %land.lhs.true.271
	movq	(%r12), %rax
	movl	$-15, %ebx
	movl	$.L.str.42, %esi
	movl	$-15, %edx
	movq	%r12, %rdi
	callq	*56(%rax)
	jmp	.LBB5_53
.LBB5_26:                               # %if.then.128
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	44(%rsp), %edx
	movl	$.L.str.88, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	errprintf_nomem
.LBB5_27:                               # %if.end.166
	movq	(%r12), %rax
	movl	$-15, %ebx
	movl	$.L.str.40, %esi
	movl	$-15, %edx
	movq	%r12, %rdi
	callq	*56(%rax)
	jmp	.LBB5_33
.LBB5_66:                               # %lor.lhs.false.338
	cmpl	$14, %eax
	movl	44(%rsp), %eax
	je	.LBB5_71
# BB#67:                                # %lor.lhs.false.338
	testl	%eax, %eax
	je	.LBB5_71
# BB#68:                                # %if.else.351
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.93, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	%r13, %rdx
	callq	errprintf_nomem
	jmp	.LBB5_69
.LBB5_71:                               # %if.then.345
	movl	%eax, 18664(%r14)
	testl	%eax, %eax
	jne	.LBB5_75
# BB#72:                                # %if.then.349
	movl	$0, 17168(%r14)
.LBB5_75:                               # %if.end.383
	leaq	40(%rsp), %rdx
	movl	$.L.str.95, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	jne	.LBB5_84
# BB#76:                                # %if.end.383
	movl	40(%rsp), %eax
	testl	%eax, %eax
	je	.LBB5_84
# BB#77:                                # %land.lhs.true.391
	cmpl	$0, 18664(%r14)
	jne	.LBB5_84
# BB#78:                                # %if.then.395
	movl	18656(%r14), %eax
	cmpl	$25, %eax
	je	.LBB5_80
# BB#79:                                # %if.then.395
	cmpl	$14, %eax
	jne	.LBB5_82
.LBB5_80:                               # %if.then.403
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	18656(%r14), %eax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movl	%eax, 72(%rsp)
	leaq	64(%rsp), %rdi
	movl	$subdevice_list, %esi
	movl	$26, %edx
	movl	$16, %ecx
	movl	$cmp_by_value, %r8d
	callq	bsearch
	testq	%rax, %rax
	je	.LBB5_195
# BB#81:                                # %find_subdevice_name.exit
	movq	(%rax), %rdx
	movl	$.L.str.96, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	%r13, %rcx
	callq	errprintf_nomem
	jmp	.LBB5_83
.LBB5_82:                               # %if.else.409
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	18472(%r14), %rax
	movq	(%rax), %rdx
	movl	$.L.str.97, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	errprintf_nomem
.LBB5_83:                               # %if.end.416
	movq	(%r12), %rax
	movl	$-15, %ebx
	movl	$.L.str.95, %esi
	movl	$-15, %edx
	movq	%r12, %rdi
	callq	*56(%rax)
.LBB5_84:                               # %if.end.420
	leaq	64(%rsp), %rdx
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	je	.LBB5_85
# BB#86:                                # %if.else.428
	cmovsl	%eax, %ebx
	jmp	.LBB5_87
.LBB5_85:                               # %if.then.426
	movl	64(%rsp), %eax
	movl	%eax, 76(%r15)
.LBB5_87:                               # %if.end.433
	leaq	48(%rsp), %rdx
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB5_88
# BB#95:                                # %if.else.475
	cmovsl	%eax, %ebx
	movl	$0, 24(%rsp)            # 4-byte Folded Spill
	jmp	.LBB5_96
.LBB5_88:                               # %if.then.437
	leaq	48(%rsp), %rdi
	leaq	44(%rsp), %rdx
	movl	$media_type_list, %esi
	callq	get_int_for_string
	movl	%eax, %ebp
	cmpl	$-25, %ebp
	je	.LBB5_91
# BB#89:                                # %if.then.437
	testl	%ebp, %ebp
	jne	.LBB5_90
# BB#92:                                # %if.else.462
	movl	44(%rsp), %esi
	cmpl	$7, %esi
	jb	.LBB5_94
# BB#93:                                # %if.then.468
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	44(%rsp), %edx
	movl	$.L.str.99, %edi
	xorl	%eax, %eax
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	errprintf_nomem
	movl	44(%rsp), %esi
.LBB5_94:                               # %if.end.472
	movq	%r15, %rdi
	callq	pcl3_set_mediatype
	movl	$1, 24(%rsp)            # 4-byte Folded Spill
	jmp	.LBB5_96
.LBB5_90:                               # %if.then.444
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.98, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	errprintf_nomem
	movq	24(%r14), %rdi
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	callq	errwrite
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.87, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB5_91:                               # %if.end.458
	movq	(%r12), %rax
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	$0, 24(%rsp)            # 4-byte Folded Spill
	movl	%ebp, %ebx
.LBB5_96:                               # %if.end.480
	leaq	68(%r15), %rdx
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	callq	param_read_int
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	64(%r15), %rdx
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_101
# BB#97:                                # %if.else.490
	jne	.LBB5_100
# BB#98:                                # %land.lhs.true.493
	cmpl	$0, 84(%r14)
	je	.LBB5_100
# BB#99:                                # %if.then.496
	movq	%r14, %rdi
	callq	gs_closedevice
.LBB5_100:                              # %land.lhs.true.505
	movl	%ebx, %ebp
.LBB5_101:                              # %land.lhs.true.505
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB5_109
# BB#102:                               # %cond.true.509
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB5_110
# BB#103:                               # %cond.true.509
	testl	%eax, %eax
	jne	.LBB5_110
# BB#104:                               # %if.then.524
	movzbl	1(%rdi), %eax
	addl	$-99, %eax
	cmpq	$2, %rcx
	jb	.LBB5_110
# BB#105:                               # %if.then.524
	testl	%eax, %eax
	jne	.LBB5_110
# BB#106:                               # %if.then.534
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB5_110
# BB#107:                               # %if.then.534
	testl	%eax, %eax
	jne	.LBB5_110
# BB#108:                               # %if.then.544
	movzbl	3(%rdi), %eax
	addl	$-51, %eax
	jmp	.LBB5_110
.LBB5_109:                              # %cond.false.553
	movl	$.L.str, %esi
	callq	strcmp
.LBB5_110:                              # %cond.end.556
	testl	%eax, %eax
	je	.LBB5_112
# BB#111:                               # %lor.lhs.false.560
	cmpl	$3, (%r15)
	jb	.LBB5_118
.LBB5_112:                              # %if.then.563
	leaq	64(%rsp), %rdx
	movl	$.L.str.48, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	je	.LBB5_113
# BB#117:                               # %if.else.589
	cmovsl	%eax, %ebp
	jmp	.LBB5_118
.LBB5_113:                              # %if.then.569
	movl	64(%rsp), %eax
	cmpl	$3, (%r15)
	jb	.LBB5_115
# BB#114:                               # %if.then.573
	cmpl	$1, %eax
	movl	$3, %eax
	sbbl	$-1, %eax
	movl	%eax, (%r15)
	jmp	.LBB5_118
.LBB5_115:                              # %if.else.577
	cmpl	$1, %eax
	jne	.LBB5_118
# BB#116:                               # %if.then.580
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.100, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	errprintf_nomem
	movq	(%r12), %rax
	movl	$-15, %ebp
	movl	$.L.str.48, %esi
	movl	$-15, %edx
	movq	%r12, %rdi
	callq	*56(%rax)
.LBB5_118:                              # %if.end.595
	leaq	24(%r15), %rcx
	movl	$.L.str.49, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	fetch_octets
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	40(%r15), %rcx
	movl	$.L.str.50, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	fetch_octets
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	8(%r15), %rcx
	movl	$.L.str.51, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	fetch_cstring
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	16(%r15), %rcx
	movl	$.L.str.52, %edx
	movq	%r13, %rdi
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	%r12, %rsi
	callq	fetch_cstring
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	48(%rsp), %rdx
	movl	$.L.str.53, %esi
	movq	%r12, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB5_119
# BB#126:                               # %if.else.657
	cmovsl	%eax, %ebp
	jmp	.LBB5_127
.LBB5_119:                              # %if.then.619
	leaq	48(%rsp), %rdi
	leaq	44(%rsp), %rdx
	movl	$print_quality_list, %esi
	callq	get_int_for_string
	movl	%eax, %r13d
	cmpl	$-25, %r13d
	je	.LBB5_122
# BB#120:                               # %if.then.619
	testl	%r13d, %r13d
	jne	.LBB5_121
# BB#123:                               # %if.else.644
	movl	44(%rsp), %esi
	leal	1(%rsi), %eax
	cmpl	$3, %eax
	jb	.LBB5_125
# BB#124:                               # %if.then.650
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	44(%rsp), %edx
	movl	$.L.str.102, %edi
	xorl	%eax, %eax
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	errprintf_nomem
	movl	44(%rsp), %esi
.LBB5_125:                              # %if.end.654
	movq	%r15, %rdi
	callq	pcl3_set_printquality
	movl	$1, 24(%rsp)            # 4-byte Folded Spill
	jmp	.LBB5_127
.LBB5_121:                              # %if.then.626
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.101, %edi
	xorl	%eax, %eax
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	errprintf_nomem
	movq	24(%r14), %rdi
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	callq	errwrite
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.87, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB5_122:                              # %if.end.640
	movq	(%r12), %rax
	movl	$.L.str.53, %esi
	movq	%r12, %rdi
	movl	%r13d, %edx
	callq	*56(%rax)
	movl	%r13d, %ebp
.LBB5_127:                              # %if.end.662
	movl	$.L.str.60, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	$-1, %r13d
	testl	%eax, %eax
	je	.LBB5_134
# BB#128:                               # %if.else.667
	jns	.LBB5_132
# BB#129:                               # %land.lhs.true.670
	leaq	44(%rsp), %rdx
	movl	$.L.str.60, %esi
	movq	%r12, %rdi
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB5_130
.LBB5_132:                              # %if.else.689
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB5_133:                              # %if.end.695
	movl	$-1, %r13d
.LBB5_134:                              # %if.end.695
	leaq	64(%rsp), %rdx
	movl	$.L.str.54, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	je	.LBB5_135
# BB#136:                               # %if.else.702
	cmovsl	%eax, %ebp
	jmp	.LBB5_137
.LBB5_135:                              # %if.then.701
	movl	64(%rsp), %eax
	movl	%eax, 160(%r15)
.LBB5_137:                              # %if.end.707
	leaq	44(%rsp), %rdx
	movl	$.L.str.55, %esi
	movq	%r12, %rdi
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB5_138
# BB#141:                               # %if.else.724
	cmovsl	%eax, %ebp
	jmp	.LBB5_142
.LBB5_138:                              # %if.then.711
	cmpl	$0, 4(%r15)
	js	.LBB5_140
# BB#139:                               # %if.then.714
	movl	44(%rsp), %eax
	movl	%eax, 4(%r15)
	jmp	.LBB5_142
.LBB5_140:                              # %if.else.716
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	44(%rsp), %edx
	movl	$.L.str.104, %edi
	xorl	%eax, %eax
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	errprintf_nomem
	movq	(%r12), %rax
	movl	$-15, %ebp
	movl	$.L.str.55, %esi
	movl	$-15, %edx
	movq	%r12, %rdi
	callq	*56(%rax)
.LBB5_142:                              # %if.end.729
	movl	$.L.str.61, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	$-1, %ebx
	testl	%eax, %eax
	je	.LBB5_149
# BB#143:                               # %if.else.734
	jns	.LBB5_147
# BB#144:                               # %land.lhs.true.737
	leaq	44(%rsp), %rdx
	movl	$.L.str.61, %esi
	movq	%r12, %rdi
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB5_145
.LBB5_147:                              # %if.else.756
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB5_148:                              # %land.lhs.true.768
	movl	$-1, %ebx
.LBB5_149:                              # %land.lhs.true.768
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB5_157
# BB#150:                               # %cond.true.772
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB5_158
# BB#151:                               # %cond.true.772
	testl	%eax, %eax
	jne	.LBB5_158
# BB#152:                               # %if.then.787
	movzbl	1(%rdi), %eax
	addl	$-99, %eax
	cmpq	$2, %rcx
	jb	.LBB5_158
# BB#153:                               # %if.then.787
	testl	%eax, %eax
	jne	.LBB5_158
# BB#154:                               # %if.then.797
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB5_158
# BB#155:                               # %if.then.797
	testl	%eax, %eax
	jne	.LBB5_158
# BB#156:                               # %if.then.807
	movzbl	3(%rdi), %eax
	addl	$-51, %eax
	jmp	.LBB5_158
.LBB5_157:                              # %cond.false.816
	movl	$.L.str, %esi
	callq	strcmp
.LBB5_158:                              # %cond.end.819
	testl	%eax, %eax
	jne	.LBB5_160
# BB#159:                               # %if.then.823
	leaq	18668(%r14), %rdx
	movl	$.L.str.57, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB5_160:                              # %if.end.829
	movl	$.L.str.58, %esi
	movq	%r12, %rdi
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB5_161
# BB#162:                               # %if.else.836
	jns	.LBB5_167
# BB#163:                               # %land.lhs.true.839
	leaq	64(%rsp), %rdx
	movl	$.L.str.58, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	je	.LBB5_164
.LBB5_167:                              # %if.else.847
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	jmp	.LBB5_168
.LBB5_161:                              # %if.then.835
	movl	$0, 18660(%r14)
	jmp	.LBB5_168
.LBB5_130:                              # %if.then.674
	movl	44(%rsp), %r13d
	cmpl	$3, %r13d
	jb	.LBB5_134
# BB#131:                               # %if.else.681
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	44(%rsp), %edx
	movl	$.L.str.103, %edi
	xorl	%eax, %eax
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	errprintf_nomem
	movq	(%r12), %rax
	movl	$-15, %ebp
	movl	$.L.str.60, %esi
	movl	$-15, %edx
	movq	%r12, %rdi
	callq	*56(%rax)
	jmp	.LBB5_133
.LBB5_145:                              # %if.then.741
	movl	44(%rsp), %ebx
	cmpl	$3, %ebx
	jb	.LBB5_149
# BB#146:                               # %if.else.748
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	44(%rsp), %edx
	movl	$.L.str.105, %edi
	xorl	%eax, %eax
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	errprintf_nomem
	movq	(%r12), %rax
	movl	$-15, %ebp
	movl	$.L.str.61, %esi
	movl	$-15, %edx
	movq	%r12, %rdi
	callq	*56(%rax)
	jmp	.LBB5_148
.LBB5_164:                              # %if.then.843
	movl	$1, %eax
	cmpl	$0, 64(%rsp)
	jne	.LBB5_166
# BB#165:                               # %select.mid
	movl	$2, %eax
.LBB5_166:                              # %select.end
	movl	%eax, 18660(%r14)
.LBB5_168:                              # %if.end.853
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	eprn_put_params
	testl	%eax, %eax
	js	.LBB5_171
# BB#169:                               # %lor.lhs.false.857
	testl	%ebp, %ebp
	js	.LBB5_172
# BB#170:                               # %lor.lhs.false.857
	testl	%eax, %eax
	jle	.LBB5_172
.LBB5_171:                              # %if.then.863
	movl	%eax, %ebp
.LBB5_172:                              # %if.end.864
	movl	18556(%r14), %eax
	cmpl	%eax, 36(%rsp)          # 4-byte Folded Reload
	je	.LBB5_184
# BB#173:                               # %if.then.869
	movl	%eax, %ecx
	cmpl	$4, %eax
	ja	.LBB5_181
# BB#174:                               # %if.then.869
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_180:                              # %sw.bb.14.i
	movl	$3, 18784(%r14)
	movl	$4, 18788(%r14)
	jmp	.LBB5_184
.LBB5_175:                              # %sw.bb.i
	movq	18472(%r14), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rcx
	xorl	%edx, %edx
	testq	%rcx, %rcx
	je	.LBB5_178
	.align	16, 0x90
.LBB5_177:                              # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rax)
	movq	%rcx, %rdx
	jne	.LBB5_178
# BB#176:                               # %while.cond.i
                                        #   in Loop: Header=BB5_177 Depth=1
	movq	32(%rax), %rcx
	addq	$24, %rax
	testq	%rcx, %rcx
	movl	$0, %edx
	jne	.LBB5_177
.LBB5_178:                              # %while.end.i
	testq	%rdx, %rdx
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 18784(%r14)
	movl	$1, 18788(%r14)
	movl	$0, 18772(%r14)
	jmp	.LBB5_184
.LBB5_179:                              # %sw.bb.11.i
	movl	$4, 18784(%r14)
	jmp	.LBB5_183
.LBB5_182:                              # %sw.bb.8.i
	movl	$2, 18784(%r14)
.LBB5_183:                              # %if.end.870
	movl	$3, 18788(%r14)
.LBB5_184:                              # %if.end.870
	testl	%ebp, %ebp
	js	.LBB5_194
# BB#185:                               # %if.end.874
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	je	.LBB5_187
# BB#186:                               # %if.then.876
	movq	%r15, %rdi
	callq	pcl3_set_oldquality
.LBB5_187:                              # %if.end.878
	xorl	%ebp, %ebp
	cmpl	$2, (%r15)
	ja	.LBB5_194
# BB#188:                               # %if.then.882
	movq	8(%rsp), %rax           # 8-byte Reload
	testl	%eax, %eax
	js	.LBB5_190
# BB#189:                               # %if.then.886
	movl	%eax, 84(%r15)
.LBB5_190:                              # %if.end.889
	testl	%r13d, %r13d
	js	.LBB5_192
# BB#191:                               # %if.then.893
	movl	%r13d, 92(%r15)
.LBB5_192:                              # %if.end.895
	testl	%ebx, %ebx
	js	.LBB5_194
# BB#193:                               # %if.then.899
	movl	%ebx, 88(%r15)
.LBB5_194:                              # %cleanup
	movl	%ebp, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_181:                              # %sw.default.i
	movl	$.L.str.39, %edi
	movl	$.L.str.35, %esi
	movl	$843, %edx              # imm = 0x34B
	movl	$.L__PRETTY_FUNCTION__.set_palette, %ecx
	callq	__assert_fail
.LBB5_49:                               # %if.else.248
	movl	%eax, 164(%r15)
	jmp	.LBB5_53
.LBB5_195:                              # %cond.false.i
	movl	$.L.str.85, %edi
	movl	$.L.str.35, %esi
	movl	$485, %edx              # imm = 0x1E5
	movl	$.L__PRETTY_FUNCTION__.find_subdevice_name, %ecx
	callq	__assert_fail
.Lfunc_end5:
	.size	pcl3_put_params, .Lfunc_end5-pcl3_put_params
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_175
	.quad	.LBB5_179
	.quad	.LBB5_182
	.quad	.LBB5_180
	.quad	.LBB5_180

	.text
	.align	16, 0x90
	.type	init,@function
init:                                   # @init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %eax
	movl	$subdevice_list+24, %ecx
	.align	16, 0x90
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rcx), %edx
	cmpl	(%rcx), %edx
	jg	.LBB6_3
# BB#1:                                 # %for.cond
                                        #   in Loop: Header=BB6_2 Depth=1
	addq	$16, %rcx
	incl	%eax
	cmpl	$25, %eax
	jbe	.LBB6_2
# BB#4:                                 # %land.lhs.true
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB6_12
# BB#5:                                 # %cond.true.10
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB6_13
# BB#6:                                 # %cond.true.10
	testl	%eax, %eax
	jne	.LBB6_13
# BB#7:                                 # %if.then
	movzbl	1(%rdi), %eax
	addl	$-99, %eax
	cmpq	$2, %rcx
	jb	.LBB6_13
# BB#8:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB6_13
# BB#9:                                 # %if.then.29
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB6_13
# BB#10:                                # %if.then.29
	testl	%eax, %eax
	jne	.LBB6_13
# BB#11:                                # %if.then.39
	movzbl	3(%rdi), %eax
	addl	$-51, %eax
	jmp	.LBB6_13
.LBB6_12:                               # %cond.false.47
	movl	$.L.str, %esi
	callq	strcmp
.LBB6_13:                               # %cond.end.50
	testl	%eax, %eax
	jne	.LBB6_15
# BB#14:                                # %if.then.53
	movl	$0, 17168(%rbx)
.LBB6_15:                               # %if.end.54
	movq	$0, 18660(%rbx)
	movl	$0, 18668(%rbx)
	movl	$0, 18676(%rbx)
	movl	$0, 18680(%rbx)
	movl	18656(%rbx), %edi
	leaq	18688(%rbx), %rsi
	callq	pcl3_fill_defaults
	movl	$1, 18672(%rbx)
	popq	%rbx
	retq
.LBB6_3:                                # %cond.false
	movl	$.L.str.34, %edi
	movl	$.L.str.35, %esi
	movl	$397, %edx              # imm = 0x18D
	movl	$.L__PRETTY_FUNCTION__.init, %ecx
	callq	__assert_fail
.Lfunc_end6:
	.size	init, .Lfunc_end6-init
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_by_value,@function
cmp_by_value:                           # @cmp_by_value
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rdi), %eax
	subl	8(%rsi), %eax
	retq
.Lfunc_end7:
	.size	cmp_by_value, .Lfunc_end7-cmp_by_value
	.cfi_endproc

	.align	16, 0x90
	.type	get_string_for_int,@function
get_string_for_int:                     # @get_string_for_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movl	%edi, %ecx
	movq	(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB8_5
# BB#1:                                 # %land.rhs.preheader
	addq	$16, %rsi
	.align	16, 0x90
.LBB8_3:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, -8(%rsi)
	je	.LBB8_4
# BB#2:                                 # %while.cond
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	(%rsi), %rdi
	addq	$16, %rsi
	testq	%rdi, %rdi
	jne	.LBB8_3
.LBB8_5:                                # %if.else
	movl	$get_string_for_int.buffer, %edi
	movl	$.L.str.66, %esi
	xorl	%eax, %eax
	movl	%ecx, %edx
	callq	gs_sprintf
	movl	$get_string_for_int.buffer, %edi
	callq	strlen
	cmpq	$22, %rax
	jae	.LBB8_8
# BB#6:                                 # %cond.end
	movq	$get_string_for_int.buffer, (%rbx)
	movl	$get_string_for_int.buffer, %edi
	callq	strlen
	movl	%eax, 8(%rbx)
	movl	$0, 12(%rbx)
	popq	%rbx
	retq
.LBB8_4:                                # %if.then
	movq	%rdi, (%rbx)
	callq	strlen
	movl	%eax, 8(%rbx)
	movl	$1, 12(%rbx)
	popq	%rbx
	retq
.LBB8_8:                                # %cond.false
	movl	$.L.str.67, %edi
	movl	$.L.str.35, %esi
	movl	$306, %edx              # imm = 0x132
	movl	$.L__PRETTY_FUNCTION__.get_string_for_int, %ecx
	callq	__assert_fail
.Lfunc_end8:
	.size	get_string_for_int, .Lfunc_end8-get_string_for_int
	.cfi_endproc

	.align	16, 0x90
	.type	get_int_for_string,@function
get_int_for_string:                     # @get_int_for_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp68:
	.cfi_def_cfa_offset 64
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	8(%r12), %edi
	incl	%edi
	callq	malloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB9_1
# BB#2:                                 # %if.end
	movq	(%r12), %rsi
	movl	8(%r12), %edx
	movq	%r15, %rdi
	callq	strncpy
	movl	8(%r12), %eax
	movb	$0, (%r15,%rax)
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	__rawmemchr
	movq	%rax, %r12
	.align	16, 0x90
.LBB9_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rbx
	cmpq	%rbx, %r15
	jae	.LBB9_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB9_3 Depth=1
	leaq	-1(%rbx), %r12
	movsbq	-1(%rbx), %rbp
	callq	__ctype_b_loc
	movq	(%rax), %rax
	testb	$32, 1(%rax,%rbp,2)
	jne	.LBB9_3
.LBB9_5:                                # %while.end
	movb	$0, (%rbx)
	leaq	4(%rsp), %rcx
	movl	$.L.str.107, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	sscanf
	cmpl	$1, %eax
	jne	.LBB9_7
# BB#6:                                 # %lor.lhs.false
	movslq	4(%rsp), %rax
	cmpb	$0, (%r15,%rax)
	je	.LBB9_14
.LBB9_7:                                # %while.cond.28.preheader
	movq	(%r13), %rdi
	jmp	.LBB9_8
	.align	16, 0x90
.LBB9_10:                               # %while.body.37
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	16(%r13), %rdi
	addq	$16, %r13
.LBB9_8:                                # %while.cond.28.preheader
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdi, %rdi
	je	.LBB9_12
# BB#9:                                 # %land.rhs.31
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	%r15, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB9_10
# BB#11:                                # %while.end.39
	cmpq	$0, (%r13)
	je	.LBB9_12
# BB#13:                                # %if.end.44
	movl	8(%r13), %eax
	movl	%eax, (%r14)
.LBB9_14:                               # %if.end.45
	movq	%r15, %rdi
	callq	free
	xorl	%eax, %eax
	jmp	.LBB9_15
.LBB9_12:                               # %if.then.43
	movq	%r15, %rdi
	callq	free
	movl	$-15, %eax
	jmp	.LBB9_15
.LBB9_1:                                # %if.then
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.106, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	errprintf_nomem
	movl	$-25, %eax
.LBB9_15:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	get_int_for_string, .Lfunc_end9-get_int_for_string
	.cfi_endproc

	.align	16, 0x90
	.type	fetch_octets,@function
fetch_octets:                           # @fetch_octets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp79:
	.cfi_def_cfa_offset 64
.Ltmp80:
	.cfi_offset %rbx, -40
.Ltmp81:
	.cfi_offset %r12, -32
.Ltmp82:
	.cfi_offset %r14, -24
.Ltmp83:
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB10_1
# BB#4:                                 # %if.else
	jns	.LBB10_11
# BB#5:                                 # %land.lhs.true
	leaq	8(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB10_6
.LBB10_11:                              # %if.else.51
	xorl	%ebx, %ebx
	testl	%eax, %eax
	cmovlel	%eax, %ebx
	jmp	.LBB10_12
.LBB10_1:                               # %if.then
	cmpl	$0, 8(%rbx)
	je	.LBB10_3
# BB#2:                                 # %if.then.2
	movq	8(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	(%rbx), %rsi
	movl	$.L.str.108, %edx
	callq	*24(%rdi)
.LBB10_3:                               # %if.end
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
	xorl	%ebx, %ebx
.LBB10_12:                              # %if.end.57
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB10_6:                               # %if.then.12
	cmpl	$0, 8(%rbx)
	je	.LBB10_8
# BB#7:                                 # %if.then.15
	movq	8(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	(%rbx), %rsi
	movl	$.L.str.108, %edx
	callq	*24(%rdi)
.LBB10_8:                               # %if.end.25
	movq	8(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	16(%rsp), %esi
	movl	$1, %edx
	movl	$.L.str.108, %ecx
	callq	*88(%rdi)
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB10_9
# BB#10:                                # %if.else.44
	movq	8(%rsp), %rsi
	movl	16(%rsp), %edx
	movq	%rax, %rdi
	callq	memcpy
	movl	16(%rsp), %eax
	movl	%eax, 8(%rbx)
	xorl	%ebx, %ebx
	jmp	.LBB10_12
.LBB10_9:                               # %if.then.37
	movl	$0, 8(%rbx)
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.109, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	errprintf_nomem
	movq	(%r14), %rax
	movl	$-25, %ebx
	movl	$-25, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*56(%rax)
	jmp	.LBB10_12
.Lfunc_end10:
	.size	fetch_octets, .Lfunc_end10-fetch_octets
	.cfi_endproc

	.align	16, 0x90
	.type	fetch_cstring,@function
fetch_cstring:                          # @fetch_cstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 64
.Ltmp90:
	.cfi_offset %rbx, -48
.Ltmp91:
	.cfi_offset %r12, -40
.Ltmp92:
	.cfi_offset %r14, -32
.Ltmp93:
	.cfi_offset %r15, -24
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB11_1
# BB#4:                                 # %if.else
	jns	.LBB11_11
# BB#5:                                 # %land.lhs.true
	leaq	(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB11_6
.LBB11_11:                              # %if.else.42
	xorl	%ebp, %ebp
	testl	%eax, %eax
	cmovlel	%eax, %ebp
	jmp	.LBB11_12
.LBB11_1:                               # %if.then
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB11_3
# BB#2:                                 # %if.then.2
	movq	8(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.110, %edx
	callq	*24(%rdi)
.LBB11_3:                               # %if.end
	movq	$0, (%r14)
	xorl	%ebp, %ebp
.LBB11_12:                              # %if.end.48
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_6:                               # %if.then.10
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB11_8
# BB#7:                                 # %if.then.12
	movq	8(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.110, %edx
	callq	*24(%rdi)
.LBB11_8:                               # %if.end.21
	movq	8(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	8(%rsp), %esi
	incl	%esi
	movl	$1, %edx
	movl	$.L.str.110, %ecx
	callq	*88(%rdi)
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB11_9
# BB#10:                                # %if.else.37
	movq	(%rsp), %rsi
	movl	8(%rsp), %edx
	movq	%rax, %rdi
	callq	strncpy
	movl	8(%rsp), %eax
	movq	(%r14), %rcx
	movb	$0, (%rcx,%rax)
	xorl	%ebp, %ebp
	jmp	.LBB11_12
.LBB11_9:                               # %if.then.31
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.109, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	errprintf_nomem
	movq	(%rbx), %rax
	movl	$-25, %ebp
	movl	$-25, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*56(%rax)
	jmp	.LBB11_12
.Lfunc_end11:
	.size	fetch_cstring, .Lfunc_end11-fetch_cstring
	.cfi_endproc

	.type	pcl3_procs,@object      # @pcl3_procs
	.data
	.align	8
pcl3_procs:
	.quad	pcl3_open_device
	.quad	eprn_get_initial_matrix
	.quad	0
	.quad	eprn_output_page
	.quad	pcl3_close_device
	.quad	eprn_map_rgb_color_for_CMY_or_K
	.quad	eprn_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pcl3_get_params
	.quad	pcl3_put_params
	.quad	eprn_map_cmyk_color_glob
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
	.size	pcl3_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pcl3"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	flag_description,@object # @flag_description
	.section	.rodata,"a",@progbits
	.align	16
flag_description:
	.long	512                     # 0x200
	.zero	4
	.quad	.L.str.111
	.zero	16
	.size	flag_description, 32

	.type	card_is_optional,@object # @card_is_optional
	.align	4
card_is_optional:
	.long	512                     # 0x200
	.long	0                       # 0x0
	.size	card_is_optional, 8

	.type	gs_pcl3_device,@object  # @gs_pcl3_device
	.data
	.globl	gs_pcl3_device
	.align	8
gs_pcl3_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+1208
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_pcl3_device, 18872

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"hpdjplus"
	.size	.L.str.2, 9

	.type	gs_hpdjplus_device,@object # @gs_hpdjplus_device
	.data
	.globl	gs_hpdjplus_device
	.align	8
gs_hpdjplus_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+56
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdjplus_device, 18872

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"hpdjportable"
	.size	.L.str.3, 13

	.type	gs_hpdjportable_device,@object # @gs_hpdjportable_device
	.data
	.globl	gs_hpdjportable_device
	.align	8
gs_hpdjportable_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+104
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdjportable_device, 18872

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"hpdj310"
	.size	.L.str.4, 8

	.type	gs_hpdj310_device,@object # @gs_hpdj310_device
	.data
	.globl	gs_hpdj310_device
	.align	8
gs_hpdj310_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+152
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj310_device, 18872

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"hpdj320"
	.size	.L.str.5, 8

	.type	gs_hpdj320_device,@object # @gs_hpdj320_device
	.data
	.globl	gs_hpdj320_device
	.align	8
gs_hpdj320_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.5
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+200
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj320_device, 18872

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"hpdj340"
	.size	.L.str.6, 8

	.type	gs_hpdj340_device,@object # @gs_hpdj340_device
	.data
	.globl	gs_hpdj340_device
	.align	8
gs_hpdj340_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.6
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+248
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj340_device, 18872

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"hpdj400"
	.size	.L.str.7, 8

	.type	gs_hpdj400_device,@object # @gs_hpdj400_device
	.data
	.globl	gs_hpdj400_device
	.align	8
gs_hpdj400_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.7
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+296
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj400_device, 18872

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"hpdj500"
	.size	.L.str.8, 8

	.type	gs_hpdj500_device,@object # @gs_hpdj500_device
	.data
	.globl	gs_hpdj500_device
	.align	8
gs_hpdj500_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.8
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+344
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj500_device, 18872

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"hpdj500c"
	.size	.L.str.9, 9

	.type	gs_hpdj500c_device,@object # @gs_hpdj500c_device
	.data
	.globl	gs_hpdj500c_device
	.align	8
gs_hpdj500c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.9
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+392
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj500c_device, 18872

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"hpdj510"
	.size	.L.str.10, 8

	.type	gs_hpdj510_device,@object # @gs_hpdj510_device
	.data
	.globl	gs_hpdj510_device
	.align	8
gs_hpdj510_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.10
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+440
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj510_device, 18872

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"hpdj520"
	.size	.L.str.11, 8

	.type	gs_hpdj520_device,@object # @gs_hpdj520_device
	.data
	.globl	gs_hpdj520_device
	.align	8
gs_hpdj520_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.11
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+488
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj520_device, 18872

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"hpdj540"
	.size	.L.str.12, 8

	.type	gs_hpdj540_device,@object # @gs_hpdj540_device
	.data
	.globl	gs_hpdj540_device
	.align	8
gs_hpdj540_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.12
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+536
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj540_device, 18872

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"hpdj550c"
	.size	.L.str.13, 9

	.type	gs_hpdj550c_device,@object # @gs_hpdj550c_device
	.data
	.globl	gs_hpdj550c_device
	.align	8
gs_hpdj550c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.13
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+584
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj550c_device, 18872

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"hpdj560c"
	.size	.L.str.14, 9

	.type	gs_hpdj560c_device,@object # @gs_hpdj560c_device
	.data
	.globl	gs_hpdj560c_device
	.align	8
gs_hpdj560c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.14
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+632
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj560c_device, 18872

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"hpdj600"
	.size	.L.str.15, 8

	.type	gs_hpdj600_device,@object # @gs_hpdj600_device
	.data
	.globl	gs_hpdj600_device
	.align	8
gs_hpdj600_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.15
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+728
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj600_device, 18872

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"hpdj660c"
	.size	.L.str.16, 9

	.type	gs_hpdj660c_device,@object # @gs_hpdj660c_device
	.data
	.globl	gs_hpdj660c_device
	.align	8
gs_hpdj660c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.16
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+776
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj660c_device, 18872

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"hpdj670c"
	.size	.L.str.17, 9

	.type	gs_hpdj670c_device,@object # @gs_hpdj670c_device
	.data
	.globl	gs_hpdj670c_device
	.align	8
gs_hpdj670c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.17
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+824
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj670c_device, 18872

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"hpdj680c"
	.size	.L.str.18, 9

	.type	gs_hpdj680c_device,@object # @gs_hpdj680c_device
	.data
	.globl	gs_hpdj680c_device
	.align	8
gs_hpdj680c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.18
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+872
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	18                      # 0x12
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj680c_device, 18872

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"hpdj690c"
	.size	.L.str.19, 9

	.type	gs_hpdj690c_device,@object # @gs_hpdj690c_device
	.data
	.globl	gs_hpdj690c_device
	.align	8
gs_hpdj690c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.19
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+920
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj690c_device, 18872

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"hpdj850c"
	.size	.L.str.20, 9

	.type	gs_hpdj850c_device,@object # @gs_hpdj850c_device
	.data
	.globl	gs_hpdj850c_device
	.align	8
gs_hpdj850c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.20
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+968
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	20                      # 0x14
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj850c_device, 18872

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"hpdj855c"
	.size	.L.str.21, 9

	.type	gs_hpdj855c_device,@object # @gs_hpdj855c_device
	.data
	.globl	gs_hpdj855c_device
	.align	8
gs_hpdj855c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.21
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+1016
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	21                      # 0x15
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj855c_device, 18872

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"hpdj870c"
	.size	.L.str.22, 9

	.type	gs_hpdj870c_device,@object # @gs_hpdj870c_device
	.data
	.globl	gs_hpdj870c_device
	.align	8
gs_hpdj870c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.22
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+1064
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	22                      # 0x16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj870c_device, 18872

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"hpdj890c"
	.size	.L.str.23, 9

	.type	gs_hpdj890c_device,@object # @gs_hpdj890c_device
	.data
	.globl	gs_hpdj890c_device
	.align	8
gs_hpdj890c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.23
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+1112
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	23                      # 0x17
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj890c_device, 18872

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"hpdj1120c"
	.size	.L.str.24, 10

	.type	gs_hpdj1120c_device,@object # @gs_hpdj1120c_device
	.data
	.globl	gs_hpdj1120c_device
	.align	8
gs_hpdj1120c_device:
	.long	18872                   # 0x49b8
	.zero	4
	.quad	pcl3_procs
	.quad	.L.str.24
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	pcl3_print_page
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
	.quad	pcl3_printers+1160
	.quad	0
	.quad	0
	.quad	flag_description
	.long	0                       # 0x0
	.zero	4
	.quad	card_is_optional
	.quad	pcl3_flag_mismatch_reporter
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	184
	.size	gs_hpdj1120c_device, 18872

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"ERROR: "
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.zero	1
	.size	.L.str.26, 1

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"WARNING: "
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s?-W pcl3: More than 2 intensity levels and draft quality\n%s    are unlikely to work in combination.\n"
	.size	.L.str.28, 103

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s? pcl3: The current configuration for this driver has identified the\n%s  page setup requested by the document as being for `"
	.size	.L.str.29, 127

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"UNKNOWN"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"' (%.0f x %.0f bp).\n%s  The driver does not know how to do this in PCL.\n"
	.size	.L.str.32, 73

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s  You should therefore not include such an entry in the\n%s  media configuration file.\n"
	.size	.L.str.33, 89

	.type	subdevice_list,@object  # @subdevice_list
	.section	.rodata,"a",@progbits
	.align	16
subdevice_list:
	.quad	.L.str.36
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.2
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.3
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.4
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.5
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.7
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.8
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.9
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.10
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.11
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.12
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.13
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.14
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.37
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.15
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.16
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.17
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.18
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.19
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.20
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.21
	.long	21                      # 0x15
	.zero	4
	.quad	.L.str.22
	.long	22                      # 0x16
	.zero	4
	.quad	.L.str.23
	.long	23                      # 0x17
	.zero	4
	.quad	.L.str.24
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.38
	.long	25                      # 0x19
	.zero	4
	.zero	16
	.size	subdevice_list, 432

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"cmp_by_value(subdevice_list + j - 1, subdevice_list + j) <= 0"
	.size	.L.str.34, 62

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"./contrib/pcl3/src/gdevpcl3.c"
	.size	.L.str.35, 30

	.type	.L__PRETTY_FUNCTION__.init,@object # @__PRETTY_FUNCTION__.init
.L__PRETTY_FUNCTION__.init:
	.asciz	"void init(pcl3_Device *)"
	.size	.L__PRETTY_FUNCTION__.init, 25

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"hpdj"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"unspecold"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"unspec"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"0"
	.size	.L.str.39, 2

	.type	.L__PRETTY_FUNCTION__.set_palette,@object # @__PRETTY_FUNCTION__.set_palette
.L__PRETTY_FUNCTION__.set_palette:
	.asciz	"void set_palette(pcl3_Device *)"
	.size	.L__PRETTY_FUNCTION__.set_palette, 32

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"CompressionMethod"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"ConfigureEveryPage"
	.size	.L.str.41, 19

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"DryTime"
	.size	.L.str.42, 8

	.type	duplex_capabilities_list,@object # @duplex_capabilities_list
	.section	.rodata,"a",@progbits
	.align	16
duplex_capabilities_list:
	.quad	.L.str.62
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.63
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.64
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.65
	.long	3                       # 0x3
	.zero	4
	.zero	16
	.size	duplex_capabilities_list, 80

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"DuplexCapability"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"ManualFeed"
	.size	.L.str.44, 11

	.type	media_type_list,@object # @media_type_list
	.section	.rodata,"a",@progbits
	.align	16
media_type_list:
	.quad	.L.str.68
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.69
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.70
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.71
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.72
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.73
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.74
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.75
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.76
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.77
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.78
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.79
	.long	4                       # 0x4
	.zero	4
	.zero	16
	.size	media_type_list, 208

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"Medium"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%MediaDestination"
	.size	.L.str.46, 18

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%MediaSource"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"OnlyCRD"
	.size	.L.str.48, 8

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"PCLInit1"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"PCLInit2"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"PJLJob"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"PJLLanguage"
	.size	.L.str.52, 12

	.type	print_quality_list,@object # @print_quality_list
	.section	.rodata,"a",@progbits
	.align	16
print_quality_list:
	.quad	.L.str.80
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.81
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.82
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.83
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.84
	.long	1                       # 0x1
	.zero	4
	.zero	16
	.size	print_quality_list, 96

	.type	.L.str.53,@object       # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"PrintQuality"
	.size	.L.str.53, 13

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"SendBlackLast"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"SendNULs"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Subdevice"
	.size	.L.str.56, 10

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Tumble"
	.size	.L.str.57, 7

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"UseCard"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Depletion"
	.size	.L.str.59, 10

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"RasterGraphicsQuality"
	.size	.L.str.60, 22

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Shingling"
	.size	.L.str.61, 10

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"none"
	.size	.L.str.62, 5

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"sameLeadingEdge"
	.size	.L.str.63, 16

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"oppositeLeadingEdge"
	.size	.L.str.64, 20

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"both"
	.size	.L.str.65, 5

	.type	get_string_for_int.buffer,@object # @get_string_for_int.buffer
	.local	get_string_for_int.buffer
	.comm	get_string_for_int.buffer,22,16
	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"%d"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"strlen(buffer) < sizeof(buffer)"
	.size	.L.str.67, 32

	.type	.L__PRETTY_FUNCTION__.get_string_for_int,@object # @__PRETTY_FUNCTION__.get_string_for_int
.L__PRETTY_FUNCTION__.get_string_for_int:
	.asciz	"void get_string_for_int(int, const eprn_StringAndInt *, gs_param_string *)"
	.size	.L__PRETTY_FUNCTION__.get_string_for_int, 75

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"plain paper"
	.size	.L.str.68, 12

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"bond paper"
	.size	.L.str.69, 11

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"HP Premium paper"
	.size	.L.str.70, 17

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"glossy paper"
	.size	.L.str.71, 13

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"transparency film"
	.size	.L.str.72, 18

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"quick dry glossy"
	.size	.L.str.73, 17

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"quick dry transparency"
	.size	.L.str.74, 23

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"plain"
	.size	.L.str.75, 6

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"bond"
	.size	.L.str.76, 5

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Premium"
	.size	.L.str.77, 8

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"glossy"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"transparency"
	.size	.L.str.79, 13

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"draft"
	.size	.L.str.80, 6

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"normal"
	.size	.L.str.81, 7

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"presentation"
	.size	.L.str.82, 13

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"econo"
	.size	.L.str.83, 6

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"best"
	.size	.L.str.84, 5

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"found != ((void*)0)"
	.size	.L.str.85, 20

	.type	.L__PRETTY_FUNCTION__.find_subdevice_name,@object # @__PRETTY_FUNCTION__.find_subdevice_name
.L__PRETTY_FUNCTION__.find_subdevice_name:
	.asciz	"const char *find_subdevice_name(int)"
	.size	.L__PRETTY_FUNCTION__.find_subdevice_name, 37

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"%s? pcl3: Unknown subdevice name: `"
	.size	.L.str.86, 36

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"'.\n"
	.size	.L.str.87, 4

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"%s? pcl3: Unsupported compression method: %d.\n"
	.size	.L.str.88, 47

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"%s? pcl3: The %s does not support compression method 9.\n"
	.size	.L.str.89, 57

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"%s? pcl3: Invalid value for depletion: %d.\n"
	.size	.L.str.90, 44

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"%s? pcl3: The %s does not support setting a dry time.\n"
	.size	.L.str.91, 55

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"%s? pcl3: Invalid value for the dry time: %d.\n"
	.size	.L.str.92, 47

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"%s? pcl3: You can use a non-trivial value for DuplexCapability\n%s  only for unspec and unspecold.\n"
	.size	.L.str.93, 99

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"%s? pcl3: Invalid duplex capability: `"
	.size	.L.str.94, 39

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Duplex"
	.size	.L.str.95, 7

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"%s? pcl3: The '%s' device does not support duplex printing unless\n%s  'DuplexCapability' is not 'none'.\n"
	.size	.L.str.96, 105

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"%s? pcl3: The %s does not support duplex printing.\n"
	.size	.L.str.97, 52

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"%s? pcl3: Unknown medium: `"
	.size	.L.str.98, 28

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"%s?-W pcl3: Unknown media type code: %d.\n"
	.size	.L.str.99, 42

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"%s? pcl3: OnlyCRD may be set only for group-3 devices.\n"
	.size	.L.str.100, 56

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"%s? pcl3: Unknown print quality: `"
	.size	.L.str.101, 35

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"%s?-W pcl3: Unknown print quality: %d.\n"
	.size	.L.str.102, 40

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"%s? pcl3: Invalid value for raster graphics quality: %d.\n"
	.size	.L.str.103, 58

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"%s? pcl3: Invalid value for SendNULs parameter: %d.\n"
	.size	.L.str.104, 53

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"%s? pcl3: Invalid value for shingling: %d.\n"
	.size	.L.str.105, 44

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"? pcl3: Memory allocation failure in get_int_for_string(): %s.\n"
	.size	.L.str.106, 64

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"%d%n"
	.size	.L.str.107, 5

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"fetch_octets"
	.size	.L.str.108, 13

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"%s? pcl3: Memory allocation failure from gs_malloc().\n"
	.size	.L.str.109, 55

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"fetch_cstring"
	.size	.L.str.110, 14

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Card"
	.size	.L.str.111, 5

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"%s? pcl3: The %s does not support the requested media properties.\n"
	.size	.L.str.112, 67

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"%s? pcl3: The %s does not support banner printing"
	.size	.L.str.113, 50

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	" for this size"
	.size	.L.str.114, 15

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	".\n"
	.size	.L.str.115, 3

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"%s? pcl3: The %s does not support a `Card' variant for "
	.size	.L.str.116, 56

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"any"
	.size	.L.str.117, 4

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"this"
	.size	.L.str.118, 5

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	" size.\n"
	.size	.L.str.119, 8

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"%s? pcl3: Banner printing on postcards?? You must be joking!\n"
	.size	.L.str.120, 62

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"%s? pcl3: Memory allocation failure from malloc().\n"
	.size	.L.str.121, 52


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
