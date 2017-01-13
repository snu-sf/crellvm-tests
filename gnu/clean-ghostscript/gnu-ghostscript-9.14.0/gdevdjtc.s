	.text
	.file	"gdevdjtc.bc"
	.align	16, 0x90
	.type	djet500c_print_page,@function
djet500c_print_page:                    # @djet500c_print_page
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
	subq	$104, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 160
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
	movq	%rsi, %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	$.L.str.2, %edi
	callq	fputs
	movl	$.L.str.3, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.4, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.5, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.6, %edi
	movq	%rbx, %rsi
	callq	fputs
	xorl	%r15d, %r15d
	movl	$.L.str.7, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.8, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.9, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.10, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.11, %edi
	movq	%rbx, %rsi
	callq	fputs
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	gx_device_raster
	movl	%eax, %ebp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	jle	.LBB0_2
# BB#1:                                 # %if.end
	leal	16(%rbp), %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %r15
.LBB0_2:                                # %if.end.13
	cmpl	$0, 836(%r13)
	movl	$0, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jle	.LBB0_76
# BB#3:                                 # %for.body.lr.ph
	movslq	%ebp, %rax
	leaq	(%r15,%rax), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leaq	7(%rax), %rcx
	sarq	$63, %rcx
	shrq	$61, %rcx
	leaq	7(%rax,%rcx), %rax
	sarq	$3, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	8(%rax), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	leal	(,%rax,8), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	leaq	7(%r15), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$127, %r12d
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_30 Depth 4
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_38 Depth 3
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #         Child Loop BB0_47 Depth 4
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_55 Depth 3
                                        #     Child Loop BB0_58 Depth 2
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_62 Depth 3
                                        #         Child Loop BB0_64 Depth 4
                                        #       Child Loop BB0_69 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	movq	%r13, %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	gdev_prn_copy_scan_lines
	movq	64(%rsp), %rcx          # 8-byte Reload
	.align	16, 0x90
.LBB0_5:                                # %while.cond
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	cmpq	%r15, %rax
	jbe	.LBB0_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB0_5 Depth=2
	leaq	-1(%rax), %rcx
	cmpb	$0, -1(%rax)
	je	.LBB0_5
.LBB0_7:                                # %while.end
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpq	%r15, %rax
	je	.LBB0_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	xorl	%esi, %esi
	movl	$7, %edx
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	memset
	movq	88(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %r14d
	jge	.LBB0_10
# BB#11:                                # %if.then.32
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	movq	%rcx, %r14
	movq	96(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_13
# BB#12:                                # %if.then.34
                                        #   in Loop: Header=BB0_4 Depth=1
	callq	free
.LBB0_13:                               # %if.end.35
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	80(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_15
# BB#14:                                # %if.then.37
                                        #   in Loop: Header=BB0_4 Depth=1
	callq	free
.LBB0_15:                               # %if.end.38
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	72(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_17
# BB#16:                                # %if.then.40
                                        #   in Loop: Header=BB0_4 Depth=1
	callq	free
.LBB0_17:                               # %if.end.41
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %r13
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	malloc
	movq	%r14, %rcx
	jmp	.LBB0_18
	.align	16, 0x90
.LBB0_8:                                # %if.then.24
                                        #   in Loop: Header=BB0_4 Depth=1
	incl	60(%rsp)                # 4-byte Folded Spill
	jmp	.LBB0_75
	.align	16, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	80(%rsp), %rbx          # 8-byte Reload
	movq	96(%rsp), %r13          # 8-byte Reload
.LBB0_18:                               # %if.end.51
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	48(%rsp), %r10          # 8-byte Reload
	movq	%r13, 96(%rsp)          # 8-byte Spill
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	%ecx, %r8d
	movq	%rbx, %rsi
	movq	%rax, %rdi
	jle	.LBB0_20
	.align	16, 0x90
.LBB0_19:                               # %for.cond.56.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-7(%rdx), %ebp
	addl	%ebp, %ebp
	andl	$8, %ebp
	movzbl	-6(%rdx), %ebx
	andl	$4, %ebx
	orl	%ebp, %ebx
	addl	%ebx, %ebx
	movzbl	-5(%rdx), %ebp
	andl	$4, %ebp
	orl	%ebx, %ebp
	addl	%ebp, %ebp
	movzbl	-4(%rdx), %ebx
	andl	$4, %ebx
	orl	%ebp, %ebx
	addl	%ebx, %ebx
	movzbl	-3(%rdx), %ebp
	andl	$4, %ebp
	orl	%ebx, %ebp
	addl	%ebp, %ebp
	movzbl	-2(%rdx), %ebx
	andl	$4, %ebx
	orl	%ebp, %ebx
	addl	%ebx, %ebx
	movzbl	-1(%rdx), %ebp
	andl	$4, %ebp
	orl	%ebx, %ebp
	addl	%ebp, %ebp
	movzbl	(%rdx), %ebx
	andl	$4, %ebx
	orl	%ebp, %ebx
	shrl	$2, %ebx
	notl	%ebx
	movb	%bl, (%rdi)
	movzbl	-7(%rdx), %ebp
	addl	%ebp, %ebp
	andl	$4, %ebp
	movzbl	-6(%rdx), %ebx
	andl	$2, %ebx
	orl	%ebp, %ebx
	addl	%ebx, %ebx
	movzbl	-5(%rdx), %ebp
	andl	$2, %ebp
	orl	%ebx, %ebp
	addl	%ebp, %ebp
	movzbl	-4(%rdx), %ebx
	andl	$2, %ebx
	orl	%ebp, %ebx
	addl	%ebx, %ebx
	movzbl	-3(%rdx), %ebp
	andl	$2, %ebp
	orl	%ebx, %ebp
	addl	%ebp, %ebp
	movzbl	-2(%rdx), %ebx
	andl	$2, %ebx
	orl	%ebp, %ebx
	addl	%ebx, %ebx
	movzbl	-1(%rdx), %ebp
	andl	$2, %ebp
	orl	%ebx, %ebp
	addl	%ebp, %ebp
	movzbl	(%rdx), %ebx
	andl	$2, %ebx
	orl	%ebp, %ebx
	shrl	%ebx
	notl	%ebx
	movb	%bl, (%rsi)
	movb	-7(%rdx), %bl
	movb	-6(%rdx), %cl
	addb	%bl, %bl
	andb	$2, %bl
	andb	$1, %cl
	orb	%bl, %cl
	addb	%cl, %cl
	movb	-5(%rdx), %bl
	andb	$1, %bl
	orb	%cl, %bl
	addb	%bl, %bl
	movb	-4(%rdx), %cl
	andb	$1, %cl
	orb	%bl, %cl
	addb	%cl, %cl
	movb	-3(%rdx), %bl
	andb	$1, %bl
	orb	%cl, %bl
	addb	%bl, %bl
	movb	-2(%rdx), %cl
	andb	$1, %cl
	orb	%bl, %cl
	addb	%cl, %cl
	movb	-1(%rdx), %bl
	andb	$1, %bl
	orb	%cl, %bl
	addb	%bl, %bl
	movb	(%rdx), %cl
	andb	$1, %cl
	orb	%bl, %cl
	notb	%cl
	movb	%cl, (%r13)
	incq	%rdi
	incq	%rsi
	incq	%r13
	addq	$8, %rdx
	decl	%r8d
	jne	.LBB0_19
.LBB0_20:                               # %for.end.127
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	60(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	movq	%r10, %r13
	jle	.LBB0_21
# BB#22:                                # %if.then.130
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB0_23
	.align	16, 0x90
.LBB0_21:                               #   in Loop: Header=BB0_4 Depth=1
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB0_23:                               # %if.end.132
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	20(%rsp), %edx          # 4-byte Reload
	callq	fprintf
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rbx,%rax), %r8
	movq	%rbx, %rdi
	movq	%r15, %rbp
	.align	16, 0x90
.LBB0_24:                               # %while.body.i
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_30 Depth 4
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_38 Depth 3
	movq	%rdi, %rdx
	movb	(%rdx), %cl
	leaq	1(%rdx), %rdi
	.align	16, 0x90
.LBB0_25:                               # %while.cond.1.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%cl, %r9b
	movq	%rdi, %rsi
	cmpq	%r8, %rsi
	jae	.LBB0_27
# BB#26:                                # %while.cond.1.i
                                        #   in Loop: Header=BB0_25 Depth=3
	movb	(%rsi), %cl
	leaq	1(%rsi), %rdi
	movzbl	%cl, %eax
	movzbl	%r9b, %ebx
	cmpl	%eax, %ebx
	jne	.LBB0_25
.LBB0_27:                               # %while.end.i
                                        #   in Loop: Header=BB0_24 Depth=2
	leaq	-1(%rsi), %rbx
	movq	%rsi, %rax
	cmpq	%r8, %rsi
	cmovbq	%rbx, %rsi
	cmovael	%eax, %ebx
	subl	%edx, %ebx
	testl	%ebx, %ebx
	jle	.LBB0_33
	.align	16, 0x90
.LBB0_28:                               # %while.body.15.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_30 Depth 4
	cmpl	$127, %ebx
	movl	%ebx, %edi
	cmovgl	%r12d, %edi
	leal	255(%rdi), %eax
	movb	%al, (%rbp)
	incq	%rbp
	testl	%edi, %edi
	jle	.LBB0_32
# BB#29:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB0_28 Depth=3
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_30:                               # %for.body.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rax, %rcx
	movb	(%rdx,%rcx), %al
	movb	%al, (%rbp,%rcx)
	leaq	1(%rcx), %rax
	cmpl	%edi, %eax
	jl	.LBB0_30
# BB#31:                                #   in Loop: Header=BB0_28 Depth=3
	leaq	1(%rbp,%rcx), %rbp
	leaq	1(%rdx,%rcx), %rdx
.LBB0_32:                               # %for.end.i
                                        #   in Loop: Header=BB0_28 Depth=3
	subl	%edi, %ebx
	jg	.LBB0_28
.LBB0_33:                               # %while.end.27.i
                                        #   in Loop: Header=BB0_24 Depth=2
	cmpq	%r8, %rsi
	jae	.LBB0_40
# BB#34:                                # %while.cond.33.i.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	incq	%rsi
	.align	16, 0x90
.LBB0_35:                               # %while.cond.33.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdi
	movzbl	(%rdi), %eax
	movzbl	%r9b, %ecx
	cmpl	%eax, %ecx
	jne	.LBB0_37
# BB#36:                                # %while.cond.33.i
                                        #   in Loop: Header=BB0_35 Depth=3
	leaq	1(%rdi), %rsi
	cmpq	%r8, %rdi
	jb	.LBB0_35
.LBB0_37:                               # %while.end.44.i
                                        #   in Loop: Header=BB0_24 Depth=2
	movl	%edi, %esi
	subl	%edx, %esi
	testl	%esi, %esi
	jle	.LBB0_39
	.align	16, 0x90
.LBB0_38:                               # %while.body.52.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$127, %esi
	movl	%esi, %eax
	cmovgl	%r12d, %eax
	movl	$257, %ecx              # imm = 0x101
	subl	%eax, %ecx
	movb	%cl, (%rbp)
	movb	%r9b, 1(%rbp)
	addq	$2, %rbp
	subl	%eax, %esi
	jg	.LBB0_38
.LBB0_39:                               # %while.end.62.i
                                        #   in Loop: Header=BB0_24 Depth=2
	cmpq	%r8, %rdi
	jb	.LBB0_24
.LBB0_40:                               # %mode2compress.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	subq	%r15, %rbp
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r8
	movq	%rax, %rdi
	movq	%r15, %r13
	.align	16, 0x90
.LBB0_41:                               # %while.body.i.201
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #         Child Loop BB0_47 Depth 4
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_55 Depth 3
	movq	%rdi, %rdx
	movb	(%rdx), %cl
	leaq	1(%rdx), %rdi
	.align	16, 0x90
.LBB0_42:                               # %while.cond.1.i.208
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%cl, %bl
	movq	%rdi, %rsi
	cmpq	%r8, %rsi
	jae	.LBB0_44
# BB#43:                                # %while.cond.1.i.208
                                        #   in Loop: Header=BB0_42 Depth=3
	movb	(%rsi), %cl
	leaq	1(%rsi), %rdi
	movzbl	%cl, %eax
	movzbl	%bl, %ebp
	cmpl	%eax, %ebp
	jne	.LBB0_42
.LBB0_44:                               # %while.end.i.215
                                        #   in Loop: Header=BB0_41 Depth=2
	leaq	-1(%rsi), %rbp
	movq	%rsi, %rax
	cmpq	%r8, %rsi
	cmovbq	%rbp, %rsi
	cmovael	%eax, %ebp
	subl	%edx, %ebp
	testl	%ebp, %ebp
	jle	.LBB0_50
	.align	16, 0x90
.LBB0_45:                               # %while.body.15.i.225
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_47 Depth 4
	cmpl	$127, %ebp
	movl	%ebp, %edi
	cmovgl	%r12d, %edi
	leal	255(%rdi), %eax
	movb	%al, (%r13)
	incq	%r13
	testl	%edi, %edi
	jle	.LBB0_49
# BB#46:                                # %for.body.i.233.preheader
                                        #   in Loop: Header=BB0_45 Depth=3
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_47:                               # %for.body.i.233
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        #       Parent Loop BB0_45 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rax, %rcx
	movb	(%rdx,%rcx), %al
	movb	%al, (%r13,%rcx)
	leaq	1(%rcx), %rax
	cmpl	%edi, %eax
	jl	.LBB0_47
# BB#48:                                #   in Loop: Header=BB0_45 Depth=3
	leaq	1(%r13,%rcx), %r13
	leaq	1(%rdx,%rcx), %rdx
.LBB0_49:                               # %for.end.i.238
                                        #   in Loop: Header=BB0_45 Depth=3
	subl	%edi, %ebp
	jg	.LBB0_45
.LBB0_50:                               # %while.end.27.i.242
                                        #   in Loop: Header=BB0_41 Depth=2
	cmpq	%r8, %rsi
	jae	.LBB0_57
# BB#51:                                # %while.cond.33.i.248.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	incq	%rsi
	.align	16, 0x90
.LBB0_52:                               # %while.cond.33.i.248
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdi
	movzbl	(%rdi), %eax
	movzbl	%bl, %ecx
	cmpl	%eax, %ecx
	jne	.LBB0_54
# BB#53:                                # %while.cond.33.i.248
                                        #   in Loop: Header=BB0_52 Depth=3
	leaq	1(%rdi), %rsi
	cmpq	%r8, %rdi
	jb	.LBB0_52
.LBB0_54:                               # %while.end.44.i.254
                                        #   in Loop: Header=BB0_41 Depth=2
	movl	%edi, %esi
	subl	%edx, %esi
	testl	%esi, %esi
	jle	.LBB0_56
	.align	16, 0x90
.LBB0_55:                               # %while.body.52.i.265
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$127, %esi
	movl	%esi, %eax
	cmovgl	%r12d, %eax
	movl	$257, %ecx              # imm = 0x101
	subl	%eax, %ecx
	movb	%cl, (%r13)
	movb	%bl, 1(%r13)
	addq	$2, %r13
	subl	%eax, %esi
	jg	.LBB0_55
.LBB0_56:                               # %while.end.62.i.267
                                        #   in Loop: Header=BB0_41 Depth=2
	cmpq	%r8, %rdi
	jb	.LBB0_41
.LBB0_57:                               # %mode2compress.exit273
                                        #   in Loop: Header=BB0_4 Depth=1
	subq	%r15, %r13
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	%r13d, %edx
	callq	fprintf
	movslq	%r13d, %rdx
	movq	%rbx, %r13
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r8
	movq	%rax, %rdi
	movq	%r15, %rbp
	.align	16, 0x90
.LBB0_58:                               # %while.body.i.125
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_62 Depth 3
                                        #         Child Loop BB0_64 Depth 4
                                        #       Child Loop BB0_69 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	movq	%rdi, %rdx
	movb	(%rdx), %cl
	leaq	1(%rdx), %rdi
	.align	16, 0x90
.LBB0_59:                               # %while.cond.1.i.132
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%cl, %r9b
	movq	%rdi, %rsi
	cmpq	%r8, %rsi
	jae	.LBB0_61
# BB#60:                                # %while.cond.1.i.132
                                        #   in Loop: Header=BB0_59 Depth=3
	movb	(%rsi), %cl
	leaq	1(%rsi), %rdi
	movzbl	%cl, %eax
	movzbl	%r9b, %ebx
	cmpl	%eax, %ebx
	jne	.LBB0_59
.LBB0_61:                               # %while.end.i.139
                                        #   in Loop: Header=BB0_58 Depth=2
	leaq	-1(%rsi), %rbx
	movq	%rsi, %rax
	cmpq	%r8, %rsi
	cmovbq	%rbx, %rsi
	cmovael	%eax, %ebx
	subl	%edx, %ebx
	testl	%ebx, %ebx
	jle	.LBB0_67
	.align	16, 0x90
.LBB0_62:                               # %while.body.15.i.149
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_64 Depth 4
	cmpl	$127, %ebx
	movl	%ebx, %edi
	cmovgl	%r12d, %edi
	leal	255(%rdi), %eax
	movb	%al, (%rbp)
	incq	%rbp
	testl	%edi, %edi
	jle	.LBB0_66
# BB#63:                                # %for.body.i.157.preheader
                                        #   in Loop: Header=BB0_62 Depth=3
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_64:                               # %for.body.i.157
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_62 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rax, %rcx
	movb	(%rdx,%rcx), %al
	movb	%al, (%rbp,%rcx)
	leaq	1(%rcx), %rax
	cmpl	%edi, %eax
	jl	.LBB0_64
# BB#65:                                #   in Loop: Header=BB0_62 Depth=3
	leaq	1(%rbp,%rcx), %rbp
	leaq	1(%rdx,%rcx), %rdx
.LBB0_66:                               # %for.end.i.162
                                        #   in Loop: Header=BB0_62 Depth=3
	subl	%edi, %ebx
	jg	.LBB0_62
.LBB0_67:                               # %while.end.27.i.166
                                        #   in Loop: Header=BB0_58 Depth=2
	cmpq	%r8, %rsi
	jae	.LBB0_74
# BB#68:                                # %while.cond.33.i.172.preheader
                                        #   in Loop: Header=BB0_58 Depth=2
	incq	%rsi
	.align	16, 0x90
.LBB0_69:                               # %while.cond.33.i.172
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdi
	movzbl	(%rdi), %eax
	movzbl	%r9b, %ecx
	cmpl	%eax, %ecx
	jne	.LBB0_71
# BB#70:                                # %while.cond.33.i.172
                                        #   in Loop: Header=BB0_69 Depth=3
	leaq	1(%rdi), %rsi
	cmpq	%r8, %rdi
	jb	.LBB0_69
.LBB0_71:                               # %while.end.44.i.178
                                        #   in Loop: Header=BB0_58 Depth=2
	movl	%edi, %esi
	subl	%edx, %esi
	testl	%esi, %esi
	jle	.LBB0_73
	.align	16, 0x90
.LBB0_72:                               # %while.body.52.i.189
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$127, %esi
	movl	%esi, %eax
	cmovgl	%r12d, %eax
	movl	$257, %ecx              # imm = 0x101
	subl	%eax, %ecx
	movb	%cl, (%rbp)
	movb	%r9b, 1(%rbp)
	addq	$2, %rbp
	subl	%eax, %esi
	jg	.LBB0_72
.LBB0_73:                               # %while.end.62.i.191
                                        #   in Loop: Header=BB0_58 Depth=2
	cmpq	%r8, %rdi
	jb	.LBB0_58
.LBB0_74:                               # %mode2compress.exit197
                                        #   in Loop: Header=BB0_4 Depth=1
	subq	%r15, %rbp
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	movl	44(%rsp), %ebx          # 4-byte Reload
.LBB0_75:                               # %if.end.152
                                        #   in Loop: Header=BB0_4 Depth=1
	incl	%ebx
	cmpl	836(%r13), %ebx
	jl	.LBB0_4
.LBB0_76:                               # %for.end.155
	movl	$.L.str.3, %edi
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.16, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.2, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.17, %edi
	movq	%rbx, %rsi
	callq	fputs
	testq	%r15, %r15
	je	.LBB0_78
# BB#77:                                # %if.then.161
	movq	%r15, %rdi
	callq	free
.LBB0_78:                               # %if.end.162
	movq	96(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	movq	80(%rsp), %rbx          # 8-byte Reload
	je	.LBB0_80
# BB#79:                                # %if.then.164
	callq	free
.LBB0_80:                               # %if.end.165
	testq	%rbx, %rbx
	je	.LBB0_82
# BB#81:                                # %if.then.167
	movq	%rbx, %rdi
	callq	free
.LBB0_82:                               # %if.end.168
	movq	72(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_84
# BB#83:                                # %if.then.170
	callq	free
.LBB0_84:                               # %if.end.171
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	djet500c_print_page, .Lfunc_end0-djet500c_print_page
	.cfi_endproc

	.type	djet500c_procs,@object  # @djet500c_procs
	.data
	.align	8
djet500c_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_3bit_map_rgb_color
	.quad	gdev_pcl_3bit_map_color_rgb
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	djet500c_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"djet500c"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_djet500c_device,@object # @gs_djet500c_device
	.section	.rodata,"a",@progbits
	.globl	gs_djet500c_device
	.align	8
gs_djet500c_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	djet500c_procs
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
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
	.long	3600                    # 0xe10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1146617856              # float 8.640000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3264610304              # float -7.500000e+01
	.long	3264610304              # float -7.500000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
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
	.quad	djet500c_print_page
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
	.size	gs_djet500c_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\033E"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\033*rbC"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033*t300R"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033&l26a0l1H"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033*r3U"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033*o%dD"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033*o%dQ"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033*p0x0Y"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033*b2M"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033*r0A"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033*b%dY"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\033*r%dS"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\033*b%dV"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\033*b%dW"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\033*r1U"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\033&l0H"
	.size	.L.str.17, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
