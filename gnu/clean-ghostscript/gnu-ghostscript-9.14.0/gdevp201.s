	.text
	.file	"gdevp201.bc"
	.align	16, 0x90
	.type	pr201_print_page,@function
pr201_print_page:                       # @pr201_print_page
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
	subq	$184, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 240
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
	movq	%rdi, %r15
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	16(%r15), %rdi
	callq	check_mode
	cmpl	$3, %eax
                                        # implicit-def: R12D
                                        # implicit-def: R14D
                                        # implicit-def: EBP
	ja	.LBB0_2
# BB#1:                                 # %switch.lookup
	movslq	%eax, %rcx
	movl	.Lswitch.table(,%rcx,4), %r12d
	movl	.Lswitch.table.1(,%rcx,4), %r14d
	leal	(%rax,%rax,4), %ebp
	shll	$4, %ebp
	addl	$160, %ebp
.LBB0_2:                                # %sw.epilog
	movq	%r12, 32(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gx_device_raster
	movl	%eax, %ebx
	movl	836(%r15), %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.5, %ecx
	movl	%r12d, %esi
	movl	%ebx, %edx
	callq	*88(%rdi)
	movq	%rax, %r13
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %ecx
	movl	%r12d, %esi
	movl	%ebx, %edx
	callq	*88(%rdi)
	testq	%r13, %r13
	movl	$-1, %ecx
	je	.LBB0_55
# BB#3:                                 # %sw.epilog
	testq	%rax, %rax
	je	.LBB0_55
# BB#4:                                 # %if.end
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	17176(%r15), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movq	17176(%r15), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
	movq	16(%r15), %rdi
	callq	check_mode
	cmpl	$2, %eax
	jne	.LBB0_6
# BB#5:                                 # %if.then.27
	movq	17176(%r15), %rdi
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	fprintf
.LBB0_6:                                # %if.end.30
	movq	17176(%r15), %rdi
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movl	%r14d, %edx
	callq	fprintf
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	jle	.LBB0_54
# BB#7:                                 # %while.body.lr.ph
	movl	%r12d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r12), %eax
	sarl	$3, %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movl	%ebx, %edx
	imull	%r12d, %edx
	movl	%edx, 52(%rsp)          # 4-byte Spill
	leaq	1(%r13), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	$1, %esi
	movq	88(%rsp), %rcx          # 8-byte Reload
	subq	%rcx, %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	cltq
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leal	(,%rbx,8), %eax
	movslq	%ebx, %rsi
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movslq	%r12d, %rsi
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	cltq
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movslq	%edx, %rax
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_9:                                # %if.end.37
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%r13, %rcx
	movl	68(%rsp), %r13d         # 4-byte Reload
	subl	%ebx, %r13d
	movl	%ebx, 64(%rsp)          # 4-byte Spill
	cmpl	%r12d, %r13d
	cmovgl	%r12d, %r13d
	movl	%r13d, %r14d
	movq	120(%rsp), %rax         # 8-byte Reload
	imull	%eax, %r14d
	cmpb	$0, (%rcx)
	movq	%rcx, %rbx
	jne	.LBB0_12
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_8 Depth=1
	leal	-1(%r14), %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_11
.LBB0_12:                               # %if.end.48
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	%r12d, %eax
	subl	%r13d, %eax
	jle	.LBB0_14
# BB#13:                                # %if.then.51
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	120(%rsp), %rcx         # 8-byte Reload
	imull	%ecx, %eax
	movslq	%r14d, %rcx
	leaq	(%rcx,%rbx), %rdi
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB0_14:                               # %if.end.58
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpl	$73, %ebp
	jl	.LBB0_16
	.align	16, 0x90
.LBB0_15:                               # %while.body.63
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	17176(%r15), %rdi
	movl	$.L.str.11, %esi
	movl	$88, %edx
	xorl	%eax, %eax
	callq	fprintf
	addl	$-72, %ebp
	cmpl	$72, %ebp
	jg	.LBB0_15
.LBB0_16:                               # %while.end
                                        #   in Loop: Header=BB0_8 Depth=1
	testl	%ebp, %ebp
	jle	.LBB0_18
# BB#17:                                # %if.then.69
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	17176(%r15), %rdi
	addl	$16, %ebp
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	fprintf
.LBB0_18:                               # %for.cond.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpl	$8, %r12d
	movl	$0, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	jl	.LBB0_42
	.align	16, 0x90
.LBB0_19:                               # %for.body
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #         Child Loop BB0_22 Depth 4
	movq	120(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_40
# BB#20:                                # %for.body.85.lr.ph
                                        #   in Loop: Header=BB0_19 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r9
	movq	72(%rsp), %rax          # 8-byte Reload
	imulq	%rcx, %rax
	movq	80(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r10
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_21:                               # %for.body.85
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_22 Depth 4
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movq	%r10, 136(%rsp)         # 8-byte Spill
	movq	%r9, 144(%rsp)          # 8-byte Spill
	movb	$1, %dl
	movl	$8, %eax
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_22:                               # %for.body.i
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%ecx, 168(%rsp)         # 4-byte Spill
	movl	%esi, 172(%rsp)         # 4-byte Spill
	movl	%ebx, 176(%rsp)         # 4-byte Spill
	movl	%ebp, 180(%rsp)         # 4-byte Spill
	movzbl	(%r10), %r11d
	testw	$128, %r11w
	movl	$0, %ecx
	je	.LBB0_24
# BB#23:                                # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	%dl, %cl
.LBB0_24:                               # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$64, %r11b
	movl	$0, %esi
	je	.LBB0_26
# BB#25:                                # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	%dl, %sil
.LBB0_26:                               # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$32, %r11b
	movl	$0, %ebp
	je	.LBB0_28
# BB#27:                                # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	%dl, %bpl
.LBB0_28:                               # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$16, %r11b
	movl	$0, %ebx
	je	.LBB0_30
# BB#29:                                # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	%dl, %bl
.LBB0_30:                               # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$8, %r11b
	movl	$0, %r12d
	je	.LBB0_32
# BB#31:                                # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	%dl, %r12b
.LBB0_32:                               # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$4, %r11b
	movl	$0, %r9d
	je	.LBB0_34
# BB#33:                                # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	%dl, %r9b
.LBB0_34:                               # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%eax, 164(%rsp)         # 4-byte Spill
	testb	$2, %r11b
	movl	$0, %r14d
	je	.LBB0_36
# BB#35:                                # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	%dl, %r14b
.LBB0_36:                               # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$1, %r11b
	movl	$0, %eax
	je	.LBB0_38
# BB#37:                                # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	%dl, %al
.LBB0_38:                               # %for.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	orb	%cl, %r13b
	orb	%sil, %r8b
	orb	%bpl, %dil
	orb	%bl, %r15b
	movl	168(%rsp), %ecx         # 4-byte Reload
	orb	%r12b, %cl
	movl	172(%rsp), %esi         # 4-byte Reload
	orb	%r9b, %sil
	movl	176(%rsp), %ebx         # 4-byte Reload
	orb	%r14b, %bl
	movl	180(%rsp), %ebp         # 4-byte Reload
	orb	%al, %bpl
	addq	152(%rsp), %r10         # 8-byte Folded Reload
	addb	%dl, %dl
	movl	164(%rsp), %eax         # 4-byte Reload
	decl	%eax
	jne	.LBB0_22
# BB#39:                                # %pr201_transpose_8x8.exit
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	144(%rsp), %r9          # 8-byte Reload
	movb	%r13b, (%r9)
	movq	112(%rsp), %rax         # 8-byte Reload
	leaq	(%r9,%rax), %rdx
	movb	%r8b, (%r9,%rax)
	movb	%dil, (%rax,%rdx)
	addq	%rax, %rdx
	movb	%r15b, (%rax,%rdx)
	addq	%rax, %rdx
	movb	%cl, (%rax,%rdx)
	addq	%rax, %rdx
	movb	%sil, (%rax,%rdx)
	addq	%rax, %rdx
	movb	%bl, (%rax,%rdx)
	addq	%rax, %rdx
	movb	%bpl, (%rax,%rdx)
	movq	136(%rsp), %r10         # 8-byte Reload
	incq	%r10
	addq	104(%rsp), %r9          # 8-byte Folded Reload
	movl	132(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB0_21
.LBB0_40:                               # %for.inc.90
                                        #   in Loop: Header=BB0_19 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	incq	%rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	cmpq	112(%rsp), %rax         # 8-byte Folded Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	jl	.LBB0_19
# BB#41:                                #   in Loop: Header=BB0_8 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB0_42:                               # %while.cond.96
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r14
	cmpq	%rcx, %r14
	jb	.LBB0_44
# BB#43:                                # %while.body.99
                                        #   in Loop: Header=BB0_42 Depth=2
	leaq	-1(%r14), %rax
	cmpb	$0, (%r14)
	je	.LBB0_42
.LBB0_44:                               # %while.end.104
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r14), %eax
	cltd
	movl	28(%rsp), %ebx          # 4-byte Reload
	idivl	%ebx
	testl	%edx, %edx
	je	.LBB0_46
# BB#45:                                # %if.then.109
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	%ebx, %eax
	subl	%edx, %eax
	cltq
	addq	%rax, %r14
.LBB0_46:                               # %if.end.113
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	80(%rsp), %r13          # 8-byte Reload
	cmpq	%r14, %rcx
	movq	%rcx, %rbp
	ja	.LBB0_49
	.align	16, 0x90
.LBB0_47:                               # %while.body.117
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rbp)
	jne	.LBB0_49
# BB#48:                                # %if.end.120
                                        #   in Loop: Header=BB0_47 Depth=2
	incq	%rbp
	cmpq	%r14, %rbp
	jbe	.LBB0_47
.LBB0_49:                               # %while.end.122
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%rbp, %rax
	subq	%rcx, %rax
	cqto
	movq	112(%rsp), %rsi         # 8-byte Reload
	idivq	%rsi
	subq	%rdx, %rbp
	movq	17176(%r15), %rdi
	movq	%rbp, %rax
	subq	%rcx, %rax
	cqto
	idivq	%rsi
	movq	%rax, %rcx
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	fprintf
	subq	%rbp, %r14
	incq	%r14
	movq	16(%r15), %rdi
	callq	check_mode
	movl	%eax, %esi
	movq	17176(%r15), %rdi
	movl	%r14d, %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	testl	%esi, %esi
	je	.LBB0_50
# BB#51:                                # %if.else
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str.14, %esi
	jmp	.LBB0_52
	.align	16, 0x90
.LBB0_50:                               # %if.then.145
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str.13, %esi
.LBB0_52:                               # %if.end.152
                                        #   in Loop: Header=BB0_8 Depth=1
	xorl	%eax, %eax
	movl	%ecx, %edx
	callq	fprintf
	movslq	%r14d, %rsi
	movq	17176(%r15), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	fwrite
	movq	17176(%r15), %rsi
	movl	$13, %edi
	callq	fputc
	movl	$1, %ebp
.LBB0_53:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	64(%rsp), %ebx          # 4-byte Reload
	addl	%r12d, %ebx
	cmpl	%ebx, 68(%rsp)          # 4-byte Folded Reload
	jg	.LBB0_8
	jmp	.LBB0_54
.LBB0_11:                               # %if.then.47
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	%ebp
	movq	%rbx, %r13
	jmp	.LBB0_53
	.align	16, 0x90
.LBB0_8:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #         Child Loop BB0_22 Depth 4
                                        #     Child Loop BB0_42 Depth 2
                                        #     Child Loop BB0_47 Depth 2
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r13, %rdx
	movl	52(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	testl	%eax, %eax
	jns	.LBB0_9
.LBB0_54:                               # %while.end.166
	movq	17176(%r15), %rsi
	movl	$12, %edi
	callq	fputc
	movq	17176(%r15), %rdi
	callq	fflush
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.5, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	xorl	%ecx, %ecx
.LBB0_55:                               # %cleanup.186
	movl	%ecx, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pr201_print_page, .Lfunc_end0-pr201_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	check_mode,@function
check_mode:                             # @check_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_8
# BB#1:                                 # %cond.true
	movzbl	(%rbx), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB1_9
# BB#2:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB1_9
# BB#3:                                 # %if.then
	movzbl	1(%rbx), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB1_9
# BB#4:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB1_9
# BB#5:                                 # %if.then.18
	movzbl	2(%rbx), %eax
	addl	$-50, %eax
	cmpq	$3, %rcx
	jb	.LBB1_9
# BB#6:                                 # %if.then.18
	testl	%eax, %eax
	jne	.LBB1_9
# BB#7:                                 # %if.then.28
	movzbl	3(%rbx), %eax
	addl	$-48, %eax
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB1_9:                                # %cond.end
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB1_30
# BB#10:                                # %land.lhs.true.43
	movl	$.L.str.2, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_18
# BB#11:                                # %cond.true.47
	movzbl	(%rbx), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB1_19
# BB#12:                                # %cond.true.47
	testl	%eax, %eax
	jne	.LBB1_19
# BB#13:                                # %if.then.61
	movzbl	1(%rbx), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB1_19
# BB#14:                                # %if.then.61
	testl	%eax, %eax
	jne	.LBB1_19
# BB#15:                                # %if.then.71
	movzbl	2(%rbx), %eax
	addl	$-49, %eax
	cmpq	$3, %rcx
	jb	.LBB1_19
# BB#16:                                # %if.then.71
	testl	%eax, %eax
	jne	.LBB1_19
# BB#17:                                # %if.then.81
	movzbl	3(%rbx), %eax
	addl	$-48, %eax
	jmp	.LBB1_19
.LBB1_18:                               # %cond.false.90
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB1_19:                               # %cond.end.92
	movl	$1, %ecx
	testl	%eax, %eax
	je	.LBB1_30
# BB#20:                                # %land.lhs.true.102
	movl	$.L.str.3, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_28
# BB#21:                                # %cond.true.106
	movzbl	(%rbx), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB1_29
# BB#22:                                # %cond.true.106
	testl	%eax, %eax
	jne	.LBB1_29
# BB#23:                                # %if.then.120
	movzbl	1(%rbx), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB1_29
# BB#24:                                # %if.then.120
	testl	%eax, %eax
	jne	.LBB1_29
# BB#25:                                # %if.then.130
	movzbl	2(%rbx), %eax
	addl	$-49, %eax
	cmpq	$3, %rcx
	jb	.LBB1_29
# BB#26:                                # %if.then.130
	testl	%eax, %eax
	jne	.LBB1_29
# BB#27:                                # %if.then.140
	movzbl	3(%rbx), %eax
	addl	$-53, %eax
	jmp	.LBB1_29
.LBB1_28:                               # %cond.false.149
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB1_29:                               # %cond.end.151
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ecx
	orl	$2, %ecx
.LBB1_30:                               # %return
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	check_mode, .Lfunc_end1-check_mode
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pr201"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_pr201_device,@object # @gs_pr201_device
	.data
	.globl	gs_pr201_device
	.align	8
gs_pr201_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_std_procs
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
	.long	1280                    # 0x500
	.long	1760                    # 0x6e0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141899264              # float 5.760000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1126170624              # float 1.600000e+02
	.long	1126170624              # float 1.600000e+02
	.long	1126170624              # float 1.600000e+02
	.long	1126170624              # float 1.600000e+02
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
	.quad	pr201_print_page
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
	.size	gs_pr201_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"pr1000"
	.size	.L.str.2, 7

	.type	gs_pr1000_device,@object # @gs_pr1000_device
	.data
	.globl	gs_pr1000_device
	.align	8
gs_pr1000_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_std_procs
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
	.long	1920                    # 0x780
	.long	2640                    # 0xa50
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141899264              # float 5.760000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
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
	.quad	pr201_print_page
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
	.size	gs_pr1000_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"pr150"
	.size	.L.str.3, 6

	.type	gs_pr150_device,@object # @gs_pr150_device
	.data
	.globl	gs_pr150_device
	.align	8
gs_pr150_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_std_procs
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
	.long	2560                    # 0xa00
	.long	3520                    # 0xdc0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141899264              # float 5.760000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1134559232              # float 3.200000e+02
	.long	1134559232              # float 3.200000e+02
	.long	1134559232              # float 3.200000e+02
	.long	1134559232              # float 3.200000e+02
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
	.quad	pr201_print_page
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
	.size	gs_pr150_device, 18472

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"pr1000_4"
	.size	.L.str.4, 9

	.type	gs_pr1000_4_device,@object # @gs_pr1000_4_device
	.data
	.globl	gs_pr1000_4_device
	.align	8
gs_pr1000_4_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_std_procs
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
	.long	3200                    # 0xc80
	.long	4400                    # 0x1130
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141899264              # float 5.760000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1137180672              # float 4.000000e+02
	.long	1137180672              # float 4.000000e+02
	.long	1137180672              # float 4.000000e+02
	.long	1137180672              # float 4.000000e+02
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
	.quad	pr201_print_page
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
	.size	gs_pr1000_4_device, 18472

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"pr201_print_page(in)"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pr201_print_page(out)"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033cl"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033P"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\034d%d."
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033T%d"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\037%c"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033F%04d"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\033J%04d"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\034bP,48,%04d."
	.size	.L.str.14, 13

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.Lswitch.table:
	.long	24                      # 0x18
	.long	40                      # 0x28
	.long	48                      # 0x30
	.long	60                      # 0x3c
	.size	.Lswitch.table, 16

	.type	.Lswitch.table.1,@object # @switch.table.1
	.align	4
.Lswitch.table.1:
	.long	18                      # 0x12
	.long	20                      # 0x14
	.long	18                      # 0x12
	.long	18                      # 0x12
	.size	.Lswitch.table.1, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
