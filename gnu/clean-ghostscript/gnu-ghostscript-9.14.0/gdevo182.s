	.text
	.file	"gdevo182.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1120403456              # float 100
	.text
	.align	16, 0x90
	.type	oki_print_page,@function
oki_print_page:                         # @oki_print_page
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
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movss	888(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 72(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebp
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$16, %esi
	movl	$.L.str.2, %ecx
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, %r14
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$8, %esi
	movl	$.L.str.3, %ecx
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, %r13
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$8, %esi
	movl	$.L.str.4, %ecx
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, %r15
	movq	%r15, 48(%rsp)          # 8-byte Spill
	testq	%r14, %r14
	movl	$-25, 76(%rsp)          # 4-byte Folded Spill
	je	.LBB0_54
# BB#1:                                 # %entry
	testq	%r13, %r13
	je	.LBB0_54
# BB#2:                                 # %entry
	testq	%r15, %r15
	je	.LBB0_54
# BB#3:                                 # %if.end
	movl	$.L.str.5, %edi
	movl	$1, %esi
	movl	$12, %edx
	movq	%r12, %rcx
	callq	fwrite
	movl	$7, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jbe	.LBB0_5
# BB#4:                                 # %if.then.26
	movl	$.L.str.6, %edi
	movl	$1, %esi
	movl	$2, %edx
	movq	%r12, %rcx
	callq	fwrite
	movl	$14, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
.LBB0_5:                                # %while.cond.preheader
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	cmpl	$0, 836(%rbx)
	jle	.LBB0_53
# BB#6:                                 # %while.body.lr.ph
	leaq	1(%r14), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	leal	-1(%rbp), %eax
	movslq	%ebp, %rcx
	leaq	(%rcx,%r14), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rcx), %ecx
	imull	%ebp, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	leal	(%rbp,%rbp), %ecx
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	cltq
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$12, %eax
	movl	$6, %ecx
	cmoval	%eax, %ecx
	leal	-1(%rcx), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	jmp	.LBB0_7
.LBB0_12:                               # %if.else
                                        #   in Loop: Header=BB0_7 Depth=1
	addl	$2, %ebp
	jmp	.LBB0_52
	.align	16, 0x90
.LBB0_7:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #     Child Loop BB0_47 Depth 2
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	56(%rsp), %rcx          # 8-byte Reload
	callq	gdev_prn_copy_scan_lines
	movl	%eax, 76(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB0_53
# BB#8:                                 # %if.end.35
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpb	$0, (%r14)
	jne	.LBB0_14
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	%r14, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB0_14
# BB#10:                                # %if.then.43
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	80(%rsp), %rsi          # 8-byte Reload
	incl	%esi
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jbe	.LBB0_12
# BB#11:                                # %if.then.45
                                        #   in Loop: Header=BB0_7 Depth=1
	incl	%ebp
	jmp	.LBB0_52
	.align	16, 0x90
.LBB0_13:                               # %while.body.52
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$.L.str.7, %edi
	movq	%r12, %rsi
	callq	fputs
	addl	$-127, %ebp
.LBB0_14:                               # %while.body.52
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$127, %ebp
	jg	.LBB0_13
# BB#15:                                # %while.end
                                        #   in Loop: Header=BB0_7 Depth=1
	testl	%ebp, %ebp
	je	.LBB0_17
# BB#16:                                # %if.then.56
                                        #   in Loop: Header=BB0_7 Depth=1
	movsbl	%bpl, %edx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB0_17:                               # %if.end.60
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %esi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	20(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_18
# BB#19:                                # %if.end.68
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	%ebp, %ecx
	incl	%ecx
	movq	64(%rsp), %rax          # 8-byte Reload
	subl	%ecx, %eax
	jle	.LBB0_21
# BB#20:                                # %if.then.72
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	56(%rsp), %rdx          # 8-byte Reload
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r14), %rdi
	imull	%edx, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB0_21:                               # %if.end.80
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	832(%rbx), %edx
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jbe	.LBB0_23
# BB#22:                                # %if.then.82
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	%ebp, 76(%rsp)          # 4-byte Spill
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	16(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %ecx
	callq	oki_transpose
	movl	832(%rbx), %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	movl	%ebp, %ecx
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_23:                               # %if.else.89
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	%ebp, 76(%rsp)          # 4-byte Spill
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	56(%rsp), %rcx          # 8-byte Reload
.LBB0_24:                               # %if.end.91
                                        #   in Loop: Header=BB0_7 Depth=1
	callq	oki_transpose
	movslq	832(%rbx), %rax
	leaq	(%rax,%r13), %rax
	.align	16, 0x90
.LBB0_25:                               # %while.cond.i
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbp
	cmpq	%r13, %rbp
	jbe	.LBB0_26
# BB#27:                                # %land.rhs.i
                                        #   in Loop: Header=BB0_25 Depth=2
	leaq	-1(%rbp), %rax
	movzbl	-1(%rbp), %ecx
	cmpl	$128, %ecx
	je	.LBB0_25
# BB#28:                                # %land.lhs.true.i.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	xorl	%ebx, %ebx
	movq	%r13, %r15
	.align	16, 0x90
.LBB0_29:                               # %land.lhs.true.i
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15), %eax
	cmpl	$128, %eax
	jne	.LBB0_32
# BB#30:                                # %land.rhs.10.i
                                        #   in Loop: Header=BB0_29 Depth=2
	leaq	1(%r15), %rsi
	movq	%r15, %rdi
	movq	96(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB0_32
# BB#31:                                # %while.body.16.i
                                        #   in Loop: Header=BB0_29 Depth=2
	incl	%ebx
	addq	88(%rsp), %r15          # 8-byte Folded Reload
	cmpq	%rbp, %r15
	movl	$0, %r14d
	jb	.LBB0_29
	jmp	.LBB0_33
	.align	16, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	xorl	%r14d, %r14d
	movq	%r13, %r15
	jmp	.LBB0_36
	.align	16, 0x90
.LBB0_32:                               # %if.then.22.i
                                        #   in Loop: Header=BB0_7 Depth=1
	subq	%r15, %rbp
	movq	%rbp, %r14
.LBB0_33:                               # %oki_compress.exit
                                        #   in Loop: Header=BB0_7 Depth=1
	testl	%ebx, %ebx
	jle	.LBB0_35
	.align	16, 0x90
.LBB0_34:                               # %for.body
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$32, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	decl	%ebx
	jne	.LBB0_34
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	movq	24(%rsp), %rbx          # 8-byte Reload
.LBB0_36:                               # %for.end
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$.L.str.9, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite
	movslq	%r14d, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	fwrite
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jbe	.LBB0_50
# BB#37:                                # %if.then.102
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$.L.str.10, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movslq	832(%rbx), %rax
	movq	48(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	.align	16, 0x90
.LBB0_38:                               # %while.cond.i.104
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbp
	cmpq	%rdx, %rbp
	jbe	.LBB0_39
# BB#40:                                # %land.rhs.i.107
                                        #   in Loop: Header=BB0_38 Depth=2
	leaq	-1(%rbp), %rax
	movzbl	-1(%rbp), %ecx
	cmpl	$128, %ecx
	je	.LBB0_38
# BB#41:                                # %land.lhs.true.i.117.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	movq	%rdx, %r15
	.align	16, 0x90
.LBB0_42:                               # %land.lhs.true.i.117
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15), %eax
	cmpl	$128, %eax
	jne	.LBB0_45
# BB#43:                                # %land.rhs.10.i.121
                                        #   in Loop: Header=BB0_42 Depth=2
	leaq	1(%r15), %rsi
	movq	%r15, %rdi
	movq	96(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB0_45
# BB#44:                                # %while.body.16.i.125
                                        #   in Loop: Header=BB0_42 Depth=2
	incl	%ebx
	addq	88(%rsp), %r15          # 8-byte Folded Reload
	cmpq	%rbp, %r15
	movl	$0, %r14d
	jb	.LBB0_42
	jmp	.LBB0_46
	.align	16, 0x90
.LBB0_50:                               # %if.else.118
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$.L.str.11, %edi
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rcx
	callq	fwrite
	jmp	.LBB0_51
	.align	16, 0x90
.LBB0_39:                               #   in Loop: Header=BB0_7 Depth=1
	xorl	%r14d, %r14d
	movq	%rdx, %r15
	jmp	.LBB0_49
.LBB0_45:                               # %if.then.22.i.130
                                        #   in Loop: Header=BB0_7 Depth=1
	subq	%r15, %rbp
	movq	%rbp, %r14
.LBB0_46:                               # %oki_compress.exit136
                                        #   in Loop: Header=BB0_7 Depth=1
	testl	%ebx, %ebx
	jle	.LBB0_48
	.align	16, 0x90
.LBB0_47:                               # %for.body.109
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$32, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	decl	%ebx
	jne	.LBB0_47
.LBB0_48:                               #   in Loop: Header=BB0_7 Depth=1
	movq	24(%rsp), %rbx          # 8-byte Reload
.LBB0_49:                               # %for.end.113
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$.L.str.9, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite
	movslq	%r14d, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	fwrite
	movl	$.L.str.10, %esi
	movl	$13, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB0_51:                               # %if.end.120
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	addl	%eax, %esi
	xorl	%ebp, %ebp
.LBB0_52:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	836(%rbx), %esi
	jl	.LBB0_7
	jmp	.LBB0_53
.LBB0_18:
	movl	%ebp, 76(%rsp)          # 4-byte Spill
.LBB0_53:                               # %xit
	movl	$12, %edi
	movq	%r12, %rsi
	callq	fputc
	movq	%r12, %rdi
	callq	fflush
.LBB0_54:                               # %bail
	testq	%r13, %r13
	je	.LBB0_56
# BB#55:                                # %if.then.127
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
.LBB0_56:                               # %if.end.133
	testq	%r15, %r15
	movl	76(%rsp), %ebp          # 4-byte Reload
	je	.LBB0_58
# BB#57:                                # %if.then.136
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB0_58:                               # %if.end.143
	testq	%r14, %r14
	je	.LBB0_60
# BB#59:                                # %if.then.146
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB0_60:                               # %if.end.153
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	oki_print_page, .Lfunc_end0-oki_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	oki_transpose,@function
oki_transpose:                          # @oki_transpose
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	jle	.LBB1_16
# BB#1:                                 # %while.body.lr.ph
	movslq	%ecx, %r9
	incl	%edx
	movl	$128, %r8d
	movl	$128, %r11d
	.align	16, 0x90
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	testl	%r11d, %eax
	setne	%r10b
	leaq	(%rdi,%r9), %rax
	movzbl	(%rdi,%r9), %ecx
	testl	%r11d, %ecx
	je	.LBB1_3
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	orb	$-126, %r10b
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_3:                                #   in Loop: Header=BB1_2 Depth=1
	orb	$-128, %r10b
.LBB1_5:                                # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r9,%rax), %ecx
	addq	%r9, %rax
	testl	%r11d, %ecx
	je	.LBB1_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	orb	$4, %r10b
.LBB1_7:                                # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r9,%rax), %ecx
	addq	%r9, %rax
	testl	%r11d, %ecx
	je	.LBB1_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	orb	$8, %r10b
.LBB1_9:                                # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r9,%rax), %ecx
	addq	%r9, %rax
	testl	%r11d, %ecx
	je	.LBB1_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	addb	$16, %r10b
.LBB1_11:                               # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r9,%rax), %ecx
	addq	%r9, %rax
	testl	%r11d, %ecx
	je	.LBB1_13
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	addb	$32, %r10b
.LBB1_13:                               # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r9,%rax), %eax
	testl	%r11d, %eax
	je	.LBB1_15
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	addb	$64, %r10b
.LBB1_15:                               # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	%r10b, (%rsi)
	incq	%rsi
	sarl	%r11d
	leaq	1(%rdi), %rax
	testl	%r11d, %r11d
	cmoveq	%rax, %rdi
	cmovel	%r8d, %r11d
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB1_2
.LBB1_16:                               # %while.end
	retq
.Lfunc_end1:
	.size	oki_transpose, .Lfunc_end1-oki_transpose
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"oki182"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_oki182_device,@object # @gs_oki182_device
	.section	.rodata,"a",@progbits
	.globl	gs_oki182_device
	.align	8
gs_oki182_device:
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
	.long	576                     # 0x240
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141899264              # float 5.760000e+02
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
	.quad	oki_print_page
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
	.size	gs_oki182_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"oki_print_page(in)"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"oki_print_page(out1)"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"oki_print_page(out2)"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\030\034\033%C001\033%S0"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033R"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033%5\177"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033%%5%c"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\003"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\003\002\r\033%%5%c"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\003\016\003\002"
	.size	.L.str.11, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
