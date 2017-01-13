	.text
	.file	"gdevsgi.bc"
	.align	16, 0x90
	.type	sgi_print_page,@function
sgi_print_page:                         # @sgi_print_page
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
	movq	%rsi, %r13
	movq	%rdi, %rbx
	cmpq	$0, 928(%rbx)
	jle	.LBB0_3
# BB#1:                                 # %land.lhs.true.i
	cmpl	$0, 17172(%rbx)
	je	.LBB0_2
.LBB0_3:                                # %if.end.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	24(%rbx), %rcx
	movq	200(%rcx), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%eax, %esi
	callq	*88(%rdi)
	movq	%rax, %rbp
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$192, %esi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r15
	testq	%rbp, %rbp
	je	.LBB0_5
# BB#4:                                 # %if.end.i
	testq	%r15, %r15
	je	.LBB0_5
# BB#7:                                 # %if.end.30.i
	xorl	%esi, %esi
	movl	$192, %edx
	movq	%r15, %rdi
	callq	memset
	movl	$16843226, (%r15)       # imm = 0x10101DA
	movw	$3, 4(%r15)
	movw	832(%rbx), %ax
	movw	%ax, 6(%r15)
	movw	836(%rbx), %ax
	movw	%ax, 8(%r15)
	movw	$3, 10(%r15)
	movl	$0, 12(%r15)
	movl	116(%rbx), %eax
	movq	%rbx, %rbp
	movl	%eax, 16(%r15)
	movl	$0, 20(%r15)
	movq	%r15, %r14
	addq	$24, %r14
	movl	$.L.str.6, %esi
	movl	$80, %edx
	movq	%r14, %rdi
	callq	strncpy
	movl	$0, 104(%r15)
	movw	$0, 122(%r15)
	movzwl	(%r15), %eax
	movb	%ah, 98(%rsp)  # NOREX
	movb	%al, 99(%rsp)
	leaq	98(%rsp), %r12
	movl	$2, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movl	$1, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%r13, %rsi
	callq	fputc
	movzwl	4(%r15), %eax
	movb	%ah, 98(%rsp)  # NOREX
	movb	%al, 99(%rsp)
	movl	$2, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movzwl	6(%r15), %eax
	movb	%ah, 98(%rsp)  # NOREX
	movb	%al, 99(%rsp)
	movl	$2, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movzwl	8(%r15), %eax
	movb	%ah, 98(%rsp)  # NOREX
	movb	%al, 99(%rsp)
	movl	$2, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movzwl	10(%r15), %eax
	movb	%ah, 98(%rsp)  # NOREX
	movb	%al, 99(%rsp)
	movl	$2, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movl	12(%r15), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 100(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 101(%rsp)
	movb	%ah, 102(%rsp)  # NOREX
	movb	%al, 103(%rsp)
	leaq	100(%rsp), %r12
	movl	$4, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movl	16(%r15), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 100(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 101(%rsp)
	movb	%ah, 102(%rsp)  # NOREX
	movb	%al, 103(%rsp)
	movl	$4, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movl	20(%r15), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 100(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 101(%rsp)
	movb	%ah, 102(%rsp)  # NOREX
	movb	%al, 103(%rsp)
	movl	$4, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movl	$80, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movl	104(%r15), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 100(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 101(%rsp)
	movb	%ah, 102(%rsp)  # NOREX
	movb	%al, 103(%rsp)
	movl	$4, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movl	$404, %ebx              # imm = 0x194
	.align	16, 0x90
.LBB0_8:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	decl	%ebx
	jne	.LBB0_8
# BB#9:                                 # %putheader.exit.i
	movzwl	108(%rbp), %ecx
	xorl	%r14d, %r14d
	jmp	.LBB0_10
.LBB0_5:                                # %if.then.18.i
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	%rbx, %rbp
	movl	$-25, %r14d
	jmp	.LBB0_6
.LBB0_2:                                # %if.then.i
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	%rbx, %rbp
	movl	$-15, %r14d
.LBB0_6:                                # %sgi_begin_page.exit
                                        # implicit-def: RAX
	movq	%rax, 64(%rsp)          # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 60(%rsp)          # 4-byte Spill
                                        # implicit-def: ECX
.LBB0_10:                               # %sgi_begin_page.exit
	cmpq	$0, 928(%rbp)
	jle	.LBB0_12
# BB#11:                                # %land.lhs.true
	movl	$-15, %eax
	cmpl	$0, 17172(%rbp)
	je	.LBB0_60
.LBB0_12:                               # %if.end
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	imull	$3, 836(%rbp), %edx
	movl	$4, %esi
	movl	$.L.str.2, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	60(%rsp), %esi          # 4-byte Reload
	callq	*88(%rdi)
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	movl	$-25, %edx
	js	.LBB0_13
# BB#14:                                # %if.end
	testq	%rbx, %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	je	.LBB0_15
# BB#16:                                # %if.end
	movq	%r13, 32(%rsp)          # 8-byte Spill
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	movq	%rbp, %rbx
	je	.LBB0_59
# BB#17:                                # %if.end.16
	movslq	836(%rbx), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	512(,%rax,8), %rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	fseek
	movslq	44(%rsp), %rax          # 4-byte Folded Reload
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %rdx
	shrq	$63, %rdx
	shrq	$32, %rcx
	addl	%edx, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movl	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	sarl	$3, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$126, %r13d
	movl	$-127, %r12d
.LBB0_18:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #         Child Loop BB0_22 Depth 4
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_53 Depth 4
	movl	836(%rbx), %ecx
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB0_19:                               # %while.cond
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #         Child Loop BB0_22 Depth 4
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_53 Depth 4
	testl	%ecx, %ecx
	jle	.LBB0_61
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB0_19 Depth=2
	decl	%ecx
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	movq	%rbx, %rdi
	movl	%ecx, %esi
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdx
	movl	60(%rsp), %ecx          # 4-byte Reload
	movq	%rax, %r14
	callq	gdev_prn_copy_scan_lines
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movl	12(%rsp), %r8d          # 4-byte Reload
	movq	%rbp, %r9
	movq	%rbp, %r14
	movl	44(%rsp), %r10d         # 4-byte Reload
	movq	16(%rsp), %r11          # 8-byte Reload
	jmp	.LBB0_21
	.align	16, 0x90
.LBB0_35:                               # %sw.bb.66
                                        #   in Loop: Header=BB0_21 Depth=3
	andl	92(%rsp), %ebp          # 4-byte Folded Reload
	movb	%bpl, (%r9)
	incq	%r9
.LBB0_21:                               # %for.cond.29.outer
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_22 Depth 4
	movl	832(%rbx), %eax
.LBB0_22:                               # %for.cond.29
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	%eax, %esi
	jae	.LBB0_57
# BB#23:                                # %for.body.32
                                        #   in Loop: Header=BB0_22 Depth=4
	xorl	%ebp, %ebp
	movl	%edx, %ecx
	cmpl	$3, %edx
	ja	.LBB0_30
# BB#24:                                # %for.body.32
                                        #   in Loop: Header=BB0_22 Depth=4
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_28:                               # %sw.bb.45
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rdi), %ebp
	movb	%r8b, %cl
	shrl	%cl, %ebp
	subl	%r10d, %r8d
	jns	.LBB0_30
# BB#29:                                # %if.then.52
                                        #   in Loop: Header=BB0_22 Depth=4
	incq	%rdi
	addl	$8, %r8d
	jmp	.LBB0_30
.LBB0_25:                               # %sw.bb
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rdi), %ebp
	shll	$16, %ebp
	incq	%rdi
.LBB0_26:                               # %sw.bb.36
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rdi), %ecx
	shll	$8, %ecx
	orl	%ecx, %ebp
	incq	%rdi
.LBB0_27:                               # %sw.bb.41
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rdi), %ecx
	addl	%ecx, %ebp
	incq	%rdi
.LBB0_30:                               # %sw.epilog
                                        #   in Loop: Header=BB0_22 Depth=4
	incl	%esi
	cmpl	$2, %r15d
	je	.LBB0_35
# BB#31:                                # %sw.epilog
                                        #   in Loop: Header=BB0_22 Depth=4
	cmpl	$1, %r15d
	je	.LBB0_34
# BB#32:                                # %sw.epilog
                                        #   in Loop: Header=BB0_22 Depth=4
	testl	%r15d, %r15d
	jne	.LBB0_22
# BB#33:                                # %sw.bb.60
                                        #   in Loop: Header=BB0_21 Depth=3
	movb	%r11b, %cl
	shrl	%cl, %ebp
	.align	16, 0x90
.LBB0_34:                               # %sw.bb.63
                                        #   in Loop: Header=BB0_21 Depth=3
	movb	%r11b, %cl
	shrl	%cl, %ebp
	jmp	.LBB0_35
	.align	16, 0x90
.LBB0_57:                               # %for.end
                                        #   in Loop: Header=BB0_19 Depth=2
	movq	%rbx, %r11
	leaq	-1(%r9), %r10
	movq	%r14, %rdx
	cmpq	%r10, %rdx
	movq	80(%rsp), %r14          # 8-byte Reload
	movq	%rdx, %rcx
	jae	.LBB0_58
	.align	16, 0x90
.LBB0_37:                               # %while.body.74
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_53 Depth 4
	leaq	2(%rcx), %rsi
	jmp	.LBB0_38
	.align	16, 0x90
.LBB0_41:                               # %while.body.90
                                        #   in Loop: Header=BB0_38 Depth=4
	incq	%rsi
.LBB0_38:                               # %while.body.74
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%r10, %rsi
	jae	.LBB0_48
# BB#39:                                # %land.rhs
                                        #   in Loop: Header=BB0_38 Depth=4
	movzbl	-2(%rsi), %eax
	movzbl	-1(%rsi), %edx
	cmpl	%edx, %eax
	jne	.LBB0_41
# BB#40:                                # %lor.rhs
                                        #   in Loop: Header=BB0_38 Depth=4
	movzbl	(%rsi), %edx
	movzbl	%al, %eax
	cmpl	%edx, %eax
	jne	.LBB0_41
	.align	16, 0x90
.LBB0_48:                               # %while.end
                                        #   in Loop: Header=BB0_37 Depth=3
	leaq	-2(%rsi), %r8
	movl	%r8d, %ebx
	subl	%ecx, %ebx
	je	.LBB0_49
	.align	16, 0x90
.LBB0_43:                               # %while.body.96
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_47 Depth 5
	cmpl	$126, %ebx
	movl	%ebx, %edi
	cmovgl	%r13d, %edi
	movb	$126, %al
	jg	.LBB0_45
# BB#44:                                # %while.body.96
                                        #   in Loop: Header=BB0_43 Depth=4
	movb	%bl, %al
.LBB0_45:                               # %while.body.96
                                        #   in Loop: Header=BB0_43 Depth=4
	movzbl	%dil, %edx
	orl	$128, %edi
	movb	%dil, (%r14)
	incq	%r14
	testb	%al, %al
	je	.LBB0_42
# BB#46:                                # %while.body.107.preheader
                                        #   in Loop: Header=BB0_43 Depth=4
	movl	%ebx, %ebp
	notl	%ebp
	cmpl	$-128, %ebp
	cmovlel	%r12d, %ebp
	notl	%ebp
	negb	%bpl
	.align	16, 0x90
.LBB0_47:                               # %while.body.107
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        #         Parent Loop BB0_43 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movb	(%rcx), %al
	incq	%rcx
	movb	%al, (%r14)
	incq	%r14
	incb	%bpl
	jne	.LBB0_47
.LBB0_42:                               # %while.cond.94.loopexit
                                        #   in Loop: Header=BB0_43 Depth=4
	subl	%edx, %ebx
	jne	.LBB0_43
.LBB0_49:                               # %while.end.111
                                        #   in Loop: Header=BB0_37 Depth=3
	movb	-2(%rsi), %dl
	cmpq	%r9, %rsi
	leaq	-1(%rsi), %rcx
	jae	.LBB0_52
	.align	16, 0x90
.LBB0_50:                               # %land.rhs.116
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	%dl, %eax
	movzbl	(%rcx), %esi
	cmpl	%eax, %esi
	jne	.LBB0_52
# BB#51:                                # %while.body.122
                                        #   in Loop: Header=BB0_50 Depth=4
	incq	%rcx
	cmpq	%r10, %rcx
	jb	.LBB0_50
.LBB0_52:                               # %while.end.124
                                        #   in Loop: Header=BB0_37 Depth=3
	movl	%ecx, %esi
	subl	%r8d, %esi
	jmp	.LBB0_53
	.align	16, 0x90
.LBB0_56:                               # %while.body.131
                                        #   in Loop: Header=BB0_53 Depth=4
	movzbl	%al, %eax
	leaq	2(%rdi), %r14
	subl	%eax, %esi
	movb	%bl, (%rdi)
	movb	%dl, 1(%rdi)
.LBB0_53:                               # %while.end.124
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r14, %rdi
	je	.LBB0_36
# BB#54:                                # %while.body.131
                                        #   in Loop: Header=BB0_53 Depth=4
	cmpl	$126, %esi
	movl	%esi, %eax
	cmovgl	%r13d, %eax
	movb	$126, %bl
	jg	.LBB0_56
# BB#55:                                # %while.body.131
                                        #   in Loop: Header=BB0_53 Depth=4
	movb	%sil, %bl
	jmp	.LBB0_56
	.align	16, 0x90
.LBB0_36:                               # %while.cond.71.loopexit
                                        #   in Loop: Header=BB0_37 Depth=3
	cmpq	%r10, %rcx
	jb	.LBB0_37
.LBB0_58:                               # %while.end.144
                                        #   in Loop: Header=BB0_19 Depth=2
	movb	$0, (%r14)
	incq	%r14
	movq	80(%rsp), %rdi          # 8-byte Reload
	subq	%rdi, %r14
	movq	%r11, %rbx
	movl	836(%rbx), %eax
	imull	%r15d, %eax
	movl	76(%rsp), %ecx          # 4-byte Reload
	addl	%ecx, %eax
	incl	%ecx
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	cltq
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%r14d, (%rcx,%rax,4)
	movl	$1, %esi
	movq	%r14, %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	movl	$-12, %edx
	cmpq	%r14, %rax
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	72(%rsp), %ecx          # 4-byte Reload
	je	.LBB0_19
	jmp	.LBB0_59
	.align	16, 0x90
.LBB0_61:                               # %for.inc
                                        #   in Loop: Header=BB0_18 Depth=1
	incl	%r15d
	cmpl	$3, %r15d
	jl	.LBB0_18
# BB#62:                                # %for.end.179
	xorl	%ebp, %ebp
	movl	$512, %esi              # imm = 0x200
	xorl	%edx, %edx
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	callq	fseek
	movl	$1, %edx
	cmpl	$0, 836(%rbx)
	jle	.LBB0_59
# BB#63:
	leaq	100(%rsp), %r14
	movq	48(%rsp), %r13          # 8-byte Reload
	movq	(%rsp), %rcx            # 8-byte Reload
	.align	16, 0x90
.LBB0_64:                               # %for.body.189
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r15
	movq	%rcx, %rbx
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 100(%rsp)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 101(%rsp)
	movb	%bh, 102(%rsp)  # NOREX
	movb	%bl, 103(%rsp)
	movl	$4, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r12, %rcx
	callq	fwrite
	movslq	(%r13,%rbp,4), %rcx
	addq	%rbx, %rcx
	movq	%r15, %rbx
	movl	836(%rbx), %eax
	incq	%rbp
	cmpl	%eax, %ebp
	jl	.LBB0_64
# BB#65:                                # %for.inc.202
	testl	%eax, %eax
	jle	.LBB0_66
# BB#75:
	xorl	%ebp, %ebp
	leaq	100(%rsp), %r14
	movq	%rbx, %r15
	movq	48(%rsp), %r13          # 8-byte Reload
.LBB0_76:                               # %for.body.189.1
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 100(%rsp)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 101(%rsp)
	movb	%bh, 102(%rsp)  # NOREX
	movb	%bl, 103(%rsp)
	movl	$4, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r12, %rcx
	callq	fwrite
	movl	836(%r15), %eax
	leal	(%rbp,%rax), %ecx
	movslq	%ecx, %rcx
	movslq	(%r13,%rcx,4), %rcx
	addq	%rbx, %rcx
	incl	%ebp
	cmpl	%eax, %ebp
	jl	.LBB0_76
# BB#77:                                # %for.inc.202.1
	testl	%eax, %eax
	jle	.LBB0_78
# BB#79:
	xorl	%ebx, %ebx
	leaq	100(%rsp), %r14
	movq	%r15, %r13
	movq	48(%rsp), %r15          # 8-byte Reload
.LBB0_80:                               # %for.body.189.2
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	shrl	$24, %eax
	movb	%al, 100(%rsp)
	movl	%ecx, %eax
	shrl	$16, %eax
	movb	%al, 101(%rsp)
	movb	%ch, 102(%rsp)  # NOREX
	movb	%cl, 103(%rsp)
	movl	$4, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rcx, %rbp
	movq	%r12, %rcx
	callq	fwrite
	movl	836(%r13), %eax
	leal	(%rbx,%rax,2), %ecx
	movslq	%ecx, %rcx
	movslq	(%r15,%rcx,4), %rcx
	addq	%rcx, %rbp
	movq	%rbp, %rcx
	incl	%ebx
	cmpl	%eax, %ebx
	jl	.LBB0_80
# BB#81:                                # %for.inc.202.2
	movq	%r13, %rbp
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jle	.LBB0_82
# BB#67:
	leaq	100(%rsp), %r14
.LBB0_68:                               # %for.body.213
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rbx,4), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 100(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 101(%rsp)
	movb	%ah, 102(%rsp)  # NOREX
	movb	%al, 103(%rsp)
	movl	$4, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r12, %rcx
	callq	fwrite
	movl	836(%rbp), %eax
	incq	%rbx
	cmpl	%eax, %ebx
	jl	.LBB0_68
# BB#69:                                # %for.inc.225
	testl	%eax, %eax
	jle	.LBB0_82
# BB#70:
	xorl	%ebx, %ebx
	leaq	100(%rsp), %r14
.LBB0_71:                               # %for.body.213.1
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rax,%rbx), %eax
	cltq
	movl	(%r15,%rax,4), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 100(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 101(%rsp)
	movb	%ah, 102(%rsp)  # NOREX
	movb	%al, 103(%rsp)
	movl	$4, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r12, %rcx
	callq	fwrite
	incl	%ebx
	movl	836(%rbp), %eax
	cmpl	%eax, %ebx
	jl	.LBB0_71
# BB#72:                                # %for.inc.225.1
	testl	%eax, %eax
	jle	.LBB0_82
# BB#73:
	xorl	%ebx, %ebx
	leaq	100(%rsp), %r14
.LBB0_74:                               # %for.body.213.2
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rax,2), %eax
	cltq
	movl	(%r15,%rax,4), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 100(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 101(%rsp)
	movb	%ah, 102(%rsp)  # NOREX
	movb	%al, 103(%rsp)
	movl	$4, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r12, %rcx
	callq	fwrite
	incl	%ebx
	movl	836(%rbp), %eax
	cmpl	%eax, %ebx
	jl	.LBB0_74
.LBB0_82:
	movq	%rbp, %rbx
	movl	$1, %edx
	jmp	.LBB0_59
.LBB0_13:
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%rbp, %rbx
	jmp	.LBB0_59
.LBB0_15:
	movq	%rbp, %rbx
.LBB0_59:                               # %free_mem
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	%edx, %ebp
	movl	$.L.str.4, %edx
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movl	%ebp, %eax
	sarl	$31, %eax
	andl	%ebp, %eax
.LBB0_60:                               # %cleanup.252
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_66:
	movl	$1, %edx
	jmp	.LBB0_59
.LBB0_78:
	movq	%r15, %rbx
	movl	$1, %edx
	jmp	.LBB0_59
.Lfunc_end0:
	.size	sgi_print_page, .Lfunc_end0-sgi_print_page
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_28
	.quad	.LBB0_27
	.quad	.LBB0_26
	.quad	.LBB0_25

	.text
	.align	16, 0x90
	.type	sgi_map_rgb_color,@function
sgi_map_rgb_color:                      # @sgi_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %eax
	imull	$43691, %eax, %r8d      # imm = 0xAAAB
	shrl	$17, %r8d
	movl	$1, %eax
	movb	%r8b, %cl
	shll	%cl, %eax
	decl	%eax
	movslq	%eax, %r9
	movzwl	(%rsi), %eax
	imulq	%r9, %rax
	movabsq	$-9223231297218904063, %r10 # imm = 0x8000800080008001
	mulq	%r10
	movq	%rdx, %rdi
	shrq	$15, %rdi
	movl	%r8d, %ecx
	addl	%ecx, %ecx
	shlq	%cl, %rdi
	movzwl	2(%rsi), %eax
	imulq	%r9, %rax
	mulq	%r10
	shrq	$15, %rdx
	movb	%r8b, %cl
	shlq	%cl, %rdx
	leaq	(%rdx,%rdi), %rcx
	movzwl	4(%rsi), %eax
	imulq	%r9, %rax
	mulq	%r10
	shrq	$15, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rax
	retq
.Lfunc_end1:
	.size	sgi_map_rgb_color, .Lfunc_end1-sgi_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	sgi_map_color_rgb,@function
sgi_map_color_rgb:                      # @sgi_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movzwl	108(%rdi), %eax
	imull	$43691, %eax, %r9d      # imm = 0xAAAB
	shrl	$17, %r9d
	movl	$1, %eax
	movb	%r9b, %cl
	shll	%cl, %eax
	addl	$65535, %eax            # imm = 0xFFFF
	movl	%r9d, %ecx
	addl	%ecx, %ecx
	movq	%rsi, %rdx
	shrq	%cl, %rdx
	movzwl	%ax, %edi
	andq	%rdi, %rdx
	imulq	$65535, %rdx, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, (%r8)
	movq	%rsi, %rax
	movb	%r9b, %cl
	shrq	%cl, %rax
	andq	%rdi, %rax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 2(%r8)
	andq	%rdi, %rsi
	imulq	$65535, %rsi, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 4(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	sgi_map_color_rgb, .Lfunc_end2-sgi_map_color_rgb
	.cfi_endproc

	.type	sgi_procs,@object       # @sgi_procs
	.data
	.align	8
sgi_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page_seekable
	.quad	gdev_prn_close
	.quad	sgi_map_rgb_color
	.quad	sgi_map_color_rgb
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
	.size	sgi_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sgirgb"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_sgirgb_device,@object # @gs_sgirgb_device
	.section	.rodata,"a",@progbits
	.globl	gs_sgirgb_device
	.align	8
gs_sgirgb_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	sgi_procs
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
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
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
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
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
	.quad	sgi_print_page
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
	.size	gs_sgirgb_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"sgi_print_page"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"sgi_begin_page"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"sgi_print_page(done)"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"sgi rgb format only supports one page per file.\nPlease use the '%%d' OutputFile option to create one file for each page.\n"
	.size	.L.str.5, 122

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gs picture"
	.size	.L.str.6, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
