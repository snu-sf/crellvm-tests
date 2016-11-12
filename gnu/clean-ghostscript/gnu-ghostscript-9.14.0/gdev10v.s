	.text
	.file	"gdev10v.bc"
	.align	16, 0x90
	.type	bj10v_print_page,@function
bj10v_print_page:                       # @bj10v_print_page
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
	movq	%rdi, %rbp
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r15d
	cvttss2si	884(%rbp), %eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	cvttss2si	888(%rbp), %edx
	movl	%edx, 88(%rsp)          # 4-byte Spill
	cmpl	$180, %eax
	movl	$.L.str.3, %eax
	movl	$.L.str.4, %ecx
	cmoveq	%rax, %rcx
	cmpl	$180, %edx
	movl	$.L.str.5, %eax
	cmoveq	%rcx, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movslq	%edx, %r12
	imulq	$-1240768329, %r12, %r13 # imm = 0xFFFFFFFFB60B60B7
	shrq	$32, %r13
	addl	%edx, %r13d
	movl	%r13d, %eax
	shrl	$31, %eax
	sarl	$7, %r13d
	addl	%eax, %r13d
	leal	(,%r13,8), %eax
	leal	(%rax,%rax,2), %r14d
	movl	%r14d, 124(%rsp)        # 4-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$8, %esi
	movl	$.L.str.6, %ecx
	movl	%r15d, %edx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %ecx
	movl	%r14d, %esi
	movl	152(%rsp), %r14d        # 4-byte Reload
	movl	%r15d, %edx
	callq	*88(%rdi)
	cmpl	$360, %r12d             # imm = 0x168
	setne	%cl
	cmpl	$360, %r14d             # imm = 0x168
	movzbl	%cl, %ecx
	leal	1(%rcx,%rcx), %ecx
	movl	$3, %edx
	cmovel	%ecx, %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	testq	%rbx, %rbx
	movl	$-1, %ebx
	je	.LBB0_13
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB0_13
# BB#2:                                 # %if.end
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	17176(%rbp), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
	xorl	%ebx, %ebx
	cmpl	$0, 836(%rbp)
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	jle	.LBB0_12
# BB#3:                                 # %while.body.lr.ph
	movq	%r13, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	leal	(%rdx,%rdx,2), %r12d
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	movslq	%r14d, %rax
	imulq	$-1240768329, %rax, %rcx # imm = 0xFFFFFFFFB60B60B7
	shrq	$32, %rcx
	addl	%r14d, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	$7, %ecx
	addl	%eax, %ecx
	imull	%r12d, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movslq	%r12d, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r15, %r13
	leal	(,%r13,8), %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movslq	%r13d, %rax
	movq	160(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movslq	124(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	1(%rax), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leal	(%rdx,%rdx,2), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
.LBB0_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #       Child Loop BB0_33 Depth 3
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_22 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #         Child Loop BB0_24 Depth 4
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leal	(%rax,%r14), %esi
	xorl	%ecx, %ecx
	movq	128(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	160(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	gdev_prn_get_bits
	testl	%eax, %eax
	js	.LBB0_5
# BB#6:                                 # %if.end.42
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%eax, 92(%rsp)          # 4-byte Spill
	cmpl	$32, %r13d
	movl	%r13d, %eax
	movq	%rbx, %rcx
	jb	.LBB0_9
	.align	16, 0x90
.LBB0_7:                                # %for.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rcx), %rdx
	orq	(%rcx), %rdx
	orq	16(%rcx), %rdx
	orq	24(%rcx), %rdx
	jne	.LBB0_14
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB0_7 Depth=2
	addl	$-32, %eax
	addq	$32, %rcx
	cmpl	$31, %eax
	ja	.LBB0_7
.LBB0_9:                                # %for.end
                                        #   in Loop: Header=BB0_4 Depth=1
	movslq	%eax, %rdx
	movl	$bj10v_print_page.zeroes, %esi
	movq	160(%rsp), %rdi         # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_10
.LBB0_14:                               # %notz
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	832(%r15), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	cmpl	$256, %ebp              # imm = 0x100
	jl	.LBB0_16
	.align	16, 0x90
.LBB0_15:                               # %while.body.73
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	17176(%r15), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	addl	$-255, %ebp
	cmpl	$255, %ebp
	jg	.LBB0_15
.LBB0_16:                               # %while.end
                                        #   in Loop: Header=BB0_4 Depth=1
	testl	%ebp, %ebp
	movq	96(%rsp), %rbx          # 8-byte Reload
	je	.LBB0_18
# BB#17:                                # %if.then.78
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	17176(%r15), %rsi
	movl	$.L.str.10, %edi
	callq	fputs
	movq	17176(%r15), %rsi
	movl	%ebp, %edi
	callq	_IO_putc
.LBB0_18:                               # %for.cond.84.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	xorl	%r14d, %r14d
	cmpl	$179, 88(%rsp)          # 4-byte Folded Reload
	movq	%rbx, %r15
	movq	152(%rsp), %rbp         # 8-byte Reload
	jle	.LBB0_19
	.align	16, 0x90
.LBB0_29:                               # %for.body.87
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_33 Depth 3
	movq	128(%rsp), %rdi         # 8-byte Reload
	movl	%ebp, %esi
	movq	160(%rsp), %rdx         # 8-byte Reload
	movl	120(%rsp), %ecx         # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_12
# BB#30:                                # %if.end.93
                                        #   in Loop: Header=BB0_29 Depth=2
	movl	%r14d, 148(%rsp)        # 4-byte Spill
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	cmpl	$7, %ebx
	movq	160(%rsp), %rbp         # 8-byte Reload
	jg	.LBB0_32
# BB#31:                                # %if.then.96
                                        #   in Loop: Header=BB0_29 Depth=2
	movl	$8, %eax
	subl	%ebx, %eax
	imull	%r13d, %ebx
	movslq	%ebx, %rcx
	leaq	(%rcx,%rbp), %rdi
	imull	%r13d, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB0_32:                               # %for.cond.105.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	testl	%r13d, %r13d
	movq	%rbp, %rbx
	movq	%r15, %rbp
	movq	%r15, 136(%rsp)         # 8-byte Spill
	movq	112(%rsp), %r15         # 8-byte Reload
	movq	104(%rsp), %r14         # 8-byte Reload
	jle	.LBB0_34
	.align	16, 0x90
.LBB0_33:                               # %for.body.110
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%rbp, %rdx
	movl	%r12d, %ecx
	callq	memflip8x8
	incq	%rbx
	addq	%r14, %rbp
	cmpq	%r15, %rbx
	jb	.LBB0_33
.LBB0_34:                               # %for.inc.120
                                        #   in Loop: Header=BB0_29 Depth=2
	movq	136(%rsp), %r15         # 8-byte Reload
	incq	%r15
	movl	148(%rsp), %r14d        # 4-byte Reload
	addl	$8, %r14d
	movq	152(%rsp), %rbp         # 8-byte Reload
	addl	$8, %ebp
	cmpl	124(%rsp), %r14d        # 4-byte Folded Reload
	jl	.LBB0_29
.LBB0_19:                               # %while.cond.124.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	imull	%ecx, %eax
	imull	%r12d, %ecx
	movslq	%ecx, %rcx
	movq	96(%rsp), %r15          # 8-byte Reload
	leaq	(%rcx,%r15), %rsi
	cltq
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	.align	16, 0x90
.LBB0_20:                               # %while.cond.124
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, -2(%rax)
	leaq	-1(%rax), %rax
	je	.LBB0_20
# BB#21:                                # %while.end.130
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%rsi, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	cqto
	idivq	56(%rsp)                # 8-byte Folded Reload
	subl	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rsi, %rbp
	subq	%rax, %rbp
	negq	%rax
	movb	$1, (%rsi,%rax)
	cmpq	%rbp, %r15
	jae	.LBB0_37
.LBB0_22:                               # %while.cond.144.preheader.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #         Child Loop BB0_24 Depth 4
	movq	%r15, %rdi
	movq	%rdi, %rbx
	movq	32(%rsp), %rcx          # 8-byte Reload
	.align	16, 0x90
.LBB0_23:                               # %while.cond.144.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_24 Depth 4
	leaq	-1(%rbx), %r14
	.align	16, 0x90
.LBB0_24:                               # %while.cond.144
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        #       Parent Loop BB0_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpb	$0, 1(%r14)
	leaq	1(%r14), %r14
	je	.LBB0_24
# BB#25:                                # %while.end.150
                                        #   in Loop: Header=BB0_23 Depth=3
	subq	%rbx, %r14
	movq	%r14, %rax
	cqto
	idivq	%rcx
	subq	%rdx, %r14
	movslq	%r14d, %rax
	leaq	(%rbx,%rax), %r15
	cmpl	$10, %eax
	jge	.LBB0_26
# BB#35:                                # %if.else
                                        #   in Loop: Header=BB0_23 Depth=3
	addq	%rcx, %r15
	cmpq	%rbp, %r15
	movq	%r15, %rbx
	jb	.LBB0_23
	jmp	.LBB0_36
	.align	16, 0x90
.LBB0_26:                               # %if.then.163
                                        #   in Loop: Header=BB0_22 Depth=2
	subq	%rdi, %rbx
	testl	%ebx, %ebx
	movq	128(%rsp), %r12         # 8-byte Reload
	jle	.LBB0_28
# BB#27:                                # %if.then.170
                                        #   in Loop: Header=BB0_22 Depth=2
	movl	%ebx, %eax
	cltd
	idivl	68(%rsp)                # 4-byte Folded Reload
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movq	17176(%r12), %rsi
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movl	$27, %edi
	callq	_IO_putc
	movq	17176(%r12), %rsi
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	fputs
	movl	148(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %edi
	movq	17176(%r12), %rsi
	callq	_IO_putc
	movl	148(%rsp), %edi         # 4-byte Reload
	sarl	$8, %edi
	movq	17176(%r12), %rsi
	callq	_IO_putc
	movslq	%ebx, %rdx
	movq	17176(%r12), %rcx
	movl	$1, %esi
	movq	136(%rsp), %rdi         # 8-byte Reload
	callq	fwrite
.LBB0_28:                               # %if.end.172
                                        #   in Loop: Header=BB0_22 Depth=2
	movl	%r14d, %eax
	cltd
	movq	16(%rsp), %rcx          # 8-byte Reload
	idivl	%ecx
	movl	%eax, %ebx
	movq	17176(%r12), %rsi
	movl	$.L.str.11, %edi
	callq	fputs
	movzbl	%bl, %edi
	movq	17176(%r12), %rsi
	callq	_IO_putc
	sarl	$8, %ebx
	movq	17176(%r12), %rsi
	movl	%ebx, %edi
	callq	_IO_putc
	cmpq	%rbp, %r15
	movl	12(%rsp), %r12d         # 4-byte Reload
	jb	.LBB0_22
	jmp	.LBB0_37
	.align	16, 0x90
.LBB0_10:                               # %cleanup
                                        #   in Loop: Header=BB0_4 Depth=1
	incl	%r14d
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %r14d
	movl	$0, %edx
	cmovgel	%edx, %r14d
	setge	%al
	movzbl	%al, %eax
	cmovll	%edx, %ecx
	addl	%eax, %ebp
	movq	152(%rsp), %rax         # 8-byte Reload
	addl	%ecx, %eax
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_36:                               #   in Loop: Header=BB0_4 Depth=1
	movq	%rdi, %r15
.LBB0_37:                               # %for.end.183
                                        #   in Loop: Header=BB0_4 Depth=1
	subq	%r15, %rbp
	jbe	.LBB0_39
# BB#38:                                # %if.then.186
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%ebp, %eax
	cltd
	idivl	68(%rsp)                # 4-byte Folded Reload
	movl	%eax, %r14d
	movq	128(%rsp), %rbx         # 8-byte Reload
	movq	17176(%rbx), %rsi
	movl	$27, %edi
	callq	_IO_putc
	movq	17176(%rbx), %rsi
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	fputs
	movzbl	%r14b, %edi
	movq	17176(%rbx), %rsi
	callq	_IO_putc
	sarl	$8, %r14d
	movq	17176(%rbx), %rsi
	movl	%r14d, %edi
	callq	_IO_putc
	movslq	%ebp, %rdx
	movq	17176(%rbx), %rcx
	movl	$1, %esi
	movq	%r15, %rdi
	callq	fwrite
.LBB0_39:                               # %if.end.193
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	128(%rsp), %r15         # 8-byte Reload
	movq	17176(%r15), %rsi
	movl	$13, %edi
	callq	_IO_putc
	movl	$24, %ebp
	xorl	%r14d, %r14d
	movq	152(%rsp), %rax         # 8-byte Reload
.LBB0_11:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%r15, 128(%rsp)         # 8-byte Spill
	cmpl	836(%r15), %eax
	movl	92(%rsp), %ebx          # 4-byte Reload
	jl	.LBB0_4
	jmp	.LBB0_12
.LBB0_5:
	movl	%eax, %ebx
.LBB0_12:                               # %xit
	movq	128(%rsp), %rbp         # 8-byte Reload
	movq	17176(%rbp), %rsi
	movl	$12, %edi
	callq	_IO_putc
	movq	17176(%rbp), %rdi
	callq	fflush
	movq	24(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	96(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	160(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
.LBB0_13:                               # %cleanup.225
	movl	%ebx, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	bj10v_print_page, .Lfunc_end0-bj10v_print_page
	.cfi_endproc

	.type	prn_bj10v_procs,@object # @prn_bj10v_procs
	.data
	.globl	prn_bj10v_procs
	.align	8
prn_bj10v_procs:
	.quad	gdev_prn_open
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
	.size	prn_bj10v_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bj10v"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_bj10v_device,@object # @gs_bj10v_device
	.data
	.globl	gs_bj10v_device
	.align	8
gs_bj10v_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bj10v_procs
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
	.long	3259037123              # float -4.824000e+01
	.long	3281784668              # float -3.121200e+02
	.long	1092247093              # float 9.648000e+00
	.long	1108476953              # float 3.650400e+01
	.long	1094663012              # float 1.195200e+01
	.long	1115271725              # float 6.242400e+01
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
	.quad	bj10v_print_page
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
	.size	gs_bj10v_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"bj10vh"
	.size	.L.str.2, 7

	.type	gs_bj10vh_device,@object # @gs_bj10vh_device
	.data
	.globl	gs_bj10vh_device
	.align	8
gs_bj10vh_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bj10v_procs
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
	.long	3259037123              # float -4.824000e+01
	.long	3270587187              # float -1.206000e+02
	.long	1092247093              # float 9.648000e+00
	.long	1108476953              # float 3.650400e+01
	.long	1094663012              # float 1.195200e+01
	.long	1103164867              # float 2.412000e+01
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
	.quad	bj10v_print_page
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
	.size	gs_bj10vh_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"*'"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"*("
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"|*"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"bj10v_print_page(in)"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"bj10v_print_page(out)"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033@"
	.size	.L.str.8, 3

	.type	bj10v_print_page.zeroes,@object # @bj10v_print_page.zeroes
	.section	.rodata,"a",@progbits
	.align	16
bj10v_print_page.zeroes:
	.zero	32
	.size	bj10v_print_page.zeroes, 32

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"\033J\377"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033J"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033\\"
	.size	.L.str.11, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
