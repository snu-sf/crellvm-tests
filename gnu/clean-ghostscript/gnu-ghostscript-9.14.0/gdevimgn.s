	.text
	.file	"gdevimgn.bc"
	.align	16, 0x90
	.type	imagen_prn_open,@function
imagen_prn_open:                        # @imagen_prn_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gdev_prn_open
	testl	%eax, %eax
	js	.LBB0_2
# BB#1:                                 # %if.end
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB0_2
# BB#3:                                 # %if.end.4
	movl	$.L.str.2, %edi
	callq	getenv
	testq	%rax, %rax
	movl	$.L.str.3, %edx
	cmovneq	%rax, %rdx
	movq	17176(%rbx), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close_printer  # TAILCALL
.LBB0_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end0:
	.size	imagen_prn_open, .Lfunc_end0-imagen_prn_open
	.cfi_endproc

	.align	16, 0x90
	.type	imagen_prn_close,@function
imagen_prn_close:                       # @imagen_prn_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB1_2
# BB#1:                                 # %if.end
	movq	17176(%rbx), %rsi
	movl	$255, %edi
	callq	fputc
	movq	17176(%rbx), %rdi
	callq	fflush
	movq	%rbx, %rdi
	callq	gdev_prn_close_printer
	testl	%eax, %eax
	js	.LBB1_2
# BB#3:                                 # %if.end.6
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.LBB1_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end1:
	.size	imagen_prn_close, .Lfunc_end1-imagen_prn_close
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1117126656              # float 75
.LCPI2_1:
	.long	1125515264              # float 150
	.text
	.align	16, 0x90
	.type	imagen_print_page,@function
imagen_print_page:                      # @imagen_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp7:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 272
.Ltmp11:
	.cfi_offset %rbx, -56
.Ltmp12:
	.cfi_offset %r12, -48
.Ltmp13:
	.cfi_offset %r13, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r14d
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movslq	%r14d, %r13
	movq	%r13, 184(%rsp)         # 8-byte Spill
	movq	%r13, %rdx
	shrq	%rdx
	addl	$8, %edx
	andl	$-8, %edx
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$2, %esi
	movl	$.L.str.6, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movss	884(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI2_0(%rip), %xmm0
	setbe	%al
	movzbl	%al, %eax
	incl	%eax
	ucomiss	.LCPI2_1(%rip), %xmm0
	cmoval	%r12d, %eax
	movl	%eax, 156(%rsp)         # 4-byte Spill
	leal	3(%r13), %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	3(%r14,%rax), %r13d
	movq	%r14, %r12
	sarl	$2, %r13d
	movq	%r13, 160(%rsp)         # 8-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	leal	1(%r13), %edx
	movl	$128, %esi
	movl	$.L.str.7, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movslq	%r13d, %rdx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	shrq	%rdx
	incl	%edx
	movl	$2, %esi
	movl	$.L.str.8, %ecx
	callq	*88(%rdi)
	movq	%rax, %rcx
	testq	%rbx, %rbx
	movl	$-1, %eax
	je	.LBB2_43
# BB#1:                                 # %entry
	testq	%r14, %r14
	movq	%r14, %rbp
	je	.LBB2_43
# BB#2:                                 # %if.end
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movl	$213, %edi
	movq	%r15, %rsi
	movq	%rcx, %rbp
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	callq	fputc
	movl	$236, %edi
	movq	%r15, %rsi
	callq	fputc
	movl	156(%rsp), %edi         # 4-byte Reload
	movq	%r15, %rsi
	movq	%r15, 136(%rsp)         # 8-byte Spill
	callq	fputc
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	836(%rax), %r15d
	testl	%r15d, %r15d
	js	.LBB2_42
# BB#3:                                 # %for.cond.preheader.lr.ph
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rbp,%rcx), %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%r12, %r14
	movq	184(%rsp), %r8          # 8-byte Reload
	leaq	(%rbx,%r8), %r12
	movq	208(%rsp), %rax         # 8-byte Reload
	movslq	%eax, %rcx
	leaq	(%rbx,%rcx,2), %rdx
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	addq	%rcx, %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	leaq	1(%rbx,%r8), %rdx
	movq	%r8, %rcx
	andq	$-2, %rcx
	shlq	$31, %rcx
	movabsq	$34359738368, %rsi      # imm = 0x800000000
	addq	%rcx, %rsi
	sarq	$31, %rsi
	andq	$-16, %rsi
	leaq	(%rsi,%rbx), %r11
	cmpq	%r11, %rdx
	cmovaq	%rdx, %r11
	movq	%rbx, %r9
	notq	%r9
	subq	%r8, %r9
	movq	%rbx, %rsi
	negq	%rsi
	subq	%r8, %rsi
	leaq	(%r11,%rsi), %r10
	movq	%r10, 120(%rsp)         # 8-byte Spill
	leaq	2(%rbp), %rdx
	cmpq	%rdx, %rdi
	cmovaq	%rdi, %rdx
	movq	%rbp, %rcx
	notq	%rcx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	shrl	%ecx
	incl	%ecx
	andl	$7, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	andq	$-32, %r10
	movq	%r10, 112(%rsp)         # 8-byte Spill
	leaq	(%r12,%r10), %rdx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	leaq	-32(%r11,%rsi), %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	leaq	(%r9,%r11), %rsi
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	shrl	$5, %edx
	incl	%edx
	andl	$3, %edx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	negq	%rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	leaq	16(%rbx,%r8), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	negq	%rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
	leaq	112(%rbx,%r8), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_4:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
                                        #     Child Loop BB2_8 Depth 2
                                        #     Child Loop BB2_10 Depth 2
                                        #       Child Loop BB2_14 Depth 3
                                        #       Child Loop BB2_17 Depth 3
                                        #       Child Loop BB2_20 Depth 3
                                        #       Child Loop BB2_23 Depth 3
                                        #     Child Loop BB2_30 Depth 2
                                        #       Child Loop BB2_34 Depth 3
                                        #       Child Loop BB2_39 Depth 3
	testl	%r14d, %r14d
	jle	.LBB2_9
# BB#5:                                 # %for.body.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpq	$0, 8(%rsp)             # 8-byte Folded Reload
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	%rbp, %rsi
	je	.LBB2_7
	.align	16, 0x90
.LBB2_6:                                # %for.body.prol
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$0, (%rsi)
	addq	$2, %rsi
	incq	%rdx
	jne	.LBB2_6
.LBB2_7:                                # %for.body.preheader.split
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpq	$14, 16(%rsp)           # 8-byte Folded Reload
	jb	.LBB2_9
	.align	16, 0x90
.LBB2_8:                                # %for.body
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, (%rsi)
	addq	$16, %rsi
	cmpq	%rdi, %rsi
	jb	.LBB2_8
.LBB2_9:                                # %for.end
                                        #   in Loop: Header=BB2_4 Depth=1
	leal	31(%rax), %esi
	leal	-31(%r15), %edx
	cmpl	%r15d, %esi
	cmovgl	%edx, %eax
	movl	%eax, %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movq	96(%rsp), %r13          # 8-byte Reload
	movq	192(%rsp), %rsi         # 8-byte Reload
	.align	16, 0x90
.LBB2_10:                               # %for.body.54
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_14 Depth 3
                                        #       Child Loop BB2_17 Depth 3
                                        #       Child Loop BB2_20 Depth 3
                                        #       Child Loop BB2_23 Depth 3
	movq	176(%rsp), %rax         # 8-byte Reload
	cmpq	%rax, 184(%rsp)         # 8-byte Folded Reload
	jge	.LBB2_21
# BB#11:                                # %for.body.62.preheader
                                        #   in Loop: Header=BB2_10 Depth=2
	cmpq	$-1, 168(%rsp)          # 8-byte Folded Reload
	movq	%r12, %rax
	je	.LBB2_20
# BB#12:                                # %overflow.checked
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	112(%rsp), %r8          # 8-byte Reload
	testq	%r8, %r8
	movq	%r12, %rax
	movl	$0, %edx
	je	.LBB2_19
# BB#13:                                # %vector.body.preheader
                                        #   in Loop: Header=BB2_10 Depth=2
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	$0, %edi
	movq	64(%rsp), %rdx          # 8-byte Reload
	je	.LBB2_15
	.align	16, 0x90
.LBB2_14:                               # %vector.body.prol
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	%xmm0, -16(%rdx,%rdi)
	movups	%xmm0, (%rdx,%rdi)
	addq	$32, %rdi
	incq	%rax
	jne	.LBB2_14
.LBB2_15:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB2_10 Depth=2
	cmpq	$96, 80(%rsp)           # 8-byte Folded Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	%r8, %rdx
	jb	.LBB2_19
# BB#16:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	%r8, %rax
	subq	%rdi, %rax
	movq	48(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdi,%rdx), %rdx
	.align	16, 0x90
.LBB2_17:                               # %vector.body
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	%xmm0, -112(%rdx)
	movups	%xmm0, -96(%rdx)
	movups	%xmm0, -80(%rdx)
	movups	%xmm0, -64(%rdx)
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, (%rdx)
	subq	$-128, %rdx
	addq	$-128, %rax
	jne	.LBB2_17
# BB#18:                                #   in Loop: Header=BB2_10 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	%r8, %rdx
.LBB2_19:                               # %middle.block
                                        #   in Loop: Header=BB2_10 Depth=2
	cmpq	%rdx, 120(%rsp)         # 8-byte Folded Reload
	je	.LBB2_21
	.align	16, 0x90
.LBB2_20:                               # %for.body.62
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$0, (%rax)
	incq	%rax
	cmpq	%rsi, %rax
	jb	.LBB2_20
.LBB2_21:                               # %for.end.64
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	208(%rsp), %rax         # 8-byte Reload
	leal	(%r15,%rax), %esi
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	testl	%r14d, %r14d
	jle	.LBB2_26
# BB#22:                                # %while.body.75.lr.ph
                                        #   in Loop: Header=BB2_10 Depth=2
	leaq	(%r13,%r15,4), %rax
	movq	%rbx, %rdi
	.align	16, 0x90
.LBB2_23:                               # %while.body.75
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	(%rdi), %dx
	movw	%dx, (%rax)
	cmpw	$0, (%rdi)
	je	.LBB2_25
# BB#24:                                # %if.then.76
                                        #   in Loop: Header=BB2_23 Depth=3
	movq	%rax, %rdx
	subq	%r13, %rdx
	movq	%rdx, %rsi
	sarq	$63, %rsi
	shrq	$57, %rsi
	addq	%rdx, %rsi
	sarq	$7, %rsi
	movb	$1, (%rbp,%rsi)
.LBB2_25:                               # %if.end.79
                                        #   in Loop: Header=BB2_23 Depth=3
	addq	$2, %rdi
	movl	%edi, %edx
	subl	%ebx, %edx
	leaq	2(%rax), %rsi
	addq	$126, %rax
	testb	$3, %dl
	cmovneq	%rsi, %rax
	cmpq	%r12, %rdi
	jb	.LBB2_23
.LBB2_26:                               # %for.inc.90
                                        #   in Loop: Header=BB2_10 Depth=2
	incq	%r15
	cmpq	$32, %r15
	movq	192(%rsp), %rsi         # 8-byte Reload
	xorps	%xmm0, %xmm0
	jne	.LBB2_10
# BB#27:                                # %while.cond.92.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%r13, 96(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	movq	160(%rsp), %rdx         # 8-byte Reload
	jle	.LBB2_41
# BB#28:                                # %while.body.95.lr.ph.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	156(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %eax
	movzbl	%ah, %ecx  # NOREX
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	movzbl	%al, %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB2_30:                               # %while.body.95
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_34 Depth 3
                                        #       Child Loop BB2_39 Depth 3
	movslq	%r15d, %rax
	movb	(%rbp,%rax), %cl
	testb	%cl, %cl
	je	.LBB2_40
# BB#31:                                # %while.cond.104.preheader
                                        #   in Loop: Header=BB2_30 Depth=2
	cmpl	%edx, %r15d
	movl	%r15d, %r13d
	jge	.LBB2_37
# BB#32:                                # %land.rhs.preheader
                                        #   in Loop: Header=BB2_30 Depth=2
	testb	%cl, %cl
	movq	88(%rsp), %rcx          # 8-byte Reload
	je	.LBB2_36
# BB#33:                                # %while.body.111.preheader
                                        #   in Loop: Header=BB2_30 Depth=2
	movslq	%r15d, %r13
	incq	%r13
	.align	16, 0x90
.LBB2_34:                               # %while.body.111
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%rcx, %r13
	jge	.LBB2_37
# BB#35:                                # %while.body.111.land.rhs_crit_edge
                                        #   in Loop: Header=BB2_34 Depth=3
	movq	%r13, %rax
	cmpb	$0, (%rbp,%r13)
	leaq	1(%r13), %r13
	jne	.LBB2_34
.LBB2_36:                               # %land.rhs.while.end.114_crit_edge
                                        #   in Loop: Header=BB2_30 Depth=2
	movl	%eax, %r13d
.LBB2_37:                               # %while.end.114
                                        #   in Loop: Header=BB2_30 Depth=2
	movl	$137, %edi
	movq	136(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	callq	fputc
	movl	152(%rsp), %edi         # 4-byte Reload
	movq	%r14, %rsi
	callq	fputc
	movl	148(%rsp), %edi         # 4-byte Reload
	movq	%r14, %rsi
	callq	fputc
	movl	$135, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	%r15d, %ebx
	shll	$5, %ebx
	movl	156(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %ebx
	movzbl	%bh, %edi  # NOREX
	movq	%r14, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$235, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$7, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	%r13d, %eax
	subl	%r15d, %eax
	movzbl	%al, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%r14, %rsi
	callq	fputc
	shll	$7, %r15d
	movl	%r13d, %eax
	shll	$7, %eax
	cmpl	%eax, %r15d
	jge	.LBB2_29
# BB#38:                                # %for.body.128.lr.ph
                                        #   in Loop: Header=BB2_30 Depth=2
	cltq
	movq	96(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rbp
	movslq	%r15d, %rax
	leaq	(%rax,%rcx), %rbx
	.align	16, 0x90
.LBB2_39:                               # %for.body.128
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %edi
	movq	%r14, %rsi
	callq	fputc
	incq	%rbx
	cmpq	%rbp, %rbx
	jb	.LBB2_39
.LBB2_29:                               # %while.cond.92.loopexit
                                        #   in Loop: Header=BB2_30 Depth=2
	movq	160(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %r13d
	movl	%r13d, %r15d
	movq	128(%rsp), %rbp         # 8-byte Reload
	xorps	%xmm0, %xmm0
	jl	.LBB2_30
	jmp	.LBB2_41
	.align	16, 0x90
.LBB2_40:                               # %if.then.100
                                        #   in Loop: Header=BB2_30 Depth=2
	incl	%r15d
	cmpl	%edx, %r15d
	jl	.LBB2_30
.LBB2_41:                               # %while.end.133
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	addl	$32, %ecx
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	836(%rax), %r15d
	cmpl	%r15d, %ecx
	movq	%rcx, %rax
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	jle	.LBB2_4
.LBB2_42:                               # %while.end.136
	movl	$219, %edi
	movq	136(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rbp, %r15
	callq	fputc
	movq	%r14, %rdi
	callq	fflush
	movq	200(%rsp), %rbp         # 8-byte Reload
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	96(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.8, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB2_43:                               # %cleanup
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	imagen_print_page, .Lfunc_end2-imagen_print_page
	.cfi_endproc

	.type	imagen_procs,@object    # @imagen_procs
	.data
	.globl	imagen_procs
	.align	8
imagen_procs:
	.quad	imagen_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	imagen_prn_close
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
	.size	imagen_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"imagen"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_imagen_device,@object # @gs_imagen_device
	.section	.rodata,"a",@progbits
	.globl	gs_imagen_device
	.align	8
gs_imagen_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	imagen_procs
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3258187776              # float -4.500000e+01
	.long	3262119936              # float -6.000000e+01
	.long	1093455053              # float 1.080000e+01
	.long	1103731098              # float 2.520000e+01
	.long	1088841318              # float 7.200000e+00
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
	.quad	imagen_print_page
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
	.size	gs_imagen_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"IMPRESSHEADER"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"jobheader onerror, prerasterization off"
	.size	.L.str.3, 40

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"@document(language impress, %s)"
	.size	.L.str.4, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"imagen_print_page(in)"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"imagen_print_page(out)"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"imagen_print_page(swatchMap)"
	.size	.L.str.8, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
