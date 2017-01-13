	.text
	.file	"gdevlxm.bc"
	.align	16, 0x90
	.type	lxm5700m_print_page,@function
lxm5700m_print_page:                    # @lxm5700m_print_page
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
	subq	$200, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 256
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
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movq	%r14, 72(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebx
	imull	$208, %ebx, %ebp
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r12
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%r12, %r12
	je	.LBB0_2
# BB#1:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB0_2
# BB#6:                                 # %if.end.27
	movl	$lxm5700m_print_page.init_string, %edi
	movl	$1, %esi
	movl	$107, %edx
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	movl	836(%r14), %eax
	cmpl	$209, %eax
	jl	.LBB0_7
# BB#8:                                 # %for.body.lr.ph
	leal	-1(%rbx), %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movslq	%ebx, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leal	(%rbx,%rbx), %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movslq	%ecx, %r15
	xorl	%r13d, %r13d
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	xorl	%edx, %edx
	movl	52(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB0_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #     Child Loop BB0_30 Depth 2
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_39 Depth 4
                                        #       Child Loop BB0_50 Depth 3
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movl	%edx, %ecx
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	cmpl	%eax, %r13d
	movl	%r13d, %ebp
	movq	16(%rsp), %rbx          # 8-byte Reload
	jge	.LBB0_13
	.align	16, 0x90
.LBB0_10:                               # %for.body.34
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%r12, %rdx
	leaq	192(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	192(%rsp), %rdi
	cmpb	$0, (%rdi)
	jne	.LBB0_13
# BB#11:                                # %lor.lhs.false.38
                                        #   in Loop: Header=BB0_10 Depth=2
	leaq	1(%rdi), %rsi
	movq	%rbx, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB0_13
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB0_10 Depth=2
	incl	%ebp
	cmpl	836(%r14), %ebp
	jl	.LBB0_10
	.align	16, 0x90
.LBB0_13:                               # %for.end
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	836(%r14), %esi
	cmpl	%esi, %ebp
	jge	.LBB0_14
# BB#15:                                # %cleanup.cont
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	%ebp, %eax
	subl	%r13d, %eax
	addl	$-104, %ebp
	cmpl	$104, %eax
	cmovlel	%r13d, %ebp
	addl	$-208, %esi
	cmpl	%esi, %ebp
	cmovlel	%ebp, %esi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movq	%r12, %rdx
	movl	52(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	xorl	%ebp, %ebp
	cmpl	$207, %eax
	movl	28(%rsp), %ecx          # 4-byte Reload
	movq	%r12, %rbx
	movq	88(%rsp), %r14          # 8-byte Reload
	movl	%r14d, %r9d
	movl	$0, %r8d
	movq	8(%rsp), %r13           # 8-byte Reload
	jg	.LBB0_17
# BB#16:                                # %if.then.67
                                        #   in Loop: Header=BB0_9 Depth=1
	imull	%r14d, %eax
	cltq
	leaq	(%r12,%rax), %rdi
	movl	52(%rsp), %ecx          # 4-byte Reload
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	callq	memset
	movl	28(%rsp), %ecx          # 4-byte Reload
	movq	%r12, %rbx
	movl	%r14d, %r9d
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB0_17:                               # %for.cond.79.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	testl	%r9d, %r9d
	jle	.LBB0_22
# BB#18:                                # %for.body.82.lr.ph
                                        #   in Loop: Header=BB0_17 Depth=2
	movslq	%r9d, %rax
	movq	%rbx, %rdx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_19:                               # %for.body.82
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, (%rdx)
	jne	.LBB0_21
# BB#20:                                # %for.inc.90
                                        #   in Loop: Header=BB0_19 Depth=3
	incq	%rdi
	incq	%rdx
	cmpq	%rax, %rdi
	jl	.LBB0_19
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_21:                               # %for.body.82.for.end.92_crit_edge
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	%edi, %r9d
.LBB0_22:                               # %for.end.92
                                        #   in Loop: Header=BB0_17 Depth=2
	movslq	%r8d, %rdi
	movl	%ecx, %edx
	movq	%r13, %rax
	.align	16, 0x90
.LBB0_23:                               # %for.cond.94
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%rdi, %rax
	jle	.LBB0_26
# BB#24:                                # %for.body.97
                                        #   in Loop: Header=BB0_23 Depth=3
	movslq	%edx, %rsi
	decq	%rax
	leal	-1(%rsi), %edx
	cmpb	$0, (%r12,%rsi)
	je	.LBB0_23
# BB#25:                                # %for.body.97.for.inc.109_crit_edge
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	%eax, %r8d
.LBB0_26:                               # %for.inc.109
                                        #   in Loop: Header=BB0_17 Depth=2
	incq	%rbp
	addq	%r13, %rbx
	addl	%r14d, %ecx
	cmpq	$208, %rbp
	jne	.LBB0_17
# BB#27:                                # %for.end.111
                                        #   in Loop: Header=BB0_9 Depth=1
	leal	24(,%r8,8), %eax
	andl	$-16, %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	shll	$3, %r9d
	movl	%r9d, 44(%rsp)          # 4-byte Spill
	andl	$-16, %r9d
	cmpl	%r9d, %eax
	jle	.LBB0_28
# BB#29:                                # %for.cond.125.preheader.lr.ph
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	%r9d, %ecx
	movl	%r9d, 40(%rsp)          # 4-byte Spill
	movq	120(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %r8
	.align	16, 0x90
.LBB0_30:                               # %for.cond.125.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_39 Depth 4
                                        #       Child Loop BB0_50 Depth 3
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 160(%rsp)
	movl	$0, 176(%rsp)
	movl	%ecx, %r13d
	andl	$1, %r13d
	cmpl	$0, 84(%rsp)            # 4-byte Folded Reload
	je	.LBB0_31
# BB#33:                                # %sw.bb.139
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	testl	%r13d, %r13d
	movl	%ecx, %edx
	je	.LBB0_35
# BB#34:                                # %cond.false.144
                                        #   in Loop: Header=BB0_30 Depth=2
	movl	%ecx, %edx
	movq	72(%rsp), %rax          # 8-byte Reload
	subl	18472(%rax), %edx
.LBB0_35:                               # %cond.end.147
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	%r8, 112(%rsp)          # 8-byte Spill
	xorl	$1, %r13d
	jmp	.LBB0_36
	.align	16, 0x90
.LBB0_31:                               # %sw.bb
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	testl	%r13d, %r13d
	movl	%ecx, %edx
	jne	.LBB0_36
# BB#32:                                # %cond.false
                                        #   in Loop: Header=BB0_30 Depth=2
	movl	%ecx, %edx
	movq	72(%rsp), %rax          # 8-byte Reload
	subl	18472(%rax), %edx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_36:                               # %sw.epilog
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	$32768, %r8d            # imm = 0x8000
	movb	%r13b, %cl
	shrl	%cl, %r8d
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rdx), %eax
	sarl	$3, %eax
	andb	$7, %dl
	movl	$128, %edi
	movb	%dl, %cl
	shrl	%cl, %edi
	movl	%r13d, %r11d
	movq	88(%rsp), %rcx          # 8-byte Reload
	imull	%ecx, %r11d
	addl	%eax, %r11d
	movl	$15, %r9d
	subl	%r13d, %r9d
	shrl	%r9d
	incl	%r9d
	imull	68(%rsp), %r9d          # 4-byte Folded Reload
	movl	$1, %ebx
	movl	$8192, %ecx             # imm = 0x2000
	xorl	%esi, %esi
	.align	16, 0x90
.LBB0_37:                               # %for.cond.158.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_39 Depth 4
	xorl	%ebp, %ebp
	cmpl	$15, %r13d
	jg	.LBB0_43
# BB#38:                                # %for.body.161.lr.ph
                                        #   in Loop: Header=BB0_37 Depth=3
	movslq	%r11d, %rax
	leaq	(%rax,%r12), %rax
	xorl	%ebp, %ebp
	movl	%r8d, %edx
	movl	%r13d, %r10d
	.align	16, 0x90
.LBB0_39:                               # %for.body.161
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rax), %r14d
	andl	%edi, %r14d
	je	.LBB0_41
# BB#40:                                # %if.then.167
                                        #   in Loop: Header=BB0_39 Depth=4
	orl	%edx, 128(%rsp,%rsi,4)
	orl	%r14d, %ebp
.LBB0_41:                               # %for.inc.172
                                        #   in Loop: Header=BB0_39 Depth=4
	addl	$2, %r10d
	sarl	$2, %edx
	addq	%r15, %rax
	cmpl	$16, %r10d
	jl	.LBB0_39
# BB#42:                                # %for.cond.158.for.end.177_crit_edge
                                        #   in Loop: Header=BB0_37 Depth=3
	leal	(%r11,%r9), %r11d
.LBB0_43:                               # %for.end.177
                                        #   in Loop: Header=BB0_37 Depth=3
	testl	%ebp, %ebp
	movl	$0, %eax
	cmovel	%ebx, %eax
	orl	%eax, %ecx
	incq	%rsi
	addl	%ebx, %ebx
	cmpq	$13, %rsi
	jne	.LBB0_37
# BB#44:                                # %for.end.184
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	120(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdx
	movq	112(%rsp), %r8          # 8-byte Reload
	subq	%r8, %rdx
	movslq	100(%rsp), %rax         # 4-byte Folded Reload
	cmpq	%rax, %rdx
	jge	.LBB0_45
# BB#47:                                # %if.else
                                        #   in Loop: Header=BB0_30 Depth=2
	leaq	1(%rbp), %rbx
	movb	%ch, (%rbp)  # NOREX
	movq	%rbx, %rdx
	subq	%r8, %rdx
	cmpq	%rax, %rdx
	jge	.LBB0_48
# BB#49:                                # %if.else.236
                                        #   in Loop: Header=BB0_30 Depth=2
	movb	%cl, 1(%rbp)
	addq	$2, %rbp
	cmpl	$16383, %ecx            # imm = 0x3FFF
	movl	$0, %ecx
	je	.LBB0_58
	.align	16, 0x90
.LBB0_50:                               # %for.body.247
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	128(%rsp,%rcx,4), %edx
	testl	%edx, %edx
	je	.LBB0_57
# BB#51:                                # %if.then.252
                                        #   in Loop: Header=BB0_50 Depth=3
	movq	%rbp, %rsi
	subq	%r8, %rsi
	cmpq	%rax, %rsi
	jge	.LBB0_52
# BB#54:                                # %if.else.278
                                        #   in Loop: Header=BB0_50 Depth=3
	leaq	1(%rbp), %rbx
	movb	%dh, (%rbp)  # NOREX
	movq	%rbx, %rdx
	subq	%r8, %rdx
	cmpq	%rax, %rdx
	jge	.LBB0_55
# BB#56:                                # %if.else.310
                                        #   in Loop: Header=BB0_50 Depth=3
	movb	128(%rsp,%rcx,4), %dl
	movb	%dl, 1(%rbp)
	addq	$2, %rbp
.LBB0_57:                               # %for.inc.319
                                        #   in Loop: Header=BB0_50 Depth=3
	incq	%rcx
	cmpq	$13, %rcx
	jl	.LBB0_50
.LBB0_58:                               #   in Loop: Header=BB0_30 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	jmp	.LBB0_59
.LBB0_52:                               # %if.then.259
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r8, %rsi
	callq	*24(%rdi)
	movl	100(%rsp), %esi         # 4-byte Reload
	addl	%esi, %esi
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	callq	*88(%rdi)
	movq	%rax, %r8
	testq	%r8, %r8
	jmp	.LBB0_53
.LBB0_55:                               # %if.then.291
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r8, %rsi
	callq	*24(%rdi)
	movl	100(%rsp), %esi         # 4-byte Reload
	addl	%esi, %esi
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	callq	*88(%rdi)
	movq	%rax, %r8
	testq	%r8, %r8
	movq	%rbx, %rbp
.LBB0_53:                               # %if.then.259
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	je	.LBB0_46
.LBB0_59:                               # %for.inc.323
                                        #   in Loop: Header=BB0_30 Depth=2
	cmpl	96(%rsp), %eax          # 4-byte Folded Reload
	leal	1(%rax), %eax
	movl	%eax, %ecx
	jl	.LBB0_30
	jmp	.LBB0_60
	.align	16, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_9 Depth=1
	movl	%r9d, 40(%rsp)          # 4-byte Spill
	movq	120(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %r8
	jmp	.LBB0_60
.LBB0_45:                               # %if.then.189
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r8, %rsi
	callq	*24(%rdi)
	movl	100(%rsp), %esi         # 4-byte Reload
	addl	%esi, %esi
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	callq	*88(%rdi)
	movq	%rax, %r8
	testq	%r8, %r8
	jne	.LBB0_60
	jmp	.LBB0_46
.LBB0_48:                               # %if.then.217
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r8, %rsi
	callq	*24(%rdi)
	movl	100(%rsp), %esi         # 4-byte Reload
	addl	%esi, %esi
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	callq	*88(%rdi)
	movq	%rax, %r8
	testq	%r8, %r8
	movq	%rbx, %rbp
	je	.LBB0_46
	.align	16, 0x90
.LBB0_60:                               # %cleanup.397.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movl	96(%rsp), %r13d         # 4-byte Reload
	subl	40(%rsp), %r13d         # 4-byte Folded Reload
	incl	%r13d
	leal	26(%rbp), %r14d
	subl	%r8d, %r14d
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	subl	48(%rsp), %ebp          # 4-byte Folded Reload
	movl	$27, %edi
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$42, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	%ebp, %edi
	sarl	$7, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	andl	$127, %ebp
	addl	%ebp, %ebp
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$42, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$4, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	%r14d, %edi
	sarl	$8, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movzbl	%r14b, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$26, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	%r13d, %edi
	sarl	$8, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	andl	$240, %r13d
	movl	%r13d, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	44(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %edi
	sarl	$8, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	andl	$240, %ebp
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	96(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %edi
	sarl	$8, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$34, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$51, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$68, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$85, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movq	120(%rsp), %rdx         # 8-byte Reload
	subq	112(%rsp), %rdx         # 8-byte Folded Reload
	movl	$1, %esi
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rcx
	callq	fwrite
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	leal	104(%rdx), %r13d
	xorl	$1, 84(%rsp)            # 4-byte Folded Spill
	movq	72(%rsp), %r14          # 8-byte Reload
	movl	836(%r14), %eax
	leal	-208(%rax), %ecx
	cmpl	%ecx, %r13d
	movq	%rbx, %rbp
	jl	.LBB0_9
	jmp	.LBB0_61
.LBB0_2:                                # %if.then
	testq	%r12, %r12
	jne	.LBB0_3
	jmp	.LBB0_4
.LBB0_7:
	movq	%rbp, %rbx
	jmp	.LBB0_61
.LBB0_46:                               # %cleanup.397
	xorl	%ebp, %ebp
	movq	72(%rsp), %r14          # 8-byte Reload
.LBB0_3:                                # %quit_ignomiously
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB0_4:                                # %if.end
	movl	$-25, %ebx
	testq	%rbp, %rbp
	je	.LBB0_62
# BB#5:                                 # %if.then.19
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	jmp	.LBB0_62
.LBB0_14:                               # %cleanup.397.thread248
	movq	120(%rsp), %rbx         # 8-byte Reload
.LBB0_61:                               # %for.end.402
	movl	$lxm5700m_print_page.bottom, %edi
	movl	$1, %esi
	movl	$4, %edx
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rcx
	callq	fwrite
	movq	%rbp, %rdi
	callq	fflush
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	xorl	%ebx, %ebx
.LBB0_62:                               # %cleanup.417
	movl	%ebx, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lxm5700m_print_page, .Lfunc_end0-lxm5700m_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	lxm_get_params,@function
lxm_get_params:                         # @lxm_get_params
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB1_1
# BB#2:                                 # %if.end
	addq	$18472, %rbx            # imm = 0x4828
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	param_write_int         # TAILCALL
.LBB1_1:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	lxm_get_params, .Lfunc_end1-lxm_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	lxm_put_params,@function
lxm_put_params:                         # @lxm_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 48
.Ltmp22:
	.cfi_offset %rbx, -32
.Ltmp23:
	.cfi_offset %r14, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18472(%r14), %eax
	movl	%eax, 12(%rsp)
	leaq	12(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	movl	12(%rsp), %eax
	decl	%eax
	cmpl	$32, %eax
	jb	.LBB2_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rax
	movl	$.L.str.2, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
.LBB2_2:                                # %if.end
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	js	.LBB2_5
# BB#3:                                 # %if.end.6
	testl	%eax, %eax
	movl	%eax, %ecx
	js	.LBB2_5
# BB#4:                                 # %if.end.9
	movl	12(%rsp), %ecx
	movl	%ecx, 18472(%r14)
	xorl	%ecx, %ecx
	cmpl	$1, %ebp
	cmovel	%eax, %ecx
.LBB2_5:                                # %cleanup
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lxm_put_params, .Lfunc_end2-lxm_put_params
	.cfi_endproc

	.type	lxm5700m_procs,@object  # @lxm5700m_procs
	.section	.rodata,"a",@progbits
	.align	8
lxm5700m_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	lxm_get_params
	.quad	lxm_put_params
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
	.size	lxm5700m_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lxm5700m"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_lxm5700m_device,@object # @gs_lxm5700m_device
	.data
	.globl	gs_lxm5700m_device
	.align	8
gs_lxm5700m_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	lxm5700m_procs
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
	.long	3270508544              # float -1.200000e+02
	.long	2147483648              # float -0.000000e+00
	.long	1097229926              # float 1.440000e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
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
	.quad	lxm5700m_print_page
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
	.long	16                      # 0x10
	.zero	4
	.size	gs_lxm5700m_device, 18480

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"HeadSeparation"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"lxm_print_page(buf1)"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"lxm_print_page(swipeBuf)"
	.size	.L.str.4, 25

	.type	lxm5700m_print_page.init_string,@object # @lxm5700m_print_page.init_string
	.section	.rodata,"a",@progbits
	.align	16
lxm5700m_print_page.init_string:
	.ascii	"\245\000\006@\003\003\300\017\017\245\000\003@\004\005\245\000\003@\004\006\245\000\003@\004\007\245\000\003@\004\b\245\000\004@\340\013\003\245\000\013@\340A\000\000\000\000\000\000\000\002\245\000\006@\005\000\000\200\000\033*\007s0\033*m\000\024\003\204\002\000\001\364\033*\007c\033*m\000B\000\000\245\000\005@\340\200\b\007\033*m\000@\025\007\017\017"
	.size	lxm5700m_print_page.init_string, 107

	.type	lxm5700m_print_page.bottom,@object # @lxm5700m_print_page.bottom
lxm5700m_print_page.bottom:
	.ascii	"\033*\007e"
	.size	lxm5700m_print_page.bottom, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
