	.text
	.file	"gdevbj10.bc"
	.align	16, 0x90
	.type	bj10e_print_page,@function
bj10e_print_page:                       # @bj10e_print_page
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
	movq	%rsi, %r13
	movq	%r13, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r14d
	movl	%r14d, 36(%rsp)         # 4-byte Spill
	cvttss2si	884(%rbp), %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	cvttss2si	888(%rbp), %r15d
	cmpl	$180, %eax
	setne	%al
	movzbl	%al, %eax
	leal	11(%rax), %ecx
	cmpl	$180, %r15d
	leal	14(%rax,%rax), %eax
	cmovel	%ecx, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	setne	%al
	movzbl	%al, %eax
	leal	3(%rax,%rax,2), %ecx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	leal	(%rax,%rax,2), %eax
	leal	24(,%rax,8), %ebx
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$8, %esi
	movl	$.L.str.3, %ecx
	movl	%r14d, %edx
	callq	*88(%rdi)
	movq	%rax, %r12
	movq	%r12, 88(%rsp)          # 8-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %ecx
	movl	%ebx, %esi
	movl	%r14d, %edx
	callq	*88(%rdi)
	movq	%rax, %r14
	movq	%rbp, %rdi
	callq	gdev_prn_print_scan_lines
	movl	%eax, %ebx
	testq	%r12, %r12
	movl	$-25, %ebp
	je	.LBB0_40
# BB#1:                                 # %entry
	testq	%r14, %r14
	je	.LBB0_40
# BB#2:                                 # %if.end
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movl	$.L.str.5, %edi
	movl	$1, %esi
	movl	$7, %edx
	movq	%r13, %rcx
	callq	fwrite
	movl	$.L.str.6, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r13, %rcx
	callq	fwrite
	movl	$.L.str.7, %edi
	movl	$1, %esi
	movl	$7, %edx
	movq	%r13, %rcx
	callq	fwrite
	movzbl	%r15b, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	%r15d, %edi
	sarl	$8, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	$.L.str.8, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r13, %rcx
	callq	fwrite
	movq	%rbx, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	leal	-1(%r15,%rbp), %eax
	cltd
	idivl	%r15d
	movl	%eax, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%eax, %eax
	testl	%ebp, %ebp
	movl	36(%rsp), %ebx          # 4-byte Reload
	movq	152(%rsp), %r15         # 8-byte Reload
	jle	.LBB0_39
# BB#3:                                 # %while.body.lr.ph
	leal	(%r15,%r15,2), %eax
	cmpl	$180, 144(%rsp)         # 4-byte Folded Reload
	sete	23(%rsp)                # 1-byte Folded Spill
	movl	%ebp, %ecx
	movl	100(%rsp), %edx         # 4-byte Reload
	subl	%edx, %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movslq	%ebx, %rcx
	leaq	(%rcx,%r12), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%edx, %ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	160(%rsp), %rcx
	xorl	%esi, %esi
	xorl	%ebp, %ebp
.LBB0_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #     Child Loop BB0_24 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #         Child Loop BB0_33 Depth 4
	movq	112(%rsp), %rdi         # 8-byte Reload
	movslq	832(%rdi), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	%rsi, %r14
	movq	%r12, %rdx
	callq	gdev_prn_get_bits
	testl	%eax, %eax
	js	.LBB0_5
# BB#7:                                 # %if.end.47
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	160(%rsp), %rdi
	cmpl	$32, %ebx
	movl	%ebx, %ecx
	movq	%r14, %rsi
	jb	.LBB0_10
	.align	16, 0x90
.LBB0_8:                                # %for.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rdi), %rdx
	orq	(%rdi), %rdx
	orq	16(%rdi), %rdx
	orq	24(%rdi), %rdx
	jne	.LBB0_12
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB0_8 Depth=2
	addq	$32, %rdi
	addl	$-32, %ecx
	cmpl	$31, %ecx
	ja	.LBB0_8
	.align	16, 0x90
.LBB0_10:                               # %while.cond.63
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ecx, %ecx
	jle	.LBB0_45
# BB#11:                                # %while.body.66
                                        #   in Loop: Header=BB0_10 Depth=2
	decl	%ecx
	cmpb	$0, (%rdi)
	leaq	1(%rdi), %rdi
	je	.LBB0_10
.LBB0_12:                               # %cleanup.cont
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movslq	%r15d, %r14
	movq	104(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rbp), %eax
	subl	%esi, %eax
	cmpl	%esi, %ecx
	cmovll	%eax, %ebp
	cmovlel	%ecx, %esi
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	cmpl	$256, %ebp              # imm = 0x100
	jl	.LBB0_14
	.align	16, 0x90
.LBB0_13:                               # %while.body.82
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.9, %edi
	movq	%r13, %rsi
	callq	fputs
	addl	$-255, %ebp
	cmpl	$255, %ebp
	jg	.LBB0_13
.LBB0_14:                               # %while.end.85
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	imulq	%r14, %rax
	movq	%rax, %r14
	testl	%ebp, %ebp
	je	.LBB0_16
# BB#15:                                # %if.then.87
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	fprintf
.LBB0_16:                               # %if.end.89
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%r14,%rax), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	cmpl	%ecx, %esi
	movq	8(%rsp), %rdx           # 8-byte Reload
	cmovel	%edx, %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	movq	%rax, %r14
	xorl	%ebp, %ebp
	movl	36(%rsp), %r13d         # 4-byte Reload
	.align	16, 0x90
.LBB0_17:                               # %for.body.97
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	subl	%esi, %ecx
	cmpl	$8, %ecx
	movl	$8, %eax
	cmovgl	%eax, %ecx
	imull	%r13d, %ecx
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rdx
	callq	gdev_prn_copy_scan_lines
	testl	%eax, %eax
	js	.LBB0_6
# BB#18:                                # %if.end.111
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	%ebx, 132(%rsp)         # 4-byte Spill
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	cmpl	$7, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	jg	.LBB0_20
# BB#19:                                # %if.then.114
                                        #   in Loop: Header=BB0_17 Depth=2
	movq	152(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	imull	%r13d, %eax
	cltq
	leaq	(%rax,%r12), %rdi
	movl	$8, %eax
	subl	%ecx, %eax
	imull	%r13d, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB0_20:                               # %for.cond.123.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	testl	%r13d, %r13d
	movq	%r14, %rbp
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movq	80(%rsp), %r14          # 8-byte Reload
	movq	72(%rsp), %rbx          # 8-byte Reload
	jle	.LBB0_22
	.align	16, 0x90
.LBB0_21:                               # %for.body.126
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r12, %rdi
	movl	%r13d, %esi
	movq	%rbp, %rdx
	movl	%r15d, %ecx
	callq	memflip8x8
	incq	%r12
	addq	%rbx, %rbp
	cmpq	%r14, %r12
	jb	.LBB0_21
.LBB0_22:                               # %for.inc.140
                                        #   in Loop: Header=BB0_17 Depth=2
	movq	120(%rsp), %r14         # 8-byte Reload
	incq	%r14
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rax         # 8-byte Reload
	leal	(%rsi,%rax), %esi
	movq	136(%rsp), %rbp         # 8-byte Reload
	addl	%eax, %ebp
	movl	132(%rsp), %ebx         # 4-byte Reload
	addl	$8, %ebx
	cmpl	100(%rsp), %ebx         # 4-byte Folded Reload
	movq	88(%rsp), %r12          # 8-byte Reload
	jl	.LBB0_17
# BB#23:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rbx
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB0_24:                               # %while.cond.143.loopexit
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #         Child Loop BB0_33 Depth 4
	cmpq	%rdx, %rax
	jae	.LBB0_37
# BB#25:                                # %while.body.146
                                        #   in Loop: Header=BB0_24 Depth=2
	movq	%rax, %r13
	movq	%rdx, %rcx
	subq	%r13, %rcx
	cmpq	%rsi, %rcx
	movq	%rsi, %r12
	cmovleq	%rcx, %r12
	cmovgel	%esi, %ecx
	.align	16, 0x90
.LBB0_26:                               # %while.cond.159
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%ecx, %ecx
	jle	.LBB0_24
# BB#27:                                # %while.body.163
                                        #   in Loop: Header=BB0_26 Depth=3
	decl	%ecx
	cmpb	$0, (%rax)
	leaq	1(%rax), %rax
	je	.LBB0_26
# BB#28:                                # %if.end.177
                                        #   in Loop: Header=BB0_24 Depth=2
	movq	%r13, %rax
	subq	%rbx, %rax
	jbe	.LBB0_30
# BB#29:                                # %if.then.180
                                        #   in Loop: Header=BB0_24 Depth=2
	movq	%rdx, %r14
	cqto
	idivq	%rsi
	movq	%rax, %rbp
	movb	23(%rsp), %cl           # 1-byte Reload
	shll	%cl, %ebp
	movzbl	%bpl, %edx
	sarl	$8, %ebp
	movq	%rsi, %rbx
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	64(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %ecx
	callq	fprintf
	movq	%r14, %rdx
	movq	%rbx, %rsi
.LBB0_30:                               # %if.end.194
                                        #   in Loop: Header=BB0_24 Depth=2
	movslq	%r12d, %rax
	leaq	(%rax,%r13), %rbx
	jmp	.LBB0_31
	.align	16, 0x90
.LBB0_35:                               # %if.else.229
                                        #   in Loop: Header=BB0_31 Depth=3
	movslq	%r12d, %rax
	addq	%rax, %rbx
.LBB0_31:                               # %if.end.194
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_33 Depth 4
	cmpq	%rdx, %rbx
	jae	.LBB0_36
# BB#32:                                # %while.body.200
                                        #   in Loop: Header=BB0_31 Depth=3
	movq	%rdx, %rax
	subq	%rbx, %rax
	cmpq	%rsi, %rax
	movq	%rsi, %r12
	cmovleq	%rax, %r12
	cmovgel	%esi, %eax
	movq	%rbx, %rcx
	.align	16, 0x90
.LBB0_33:                               # %while.cond.216
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        #       Parent Loop BB0_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testl	%eax, %eax
	jle	.LBB0_36
# BB#34:                                # %while.body.220
                                        #   in Loop: Header=BB0_33 Depth=4
	decl	%eax
	cmpb	$0, (%rcx)
	leaq	1(%rcx), %rcx
	je	.LBB0_33
	jmp	.LBB0_35
	.align	16, 0x90
.LBB0_36:                               # %cleanup.247
                                        #   in Loop: Header=BB0_24 Depth=2
	movq	%rbx, %rbp
	subq	%r13, %rbp
	incq	%rbp
	movzbl	%bpl, %edx
	movl	%ebp, %ecx
	sarl	$8, %ecx
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%r13, %r14
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	movl	60(%rsp), %r8d          # 4-byte Reload
	callq	fprintf
	shlq	$32, %rbp
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	addq	%rax, %rbp
	sarq	$32, %rbp
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	callq	fwrite
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movslq	%r12d, %rax
	cmpq	%rdx, %rbx
	leaq	(%rax,%rbx), %rax
	jb	.LBB0_24
.LBB0_37:                               # %do.end
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	$13, %edi
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rsi
	callq	fputc
	movq	88(%rsp), %r12          # 8-byte Reload
	movl	36(%rsp), %ebx          # 4-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	4(%rsp), %eax           # 4-byte Reload
	leaq	160(%rsp), %rcx
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	136(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB0_38
	.align	16, 0x90
.LBB0_45:                               # %cleanup
                                        #   in Loop: Header=BB0_4 Depth=1
	incl	%esi
	incl	%ebp
	leaq	160(%rsp), %rcx
	movq	8(%rsp), %rdx           # 8-byte Reload
.LBB0_38:                               # %cleanup.255.thread
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	%edx, %esi
	jl	.LBB0_4
	jmp	.LBB0_39
.LBB0_5:
	movq	%r13, 64(%rsp)          # 8-byte Spill
.LBB0_6:                                # %cleanup.255
	movq	64(%rsp), %r13          # 8-byte Reload
.LBB0_39:                               # %xit
	movl	%eax, %ebp
	movl	$12, %edi
	movq	%r13, %rsi
	callq	fputc
	movq	%r13, %rdi
	callq	fflush
	movq	24(%rsp), %r14          # 8-byte Reload
.LBB0_40:                               # %fin
	testq	%r14, %r14
	je	.LBB0_42
# BB#41:                                # %if.then.268
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB0_42:                               # %if.end.274
	testq	%r12, %r12
	je	.LBB0_44
# BB#43:                                # %if.then.277
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB0_44:                               # %cleanup.285
	movl	%ebp, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	bj10e_print_page, .Lfunc_end0-bj10e_print_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4620918397663497421     # double 8.4000000000000004
	.text
	.align	16, 0x90
	.type	bj200_open,@function
bj200_open:                             # @bj200_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cvtsi2ssl	832(%rbx), %xmm0
	divss	884(%rbx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$bj200_open.a4_margins, %eax
	movl	$bj200_open.letter_margins, %esi
	cmovaeq	%rax, %rsi
	movl	$1, %edx
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end1:
	.size	bj200_open, .Lfunc_end1-bj200_open
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4620918397663497421     # double 8.4000000000000004
	.text
	.align	16, 0x90
	.type	bj10e_open,@function
bj10e_open:                             # @bj10e_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cvtsi2ssl	832(%rbx), %xmm0
	divss	884(%rbx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$bj10e_open.a4_margins, %eax
	movl	$bj10e_open.letter_margins, %esi
	cmovaeq	%rax, %rsi
	movl	$1, %edx
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end2:
	.size	bj10e_open, .Lfunc_end2-bj10e_open
	.cfi_endproc

	.type	prn_bj200_procs,@object # @prn_bj200_procs
	.data
	.align	8
prn_bj200_procs:
	.quad	bj200_open
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
	.size	prn_bj200_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bj200"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_bj200_device,@object # @gs_bj200_device
	.section	.rodata,"a",@progbits
	.globl	gs_bj200_device
	.align	8
gs_bj200_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bj200_procs
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
	.quad	bj10e_print_page
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
	.size	gs_bj200_device, 18472

	.type	prn_bj10e_procs,@object # @prn_bj10e_procs
	.data
	.align	8
prn_bj10e_procs:
	.quad	bj10e_open
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
	.size	prn_bj10e_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"bj10e"
	.size	.L.str.2, 6

	.type	gs_bj10e_device,@object # @gs_bj10e_device
	.section	.rodata,"a",@progbits
	.globl	gs_bj10e_device
	.align	8
gs_bj10e_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bj10e_procs
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
	.quad	bj10e_print_page
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
	.size	gs_bj10e_device, 18472

	.type	bj200_open.a4_margins,@object # @bj200_open.a4_margins
	.align	16
bj200_open.a4_margins:
	.long	1040522936              # float 1.300000e-01
	.long	1049918177              # float 2.900000e-01
	.long	1040522936              # float 1.300000e-01
	.long	1039516303              # float 1.200000e-01
	.size	bj200_open.a4_margins, 16

	.type	bj200_open.letter_margins,@object # @bj200_open.letter_margins
	.align	16
bj200_open.letter_margins:
	.long	1048576000              # float 2.500000e-01
	.long	1049918177              # float 2.900000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1039516303              # float 1.200000e-01
	.size	bj200_open.letter_margins, 16

	.type	bj10e_open.a4_margins,@object # @bj10e_open.a4_margins
	.align	16
bj10e_open.a4_margins:
	.long	1040522936              # float 1.300000e-01
	.long	1057635697              # float 5.400000e-01
	.long	1040522936              # float 1.300000e-01
	.long	1051260355              # float 3.300000e-01
	.size	bj10e_open.a4_margins, 16

	.type	bj10e_open.letter_margins,@object # @bj10e_open.letter_margins
	.align	16
bj10e_open.letter_margins:
	.long	1048576000              # float 2.500000e-01
	.long	1057635697              # float 5.400000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1051260355              # float 3.300000e-01
	.size	bj10e_open.letter_margins, 16

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"bj10e_print_page(in)"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"bj10e_print_page(out)"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.cst8,"aM",@progbits,8
.L.str.5:
	.asciz	"\033[K\002\000\000$"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.cst4,"aM",@progbits,4
.L.str.6:
	.asciz	"\0335\000"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.cst8,"aM",@progbits,8
.L.str.7:
	.asciz	"\033[\\\004\000\000\000"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.cst4,"aM",@progbits,4
.L.str.8:
	.asciz	"\033C\000"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"\033J\377"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033J%c"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033d%c%c"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033[g%c%c%c"
	.size	.L.str.12, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
