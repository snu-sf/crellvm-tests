	.text
	.file	"gdevccr.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	ccr_print_page,@function
ccr_print_page:                         # @ccr_print_page
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
	subq	$88, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 144
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
	movq	%rdi, %r13
	movq	%r13, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	832(%r13), %r14d
	movslq	836(%r13), %r12
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movq	24(%r13), %rcx
	movq	200(%rcx), %rdi
	movl	$1, %edx
	movl	$.L.str.2, %ecx
	movl	%eax, %esi
	callq	*88(%rdi)
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_36
# BB#1:                                 # %if.end
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$56, %edx
	movl	$.L.str.3, %ecx
	movl	%r12d, %esi
	callq	*88(%rdi)
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB0_37
# BB#2:                                 # %for.cond.preheader.i
	testl	%r12d, %r12d
	movq	%rax, %r15
	jle	.LBB0_25
# BB#3:                                 # %for.body.i.preheader
	movq	%r15, %rax
	leaq	28(%rax), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	-8(%rbx), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	gs_sprintf
	leaq	-4(%rbx), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	gs_sprintf
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	gs_sprintf
	movl	$0, -12(%rbx)
	incl	%ebp
	addq	$56, %rbx
	cmpl	%ebp, %r12d
	jne	.LBB0_4
# BB#5:                                 # %for.cond.preheader
	testl	%r12d, %r12d
	jle	.LBB0_25
# BB#6:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_14 Depth 3
	movq	%r13, %rdi
	movl	%ebp, %esi
	movq	40(%rsp), %rdx          # 8-byte Reload
	leaq	80(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	24(%r13), %rbx
	movq	200(%rbx), %rdi
	imulq	$56, %rbp, %r13
	leaq	20(%r15,%r13), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	$1, %edx
	movl	%r14d, %esi
	callq	*88(%rdi)
	movq	%rax, 32(%r15,%r13)
	testq	%rax, %rax
	je	.LBB0_8
# BB#9:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	leaq	32(%r15,%r13), %r12
	movq	200(%rbx), %rdi
	movq	%r15, %rbp
	leaq	24(%rbp,%r13), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	$1, %edx
	movl	%r14d, %esi
	callq	*88(%rdi)
	leaq	40(%rbp,%r13), %r15
	movq	%rax, 40(%rbp,%r13)
	testq	%rax, %rax
	je	.LBB0_31
# BB#10:                                # %land.rhs.i
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	200(%rbx), %rdi
	leaq	28(%rbp,%r13), %rcx
	movl	$1, %edx
	movl	%r14d, %esi
	callq	*88(%rdi)
	movq	%rax, 48(%rbp,%r13)
	testq	%rax, %rax
	je	.LBB0_31
# BB#11:                                # %alloc_line.exit.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	testl	%r14d, %r14d
	movl	$1, 16(%rbp,%r13)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbp,%r13)
	jle	.LBB0_24
# BB#12:                                #   in Loop: Header=BB0_7 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	48(%rax,%r13), %r11
	leaq	(%rax,%r13), %r8
	xorl	%r9d, %r9d
	leaq	12(%rax,%r13), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	leaq	4(%rax,%r13), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leaq	8(%rax,%r13), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_13:                               # %for.cond.30.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_14:                               # %for.body.32
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebp, %r10d
	addl	%r10d, %r10d
	movl	%edx, %edi
	addl	%edi, %edi
	movl	%eax, %ecx
	addl	%ecx, %ecx
	leal	(%r13,%rbx), %edx
	xorl	%eax, %eax
	movq	80(%rsp), %rsi
	cmpl	%r14d, %edx
	jge	.LBB0_16
# BB#15:                                # %if.then.36
                                        #   in Loop: Header=BB0_14 Depth=3
	movzbl	(%rsi), %eax
.LBB0_16:                               # %if.end.37
                                        #   in Loop: Header=BB0_14 Depth=3
	movl	%eax, %ebp
	shrl	$2, %ebp
	orl	%r10d, %ebp
	movl	%eax, %edx
	shrl	%edx
	andl	$1, %edx
	orl	%edi, %edx
	andl	$1, %eax
	orl	%ecx, %eax
	incq	%rsi
	movq	%rsi, 80(%rsp)
	incl	%ebx
	cmpl	$8, %ebx
	jne	.LBB0_14
# BB#17:                                # %for.end
                                        #   in Loop: Header=BB0_13 Depth=2
	movslq	%r9d, %rcx
	movq	(%r12), %rsi
	movb	%bpl, (%rsi,%rcx)
	testb	%bpl, %bpl
	je	.LBB0_19
# BB#18:                                # %if.then.i.85
                                        #   in Loop: Header=BB0_13 Depth=2
	leal	1(%r9), %esi
	movq	64(%rsp), %rdi          # 8-byte Reload
	movl	%esi, (%rdi)
.LBB0_19:                               # %if.end.i.86
                                        #   in Loop: Header=BB0_13 Depth=2
	movq	(%r15), %rsi
	movb	%dl, (%rsi,%rcx)
	testb	%dl, %dl
	je	.LBB0_21
# BB#20:                                # %if.then.8.i
                                        #   in Loop: Header=BB0_13 Depth=2
	leal	1(%r9), %edx
	movq	56(%rsp), %rsi          # 8-byte Reload
	movl	%edx, (%rsi)
.LBB0_21:                               # %if.end.12.i
                                        #   in Loop: Header=BB0_13 Depth=2
	movq	(%r11), %rdx
	movb	%al, (%rdx,%rcx)
	testb	%al, %al
	je	.LBB0_23
# BB#22:                                # %if.then.18.i
                                        #   in Loop: Header=BB0_13 Depth=2
	incl	%r9d
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%r9d, (%rax)
.LBB0_23:                               # %add_cmy8.exit
                                        #   in Loop: Header=BB0_13 Depth=2
	movl	(%r8), %r9d
	incl	%r9d
	movl	%r9d, (%r8)
	addl	$8, %r13d
	cmpl	%r14d, %r13d
	jl	.LBB0_13
.LBB0_24:                               # %for.inc.50
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	32(%rsp), %rbp          # 8-byte Reload
	incq	%rbp
	movq	16(%rsp), %r12          # 8-byte Reload
	cmpq	%r12, %rbp
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	24(%rsp), %r13          # 8-byte Reload
	jl	.LBB0_7
.LBB0_25:                               # %for.end.52
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movl	$2, %edi
	movq	8(%rsp), %r14           # 8-byte Reload
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$2, %edx
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	%r14, %rcx
	callq	write_cpass
	movl	$12, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$1, %edx
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	%r14, %rcx
	callq	write_cpass
	movl	$12, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movq	%r15, %rdi
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	movl	%r12d, %esi
	movq	%r14, %rcx
	callq	write_cpass
	movl	$4, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r13), %r14
	testl	%r12d, %r12d
	jle	.LBB0_29
# BB#26:                                # %for.body.lr.ph.i.89
	movq	48(%rsp), %rbx          # 8-byte Reload
	addq	$24, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_27:                               # %for.body.i.93
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -8(%rbx)
	je	.LBB0_29
# BB#28:                                # %if.then.i.105
                                        #   in Loop: Header=BB0_27 Depth=1
	movq	200(%r14), %rdi
	movq	8(%rbx), %rsi
	leaq	-4(%rbx), %rdx
	callq	*24(%rdi)
	movq	200(%r14), %rdi
	movq	16(%rbx), %rsi
	movq	%rbx, %rdx
	callq	*24(%rdi)
	movq	200(%r14), %rdi
	movq	24(%rbx), %rsi
	leaq	4(%rbx), %rdx
	callq	*24(%rdi)
	movl	$0, -8(%rbx)
	incq	%rbp
	addq	$56, %rbx
	cmpq	%r12, %rbp
	jl	.LBB0_27
.LBB0_29:                               # %free_rb_line.exit107
	movq	200(%r14), %rdi
	movl	$.L.str.3, %edx
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	jmp	.LBB0_36
.LBB0_37:                               # %if.then.6
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	jmp	.LBB0_36
.LBB0_31:                               # %if.then.18.loopexit
	movq	%rbx, %rax
	movq	(%r12), %rsi
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	64(%rsp), %r14          # 8-byte Reload
	jmp	.LBB0_32
.LBB0_8:                                # %entry.if.then_crit_edge.i
	movq	%rbx, %rax
	movq	%r15, %rbp
	leaq	40(%rbp,%r13), %r15
	leaq	24(%rbp,%r13), %r14
	xorl	%esi, %esi
.LBB0_32:                               # %for.body.lr.ph.i
	movq	%rax, %rbx
	movq	200(%rbx), %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	*24(%rdi)
	movq	200(%rbx), %rdi
	movq	(%r15), %rsi
	movq	%r14, %rdx
	callq	*24(%rdi)
	movq	200(%rbx), %rdi
	movq	48(%rbp,%r13), %rsi
	leaq	28(%rbp,%r13), %rdx
	callq	*24(%rdi)
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%rbx), %r14
	movq	%rbp, %rbx
	movq	%rbp, %r15
	addq	$24, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_33:                               # %for.body.i.76
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -8(%rbx)
	je	.LBB0_35
# BB#34:                                # %if.then.i.81
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	200(%r14), %rdi
	movq	8(%rbx), %rsi
	leaq	-4(%rbx), %rdx
	callq	*24(%rdi)
	movq	200(%r14), %rdi
	movq	16(%rbx), %rsi
	movq	%rbx, %rdx
	callq	*24(%rdi)
	movq	200(%r14), %rdi
	movq	24(%rbx), %rsi
	leaq	4(%rbx), %rdx
	callq	*24(%rdi)
	movl	$0, -8(%rbx)
	incq	%rbp
	addq	$56, %rbx
	cmpq	%r12, %rbp
	jl	.LBB0_33
.LBB0_35:                               # %free_rb_line.exit
	movq	200(%r14), %rdi
	movl	$.L.str.3, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movl	$-25, %r15d
.LBB0_36:                               # %cleanup
	movl	%r15d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ccr_print_page, .Lfunc_end0-ccr_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	ccr_map_rgb_color,@function
ccr_map_rgb_color:                      # @ccr_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %edx
	movzwl	2(%rsi), %ecx
	movzwl	4(%rsi), %eax
	shrl	$15, %edx
	shrl	$15, %ecx
	shrl	$15, %eax
	notl	%edx
	notl	%ecx
	notl	%eax
	andl	$1, %edx
	shlq	$2, %rdx
	andl	$1, %ecx
	addq	%rcx, %rcx
	orq	%rdx, %rcx
	andl	$1, %eax
	orq	%rcx, %rax
	retq
.Lfunc_end1:
	.size	ccr_map_rgb_color, .Lfunc_end1-ccr_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	ccr_map_color_rgb,@function
ccr_map_color_rgb:                      # @ccr_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	shrl	$2, %eax
	movl	$1, %ecx
	subl	%eax, %ecx
	imull	$65535, %ecx, %eax      # imm = 0xFFFF
	movw	%ax, 4(%rdx)
	movl	%esi, %eax
	shrl	%eax
	notl	%eax
	andl	$1, %eax
	negl	%eax
	movw	%ax, 2(%rdx)
	notl	%esi
	andl	$1, %esi
	negl	%esi
	movw	%si, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	ccr_map_color_rgb, .Lfunc_end2-ccr_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	write_cpass,@function
write_cpass:                            # @write_cpass
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
	movq	%rcx, %r14
	movl	%esi, %r15d
	testl	%r15d, %r15d
	jle	.LBB3_6
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %rax
	leaq	4(%rdi,%rax,4), %rbp
	leaq	32(%rdi,%rax,8), %rbx
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp), %r12
	testq	%r12, %r12
	je	.LBB3_3
# BB#4:                                 # %do.body
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$27, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	$75, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%r12d, %edi
	sarl	$8, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movzbl	%r12b, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movq	(%rbx), %rdi
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%r14, %rcx
	callq	fwrite
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_3:                                # %if.then
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$10, %edi
	movq	%r14, %rsi
	callq	_IO_putc
.LBB3_5:                                # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	addq	$56, %rbp
	addq	$56, %rbx
	decl	%r15d
	jne	.LBB3_2
.LBB3_6:                                # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	write_cpass, .Lfunc_end3-write_cpass
	.cfi_endproc

	.type	ccr_procs,@object       # @ccr_procs
	.data
	.align	8
ccr_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	ccr_map_rgb_color
	.quad	ccr_map_color_rgb
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
	.size	ccr_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ccr"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_ccr_device,@object   # @gs_ccr_device
	.data
	.globl	gs_ccr_device
	.align	8
gs_ccr_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	ccr_procs
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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
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
	.long	3510                    # 0xdb6
	.long	4950                    # 0x1356
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1146263962              # float 8.424000e+02
	.long	1150582784              # float 1.188000e+03
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3262119936              # float -6.000000e+01
	.long	3262119936              # float -6.000000e+01
	.long	1097229926              # float 1.440000e+01
	.long	1097229926              # float 1.440000e+01
	.long	1097229926              # float 1.440000e+01
	.long	1097229926              # float 1.440000e+01
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
	.quad	ccr_print_page
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
	.size	gs_ccr_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gsline"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"rb"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"C%02x"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"M%02x"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Y%02x"
	.size	.L.str.6, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
