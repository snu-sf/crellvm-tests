	.text
	.file	"gdevsj48.bc"
	.align	16, 0x90
	.type	sj48_print_page,@function
sj48_print_page:                        # @sj48_print_page
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
	subq	$152, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 208
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
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r14d
	movl	%r14d, 100(%rsp)        # 4-byte Spill
	cvttss2si	884(%rbx), %r12d
	cvttss2si	888(%rbx), %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	cmpl	$180, %r12d
	setne	%al
	movzbl	%al, %r13d
	leal	39(%r13), %eax
	leal	71(%r13), %edx
	cmpl	$180, %ecx
	cmovel	%eax, %edx
	movl	%edx, 60(%rsp)          # 4-byte Spill
	setne	%al
	movzbl	%al, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leal	(%rax,%rax,2), %eax
	leal	24(,%rax,8), %ebp
	movl	%ebp, 96(%rsp)          # 4-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$8, %esi
	movl	$.L.str.2, %ecx
	movl	%r14d, %edx
	callq	*88(%rdi)
	movq	%rax, %r15
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %ecx
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%r15, %r14
	callq	gdev_prn_print_scan_lines
	movl	%eax, %r15d
	testq	%r14, %r14
	movl	$-25, %ebx
	je	.LBB0_46
# BB#1:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB0_46
# BB#2:                                 # %if.end
	movl	$-15, %ebx
	cmpl	$360, %r12d             # imm = 0x168
	je	.LBB0_4
# BB#3:                                 # %if.end
	cmpl	$180, %r12d
	jne	.LBB0_46
.LBB0_4:                                # %lor.lhs.false.37
	cmpl	$360, 28(%rsp)          # 4-byte Folded Reload
                                        # imm = 0x168
	je	.LBB0_6
# BB#5:                                 # %lor.lhs.false.37
	cmpl	$180, 28(%rsp)          # 4-byte Folded Reload
	jne	.LBB0_46
.LBB0_6:                                # %if.end.44
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	$.L.str.4, %edi
	movl	$1, %esi
	movl	$4, %edx
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	testl	%r15d, %r15d
	jle	.LBB0_45
# BB#7:                                 # %while.body.lr.ph
	movq	136(%rsp), %rax         # 8-byte Reload
	leal	3(%rax,%rax,2), %r12d
	incl	%r13d
	imull	%r12d, %r13d
	movl	%r15d, %eax
	movl	96(%rsp), %ecx          # 4-byte Reload
	subl	%ecx, %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movslq	100(%rsp), %rax         # 4-byte Folded Reload
	leaq	(%rax,%r14), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%r13d, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movslq	%r12d, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	144(%rsp), %rcx
	xorl	%esi, %esi
	xorl	%r13d, %r13d
.LBB0_8:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_27 Depth 3
                                        #     Child Loop BB0_30 Depth 2
                                        #       Child Loop BB0_32 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_39 Depth 4
	movl	%r15d, 8(%rsp)          # 4-byte Spill
	movq	104(%rsp), %rdi         # 8-byte Reload
	movslq	832(%rdi), %rbp
	movl	%esi, %r15d
	movq	%r14, %rdx
	callq	gdev_prn_get_bits
	movl	%eax, 12(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB0_9
# BB#11:                                # %if.end.55
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	144(%rsp), %rax
	movl	100(%rsp), %ecx         # 4-byte Reload
	cmpl	$32, %ecx
	movl	%r15d, %esi
	jb	.LBB0_14
	.align	16, 0x90
.LBB0_12:                               # %for.body
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rax), %rdx
	orq	(%rax), %rdx
	orq	16(%rax), %rdx
	orq	24(%rax), %rdx
	jne	.LBB0_16
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB0_12 Depth=2
	addq	$32, %rax
	addl	$-32, %ecx
	cmpl	$31, %ecx
	ja	.LBB0_12
	.align	16, 0x90
.LBB0_14:                               # %while.cond.71
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ecx, %ecx
	jle	.LBB0_51
# BB#15:                                # %while.body.74
                                        #   in Loop: Header=BB0_14 Depth=2
	decl	%ecx
	cmpb	$0, (%rax)
	leaq	1(%rax), %rax
	je	.LBB0_14
.LBB0_16:                               # %cleanup.cont
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%r14, 80(%rsp)          # 8-byte Spill
	movl	%esi, %ebx
	movl	92(%rsp), %eax          # 4-byte Reload
	subl	%eax, %ebx
	movl	$0, %ecx
	cmovlel	%ecx, %ebx
	cmovgl	%eax, %esi
	addl	%r13d, %ebx
	cmpl	$180, 28(%rsp)          # 4-byte Folded Reload
	je	.LBB0_18
# BB#17:                                # %if.else
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	%ebx, %eax
	shll	$31, %eax
	sarl	$31, %eax
	leal	(%rbx,%rax), %ecx
	addl	%esi, %eax
	movl	%ecx, %ebx
	shrl	$31, %ebx
	addl	%ecx, %ebx
	sarl	%ebx
	movl	%eax, %esi
.LBB0_18:                               # %while.cond.96.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	16(%rsp), %r13          # 8-byte Reload
	movl	%esi, 136(%rsp)         # 4-byte Spill
	cmpl	$256, %ebx              # imm = 0x100
	movq	48(%rsp), %r15          # 8-byte Reload
	jl	.LBB0_20
	.align	16, 0x90
.LBB0_19:                               # %while.body.99
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.5, %edi
	movq	%r15, %rsi
	callq	fputs
	addl	$-255, %ebx
	cmpl	$255, %ebx
	jg	.LBB0_19
.LBB0_20:                               # %while.end.102
                                        #   in Loop: Header=BB0_8 Depth=1
	imulq	(%rsp), %rbp            # 8-byte Folded Reload
	testl	%ebx, %ebx
	je	.LBB0_22
# BB#21:                                # %if.then.104
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	fprintf
.LBB0_22:                               # %if.end.106
                                        #   in Loop: Header=BB0_8 Depth=1
	leaq	(%rbp,%r13), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	136(%rsp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	cmovel	8(%rsp), %eax           # 4-byte Folded Reload
	movl	%eax, 92(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	movq	%r13, %rbx
	movq	%r13, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB0_23:                               # %for.body.114
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
	movl	%edx, 136(%rsp)         # 4-byte Spill
	movl	92(%rsp), %ecx          # 4-byte Reload
	subl	%edx, %ecx
	cmpl	$8, %ecx
	movl	$8, %eax
	cmovgl	%eax, %ecx
	movl	100(%rsp), %r13d        # 4-byte Reload
	imull	%r13d, %ecx
	movq	104(%rsp), %rdi         # 8-byte Reload
	movl	%edx, %esi
	movq	80(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdx
	callq	gdev_prn_copy_scan_lines
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_10
# BB#24:                                # %if.end.128
                                        #   in Loop: Header=BB0_23 Depth=2
	movl	%ebp, 128(%rsp)         # 4-byte Spill
	cmpl	$7, %r15d
	jg	.LBB0_26
# BB#25:                                # %if.then.131
                                        #   in Loop: Header=BB0_23 Depth=2
	movl	%r15d, %eax
	imull	%r13d, %eax
	cltq
	leaq	(%rax,%r14), %rdi
	movl	$8, %eax
	subl	%r15d, %eax
	imull	%r13d, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB0_26:                               # %for.cond.140.preheader
                                        #   in Loop: Header=BB0_23 Depth=2
	movl	%r15d, 116(%rsp)        # 4-byte Spill
	testl	%r13d, %r13d
	movq	%rbx, %rbp
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%r14, %rbx
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	64(%rsp), %r14          # 8-byte Reload
	jle	.LBB0_28
	.align	16, 0x90
.LBB0_27:                               # %for.body.143
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%rbp, %rdx
	movl	%r12d, %ecx
	callq	memflip8x8
	incq	%rbx
	addq	%r14, %rbp
	cmpq	%r15, %rbx
	jb	.LBB0_27
.LBB0_28:                               # %for.inc.156
                                        #   in Loop: Header=BB0_23 Depth=2
	movq	120(%rsp), %rbx         # 8-byte Reload
	incq	%rbx
	movl	136(%rsp), %edx         # 4-byte Reload
	addl	116(%rsp), %edx         # 4-byte Folded Reload
	movl	128(%rsp), %ebp         # 4-byte Reload
	addl	$8, %ebp
	cmpl	96(%rsp), %ebp          # 4-byte Folded Reload
	jl	.LBB0_23
# BB#29:                                #   in Loop: Header=BB0_8 Depth=1
	movl	%edx, 136(%rsp)         # 4-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, %r15
	movq	48(%rsp), %r13          # 8-byte Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB0_30:                               # %while.cond.159.loopexit
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_32 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_39 Depth 4
	cmpq	%rdx, %rax
	jae	.LBB0_43
# BB#31:                                # %while.body.162
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	%rax, %rbp
	movq	%rdx, %rcx
	subq	%rbp, %rcx
	cmpq	%rbx, %rcx
	movq	%rbx, %r14
	cmovleq	%rcx, %r14
	cmovgel	%ebx, %ecx
	.align	16, 0x90
.LBB0_32:                               # %while.cond.175
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%ecx, %ecx
	jle	.LBB0_30
# BB#33:                                # %while.body.179
                                        #   in Loop: Header=BB0_32 Depth=3
	decl	%ecx
	cmpb	$0, (%rax)
	leaq	1(%rax), %rax
	je	.LBB0_32
# BB#34:                                # %if.end.194
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	%rbp, %rax
	subq	%r15, %rax
	jbe	.LBB0_36
# BB#35:                                # %if.then.197
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	%rdx, %r15
	cqto
	idivq	%rbx
	movq	%rax, %rcx
	movzbl	%cl, %edx
	sarl	$8, %ecx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	%r15, %rdx
.LBB0_36:                               # %if.end.206
                                        #   in Loop: Header=BB0_30 Depth=2
	movslq	%r14d, %rax
	leaq	(%rax,%rbp), %r15
	jmp	.LBB0_37
	.align	16, 0x90
.LBB0_41:                               # %if.else.241
                                        #   in Loop: Header=BB0_37 Depth=3
	movslq	%r14d, %rax
	addq	%rax, %r15
.LBB0_37:                               # %if.end.206
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_39 Depth 4
	cmpq	%rdx, %r15
	jae	.LBB0_42
# BB#38:                                # %while.body.212
                                        #   in Loop: Header=BB0_37 Depth=3
	movq	%rdx, %rax
	subq	%r15, %rax
	cmpq	%rbx, %rax
	movq	%rbx, %r14
	cmovleq	%rax, %r14
	cmovgel	%ebx, %eax
	movq	%r15, %rcx
	.align	16, 0x90
.LBB0_39:                               # %while.cond.228
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testl	%eax, %eax
	jle	.LBB0_42
# BB#40:                                # %while.body.232
                                        #   in Loop: Header=BB0_39 Depth=4
	decl	%eax
	cmpb	$0, (%rcx)
	leaq	1(%rcx), %rcx
	je	.LBB0_39
	jmp	.LBB0_41
	.align	16, 0x90
.LBB0_42:                               # %cleanup.258
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	%r15, %rbx
	subq	%rbp, %rbx
	movl	%ebx, %eax
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	cltd
	idivl	%r12d
	movl	%eax, %ebp
	movzbl	%bpl, %ecx
	sarl	$8, %ebp
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	60(%rsp), %edx          # 4-byte Reload
	movl	%ebp, %r8d
	callq	fprintf
	movslq	%ebx, %rdx
	movq	40(%rsp), %rbx          # 8-byte Reload
	movl	$1, %esi
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rcx
	callq	fwrite
	movq	32(%rsp), %rdx          # 8-byte Reload
	movslq	%r14d, %rax
	cmpq	%rdx, %r15
	leaq	(%rax,%r15), %rax
	jb	.LBB0_30
.LBB0_43:                               # %do.end
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	$13, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	96(%rsp), %r13d         # 4-byte Reload
	movq	80(%rsp), %r14          # 8-byte Reload
	movl	8(%rsp), %r15d          # 4-byte Reload
	leaq	144(%rsp), %rcx
	movl	136(%rsp), %esi         # 4-byte Reload
	jmp	.LBB0_44
.LBB0_51:                               # %cleanup
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	%esi
	incl	%r13d
	movl	8(%rsp), %r15d          # 4-byte Reload
	leaq	144(%rsp), %rcx
.LBB0_44:                               # %cleanup.266.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpl	%r15d, %esi
	jl	.LBB0_8
	jmp	.LBB0_45
.LBB0_9:
	movl	12(%rsp), %r15d         # 4-byte Reload
.LBB0_10:                               # %cleanup.266
	movl	%r15d, 12(%rsp)         # 4-byte Spill
.LBB0_45:                               # %xit
	movl	$12, %edi
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	fputc
	movq	%rbp, %rdi
	callq	fflush
	movq	16(%rsp), %rbp          # 8-byte Reload
	movl	12(%rsp), %ebx          # 4-byte Reload
.LBB0_46:                               # %fin
	testq	%rbp, %rbp
	je	.LBB0_48
# BB#47:                                # %if.then.279
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB0_48:                               # %if.end.285
	testq	%r14, %r14
	je	.LBB0_50
# BB#49:                                # %if.then.288
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB0_50:                               # %cleanup.296
	movl	%ebx, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sj48_print_page, .Lfunc_end0-sj48_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sj48"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_sj48_device,@object  # @gs_sj48_device
	.data
	.globl	gs_sj48_device
	.align	8
gs_sj48_device:
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
	.long	2880                    # 0xb40
	.long	3780                    # 0xec4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141899264              # float 5.760000e+02
	.long	1144848384              # float 7.560000e+02
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
	.quad	sj48_print_page
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
	.size	gs_sj48_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"sj48_print_page(in)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"sj48_print_page(out)"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata,"a",@progbits
.L.str.4:
	.asciz	"\033@\000\000"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"\033J\377"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033J%c"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033\\%c%c"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033*%c%c%c"
	.size	.L.str.8, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
