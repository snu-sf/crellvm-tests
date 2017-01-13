	.text
	.file	"gdevicov.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4616189618054758400    # double -1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI0_2:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.align	16, 0x90
	.type	cov_write_page,@function
cov_write_page:                         # @cov_write_page
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movslq	836(%rbx), %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	24(%rbx), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str.3, %edx
	movl	%eax, %esi
	callq	*64(%rdi)
	movq	%rax, 32(%rsp)          # 8-byte Spill
	testq	%rbp, %rbp
	movl	$0, %r14d
	movl	$0, %r15d
	movl	$0, %r13d
	movl	$0, %ebp
	movl	$0, %eax
	jle	.LBB0_11
# BB#1:                                 # %for.body.lr.ph
	movslq	20(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %esi
	movq	32(%rsp), %rdx          # 8-byte Reload
	leaq	48(%rsp), %rcx
	callq	gdev_prn_get_bits
	testl	%eax, %eax
	js	.LBB0_11
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	jle	.LBB0_10
# BB#4:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %r9
	movq	48(%rsp), %rdi
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	(%rdi,%rcx), %rdx
	leaq	4(%rdi), %rsi
	cmpq	%rsi, %rdx
	movq	%rsi, %rcx
	cmovaq	%rdx, %rcx
	subq	%rdi, %rcx
	decq	%rcx
	cmpq	%rsi, %rdx
	movq	%rsi, %rbx
	cmovaq	%rdx, %rbx
	subq	%rdi, %rbx
	decq	%rbx
	movq	%rbx, %r8
	shrq	$2, %r8
	btq	$2, %rbx
	jb	.LBB0_5
# BB#6:                                 # %for.body.8.prol
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$1, (%rdi)
	sbbq	$-1, %rbp
	cmpb	$1, 1(%rdi)
	sbbq	$-1, %r13
	cmpb	$1, 2(%rdi)
	sbbq	$-1, %r15
	cmpb	$1, 3(%rdi)
	sbbq	$-1, %r14
	movq	%rsi, 48(%rsp)
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rdi, %rsi
.LBB0_7:                                # %for.body.8.lr.ph.split
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%r9, %rbx
	shrq	$2, %rcx
	testq	%r8, %r8
	je	.LBB0_9
	.align	16, 0x90
.LBB0_8:                                # %for.body.8
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$1, (%rsi)
	sbbq	$-1, %rbp
	cmpb	$1, 1(%rsi)
	sbbq	$-1, %r13
	cmpb	$1, 2(%rsi)
	sbbq	$-1, %r15
	cmpb	$1, 3(%rsi)
	sbbq	$-1, %r14
	leaq	4(%rsi), %rdi
	movq	%rdi, 48(%rsp)
	cmpb	$1, 4(%rsi)
	sbbq	$-1, %rbp
	cmpb	$1, 5(%rsi)
	sbbq	$-1, %r13
	cmpb	$1, 6(%rsi)
	sbbq	$-1, %r15
	cmpb	$1, 7(%rsi)
	sbbq	$-1, %r14
	addq	$8, %rsi
	movq	%rsi, 48(%rsp)
	cmpq	%rdx, %rsi
	jb	.LBB0_8
.LBB0_9:                                # %for.cond.6.for.inc.36_crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	1(%rbx,%rcx), %rbx
.LBB0_10:                               # %for.inc.36
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	%r12d
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %r12d
	jl	.LBB0_2
.LBB0_11:                               # %for.end.38
	movq	40(%rsp), %rdx          # 8-byte Reload
	movslq	832(%rdx), %rcx
	imulq	24(%rsp), %rcx          # 8-byte Folded Reload
	cmpq	%rbx, %rcx
	movq	%rbx, %r12
	movl	$1, %ebx
	cmovel	%eax, %ebx
	movq	24(%rdx), %rdi
	movl	$.L.str.3, %edx
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	testl	%ebx, %ebx
	je	.LBB0_13
# BB#12:
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	movapd	%xmm0, %xmm3
	jmp	.LBB0_14
.LBB0_13:                               # %if.then.50
	movd	%rbp, %xmm1
	movdqa	.LCPI0_1(%rip), %xmm3   # xmm3 = [1127219200,1160773632,0,0]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movapd	.LCPI0_2(%rip), %xmm4   # xmm4 = [4.503600e+15,1.934281e+25]
	subpd	%xmm4, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	movd	%r12, %xmm1
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	subpd	%xmm4, %xmm1
	pshufd	$78, %xmm1, %xmm5       # xmm5 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm5
	divsd	%xmm5, %xmm0
	movd	%r13, %xmm2
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	subpd	%xmm4, %xmm2
	pshufd	$78, %xmm2, %xmm1       # xmm1 = xmm2[2,3,0,1]
	addpd	%xmm2, %xmm1
	divsd	%xmm5, %xmm1
	movd	%r15, %xmm6
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	subpd	%xmm4, %xmm6
	pshufd	$78, %xmm6, %xmm2       # xmm2 = xmm6[2,3,0,1]
	addpd	%xmm6, %xmm2
	divsd	%xmm5, %xmm2
	movd	%r14, %xmm6
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	subpd	%xmm4, %xmm6
	pshufd	$78, %xmm6, %xmm3       # xmm3 = xmm6[2,3,0,1]
	addpd	%xmm6, %xmm3
	divsd	%xmm5, %xmm3
.LBB0_14:                               # %if.end.62
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movq	192(%rdi), %rax
	cmpq	%rbp, 16(%rax)
	je	.LBB0_15
# BB#16:                                # %if.else
	testl	%ebx, %ebx
	movl	$.L.str.5, %ecx
	movl	$.L.str.6, %edx
	cmovneq	%rcx, %rdx
	cmpq	%rbp, 24(%rax)
	je	.LBB0_17
# BB#18:                                # %if.else.79
	movl	$.L.str.4, %esi
	movb	$4, %al
	movq	%rbp, %rdi
	callq	fprintf
	jmp	.LBB0_19
.LBB0_15:                               # %if.then.66
	testl	%ebx, %ebx
	movl	$.L.str.5, %eax
	movl	$.L.str.6, %edx
	cmovneq	%rax, %rdx
	movl	$.L.str.4, %esi
	movb	$4, %al
	callq	outprintf
	jmp	.LBB0_19
.LBB0_17:                               # %if.then.74
	movl	$.L.str.4, %esi
	movb	$4, %al
	callq	errprintf
.LBB0_19:                               # %if.end.84
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cov_write_page, .Lfunc_end0-cov_write_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	-4616189618054758400    # double -1
.LCPI1_1:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_2:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI1_3:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.align	16, 0x90
	.type	cov_write_page_ink,@function
cov_write_page_ink:                     # @cov_write_page_ink
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
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 128
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r15
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r13d
	movslq	836(%r15), %r12
	movq	24(%r15), %rdi
	movl	$.L.str.3, %edx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movq	%rax, 24(%rsp)          # 8-byte Spill
	testq	%r12, %r12
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movl	$0, %eax
	jle	.LBB1_11
# BB#1:                                 # %for.body.lr.ph
	movslq	%r13d, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	movq	%r15, %rdi
	movl	%ebp, %esi
	movq	24(%rsp), %rdx          # 8-byte Reload
	leaq	64(%rsp), %rcx
	callq	gdev_prn_get_bits
	testl	%eax, %eax
	js	.LBB1_11
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r13d, %r13d
	jle	.LBB1_10
# BB#4:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	64(%rsp), %rbx
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rbx,%rcx), %rdx
	leaq	4(%rbx), %rsi
	cmpq	%rsi, %rdx
	movq	%rsi, %rcx
	cmovaq	%rdx, %rcx
	subq	%rbx, %rcx
	decq	%rcx
	cmpq	%rsi, %rdx
	movq	%rsi, %rdi
	cmovaq	%rdx, %rdi
	subq	%rbx, %rdi
	decq	%rdi
	movq	%rdi, %r8
	shrq	$2, %r8
	btq	$2, %rdi
	jb	.LBB1_5
# BB#6:                                 # %for.body.8.prol
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%rbx), %edi
	cvtsi2sdl	%edi, %xmm0
	movsd	56(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	%xmm0, %xmm4
	movzbl	1(%rbx), %edi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	movsd	32(%rsp), %xmm7         # 8-byte Reload
                                        # xmm7 = mem[0],zero
	addsd	%xmm0, %xmm7
	movzbl	2(%rbx), %edi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	movsd	40(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	addsd	%xmm0, %xmm6
	movzbl	3(%rbx), %edi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	movsd	48(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	addsd	%xmm0, %xmm5
	movq	%rsi, 64(%rsp)
	jmp	.LBB1_7
	.align	16, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %rsi
	movsd	56(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	48(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	40(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	32(%rsp), %xmm7         # 8-byte Reload
                                        # xmm7 = mem[0],zero
.LBB1_7:                                # %for.body.8.lr.ph.split
                                        #   in Loop: Header=BB1_2 Depth=1
	shrq	$2, %rcx
	testq	%r8, %r8
	je	.LBB1_9
	.align	16, 0x90
.LBB1_8:                                # %for.body.8
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi), %edi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	addsd	%xmm4, %xmm0
	movzbl	1(%rsi), %edi
	cvtsi2sdl	%edi, %xmm1
	addsd	%xmm7, %xmm1
	movzbl	2(%rsi), %edi
	cvtsi2sdl	%edi, %xmm2
	addsd	%xmm6, %xmm2
	movzbl	3(%rsi), %edi
	cvtsi2sdl	%edi, %xmm3
	addsd	%xmm5, %xmm3
	leaq	4(%rsi), %rdi
	movq	%rdi, 64(%rsp)
	movzbl	4(%rsi), %edi
	cvtsi2sdl	%edi, %xmm4
	addsd	%xmm0, %xmm4
	movzbl	5(%rsi), %edi
	cvtsi2sdl	%edi, %xmm7
	addsd	%xmm1, %xmm7
	movzbl	6(%rsi), %edi
	cvtsi2sdl	%edi, %xmm6
	addsd	%xmm2, %xmm6
	movzbl	7(%rsi), %edi
	cvtsi2sdl	%edi, %xmm5
	addsd	%xmm3, %xmm5
	addq	$8, %rsi
	movq	%rsi, 64(%rsp)
	cmpq	%rdx, %rsi
	jb	.LBB1_8
.LBB1_9:                                # %for.cond.6.for.inc.24_crit_edge
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	%xmm7, 32(%rsp)         # 8-byte Spill
	movsd	%xmm6, 40(%rsp)         # 8-byte Spill
	movsd	%xmm5, 48(%rsp)         # 8-byte Spill
	movsd	%xmm4, 56(%rsp)         # 8-byte Spill
	leaq	1(%r14,%rcx), %r14
.LBB1_10:                               # %for.inc.24
                                        #   in Loop: Header=BB1_2 Depth=1
	incl	%ebp
	cmpl	%r12d, %ebp
	jl	.LBB1_2
.LBB1_11:                               # %for.end.26
	movslq	832(%r15), %rcx
	imulq	%r12, %rcx
	cmpq	%r14, %rcx
	movl	$1, %ebp
	cmovel	%eax, %ebp
	movq	24(%r15), %rdi
	movl	$.L.str.3, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	testl	%ebp, %ebp
	je	.LBB1_13
# BB#12:
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	movapd	%xmm0, %xmm3
	jmp	.LBB1_14
.LBB1_13:                               # %if.then.38
	movsd	.LCPI1_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm4, %xmm0
	imulq	$255, %r14, %rax
	movd	%rax, %xmm1
	punpckldq	.LCPI1_2(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI1_3(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm5       # xmm5 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm5
	divsd	%xmm5, %xmm0
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm4, %xmm1
	divsd	%xmm5, %xmm1
	movsd	40(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm4, %xmm2
	divsd	%xmm5, %xmm2
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm4, %xmm3
	divsd	%xmm5, %xmm3
.LBB1_14:                               # %if.end.54
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	24(%r15), %rdi
	movq	192(%rdi), %rax
	cmpq	%rbx, 16(%rax)
	je	.LBB1_15
# BB#16:                                # %if.else
	testl	%ebp, %ebp
	movl	$.L.str.5, %ecx
	movl	$.L.str.6, %edx
	cmovneq	%rcx, %rdx
	cmpq	%rbx, 24(%rax)
	je	.LBB1_17
# BB#18:                                # %if.else.70
	movl	$.L.str.4, %esi
	movb	$4, %al
	movq	%rbx, %rdi
	callq	fprintf
	jmp	.LBB1_19
.LBB1_15:                               # %if.then.58
	testl	%ebp, %ebp
	movl	$.L.str.5, %eax
	movl	$.L.str.6, %edx
	cmovneq	%rax, %rdx
	movl	$.L.str.4, %esi
	movb	$4, %al
	callq	outprintf
	jmp	.LBB1_19
.LBB1_17:                               # %if.then.65
	movl	$.L.str.4, %esi
	movb	$4, %al
	callq	errprintf
.LBB1_19:                               # %if.end.75
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cov_write_page_ink, .Lfunc_end1-cov_write_page_ink
	.cfi_endproc

	.type	cov_procs,@object       # @cov_procs
	.section	.rodata,"a",@progbits
	.align	8
cov_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	cmyk_8bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
	.quad	cmyk_8bit_map_cmyk_color
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
	.size	cov_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"inkcov"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceCMYK"
	.size	.L.str.1, 11

	.type	gs_inkcov_device,@object # @gs_inkcov_device
	.section	.rodata,"a",@progbits
	.globl	gs_inkcov_device
	.align	8
gs_inkcov_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	cov_procs
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
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
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
	.long	638                     # 0x27e
	.long	825                     # 0x339
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142496952              # float 6.124800e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1117126656              # float 7.500000e+01
	.long	1117126656              # float 7.500000e+01
	.long	1117126656              # float 7.500000e+01
	.long	1117126656              # float 7.500000e+01
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
	.quad	cov_write_page
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
	.size	gs_inkcov_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ink_cov"
	.size	.L.str.2, 8

	.type	gs_ink_cov_device,@object # @gs_ink_cov_device
	.section	.rodata,"a",@progbits
	.globl	gs_ink_cov_device
	.align	8
gs_ink_cov_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	cov_procs
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
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
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
	.long	638                     # 0x27e
	.long	825                     # 0x339
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142496952              # float 6.124800e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1117126656              # float 7.500000e+01
	.long	1117126656              # float 7.500000e+01
	.long	1117126656              # float 7.500000e+01
	.long	1117126656              # float 7.500000e+01
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
	.quad	cov_write_page_ink
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
	.size	gs_ink_cov_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"ink coverage plugin buffer"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%8.5f %8.5f %8.5f %8.5f CMYK %s\n"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ERROR"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"OK"
	.size	.L.str.6, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
