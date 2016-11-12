	.text
	.file	"jdhuff.bc"
	.globl	jinit_huff_decoder
	.align	16, 0x90
	.type	jinit_huff_decoder,@function
jinit_huff_decoder:                     # @jinit_huff_decoder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$1456, %edx             # imm = 0x5B0
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 840(%rbx)
	movq	$start_pass_huff_decoder, (%r14)
	movq	$finish_pass_huff, 16(%r14)
	cmpl	$0, 316(%rbx)
	je	.LBB0_1
# BB#2:                                 # %if.then
	movq	8(%rbx), %rax
	movslq	56(%rbx), %rdx
	shlq	$8, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	%rax, 192(%rbx)
	cmpl	$0, 56(%rbx)
	jle	.LBB0_5
# BB#3:                                 # %for.cond.14.preheader.lr.ph
	xorl	%ecx, %ecx
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB0_4:                                # %for.cond.14.preheader
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rax)
	movdqu	%xmm0, 16(%rax)
	movdqu	%xmm0, 32(%rax)
	movdqu	%xmm0, 48(%rax)
	movdqu	%xmm0, 64(%rax)
	movdqu	%xmm0, 80(%rax)
	movdqu	%xmm0, 96(%rax)
	movdqu	%xmm0, 112(%rax)
	movdqu	%xmm0, 128(%rax)
	movdqu	%xmm0, 144(%rax)
	movdqu	%xmm0, 160(%rax)
	movdqu	%xmm0, 176(%rax)
	movdqu	%xmm0, 192(%rax)
	movdqu	%xmm0, 208(%rax)
	movdqu	%xmm0, 224(%rax)
	movdqu	%xmm0, 240(%rax)
	incl	%ecx
	addq	$256, %rax              # imm = 0x100
	cmpl	56(%rbx), %ecx
	jl	.LBB0_4
.LBB0_5:                                # %for.cond.21.preheader
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%r14)
	movdqu	%xmm0, 88(%r14)
	jmp	.LBB0_6
.LBB0_1:                                # %for.cond.29.preheader
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 144(%r14)
	movdqu	%xmm0, 112(%r14)
	movdqu	%xmm0, 160(%r14)
	movdqu	%xmm0, 128(%r14)
.LBB0_6:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	jinit_huff_decoder, .Lfunc_end0-jinit_huff_decoder
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass_huff_decoder,@function
start_pass_huff_decoder:                # @start_pass_huff_decoder
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
	subq	$24, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 80
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
	movq	%rdi, %rbx
	movq	840(%rbx), %r15
	cmpl	$0, 316(%rbx)
	movl	756(%rbx), %eax
	je	.LBB1_40
# BB#1:                                 # %if.then
	movl	760(%rbx), %ecx
	testl	%eax, %eax
	je	.LBB1_2
# BB#3:                                 # %if.else
	cmpl	%eax, %ecx
	jl	.LBB1_10
# BB#4:                                 # %lor.lhs.false
	cmpl	784(%rbx), %ecx
	jg	.LBB1_10
# BB#5:                                 # %if.end.11
	cmpl	$1, 448(%rbx)
	jne	.LBB1_10
	jmp	.LBB1_6
.LBB1_40:                               # %if.else.152
	testl	%eax, %eax
	jne	.LBB1_46
# BB#41:                                # %lor.lhs.false.155
	cmpl	$0, 764(%rbx)
	jne	.LBB1_46
# BB#42:                                # %lor.lhs.false.158
	cmpl	$0, 768(%rbx)
	jne	.LBB1_46
# BB#43:                                # %lor.lhs.false.161
	cmpl	$0, 312(%rbx)
	movl	760(%rbx), %eax
	jne	.LBB1_45
# BB#44:                                # %lor.lhs.false.161
	cmpl	$63, %eax
	jg	.LBB1_47
.LBB1_45:                               # %land.lhs.true.166
	cmpl	784(%rbx), %eax
	je	.LBB1_47
.LBB1_46:                               # %if.then.170
	movq	(%rbx), %rax
	movl	$125, 40(%rax)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
.LBB1_47:                               # %if.end.175
	movl	$decode_mcu, %eax
	cmpl	$63, 784(%rbx)
	je	.LBB1_49
# BB#48:                                # %select.mid
	movl	$decode_mcu_sub, %eax
.LBB1_49:                               # %select.end
	movq	%rax, 8(%r15)
	cmpl	$0, 448(%rbx)
	jle	.LBB1_54
# BB#50:                                # %for.body.188.preheader
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB1_51:                               # %for.body.188
                                        # =>This Inner Loop Header: Depth=1
	movq	456(%rbx,%rbp,8), %r14
	movslq	20(%r14), %rdx
	leaq	112(%r15,%rdx,8), %rcx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	jpeg_make_d_derived_tbl
	cmpl	$0, 784(%rbx)
	je	.LBB1_53
# BB#52:                                # %if.then.197
                                        #   in Loop: Header=BB1_51 Depth=1
	movslq	24(%r14), %rdx
	leaq	144(%r15,%rdx,8), %rcx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	jpeg_make_d_derived_tbl
.LBB1_53:                               # %if.end.201
                                        #   in Loop: Header=BB1_51 Depth=1
	movl	$0, 44(%r15,%rbp,4)
	incq	%rbp
	movslq	448(%rbx), %rax
	cmpq	%rax, %rbp
	jl	.LBB1_51
.LBB1_54:                               # %for.cond.209.preheader
	cmpl	$0, 496(%rbx)
	jle	.LBB1_77
# BB#55:                                # %for.body.211.preheader
	xorl	%eax, %eax
	movl	$1, %r11d
	movl	$2, %r8d
	movl	$7, %esi
	movl	$3, %r14d
	movl	$4, %r9d
	movl	$5, %edx
	movl	$6, %r10d
	.align	16, 0x90
.LBB1_56:                               # %for.body.211
                                        # =>This Inner Loop Header: Depth=1
	movslq	500(%rbx,%rax,4), %rcx
	movq	456(%rbx,%rcx,8), %rcx
	movslq	20(%rcx), %rdi
	movq	112(%r15,%rdi,8), %rdi
	movq	%rdi, 176(%r15,%rax,8)
	movslq	24(%rcx), %rdi
	movq	144(%r15,%rdi,8), %rdi
	movq	%rdi, 688(%r15,%rax,8)
	cmpl	$0, 52(%rcx)
	je	.LBB1_75
# BB#57:                                # %if.then.230
                                        #   in Loop: Header=BB1_56 Depth=1
	movl	36(%rcx), %ebp
	movl	40(%rcx), %ecx
	movl	784(%rbx), %edi
	cmpl	$14, %edi
	jle	.LBB1_58
# BB#62:                                # %if.then.230
                                        #   in Loop: Header=BB1_56 Depth=1
	cmpl	$34, %edi
	jg	.LBB1_66
# BB#63:                                # %if.then.230
                                        #   in Loop: Header=BB1_56 Depth=1
	cmpl	$15, %edi
	jne	.LBB1_64
# BB#72:                                # %sw.bb.275
                                        #   in Loop: Header=BB1_56 Depth=1
	decl	%ecx
	decl	%ebp
	cmpl	$3, %ebp
	movslq	%ebp, %rdi
	cmovaq	%r14, %rdi
	cmpl	$3, %ecx
	movslq	%ecx, %rcx
	cmovaq	%r14, %rcx
	shlq	$4, %rcx
	movl	jpeg_zigzag_order4(%rcx,%rdi,4), %ecx
	jmp	.LBB1_71
	.align	16, 0x90
.LBB1_75:                               # %if.else.379
                                        #   in Loop: Header=BB1_56 Depth=1
	movl	$0, 1200(%r15,%rax,4)
	jmp	.LBB1_76
	.align	16, 0x90
.LBB1_58:                               # %if.then.230
                                        #   in Loop: Header=BB1_56 Depth=1
	testl	%edi, %edi
	je	.LBB1_69
# BB#59:                                # %if.then.230
                                        #   in Loop: Header=BB1_56 Depth=1
	cmpl	$3, %edi
	jne	.LBB1_60
# BB#70:                                # %sw.bb.234
                                        #   in Loop: Header=BB1_56 Depth=1
	decl	%ecx
	decl	%ebp
	cmpl	$1, %ebp
	movslq	%ebp, %rdi
	cmovaq	%r11, %rdi
	cmpl	$1, %ecx
	movslq	%ecx, %rcx
	cmovaq	%r11, %rcx
	shlq	$2, %rdi
	movl	jpeg_zigzag_order2(%rdi,%rcx,8), %ecx
	jmp	.LBB1_71
.LBB1_66:                               # %if.then.230
                                        #   in Loop: Header=BB1_56 Depth=1
	cmpl	$35, %edi
	jne	.LBB1_67
# BB#73:                                # %sw.bb.317
                                        #   in Loop: Header=BB1_56 Depth=1
	decl	%ecx
	decl	%ebp
	cmpl	$5, %ebp
	movslq	%ebp, %rdi
	cmovaq	%rdx, %rdi
	cmpl	$5, %ecx
	movslq	%ecx, %rcx
	cmovaq	%rdx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$2, %rdi
	movl	jpeg_zigzag_order6(%rdi,%rcx,8), %ecx
	jmp	.LBB1_71
.LBB1_64:                               # %if.then.230
                                        #   in Loop: Header=BB1_56 Depth=1
	cmpl	$24, %edi
	jne	.LBB1_74
# BB#65:                                # %sw.bb.296
                                        #   in Loop: Header=BB1_56 Depth=1
	decl	%ecx
	decl	%ebp
	cmpl	$4, %ebp
	movslq	%ebp, %rdi
	cmovaq	%r9, %rdi
	cmpl	$4, %ecx
	movslq	%ecx, %rcx
	cmovaq	%r9, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$2, %rdi
	movl	jpeg_zigzag_order5(%rdi,%rcx,4), %ecx
	jmp	.LBB1_71
.LBB1_69:                               # %sw.bb
                                        #   in Loop: Header=BB1_56 Depth=1
	movl	$1, 1200(%r15,%rax,4)
	jmp	.LBB1_76
.LBB1_60:                               # %if.then.230
                                        #   in Loop: Header=BB1_56 Depth=1
	cmpl	$8, %edi
	jne	.LBB1_74
# BB#61:                                # %sw.bb.254
                                        #   in Loop: Header=BB1_56 Depth=1
	decl	%ecx
	decl	%ebp
	cmpl	$2, %ebp
	movslq	%ebp, %rdi
	cmovaq	%r8, %rdi
	cmpl	$2, %ecx
	movslq	%ecx, %rcx
	cmovaq	%r8, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$2, %rdi
	movl	jpeg_zigzag_order3(%rdi,%rcx,4), %ecx
	jmp	.LBB1_71
.LBB1_67:                               # %if.then.230
                                        #   in Loop: Header=BB1_56 Depth=1
	cmpl	$48, %edi
	jne	.LBB1_74
# BB#68:                                # %sw.bb.338
                                        #   in Loop: Header=BB1_56 Depth=1
	decl	%ecx
	decl	%ebp
	cmpl	$6, %ebp
	movslq	%ebp, %rdi
	cmovaq	%r10, %rdi
	cmpl	$6, %ecx
	movslq	%ecx, %rcx
	cmovaq	%r10, %rcx
	imulq	$28, %rcx, %rcx
	movl	jpeg_zigzag_order7(%rcx,%rdi,4), %ecx
	jmp	.LBB1_71
.LBB1_74:                               # %sw.default
                                        #   in Loop: Header=BB1_56 Depth=1
	decl	%ecx
	decl	%ebp
	cmpl	$7, %ebp
	movslq	%ebp, %rdi
	cmovaq	%rsi, %rdi
	cmpl	$7, %ecx
	movslq	%ecx, %rcx
	cmovaq	%rsi, %rcx
	shlq	$5, %rcx
	movl	jpeg_zigzag_order(%rcx,%rdi,4), %ecx
.LBB1_71:                               # %for.inc.384
                                        #   in Loop: Header=BB1_56 Depth=1
	incl	%ecx
	movl	%ecx, 1200(%r15,%rax,4)
.LBB1_76:                               # %for.inc.384
                                        #   in Loop: Header=BB1_56 Depth=1
	incq	%rax
	movslq	496(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB1_56
	jmp	.LBB1_77
.LBB1_2:                                # %if.then.2
	testl	%ecx, %ecx
	jne	.LBB1_10
.LBB1_6:                                # %if.end.15
	movl	764(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB1_7
# BB#8:                                 # %if.then.17
	decl	%ecx
	cmpl	768(%rbx), %ecx
	jne	.LBB1_10
	jmp	.LBB1_9
.LBB1_7:                                # %if.end.15.if.end.22_crit_edge
	movl	768(%rbx), %ecx
.LBB1_9:                                # %if.end.22
	cmpl	$14, %ecx
	jl	.LBB1_11
.LBB1_10:                               # %bad
	movq	(%rbx), %rcx
	movl	$17, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	760(%rbx), %eax
	movl	%eax, 48(%rcx)
	movl	764(%rbx), %eax
	movl	%eax, 52(%rcx)
	movl	768(%rbx), %eax
	movl	%eax, 56(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB1_11:                               # %for.cond.preheader
	movl	448(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB1_12
# BB#13:                                # %for.body.lr.ph
	movq	%r15, 8(%rsp)           # 8-byte Spill
	leaq	764(%rbx), %r12
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_14:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	456(%rbx,%rcx,8), %rax
	movl	4(%rax), %ebp
	movslq	%ebp, %rdx
	movq	192(%rbx), %r15
	movl	756(%rbx), %eax
	testl	%eax, %eax
	movl	$0, %r14d
	je	.LBB1_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	%rdx, %rcx
	shlq	$8, %rcx
	cmpl	$0, (%r15,%rcx)
	movl	%eax, %r14d
	jns	.LBB1_17
# BB#16:                                # %if.then.56
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	(%rbx), %rax
	movl	$118, 40(%rax)
	movl	%ebp, 44(%rax)
	movl	$0, 48(%rax)
	movl	$-1, %esi
	movq	%rbx, %rdi
	movq	%rdx, %r14
	callq	*8(%rax)
	movq	%r14, %rdx
	movl	756(%rbx), %r14d
.LBB1_17:                               # %if.end.68
                                        #   in Loop: Header=BB1_14 Depth=1
	cmpl	760(%rbx), %r14d
	jg	.LBB1_22
# BB#18:                                # %for.body.73.lr.ph
                                        #   in Loop: Header=BB1_14 Depth=1
	movslq	%r14d, %r13
	decq	%r13
	shlq	$8, %rdx
	addq	%rdx, %r15
	.align	16, 0x90
.LBB1_19:                               # %for.body.73
                                        #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%r15,%r13,4), %eax
	testl	%eax, %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	cmpl	%eax, (%r12)
	je	.LBB1_21
# BB#20:                                # %if.then.81
                                        #   in Loop: Header=BB1_19 Depth=2
	movq	(%rbx), %rax
	movl	$118, 40(%rax)
	movl	%ebp, 44(%rax)
	movl	%r14d, 48(%rax)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
.LBB1_21:                               # %if.end.94
                                        #   in Loop: Header=BB1_19 Depth=2
	movl	768(%rbx), %eax
	movl	%eax, 4(%r15,%r13,4)
	movslq	760(%rbx), %rax
	incq	%r13
	incl	%r14d
	cmpq	%rax, %r13
	jl	.LBB1_19
.LBB1_22:                               # %for.end
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	movslq	448(%rbx), %rax
	cmpq	%rax, %rcx
	jl	.LBB1_14
# BB#23:
	movq	8(%rsp), %r15           # 8-byte Reload
	jmp	.LBB1_24
.LBB1_12:                               # %for.cond.preheader.for.end.100_crit_edge
	leaq	764(%rbx), %r12
.LBB1_24:                               # %for.end.100
	movl	756(%rbx), %ecx
	cmpl	$0, 764(%rbx)
	je	.LBB1_25
# BB#28:                                # %if.else.111
	testl	%ecx, %ecx
	je	.LBB1_29
# BB#30:                                # %if.else.117
	movq	$decode_mcu_AC_refine, 8(%r15)
	jmp	.LBB1_31
.LBB1_25:                               # %if.then.103
	testl	%ecx, %ecx
	je	.LBB1_26
# BB#27:                                # %if.else.107
	movq	$decode_mcu_AC_first, 8(%r15)
	jmp	.LBB1_31
.LBB1_29:                               # %if.then.114
	movq	$decode_mcu_DC_refine, 8(%r15)
	jmp	.LBB1_31
.LBB1_26:                               # %if.then.106
	movq	$decode_mcu_DC_first, 8(%r15)
.LBB1_31:                               # %for.cond.122.preheader
	testl	%eax, %eax
	jle	.LBB1_39
# BB#32:                                # %for.body.125.lr.ph
	movl	$57, %ebp
	jmp	.LBB1_33
	.align	16, 0x90
.LBB1_38:                               # %if.end.145.for.body.125_crit_edge
                                        #   in Loop: Header=BB1_33 Depth=1
	movl	756(%rbx), %ecx
	incq	%rbp
.LBB1_33:                               # %for.body.125
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rbp,8), %rax
	testl	%ecx, %ecx
	je	.LBB1_34
# BB#36:                                # %if.else.138
                                        #   in Loop: Header=BB1_33 Depth=1
	movslq	24(%rax), %r14
	leaq	72(%r15,%r14,8), %rcx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	jpeg_make_d_derived_tbl
	movq	72(%r15,%r14,8), %rax
	movq	%rax, 104(%r15)
	jmp	.LBB1_37
	.align	16, 0x90
.LBB1_34:                               # %if.then.131
                                        #   in Loop: Header=BB1_33 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB1_37
# BB#35:                                # %if.then.134
                                        #   in Loop: Header=BB1_33 Depth=1
	movslq	20(%rax), %rdx
	leaq	72(%r15,%rdx,8), %rcx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	jpeg_make_d_derived_tbl
	.align	16, 0x90
.LBB1_37:                               # %if.end.145
                                        #   in Loop: Header=BB1_33 Depth=1
	movl	$0, -184(%r15,%rbp,4)
	movslq	448(%rbx), %rax
	leaq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_38
.LBB1_39:                               # %for.end.150
	movl	$0, 40(%r15)
.LBB1_77:                               # %if.end.387
	movl	$0, 32(%r15)
	movq	$0, 24(%r15)
	movl	$0, 60(%r15)
	movl	372(%rbx), %eax
	movl	%eax, 64(%r15)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	start_pass_huff_decoder, .Lfunc_end1-start_pass_huff_decoder
	.cfi_endproc

	.align	16, 0x90
	.type	finish_pass_huff,@function
finish_pass_huff:                       # @finish_pass_huff
	.cfi_startproc
# BB#0:                                 # %entry
	movq	832(%rdi), %rax
	movq	840(%rdi), %rcx
	movl	32(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$29, %esi
	addl	%edx, %esi
	sarl	$3, %esi
	addl	%esi, 36(%rax)
	movl	$0, 32(%rcx)
	retq
.Lfunc_end2:
	.size	finish_pass_huff, .Lfunc_end2-finish_pass_huff
	.cfi_endproc

	.align	16, 0x90
	.type	decode_mcu_DC_first,@function
decode_mcu_DC_first:                    # @decode_mcu_DC_first
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
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 160
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	840(%r13), %r15
	movl	768(%r13), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	cmpl	$0, 372(%r13)
	je	.LBB3_8
# BB#1:                                 # %if.then
	cmpl	$0, 64(%r15)
	jne	.LBB3_8
# BB#2:                                 # %if.then.3
	movl	32(%r15), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	sarl	$3, %ecx
	movq	832(%r13), %rax
	addl	%ecx, 36(%rax)
	movl	$0, 32(%r15)
	movq	%r13, %rdi
	callq	*16(%rax)
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB3_29
# BB#3:                                 # %for.cond.preheader.i
	cmpl	$0, 448(%r13)
	jle	.LBB3_6
# BB#4:                                 # %for.body.i.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB3_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 44(%r15,%rax,4)
	incq	%rax
	movslq	448(%r13), %rcx
	cmpq	%rcx, %rax
	jl	.LBB3_5
.LBB3_6:                                # %for.end.i
	movl	$0, 40(%r15)
	movl	372(%r13), %eax
	movl	%eax, 64(%r15)
	cmpl	$0, 788(%r13)
	jne	.LBB3_8
# BB#7:                                 # %if.then.4.i
	movl	$0, 60(%r15)
.LBB3_8:                                # %if.end.7
	cmpl	$0, 60(%r15)
	jne	.LBB3_28
# BB#9:                                 # %if.then.9
	movq	%r13, 96(%rsp)
	movq	40(%r13), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 64(%rsp)
	movq	24(%r15), %rsi
	movl	32(%r15), %edx
	movl	56(%r15), %ecx
	movl	%ecx, 48(%rsp)
	movups	40(%r15), %xmm1
	movaps	%xmm1, 32(%rsp)
	cmpl	$0, 496(%r13)
	jle	.LBB3_27
# BB#10:                                # %for.body.lr.ph
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB3_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%r12,8), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movslq	500(%r13,%r12,4), %r14
	movq	456(%r13,%r14,8), %rax
	movslq	20(%rax), %rax
	movq	72(%r15,%rax,8), %rbp
	cmpl	$7, %edx
	jg	.LBB3_14
# BB#12:                                # %if.then.25
                                        #   in Loop: Header=BB3_11 Depth=1
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	leaq	64(%rsp), %rdi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB3_29
# BB#13:                                # %if.end.29
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	80(%rsp), %rsi
	movl	88(%rsp), %edx
	movl	$1, %r8d
	cmpl	$8, %edx
	jl	.LBB3_16
.LBB3_14:                               # %if.end.35
                                        #   in Loop: Header=BB3_11 Depth=1
	leal	-8(%rdx), %ecx
	movq	%rsi, %rax
	sarq	%cl, %rax
	movzbl	%al, %eax
	movl	288(%rbp,%rax,4), %ecx
	movl	$9, %r8d
	testl	%ecx, %ecx
	je	.LBB3_16
# BB#15:                                # %if.then.40
                                        #   in Loop: Header=BB3_11 Depth=1
	subl	%ecx, %edx
	movzbl	1312(%rbp,%rax), %ebp
	jmp	.LBB3_18
	.align	16, 0x90
.LBB3_16:                               # %label1
                                        #   in Loop: Header=BB3_11 Depth=1
	leaq	64(%rsp), %rdi
	movq	%rbp, %rcx
	callq	jpeg_huff_decode
	movl	%eax, %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	js	.LBB3_29
# BB#17:                                # %if.end.49
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	80(%rsp), %rsi
	movl	88(%rsp), %edx
.LBB3_18:                               # %cleanup.cont
                                        #   in Loop: Header=BB3_11 Depth=1
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB3_25
# BB#19:                                # %if.then.55
                                        #   in Loop: Header=BB3_11 Depth=1
	cmpl	%ebp, %edx
	jge	.LBB3_22
# BB#20:                                # %if.then.58
                                        #   in Loop: Header=BB3_11 Depth=1
	leaq	64(%rsp), %rdi
	movl	%ebp, %ecx
	callq	jpeg_fill_bit_buffer
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB3_29
# BB#21:                                # %if.end.62
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	80(%rsp), %rsi
	movl	88(%rsp), %edx
.LBB3_22:                               # %if.end.65
                                        #   in Loop: Header=BB3_11 Depth=1
	subl	%ebp, %edx
	movq	%rsi, %rax
	movb	%dl, %cl
	sarq	%cl, %rax
	movslq	%ebp, %rcx
	movl	bmask(,%rcx,4), %ecx
	andl	%ecx, %eax
	decl	%ebp
	movslq	%ebp, %rbp
	xorl	%edi, %edi
	cmpl	bmask(,%rbp,4), %eax
	jg	.LBB3_24
# BB#23:                                # %select.mid
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	%ecx, %edi
.LBB3_24:                               # %select.end
                                        #   in Loop: Header=BB3_11 Depth=1
	subl	%edi, %eax
.LBB3_25:                               # %if.end.81
                                        #   in Loop: Header=BB3_11 Depth=1
	addl	36(%rsp,%r14,4), %eax
	movl	%eax, 36(%rsp,%r14,4)
	movl	12(%rsp), %ecx          # 4-byte Reload
	shll	%cl, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movw	%ax, (%rcx)
	incq	%r12
	movslq	496(%r13), %rax
	cmpq	%rax, %r12
	jl	.LBB3_11
# BB#26:                                # %for.cond.for.end_crit_edge
	movq	40(%r13), %rax
	movaps	64(%rsp), %xmm0
.LBB3_27:                               # %for.end
	leaq	40(%r15), %rcx
	movups	%xmm0, (%rax)
	movq	%rsi, 24(%r15)
	movl	%edx, 32(%r15)
	movl	48(%rsp), %eax
	movl	%eax, 16(%rcx)
	movaps	32(%rsp), %xmm0
	movups	%xmm0, (%rcx)
.LBB3_28:                               # %if.end.100
	decl	64(%r15)
	movl	$1, %ebx
.LBB3_29:                               # %cleanup.102
	movl	%ebx, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	decode_mcu_DC_first, .Lfunc_end3-decode_mcu_DC_first
	.cfi_endproc

	.align	16, 0x90
	.type	decode_mcu_AC_first,@function
decode_mcu_AC_first:                    # @decode_mcu_AC_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 128
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movq	840(%r13), %r14
	cmpl	$0, 372(%r13)
	je	.LBB4_8
# BB#1:                                 # %if.then
	cmpl	$0, 64(%r14)
	jne	.LBB4_8
# BB#2:                                 # %if.then.2
	movl	32(%r14), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	sarl	$3, %ecx
	movq	832(%r13), %rax
	addl	%ecx, 36(%rax)
	movl	$0, 32(%r14)
	movq	%r13, %rdi
	callq	*16(%rax)
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB4_40
# BB#3:                                 # %for.cond.preheader.i
	cmpl	$0, 448(%r13)
	jle	.LBB4_6
# BB#4:                                 # %for.body.i.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB4_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 44(%r14,%rax,4)
	incq	%rax
	movslq	448(%r13), %rcx
	cmpq	%rcx, %rax
	jl	.LBB4_5
.LBB4_6:                                # %for.end.i
	movl	$0, 40(%r14)
	movl	372(%r13), %eax
	movl	%eax, 64(%r14)
	cmpl	$0, 788(%r13)
	jne	.LBB4_8
# BB#7:                                 # %if.then.4.i
	movl	$0, 60(%r14)
.LBB4_8:                                # %if.end.6
	cmpl	$0, 60(%r14)
	jne	.LBB4_39
# BB#9:                                 # %if.then.8
	movl	40(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB4_11
# BB#10:                                # %if.then.14
	decl	%ecx
	jmp	.LBB4_38
.LBB4_11:                               # %if.else
	movl	760(%r13), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	768(%r13), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movq	776(%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r13, 64(%rsp)
	movq	40(%r13), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	24(%r14), %rsi
	movl	32(%r14), %edx
	movl	756(%r13), %r12d
	cmpl	%ecx, %r12d
	jg	.LBB4_36
# BB#12:                                # %for.body.lr.ph
	movq	(%rbp), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	104(%r14), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB4_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %edx
	jg	.LBB4_14
# BB#15:                                # %if.then.24
                                        #   in Loop: Header=BB4_13 Depth=1
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	leaq	32(%rsp), %rdi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB4_40
# BB#16:                                # %if.end.28
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movl	$1, %r8d
	cmpl	$8, %edx
	movq	24(%rsp), %rbp          # 8-byte Reload
	jl	.LBB4_19
	jmp	.LBB4_17
	.align	16, 0x90
.LBB4_14:                               #   in Loop: Header=BB4_13 Depth=1
	movq	24(%rsp), %rbp          # 8-byte Reload
.LBB4_17:                               # %if.end.34
                                        #   in Loop: Header=BB4_13 Depth=1
	leal	-8(%rdx), %ecx
	movq	%rsi, %rax
	sarq	%cl, %rax
	movzbl	%al, %eax
	movl	288(%rbp,%rax,4), %ecx
	movl	$9, %r8d
	testl	%ecx, %ecx
	je	.LBB4_19
# BB#18:                                # %if.then.38
                                        #   in Loop: Header=BB4_13 Depth=1
	subl	%ecx, %edx
	movzbl	1312(%rbp,%rax), %ebx
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	jmp	.LBB4_21
	.align	16, 0x90
.LBB4_19:                               # %label2
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	leaq	32(%rsp), %rdi
	movq	%rbp, %rcx
	callq	jpeg_huff_decode
	movl	%eax, %ebx
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	js	.LBB4_40
# BB#20:                                # %if.end.48
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
.LBB4_21:                               # %cleanup.cont
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	%ebx, %ebp
	sarl	$4, %ebp
	andl	$15, %ebx
	je	.LBB4_28
# BB#22:                                # %if.then.56
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpl	%ebx, %edx
	jge	.LBB4_25
# BB#23:                                # %if.then.59
                                        #   in Loop: Header=BB4_13 Depth=1
	leaq	32(%rsp), %rdi
	movl	%ebx, %ecx
	callq	jpeg_fill_bit_buffer
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB4_40
# BB#24:                                # %if.end.63
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
.LBB4_25:                               # %if.end.66
                                        #   in Loop: Header=BB4_13 Depth=1
	addl	%r12d, %ebp
	subl	%ebx, %edx
	movq	%rsi, %rax
	movb	%dl, %cl
	sarq	%cl, %rax
	movl	%ebx, %ecx
	movl	bmask(,%rcx,4), %ecx
	andl	%ecx, %eax
	decl	%ebx
	movslq	%ebx, %rbx
	xorl	%edi, %edi
	cmpl	bmask(,%rbx,4), %eax
	jg	.LBB4_27
# BB#26:                                # %select.mid
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	%ecx, %edi
.LBB4_27:                               # %select.end
                                        #   in Loop: Header=BB4_13 Depth=1
	subl	%edi, %eax
	movl	16(%rsp), %ecx          # 4-byte Reload
	shll	%cl, %eax
	movslq	%ebp, %rcx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movslq	(%rdi,%rcx,4), %rcx
	movq	(%rsp), %rdi            # 8-byte Reload
	movw	%ax, (%rdi,%rcx,2)
	jmp	.LBB4_35
	.align	16, 0x90
.LBB4_28:                               # %if.else.87
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpl	$15, %ebp
	jne	.LBB4_29
# BB#34:                                # %if.end.114
                                        #   in Loop: Header=BB4_13 Depth=1
	addl	$15, %r12d
	movl	%r12d, %ebp
.LBB4_35:                               # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=1
	leal	1(%rbp), %r12d
	cmpl	20(%rsp), %ebp          # 4-byte Folded Reload
	jl	.LBB4_13
	jmp	.LBB4_36
.LBB4_29:                               # %if.else.87
	testl	%ebp, %ebp
	jne	.LBB4_30
.LBB4_36:
	xorl	%ecx, %ecx
.LBB4_37:                               # %for.end
	movq	40(%r13), %rax
	movaps	32(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movq	%rsi, 24(%r14)
	movl	%edx, 32(%r14)
.LBB4_38:                               # %if.end.127
	movl	%ecx, 40(%r14)
.LBB4_39:                               # %if.end.130
	decl	64(%r14)
	movl	$1, %r15d
.LBB4_40:                               # %cleanup.133
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_30:                               # %if.then.92
	movl	$1, %ebx
	movb	%bpl, %cl
	shll	%cl, %ebx
	cmpl	%ebp, %edx
	jge	.LBB4_33
# BB#31:                                # %if.then.96
	leaq	32(%rsp), %rdi
	movl	%ebp, %ecx
	callq	jpeg_fill_bit_buffer
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB4_40
# BB#32:                                # %if.end.100
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
.LBB4_33:                               # %if.end.103
	subl	%ebp, %edx
	movq	%rsi, %rax
	movb	%dl, %cl
	sarq	%cl, %rax
	movslq	%ebp, %rcx
	andl	bmask(,%rcx,4), %eax
	leal	-1(%rbx,%rax), %ecx
	jmp	.LBB4_37
.Lfunc_end4:
	.size	decode_mcu_AC_first, .Lfunc_end4-decode_mcu_AC_first
	.cfi_endproc

	.align	16, 0x90
	.type	decode_mcu_DC_refine,@function
decode_mcu_DC_refine:                   # @decode_mcu_DC_refine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 96
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	840(%rbx), %r12
	cmpl	$0, 372(%rbx)
	je	.LBB5_8
# BB#1:                                 # %if.then
	cmpl	$0, 64(%r12)
	jne	.LBB5_8
# BB#2:                                 # %if.then.2
	movl	32(%r12), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	sarl	$3, %ecx
	movq	832(%rbx), %rax
	addl	%ecx, 36(%rax)
	movl	$0, 32(%r12)
	movq	%rbx, %rdi
	callq	*16(%rax)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB5_18
# BB#3:                                 # %for.cond.preheader.i
	cmpl	$0, 448(%rbx)
	jle	.LBB5_6
# BB#4:                                 # %for.body.i.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB5_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 44(%r12,%rax,4)
	incq	%rax
	movslq	448(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB5_5
.LBB5_6:                                # %for.end.i
	movl	$0, 40(%r12)
	movl	372(%rbx), %eax
	movl	%eax, 64(%r12)
	cmpl	$0, 788(%rbx)
	jne	.LBB5_8
# BB#7:                                 # %if.then.4.i
	movl	$0, 60(%r12)
.LBB5_8:                                # %if.end.6
	movq	%rbx, 32(%rsp)
	movq	40(%rbx), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, (%rsp)
	movq	24(%r12), %rsi
	movl	32(%r12), %edx
	movb	768(%rbx), %cl
	movl	$1, %r13d
	shll	%cl, %r13d
	cmpl	$0, 496(%rbx)
	jle	.LBB5_17
# BB#9:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	leaq	(%rsp), %r15
	.align	16, 0x90
.LBB5_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%edx, %edx
	jg	.LBB5_13
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	$1, %ecx
	movq	%r15, %rdi
	callq	jpeg_fill_bit_buffer
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB5_18
# BB#12:                                # %if.end.20
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	16(%rsp), %rsi
	movl	24(%rsp), %edx
.LBB5_13:                               # %if.end.23
                                        #   in Loop: Header=BB5_10 Depth=1
	decl	%edx
	btq	%rdx, %rsi
	jae	.LBB5_15
# BB#14:                                # %if.then.25
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r14,%rbp,8), %rax
	movzwl	(%rax), %ecx
	orl	%r13d, %ecx
	movw	%cx, (%rax)
.LBB5_15:                               # %for.inc
                                        #   in Loop: Header=BB5_10 Depth=1
	incq	%rbp
	movslq	496(%rbx), %rax
	cmpq	%rax, %rbp
	jl	.LBB5_10
# BB#16:                                # %for.cond.for.end_crit_edge
	movq	40(%rbx), %rax
	movaps	(%rsp), %xmm0
.LBB5_17:                               # %for.end
	movups	%xmm0, (%rax)
	movq	%rsi, 24(%r12)
	movl	%edx, 32(%r12)
	decl	64(%r12)
	movl	$1, %eax
.LBB5_18:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	decode_mcu_DC_refine, .Lfunc_end5-decode_mcu_DC_refine
	.cfi_endproc

	.align	16, 0x90
	.type	decode_mcu_AC_refine,@function
decode_mcu_AC_refine:                   # @decode_mcu_AC_refine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$376, %rsp              # imm = 0x178
.Ltmp63:
	.cfi_def_cfa_offset 432
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movq	840(%rbp), %rbx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	cmpl	$0, 372(%rbp)
	je	.LBB6_8
# BB#1:                                 # %if.then
	cmpl	$0, 64(%rbx)
	jne	.LBB6_8
# BB#2:                                 # %if.then.2
	movl	32(%rbx), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	sarl	$3, %ecx
	movq	832(%rbp), %rax
	addl	%ecx, 36(%rax)
	movl	$0, 32(%rbx)
	movq	%rbp, %rdi
	callq	*16(%rax)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB6_75
# BB#3:                                 # %for.cond.preheader.i
	cmpl	$0, 448(%rbp)
	jle	.LBB6_6
# BB#4:                                 # %for.body.i.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB6_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 44(%rbx,%rax,4)
	incq	%rax
	movslq	448(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_5
.LBB6_6:                                # %for.end.i
	movl	$0, 40(%rbx)
	movl	372(%rbp), %eax
	movl	%eax, 64(%rbx)
	cmpl	$0, 788(%rbp)
	jne	.LBB6_8
# BB#7:                                 # %if.then.4.i
	movl	$0, 60(%rbx)
.LBB6_8:                                # %if.end.6
	cmpl	$0, 60(%rbx)
	jne	.LBB6_74
# BB#9:                                 # %if.then.8
	movslq	760(%rbp), %rsi
	movb	768(%rbp), %cl
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	$-1, %eax
	shll	%cl, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	776(%rbp), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rbp, 368(%rsp)
	movq	40(%rbp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 336(%rsp)
	movq	24(%rbx), %r9
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	32(%rbx), %edx
	movl	40(%rbx), %r15d
	movq	(%r14), %r13
	movl	756(%rbp), %r14d
	testl	%r15d, %r15d
	je	.LBB6_16
# BB#10:                                # %if.then.8.do.body.175.preheader_crit_edge
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
.LBB6_11:                               # %do.body.175.preheader
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movslq	%r14d, %rbp
	decq	%rbp
	.align	16, 0x90
.LBB6_12:                               # %do.body.175
                                        # =>This Inner Loop Header: Depth=1
	movslq	4(%rdi,%rbp,4), %rbx
	cmpw	$0, (%r13,%rbx,2)
	je	.LBB6_71
# BB#13:                                # %if.then.182
                                        #   in Loop: Header=BB6_12 Depth=1
	testl	%edx, %edx
	jg	.LBB6_65
# BB#14:                                # %if.then.185
                                        #   in Loop: Header=BB6_12 Depth=1
	movq	%r13, %r12
	movq	%rdi, %r13
	movq	%rsi, %r14
	movl	$1, %ecx
	leaq	336(%rsp), %rdi
	movq	%r9, %rsi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB6_15
# BB#64:                                # %if.end.189
                                        #   in Loop: Header=BB6_12 Depth=1
	movq	352(%rsp), %r9
	movl	360(%rsp), %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r12, %r13
.LBB6_65:                               # %if.end.192
                                        #   in Loop: Header=BB6_12 Depth=1
	decl	%edx
	btq	%rdx, %r9
	jae	.LBB6_71
# BB#66:                                # %if.then.199
                                        #   in Loop: Header=BB6_12 Depth=1
	movswl	(%r13,%rbx,2), %eax
	testl	76(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB6_71
# BB#67:                                # %if.then.204
                                        #   in Loop: Header=BB6_12 Depth=1
	testw	%ax, %ax
	js	.LBB6_69
# BB#68:                                # %if.then.208
                                        #   in Loop: Header=BB6_12 Depth=1
	addl	76(%rsp), %eax          # 4-byte Folded Reload
	jmp	.LBB6_70
.LBB6_69:                               # %if.else.212
                                        #   in Loop: Header=BB6_12 Depth=1
	addl	60(%rsp), %eax          # 4-byte Folded Reload
.LBB6_70:                               # %if.end.219
                                        #   in Loop: Header=BB6_12 Depth=1
	movw	%ax, (%r13,%rbx,2)
	.align	16, 0x90
.LBB6_71:                               # %if.end.219
                                        #   in Loop: Header=BB6_12 Depth=1
	incq	%rbp
	cmpq	%rsi, %rbp
	jl	.LBB6_12
# BB#72:                                # %do.end.224
	decl	%r15d
	movl	%r15d, %eax
	movq	64(%rsp), %rbx          # 8-byte Reload
.LBB6_73:                               # %if.end.226
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	40(%rcx), %rcx
	movaps	336(%rsp), %xmm0
	movups	%xmm0, (%rcx)
	movq	%r9, 24(%rbx)
	movl	%edx, 32(%rbx)
	movl	%eax, 40(%rbx)
.LBB6_74:                               # %if.end.239
	decl	64(%rbx)
	movl	$1, %eax
.LBB6_75:                               # %cleanup.248
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_16:                               # %do.body.preheader
	movq	104(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
.LBB6_17:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_41 Depth 2
	movq	%rdi, %rbp
	movq	%rsi, %r12
	cmpl	$7, %edx
	jg	.LBB6_18
# BB#19:                                # %if.then.24
                                        #   in Loop: Header=BB6_17 Depth=1
	xorl	%ecx, %ecx
	leaq	336(%rsp), %rdi
	movq	%r9, %rsi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB6_20
# BB#27:                                # %if.end.28
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	%r14d, 44(%rsp)         # 4-byte Spill
	movq	352(%rsp), %r9
	movl	360(%rsp), %edx
	movl	$1, %r8d
	cmpl	$8, %edx
	movq	48(%rsp), %r14          # 8-byte Reload
	jl	.LBB6_30
	jmp	.LBB6_28
	.align	16, 0x90
.LBB6_18:                               #   in Loop: Header=BB6_17 Depth=1
	movl	%r14d, 44(%rsp)         # 4-byte Spill
	movq	48(%rsp), %r14          # 8-byte Reload
.LBB6_28:                               # %if.end.34
                                        #   in Loop: Header=BB6_17 Depth=1
	leal	-8(%rdx), %ecx
	movq	%r9, %rax
	sarq	%cl, %rax
	movzbl	%al, %eax
	movl	288(%r14,%rax,4), %ecx
	movl	$9, %r8d
	testl	%ecx, %ecx
	je	.LBB6_30
# BB#29:                                # %if.then.38
                                        #   in Loop: Header=BB6_17 Depth=1
	subl	%ecx, %edx
	movzbl	1312(%r14,%rax), %eax
	jmp	.LBB6_32
	.align	16, 0x90
.LBB6_30:                               # %label3
                                        #   in Loop: Header=BB6_17 Depth=1
	leaq	336(%rsp), %rdi
	movq	%r9, %rsi
	movq	%r14, %rcx
	callq	jpeg_huff_decode
	testl	%eax, %eax
	js	.LBB6_20
# BB#31:                                # %if.end.47
                                        #   in Loop: Header=BB6_17 Depth=1
	movq	352(%rsp), %r9
	movl	360(%rsp), %edx
.LBB6_32:                               # %cleanup.cont
                                        #   in Loop: Header=BB6_17 Depth=1
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	%eax, %ebp
	sarl	$4, %ebp
	andl	$15, %eax
	jne	.LBB6_33
# BB#45:                                # %if.else.80
                                        #   in Loop: Header=BB6_17 Depth=1
	cmpl	$15, %ebp
	jne	.LBB6_47
# BB#46:                                #   in Loop: Header=BB6_17 Depth=1
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	movl	$15, %ebp
	jmp	.LBB6_40
	.align	16, 0x90
.LBB6_33:                               # %cleanup.cont
                                        #   in Loop: Header=BB6_17 Depth=1
	cmpl	$1, %eax
	je	.LBB6_35
# BB#34:                                # %if.then.58
                                        #   in Loop: Header=BB6_17 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$121, 40(%rax)
	movq	%rsi, %r12
	movl	$-1, %esi
	movq	%r9, %rbx
	movq	%rdx, %r15
	callq	*8(%rax)
	movq	%r15, %rdx
	movq	%rbx, %r9
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r12, %rsi
.LBB6_35:                               # %if.end.60
                                        #   in Loop: Header=BB6_17 Depth=1
	testl	%edx, %edx
	jle	.LBB6_37
# BB#36:                                #   in Loop: Header=BB6_17 Depth=1
	movq	%r14, 48(%rsp)          # 8-byte Spill
	jmp	.LBB6_39
.LBB6_37:                               # %if.then.63
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	%ebp, %r15d
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movl	$1, %ecx
	leaq	336(%rsp), %rdi
	movq	%r9, %rsi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB6_20
# BB#38:                                # %if.end.67
                                        #   in Loop: Header=BB6_17 Depth=1
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movq	352(%rsp), %r9
	movl	360(%rsp), %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movl	%r15d, %ebp
.LBB6_39:                               # %if.end.70
                                        #   in Loop: Header=BB6_17 Depth=1
	decl	%edx
	btq	%rdx, %r9
	movl	76(%rsp), %eax          # 4-byte Reload
	cmovael	60(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 28(%rsp)          # 4-byte Spill
.LBB6_40:                               # %do.body.107.preheader
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	movslq	%eax, %r12
	jmp	.LBB6_41
.LBB6_57:                               # %if.else.141
                                        #   in Loop: Header=BB6_41 Depth=2
	addl	60(%rsp), %eax          # 4-byte Folded Reload
	movw	%ax, (%r13,%r14,2)
	jmp	.LBB6_60
	.align	16, 0x90
.LBB6_41:                               # %do.body.107
                                        #   Parent Loop BB6_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi,%r12,4), %r14
	cmpw	$0, (%r13,%r14,2)
	je	.LBB6_58
# BB#42:                                # %if.then.111
                                        #   in Loop: Header=BB6_41 Depth=2
	testl	%edx, %edx
	jg	.LBB6_53
# BB#43:                                # %if.then.114
                                        #   in Loop: Header=BB6_41 Depth=2
	movq	%r13, %r15
	movq	%rdi, %r13
	movq	%rsi, %rbx
	movl	$1, %ecx
	leaq	336(%rsp), %rdi
	movq	%r9, %rsi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB6_44
# BB#52:                                # %if.end.118
                                        #   in Loop: Header=BB6_41 Depth=2
	movq	352(%rsp), %r9
	movl	360(%rsp), %edx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%r15, %r13
.LBB6_53:                               # %if.end.121
                                        #   in Loop: Header=BB6_41 Depth=2
	decl	%edx
	btq	%rdx, %r9
	jae	.LBB6_60
# BB#54:                                # %if.then.128
                                        #   in Loop: Header=BB6_41 Depth=2
	movswl	(%r13,%r14,2), %eax
	testl	76(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB6_60
# BB#55:                                # %if.then.133
                                        #   in Loop: Header=BB6_41 Depth=2
	testw	%ax, %ax
	js	.LBB6_57
# BB#56:                                # %if.then.137
                                        #   in Loop: Header=BB6_41 Depth=2
	addl	76(%rsp), %eax          # 4-byte Folded Reload
	movw	%ax, (%r13,%r14,2)
	jmp	.LBB6_60
	.align	16, 0x90
.LBB6_58:                               # %if.else.148
                                        #   in Loop: Header=BB6_41 Depth=2
	testl	%ebp, %ebp
	jle	.LBB6_61
# BB#59:                                #   in Loop: Header=BB6_41 Depth=2
	decl	%ebp
.LBB6_60:                               # %if.end.153
                                        #   in Loop: Header=BB6_41 Depth=2
	cmpq	%rsi, %r12
	leaq	1(%r12), %r12
	jl	.LBB6_41
.LBB6_61:                               # %do.end
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	28(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB6_63
# BB#62:                                # %if.then.157
                                        #   in Loop: Header=BB6_17 Depth=1
	movslq	%r12d, %rax
	movslq	(%rdi,%rax,4), %rax
	movw	%cx, (%r13,%rax,2)
	movq	32(%rsp), %rbp          # 8-byte Reload
	movslq	%ebp, %rcx
	incl	%ebp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%eax, 80(%rsp,%rcx,4)
.LBB6_63:                               # %if.end.166
                                        #   in Loop: Header=BB6_17 Depth=1
	leal	1(%r12), %r14d
	xorl	%eax, %eax
	cmpl	%esi, %r12d
	movq	64(%rsp), %rbx          # 8-byte Reload
	jl	.LBB6_17
	jmp	.LBB6_73
.LBB6_44:
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %r13
	jmp	.LBB6_21
.LBB6_15:
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %r13
	jmp	.LBB6_21
.LBB6_47:                               # %if.then.83
	movl	$1, %r15d
	movb	%bpl, %cl
	shll	%cl, %r15d
	testl	%ebp, %ebp
	movl	44(%rsp), %r14d         # 4-byte Reload
	je	.LBB6_11
# BB#48:                                # %if.then.86
	cmpl	%ebp, %edx
	jge	.LBB6_51
# BB#49:                                # %if.then.89
	movq	%rdi, %r12
	movq	%rsi, %r14
	leaq	336(%rsp), %rdi
	movq	%r9, %rsi
	movl	%ebp, %ecx
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB6_20
# BB#50:                                # %if.end.93
	movq	352(%rsp), %r9
	movl	360(%rsp), %edx
	movq	%r14, %rsi
	movq	%r12, %rdi
	movl	44(%rsp), %r14d         # 4-byte Reload
.LBB6_51:                               # %if.end.172
	subl	%ebp, %edx
	movq	%r9, %r8
	movb	%dl, %cl
	sarq	%cl, %r8
	movslq	%ebp, %rax
	andl	bmask(,%rax,4), %r8d
	xorl	%eax, %eax
	addl	%r15d, %r8d
	movl	%r8d, %r15d
	jne	.LBB6_11
	jmp	.LBB6_73
.LBB6_20:
	movq	32(%rsp), %rsi          # 8-byte Reload
.LBB6_21:                               # %while.cond.preheader
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.LBB6_75
# BB#22:                                # %while.body.preheader
	testb	$1, %sil
	movl	%esi, %edx
	je	.LBB6_24
# BB#23:                                # %while.body.prol
	leal	-1(%rsi), %edx
	movslq	%edx, %rcx
	movslq	80(%rsp,%rcx,4), %rcx
	movw	$0, (%r13,%rcx,2)
.LBB6_24:                               # %while.body.preheader.split
	cmpl	$1, %esi
	je	.LBB6_75
# BB#25:                                # %while.body.preheader.split.split
	leal	-1(%rdx), %ecx
	addl	$-2, %edx
	movslq	%edx, %rdx
	leaq	80(%rsp,%rdx,4), %rdx
	.align	16, 0x90
.LBB6_26:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	movslq	80(%rsp,%rcx,4), %rsi
	movw	$0, (%r13,%rsi,2)
	movslq	(%rdx), %rsi
	movw	$0, (%r13,%rsi,2)
	addl	$-2, %ecx
	addq	$-8, %rdx
	cmpl	$-1, %ecx
	jne	.LBB6_26
	jmp	.LBB6_75
.Lfunc_end6:
	.size	decode_mcu_AC_refine, .Lfunc_end6-decode_mcu_AC_refine
	.cfi_endproc

	.align	16, 0x90
	.type	jpeg_make_d_derived_tbl,@function
jpeg_make_d_derived_tbl:                # @jpeg_make_d_derived_tbl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$1400, %rsp             # imm = 0x578
.Ltmp76:
	.cfi_def_cfa_offset 1456
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebp
	movl	%esi, %r15d
	movq	%rdi, %r12
	cmpl	$4, %ebp
	jb	.LBB7_2
# BB#1:                                 # %if.then
	movq	(%r12), %rax
	movl	$52, 40(%rax)
	movl	%ebp, 44(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB7_2:                                # %if.end
	testl	%r15d, %r15d
	movslq	%ebp, %rax
	leaq	232(%r12,%rax,8), %rcx
	leaq	264(%r12,%rax,8), %rax
	cmovneq	%rcx, %rax
	movq	(%rax), %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	jne	.LBB7_4
# BB#3:                                 # %if.then.9
	movq	(%r12), %rax
	movl	$52, 40(%rax)
	movl	%ebp, 44(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB7_4:                                # %if.end.18
	movq	(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB7_6
# BB#5:                                 # %if.end.18.if.end.21_crit_edge
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %if.then.20
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movq	8(%r12), %rax
	movl	$1, %esi
	movl	$1568, %edx             # imm = 0x620
	movq	%r12, %rdi
	callq	*(%rax)
	movq	%rax, %rbp
	movq	%rbp, (%r14)
.LBB7_7:                                # %if.end.21
	movq	%rbx, 280(%rbp)
	xorl	%ecx, %ecx
	movl	$1, %r15d
	.align	16, 0x90
.LBB7_8:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_13 Depth 2
                                        #     Child Loop BB7_17 Depth 2
	movzbl	(%rbx,%r15), %ebx
	leal	(%rbx,%rcx), %r13d
	cmpl	$257, %r13d             # imm = 0x101
	jl	.LBB7_10
# BB#9:                                 # %if.then.30
                                        #   in Loop: Header=BB7_8 Depth=1
	movq	(%r12), %rax
	movl	$9, 40(%rax)
	movq	%r12, %rdi
	movq	%r12, %r14
	movq	%rcx, %r12
	callq	*(%rax)
	movq	%r12, %rcx
	movq	%r14, %r12
.LBB7_10:                               # %while.cond.preheader
                                        #   in Loop: Header=BB7_8 Depth=1
	testb	%bl, %bl
	je	.LBB7_19
# BB#11:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB7_8 Depth=1
	movslq	%ecx, %rsi
	leal	-1(%rbx), %eax
	leaq	1(%rax), %rdi
	movl	%ebx, %ecx
	andl	$31, %ecx
	subq	%rcx, %rdi
	leaq	1(%rax,%rsi), %rax
	je	.LBB7_15
# BB#12:                                # %vector.ph
                                        #   in Loop: Header=BB7_8 Depth=1
	leaq	(%rdi,%rsi), %rcx
	movl	%ebx, %edx
	subl	%edi, %edx
	movzbl	%r15b, %edi
	movd	%edi, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	movslq	%esi, %rsi
	leaq	1152(%rsp), %rdi
	leaq	(%rsi,%rdi), %rsi
	leal	-1(%rbx), %edi
	incq	%rdi
	andl	$31, %ebx
	subq	%rbx, %rdi
	.align	16, 0x90
.LBB7_13:                               # %vector.body
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	addq	$32, %rsi
	addq	$-32, %rdi
	jne	.LBB7_13
# BB#14:                                #   in Loop: Header=BB7_8 Depth=1
	movq	%rcx, %rsi
	movl	%edx, %ebx
.LBB7_15:                               # %middle.block
                                        #   in Loop: Header=BB7_8 Depth=1
	cmpq	%rsi, %rax
	je	.LBB7_18
# BB#16:                                # %while.body.preheader
                                        #   in Loop: Header=BB7_8 Depth=1
	leaq	1136(%rsp,%rsi), %rax
	.align	16, 0x90
.LBB7_17:                               # %while.body
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%ebx
	movb	%r15b, (%rax)
	leaq	1(%rax), %rax
	jne	.LBB7_17
.LBB7_18:                               #   in Loop: Header=BB7_8 Depth=1
	movl	%r13d, %ecx
.LBB7_19:                               # %for.inc
                                        #   in Loop: Header=BB7_8 Depth=1
	movq	24(%rsp), %rbx          # 8-byte Reload
	incq	%r15
	cmpq	$17, %r15
	jne	.LBB7_8
# BB#20:                                # %for.end
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rcx, (%rsp)            # 8-byte Spill
	movb	$0, 1136(%rsp,%rax)
	movsbl	1136(%rsp), %r14d
	testl	%r14d, %r14d
	je	.LBB7_28
# BB#21:                                # %while.cond.50.preheader.lr.ph
	xorl	%r15d, %r15d
	movb	%r14b, %r13b
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB7_22:                               # %while.cond.50.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
	movsbl	%r13b, %eax
	cmpl	%r14d, %eax
	jne	.LBB7_25
# BB#23:                                # %while.body.56.lr.ph
                                        #   in Loop: Header=BB7_22 Depth=1
	movslq	%r15d, %rax
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	leaq	1136(%rsp,%rcx), %rcx
	.align	16, 0x90
.LBB7_24:                               # %while.body.56
                                        #   Parent Loop BB7_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	%r15d
	movl	%ebx, 96(%rsp,%rax,4)
	incl	%ebx
	movslq	%r15d, %rax
	movsbl	(%rcx), %r13d
	incq	%rcx
	cmpl	%r14d, %r13d
	je	.LBB7_24
.LBB7_25:                               # %while.end.61
                                        #   in Loop: Header=BB7_22 Depth=1
	movl	%ebx, %eax
	movl	$1, %edx
	movb	%r14b, %cl
	shlq	%cl, %rdx
	cmpq	%rdx, %rax
	jl	.LBB7_27
# BB#26:                                # %if.then.65
                                        #   in Loop: Header=BB7_22 Depth=1
	movq	(%r12), %rax
	movl	$9, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB7_27:                               # %if.end.70
                                        #   in Loop: Header=BB7_22 Depth=1
	addl	%ebx, %ebx
	incl	%r14d
	testb	%r13b, %r13b
	jne	.LBB7_22
.LBB7_28:                               # %for.body.77.preheader
	movq	%r12, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	24(%rsp), %r14          # 8-byte Reload
	.align	16, 0x90
.LBB7_29:                               # %for.body.77
                                        # =>This Inner Loop Header: Depth=1
	movq	$-1, %rdx
	cmpb	$0, 1(%r14,%rax)
	je	.LBB7_31
# BB#30:                                # %if.then.82
                                        #   in Loop: Header=BB7_29 Depth=1
	movslq	%ecx, %rdx
	movl	96(%rsp,%rdx,4), %ecx
	movq	%rdx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, 152(%rbp,%rax,8)
	movzbl	1(%r14,%rax), %ecx
	addq	%rdx, %rcx
	movl	92(%rsp,%rcx,4), %edx
.LBB7_31:                               # %for.inc.104
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	%rdx, 8(%rbp,%rax,8)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB7_29
# BB#32:                                # %for.end.106
	movq	$1048575, 136(%rbp)     # imm = 0xFFFFF
	leaq	288(%rbp), %rdi
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	callq	memset
	movl	$1, %eax
	.align	16, 0x90
.LBB7_33:                               # %for.cond.114.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_35 Depth 2
                                        #       Child Loop BB7_44 Depth 3
                                        #       Child Loop BB7_49 Depth 3
	cmpb	$0, (%r14,%rax)
	je	.LBB7_51
# BB#34:                                # %for.body.121.lr.ph
                                        #   in Loop: Header=BB7_33 Depth=1
	movl	$8, %edi
	subq	%rax, %rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movl	$1, %r10d
	movl	$1, %esi
	movb	%dil, %cl
	shll	%cl, %esi
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movslq	%r12d, %r12
	cmpl	$2, %esi
	movl	$1, %edx
	cmovll	%esi, %edx
	notl	%edx
	leal	1(%rsi,%rdx), %edx
	leaq	288(%rbp,%rdx,4), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leaq	1312(%rbp,%rdx), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	1(%rdx), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%rcx, %rbx
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	movq	%rcx, %r8
	andq	%r8, %rbx
	movl	%esi, %ecx
	subl	%ebx, %ecx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movl	$-2, %edx
	movb	%dil, %cl
	roll	%cl, %edx
	cmpl	$-3, %edx
	movl	$-2, %ecx
	cmovlel	%ecx, %edx
	leal	1(%rsi,%rdx), %ecx
	incq	%rcx
	andq	%r8, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB7_35:                               # %for.body.131.lr.ph
                                        #   Parent Loop BB7_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_44 Depth 3
                                        #       Child Loop BB7_49 Depth 3
	movl	96(%rsp,%r12,4), %edx
	movq	80(%rsp), %rcx          # 8-byte Reload
	shll	%cl, %edx
	movslq	%edx, %r15
	movq	72(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%r15), %rcx
	testq	%rbx, %rbx
	leaq	17(%r14,%r12), %r13
	je	.LBB7_36
# BB#37:                                # %vector.memcheck
                                        #   in Loop: Header=BB7_35 Depth=2
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%rbx, %rcx
	movq	%r14, %r8
	leaq	288(%rbp,%r15,4), %rdx
	movq	56(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%r15,4), %rsi
	leaq	1312(%rbp,%r15), %rbx
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%r15), %rdi
	cmpq	%rdi, %rdx
	setbe	%r11b
	cmpq	%rsi, %rbx
	setbe	%r14b
	cmpq	%r13, %rdx
	setbe	%dl
	cmpq	%rsi, %r13
	setbe	%sil
	cmpq	%r13, %rbx
	setbe	%bl
	cmpq	%rdi, %r13
	setbe	%r9b
	testb	%r14b, %r11b
	jne	.LBB7_38
# BB#39:                                # %vector.memcheck
                                        #   in Loop: Header=BB7_35 Depth=2
	andb	%sil, %dl
	movq	%r8, %r14
	jne	.LBB7_40
# BB#42:                                # %vector.memcheck
                                        #   in Loop: Header=BB7_35 Depth=2
	andb	%r9b, %bl
	jne	.LBB7_40
# BB#43:                                #   in Loop: Header=BB7_35 Depth=2
	movq	%rcx, %rbx
	leaq	(%rbx,%r15), %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB7_44:                               # %vector.body162
                                        #   Parent Loop BB7_33 Depth=1
                                        #     Parent Loop BB7_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	%xmm0, 288(%rbp,%r15,4)
	movdqu	%xmm0, 304(%rbp,%r15,4)
	movzbl	(%r13), %edi
	movd	%edi, %xmm1
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	movd	%xmm1, 1312(%rbp,%r15)
	movd	%xmm1, 1316(%rbp,%r15)
	addq	$8, %r15
	addq	$-8, %rdx
	jne	.LBB7_44
# BB#45:                                #   in Loop: Header=BB7_35 Depth=2
	movq	%rsi, %r15
	movl	44(%rsp), %r9d          # 4-byte Reload
	jmp	.LBB7_46
	.align	16, 0x90
.LBB7_36:                               #   in Loop: Header=BB7_35 Depth=2
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %r9d
	jmp	.LBB7_47
	.align	16, 0x90
.LBB7_40:                               #   in Loop: Header=BB7_35 Depth=2
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %r9d
	movq	%rcx, %rbx
	jmp	.LBB7_46
.LBB7_38:                               #   in Loop: Header=BB7_35 Depth=2
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %r9d
	movq	%r8, %r14
	movq	%rcx, %rbx
	.align	16, 0x90
.LBB7_46:                               # %middle.block163
                                        #   in Loop: Header=BB7_35 Depth=2
	movq	88(%rsp), %rcx          # 8-byte Reload
.LBB7_47:                               # %middle.block163
                                        #   in Loop: Header=BB7_35 Depth=2
	cmpq	%r15, %rcx
	je	.LBB7_50
# BB#48:                                # %for.body.131.preheader
                                        #   in Loop: Header=BB7_35 Depth=2
	incl	%r9d
	.align	16, 0x90
.LBB7_49:                               # %for.body.131
                                        #   Parent Loop BB7_33 Depth=1
                                        #     Parent Loop BB7_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%eax, 288(%rbp,%r15,4)
	movb	(%r13), %dl
	movb	%dl, 1312(%rbp,%r15)
	incq	%r15
	decl	%r9d
	cmpl	$1, %r9d
	jg	.LBB7_49
.LBB7_50:                               # %for.inc.143
                                        #   in Loop: Header=BB7_35 Depth=2
	incq	%r12
	movzbl	(%r14,%rax), %edx
	cmpl	%edx, %r10d
	leal	1(%r10), %edx
	movl	%edx, %r10d
	jl	.LBB7_35
.LBB7_51:                               # %for.inc.147
                                        #   in Loop: Header=BB7_33 Depth=1
	incq	%rax
	cmpq	$9, %rax
	jne	.LBB7_33
# BB#52:                                # %for.end.149
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	(%rsp), %rcx            # 8-byte Reload
	je	.LBB7_58
# BB#53:                                # %for.end.149
	testl	%ecx, %ecx
	jle	.LBB7_58
# BB#54:                                # %for.body.155.preheader
	addq	$17, %r14
	.align	16, 0x90
.LBB7_55:                               # %for.body.155
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r14), %eax
	cmpl	$16, %eax
	jb	.LBB7_57
# BB#56:                                # %if.then.165
                                        #   in Loop: Header=BB7_55 Depth=1
	movq	(%rbx), %rax
	movl	$9, 40(%rax)
	movq	%rbx, %rdi
	movq	%rcx, %rbp
	callq	*(%rax)
	movq	%rbp, %rcx
.LBB7_57:                               # %if.end.170
                                        #   in Loop: Header=BB7_55 Depth=1
	incq	%r14
	decl	%ecx
	jne	.LBB7_55
.LBB7_58:                               # %if.end.174
	addq	$1400, %rsp             # imm = 0x578
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	jpeg_make_d_derived_tbl, .Lfunc_end7-jpeg_make_d_derived_tbl
	.cfi_endproc

	.align	16, 0x90
	.type	decode_mcu_sub,@function
decode_mcu_sub:                         # @decode_mcu_sub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp87:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 176
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	840(%rdi), %r14
	cmpl	$0, 372(%rdi)
	je	.LBB8_8
# BB#1:                                 # %if.then
	cmpl	$0, 64(%r14)
	jne	.LBB8_8
# BB#2:                                 # %if.then.2
	movq	%rbp, %r15
	movl	32(%r14), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	sarl	$3, %ecx
	movq	832(%rdi), %rax
	addl	%ecx, 36(%rax)
	movl	$0, 32(%r14)
	movq	%rdi, %rbp
	callq	*16(%rax)
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB8_68
# BB#3:                                 # %for.cond.preheader.i
	movq	%rbp, %rdi
	cmpl	$0, 448(%rdi)
	jle	.LBB8_6
# BB#4:                                 # %for.body.i.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 44(%r14,%rax,4)
	incq	%rax
	movslq	448(%rdi), %rcx
	cmpq	%rcx, %rax
	jl	.LBB8_5
.LBB8_6:                                # %for.end.i
	movl	$0, 40(%r14)
	movl	372(%rdi), %eax
	movl	%eax, 64(%r14)
	cmpl	$0, 788(%rdi)
	movq	%r15, %rbp
	jne	.LBB8_8
# BB#7:                                 # %if.then.4.i
	movl	$0, 60(%r14)
.LBB8_8:                                # %if.end.6
	cmpl	$0, 60(%r14)
	jne	.LBB8_67
# BB#9:                                 # %if.then.8
	movq	776(%rdi), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	784(%rdi), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movq	%rdi, 112(%rsp)
	movq	40(%rdi), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 80(%rsp)
	movq	24(%r14), %rsi
	movl	32(%r14), %edx
	movl	56(%r14), %ecx
	movl	%ecx, 64(%rsp)
	movups	40(%r14), %xmm1
	movaps	%xmm1, 48(%rsp)
	cmpl	$0, 496(%rdi)
	jle	.LBB8_66
# BB#10:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
.LBB8_11:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_27 Depth 2
                                        #     Child Loop BB8_49 Depth 2
	movq	(%rbp,%rbx,8), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	176(%r14,%rbx,8), %r12
	cmpl	$7, %edx
	jg	.LBB8_14
# BB#12:                                # %if.then.21
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	%rbx, %rbp
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB8_68
# BB#13:                                # %if.end.25
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movl	$1, %r8d
	cmpl	$8, %edx
	movq	%rbp, %rbx
	jl	.LBB8_16
.LBB8_14:                               # %if.end.31
                                        #   in Loop: Header=BB8_11 Depth=1
	leal	-8(%rdx), %ecx
	movq	%rsi, %rax
	sarq	%cl, %rax
	movzbl	%al, %eax
	movl	288(%r12,%rax,4), %ecx
	movl	$9, %r8d
	testl	%ecx, %ecx
	je	.LBB8_16
# BB#15:                                # %if.then.36
                                        #   in Loop: Header=BB8_11 Depth=1
	subl	%ecx, %edx
	movzbl	1312(%r12,%rax), %ebp
	jmp	.LBB8_18
	.align	16, 0x90
.LBB8_16:                               # %label1
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	%rbx, %r15
	leaq	80(%rsp), %rdi
	movq	%r12, %rcx
	callq	jpeg_huff_decode
	movl	%eax, %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	js	.LBB8_68
# BB#17:                                # %if.end.45
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movq	%r15, %rbx
.LBB8_18:                               # %cleanup.cont
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	688(%r14,%rbx,8), %r13
	movl	1200(%r14,%rbx,4), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	je	.LBB8_44
# BB#19:                                # %if.then.56
                                        #   in Loop: Header=BB8_11 Depth=1
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB8_26
# BB#20:                                # %if.then.58
                                        #   in Loop: Header=BB8_11 Depth=1
	cmpl	%ebp, %edx
	jge	.LBB8_23
# BB#21:                                # %if.then.61
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	%rbx, %r15
	leaq	80(%rsp), %rdi
	movl	%ebp, %ecx
	callq	jpeg_fill_bit_buffer
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB8_68
# BB#22:                                # %if.end.65
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movq	%r15, %rbx
.LBB8_23:                               # %if.end.68
                                        #   in Loop: Header=BB8_11 Depth=1
	subl	%ebp, %edx
	movq	%rsi, %rax
	movb	%dl, %cl
	sarq	%cl, %rax
	movslq	%ebp, %rcx
	movl	bmask(,%rcx,4), %ecx
	andl	%ecx, %eax
	decl	%ebp
	movslq	%ebp, %rbp
	xorl	%edi, %edi
	cmpl	bmask(,%rbp,4), %eax
	jg	.LBB8_25
# BB#24:                                # %select.mid
                                        #   in Loop: Header=BB8_11 Depth=1
	movl	%ecx, %edi
.LBB8_25:                               # %select.end
                                        #   in Loop: Header=BB8_11 Depth=1
	subl	%edi, %eax
.LBB8_26:                               # %if.end.84
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movslq	500(%rcx,%rbx,4), %rcx
	addl	52(%rsp,%rcx,4), %eax
	movl	%eax, 52(%rsp,%rcx,4)
	movq	32(%rsp), %rcx          # 8-byte Reload
	movw	%ax, (%rcx)
	movl	$1, %r12d
	cmpl	$2, 40(%rsp)            # 4-byte Folded Reload
	movl	$1, %r15d
	jl	.LBB8_49
	.align	16, 0x90
.LBB8_27:                               # %for.body.97
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$7, %edx
	jg	.LBB8_30
# BB#28:                                # %if.then.102
                                        #   in Loop: Header=BB8_27 Depth=2
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB8_68
# BB#29:                                # %if.end.106
                                        #   in Loop: Header=BB8_27 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movl	$1, %r8d
	cmpl	$8, %edx
	jl	.LBB8_32
.LBB8_30:                               # %if.end.113
                                        #   in Loop: Header=BB8_27 Depth=2
	leal	-8(%rdx), %ecx
	movq	%rsi, %rax
	sarq	%cl, %rax
	movzbl	%al, %eax
	movl	288(%r13,%rax,4), %ecx
	movl	$9, %r8d
	testl	%ecx, %ecx
	je	.LBB8_32
# BB#31:                                # %if.then.124
                                        #   in Loop: Header=BB8_27 Depth=2
	subl	%ecx, %edx
	movzbl	1312(%r13,%rax), %ebp
	jmp	.LBB8_34
	.align	16, 0x90
.LBB8_32:                               # %label2
                                        #   in Loop: Header=BB8_27 Depth=2
	leaq	80(%rsp), %rdi
	movq	%r13, %rcx
	callq	jpeg_huff_decode
	movl	%eax, %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	js	.LBB8_68
# BB#33:                                # %if.end.135
                                        #   in Loop: Header=BB8_27 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
.LBB8_34:                               # %cleanup.cont.142
                                        #   in Loop: Header=BB8_27 Depth=2
	movl	%ebp, %r15d
	sarl	$4, %r15d
	andl	$15, %ebp
	je	.LBB8_41
# BB#35:                                # %if.then.146
                                        #   in Loop: Header=BB8_27 Depth=2
	cmpl	%ebp, %edx
	jge	.LBB8_38
# BB#36:                                # %if.then.150
                                        #   in Loop: Header=BB8_27 Depth=2
	leaq	80(%rsp), %rdi
	movl	%ebp, %ecx
	callq	jpeg_fill_bit_buffer
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB8_68
# BB#37:                                # %if.end.154
                                        #   in Loop: Header=BB8_27 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
.LBB8_38:                               # %if.end.157
                                        #   in Loop: Header=BB8_27 Depth=2
	addl	%r12d, %r15d
	subl	%ebp, %edx
	movq	%rsi, %rax
	movb	%dl, %cl
	sarq	%cl, %rax
	movl	%ebp, %ecx
	movl	bmask(,%rcx,4), %ecx
	andl	%ecx, %eax
	decl	%ebp
	movslq	%ebp, %rbp
	xorl	%edi, %edi
	cmpl	bmask(,%rbp,4), %eax
	jg	.LBB8_40
# BB#39:                                # %select.mid315
                                        #   in Loop: Header=BB8_27 Depth=2
	movl	%ecx, %edi
.LBB8_40:                               # %select.end314
                                        #   in Loop: Header=BB8_27 Depth=2
	subl	%edi, %eax
	movslq	%r15d, %rcx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movslq	(%rdi,%rcx,4), %rcx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movw	%ax, (%rdi,%rcx,2)
	jmp	.LBB8_43
	.align	16, 0x90
.LBB8_41:                               # %if.else.182
                                        #   in Loop: Header=BB8_27 Depth=2
	cmpl	$15, %r15d
	jne	.LBB8_64
# BB#42:                                # %if.end.186
                                        #   in Loop: Header=BB8_27 Depth=2
	addl	$15, %r12d
	movl	%r12d, %r15d
.LBB8_43:                               # %for.inc
                                        #   in Loop: Header=BB8_27 Depth=2
	incl	%r15d
	cmpl	40(%rsp), %r15d         # 4-byte Folded Reload
	movl	%r15d, %r12d
	jl	.LBB8_27
	jmp	.LBB8_49
.LBB8_44:                               # %if.else.189
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	%rbx, (%rsp)            # 8-byte Spill
	movl	$1, %r15d
	testl	%ebp, %ebp
	je	.LBB8_49
# BB#45:                                # %if.then.191
                                        #   in Loop: Header=BB8_11 Depth=1
	cmpl	%ebp, %edx
	jge	.LBB8_48
# BB#46:                                # %if.then.194
                                        #   in Loop: Header=BB8_11 Depth=1
	leaq	80(%rsp), %rdi
	movl	%ebp, %ecx
	callq	jpeg_fill_bit_buffer
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB8_68
# BB#47:                                # %if.end.198
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
.LBB8_48:                               # %if.end.201
                                        #   in Loop: Header=BB8_11 Depth=1
	subl	%ebp, %edx
	jmp	.LBB8_49
	.align	16, 0x90
.LBB8_61:                               # %if.end.268
                                        #   in Loop: Header=BB8_49 Depth=2
	subl	%ebp, %edx
	leal	1(%r15,%r12), %r15d
.LBB8_49:                               # %for.cond.205.preheader
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	44(%rsp), %r15d         # 4-byte Folded Reload
	jg	.LBB8_64
# BB#50:                                # %for.body.208
                                        #   in Loop: Header=BB8_49 Depth=2
	cmpl	$7, %edx
	jg	.LBB8_53
# BB#51:                                # %if.then.213
                                        #   in Loop: Header=BB8_49 Depth=2
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB8_68
# BB#52:                                # %if.end.217
                                        #   in Loop: Header=BB8_49 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movl	$1, %r8d
	cmpl	$8, %edx
	jl	.LBB8_55
.LBB8_53:                               # %if.end.224
                                        #   in Loop: Header=BB8_49 Depth=2
	leal	-8(%rdx), %ecx
	movq	%rsi, %rax
	sarq	%cl, %rax
	movzbl	%al, %eax
	movl	288(%r13,%rax,4), %ecx
	movl	$9, %r8d
	testl	%ecx, %ecx
	je	.LBB8_55
# BB#54:                                # %if.then.235
                                        #   in Loop: Header=BB8_49 Depth=2
	subl	%ecx, %edx
	movzbl	1312(%r13,%rax), %ebp
	jmp	.LBB8_57
	.align	16, 0x90
.LBB8_55:                               # %label3
                                        #   in Loop: Header=BB8_49 Depth=2
	leaq	80(%rsp), %rdi
	movq	%r13, %rcx
	callq	jpeg_huff_decode
	movl	%eax, %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	js	.LBB8_68
# BB#56:                                # %if.end.246
                                        #   in Loop: Header=BB8_49 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
.LBB8_57:                               # %cleanup.cont.253
                                        #   in Loop: Header=BB8_49 Depth=2
	movl	%ebp, %r12d
	sarl	$4, %r12d
	andl	$15, %ebp
	je	.LBB8_62
# BB#58:                                # %if.then.257
                                        #   in Loop: Header=BB8_49 Depth=2
	cmpl	%ebp, %edx
	jge	.LBB8_61
# BB#59:                                # %if.then.261
                                        #   in Loop: Header=BB8_49 Depth=2
	leaq	80(%rsp), %rdi
	movl	%ebp, %ecx
	callq	jpeg_fill_bit_buffer
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB8_68
# BB#60:                                # %if.end.265
                                        #   in Loop: Header=BB8_49 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	jmp	.LBB8_61
	.align	16, 0x90
.LBB8_62:                               # %if.else.270
                                        #   in Loop: Header=BB8_49 Depth=2
	cmpl	$15, %r12d
	movl	$15, %r12d
	jne	.LBB8_64
# BB#63:                                # %for.inc.277
                                        #   in Loop: Header=BB8_49 Depth=2
	leal	1(%r15,%r12), %r15d
	jmp	.LBB8_49
	.align	16, 0x90
.LBB8_64:                               # %for.inc.289
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	(%rsp), %rbx            # 8-byte Reload
	incq	%rbx
	movq	24(%rsp), %rcx          # 8-byte Reload
	movslq	496(%rcx), %rax
	cmpq	%rax, %rbx
	movq	8(%rsp), %rbp           # 8-byte Reload
	jl	.LBB8_11
# BB#65:                                # %for.cond.for.end.291_crit_edge
	movq	40(%rcx), %rax
	movaps	80(%rsp), %xmm0
.LBB8_66:                               # %for.end.291
	leaq	40(%r14), %rcx
	movups	%xmm0, (%rax)
	movq	%rsi, 24(%r14)
	movl	%edx, 32(%r14)
	movl	64(%rsp), %eax
	movl	%eax, 16(%rcx)
	movaps	48(%rsp), %xmm0
	movups	%xmm0, (%rcx)
.LBB8_67:                               # %if.end.303
	decl	64(%r14)
	movl	$1, %ebx
.LBB8_68:                               # %cleanup.305
	movl	%ebx, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	decode_mcu_sub, .Lfunc_end8-decode_mcu_sub
	.cfi_endproc

	.align	16, 0x90
	.type	decode_mcu,@function
decode_mcu:                             # @decode_mcu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 176
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	840(%rdi), %rbx
	cmpl	$0, 372(%rdi)
	je	.LBB9_8
# BB#1:                                 # %if.then
	cmpl	$0, 64(%rbx)
	jne	.LBB9_8
# BB#2:                                 # %if.then.2
	movq	%rbp, %r15
	movl	32(%rbx), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	sarl	$3, %ecx
	movq	832(%rdi), %rax
	addl	%ecx, 36(%rax)
	movl	$0, 32(%rbx)
	movq	%rdi, %rbp
	callq	*16(%rax)
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB9_70
# BB#3:                                 # %for.cond.preheader.i
	movq	%rbp, %rdi
	cmpl	$0, 448(%rdi)
	jle	.LBB9_6
# BB#4:                                 # %for.body.i.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB9_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 44(%rbx,%rax,4)
	incq	%rax
	movslq	448(%rdi), %rcx
	cmpq	%rcx, %rax
	jl	.LBB9_5
.LBB9_6:                                # %for.end.i
	movl	$0, 40(%rbx)
	movl	372(%rdi), %eax
	movl	%eax, 64(%rbx)
	cmpl	$0, 788(%rdi)
	movq	%r15, %rbp
	jne	.LBB9_8
# BB#7:                                 # %if.then.4.i
	movl	$0, 60(%rbx)
.LBB9_8:                                # %if.end.6
	cmpl	$0, 60(%rbx)
	jne	.LBB9_69
# BB#9:                                 # %if.then.8
	movq	%rdi, 112(%rsp)
	movq	40(%rdi), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 80(%rsp)
	movq	24(%rbx), %rsi
	movl	32(%rbx), %edx
	movl	56(%rbx), %ecx
	movl	%ecx, 64(%rsp)
	movups	40(%rbx), %xmm1
	movaps	%xmm1, 48(%rsp)
	cmpl	$0, 496(%rdi)
	jle	.LBB9_68
# BB#10:                                # %for.body.lr.ph
	xorl	%r9d, %r9d
.LBB9_11:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_27 Depth 2
                                        #     Child Loop BB9_52 Depth 2
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	(%rbp,%r9,8), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	176(%rbx,%r9,8), %r12
	cmpl	$7, %edx
	jg	.LBB9_14
# BB#12:                                # %if.then.20
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%r9, %rbp
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB9_70
# BB#13:                                # %if.end.24
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movl	$1, %r8d
	cmpl	$8, %edx
	movq	%rbp, %r9
	jl	.LBB9_16
.LBB9_14:                               # %if.end.30
                                        #   in Loop: Header=BB9_11 Depth=1
	leal	-8(%rdx), %ecx
	movq	%rsi, %rax
	sarq	%cl, %rax
	movzbl	%al, %eax
	movl	288(%r12,%rax,4), %ecx
	movl	$9, %r8d
	testl	%ecx, %ecx
	je	.LBB9_16
# BB#15:                                # %if.then.35
                                        #   in Loop: Header=BB9_11 Depth=1
	subl	%ecx, %edx
	movzbl	1312(%r12,%rax), %ebp
	movq	%rbx, %rax
	jmp	.LBB9_18
.LBB9_16:                               # %label1
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%r9, %r15
	leaq	80(%rsp), %rdi
	movq	%r12, %rcx
	callq	jpeg_huff_decode
	movl	%eax, %ebp
	xorl	%r14d, %r14d
	testl	%ebp, %ebp
	js	.LBB9_70
# BB#17:                                # %if.end.44
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movq	%rbx, %rax
	movq	%r15, %r9
.LBB9_18:                               # %cleanup.cont
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	688(%rax,%r9,8), %r13
	movl	1200(%rax,%r9,4), %ecx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	testl	%ecx, %ecx
	je	.LBB9_45
# BB#19:                                # %if.then.55
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB9_26
# BB#20:                                # %if.then.57
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	%ebp, %edx
	jge	.LBB9_23
# BB#21:                                # %if.then.60
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%r9, %rbx
	leaq	80(%rsp), %rdi
	movl	%ebp, %ecx
	callq	jpeg_fill_bit_buffer
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB9_70
# BB#22:                                # %if.end.64
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movq	%rbx, %r9
.LBB9_23:                               # %if.end.67
                                        #   in Loop: Header=BB9_11 Depth=1
	subl	%ebp, %edx
	movq	%rsi, %rax
	movb	%dl, %cl
	sarq	%cl, %rax
	movslq	%ebp, %rcx
	movl	bmask(,%rcx,4), %ecx
	andl	%ecx, %eax
	decl	%ebp
	movslq	%ebp, %rbp
	xorl	%edi, %edi
	cmpl	bmask(,%rbp,4), %eax
	jg	.LBB9_25
# BB#24:                                # %select.mid
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	%ecx, %edi
.LBB9_25:                               # %select.end
                                        #   in Loop: Header=BB9_11 Depth=1
	subl	%edi, %eax
.LBB9_26:                               # %if.end.83
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%r9, (%rsp)             # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movslq	500(%rcx,%r9,4), %rcx
	addl	52(%rsp,%rcx,4), %eax
	movl	%eax, 52(%rsp,%rcx,4)
	movq	32(%rsp), %rcx          # 8-byte Reload
	movw	%ax, (%rcx)
	movl	$1, %r15d
	cmpl	$2, 44(%rsp)            # 4-byte Folded Reload
	jl	.LBB9_52
	.align	16, 0x90
.LBB9_27:                               # %for.body.96
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$7, %edx
	jg	.LBB9_30
# BB#28:                                # %if.then.101
                                        #   in Loop: Header=BB9_27 Depth=2
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB9_70
# BB#29:                                # %if.end.105
                                        #   in Loop: Header=BB9_27 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movl	$1, %r8d
	cmpl	$8, %edx
	jl	.LBB9_32
.LBB9_30:                               # %if.end.112
                                        #   in Loop: Header=BB9_27 Depth=2
	leal	-8(%rdx), %ecx
	movq	%rsi, %rax
	sarq	%cl, %rax
	movzbl	%al, %eax
	movl	288(%r13,%rax,4), %ecx
	movl	$9, %r8d
	testl	%ecx, %ecx
	je	.LBB9_32
# BB#31:                                # %if.then.123
                                        #   in Loop: Header=BB9_27 Depth=2
	subl	%ecx, %edx
	movzbl	1312(%r13,%rax), %ebp
	jmp	.LBB9_34
	.align	16, 0x90
.LBB9_32:                               # %label2
                                        #   in Loop: Header=BB9_27 Depth=2
	leaq	80(%rsp), %rdi
	movq	%r13, %rcx
	callq	jpeg_huff_decode
	movl	%eax, %ebp
	xorl	%r14d, %r14d
	testl	%ebp, %ebp
	js	.LBB9_70
# BB#33:                                # %if.end.134
                                        #   in Loop: Header=BB9_27 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
.LBB9_34:                               # %cleanup.cont.141
                                        #   in Loop: Header=BB9_27 Depth=2
	movl	%ebp, %r12d
	sarl	$4, %r12d
	andl	$15, %ebp
	je	.LBB9_41
# BB#35:                                # %if.then.145
                                        #   in Loop: Header=BB9_27 Depth=2
	cmpl	%ebp, %edx
	jge	.LBB9_38
# BB#36:                                # %if.then.149
                                        #   in Loop: Header=BB9_27 Depth=2
	leaq	80(%rsp), %rdi
	movl	%ebp, %ecx
	callq	jpeg_fill_bit_buffer
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB9_70
# BB#37:                                # %if.end.153
                                        #   in Loop: Header=BB9_27 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
.LBB9_38:                               # %if.end.156
                                        #   in Loop: Header=BB9_27 Depth=2
	addl	%r15d, %r12d
	subl	%ebp, %edx
	movq	%rsi, %rax
	movb	%dl, %cl
	sarq	%cl, %rax
	movl	%ebp, %ecx
	movl	bmask(,%rcx,4), %ecx
	andl	%ecx, %eax
	decl	%ebp
	movslq	%ebp, %rbp
	xorl	%edi, %edi
	cmpl	bmask(,%rbp,4), %eax
	jg	.LBB9_40
# BB#39:                                # %select.mid315
                                        #   in Loop: Header=BB9_27 Depth=2
	movl	%ecx, %edi
.LBB9_40:                               # %select.end314
                                        #   in Loop: Header=BB9_27 Depth=2
	subl	%edi, %eax
	movslq	%r12d, %rcx
	movslq	jpeg_natural_order(,%rcx,4), %rcx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movw	%ax, (%rdi,%rcx,2)
	jmp	.LBB9_43
	.align	16, 0x90
.LBB9_41:                               # %if.else.181
                                        #   in Loop: Header=BB9_27 Depth=2
	cmpl	$15, %r12d
	jne	.LBB9_66
# BB#42:                                # %if.end.185
                                        #   in Loop: Header=BB9_27 Depth=2
	addl	$15, %r15d
	movl	%r15d, %r12d
.LBB9_43:                               # %for.inc
                                        #   in Loop: Header=BB9_27 Depth=2
	movl	%r12d, %r15d
	incl	%r15d
	cmpl	44(%rsp), %r15d         # 4-byte Folded Reload
	jl	.LBB9_27
# BB#44:                                # %for.cond.204.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	$63, %r15d
	jle	.LBB9_52
	jmp	.LBB9_66
.LBB9_45:                               # %if.else.188
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$1, %r15d
	testl	%ebp, %ebp
	je	.LBB9_46
# BB#47:                                # %if.then.190
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	%ebp, %edx
	jge	.LBB9_48
# BB#49:                                # %if.then.193
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%r9, (%rsp)             # 8-byte Spill
	leaq	80(%rsp), %rdi
	movl	%ebp, %ecx
	callq	jpeg_fill_bit_buffer
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB9_70
# BB#50:                                # %if.end.197
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	jmp	.LBB9_51
.LBB9_46:                               #   in Loop: Header=BB9_11 Depth=1
	movq	%r9, (%rsp)             # 8-byte Spill
	jmp	.LBB9_52
.LBB9_48:                               #   in Loop: Header=BB9_11 Depth=1
	movq	%r9, (%rsp)             # 8-byte Spill
.LBB9_51:                               # %if.end.200
                                        #   in Loop: Header=BB9_11 Depth=1
	subl	%ebp, %edx
	.align	16, 0x90
.LBB9_52:                               # %for.body.207
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$7, %edx
	jg	.LBB9_55
# BB#53:                                # %if.then.212
                                        #   in Loop: Header=BB9_52 Depth=2
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	callq	jpeg_fill_bit_buffer
	testl	%eax, %eax
	je	.LBB9_70
# BB#54:                                # %if.end.216
                                        #   in Loop: Header=BB9_52 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movl	$1, %r8d
	cmpl	$8, %edx
	jl	.LBB9_57
.LBB9_55:                               # %if.end.223
                                        #   in Loop: Header=BB9_52 Depth=2
	leal	-8(%rdx), %ecx
	movq	%rsi, %rax
	sarq	%cl, %rax
	movzbl	%al, %eax
	movl	288(%r13,%rax,4), %ecx
	movl	$9, %r8d
	testl	%ecx, %ecx
	je	.LBB9_57
# BB#56:                                # %if.then.234
                                        #   in Loop: Header=BB9_52 Depth=2
	subl	%ecx, %edx
	movzbl	1312(%r13,%rax), %ebp
	jmp	.LBB9_59
	.align	16, 0x90
.LBB9_57:                               # %label3
                                        #   in Loop: Header=BB9_52 Depth=2
	leaq	80(%rsp), %rdi
	movq	%r13, %rcx
	callq	jpeg_huff_decode
	movl	%eax, %ebp
	xorl	%r14d, %r14d
	testl	%ebp, %ebp
	js	.LBB9_70
# BB#58:                                # %if.end.245
                                        #   in Loop: Header=BB9_52 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
.LBB9_59:                               # %cleanup.cont.252
                                        #   in Loop: Header=BB9_52 Depth=2
	movl	%ebp, %ebx
	sarl	$4, %ebx
	andl	$15, %ebp
	je	.LBB9_64
# BB#60:                                # %if.then.256
                                        #   in Loop: Header=BB9_52 Depth=2
	cmpl	%ebp, %edx
	jge	.LBB9_63
# BB#61:                                # %if.then.260
                                        #   in Loop: Header=BB9_52 Depth=2
	leaq	80(%rsp), %rdi
	movl	%ebp, %ecx
	callq	jpeg_fill_bit_buffer
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB9_70
# BB#62:                                # %if.end.264
                                        #   in Loop: Header=BB9_52 Depth=2
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
.LBB9_63:                               # %if.end.267
                                        #   in Loop: Header=BB9_52 Depth=2
	subl	%ebp, %edx
	jmp	.LBB9_65
	.align	16, 0x90
.LBB9_64:                               # %if.else.269
                                        #   in Loop: Header=BB9_52 Depth=2
	cmpl	$15, %ebx
	movl	$15, %ebx
	jne	.LBB9_66
.LBB9_65:                               # %for.inc.276
                                        #   in Loop: Header=BB9_52 Depth=2
	leal	1(%r15,%rbx), %r15d
	cmpl	$64, %r15d
	jl	.LBB9_52
.LBB9_66:                               # %for.inc.288
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	(%rsp), %r9             # 8-byte Reload
	incq	%r9
	movq	24(%rsp), %rdi          # 8-byte Reload
	movslq	496(%rdi), %rax
	cmpq	%rax, %r9
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	jl	.LBB9_11
# BB#67:                                # %for.cond.for.end.290_crit_edge
	movq	40(%rdi), %rax
	movaps	80(%rsp), %xmm0
.LBB9_68:                               # %for.end.290
	leaq	40(%rbx), %rcx
	movups	%xmm0, (%rax)
	movq	%rsi, 24(%rbx)
	movl	%edx, 32(%rbx)
	movl	64(%rsp), %eax
	movl	%eax, 16(%rcx)
	movaps	48(%rsp), %xmm0
	movups	%xmm0, (%rcx)
.LBB9_69:                               # %if.end.302
	decl	64(%rbx)
	movl	$1, %r14d
.LBB9_70:                               # %cleanup.304
	movl	%r14d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	decode_mcu, .Lfunc_end9-decode_mcu
	.cfi_endproc

	.align	16, 0x90
	.type	jpeg_fill_bit_buffer,@function
jpeg_fill_bit_buffer:                   # @jpeg_fill_bit_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp115:
	.cfi_def_cfa_offset 64
.Ltmp116:
	.cfi_offset %rbx, -56
.Ltmp117:
	.cfi_offset %r12, -48
.Ltmp118:
	.cfi_offset %r13, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	(%r14), %rbx
	movq	8(%r14), %r12
	movq	32(%r14), %rbp
	cmpl	$0, 788(%rbp)
	jne	.LBB10_15
# BB#1:                                 # %while.cond.preheader
	cmpl	$24, %r15d
	jg	.LBB10_19
# BB#2:                                 # %while.body.lr.ph
	movl	%ecx, 4(%rsp)           # 4-byte Spill
.LBB10_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
	testq	%r12, %r12
	jne	.LBB10_6
# BB#4:                                 # %if.then.6
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	40(%rbp), %rax
	movq	%rbp, %rdi
	callq	*24(%rax)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB10_20
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	40(%rbp), %rax
	movq	(%rax), %rbx
	movq	8(%rax), %r12
.LBB10_6:                               # %if.end.12
                                        #   in Loop: Header=BB10_3 Depth=1
	decq	%r12
	movzbl	(%rbx), %eax
	incq	%rbx
	cmpq	$255, %rax
	jne	.LBB10_13
	.align	16, 0x90
.LBB10_7:                               # %do.body
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r12, %r12
	jne	.LBB10_10
# BB#8:                                 # %if.then.18
                                        #   in Loop: Header=BB10_7 Depth=2
	movq	40(%rbp), %rax
	movq	%rbp, %rdi
	callq	*24(%rax)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB10_20
# BB#9:                                 # %if.end.24
                                        #   in Loop: Header=BB10_7 Depth=2
	movq	40(%rbp), %rax
	movq	(%rax), %rbx
	movq	8(%rax), %r12
.LBB10_10:                              # %if.end.29
                                        #   in Loop: Header=BB10_7 Depth=2
	decq	%r12
	movzbl	(%rbx), %eax
	incq	%rbx
	cmpl	$255, %eax
	je	.LBB10_7
# BB#11:                                # %if.end.29
                                        #   in Loop: Header=BB10_3 Depth=1
	testb	%al, %al
	jne	.LBB10_14
# BB#12:                                #   in Loop: Header=BB10_3 Depth=1
	movl	$255, %eax
	.align	16, 0x90
.LBB10_13:                              # %cleanup.thread42
                                        #   in Loop: Header=BB10_3 Depth=1
	shlq	$8, %r13
	orq	%rax, %r13
	addl	$8, %r15d
	cmpl	$25, %r15d
	jl	.LBB10_3
	jmp	.LBB10_19
.LBB10_14:                              # %cleanup
	movl	%eax, 788(%rbp)
	movl	4(%rsp), %ecx           # 4-byte Reload
.LBB10_15:                              # %no_more_bytes
	cmpl	%ecx, %r15d
	jge	.LBB10_19
# BB#16:                                # %if.then.45
	movq	840(%rbp), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB10_18
# BB#17:                                # %if.then.47
	movq	(%rbp), %rax
	movl	$120, 40(%rax)
	movl	$-1, %esi
	movq	%rbp, %rdi
	callq	*8(%rax)
	movq	840(%rbp), %rax
	movl	$1, 60(%rax)
.LBB10_18:                              # %if.end.51
	movl	$25, %ecx
	subl	%r15d, %ecx
	shlq	%cl, %r13
	movl	$25, %r15d
.LBB10_19:                              # %if.end.54
	movq	%rbx, (%r14)
	movq	%r12, 8(%r14)
	movq	%r13, 16(%r14)
	movl	%r15d, 24(%r14)
	movl	$1, %eax
.LBB10_20:                              # %cleanup.59
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	jpeg_fill_bit_buffer, .Lfunc_end10-jpeg_fill_bit_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	jpeg_huff_decode,@function
jpeg_huff_decode:                       # @jpeg_huff_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 48
.Ltmp127:
	.cfi_offset %rbx, -48
.Ltmp128:
	.cfi_offset %r12, -40
.Ltmp129:
	.cfi_offset %r14, -32
.Ltmp130:
	.cfi_offset %r15, -24
.Ltmp131:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movq	%rcx, %r14
	movl	%edx, %eax
	movq	%rdi, %r15
	cmpl	%r12d, %eax
	jge	.LBB11_3
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	movl	%eax, %edx
	movl	%r12d, %ecx
	callq	jpeg_fill_bit_buffer
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	je	.LBB11_12
# BB#2:                                 # %if.end
	movq	16(%r15), %rsi
	movl	24(%r15), %eax
.LBB11_3:                               # %if.end.4
	subl	%r12d, %eax
	movq	%rsi, %rdx
	movb	%al, %cl
	sarq	%cl, %rdx
	movslq	%r12d, %rcx
	andl	bmask(,%rcx,4), %edx
	movslq	%edx, %rbx
	cmpq	(%r14,%rcx,8), %rbx
	jle	.LBB11_9
# BB#4:                                 # %while.body.preheader
	incl	%r12d
	movslq	%r12d, %rbp
	decq	%rbp
	.align	16, 0x90
.LBB11_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jg	.LBB11_8
# BB#6:                                 # %if.then.12
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	$1, %ecx
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	jpeg_fill_bit_buffer
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	je	.LBB11_12
# BB#7:                                 # %if.end.16
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	16(%r15), %rsi
	movl	24(%r15), %eax
.LBB11_8:                               # %if.end.19
                                        #   in Loop: Header=BB11_5 Depth=1
	addq	%rbx, %rbx
	decl	%eax
	movq	%rsi, %rdx
	movb	%al, %cl
	shrq	%cl, %rdx
	andl	$1, %edx
	orq	%rdx, %rbx
	leaq	1(%rbp), %rcx
	cmpq	8(%r14,%rbp,8), %rbx
	movq	%rcx, %rbp
	movl	%ecx, %r12d
	jg	.LBB11_5
.LBB11_9:                               # %while.end
	movq	%rsi, 16(%r15)
	movl	%eax, 24(%r15)
	cmpl	$17, %r12d
	jl	.LBB11_11
# BB#10:                                # %if.then.30
	movq	32(%r15), %rdi
	movq	(%rdi), %rax
	movl	$121, 40(%rax)
	movl	$-1, %esi
	callq	*8(%rax)
	xorl	%eax, %eax
	jmp	.LBB11_12
.LBB11_11:                              # %if.end.34
	addl	144(%r14,%rcx,8), %ebx
	movslq	%ebx, %rax
	movq	280(%r14), %rcx
	movzbl	17(%rcx,%rax), %eax
.LBB11_12:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	jpeg_huff_decode, .Lfunc_end11-jpeg_huff_decode
	.cfi_endproc

	.type	jpeg_zigzag_order2,@object # @jpeg_zigzag_order2
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
jpeg_zigzag_order2:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.size	jpeg_zigzag_order2, 16

	.type	jpeg_zigzag_order3,@object # @jpeg_zigzag_order3
	.section	.rodata,"a",@progbits
	.align	16
jpeg_zigzag_order3:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	7                       # 0x7
	.long	8                       # 0x8
	.size	jpeg_zigzag_order3, 36

	.type	jpeg_zigzag_order4,@object # @jpeg_zigzag_order4
	.align	16
jpeg_zigzag_order4:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	8                       # 0x8
	.long	11                      # 0xb
	.long	13                      # 0xd
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	14                      # 0xe
	.long	15                      # 0xf
	.size	jpeg_zigzag_order4, 64

	.type	jpeg_zigzag_order5,@object # @jpeg_zigzag_order5
	.align	16
jpeg_zigzag_order5:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	14                      # 0xe
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	13                      # 0xd
	.long	15                      # 0xf
	.long	3                       # 0x3
	.long	8                       # 0x8
	.long	12                      # 0xc
	.long	16                      # 0x10
	.long	21                      # 0x15
	.long	9                       # 0x9
	.long	11                      # 0xb
	.long	17                      # 0x11
	.long	20                      # 0x14
	.long	22                      # 0x16
	.long	10                      # 0xa
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	23                      # 0x17
	.long	24                      # 0x18
	.size	jpeg_zigzag_order5, 100

	.type	jpeg_zigzag_order6,@object # @jpeg_zigzag_order6
	.align	16
jpeg_zigzag_order6:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	14                      # 0xe
	.long	15                      # 0xf
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	13                      # 0xd
	.long	16                      # 0x10
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	8                       # 0x8
	.long	12                      # 0xc
	.long	17                      # 0x11
	.long	24                      # 0x18
	.long	26                      # 0x1a
	.long	9                       # 0x9
	.long	11                      # 0xb
	.long	18                      # 0x12
	.long	23                      # 0x17
	.long	27                      # 0x1b
	.long	32                      # 0x20
	.long	10                      # 0xa
	.long	19                      # 0x13
	.long	22                      # 0x16
	.long	28                      # 0x1c
	.long	31                      # 0x1f
	.long	33                      # 0x21
	.long	20                      # 0x14
	.long	21                      # 0x15
	.long	29                      # 0x1d
	.long	30                      # 0x1e
	.long	34                      # 0x22
	.long	35                      # 0x23
	.size	jpeg_zigzag_order6, 144

	.type	jpeg_zigzag_order7,@object # @jpeg_zigzag_order7
	.align	16
jpeg_zigzag_order7:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	14                      # 0xe
	.long	15                      # 0xf
	.long	27                      # 0x1b
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	13                      # 0xd
	.long	16                      # 0x10
	.long	26                      # 0x1a
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	8                       # 0x8
	.long	12                      # 0xc
	.long	17                      # 0x11
	.long	25                      # 0x19
	.long	29                      # 0x1d
	.long	38                      # 0x26
	.long	9                       # 0x9
	.long	11                      # 0xb
	.long	18                      # 0x12
	.long	24                      # 0x18
	.long	30                      # 0x1e
	.long	37                      # 0x25
	.long	39                      # 0x27
	.long	10                      # 0xa
	.long	19                      # 0x13
	.long	23                      # 0x17
	.long	31                      # 0x1f
	.long	36                      # 0x24
	.long	40                      # 0x28
	.long	45                      # 0x2d
	.long	20                      # 0x14
	.long	22                      # 0x16
	.long	32                      # 0x20
	.long	35                      # 0x23
	.long	41                      # 0x29
	.long	44                      # 0x2c
	.long	46                      # 0x2e
	.long	21                      # 0x15
	.long	33                      # 0x21
	.long	34                      # 0x22
	.long	42                      # 0x2a
	.long	43                      # 0x2b
	.long	47                      # 0x2f
	.long	48                      # 0x30
	.size	jpeg_zigzag_order7, 196

	.type	jpeg_zigzag_order,@object # @jpeg_zigzag_order
	.align	16
jpeg_zigzag_order:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	14                      # 0xe
	.long	15                      # 0xf
	.long	27                      # 0x1b
	.long	28                      # 0x1c
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	13                      # 0xd
	.long	16                      # 0x10
	.long	26                      # 0x1a
	.long	29                      # 0x1d
	.long	42                      # 0x2a
	.long	3                       # 0x3
	.long	8                       # 0x8
	.long	12                      # 0xc
	.long	17                      # 0x11
	.long	25                      # 0x19
	.long	30                      # 0x1e
	.long	41                      # 0x29
	.long	43                      # 0x2b
	.long	9                       # 0x9
	.long	11                      # 0xb
	.long	18                      # 0x12
	.long	24                      # 0x18
	.long	31                      # 0x1f
	.long	40                      # 0x28
	.long	44                      # 0x2c
	.long	53                      # 0x35
	.long	10                      # 0xa
	.long	19                      # 0x13
	.long	23                      # 0x17
	.long	32                      # 0x20
	.long	39                      # 0x27
	.long	45                      # 0x2d
	.long	52                      # 0x34
	.long	54                      # 0x36
	.long	20                      # 0x14
	.long	22                      # 0x16
	.long	33                      # 0x21
	.long	38                      # 0x26
	.long	46                      # 0x2e
	.long	51                      # 0x33
	.long	55                      # 0x37
	.long	60                      # 0x3c
	.long	21                      # 0x15
	.long	34                      # 0x22
	.long	37                      # 0x25
	.long	47                      # 0x2f
	.long	50                      # 0x32
	.long	56                      # 0x38
	.long	59                      # 0x3b
	.long	61                      # 0x3d
	.long	35                      # 0x23
	.long	36                      # 0x24
	.long	48                      # 0x30
	.long	49                      # 0x31
	.long	57                      # 0x39
	.long	58                      # 0x3a
	.long	62                      # 0x3e
	.long	63                      # 0x3f
	.size	jpeg_zigzag_order, 256

	.type	bmask,@object           # @bmask
	.align	16
bmask:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	7                       # 0x7
	.long	15                      # 0xf
	.long	31                      # 0x1f
	.long	63                      # 0x3f
	.long	127                     # 0x7f
	.long	255                     # 0xff
	.long	511                     # 0x1ff
	.long	1023                    # 0x3ff
	.long	2047                    # 0x7ff
	.long	4095                    # 0xfff
	.long	8191                    # 0x1fff
	.long	16383                   # 0x3fff
	.long	32767                   # 0x7fff
	.size	bmask, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
