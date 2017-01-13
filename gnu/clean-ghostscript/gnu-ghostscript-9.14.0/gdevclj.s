	.text
	.file	"gdevclj.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	4634766966517661696     # double 7.200000e+01
	.quad	4634766966517661696     # double 7.200000e+01
	.text
	.align	16, 0x90
	.type	clj_print_page,@function
clj_print_page:                         # @clj_print_page
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
	subq	$10936, %rsp            # imm = 0x2AB8
.Ltmp6:
	.cfi_def_cfa_offset 10992
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
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	24(%rbp), %r12
	leaq	856(%rbp), %rdi
	leaq	124(%rsp), %rsi
	callq	get_paper_size
	movq	%rax, %r14
	movl	832(%rbp), %r13d
	leal	255(%r13), %ebx
	sarl	$31, %ebx
	shrl	$25, %ebx
	movl	$-28, %ecx
	testq	%r14, %r14
	je	.LBB0_45
# BB#1:                                 # %if.end
	cvtps2pd	884(%rbp), %xmm0
	movapd	%xmm0, 96(%rsp)         # 16-byte Spill
	movl	$.L.str.7, %edx
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	*64(%r12)
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB0_45
# BB#2:                                 # %if.end.13
	leal	255(%r13,%rbx), %eax
	sarl	$7, %eax
	addl	%r13d, %eax
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movl	%eax, %ebx
	sarl	$31, %ebx
	shrl	$29, %ebx
	addl	%eax, %ebx
	sarl	$3, %ebx
	leal	(%rbx,%rbx,2), %esi
	movl	$.L.str.8, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB0_3
# BB#4:                                 # %if.end.22
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movapd	96(%rsp), %xmm1         # 16-byte Reload
	divpd	.LCPI0_0(%rip), %xmm1
	movl	18472(%rbp), %ecx
	testl	%ecx, %ecx
	movl	832(%rbp), %r9d
	movl	836(%rbp), %esi
	movupd	16(%r14), %xmm0
	addpd	%xmm0, %xmm0
	mulpd	%xmm0, %xmm1
	jne	.LBB0_6
# BB#5:                                 # %if.else
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
.LBB0_6:                                # %if.end.53
	cvttsd2si	%xmm1, %eax
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	cvttsd2si	%xmm1, %edx
	movl	%esi, %r12d
	subl	%edx, %r12d
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	subl	%eax, %r9d
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movl	(%r14), %edx
	cvttss2si	884(%rbp), %r8d
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movl	%r12d, (%rsp)
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r15, 24(%rsp)          # 8-byte Spill
	callq	fprintf
	testl	%r12d, %r12d
	movq	56(%rsp), %rbp          # 8-byte Reload
	jle	.LBB0_44
# BB#7:                                 # %for.body.lr.ph
	movslq	%ebx, %rax
	movq	80(%rsp), %rcx          # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	leaq	(%rax,%rcx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	3728(%rsp), %r14
	leaq	7328(%rsp), %r13
	leaq	128(%rsp), %r12
	xorl	%ebx, %ebx
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB0_8:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_34 Depth 2
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %esi
	movq	%rbp, %rdx
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	gdev_prn_copy_scan_lines
	movl	36(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	jle	.LBB0_9
# BB#10:                                #   in Loop: Header=BB0_8 Depth=1
	movl	%ebx, 96(%rsp)          # 4-byte Spill
	xorl	%r8d, %r8d
	movl	%eax, %edx
	movq	%rbp, %rsi
	movq	%r12, %rax
	movl	$128, %edi
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movq	%r13, %rbp
	movq	%r14, %rbx
	.align	16, 0x90
.LBB0_11:                               # %for.body.i
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi), %ecx
	testl	%ecx, %ecx
	je	.LBB0_18
# BB#12:                                # %if.then.i
                                        #   in Loop: Header=BB0_11 Depth=2
	testb	$4, %cl
	je	.LBB0_14
# BB#13:                                # %if.then.i
                                        #   in Loop: Header=BB0_11 Depth=2
	movzbl	%r8b, %r8d
	orl	%edi, %r8d
.LBB0_14:                               # %if.then.i
                                        #   in Loop: Header=BB0_11 Depth=2
	testb	$2, %cl
	je	.LBB0_16
# BB#15:                                # %if.then.i
                                        #   in Loop: Header=BB0_11 Depth=2
	movzbl	%r9b, %r9d
	orl	%edi, %r9d
.LBB0_16:                               # %if.then.i
                                        #   in Loop: Header=BB0_11 Depth=2
	testb	$1, %cl
	je	.LBB0_18
# BB#17:                                # %if.then.22.i
                                        #   in Loop: Header=BB0_11 Depth=2
	movzbl	%r10b, %r10d
	orl	%edi, %r10d
.LBB0_18:                               # %if.end.27.i
                                        #   in Loop: Header=BB0_11 Depth=2
	shrq	%rdi
	jne	.LBB0_20
# BB#19:                                # %if.then.30.i
                                        #   in Loop: Header=BB0_11 Depth=2
	movb	%r10b, (%rax)
	incq	%rax
	movb	%r9b, (%rbx)
	incq	%rbx
	movb	%r8b, (%rbp)
	incq	%rbp
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$128, %edi
.LBB0_20:                               # %if.end.34.i
                                        #   in Loop: Header=BB0_11 Depth=2
	incq	%rsi
	decl	%edx
	jne	.LBB0_11
# BB#21:                                # %for.end.i
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpq	$128, %rdi
	je	.LBB0_25
# BB#22:                                # %if.then.37.i
                                        #   in Loop: Header=BB0_8 Depth=1
	movb	%r10b, (%rax)
	incq	%rax
	movb	%r9b, (%rbx)
	incq	%rbx
	movb	%r8b, (%rbp)
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
	movl	%ebx, 96(%rsp)          # 4-byte Spill
	movq	%r14, %rbx
	movq	%r13, %rbp
	movq	%r12, %rax
	jmp	.LBB0_25
	.align	16, 0x90
.LBB0_23:                               # %while.body.i
                                        #   in Loop: Header=BB0_8 Depth=1
	movb	$0, (%rax)
	incq	%rax
	movb	$0, (%rbx)
	incq	%rbx
	movb	$0, (%rbp)
.LBB0_24:                               # %while.body.i
                                        #   in Loop: Header=BB0_8 Depth=1
	incq	%rbp
.LBB0_25:                               # %while.body.i
                                        #   in Loop: Header=BB0_8 Depth=1
	testb	$7, %al
	jne	.LBB0_23
	.align	16, 0x90
.LBB0_26:                               # %while.cond.58.i
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rsi
	cmpq	%r12, %rsi
	jbe	.LBB0_28
# BB#27:                                # %land.rhs.i
                                        #   in Loop: Header=BB0_26 Depth=2
	leaq	-8(%rsi), %rax
	cmpq	$0, -8(%rsi)
	je	.LBB0_26
.LBB0_28:                               # %while.end.66.i
                                        #   in Loop: Header=BB0_8 Depth=1
	xorl	%r15d, %r15d
	cmpq	%rsi, %r12
	je	.LBB0_30
# BB#29:                                # %if.else.i
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%r12, %rdi
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	gdev_pcl_mode2compress
	movl	%eax, %r15d
	.align	16, 0x90
.LBB0_30:                               # %while.cond.58.1.i
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rsi
	cmpq	%r14, %rsi
	jbe	.LBB0_32
# BB#31:                                # %land.rhs.1.i
                                        #   in Loop: Header=BB0_30 Depth=2
	leaq	-8(%rsi), %rbx
	cmpq	$0, -8(%rsi)
	je	.LBB0_30
.LBB0_32:                               # %while.end.66.1.i
                                        #   in Loop: Header=BB0_8 Depth=1
	xorl	%ebx, %ebx
	cmpq	%rsi, %r14
	je	.LBB0_34
# BB#33:                                # %if.else.1.i
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%r14, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	gdev_pcl_mode2compress
	movl	%eax, %ebx
	.align	16, 0x90
.LBB0_34:                               # %while.cond.58.2.i
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rsi
	cmpq	%r13, %rsi
	jbe	.LBB0_36
# BB#35:                                # %land.rhs.2.i
                                        #   in Loop: Header=BB0_34 Depth=2
	leaq	-8(%rsi), %rbp
	cmpq	$0, -8(%rsi)
	je	.LBB0_34
.LBB0_36:                               # %while.end.66.2.i
                                        #   in Loop: Header=BB0_8 Depth=1
	xorl	%r14d, %r14d
	cmpq	%rsi, %r13
	je	.LBB0_38
# BB#37:                                # %if.else.2.i
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%r13, %rdi
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	gdev_pcl_mode2compress
	movl	%eax, %r14d
.LBB0_38:                               # %pack_and_compress_scanline.exit
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	%ebx, %eax
	orl	%r15d, %eax
	orl	%r14d, %eax
	je	.LBB0_39
# BB#40:                                # %if.else.75
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	92(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	movq	24(%rsp), %rbp          # 8-byte Reload
	je	.LBB0_42
# BB#41:                                # %if.then.78
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
.LBB0_42:                               # %if.end.80
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r15d, %edx
	callq	fprintf
	movslq	%r15d, %rdx
	movl	$1, %esi
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rcx
	callq	fwrite
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	fprintf
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rcx
	callq	fwrite
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r14d, %edx
	callq	fprintf
	movslq	%r14d, %rdx
	movl	$1, %esi
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rcx
	callq	fwrite
	jmp	.LBB0_43
	.align	16, 0x90
.LBB0_39:                               # %if.then.74
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	92(%rsp)                # 4-byte Folded Spill
.LBB0_43:                               # %if.end.99
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	56(%rsp), %rbp          # 8-byte Reload
	leaq	3728(%rsp), %r14
	movl	96(%rsp), %ebx          # 4-byte Reload
	incl	%ebx
	cmpl	32(%rsp), %ebx          # 4-byte Folded Reload
	jne	.LBB0_8
.LBB0_44:                               # %for.end
	movl	$.L.str.13, %edi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	fputs
	movl	$.L.str.8, %edx
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB0_45
.LBB0_3:                                # %if.then.20
	movl	$.L.str.7, %edx
	movq	%r12, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*24(%r12)
	movl	$-25, %ecx
.LBB0_45:                               # %cleanup
	movl	%ecx, %eax
	addq	$10936, %rsp            # imm = 0x2AB8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	clj_print_page, .Lfunc_end0-clj_print_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4634766966517661696     # double 72
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	clj_get_initial_matrix,@function
clj_get_initial_matrix:                 # @clj_get_initial_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 48
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	leaq	856(%rbx), %rdi
	xorl	%esi, %esi
	callq	get_paper_size
	testq	%rax, %rax
	je	.LBB1_1
# BB#2:                                 # %if.end
	movsd	8(%rsp), %xmm4          # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	16(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	cmpl	$0, 18472(%rbx)
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	je	.LBB1_4
# BB#3:                                 # %if.then.12
	movl	$0, (%r14)
	cvtsd2ss	%xmm3, %xmm2
	movss	%xmm2, 4(%r14)
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	movss	%xmm2, 8(%r14)
	movl	$0, 12(%r14)
	mulsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movaps	.LCPI1_1(%rip), %xmm2   # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm1
	movss	%xmm1, 16(%r14)
	mulsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm2, %xmm0
	jmp	.LBB1_6
.LBB1_1:                                # %if.then
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%r14)
	movl	$0, 4(%r14)
	movl	$0, 8(%r14)
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	xorps	.LCPI1_1(%rip), %xmm0
	movss	%xmm0, 12(%r14)
	movl	$0, 16(%r14)
	movss	860(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movapd	%xmm4, %xmm5
	cvtsd2ss	%xmm5, %xmm2
	movss	%xmm2, (%r14)
	movl	$0, 4(%r14)
	movl	$0, 8(%r14)
	movapd	%xmm3, %xmm4
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	movaps	.LCPI1_1(%rip), %xmm3   # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm3, %xmm2
	movss	%xmm2, 12(%r14)
	mulsd	%xmm5, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm3, %xmm1
	movss	%xmm1, 16(%r14)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	836(%rbx), %xmm1
	mulsd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
.LBB1_5:                                # %cleanup
	cvtsd2ss	%xmm0, %xmm0
.LBB1_6:                                # %cleanup
	movss	%xmm0, 20(%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	clj_get_initial_matrix, .Lfunc_end1-clj_get_initial_matrix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4650177721492570112     # double 792
.LCPI2_1:
	.quad	4648594424748572672     # double 612
.LCPI2_2:
	.quad	4649861062143770624     # double 756
.LCPI2_3:
	.quad	4647802776376573952     # double 522
.LCPI2_4:
	.quad	4650614711329488896     # double 841.67999267578125
.LCPI2_5:
	.quad	4648448762006470656     # double 595.4400634765625
	.text
	.align	16, 0x90
	.type	clj_get_params,@function
clj_get_params:                         # @clj_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
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
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	callq	gdev_prn_get_params
	movl	%eax, %ebx
	leaq	(%rsp), %rsi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	gdev_begin_input_media
	testl	%eax, %eax
	js	.LBB2_2
# BB#1:                                 # %for.cond.preheader
	leaq	(%rsp), %r15
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	gdev_write_input_page_size
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movl	$1, %edi
	movq	%r15, %rsi
	callq	gdev_write_input_page_size
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movsd	.LCPI2_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_5(%rip), %xmm1   # xmm1 = mem[0],zero
	movl	$2, %edi
	movq	%r15, %rsi
	callq	gdev_write_input_page_size
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gdev_end_input_media
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movl	%ebx, %eax
.LBB2_2:                                # %if.end.17
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	clj_get_params, .Lfunc_end2-clj_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	clj_put_params,@function
clj_put_params:                         # @clj_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp27:
	.cfi_def_cfa_offset 48
.Ltmp28:
	.cfi_offset %rbx, -24
.Ltmp29:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$0, 12(%rsp)
	leaq	16(%rsp), %rdi
	callq	clj_media_size
	testl	%eax, %eax
	js	.LBB3_5
# BB#1:                                 # %if.end
	je	.LBB3_4
# BB#2:                                 # %if.then.1
	leaq	16(%rsp), %rdi
	leaq	12(%rsp), %rsi
	callq	get_paper_size
	testq	%rax, %rax
	movl	$-15, %eax
	je	.LBB3_5
# BB#3:                                 # %if.then.1
	movl	12(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.LBB3_5
.LBB3_4:                                # %if.end.8
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
.LBB3_5:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	clj_put_params, .Lfunc_end3-clj_put_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	3292921856              # float -792
.LCPI4_2:
	.long	3289972736              # float -612
.LCPI4_3:
	.long	3292332032              # float -756
.LCPI4_4:
	.long	3288498176              # float -522
.LCPI4_5:
	.long	3293735813              # float -841.679992
.LCPI4_6:
	.long	3289701418              # float -595.440063
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	get_paper_size,@function
get_paper_size:                         # @get_paper_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 32
.Ltmp32:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movss	(%rdi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	movss	4(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_4
# BB#1:                                 # %land.lhs.true
	movss	.LCPI4_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	8(%rsp), %xmm0          # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movl	$clj_paper_sizes, %eax
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB4_2
.LBB4_4:                                # %if.else
	movss	.LCPI4_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	12(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_10
# BB#5:                                 # %land.lhs.true.22
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	8(%rsp), %xmm0          # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movl	$clj_paper_sizes, %ecx
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB4_6
.LBB4_10:                               # %for.inc
	movss	.LCPI4_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	12(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_12
# BB#11:                                # %land.lhs.true.1
	movss	.LCPI4_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	8(%rsp), %xmm0          # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movl	$clj_paper_sizes+32, %eax
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB4_2
.LBB4_12:                               # %if.else.1
	movss	.LCPI4_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	12(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_14
# BB#13:                                # %land.lhs.true.22.1
	movss	.LCPI4_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	8(%rsp), %xmm0          # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movl	$clj_paper_sizes+32, %ecx
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB4_6
.LBB4_14:                               # %for.inc.1
	movss	.LCPI4_5(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	12(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_16
# BB#15:                                # %land.lhs.true.2
	movss	.LCPI4_6(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	8(%rsp), %xmm0          # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movl	$clj_paper_sizes+64, %eax
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB4_2
.LBB4_16:                               # %if.else.2
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	.LCPI4_6(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	xorl	%eax, %eax
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_9
# BB#17:                                # %land.lhs.true.22.2
	movss	8(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	.LCPI4_5(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movl	$clj_paper_sizes+64, %ecx
	xorl	%eax, %eax
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_9
.LBB4_6:                                # %if.then.29
	testq	%rbx, %rbx
	je	.LBB4_8
# BB#7:                                 # %if.then.32
	movl	$1, (%rbx)
.LBB4_8:                                # %cleanup
	movq	%rcx, %rax
	jmp	.LBB4_9
.LBB4_2:                                # %if.then
	testq	%rbx, %rbx
	je	.LBB4_9
# BB#3:                                 # %if.then.15
	movl	$0, (%rbx)
.LBB4_9:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	get_paper_size, .Lfunc_end4-get_paper_size
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1133903872              # float 300
.LCPI5_1:
	.long	1125515264              # float 150
.LCPI5_2:
	.long	1117126656              # float 75
.LCPI5_3:
	.long	1120403456              # float 100
.LCPI5_4:
	.long	1116733440              # float 72
	.text
	.align	16, 0x90
	.type	clj_media_size,@function
clj_media_size:                         # @clj_media_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 80
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	32(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	testl	%eax, %eax
	jne	.LBB5_6
# BB#1:                                 # %land.lhs.true
	movq	32(%rsp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movl	$-15, %ebp
	ucomiss	.LCPI5_0(%rip), %xmm0
	jne	.LBB5_2
	jnp	.LBB5_5
.LBB5_2:                                # %land.lhs.true
	ucomiss	.LCPI5_1(%rip), %xmm0
	jne	.LBB5_3
	jnp	.LBB5_5
.LBB5_3:                                # %land.lhs.true
	ucomiss	.LCPI5_2(%rip), %xmm0
	jne	.LBB5_4
	jnp	.LBB5_5
.LBB5_4:                                # %land.lhs.true
	ucomiss	.LCPI5_3(%rip), %xmm0
	jne	.LBB5_11
	jp	.LBB5_11
.LBB5_5:                                # %is_supported_resolution.exit
	ucomiss	4(%rax), %xmm0
	jne	.LBB5_11
	jp	.LBB5_11
.LBB5_6:                                # %if.end
	leaq	16(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	testl	%eax, %eax
	je	.LBB5_8
# BB#7:                                 # %lor.lhs.false
	leaq	16(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB5_9
.LBB5_8:                                # %if.then.6
	movq	16(%rsp), %rax
	movl	(%rax), %ecx
	movl	%ecx, (%r14)
	movl	4(%rax), %eax
	movl	%eax, 4(%r14)
	movl	$1, %ebp
.LBB5_9:                                # %if.end.12
	leaq	(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	param_read_int_array
	testl	%eax, %eax
	jne	.LBB5_11
# BB#10:                                # %if.then.15
	movq	(%rsp), %rax
	cvtsi2ssl	(%rax), %xmm0
	movss	.LCPI5_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	32(%rsp), %rcx
	divss	(%rcx), %xmm0
	movss	%xmm0, (%r14)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	4(%rax), %xmm0
	mulss	%xmm1, %xmm0
	divss	4(%rcx), %xmm0
	movss	%xmm0, 4(%r14)
	movl	$1, %ebp
.LBB5_11:                               # %cleanup
	movl	%ebp, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	clj_media_size, .Lfunc_end5-clj_media_size
	.cfi_endproc

	.align	16, 0x90
	.type	clj_pr_get_params,@function
clj_pr_get_params:                      # @clj_pr_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 18472(%rbx)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	856(%rbx), %eax
	movl	860(%rbx), %ecx
	movl	%ecx, 856(%rbx)
	movl	%eax, 860(%rbx)
	movl	832(%rbx), %eax
	movl	836(%rbx), %ecx
	movl	%ecx, 832(%rbx)
	movl	%eax, 836(%rbx)
.LBB6_2:                                # %if.end
	movq	%rbx, %rdi
	callq	gdev_prn_get_params
	cmpl	$0, 18472(%rbx)
	je	.LBB6_4
# BB#3:                                 # %if.then.11
	movl	856(%rbx), %ecx
	movl	860(%rbx), %edx
	movl	%edx, 856(%rbx)
	movl	%ecx, 860(%rbx)
	movl	832(%rbx), %ecx
	movl	836(%rbx), %edx
	movl	%edx, 832(%rbx)
	movl	%ecx, 836(%rbx)
.LBB6_4:                                # %if.end.26
	popq	%rbx
	retq
.Lfunc_end6:
	.size	clj_pr_get_params, .Lfunc_end6-clj_pr_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	clj_pr_put_params,@function
clj_pr_put_params:                      # @clj_pr_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 40
	subq	$88, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 128
.Ltmp47:
	.cfi_offset %rbx, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$0, 76(%rsp)
	leaq	80(%rsp), %rdi
	callq	clj_media_size
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_10
# BB#1:                                 # %if.end
	je	.LBB7_9
# BB#2:                                 # %if.then.1
	leaq	80(%rsp), %r15
	leaq	76(%rsp), %rsi
	movq	%r15, %rdi
	callq	get_paper_size
	movl	$-15, %ebp
	testq	%rax, %rax
	je	.LBB7_10
# BB#3:                                 # %if.end.6
	cmpl	$0, 76(%rsp)
	je	.LBB7_7
# BB#4:                                 # %if.then.8
	movl	80(%rsp), %eax
	movl	84(%rsp), %ecx
	movl	%ecx, 80(%rsp)
	movl	%eax, 84(%rsp)
	movq	%r15, 56(%rsp)
	movq	$2, 64(%rsp)
	movq	24(%r14), %rsi
	leaq	(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_c_param_list_write
	leaq	56(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbp, %rdi
	callq	param_write_float_array
	movq	%rbp, %rdi
	callq	gs_c_param_list_read
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gs_c_param_list_set_target
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_6
# BB#5:                                 # %if.then.16
	movl	$1, 18472(%r14)
.LBB7_6:                                # %if.end.17
	leaq	(%rsp), %rdi
	callq	gs_c_param_list_release
	jmp	.LBB7_10
.LBB7_9:                                # %if.else.24
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	jmp	.LBB7_10
.LBB7_7:                                # %if.else
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_10
# BB#8:                                 # %if.then.20
	movl	$0, 18472(%r14)
.LBB7_10:                               # %cleanup
	movl	%ebp, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	clj_pr_put_params, .Lfunc_end7-clj_pr_put_params
	.cfi_endproc

	.type	cljet5_procs,@object    # @cljet5_procs
	.data
	.align	8
cljet5_procs:
	.quad	gdev_prn_open
	.quad	clj_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_3bit_map_rgb_color
	.quad	gdev_pcl_3bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	clj_get_params
	.quad	clj_put_params
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
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	cljet5_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cljet5"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_cljet5_device,@object # @gs_cljet5_device
	.data
	.globl	gs_cljet5_device
	.align	8
gs_cljet5_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	cljet5_procs
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
	.long	3300                    # 0xce4
	.long	2550                    # 0x9f6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1145438208              # float 7.920000e+02
	.long	1142489088              # float 6.120000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3259524710              # float -5.010000e+01
	.long	3259524710              # float -5.010000e+01
	.long	1094738510              # float 1.202400e+01
	.long	1094738510              # float 1.202400e+01
	.long	1094738510              # float 1.202400e+01
	.long	1094738510              # float 1.202400e+01
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
	.quad	clj_print_page
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
	.long	0                       # 0x0
	.zero	4
	.size	gs_cljet5_device, 18480

	.type	cljet5pr_procs,@object  # @cljet5pr_procs
	.align	8
cljet5pr_procs:
	.quad	gdev_prn_open
	.quad	clj_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_3bit_map_rgb_color
	.quad	gdev_pcl_3bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	clj_pr_get_params
	.quad	clj_pr_put_params
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
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	cljet5pr_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"cljet5pr"
	.size	.L.str.2, 9

	.type	gs_cljet5pr_device,@object # @gs_cljet5pr_device
	.data
	.globl	gs_cljet5pr_device
	.align	8
gs_cljet5pr_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	cljet5pr_procs
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
	.long	3300                    # 0xce4
	.long	2550                    # 0x9f6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1145438208              # float 7.920000e+02
	.long	1142489088              # float 6.120000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3259524710              # float -5.010000e+01
	.long	3259524710              # float -5.010000e+01
	.long	1094738510              # float 1.202400e+01
	.long	1094738510              # float 1.202400e+01
	.long	1094738510              # float 1.202400e+01
	.long	1094738510              # float 1.202400e+01
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
	.quad	clj_print_page
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
	.long	1                       # 0x1
	.zero	4
	.size	gs_cljet5pr_device, 18480

	.type	clj_paper_sizes,@object # @clj_paper_sizes
	.section	.rodata,"a",@progbits
	.align	16
clj_paper_sizes:
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1145438208              # float 792
	.long	1142489088              # float 612
	.quad	4624296097706147840     # double 14.40000057220459
	.quad	0                       # double 0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1144848384              # float 756
	.long	1141014528              # float 522
	.quad	4624296097706147840     # double 14.40000057220459
	.quad	0                       # double 0
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	1146252165              # float 841.679992
	.long	1142217770              # float 595.440063
	.quad	4624174500202676224     # double 14.184000015258789
	.quad	0                       # double 0
	.size	clj_paper_sizes, 96

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"HWResolution"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"PageSize"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	".MediaSize"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"HWSize"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"clj_print_page(data)"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"clj_print_page(cdata)"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033E\033&u300D\033&l%da1x%dO\033*p0x0y+50x-100Y\033*t%dR\033*r-3U\033*r0f%ds%dt1A\033*b2M"
	.size	.L.str.9, 67

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033*b%dY"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033*b%dV"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033*b%dW"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\033*rC\f"
	.size	.L.str.13, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
