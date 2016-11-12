	.text
	.file	"write_t1.bc"
	.globl	gs_fapi_serialize_type1_font
	.align	16, 0x90
	.type	gs_fapi_serialize_type1_font,@function
gs_fapi_serialize_type1_font:           # @gs_fapi_serialize_type1_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 64
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	WRF_init
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	WRF_wstring
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	write_main_dictionary
	movq	24(%rsp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gs_fapi_serialize_type1_font, .Lfunc_end0-gs_fapi_serialize_type1_font
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI1_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_2:
	.quad	4535124824762089472     # double 1.52587890625E-5
	.text
	.align	16, 0x90
	.type	write_main_dictionary,@function
write_main_dictionary:                  # @write_main_dictionary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp11:
	.cfi_def_cfa_offset 352
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	$.L.str.1, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*208(%r13)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	WRF_wfloat
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	*208(%r13)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	WRF_wfloat
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%r13, %rdi
	callq	*208(%r13)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	WRF_wfloat
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	xorl	%esi, %esi
	movl	$3, %edx
	movq	%r13, %rdi
	callq	*208(%r13)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	WRF_wfloat
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	*208(%r13)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	WRF_wfloat
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	xorl	%esi, %esi
	movl	$5, %edx
	movq	%r13, %rdi
	callq	*208(%r13)
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	WRF_wfloat
	movl	$93, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$10, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$9, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movswq	%ax, %rsi
	movq	%r14, %rdi
	callq	WRF_wint
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$9, %esi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movswq	%ax, %rsi
	movq	%r14, %rdi
	callq	WRF_wint
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$9, %esi
	movl	$2, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movswq	%ax, %rsi
	movq	%r14, %rdi
	callq	WRF_wint
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$9, %esi
	movl	$3, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movswq	%ax, %rsi
	movq	%r14, %rdi
	callq	WRF_wint
	movl	$125, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$10, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$33, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	testw	%ax, %ax
	je	.LBB1_29
# BB#1:                                 # %if.then
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	movl	$35, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	testw	%ax, %ax
	setne	%al
	movzbl	%al, %r15d
	movl	$41, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	leal	1(%r15), %ebx
	testw	%ax, %ax
	cmovel	%r15d, %ebx
	movl	$43, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	cmpw	$1, %ax
	sbbl	$-1, %ebx
	leaq	32(%rsp), %r12
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	gs_sprintf
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	WRF_wstring
	movl	$35, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movw	%ax, %bx
	testw	%bx, %bx
	je	.LBB1_5
# BB#2:                                 # %for.body.47.lr.ph
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movswl	%bx, %r15d
	leaq	32(%rsp), %rbx
	.align	16, 0x90
.LBB1_3:                                # %for.body.47
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$36, %esi
	movl	$255, %r8d
	movq	%r13, %rdi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	callq	*216(%r13)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	WRF_wstring
	incl	%ebp
	cmpl	%r15d, %ebp
	jb	.LBB1_3
# BB#4:                                 # %for.end.52
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
.LBB1_5:                                # %if.end.53
	xorl	%ebp, %ebp
	movl	$41, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movw	%ax, %bx
	testw	%bx, %bx
	je	.LBB1_11
# BB#6:                                 # %for.body.64.lr.ph
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$35, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movw	%ax, 20(%rsp)           # 2-byte Spill
	movswl	%bx, %ecx
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movswl	%ax, %r12d
	leaq	32(%rsp), %rbx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_7:                                # %for.body.64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	xorl	%r15d, %r15d
	cmpw	$0, 20(%rsp)            # 2-byte Folded Reload
	je	.LBB1_9
	.align	16, 0x90
.LBB1_8:                                # %for.body.69
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*208(%r13)
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.12, %esi
	movb	$1, %al
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	WRF_wstring
	incl	%r15d
	incl	%ebp
	cmpl	%r12d, %r15d
	jb	.LBB1_8
.LBB1_9:                                # %for.end.78
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	24(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	28(%rsp), %ebp          # 4-byte Reload
	addl	$8, %ebp
	cmpl	16(%rsp), %eax          # 4-byte Folded Reload
	jb	.LBB1_7
# BB#10:                                # %for.end.81
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
.LBB1_11:                               # %if.end.82
	xorl	%ebx, %ebx
	movl	$43, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movw	%ax, %bp
	testw	%bp, %bp
	je	.LBB1_18
# BB#12:                                # %for.body.91.lr.ph
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movswl	%bp, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	$1, 24(%rsp)            # 4-byte Folded Spill
	leaq	32(%rsp), %rbp
	.align	16, 0x90
.LBB1_13:                               # %for.body.91
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movl	$44, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*192(%r13)
	movw	%ax, %bx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	testw	%bx, %bx
	je	.LBB1_16
# BB#14:                                #   in Loop: Header=BB1_13 Depth=1
	movswl	%bx, %r15d
	xorl	%r12d, %r12d
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebx
	.align	16, 0x90
.LBB1_15:                               # %for.body.98
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	leal	-1(%rbx), %edx
	movl	$42, %esi
	movq	%r13, %rdi
	callq	*208(%r13)
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.12, %esi
	movb	$1, %al
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	WRF_wstring
	movl	$42, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*208(%r13)
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.12, %esi
	movb	$1, %al
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	WRF_wstring
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	incl	%r12d
	addl	$64, %ebx
	cmpl	%r15d, %r12d
	jb	.LBB1_15
.LBB1_16:                               # %for.end.120
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	28(%rsp), %ebx          # 4-byte Reload
	incl	%ebx
	addl	$64, 24(%rsp)           # 4-byte Folded Spill
	cmpl	20(%rsp), %ebx          # 4-byte Folded Reload
	jb	.LBB1_13
# BB#17:                                # %for.end.123
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
.LBB1_18:                               # %if.end.124
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$34, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movw	%ax, %bx
	testw	%bx, %bx
	jle	.LBB1_24
# BB#19:                                # %if.then.130
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movq	16(%r14), %rax
	testq	%rax, %rax
	je	.LBB1_21
# BB#20:                                # %if.then.132
	movswq	%bx, %rcx
	addq	%rcx, %rax
	movq	%rax, 16(%r14)
.LBB1_21:                               # %if.end.136
	movq	(%r14), %rcx
	movl	$33, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*224(%r13)
	movq	(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB1_23
# BB#22:                                # %if.then.141
	cwtl
	cltq
	addq	%rax, %rcx
	movq	%rcx, (%r14)
.LBB1_23:                               # %if.end.144
	movl	$.L.str.17, %esi
	jmp	.LBB1_25
.LBB1_24:                               # %if.else
	movl	$.L.str.18, %esi
.LBB1_25:                               # %if.end.145
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	xorl	%ebx, %ebx
	movl	$39, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	testw	%ax, %ax
	je	.LBB1_28
# BB#26:
	movswl	%ax, %r15d
	leaq	32(%rsp), %rbp
	.align	16, 0x90
.LBB1_27:                               # %for.body.152
                                        # =>This Inner Loop Header: Depth=1
	movl	$40, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*208(%r13)
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.12, %esi
	movb	$1, %al
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	WRF_wstring
	incl	%ebx
	cmpl	%r15d, %ebx
	jb	.LBB1_27
.LBB1_28:                               # %for.end.161
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	12(%rsp), %ebx          # 4-byte Reload
.LBB1_29:                               # %if.end.162
	movl	$.L.str.20, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$1, 24(%r14)
	movl	$.L.str.21, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$.L.str.23, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$.L.str.24, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	testl	%ebx, %ebx
	je	.LBB1_31
# BB#30:                                # %if.then.i
	movl	$47, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$.L.str.25, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$28, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movswq	%ax, %rsi
	movq	%r14, %rdi
	callq	WRF_wint
	movl	$.L.str.29, %esi
	jmp	.LBB1_32
.LBB1_31:                               # %if.else.i
	movl	$.L.str.26, %esi
.LBB1_32:                               # %if.end.i
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$47, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$.L.str.27, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$19, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	cwtl
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%eax, %ecx
	shrl	$4, %ecx
	movswq	%cx, %rsi
	movq	%r14, %rdi
	callq	WRF_wint
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$.L.str.28, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*200(%r13)
	movd	%rax, %xmm1
	punpckldq	.LCPI1_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI1_1(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	mulsd	.LCPI1_2(%rip), %xmm0
	movq	%r14, %rdi
	callq	WRF_wfloat
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$47, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$.L.str.30, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$18, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	cwtl
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%eax, %ecx
	shrl	$4, %ecx
	movswq	%cx, %rsi
	movq	%r14, %rdi
	callq	WRF_wint
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$10, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movzwl	%ax, %r8d
	movl	$.L.str.31, %edx
	movl	$11, %ecx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	write_array_entry_with_count
	movl	$12, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movzwl	%ax, %r8d
	movl	$.L.str.32, %edx
	movl	$13, %ecx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	write_array_entry_with_count
	movl	$14, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movzwl	%ax, %r8d
	movl	$.L.str.33, %edx
	movl	$15, %ecx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	write_array_entry_with_count
	movl	$16, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movzwl	%ax, %r8d
	movl	$.L.str.34, %edx
	movl	$17, %ecx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	write_array_entry_with_count
	movl	$47, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$.L.str.35, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movl	$26, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movswq	%ax, %rsi
	movq	%r14, %rdi
	callq	WRF_wint
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$.L.str.36, %edx
	movl	$20, %ecx
	movl	$1, %r8d
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	write_array_entry_with_count
	movl	$.L.str.37, %edx
	movl	$21, %ecx
	movl	$1, %r8d
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	write_array_entry_with_count
	movl	$22, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movzwl	%ax, %r8d
	movl	$.L.str.38, %edx
	movl	$23, %ecx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	write_array_entry_with_count
	movl	$24, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movzwl	%ax, %r8d
	movl	$.L.str.39, %edx
	movl	$25, %ecx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	write_array_entry_with_count
	movl	$33, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	testw	%ax, %ax
	je	.LBB1_34
# BB#33:                                # %if.then.3.i
	movl	$.L.str.40, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movl	$.L.str.41, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
.LBB1_34:                               # %if.end.4.i
	testl	%ebx, %ebx
	je	.LBB1_35
# BB#36:                                # %if.then.10.i
	movl	$1, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	write_subrs
	xorl	%ebp, %ebp
	movl	$46, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	movw	%ax, %bx
	testw	%bx, %bx
	je	.LBB1_45
# BB#37:                                # %for.body.lr.ph.i.i
	movl	$.L.str.49, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movzwl	%bx, %r15d
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	WRF_wint
	movl	$.L.str.50, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	leaq	32(%rsp), %r12
	.align	16, 0x90
.LBB1_38:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$256, %ecx              # imm = 0x100
	movq	%r13, %rdi
	movl	%ebp, %esi
	movq	%r12, %rdx
	callq	*280(%r13)
	testw	%ax, %ax
	je	.LBB1_43
# BB#39:                                # %if.then.9.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	*272(%r13)
	movzwl	%ax, %ebx
	movl	$47, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	WRF_wstring
	movl	$32, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	WRF_wint
	movl	$.L.str.46, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	movq	8(%r14), %rcx
	movq	16(%r14), %rax
	subq	%rax, %rcx
	cmpq	%rbx, %rcx
	jge	.LBB1_40
# BB#41:                                # %if.else.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addq	%rbx, %rax
	movq	%rax, 16(%r14)
	jmp	.LBB1_42
	.align	16, 0x90
.LBB1_40:                               # %if.then.14.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	movq	(%r14), %rdx
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	%ebx, %ecx
	callq	*272(%r13)
	movq	(%r14), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	WRF_wtext
.LBB1_42:                               # %if.end.20.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	movl	$.L.str.51, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
.LBB1_43:                               # %for.inc.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	incl	%ebp
	cmpl	%ebp, %r15d
	jne	.LBB1_38
# BB#44:                                # %for.end.i.i
	movl	$.L.str.52, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	jmp	.LBB1_45
.LBB1_35:                               # %if.end.8.i
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	write_subrs
.LBB1_45:                               # %write_private_dictionary.exit
	movl	$33, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	*192(%r13)
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	write_main_dictionary, .Lfunc_end1-write_main_dictionary
	.cfi_endproc

	.globl	gs_fapi_serialize_type1_font_complete
	.align	16, 0x90
	.type	gs_fapi_serialize_type1_font_complete,@function
gs_fapi_serialize_type1_font_complete:  # @gs_fapi_serialize_type1_font_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 64
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	WRF_init
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	WRF_wstring
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	write_main_dictionary
	movq	24(%rsp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	gs_fapi_serialize_type1_font_complete, .Lfunc_end2-gs_fapi_serialize_type1_font_complete
	.cfi_endproc

	.align	16, 0x90
	.type	write_array_entry_with_count,@function
write_array_entry_with_count:           # @write_array_entry_with_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 48
.Ltmp28:
	.cfi_offset %rbx, -48
.Ltmp29:
	.cfi_offset %r12, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movl	%ecx, %r15d
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %r12
	testl	%ebx, %ebx
	jle	.LBB3_6
# BB#1:                                 # %for.body.lr.ph
	movl	$47, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	WRF_wstring
	movl	$.L.str.42, %esi
	movq	%r14, %rdi
	callq	WRF_wstring
	negl	%ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%ebp, %edx
	callq	*192(%r12)
	cwtl
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%eax, %ecx
	shrl	$4, %ecx
	movswq	%cx, %rsi
	movq	%r14, %rdi
	callq	WRF_wint
	leal	(%rbx,%rbp), %eax
	cmpl	$-1, %eax
	movb	$93, %al
	je	.LBB3_4
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB3_2 Depth=1
	movb	$32, %al
.LBB3_4:                                # %for.body
                                        #   in Loop: Header=BB3_2 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	WRF_wbyte
	incl	%ebp
	movl	%ebx, %eax
	addl	%ebp, %eax
	jne	.LBB3_2
# BB#5:                                 # %for.end
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	WRF_wstring             # TAILCALL
.LBB3_6:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	write_array_entry_with_count, .Lfunc_end3-write_array_entry_with_count
	.cfi_endproc

	.align	16, 0x90
	.type	write_subrs,@function
write_subrs:                            # @write_subrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 64
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	$30, %esi
	xorl	%edx, %edx
	callq	*192(%r12)
	movw	%ax, %bp
	testw	%bp, %bp
	je	.LBB4_13
# BB#1:                                 # %for.body.lr.ph
	movl	$.L.str.43, %esi
	movq	%rbx, %rdi
	callq	WRF_wstring
	movzwl	%bp, %r15d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	WRF_wint
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	WRF_wstring
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movl	%ebp, %esi
	testl	%r14d, %r14d
	je	.LBB4_4
# BB#3:                                 # %if.then.5
                                        #   in Loop: Header=BB4_2 Depth=1
	callq	*248(%r12)
	jmp	.LBB4_5
	.align	16, 0x90
.LBB4_4:                                # %if.else
                                        #   in Loop: Header=BB4_2 Depth=1
	callq	*240(%r12)
.LBB4_5:                                # %if.end.10
                                        #   in Loop: Header=BB4_2 Depth=1
	movzwl	%ax, %r13d
	movl	$.L.str.45, %esi
	movq	%rbx, %rdi
	callq	WRF_wstring
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	WRF_wint
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	WRF_wbyte
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	WRF_wint
	movl	$.L.str.46, %esi
	movq	%rbx, %rdi
	callq	WRF_wstring
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rax
	subq	%rax, %rcx
	cmpq	%r13, %rcx
	jge	.LBB4_6
# BB#10:                                # %if.else.27
                                        #   in Loop: Header=BB4_2 Depth=1
	addq	%r13, %rax
	movq	%rax, 16(%rbx)
	jmp	.LBB4_11
	.align	16, 0x90
.LBB4_6:                                # %if.then.14
                                        #   in Loop: Header=BB4_2 Depth=1
	testl	%r14d, %r14d
	je	.LBB4_8
# BB#7:                                 # %if.then.16
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rdx
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %ecx
	callq	*248(%r12)
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.20
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rdx
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %ecx
	callq	*240(%r12)
.LBB4_9:                                # %if.end.25
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	WRF_wtext
.LBB4_11:                               # %if.end.29
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$.L.str.47, %esi
	movq	%rbx, %rdi
	callq	WRF_wstring
	incq	%rbp
	cmpl	%ebp, %r15d
	jne	.LBB4_2
# BB#12:                                # %for.end
	movl	$.L.str.48, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	WRF_wstring             # TAILCALL
.LBB4_13:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	write_subrs, .Lfunc_end4-write_subrs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%!PS-AdobeFont-1\n"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"5 dict begin\n"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/FontType 1 def\n"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/FontMatrix ["
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/Encoding StandardEncoding def\n"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/FontBBox {"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/FontInfo %d dict dup begin\n"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/BlendAxisTypes ["
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	" /"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"] def\n"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/BlendDesignPositions ["
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"["
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%f "
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"]"
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/BlendDesignMap ["
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"end readonly def\n"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/$Blend {"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"} def\n"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/$Blend {0.1 mul exch 0.45 mul add exch 0.17 mul add add} def\n"
	.size	.L.str.18, 63

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"/WeightVector ["
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"currentdict end\ncurrentfile eexec\n"
	.size	.L.str.20, 35

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"XXXX"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"dup /Private 8 dict dup begin\n"
	.size	.L.str.22, 31

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"/MinFeature {16 16} def\n"
	.size	.L.str.23, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/password 5839 def\n"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"lenIV"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/lenIV -1 def\n"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"BlueFuzz"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"/BlueScale "
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	" def\n"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"BlueShift"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"BlueValues"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"OtherBlues"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"FamilyBlues"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"FamilyOtherBlues"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"ForceBold"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"StdHW"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"StdVW"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"StemSnapH"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"StemSnapV"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"3 index /Blend get /Private get begin\n"
	.size	.L.str.40, 39

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"|-\n"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	" ["
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/Subrs "
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	" array\n"
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"dup "
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	" RD "
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	" NP\n"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"ND\n"
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"2 index /CharStrings "
	.size	.L.str.49, 22

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	" dict dup begin\n"
	.size	.L.str.50, 17

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	" ND\n"
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	" end"
	.size	.L.str.52, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
