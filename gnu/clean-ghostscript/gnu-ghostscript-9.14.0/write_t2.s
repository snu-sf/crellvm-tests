	.text
	.file	"write_t2.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI0_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_2:
	.quad	4535124824762089472     # double 1.52587890625E-5
.LCPI0_3:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gs_fapi_serialize_type2_font
	.align	16, 0x90
	.type	gs_fapi_serialize_type2_font,@function
gs_fapi_serialize_type2_font:           # @gs_fapi_serialize_type2_font
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
	movq	%rdi, %r12
	leaq	24(%rsp), %r14
	movq	%r14, %rdi
	callq	WRF_init
	movl	$.L.str.1, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	WRF_wtext
	movl	$.L.str.2, %esi
	movl	$6, %edx
	movq	%r14, %rdi
	callq	WRF_wtext
	movl	$.L.str.3, %esi
	movl	$7, %edx
	movq	%r14, %rdi
	callq	WRF_wtext
	movq	24(%rsp), %rbp
	movl	$9, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	movswq	%ax, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	movl	$9, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	movswq	%ax, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	movl	$9, %esi
	movl	$2, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	movswq	%ax, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	movl	$9, %esi
	movl	$3, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	movswq	%ax, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	movl	$5, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*208(%r12)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	write_type2_float
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	*208(%r12)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	write_type2_float
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%r12, %rdi
	callq	*208(%r12)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	write_type2_float
	xorl	%esi, %esi
	movl	$3, %edx
	movq	%r12, %rdi
	callq	*208(%r12)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	write_type2_float
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	*208(%r12)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	write_type2_float
	xorl	%esi, %esi
	movl	$5, %edx
	movq	%r12, %rdi
	callq	*208(%r12)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	write_type2_float
	movl	$12, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$7, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$139, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$16, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movq	24(%rsp), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$.L.str.4, %esi
	movl	$5, %edx
	movq	%r14, %rdi
	callq	WRF_wtext
	movl	$15, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.4, %esi
	movl	$5, %edx
	movq	%r14, %rdi
	callq	WRF_wtext
	movl	$17, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movq	24(%rsp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$.L.str.5, %esi
	movl	$10, %edx
	movq	%r14, %rdi
	callq	WRF_wtext
	movl	$18, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_2
# BB#1:                                 # %if.then.7.i
	subq	%rbp, %rax
	incq	%rax
	movb	%ah, -2(%rbp)  # NOREX
	movb	%al, -1(%rbp)
.LBB0_2:                                # %write_font_dict_index.exit
	leaq	24(%rsp), %rbp
	movl	$.L.str, %esi
	movl	$2, %edx
	movq	%rbp, %rdi
	callq	WRF_wtext
	movl	$29, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	movw	%ax, %bx
	movzbl	%bh, %esi  # NOREX
	movq	%rbp, %rdi
	callq	WRF_wbyte
	movzbl	%bl, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
	testw	%bx, %bx
	je	.LBB0_13
# BB#3:                                 # %for.body.lr.ph.i
	leaq	24(%rsp), %r14
	movl	$4, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$.L.str.7, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	WRF_wtext
	movl	%ebx, %eax
	movq	24(%rsp), %rbx
	movzwl	%ax, %ebp
	movl	%eax, %r13d
	.align	16, 0x90
.LBB0_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.8, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	WRF_wtext
	decl	%ebp
	jne	.LBB0_4
# BB#5:                                 # %for.body.17.lr.ph.i
	movq	24(%rsp), %r15
	movzwl	%r13w, %r13d
	xorl	%ebp, %ebp
	leaq	24(%rsp), %r14
	movq	%r15, %rdx
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_12:                               # %if.end.32.for.body.17_crit_edge.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	24(%rsp), %rdx
	movq	%rax, %rbx
.LBB0_6:                                # %for.body.17.i
                                        # =>This Inner Loop Header: Depth=1
	movl	32(%rsp), %eax
	subl	40(%rsp), %eax
	movzwl	%ax, %ecx
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	*232(%r12)
	movzwl	%ax, %edx
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_8
# BB#7:                                 # %if.then.24.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%r14, %rdi
	callq	WRF_wtext
	jmp	.LBB0_9
	.align	16, 0x90
.LBB0_8:                                # %if.else.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addq	%rdx, 40(%rsp)
.LBB0_9:                                # %if.end.27.i
                                        #   in Loop: Header=BB0_6 Depth=1
	testq	%rbx, %rbx
	movl	$0, %eax
	je	.LBB0_11
# BB#10:                                # %if.then.29.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	24(%rsp), %rax
	subq	%r15, %rax
	incq	%rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, (%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 1(%rbx)
	movb	%ah, 2(%rbx)  # NOREX
	movb	%al, 3(%rbx)
	addq	$4, %rbx
	movq	%rbx, %rax
.LBB0_11:                               # %if.end.32.i
                                        #   in Loop: Header=BB0_6 Depth=1
	incl	%ebp
	cmpl	%ebp, %r13d
	jne	.LBB0_12
.LBB0_13:                               # %write_gsubrs_index.exit
	cmpq	$0, 24(%rsp)
	je	.LBB0_15
# BB#14:                                # %if.then.i
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movq	(%rsp), %rdx            # 8-byte Reload
	movb	%cl, 1(%rdx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 2(%rdx)
	movb	%ah, 3(%rdx)  # NOREX
	movb	%al, 4(%rdx)
.LBB0_15:                               # %write_charset.exit
	leaq	24(%rsp), %rdi
	xorl	%esi, %esi
	callq	WRF_wbyte
	cmpq	$0, 24(%rsp)
	je	.LBB0_17
# BB#16:                                # %if.then.i.35
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movq	8(%rsp), %rdx           # 8-byte Reload
	movb	%cl, 1(%rdx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 2(%rdx)
	movb	%ah, 3(%rdx)  # NOREX
	movb	%al, 4(%rdx)
.LBB0_17:                               # %write_charstrings_index.exit
	leaq	24(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	40(%rsp), %rdx
	testq	%rax, %rax
	je	.LBB0_19
# BB#18:                                # %if.then.i.50
	movq	%rdx, %rax
	shrq	$24, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movb	%al, 6(%rcx)
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, 7(%rcx)
	movb	%dh, 8(%rcx)  # NOREX
	movb	%dl, 9(%rcx)
.LBB0_19:                               # %if.end.i
	movq	%rdx, (%rsp)            # 8-byte Spill
	xorl	%ebp, %ebp
	movl	$19, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	cwtl
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%eax, %ecx
	shrl	$4, %ecx
	movswq	%cx, %rsi
	leaq	24(%rsp), %r14
	movq	%r14, %rdi
	callq	write_type2_int
	movl	$12, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$11, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*200(%r12)
	movd	%rax, %xmm1
	punpckldq	.LCPI0_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI0_1(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	mulsd	.LCPI0_2(%rip), %xmm0
	movq	%r14, %rdi
	callq	write_type2_float
	movl	$12, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$9, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$18, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	cwtl
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%eax, %ecx
	shrl	$4, %ecx
	movswq	%cx, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	movl	$12, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$10, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$10, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	testw	%ax, %ax
	je	.LBB0_23
# BB#20:                                # %for.body.lr.ph.i.i
	movzwl	%ax, %r13d
	leaq	24(%rsp), %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_21:                               # %for.body.i.109.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$11, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*192(%r12)
	cwtl
	movl	%eax, %r15d
	sarl	$31, %r15d
	shrl	$28, %r15d
	addl	%eax, %r15d
	sarl	$4, %r15d
	movl	%r15d, %eax
	subl	%ebx, %eax
	movslq	%eax, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	incl	%ebp
	cmpl	%ebp, %r13d
	movl	%r15d, %ebx
	jne	.LBB0_21
# BB#22:                                # %for.end.i.i
	leaq	24(%rsp), %rdi
	movl	$6, %esi
	callq	WRF_wbyte
.LBB0_23:                               # %write_delta_array_entry.exit.i
	xorl	%ebp, %ebp
	movl	$12, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	testw	%ax, %ax
	je	.LBB0_27
# BB#24:                                # %for.body.lr.ph.i.113.i
	movzwl	%ax, %r13d
	leaq	24(%rsp), %r14
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_25:                               # %for.body.i.123.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$13, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*192(%r12)
	cwtl
	movl	%eax, %ebx
	sarl	$31, %ebx
	shrl	$28, %ebx
	addl	%eax, %ebx
	sarl	$4, %ebx
	movl	%ebx, %eax
	subl	%r15d, %eax
	movslq	%eax, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	incl	%ebp
	cmpl	%ebp, %r13d
	movl	%ebx, %r15d
	jne	.LBB0_25
# BB#26:                                # %for.end.i.124.i
	leaq	24(%rsp), %rdi
	movl	$7, %esi
	callq	WRF_wbyte
.LBB0_27:                               # %write_delta_array_entry.exit125.i
	xorl	%ebp, %ebp
	movl	$14, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	testw	%ax, %ax
	je	.LBB0_31
# BB#28:                                # %for.body.lr.ph.i.129.i
	movzwl	%ax, %r13d
	leaq	24(%rsp), %r14
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_29:                               # %for.body.i.139.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$15, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*192(%r12)
	cwtl
	movl	%eax, %ebx
	sarl	$31, %ebx
	shrl	$28, %ebx
	addl	%eax, %ebx
	sarl	$4, %ebx
	movl	%ebx, %eax
	subl	%r15d, %eax
	movslq	%eax, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	incl	%ebp
	cmpl	%ebp, %r13d
	movl	%ebx, %r15d
	jne	.LBB0_29
# BB#30:                                # %for.end.i.140.i
	leaq	24(%rsp), %rdi
	movl	$8, %esi
	callq	WRF_wbyte
.LBB0_31:                               # %write_delta_array_entry.exit141.i
	xorl	%ebp, %ebp
	movl	$16, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	testw	%ax, %ax
	je	.LBB0_35
# BB#32:                                # %for.body.lr.ph.i.145.i
	movzwl	%ax, %r13d
	leaq	24(%rsp), %r14
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_33:                               # %for.body.i.155.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$17, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*192(%r12)
	cwtl
	movl	%eax, %ebx
	sarl	$31, %ebx
	shrl	$28, %ebx
	addl	%eax, %ebx
	sarl	$4, %ebx
	movl	%ebx, %eax
	subl	%r15d, %eax
	movslq	%eax, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	incl	%ebp
	cmpl	%ebp, %r13d
	movl	%ebx, %r15d
	jne	.LBB0_33
# BB#34:                                # %for.end.i.156.i
	leaq	24(%rsp), %rdi
	movl	$9, %esi
	callq	WRF_wbyte
.LBB0_35:                               # %for.body.i.168.preheader.i
	xorl	%r15d, %r15d
	movl	$26, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	movswq	%ax, %rsi
	leaq	24(%rsp), %r14
	movq	%r14, %rdi
	callq	write_type2_int
	movl	$12, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$14, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$20, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	cwtl
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%eax, %ecx
	shrl	$4, %ecx
	movswq	%cx, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	movl	$10, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$21, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	cwtl
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%eax, %ecx
	shrl	$4, %ecx
	movswq	%cx, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	movl	$11, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$22, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	testw	%ax, %ax
	je	.LBB0_39
# BB#36:                                # %for.body.lr.ph.i.202.i
	movzwl	%ax, %r13d
	leaq	24(%rsp), %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_37:                               # %for.body.i.212.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$23, %esi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	*192(%r12)
	cwtl
	movl	%eax, %ebp
	sarl	$31, %ebp
	shrl	$28, %ebp
	addl	%eax, %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	subl	%ebx, %eax
	movslq	%eax, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	incl	%r15d
	cmpl	%r15d, %r13d
	movl	%ebp, %ebx
	jne	.LBB0_37
# BB#38:                                # %for.end.i.213.i
	leaq	24(%rsp), %rbp
	movl	$12, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
	movl	$12, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
.LBB0_39:                               # %write_delta_array_entry.exit214.i
	xorl	%ebp, %ebp
	movl	$24, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	testw	%ax, %ax
	je	.LBB0_43
# BB#40:                                # %for.body.lr.ph.i.218.i
	movzwl	%ax, %r13d
	leaq	24(%rsp), %r14
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_41:                               # %for.body.i.228.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$25, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*192(%r12)
	cwtl
	movl	%eax, %ebx
	sarl	$31, %ebx
	shrl	$28, %ebx
	addl	%eax, %ebx
	sarl	$4, %ebx
	movl	%ebx, %eax
	subl	%r15d, %eax
	movslq	%eax, %rsi
	movq	%r14, %rdi
	callq	write_type2_int
	incl	%ebp
	cmpl	%ebp, %r13d
	movl	%ebx, %r15d
	jne	.LBB0_41
# BB#42:                                # %for.end.i.229.i
	leaq	24(%rsp), %rbp
	movl	$12, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
	movl	$13, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
.LBB0_43:                               # %write_delta_array_entry.exit230.i
	movq	160(%r12), %rbx
	cvtsi2sdl	536(%rbx), %xmm0
	mulsd	.LCPI0_3(%rip), %xmm0
	leaq	24(%rsp), %rbp
	movq	%rbp, %rdi
	callq	write_type2_float
	movl	$20, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
	movl	540(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI0_3(%rip), %xmm0
	movq	%rbp, %rdi
	callq	write_type2_float
	movl	$21, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
	movl	$30, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	testw	%ax, %ax
	je	.LBB0_55
# BB#44:                                # %do.body.preheader.i
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%eax, %ecx
	movl	$1, %eax
	subq	%rcx, %rax
	addq	40(%rsp), %rax
	movl	$1, %ecx
	jmp	.LBB0_45
	.align	16, 0x90
.LBB0_52:                               # %sw.epilog.thread234.i
                                        #   in Loop: Header=BB0_45 Depth=1
	incl	%ecx
.LBB0_45:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	leal	-1(%rcx), %esi
	cmpl	$4, %esi
	ja	.LBB0_53
# BB#46:                                # %do.body.i
                                        #   in Loop: Header=BB0_45 Depth=1
	leaq	(%rdx,%rax), %rdx
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_47:                               # %sw.bb.i
                                        #   in Loop: Header=BB0_45 Depth=1
	leal	107(%rdx), %esi
	cmpl	$214, %esi
	ja	.LBB0_52
	jmp	.LBB0_48
	.align	16, 0x90
.LBB0_53:                               # %sw.epilog.i
                                        #   in Loop: Header=BB0_45 Depth=1
	incl	%ecx
	cmpl	$5, %ecx
	jl	.LBB0_45
	jmp	.LBB0_54
.LBB0_49:                               # %sw.bb.23.i
                                        #   in Loop: Header=BB0_45 Depth=1
	leal	-108(%rdx), %esi
	cmpl	$1024, %esi             # imm = 0x400
	jb	.LBB0_48
# BB#50:                                # %sw.bb.23.i
                                        #   in Loop: Header=BB0_45 Depth=1
	leal	1131(%rdx), %esi
	cmpl	$1023, %esi             # imm = 0x3FF
	ja	.LBB0_52
	jmp	.LBB0_48
.LBB0_51:                               # %sw.bb.37.i
                                        #   in Loop: Header=BB0_45 Depth=1
	leal	32768(%rdx), %esi
	cmpl	$65535, %esi            # imm = 0xFFFF
	ja	.LBB0_52
.LBB0_48:                               # %if.then.20.i
	movslq	%edx, %rsi
	leaq	24(%rsp), %rdi
	callq	write_type2_int
.LBB0_54:                               # %do.end.i
	leaq	24(%rsp), %rdi
	movl	$19, %esi
	callq	WRF_wbyte
.LBB0_55:                               # %if.end.50.i
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_57
# BB#56:                                # %if.then.53.i
	subq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	%rax, %rcx
	shrq	$24, %rcx
	movq	16(%rsp), %rdx          # 8-byte Reload
	movb	%cl, 1(%rdx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 2(%rdx)
	movb	%ah, 3(%rdx)  # NOREX
	movb	%al, 4(%rdx)
.LBB0_57:                               # %write_private_dict.exit
	movl	$30, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*192(%r12)
	movw	%ax, %bx
	movzbl	%bh, %esi  # NOREX
	leaq	24(%rsp), %rbp
	movq	%rbp, %rdi
	callq	WRF_wbyte
	movzbl	%bl, %esi
	movq	%rbp, %rdi
	callq	WRF_wbyte
	testw	%bx, %bx
	je	.LBB0_68
# BB#58:                                # %for.body.lr.ph.i.69
	leaq	24(%rsp), %r14
	movl	$4, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$.L.str.7, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	WRF_wtext
	movl	%ebx, %eax
	movq	24(%rsp), %rbx
	movzwl	%ax, %ebp
	movl	%eax, %r13d
	.align	16, 0x90
.LBB0_59:                               # %for.body.i.73
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.8, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	WRF_wtext
	decl	%ebp
	jne	.LBB0_59
# BB#60:                                # %for.body.17.lr.ph.i.78
	movq	24(%rsp), %r15
	movzwl	%r13w, %r13d
	xorl	%ebp, %ebp
	leaq	24(%rsp), %r14
	movq	%r15, %rdx
	jmp	.LBB0_61
	.align	16, 0x90
.LBB0_67:                               # %if.end.32.for.body.17_crit_edge.i.111
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	24(%rsp), %rdx
	movq	%rax, %rbx
.LBB0_61:                               # %for.body.17.i.86
                                        # =>This Inner Loop Header: Depth=1
	movl	32(%rsp), %eax
	subl	40(%rsp), %eax
	movzwl	%ax, %ecx
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	*240(%r12)
	movzwl	%ax, %edx
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_63
# BB#62:                                # %if.then.24.i.87
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	%r14, %rdi
	callq	WRF_wtext
	jmp	.LBB0_64
	.align	16, 0x90
.LBB0_63:                               # %if.else.i.89
                                        #   in Loop: Header=BB0_61 Depth=1
	addq	%rdx, 40(%rsp)
.LBB0_64:                               # %if.end.27.i.91
                                        #   in Loop: Header=BB0_61 Depth=1
	testq	%rbx, %rbx
	movl	$0, %eax
	je	.LBB0_66
# BB#65:                                # %if.then.29.i.105
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	24(%rsp), %rax
	subq	%r15, %rax
	incq	%rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, (%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 1(%rbx)
	movb	%ah, 2(%rbx)  # NOREX
	movb	%al, 3(%rbx)
	addq	$4, %rbx
	movq	%rbx, %rax
.LBB0_66:                               # %if.end.32.i.109
                                        #   in Loop: Header=BB0_61 Depth=1
	incl	%ebp
	cmpl	%ebp, %r13d
	jne	.LBB0_67
.LBB0_68:                               # %write_subrs_index.exit
	movq	40(%rsp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_fapi_serialize_type2_font, .Lfunc_end0-gs_fapi_serialize_type2_font
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_47
	.quad	.LBB0_49
	.quad	.LBB0_51
	.quad	.LBB0_53
	.quad	.LBB0_48

	.text
	.align	16, 0x90
	.type	write_type2_int,@function
write_type2_int:                        # @write_type2_int
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	107(%rbx), %rax
	cmpq	$214, %rax
	ja	.LBB1_3
# BB#1:                                 # %if.then
	addl	$139, %ebx
	jmp	.LBB1_2
.LBB1_3:                                # %if.else
	leaq	32768(%rbx), %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB1_10
# BB#4:                                 # %if.then.7
	leaq	-108(%rbx), %rax
	cmpq	$1023, %rax             # imm = 0x3FF
	ja	.LBB1_6
# BB#5:                                 # %if.then.13
	addq	$63124, %rbx            # imm = 0xF694
	jmp	.LBB1_9
.LBB1_10:                               # %if.end.30
	movl	$29, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movq	%rbx, %rax
	shrq	$24, %rax
	movb	%al, 4(%rsp)
	movq	%rbx, %rax
	shrq	$16, %rax
	movb	%al, 5(%rsp)
	movb	%bh, 6(%rsp)  # NOREX
	movb	%bl, 7(%rsp)
	leaq	4(%rsp), %rsi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	WRF_wtext
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB1_6:                                # %if.else.15
	leaq	1131(%rbx), %rax
	cmpq	$1023, %rax             # imm = 0x3FF
	ja	.LBB1_8
# BB#7:                                 # %if.then.21
	movl	$64148, %eax            # imm = 0xFA94
	subq	%rbx, %rax
	movq	%rax, %rbx
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.23
	movl	$28, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
.LBB1_9:                                # %if.end.24
	movzbl	%bh, %esi  # NOREX
	movq	%r14, %rdi
	callq	WRF_wbyte
.LBB1_2:                                # %if.then
	movzbl	%bl, %esi
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	WRF_wbyte               # TAILCALL
.Lfunc_end1:
	.size	write_type2_int, .Lfunc_end1-write_type2_int
	.cfi_endproc

	.align	16, 0x90
	.type	write_type2_float,@function
write_type2_float:                      # @write_type2_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 80
.Ltmp24:
	.cfi_offset %rbx, -48
.Ltmp25:
	.cfi_offset %r12, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	leaq	(%rsp), %rbx
	movl	$.L.str.6, %esi
	movb	$1, %al
	movq	%rbx, %rdi
	callq	gs_sprintf
	movl	$30, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$1, %r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rbx), %al
	movb	%al, %bpl
	addb	$-48, %bpl
	movzbl	%bpl, %ecx
	cmpl	$10, %ecx
	jb	.LBB2_11
# BB#2:                                 # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movsbl	%al, %ecx
	cmpl	$68, %ecx
	jg	.LBB2_7
# BB#3:                                 # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movzbl	%al, %ecx
	cmpl	$45, %ecx
	jne	.LBB2_4
# BB#10:                                # %if.then.29
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$14, %bpl
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_7:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movzbl	%al, %ecx
	cmpl	$101, %ecx
	je	.LBB2_9
# BB#8:                                 # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$69, %ecx
	jne	.LBB2_5
.LBB2_9:                                # %if.then.19
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	1(%rbx), %rax
	movzbl	1(%rbx), %ecx
	cmpl	$45, %ecx
	sete	%bpl
	cmoveq	%rax, %rbx
	addb	$11, %bpl
	jmp	.LBB2_11
.LBB2_4:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$10, %bpl
	cmpl	$46, %ecx
	je	.LBB2_11
.LBB2_5:                                # %if.else.30
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	%al, %al
	movb	$15, %bpl
	je	.LBB2_11
# BB#6:                                 # %if.else.30
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_11:                               # %if.end.39
                                        #   in Loop: Header=BB2_1 Depth=1
	testl	%r12d, %r12d
	je	.LBB2_15
# BB#12:                                # %if.then.40
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpb	$0, (%rbx)
	je	.LBB2_13
# BB#14:                                # %if.else.45
                                        #   in Loop: Header=BB2_1 Depth=1
	shlb	$4, %bpl
	jmp	.LBB2_16
	.align	16, 0x90
.LBB2_15:                               # %if.else.49
                                        #   in Loop: Header=BB2_1 Depth=1
	orb	%r15b, %bpl
	movzbl	%bpl, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
.LBB2_16:                               # %if.end.53
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	%bpl, %r15b
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_13:                               # %if.then.44
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$255, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
.LBB2_17:                               # %if.end.53
                                        #   in Loop: Header=BB2_1 Depth=1
	testl	%r12d, %r12d
	sete	%al
	movzbl	%al, %r12d
	cmpb	$0, (%rbx)
	leaq	1(%rbx), %rbx
	jne	.LBB2_1
# BB#18:                                # %for.end
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	write_type2_float, .Lfunc_end2-write_type2_float
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata,"a",@progbits
.L.str:
	.zero	3
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\001\000\004\001"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\000\001\001\001\002x"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.cst8,"aM",@progbits,8
.L.str.3:
	.asciz	"\000\001\002\000\001\000\000"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"\035xxxx"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\035xxxx\035yyyy"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%f"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata,"a",@progbits
.L.str.7:
	.asciz	"\000\000\000\001"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"xxxx"
	.size	.L.str.8, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
