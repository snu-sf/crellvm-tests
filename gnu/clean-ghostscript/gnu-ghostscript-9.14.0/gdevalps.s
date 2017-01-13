	.text
	.file	"gdevalps.bc"
	.align	16, 0x90
	.type	md50m_print_page,@function
md50m_print_page:                       # @md50m_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	$init_50mono, %edx
	movl	$78, %ecx
	callq	md50_print_page
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end0:
	.size	md50m_print_page, .Lfunc_end0-md50m_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	md50e_print_page,@function
md50e_print_page:                       # @md50e_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	movl	$init_50eco, %edx
	movl	$83, %ecx
	callq	md50_print_page
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end1:
	.size	md50e_print_page, .Lfunc_end1-md50e_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	md1xm_print_page,@function
md1xm_print_page:                       # @md1xm_print_page
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
	subq	$136, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 192
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
	movq	%rsi, %r15
	movq	%r15, 96(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r14d
	movl	%r14d, 92(%rsp)         # 4-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$8, %esi
	movl	$.L.str.7, %ecx
	movl	%r14d, %edx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$8, %esi
	movl	$.L.str.7, %ecx
	movl	%r14d, %edx
	callq	*88(%rdi)
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	$init_md13, %edi
	movl	$1, %esi
	movl	$66, %edx
	movq	%r15, %rcx
	callq	fwrite
	movq	%r15, %rdi
	callq	fflush
	cmpl	$0, 836(%rbx)
	js	.LBB2_49
# BB#1:                                 # %for.body.lr.ph
	movslq	92(%rsp), %rax          # 4-byte Folded Reload
	leaq	(%rax,%rbp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	1(%rbp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #     Child Loop BB2_10 Depth 2
                                        #       Child Loop BB2_18 Depth 3
                                        #         Child Loop BB2_19 Depth 4
                                        #         Child Loop BB2_26 Depth 4
                                        #       Child Loop BB2_36 Depth 3
                                        #     Child Loop BB2_44 Depth 2
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movq	%rbp, %rdx
	movl	92(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movq	80(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB2_3:                                # %while.cond
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r13
	cmpq	%rbp, %r13
	jbe	.LBB2_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB2_3 Depth=2
	leaq	-1(%r13), %rax
	cmpb	$0, -1(%r13)
	je	.LBB2_3
.LBB2_5:                                # %while.end
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	%ebp, %r13d
	movl	%r14d, %eax
	je	.LBB2_6
# BB#7:                                 # %if.else
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, 112(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	je	.LBB2_9
# BB#8:                                 # %if.then.24
                                        #   in Loop: Header=BB2_2 Depth=1
	movzbl	%al, %r9d
	movzbl	%ah, %eax  # NOREX
	movl	%eax, (%rsp)
	movl	$89, 8(%rsp)
	movl	$.L.str.5, %esi
	movl	$27, %edx
	movl	$42, %ecx
	movl	$98, %r8d
	xorl	%eax, %eax
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
.LBB2_9:                                # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	56(%rsp), %r15          # 8-byte Reload
	cmpq	%r13, %r15
	movq	%rbp, %rax
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	jae	.LBB2_13
	jmp	.LBB2_10
	.align	16, 0x90
.LBB2_6:                                # %if.then
                                        #   in Loop: Header=BB2_2 Depth=1
	incl	%eax
	movl	%eax, %r14d
	jmp	.LBB2_48
.LBB2_15:                               # %if.else.39
                                        #   in Loop: Header=BB2_10 Depth=2
	cmpq	%rsi, %rbp
	jbe	.LBB2_18
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_10 Depth=2
	movzbl	-1(%rbp), %ecx
	movzbl	%al, %eax
	cmpl	%ecx, %eax
	jne	.LBB2_18
# BB#17:                                #   in Loop: Header=BB2_10 Depth=2
	decq	%rbp
	jmp	.LBB2_18
	.align	16, 0x90
.LBB2_29:                               # %if.end.90
                                        #   in Loop: Header=BB2_18 Depth=3
	movb	$-127, (%rdi)
	movb	(%rbp), %al
	movb	%al, 1(%rdi)
	addq	$2, %rdi
	subq	$-128, %rbp
	movq	%rbp, %rsi
	movq	%r14, %r15
.LBB2_18:                               # %for.cond.51.outer
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_19 Depth 4
                                        #         Child Loop BB2_26 Depth 4
	movb	(%rbp), %al
	incq	%r15
	.align	16, 0x90
.LBB2_19:                               # %for.cond.51
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        #       Parent Loop BB2_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r15, %r14
	movq	%r14, %r12
	subq	%rbp, %r12
	cmpq	%r13, %r14
	jae	.LBB2_30
# BB#20:                                # %for.cond.51
                                        #   in Loop: Header=BB2_19 Depth=4
	movzbl	%al, %ecx
	movzbl	(%r14), %edx
	cmpl	%ecx, %edx
	jne	.LBB2_30
# BB#21:                                # %for.body.60
                                        #   in Loop: Header=BB2_19 Depth=4
	leaq	1(%r14), %r15
	cmpq	$128, %r12
	jl	.LBB2_19
# BB#22:                                # %if.then.66
                                        #   in Loop: Header=BB2_18 Depth=3
	cmpq	%rsi, %rbp
	jbe	.LBB2_29
# BB#23:                                # %if.then.69
                                        #   in Loop: Header=BB2_18 Depth=3
	movl	%ebp, %ecx
	subl	%esi, %ecx
	cmpl	$129, %ecx
	jl	.LBB2_24
# BB#25:                                # %while.body.77.lr.ph
                                        #   in Loop: Header=BB2_18 Depth=3
	leal	-129(%rcx), %edx
	shrl	$7, %edx
	movl	%edx, %eax
	shll	$7, %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	imulq	$129, %rdx, %rax
	leaq	129(%rdi,%rax), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	shlq	$7, %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%ecx, %r12d
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%rdi, %r15
	movq	%rsi, %rbx
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB2_26:                               # %while.body.77
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        #       Parent Loop BB2_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	$127, (%r15)
	leaq	1(%r15), %rdi
	movl	$128, %edx
	movq	%rbx, %rsi
	callq	memcpy
	subq	$-128, %rbx
	addl	$-128, %r12d
	addq	$129, %r15
	cmpl	$128, %r12d
	jg	.LBB2_26
# BB#27:                                # %while.cond.74.while.end.82_crit_edge
                                        #   in Loop: Header=BB2_18 Depth=3
	movq	128(%rsp), %rcx         # 8-byte Reload
	addl	$-128, %ecx
	subl	32(%rsp), %ecx          # 4-byte Folded Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	128(%rsi,%rax), %rsi
	movq	120(%rsp), %r15         # 8-byte Reload
	jmp	.LBB2_28
.LBB2_24:                               #   in Loop: Header=BB2_18 Depth=3
	movq	%rdi, %r15
.LBB2_28:                               # %while.end.82
                                        #   in Loop: Header=BB2_18 Depth=3
	leal	255(%rcx), %eax
	leaq	1(%r15), %rdi
	movb	%al, (%r15)
	movslq	%ecx, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	leaq	1(%r15,%rbx), %rdi
	jmp	.LBB2_29
.LBB2_30:                               # %for.end
                                        #   in Loop: Header=BB2_10 Depth=2
	leaq	-1(%r14), %r15
	cmpq	$3, %r12
	jl	.LBB2_31
# BB#32:                                # %if.then.101
                                        #   in Loop: Header=BB2_10 Depth=2
	cmpq	%rsi, %rbp
	jbe	.LBB2_39
# BB#33:                                # %if.then.104
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	%ebp, %ecx
	subl	%esi, %ecx
	cmpl	$129, %ecx
	jl	.LBB2_34
# BB#35:                                # %while.body.112.lr.ph
                                        #   in Loop: Header=BB2_10 Depth=2
	leal	-129(%rcx), %edx
	shrl	$7, %edx
	movl	%edx, %eax
	shll	$7, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	imulq	$129, %rdx, %rax
	leaq	129(%rdi,%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	shlq	$7, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rsi, %rcx
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB2_36:                               # %while.body.112
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movb	$127, (%rbx)
	leaq	1(%rbx), %rdi
	movl	$128, %edx
	movq	%rcx, %rsi
	callq	memcpy
	movq	120(%rsp), %rcx         # 8-byte Reload
	movl	128(%rsp), %eax         # 4-byte Reload
	subq	$-128, %rcx
	addl	$-128, %eax
	addq	$129, %rbx
	cmpl	$128, %eax
	jg	.LBB2_36
# BB#37:                                # %while.cond.109.while.end.118_crit_edge
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	32(%rsp), %rcx          # 8-byte Reload
	addl	$-128, %ecx
	subl	20(%rsp), %ecx          # 4-byte Folded Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	128(%rsi,%rax), %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB2_38
.LBB2_31:                               #   in Loop: Header=BB2_10 Depth=2
	movq	%r14, %rbp
	jmp	.LBB2_40
.LBB2_34:                               #   in Loop: Header=BB2_10 Depth=2
	movq	%rdi, %rdx
.LBB2_38:                               # %while.end.118
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	leal	255(%rcx), %eax
	leaq	1(%rdx), %rdi
	movb	%al, (%rdx)
	movslq	%ecx, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	1(%rax,%rbx), %rdi
.LBB2_39:                               # %if.end.126
                                        #   in Loop: Header=BB2_10 Depth=2
	movb	$1, %al
	subb	%r12b, %al
	movb	%al, (%rdi)
	movb	(%rbp), %al
	movb	%al, 1(%rdi)
	addq	$2, %rdi
	movslq	%r12d, %rsi
	addq	%rbp, %rsi
	movq	%rsi, %rbp
.LBB2_40:                               # %if.end.138
                                        #   in Loop: Header=BB2_10 Depth=2
	addq	$2, %r15
	cmpq	%r13, %r14
	cmovaeq	%r14, %r15
	jmp	.LBB2_12
	.align	16, 0x90
.LBB2_10:                               # %for.body.31
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_18 Depth 3
                                        #         Child Loop BB2_19 Depth 4
                                        #         Child Loop BB2_26 Depth 4
                                        #       Child Loop BB2_36 Depth 3
	movzbl	(%rbp), %eax
	movzbl	(%r15), %ecx
	cmpl	%ecx, %eax
	je	.LBB2_15
# BB#11:                                # %if.then.36
                                        #   in Loop: Header=BB2_10 Depth=2
	addq	$2, %rbp
	addq	$2, %r15
.LBB2_12:                               # %if.then.36
                                        #   in Loop: Header=BB2_10 Depth=2
	cmpq	%r13, %r15
	jb	.LBB2_10
.LBB2_13:                               # %for.end.145
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpq	%r13, %rsi
	movq	112(%rsp), %r12         # 8-byte Reload
	jae	.LBB2_14
# BB#41:                                # %if.then.148
                                        #   in Loop: Header=BB2_2 Depth=1
	subl	%esi, %r13d
	cmpl	$129, %r13d
	jl	.LBB2_42
# BB#43:                                # %while.body.156.lr.ph
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	-129(%r13), %r12d
	shrl	$7, %r12d
	movl	%r12d, %eax
	shll	$7, %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	imulq	$129, %r12, %rax
	movq	%rdi, %r15
	leaq	129(%r15,%rax), %r14
	shlq	$7, %r12
	movl	%r13d, %ebp
	movq	%rsi, %rbx
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB2_44:                               # %while.body.156
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$127, (%r15)
	leaq	1(%r15), %rdi
	movl	$128, %edx
	movq	%rbx, %rsi
	callq	memcpy
	subq	$-128, %rbx
	addl	$-128, %ebp
	addq	$129, %r15
	cmpl	$128, %ebp
	jg	.LBB2_44
# BB#45:                                # %while.cond.153.while.end.162_crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	addl	$-128, %r13d
	subl	128(%rsp), %r13d        # 4-byte Folded Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	leaq	128(%rsi,%r12), %rsi
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	112(%rsp), %r12         # 8-byte Reload
	jmp	.LBB2_46
	.align	16, 0x90
.LBB2_14:                               #   in Loop: Header=BB2_2 Depth=1
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rdi, %rax
	jmp	.LBB2_47
.LBB2_42:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, %r14
	movq	64(%rsp), %rbp          # 8-byte Reload
.LBB2_46:                               # %while.end.162
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	255(%r13), %eax
	leaq	1(%r14), %rdi
	movb	%al, (%r14)
	movslq	%r13d, %r15
	movq	%r15, %rdx
	callq	memcpy
	leaq	1(%r14,%r15), %rax
.LBB2_47:                               # %if.end.170
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	104(%rsp), %r15         # 8-byte Reload
	subq	%r15, %rax
	movzbl	%al, %r9d
	movq	%rax, %rcx
	movzbl	%ch, %eax  # NOREX
	movq	%rcx, %r13
	movl	%eax, (%rsp)
	movl	$87, 8(%rsp)
	xorl	%r14d, %r14d
	movl	$.L.str.5, %esi
	movl	$27, %edx
	movl	$98, %r8d
	xorl	%eax, %eax
	movl	$42, %ecx
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	fprintf
	movslq	%r13d, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rbx, %rcx
	callq	fwrite
	movq	72(%rsp), %rbx          # 8-byte Reload
.LBB2_48:                               # %cleanup
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	836(%rbx), %r12d
	leal	1(%r12), %eax
	movl	%eax, %r12d
	jl	.LBB2_2
.LBB2_49:                               # %for.end.189
	movl	$end_md, %edi
	movl	$1, %esi
	movl	$9, %edx
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	fwrite
	movq	%rbx, %rdi
	callq	fflush
	xorl	%eax, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	md1xm_print_page, .Lfunc_end2-md1xm_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	md_open,@function
md_open:                                # @md_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$md_open.md_margins, %esi
	movl	$1, %edx
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end3:
	.size	md_open, .Lfunc_end3-md_open
	.cfi_endproc

	.align	16, 0x90
	.type	md50_print_page,@function
md50_print_page:                        # @md50_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 112
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movq	24(%rbx), %rcx
	movq	200(%rcx), %rcx
	movq	200(%rcx), %rdi
	movl	$8, %esi
	movl	$.L.str.4, %ecx
	movl	%eax, %edx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movslq	%r14d, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	fwrite
	movq	%r12, %rdi
	callq	fflush
	cmpl	$0, 836(%rbx)
	js	.LBB4_15
# BB#1:                                 # %for.body.lr.ph
	movslq	52(%rsp), %rax          # 4-byte Folded Reload
	leaq	(%rax,%rbp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #     Child Loop BB4_7 Depth 2
	xorl	%esi, %esi
	movl	$630, %edx              # imm = 0x276
	movq	%rbp, %rdi
	callq	memset
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%rbp, %rdx
	movl	52(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movq	32(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB4_3:                                # %while.cond
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbx
	cmpq	%rbp, %rbx
	jbe	.LBB4_4
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB4_3 Depth=2
	leaq	-1(%rbx), %rax
	cmpb	$0, -1(%rbx)
	je	.LBB4_3
# BB#6:                                 # %land.rhs.19.preheader
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	%rbp, %r15
	movl	%r14d, %eax
	movq	%r12, %r14
	.align	16, 0x90
.LBB4_7:                                # %land.rhs.19
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%r15)
	jne	.LBB4_9
# BB#8:                                 # %while.body.24
                                        #   in Loop: Header=BB4_7 Depth=2
	incq	%r15
	cmpq	%rbx, %r15
	jb	.LBB4_7
	jmp	.LBB4_9
	.align	16, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	movq	%rbp, %r15
	movl	%r14d, %eax
	movq	%r12, %r14
.LBB4_9:                                # %while.end.26
                                        #   in Loop: Header=BB4_2 Depth=1
	subq	%r15, %rbx
	testl	%ebx, %ebx
	je	.LBB4_10
# BB#11:                                # %if.else
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	%r15d, %edx
	subl	%ebp, %edx
	testl	%eax, %eax
	je	.LBB4_13
# BB#12:                                # %if.then.34
                                        #   in Loop: Header=BB4_2 Depth=1
	movzbl	%al, %r9d
	movzbl	%ah, %eax  # NOREX
	movl	%eax, (%rsp)
	movl	$89, 8(%rsp)
	movl	$.L.str.5, %esi
	movl	%edx, %r12d
	movl	$27, %edx
	movl	$42, %ecx
	movl	$98, %r8d
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	%r12d, %edx
.LBB4_13:                               # %if.end
                                        #   in Loop: Header=BB4_2 Depth=1
	movzbl	%bl, %r9d
	movzbl	%bh, %eax  # NOREX
	movzbl	%dl, %ecx
	movzbl	%dh, %edx  # NOREX
	movl	%ecx, 16(%rsp)
	movl	%edx, 24(%rsp)
	movl	%eax, (%rsp)
	movl	$84, 8(%rsp)
	movq	%r14, %r12
	xorl	%r14d, %r14d
	movl	$.L.str.6, %esi
	movl	$27, %edx
	movl	$98, %r8d
	xorl	%eax, %eax
	movl	$42, %ecx
	movq	%r12, %rdi
	callq	fprintf
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	fwrite
	jmp	.LBB4_14
	.align	16, 0x90
.LBB4_10:                               # %if.then
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	%r14, %r12
	incl	%eax
	movl	%eax, %r14d
.LBB4_14:                               # %cleanup
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	40(%rsp), %rbx          # 8-byte Reload
	cmpl	836(%rbx), %r13d
	leal	1(%r13), %eax
	movl	%eax, %r13d
	jl	.LBB4_2
.LBB4_15:                               # %for.end
	movl	$end_md, %edi
	movl	$1, %esi
	movl	$9, %edx
	movq	%r12, %rcx
	callq	fwrite
	movq	%r12, %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fflush                  # TAILCALL
.Lfunc_end4:
	.size	md50_print_page, .Lfunc_end4-md50_print_page
	.cfi_endproc

	.type	prn_md_procs,@object    # @prn_md_procs
	.data
	.align	8
prn_md_procs:
	.quad	md_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
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
	.size	prn_md_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"md50Mono"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_md50Mono_device,@object # @gs_md50Mono_device
	.data
	.globl	gs_md50Mono_device
	.align	8
gs_md50Mono_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_md_procs
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	md50m_print_page
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
	.size	gs_md50Mono_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"md50Eco"
	.size	.L.str.2, 8

	.type	gs_md50Eco_device,@object # @gs_md50Eco_device
	.data
	.globl	gs_md50Eco_device
	.align	8
gs_md50Eco_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_md_procs
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	md50e_print_page
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
	.size	gs_md50Eco_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"md1xMono"
	.size	.L.str.3, 9

	.type	gs_md1xMono_device,@object # @gs_md1xMono_device
	.data
	.globl	gs_md1xMono_device
	.align	8
gs_md1xMono_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_md_procs
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	md1xm_print_page
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
	.size	gs_md1xMono_device, 18472

	.type	md_open.md_margins,@object # @md_open.md_margins
	.section	.rodata,"a",@progbits
	.align	16
md_open.md_margins:
	.long	1040522936              # float 1.300000e-01
	.long	1058474557              # float 5.900000e-01
	.long	1040522936              # float 1.300000e-01
	.long	1055957975              # float 4.700000e-01
	.size	md_open.md_margins, 16

	.type	init_50mono,@object     # @init_50mono
	.align	16
init_50mono:
	.ascii	"\033e\033%\200A\033\032\000\000L\033&l\001\000H\033&l\007\000M\033&l\004\000A\033*r\000U\033*t\003R\033&l\345\030P\033\032\000\000A\033&l\001\000C\000\033\032\000\000U\033*r\001A\033*b\000\000M\033\032\000\200r"
	.size	init_50mono, 78

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"md50_print_page(data)"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%c%c%c%c%c%c"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c%c%c%c%c%c%c%c"
	.size	.L.str.6, 17

	.type	end_md,@object          # @end_md
	.section	.rodata,"a",@progbits
end_md:
	.ascii	"\f\033*rC\033%\000X"
	.size	end_md, 9

	.type	init_50eco,@object      # @init_50eco
	.align	16
init_50eco:
	.ascii	"\033e\033%\200A\033\032\000\000L\033&l\001\000H\033&l\007\000M\033&l\004\000A\033*r\001U\033*t\003R\033&l\345\030P\033\032\000\000A\033\032\001\000C\033&l\001\000C\027\033\032\000\000U\033*r\001A\033*b\000\000M\033\032\026\200r"
	.size	init_50eco, 83

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"md1xm_print_page(data)"
	.size	.L.str.7, 23

	.type	init_md13,@object       # @init_md13
	.section	.rodata,"a",@progbits
	.align	16
init_md13:
	.ascii	"\033e\033%\200A\033\032\000\000L\033&l\001\000H\033&l\000\000M\033&l\004\000A\033*r\000U\033*t\003R\033&l\345\030P\033\032\000\000A\033*r\000A\033*b\002\000M\033\032\000\000r"
	.size	init_md13, 66


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
