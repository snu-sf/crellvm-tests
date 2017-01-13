	.text
	.file	"gdevxcmp.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
.LCPI0_1:
	.quad	4599676419421066581     # double 0.33333333333333331
	.text
	.globl	gdev_x_setup_colors
	.align	16, 0x90
	.type	gdev_x_setup_colors,@function
gdev_x_setup_colors:                    # @gdev_x_setup_colors
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
	subq	$104, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 160
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
	movq	%rdi, %r14
	movq	2008(%r14), %rax
	movb	$67, %r15b
	cmpl	$1, 24(%rax)
	ja	.LBB0_3
# BB#1:                                 # %cond.false
	movb	$71, %r15b
	cmpl	$2, 56(%rax)
	jg	.LBB0_3
# BB#2:                                 # %select.mid
	movb	$77, %r15b
.LBB0_3:                                # %cond.end
	cmpl	$0, 2056(%r14)
	je	.LBB0_13
# BB#4:                                 # %if.then
	movq	1992(%r14), %rdi
	leaq	.L.str(%rip), %rsi
	xorl	%edx, %edx
	callq	XInternAtom@PLT
	movq	1992(%r14), %rdi
	movq	2024(%r14), %rsi
	cmpq	$0, 2160(%r14)
	setne	%cl
	movzbl	%cl, %r9d
	leaq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	leaq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	leaq	80(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	92(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	leaq	96(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	$31, (%rsp)
	xorl	%ecx, %ecx
	movl	$256, %r8d              # imm = 0x100
	movq	%rax, %rdx
	callq	XGetWindowProperty@PLT
	movb	$1, %bl
	testl	%eax, %eax
	jne	.LBB0_12
# BB#5:                                 # %if.then
	cmpq	$31, 96(%rsp)
	jne	.LBB0_12
# BB#6:                                 # %if.then.16
	movq	64(%rsp), %rdi
	leaq	2304(%r14), %rdx
	leaq	2296(%r14), %rcx
	leaq	.L.str.1(%rip), %rsi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cltq
	movq	%rax, 80(%rsp)
	cmpl	$2, %eax
	jne	.LBB0_9
# BB#7:                                 # %lor.lhs.false
	movq	64(%rsp), %rax
	movsbl	(%rax), %eax
	movb	%al, %cl
	addb	$-67, %cl
	movzbl	%cl, %ecx
	cmpl	$10, %ecx
	ja	.LBB0_9
# BB#8:                                 # %lor.lhs.false
	movl	$1041, %edx             # imm = 0x411
	btq	%rcx, %rdx
	jae	.LBB0_9
# BB#10:                                # %if.end
	movzbl	%r15b, %ecx
	cmpl	%eax, %ecx
	jg	.LBB0_12
# BB#11:                                # %if.end
	movb	%al, %r15b
	jmp	.LBB0_12
.LBB0_13:                               # %if.else
	movq	2840(%r14), %rax
	movzbl	(%rax), %ecx
	cmpl	$109, %ecx
	je	.LBB0_18
# BB#14:                                # %if.else
	movzbl	%cl, %ecx
	cmpl	$103, %ecx
	jne	.LBB0_15
# BB#17:                                # %if.then.67
	movb	$71, (%rax)
	jmp	.LBB0_19
.LBB0_9:                                # %if.then.32
	movq	24(%r14), %rbp
	callq	gs_program_name@PLT
	movq	%rax, %rbx
	callq	gs_revision_number@PLT
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident@PLT
	movq	24(%r14), %rdi
	leaq	.L.str.2(%rip), %rsi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	errprintf@PLT
.LBB0_12:                               # %cleanup
	movl	$-15, %ebp
	testb	%bl, %bl
	jne	.LBB0_21
	jmp	.LBB0_192
.LBB0_18:                               # %if.then.76
	movb	$77, (%rax)
	jmp	.LBB0_19
.LBB0_15:                               # %if.else
	cmpl	$99, %ecx
	jne	.LBB0_19
# BB#16:                                # %if.then.58
	movb	$67, (%rax)
.LBB0_19:                               # %if.end.81
	movzbl	%r15b, %ecx
	movq	2840(%r14), %rax
	movsbl	(%rax), %eax
	cmpl	%eax, %ecx
	jg	.LBB0_21
# BB#20:                                # %if.end.81
	movb	%al, %r15b
.LBB0_21:                               # %if.end.97
	movq	2008(%r14), %rax
	movb	60(%rax), %cl
	movl	$65535, %edx            # imm = 0xFFFF
	movl	$65535, %esi            # imm = 0xFFFF
	shrl	%cl, %esi
	subl	%esi, %edx
	movw	%dx, 2320(%r14)
	movw	%dx, 2318(%r14)
	movw	%dx, 2316(%r14)
	movw	2320(%r14), %cx
	movw	%cx, 2326(%r14)
	movl	2316(%r14), %ecx
	movl	%ecx, 2322(%r14)
	movb	60(%rax), %cl
	movl	$1, %edx
	shll	%cl, %edx
	movl	%edx, 2312(%r14)
	movq	$0, 2328(%r14)
	movl	$0, 2748(%r14)
	movq	$0, 2768(%r14)
	movq	$0, 2784(%r14)
	movl	$0, 2776(%r14)
	movl	$0, 2796(%r14)
	movl	20(%rax), %eax
	cmpq	$32, %rax
	ja	.LBB0_25
# BB#22:                                # %if.end.97
	movabsq	$4311810326, %rcx       # imm = 0x101010116
	btq	%rax, %rcx
	jae	.LBB0_23
# BB#26:                                # %sw.bb
	movw	%ax, 108(%r14)
.LBB0_27:                               # %sw.epilog
	movzwl	%ax, %ecx
	cmpl	$8, %ecx
	movw	$8, %ax
	movw	%cx, %bx
	cmovaew	%ax, %bx
	jb	.LBB0_29
# BB#28:                                # %sw.epilog
	movb	$8, %cl
.LBB0_29:                               # %sw.epilog
	movl	$1, %ebp
	shll	%cl, %ebp
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	leaq	.L.str.4(%rip), %rcx
	movl	$12, %esi
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, 2760(%r14)
	testq	%rax, %rax
	je	.LBB0_34
# BB#30:                                # %for.cond.preheader
	movzwl	%bx, %ecx
	cmpl	$31, %ecx
	je	.LBB0_33
# BB#31:                                # %for.body.lr.ph
	movslq	%ebp, %rcx
	addq	$8, %rax
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_32:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax)
	incq	%rdx
	addq	$12, %rax
	cmpq	%rcx, %rdx
	jl	.LBB0_32
.LBB0_33:                               # %for.end
	movl	%ebp, 2752(%r14)
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.166
	movl	$0, 2752(%r14)
.LBB0_35:                               # %if.end.170
	movsbl	%r15b, %eax
	cmpl	$67, %eax
	je	.LBB0_45
# BB#36:                                # %if.end.170
	cmpl	$77, %eax
	jne	.LBB0_37
# BB#181:                               # %if.end.170.monochrome_crit_edge
	leaq	100(%r14), %r15
	jmp	.LBB0_182
.LBB0_45:                               # %sw.bb.172
	movl	$3, 100(%r14)
	movl	2312(%r14), %eax
	decl	%eax
	movl	%eax, 116(%r14)
	movl	%eax, 112(%r14)
	movq	2000(%r14), %rax
	movq	2008(%r14), %rcx
	movq	(%rcx), %rcx
	cmpq	64(%rax), %rcx
	je	.LBB0_46
# BB#52:                                # %if.else.187
	movq	1992(%r14), %rdi
	movq	16(%rax), %rsi
	leaq	96(%rsp), %rdx
	leaq	80(%rsp), %rcx
	movl	$25, %r8d
	callq	XGetRGBColormaps@PLT
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB0_58
# BB#53:                                # %if.then.i.182
	movl	80(%rsp), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$0, %ebx
	jle	.LBB0_58
# BB#54:                                # %for.body.lr.ph.i.184
	movq	96(%rsp), %rdx
	movq	2016(%r14), %rsi
	.align	16, 0x90
.LBB0_55:                               # %for.body.i.189
                                        # =>This Inner Loop Header: Depth=1
	cmpq	(%rdx), %rsi
	je	.LBB0_56
# BB#57:                                # %for.inc.i.193
                                        #   in Loop: Header=BB0_55 Depth=1
	incl	%ecx
	addq	$80, %rdx
	cmpl	%eax, %ecx
	movl	$0, %ebx
	jl	.LBB0_55
	jmp	.LBB0_58
.LBB0_37:                               # %if.end.170
	cmpl	$71, %eax
	jne	.LBB0_186
# BB#38:                                # %if.end.170.grayscale_crit_edge
	leaq	100(%r14), %r15
	jmp	.LBB0_39
.LBB0_186:                              # %sw.default.472
	movq	24(%r14), %rbx
	callq	gs_program_name@PLT
	movq	%rax, %rbp
	callq	gs_revision_number@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident@PLT
	movq	24(%r14), %rdi
	movq	2840(%r14), %rdx
	leaq	.L.str.5(%rip), %rsi
	xorl	%eax, %eax
	callq	errprintf@PLT
	movq	2760(%r14), %rsi
	movl	$-15, %ebp
	testq	%rsi, %rsi
	je	.LBB0_192
# BB#187:                               # %if.then.483
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	leaq	.L.str.4(%rip), %rdx
	callq	*24(%rdi)
	movq	$0, 2760(%r14)
	jmp	.LBB0_192
.LBB0_23:                               # %if.end.97
	cmpq	$15, %rax
	jne	.LBB0_25
# BB#24:                                # %sw.bb.124
	movw	$16, 108(%r14)
	movw	$16, %ax
	jmp	.LBB0_27
.LBB0_25:                               # %sw.default
	movq	24(%r14), %rbx
	callq	gs_program_name@PLT
	movq	%rax, %rbp
	callq	gs_revision_number@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident@PLT
	movq	24(%r14), %rdi
	movq	2008(%r14), %rax
	movl	20(%rax), %edx
	leaq	.L.str.3(%rip), %rsi
	xorl	%eax, %eax
	callq	errprintf@PLT
	movl	$-15, %ebp
	jmp	.LBB0_192
.LBB0_46:                               # %if.then.182
	movq	1992(%r14), %rdi
	movq	16(%rax), %rsi
	leaq	96(%rsp), %rdx
	leaq	80(%rsp), %rcx
	movl	$27, %r8d
	callq	XGetRGBColormaps@PLT
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB0_58
# BB#47:                                # %if.then.i
	movl	80(%rsp), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$0, %ebx
	jle	.LBB0_58
# BB#48:                                # %for.body.lr.ph.i
	movq	96(%rsp), %rdx
	movq	2016(%r14), %rsi
	.align	16, 0x90
.LBB0_49:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	(%rdx), %rsi
	je	.LBB0_50
# BB#51:                                # %for.inc.i
                                        #   in Loop: Header=BB0_49 Depth=1
	incl	%ecx
	addq	$80, %rdx
	cmpl	%eax, %ecx
	movl	$0, %ebx
	jl	.LBB0_49
	jmp	.LBB0_58
.LBB0_56:
	movq	%rdx, %rbx
	jmp	.LBB0_58
.LBB0_50:
	movq	%rdx, %rbx
.LBB0_58:                               # %if.end.192
	leaq	100(%r14), %r15
	movq	%rbx, 2328(%r14)
	testq	%rbx, %rbx
	jne	.LBB0_70
# BB#59:                                # %lor.lhs.false.197
	movq	2008(%r14), %rax
	cmpl	$4, 24(%rax)
	jne	.LBB0_62
# BB#60:                                # %land.lhs.true.202
	movl	$1, %esi
	movq	%r14, %rdi
	callq	alloc_std_cmap
	testl	%eax, %eax
	je	.LBB0_61
# BB#69:                                # %land.lhs.true.202.if.then.205_crit_edge
	movq	2328(%r14), %rbx
.LBB0_70:                               # %if.then.205
	movq	8(%rbx), %r13
	movq	24(%rbx), %r12
	movq	40(%rbx), %r10
	cmpq	%r10, %r12
	movq	%r10, %rax
	cmovbq	%r12, %rax
	movl	%r10d, %ecx
	cmovbl	%r12d, %ecx
	cmpq	%rax, %r13
	movl	%r13d, %eax
	cmovael	%ecx, %eax
	incl	%eax
	leaq	124(%r14), %r8
	movl	%eax, 124(%r14)
	movl	%eax, 120(%r14)
	testq	%rbx, %rbx
	je	.LBB0_110
# BB#71:                                # %if.then.268
	movq	%rbx, 2328(%r14)
	leal	-1(%r13), %eax
	xorl	%esi, %esi
	cmpl	$62, %eax
	ja	.LBB0_109
# BB#72:                                # %lor.lhs.false.2.i.243
	leal	1(%r13), %eax
	testl	%r13d, %eax
	jne	.LBB0_109
# BB#73:                                # %lor.lhs.false.3.i.247
	movl	16(%rbx), %r11d
	leal	-1(%r11), %ecx
	testl	%r11d, %ecx
	jne	.LBB0_109
# BB#74:                                # %if.end.i.257
	cltq
	imulq	$780903145, %rax, %rcx  # imm = 0x2E8BA2E9
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	imull	$11, %ecx, %ecx
	subl	%ecx, %eax
	leal	-3(%rax,%rax,2), %ecx
	movl	$779895816, %eax        # imm = 0x2E7C4408
	shrq	%cl, %rax
	andl	$7, %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, 2340(%r14)
	movl	$-1, %ecx
	testl	%r13d, %r13d
	js	.LBB0_83
# BB#75:                                # %for.body.i.265.preheader
	leal	1(%r13), %eax
	xorl	%esi, %esi
	testb	$3, %al
	movl	$0, %edi
	je	.LBB0_78
# BB#76:                                # %for.body.i.265.prol.preheader
	movb	%r13b, %al
	incb	%al
	movzbl	%al, %ebp
	andl	$3, %ebp
	xorl	%edi, %edi
.LBB0_77:                               # %for.body.i.265.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	cltd
	idivl	%r13d
	movw	%ax, 2344(%r14,%rdi,2)
	incq	%rdi
	addl	$65535, %esi            # imm = 0xFFFF
	cmpl	%edi, %ebp
	jne	.LBB0_77
.LBB0_78:                               # %for.body.i.265.preheader.split
	cmpl	$3, %r13d
	jb	.LBB0_82
# BB#79:                                # %for.body.i.265.preheader.split.split
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movl	%r13d, %r9d
	incl	%r9d
	subl	%edi, %r9d
	leaq	2350(%r14,%rdi,2), %r15
	imull	$65535, %edi, %r8d      # imm = 0xFFFF
	leal	196605(%r8), %edi
	leal	131070(%r8), %ebp
	leal	65535(%r8), %esi
.LBB0_80:                               # %for.body.i.265
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%r13d
	movw	%ax, -6(%r15)
	movl	%esi, %eax
	cltd
	idivl	%r13d
	movw	%ax, -4(%r15)
	movl	%ebp, %eax
	cltd
	idivl	%r13d
	movw	%ax, -2(%r15)
	movl	%edi, %eax
	cltd
	idivl	%r13d
	movw	%ax, (%r15)
	addq	$8, %r15
	addl	$262140, %edi           # imm = 0x3FFFC
	addl	$262140, %ebp           # imm = 0x3FFFC
	addl	$262140, %esi           # imm = 0x3FFFC
	addl	$262140, %r8d           # imm = 0x3FFFC
	addl	$-4, %r9d
	jne	.LBB0_80
# BB#81:
	movq	56(%rsp), %r15          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
.LBB0_82:                               # %for.cond.14.i.270
	xorl	%esi, %esi
.LBB0_83:                               # %for.cond.14.i.270
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%r11d, %eax
	jne	.LBB0_83
# BB#84:                                # %land.lhs.true.i
	movl	%ecx, 2472(%r14)
	leal	-1(%r12), %eax
	cmpl	$62, %eax
	ja	.LBB0_109
# BB#85:                                # %lor.lhs.false.2.i.207
	leal	1(%r12), %eax
	testl	%r12d, %eax
	jne	.LBB0_109
# BB#86:                                # %lor.lhs.false.3.i.211
	movl	32(%rbx), %r11d
	leal	-1(%r11), %ecx
	testl	%r11d, %ecx
	jne	.LBB0_109
# BB#87:                                # %if.end.i.221
	cltq
	imulq	$780903145, %rax, %rcx  # imm = 0x2E8BA2E9
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	imull	$11, %ecx, %ecx
	subl	%ecx, %eax
	leal	-3(%rax,%rax,2), %ecx
	movl	$779895816, %eax        # imm = 0x2E7C4408
	shrq	%cl, %rax
	andl	$7, %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, 2476(%r14)
	movl	$-1, %ecx
	testl	%r12d, %r12d
	js	.LBB0_96
# BB#88:                                # %for.body.i.229.preheader
	leal	1(%r12), %eax
	xorl	%esi, %esi
	testb	$3, %al
	movl	$0, %ebp
	je	.LBB0_91
# BB#89:                                # %for.body.i.229.prol.preheader
	movb	%r12b, %al
	incb	%al
	movzbl	%al, %edi
	andl	$3, %edi
	xorl	%ebp, %ebp
.LBB0_90:                               # %for.body.i.229.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	cltd
	idivl	%r12d
	movw	%ax, 2480(%r14,%rbp,2)
	incq	%rbp
	addl	$65535, %esi            # imm = 0xFFFF
	cmpl	%ebp, %edi
	jne	.LBB0_90
.LBB0_91:                               # %for.body.i.229.preheader.split
	cmpl	$3, %r12d
	jb	.LBB0_95
# BB#92:                                # %for.body.i.229.preheader.split.split
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%r15, %r13
	movl	%r12d, %r9d
	incl	%r9d
	subl	%ebp, %r9d
	leaq	2486(%r14,%rbp,2), %rdi
	imull	$65535, %ebp, %r8d      # imm = 0xFFFF
	leal	196605(%r8), %r15d
	leal	131070(%r8), %ebp
	leal	65535(%r8), %esi
.LBB0_93:                               # %for.body.i.229
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%r12d
	movw	%ax, -6(%rdi)
	movl	%esi, %eax
	cltd
	idivl	%r12d
	movw	%ax, -4(%rdi)
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	movw	%ax, -2(%rdi)
	movl	%r15d, %eax
	cltd
	idivl	%r12d
	movw	%ax, (%rdi)
	addq	$8, %rdi
	addl	$262140, %r15d          # imm = 0x3FFFC
	addl	$262140, %ebp           # imm = 0x3FFFC
	addl	$262140, %esi           # imm = 0x3FFFC
	addl	$262140, %r8d           # imm = 0x3FFFC
	addl	$-4, %r9d
	jne	.LBB0_93
# BB#94:
	movq	%r13, %r15
	movq	48(%rsp), %r8           # 8-byte Reload
.LBB0_95:                               # %for.cond.14.i.234
	xorl	%esi, %esi
.LBB0_96:                               # %for.cond.14.i.234
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%r11d, %eax
	jne	.LBB0_96
# BB#97:                                # %land.rhs.i
	movl	%ecx, 2608(%r14)
	leal	-1(%r10), %eax
	cmpl	$62, %eax
	ja	.LBB0_109
# BB#98:                                # %lor.lhs.false.2.i
	leal	1(%r10), %eax
	testl	%r10d, %eax
	jne	.LBB0_109
# BB#99:                                # %lor.lhs.false.3.i
	movl	48(%rbx), %r9d
	leal	-1(%r9), %ecx
	testl	%r9d, %ecx
	jne	.LBB0_109
# BB#100:                               # %if.end.i
	movq	%r8, %r12
	cltq
	imulq	$780903145, %rax, %rcx  # imm = 0x2E8BA2E9
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	imull	$11, %ecx, %ecx
	subl	%ecx, %eax
	leal	-3(%rax,%rax,2), %ecx
	movl	$779895816, %eax        # imm = 0x2E7C4408
	shrq	%cl, %rax
	andl	$7, %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, 2612(%r14)
	movl	$-1, %ecx
	testl	%r10d, %r10d
	js	.LBB0_107
# BB#101:                               # %for.body.i.201.preheader
	leal	1(%r10), %eax
	xorl	%esi, %esi
	testb	$3, %al
	movl	$0, %edi
	je	.LBB0_104
# BB#102:                               # %for.body.i.201.prol.preheader
	movb	%r10b, %al
	incb	%al
	movzbl	%al, %ebp
	andl	$3, %ebp
	xorl	%edi, %edi
.LBB0_103:                              # %for.body.i.201.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	cltd
	idivl	%r10d
	movw	%ax, 2616(%r14,%rdi,2)
	incq	%rdi
	addl	$65535, %esi            # imm = 0xFFFF
	cmpl	%edi, %ebp
	jne	.LBB0_103
.LBB0_104:                              # %for.body.i.201.preheader.split
	cmpl	$3, %r10d
	jb	.LBB0_107
# BB#105:                               # %for.body.i.201.preheader.split.split
	movl	%r10d, %r11d
	incl	%r11d
	subl	%edi, %r11d
	leaq	2622(%r14,%rdi,2), %rbx
	imull	$65535, %edi, %r8d      # imm = 0xFFFF
	leal	196605(%r8), %edi
	leal	131070(%r8), %ebp
	leal	65535(%r8), %esi
.LBB0_106:                              # %for.body.i.201
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%r10d
	movw	%ax, -6(%rbx)
	movl	%esi, %eax
	cltd
	idivl	%r10d
	movw	%ax, -4(%rbx)
	movl	%ebp, %eax
	cltd
	idivl	%r10d
	movw	%ax, -2(%rbx)
	movl	%edi, %eax
	cltd
	idivl	%r10d
	movw	%ax, (%rbx)
	addq	$8, %rbx
	addl	$262140, %edi           # imm = 0x3FFFC
	addl	$262140, %ebp           # imm = 0x3FFFC
	addl	$262140, %esi           # imm = 0x3FFFC
	addl	$262140, %r8d           # imm = 0x3FFFC
	addl	$-4, %r11d
	jne	.LBB0_106
.LBB0_107:                              # %for.cond.14.i
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	movl	$1, %esi
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%r9d, %eax
	jne	.LBB0_107
# BB#108:                               # %for.end.20.i
	movl	%ecx, 2744(%r14)
	movq	%r12, %r8
.LBB0_109:                              # %set_std_cmap.exit
	movl	%esi, 2336(%r14)
	jmp	.LBB0_110
.LBB0_61:                               # %land.lhs.true.202.if.else.273_crit_edge
	movq	2008(%r14), %rax
.LBB0_62:                               # %if.else.273
	movl	56(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow@PLT
	cvttsd2si	%xmm0, %eax
	movl	2836(%r14), %ecx
	movl	2312(%r14), %ebp
	cmpl	%ebp, %ecx
	cmovlel	%ecx, %ebp
	cmpl	%ebp, %eax
	jge	.LBB0_64
# BB#63:                                # %cond.true.292
	movq	2008(%r14), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	56(%rax), %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow@PLT
	cvttsd2si	%xmm0, %ebp
	jmp	.LBB0_64
	.align	16, 0x90
.LBB0_66:                               # %while.body
                                        #   in Loop: Header=BB0_64 Depth=1
	movl	%ebp, 124(%r14)
	movl	%ebp, 120(%r14)
	movl	$1, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	setup_cube
	cmpl	$1, %eax
	sbbl	$0, %ebp
.LBB0_64:                               # %while.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 2768(%r14)
	setne	%al
	sete	%cl
	cmpl	$2, %ebp
	jl	.LBB0_67
# BB#65:                                # %while.cond.preheader
                                        #   in Loop: Header=BB0_64 Depth=1
	testb	%cl, %cl
	jne	.LBB0_66
.LBB0_67:                               # %while.end
	testb	%al, %al
	je	.LBB0_39
# BB#68:                                # %while.end.if.end.335_crit_edge
	leaq	124(%r14), %r8
.LBB0_110:                              # %if.end.335
	movl	2312(%r14), %edx
	movl	%edx, %ebx
	imull	%ebx, %ebx
	imull	%edx, %ebx
	movl	(%r8), %eax
	movl	%eax, %ecx
	imull	%ecx, %ecx
	imull	%eax, %ecx
	subl	%ecx, %ebx
	testl	%ebx, %ebx
	jle	.LBB0_183
# BB#111:                               # %if.then.i.279
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	leaq	.L.str.8(%rip), %rcx
	movl	$8, %esi
	callq	*88(%rdi)
	movq	%rax, 2784(%r14)
	testq	%rax, %rax
	je	.LBB0_183
# BB#112:                               # %if.then.7.i
	movslq	2312(%r14), %rcx
	movl	%ecx, 2776(%r14)
	movq	2008(%r14), %rdx
	movl	$16, %esi
	subl	60(%rdx), %esi
	testq	%rcx, %rcx
	movl	%esi, 2792(%r14)
	jle	.LBB0_120
# BB#113:                               # %for.body.lr.ph.i.281
	movq	$0, (%rax)
	cmpl	$2, %ecx
	jl	.LBB0_120
# BB#114:                               # %for.body.for.body_crit_edge.i.lr.ph
	leal	3(%rcx), %esi
	leaq	-2(%rcx), %rdx
	movl	$1, %eax
	testb	$3, %sil
	je	.LBB0_118
# BB#115:                               # %for.body.for.body_crit_edge.i.prol.preheader
	movb	%cl, %al
	addb	$3, %al
	movzbl	%al, %esi
	andl	$3, %esi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_116:                              # %for.body.for.body_crit_edge.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	movq	2784(%r14), %rdi
	movq	$0, 8(%rdi,%rax,8)
	leaq	1(%rax), %rdi
	cmpq	%rdi, %rsi
	jne	.LBB0_116
# BB#117:
	addq	$2, %rax
.LBB0_118:                              # %for.body.for.body_crit_edge.i.lr.ph.split
	cmpq	$3, %rdx
	jb	.LBB0_120
.LBB0_119:                              # %for.body.for.body_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movq	2784(%r14), %rdx
	movq	$0, (%rdx,%rax,8)
	movq	2784(%r14), %rdx
	movq	$0, 8(%rdx,%rax,8)
	movq	2784(%r14), %rdx
	movq	$0, 16(%rdx,%rax,8)
	movq	2784(%r14), %rdx
	movq	$0, 24(%rdx,%rax,8)
	addq	$4, %rax
	cmpq	%rax, %rcx
	jne	.LBB0_119
	jmp	.LBB0_120
.LBB0_39:                               # %grayscale
	movl	$1, 100(%r14)
	movb	$0, 110(%r14)
	movl	2312(%r14), %eax
	decl	%eax
	movl	%eax, 112(%r14)
	movq	1992(%r14), %rdi
	movq	2000(%r14), %rax
	movq	16(%rax), %rsi
	leaq	96(%rsp), %rdx
	leaq	80(%rsp), %rcx
	movl	$28, %r8d
	callq	XGetRGBColormaps@PLT
	testl	%eax, %eax
	je	.LBB0_44
# BB#40:                                # %if.then.i.294
	movl	80(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB0_44
# BB#41:                                # %for.body.lr.ph.i.296
	movq	96(%rsp), %rbx
	movq	2016(%r14), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_42:                               # %for.body.i.301
                                        # =>This Inner Loop Header: Depth=1
	cmpq	(%rbx), %rcx
	je	.LBB0_121
# BB#43:                                # %for.inc.i.305
                                        #   in Loop: Header=BB0_42 Depth=1
	incl	%edx
	addq	$80, %rbx
	cmpl	%eax, %edx
	jl	.LBB0_42
.LBB0_44:                               # %x_get_std_cmap.exit307.thread
	movq	$0, 2328(%r14)
.LBB0_122:                              # %lor.lhs.false.369
	movq	2008(%r14), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB0_125
# BB#123:                               # %land.lhs.true.374
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	alloc_std_cmap
	testl	%eax, %eax
	je	.LBB0_124
# BB#131:                               # %land.lhs.true.374.if.then.377_crit_edge
	movq	2328(%r14), %rbx
	jmp	.LBB0_132
.LBB0_121:                              # %x_get_std_cmap.exit307
	movq	%rbx, 2328(%r14)
	testq	%rbx, %rbx
	je	.LBB0_122
.LBB0_132:                              # %if.then.377
	movq	8(%rbx), %r11
	leal	1(%r11), %eax
	leaq	120(%r14), %r9
	movl	%eax, 120(%r14)
	testq	%rbx, %rbx
	je	.LBB0_171
# BB#133:                               # %if.then.390
	movq	%rbx, 2328(%r14)
	leal	-1(%r11), %eax
	xorl	%r10d, %r10d
	cmpl	$62, %eax
	ja	.LBB0_170
# BB#134:                               # %lor.lhs.false.2.i.409
	leal	1(%r11), %eax
	testl	%r11d, %eax
	jne	.LBB0_170
# BB#135:                               # %lor.lhs.false.3.i.413
	movl	16(%rbx), %r12d
	leal	-1(%r12), %ecx
	testl	%r12d, %ecx
	jne	.LBB0_170
# BB#136:                               # %if.end.i.423
	cltq
	imulq	$780903145, %rax, %rcx  # imm = 0x2E8BA2E9
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	imull	$11, %ecx, %ecx
	subl	%ecx, %eax
	leal	-3(%rax,%rax,2), %ecx
	movl	$779895816, %eax        # imm = 0x2E7C4408
	shrq	%cl, %rax
	andl	$7, %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, 2340(%r14)
	movl	$-1, %ecx
	testl	%r11d, %r11d
	js	.LBB0_144
# BB#137:                               # %for.body.i.431.preheader
	leal	1(%r11), %eax
	xorl	%esi, %esi
	testb	$3, %al
	movl	$0, %ebp
	je	.LBB0_140
# BB#138:                               # %for.body.i.431.prol.preheader
	movb	%r11b, %al
	incb	%al
	movzbl	%al, %edi
	andl	$3, %edi
	xorl	%ebp, %ebp
.LBB0_139:                              # %for.body.i.431.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	cltd
	idivl	%r11d
	movw	%ax, 2344(%r14,%rbp,2)
	incq	%rbp
	addl	$65535, %esi            # imm = 0xFFFF
	cmpl	%ebp, %edi
	jne	.LBB0_139
.LBB0_140:                              # %for.body.i.431.preheader.split
	cmpl	$3, %r11d
	jb	.LBB0_144
# BB#141:                               # %for.body.i.431.preheader.split.split
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movl	%r11d, %r13d
	incl	%r13d
	subl	%ebp, %r13d
	leaq	2350(%r14,%rbp,2), %rdi
	imull	$65535, %ebp, %r8d      # imm = 0xFFFF
	leal	196605(%r8), %r15d
	leal	131070(%r8), %ebp
	leal	65535(%r8), %esi
.LBB0_142:                              # %for.body.i.431
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%r11d
	movw	%ax, -6(%rdi)
	movl	%esi, %eax
	cltd
	idivl	%r11d
	movw	%ax, -4(%rdi)
	movl	%ebp, %eax
	cltd
	idivl	%r11d
	movw	%ax, -2(%rdi)
	movl	%r15d, %eax
	cltd
	idivl	%r11d
	movw	%ax, (%rdi)
	addq	$8, %rdi
	addl	$262140, %r15d          # imm = 0x3FFFC
	addl	$262140, %ebp           # imm = 0x3FFFC
	addl	$262140, %esi           # imm = 0x3FFFC
	addl	$262140, %r8d           # imm = 0x3FFFC
	addl	$-4, %r13d
	jne	.LBB0_142
# BB#143:
	movq	56(%rsp), %r15          # 8-byte Reload
.LBB0_144:                              # %for.cond.14.i.436
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%r12d, %eax
	jne	.LBB0_144
# BB#145:                               # %land.lhs.true.i.322
	movl	%ecx, 2472(%r14)
	movq	24(%rbx), %r12
	leal	-1(%r12), %eax
	cmpl	$62, %eax
	ja	.LBB0_170
# BB#146:                               # %lor.lhs.false.2.i.373
	leal	1(%r12), %eax
	testl	%r12d, %eax
	jne	.LBB0_170
# BB#147:                               # %lor.lhs.false.3.i.377
	movl	32(%rbx), %r11d
	leal	-1(%r11), %ecx
	testl	%r11d, %ecx
	jne	.LBB0_170
# BB#148:                               # %if.end.i.387
	movq	%r15, 56(%rsp)          # 8-byte Spill
	cltq
	imulq	$780903145, %rax, %rcx  # imm = 0x2E8BA2E9
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	imull	$11, %ecx, %ecx
	subl	%ecx, %eax
	leal	-3(%rax,%rax,2), %ecx
	movl	$779895816, %eax        # imm = 0x2E7C4408
	shrq	%cl, %rax
	andl	$7, %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, 2476(%r14)
	movl	$-1, %ecx
	testl	%r12d, %r12d
	js	.LBB0_155
# BB#149:                               # %for.body.i.395.preheader
	leal	1(%r12), %eax
	xorl	%esi, %esi
	testb	$3, %al
	movl	$0, %ebp
	je	.LBB0_152
# BB#150:                               # %for.body.i.395.prol.preheader
	movb	%r12b, %al
	incb	%al
	movzbl	%al, %edi
	andl	$3, %edi
	xorl	%ebp, %ebp
.LBB0_151:                              # %for.body.i.395.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	cltd
	idivl	%r12d
	movw	%ax, 2480(%r14,%rbp,2)
	incq	%rbp
	addl	$65535, %esi            # imm = 0xFFFF
	cmpl	%ebp, %edi
	jne	.LBB0_151
.LBB0_152:                              # %for.body.i.395.preheader.split
	cmpl	$3, %r12d
	jb	.LBB0_155
# BB#153:                               # %for.body.i.395.preheader.split.split
	movl	%r12d, %r13d
	incl	%r13d
	subl	%ebp, %r13d
	leaq	2486(%r14,%rbp,2), %rdi
	imull	$65535, %ebp, %r8d      # imm = 0xFFFF
	leal	196605(%r8), %r15d
	leal	131070(%r8), %ebp
	leal	65535(%r8), %esi
.LBB0_154:                              # %for.body.i.395
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%r12d
	movw	%ax, -6(%rdi)
	movl	%esi, %eax
	cltd
	idivl	%r12d
	movw	%ax, -4(%rdi)
	movl	%ebp, %eax
	cltd
	idivl	%r12d
	movw	%ax, -2(%rdi)
	movl	%r15d, %eax
	cltd
	idivl	%r12d
	movw	%ax, (%rdi)
	addq	$8, %rdi
	addl	$262140, %r15d          # imm = 0x3FFFC
	addl	$262140, %ebp           # imm = 0x3FFFC
	addl	$262140, %esi           # imm = 0x3FFFC
	addl	$262140, %r8d           # imm = 0x3FFFC
	addl	$-4, %r13d
	jne	.LBB0_154
.LBB0_155:                              # %for.cond.14.i.400
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%r11d, %eax
	jne	.LBB0_155
# BB#156:                               # %land.rhs.i.329
	movl	%ecx, 2608(%r14)
	movq	40(%rbx), %r11
	leal	-1(%r11), %eax
	cmpl	$62, %eax
	jbe	.LBB0_158
# BB#157:
	movq	56(%rsp), %r15          # 8-byte Reload
	jmp	.LBB0_170
.LBB0_124:                              # %land.lhs.true.374.if.else.395_crit_edge
	movq	2008(%r14), %rax
.LBB0_125:                              # %if.else.395
	movl	56(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movl	2832(%r14), %eax
	movl	2312(%r14), %ecx
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	cmpl	%ecx, %edx
	cmovlel	%edx, %ecx
	jmp	.LBB0_126
	.align	16, 0x90
.LBB0_128:                              # %while.body.440
                                        #   in Loop: Header=BB0_126 Depth=1
	movl	%ecx, %ebx
	movl	%ebx, 120(%r14)
	xorl	%edx, %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	setup_cube
	movl	%ebx, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rbx), %ecx
	sarl	%ecx
	testl	%eax, %eax
	cmovnel	%ebx, %ecx
.LBB0_126:                              # %if.else.395
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 2768(%r14)
	setne	%al
	sete	%dl
	cmpl	$3, %ecx
	jl	.LBB0_129
# BB#127:                               # %if.else.395
                                        #   in Loop: Header=BB0_126 Depth=1
	testb	%dl, %dl
	jne	.LBB0_128
.LBB0_129:                              # %while.end.448
	testb	%al, %al
	je	.LBB0_182
# BB#130:                               # %while.end.448.if.end.457_crit_edge
	leaq	120(%r14), %r9
	jmp	.LBB0_171
.LBB0_182:                              # %monochrome
	movl	$1, 100(%r14)
	movb	$0, 110(%r14)
	movl	$1, 112(%r14)
	movl	$2, 120(%r14)
	jmp	.LBB0_183
.LBB0_158:                              # %lor.lhs.false.2.i.337
	leal	1(%r11), %eax
	testl	%r11d, %eax
	je	.LBB0_160
# BB#159:
	movq	56(%rsp), %r15          # 8-byte Reload
	jmp	.LBB0_170
.LBB0_160:                              # %lor.lhs.false.3.i.341
	movl	48(%rbx), %r12d
	leal	-1(%r12), %ecx
	testl	%r12d, %ecx
	movq	56(%rsp), %r15          # 8-byte Reload
	jne	.LBB0_170
# BB#161:                               # %if.end.i.351
	cltq
	imulq	$780903145, %rax, %rcx  # imm = 0x2E8BA2E9
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	imull	$11, %ecx, %ecx
	subl	%ecx, %eax
	leal	-3(%rax,%rax,2), %ecx
	movl	$779895816, %eax        # imm = 0x2E7C4408
	shrq	%cl, %rax
	andl	$7, %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, 2612(%r14)
	movl	$-1, %ecx
	testl	%r11d, %r11d
	js	.LBB0_168
# BB#162:                               # %for.body.i.359.preheader
	leal	1(%r11), %eax
	xorl	%esi, %esi
	testb	$3, %al
	movl	$0, %edi
	je	.LBB0_165
# BB#163:                               # %for.body.i.359.prol.preheader
	movb	%r11b, %al
	incb	%al
	movzbl	%al, %ebp
	andl	$3, %ebp
	xorl	%edi, %edi
.LBB0_164:                              # %for.body.i.359.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	cltd
	idivl	%r11d
	movw	%ax, 2616(%r14,%rdi,2)
	incq	%rdi
	addl	$65535, %esi            # imm = 0xFFFF
	cmpl	%edi, %ebp
	jne	.LBB0_164
.LBB0_165:                              # %for.body.i.359.preheader.split
	cmpl	$3, %r11d
	jb	.LBB0_168
# BB#166:                               # %for.body.i.359.preheader.split.split
	movl	%r11d, %r10d
	incl	%r10d
	subl	%edi, %r10d
	leaq	2622(%r14,%rdi,2), %rbx
	imull	$65535, %edi, %r8d      # imm = 0xFFFF
	leal	196605(%r8), %edi
	leal	131070(%r8), %ebp
	leal	65535(%r8), %esi
.LBB0_167:                              # %for.body.i.359
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%r11d
	movw	%ax, -6(%rbx)
	movl	%esi, %eax
	cltd
	idivl	%r11d
	movw	%ax, -4(%rbx)
	movl	%ebp, %eax
	cltd
	idivl	%r11d
	movw	%ax, -2(%rbx)
	movl	%edi, %eax
	cltd
	idivl	%r11d
	movw	%ax, (%rbx)
	addq	$8, %rbx
	addl	$262140, %edi           # imm = 0x3FFFC
	addl	$262140, %ebp           # imm = 0x3FFFC
	addl	$262140, %esi           # imm = 0x3FFFC
	addl	$262140, %r8d           # imm = 0x3FFFC
	addl	$-4, %r10d
	jne	.LBB0_167
.LBB0_168:                              # %for.cond.14.i.364
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	movl	$1, %r10d
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%r12d, %eax
	jne	.LBB0_168
# BB#169:                               # %for.end.20.i.366
	movl	%ecx, 2744(%r14)
.LBB0_170:                              # %set_std_cmap.exit332
	movl	%r10d, 2336(%r14)
.LBB0_171:                              # %if.end.457
	movl	2312(%r14), %edx
	movl	%edx, %ebx
	subl	(%r9), %ebx
	testl	%ebx, %ebx
	jle	.LBB0_183
# BB#172:                               # %if.then.i.449
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	leaq	.L.str.8(%rip), %rcx
	movl	$8, %esi
	callq	*88(%rdi)
	movq	%rax, 2784(%r14)
	testq	%rax, %rax
	je	.LBB0_183
# BB#173:                               # %if.then.7.i.456
	movslq	2312(%r14), %rcx
	movl	%ecx, 2776(%r14)
	movq	2008(%r14), %rdx
	movl	$16, %esi
	subl	60(%rdx), %esi
	testq	%rcx, %rcx
	movl	%esi, 2792(%r14)
	jle	.LBB0_120
# BB#174:                               # %for.body.lr.ph.i.457
	movq	$0, (%rax)
	cmpl	$2, %ecx
	jl	.LBB0_120
# BB#175:                               # %for.body.for.body_crit_edge.i.464.lr.ph
	leal	3(%rcx), %esi
	leaq	-2(%rcx), %rdx
	movl	$1, %eax
	testb	$3, %sil
	je	.LBB0_179
# BB#176:                               # %for.body.for.body_crit_edge.i.464.prol.preheader
	movb	%cl, %al
	addb	$3, %al
	movzbl	%al, %esi
	andl	$3, %esi
	xorl	%edi, %edi
.LBB0_177:                              # %for.body.for.body_crit_edge.i.464.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	movq	2784(%r14), %rdi
	movq	$0, 8(%rdi,%rax,8)
	leaq	1(%rax), %rdi
	cmpq	%rdi, %rsi
	jne	.LBB0_177
# BB#178:
	addq	$2, %rax
.LBB0_179:                              # %for.body.for.body_crit_edge.i.464.lr.ph.split
	cmpq	$3, %rdx
	jb	.LBB0_120
.LBB0_180:                              # %for.body.for.body_crit_edge.i.464
                                        # =>This Inner Loop Header: Depth=1
	movq	2784(%r14), %rdx
	movq	$0, (%rdx,%rax,8)
	movq	2784(%r14), %rdx
	movq	$0, 8(%rdx,%rax,8)
	movq	2784(%r14), %rdx
	movq	$0, 16(%rdx,%rax,8)
	movq	2784(%r14), %rdx
	movq	$0, 24(%rdx,%rax,8)
	addq	$4, %rax
	cmpq	%rax, %rcx
	jne	.LBB0_180
.LBB0_120:                              # %for.end.i
	cmpl	$256, %ebx              # imm = 0x100
	movl	$256, %eax              # imm = 0x100
	cmovlel	%ebx, %eax
	movl	%eax, 2800(%r14)
	movl	$0, 2796(%r14)
.LBB0_183:                              # %sw.epilog.492
	cmpl	$1, (%r15)
	jg	.LBB0_185
# BB#184:                               # %lor.lhs.false.497
	movzbl	110(%r14), %eax
	cmpl	$255, %eax
	je	.LBB0_185
# BB#188:                               # %cond.false.506
	leaq	112(%r14), %rax
	jmp	.LBB0_189
.LBB0_185:                              # %cond.true.503
	leaq	116(%r14), %rax
.LBB0_189:                              # %cond.end.509
	xorl	%ebp, %ebp
	cmpl	$31, (%rax)
	jb	.LBB0_192
# BB#190:                               # %if.then.513
	cmpq	$0, 2328(%r14)
	je	.LBB0_192
# BB#191:                               # %if.then.518
	movb	2340(%r14), %cl
	movl	$65535, %eax            # imm = 0xFFFF
	movl	$65535, %edx            # imm = 0xFFFF
	shll	%cl, %edx
	movzwl	2322(%r14), %ecx
	andl	%edx, %ecx
	movw	%cx, 2322(%r14)
	movb	2476(%r14), %cl
	movl	$65535, %edx            # imm = 0xFFFF
	shll	%cl, %edx
	movzwl	2324(%r14), %ecx
	andl	%edx, %ecx
	movw	%cx, 2324(%r14)
	movb	2612(%r14), %cl
	shll	%cl, %eax
	movzwl	2326(%r14), %ecx
	andl	%eax, %ecx
	movw	%cx, 2326(%r14)
.LBB0_192:                              # %cleanup.552
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gdev_x_setup_colors, .Lfunc_end0-gdev_x_setup_colors
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_std_cmap,@function
alloc_std_cmap:                         # @alloc_std_cmap
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
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
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
	movl	%esi, %ebx
	movq	%rdi, %r12
	callq	XAllocStandardColormap@PLT
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB1_49
# BB#1:                                 # %if.end
	movq	2008(%r12), %rdx
	movq	32(%rdx), %rbp
	movq	%rbp, 8(%rax)
	testq	%rbp, %rbp
	je	.LBB1_2
# BB#3:                                 # %if.else
	movq	$1, 16(%rax)
	movl	$1, %esi
	testb	$1, %bpl
	jne	.LBB1_6
	.align	16, 0x90
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rcx
	shrq	%rbp
	addq	%rsi, %rsi
	btq	$1, %rcx
	jae	.LBB1_4
# BB#5:                                 # %for.cond.if.end.12.loopexit_crit_edge
	movq	%rbp, 8(%rax)
	movq	%rsi, 16(%rax)
	jmp	.LBB1_6
.LBB1_2:                                # %if.then.2
	movb	20(%rdx), %cl
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	movslq	%esi, %rbp
	movq	%rbp, 8(%rax)
	movq	$1, 16(%rax)
	movl	$1, %esi
.LBB1_6:                                # %if.end.12
	testl	%ebx, %ebx
	je	.LBB1_50
# BB#7:                                 # %if.then.13
	movq	40(%rdx), %rdi
	movq	%rdi, 24(%rax)
	movq	$1, 32(%rax)
	movl	$1, %ebx
	testb	$1, %dil
	jne	.LBB1_10
	.align	16, 0x90
.LBB1_8:                                # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rcx
	shrq	%rdi
	addq	%rbx, %rbx
	btq	$1, %rcx
	jae	.LBB1_8
# BB#9:                                 # %for.cond.15.for.end.25_crit_edge
	movq	%rdi, 24(%rax)
	movq	%rbx, 32(%rax)
.LBB1_10:                               # %for.end.25
	movq	48(%rdx), %r13
	movq	%r13, 40(%rax)
	movq	$1, 48(%rax)
	movl	$1, %r11d
	testb	$1, %r13b
	jne	.LBB1_13
	.align	16, 0x90
.LBB1_11:                               # %for.body.32
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rcx
	shrq	%r13
	addq	%r11, %r11
	btq	$1, %rcx
	jae	.LBB1_11
# BB#12:                                # %for.cond.27.if.end.45.loopexit_crit_edge
	movq	%r13, 40(%rax)
	movq	%r11, 48(%rax)
	jmp	.LBB1_13
.LBB1_50:                               # %if.else.38
	movq	%rbp, 40(%rax)
	movq	%rbp, 24(%rax)
	movq	%rsi, 48(%rax)
	movq	%rsi, 32(%rax)
	movq	%rsi, %r11
	movq	%rbp, %r13
	movq	%rsi, %rbx
	movq	%rbp, %rdi
.LBB1_13:                               # %if.end.45
	movq	%rax, 2328(%r12)
	leal	-1(%rbp), %eax
	xorl	%r15d, %r15d
	cmpl	$62, %eax
	ja	.LBB1_48
# BB#14:                                # %lor.lhs.false.2.i.76
	leal	1(%rbp), %eax
	testl	%ebp, %eax
	jne	.LBB1_48
# BB#15:                                # %lor.lhs.false.3.i.80
	leal	-1(%rsi), %ecx
	testl	%esi, %ecx
	jne	.LBB1_48
# BB#16:                                # %if.end.i.90
	cltq
	imulq	$780903145, %rax, %rcx  # imm = 0x2E8BA2E9
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	imull	$11, %ecx, %ecx
	subl	%ecx, %eax
	leal	-3(%rax,%rax,2), %ecx
	movl	$779895816, %eax        # imm = 0x2E7C4408
	shrq	%cl, %rax
	andl	$7, %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, 2340(%r12)
	movl	$-1, %ecx
	testl	%ebp, %ebp
	js	.LBB1_24
# BB#17:                                # %for.body.i.98.preheader
	leal	1(%rbp), %eax
	xorl	%r8d, %r8d
	testb	$3, %al
	movl	$0, %r9d
	je	.LBB1_20
# BB#18:                                # %for.body.i.98.prol.preheader
	movb	%bpl, %al
	incb	%al
	movzbl	%al, %r10d
	andl	$3, %r10d
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB1_19:                               # %for.body.i.98.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%ebp
	movw	%ax, 2344(%r12,%r9,2)
	incq	%r9
	addl	$65535, %r8d            # imm = 0xFFFF
	cmpl	%r9d, %r10d
	jne	.LBB1_19
.LBB1_20:                               # %for.body.i.98.preheader.split
	cmpl	$3, %ebp
	jb	.LBB1_24
# BB#21:                                # %for.body.i.98.preheader.split.split
	movl	%ebp, %r15d
	incl	%r15d
	subl	%r9d, %r15d
	leaq	2350(%r12,%r9,2), %r14
	movq	%r12, (%rsp)            # 8-byte Spill
	imull	$65535, %r9d, %r8d      # imm = 0xFFFF
	leal	196605(%r8), %r9d
	leal	131070(%r8), %r10d
	leal	65535(%r8), %r12d
	.align	16, 0x90
.LBB1_22:                               # %for.body.i.98
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%ebp
	movw	%ax, -6(%r14)
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	movw	%ax, -4(%r14)
	movl	%r10d, %eax
	cltd
	idivl	%ebp
	movw	%ax, -2(%r14)
	movl	%r9d, %eax
	cltd
	idivl	%ebp
	movw	%ax, (%r14)
	addq	$8, %r14
	addl	$262140, %r9d           # imm = 0x3FFFC
	addl	$262140, %r10d          # imm = 0x3FFFC
	addl	$262140, %r12d          # imm = 0x3FFFC
	addl	$262140, %r8d           # imm = 0x3FFFC
	addl	$-4, %r15d
	jne	.LBB1_22
# BB#23:
	movq	(%rsp), %r12            # 8-byte Reload
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB1_24:                               # %for.cond.14.i.103
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%esi, %eax
	jne	.LBB1_24
# BB#25:                                # %land.lhs.true.i
	movl	%ecx, 2472(%r12)
	leal	-1(%rdi), %eax
	cmpl	$62, %eax
	ja	.LBB1_48
# BB#26:                                # %lor.lhs.false.2.i.40
	leal	1(%rdi), %eax
	testl	%edi, %eax
	jne	.LBB1_48
# BB#27:                                # %lor.lhs.false.3.i.44
	leal	-1(%rbx), %ecx
	testl	%ebx, %ecx
	jne	.LBB1_48
# BB#28:                                # %if.end.i.54
	cltq
	imulq	$780903145, %rax, %rcx  # imm = 0x2E8BA2E9
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	imull	$11, %ecx, %ecx
	subl	%ecx, %eax
	leal	-3(%rax,%rax,2), %ecx
	movl	$779895816, %eax        # imm = 0x2E7C4408
	shrq	%cl, %rax
	andl	$7, %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, 2476(%r12)
	movl	$-1, %ecx
	testl	%edi, %edi
	js	.LBB1_35
# BB#29:                                # %for.body.i.62.preheader
	leal	1(%rdi), %eax
	xorl	%esi, %esi
	testb	$3, %al
	movl	$0, %ebp
	je	.LBB1_32
# BB#30:                                # %for.body.i.62.prol.preheader
	movb	%dil, %al
	incb	%al
	movzbl	%al, %r8d
	andl	$3, %r8d
	xorl	%ebp, %ebp
.LBB1_31:                               # %for.body.i.62.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	cltd
	idivl	%edi
	movw	%ax, 2480(%r12,%rbp,2)
	incq	%rbp
	addl	$65535, %esi            # imm = 0xFFFF
	cmpl	%ebp, %r8d
	jne	.LBB1_31
.LBB1_32:                               # %for.body.i.62.preheader.split
	cmpl	$3, %edi
	jb	.LBB1_35
# BB#33:                                # %for.body.i.62.preheader.split.split
	movl	%edi, %r14d
	incl	%r14d
	subl	%ebp, %r14d
	leaq	2486(%r12,%rbp,2), %rsi
	imull	$65535, %ebp, %r8d      # imm = 0xFFFF
	leal	196605(%r8), %r9d
	leal	131070(%r8), %r10d
	leal	65535(%r8), %ebp
.LBB1_34:                               # %for.body.i.62
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%edi
	movw	%ax, -6(%rsi)
	movl	%ebp, %eax
	cltd
	idivl	%edi
	movw	%ax, -4(%rsi)
	movl	%r10d, %eax
	cltd
	idivl	%edi
	movw	%ax, -2(%rsi)
	movl	%r9d, %eax
	cltd
	idivl	%edi
	movw	%ax, (%rsi)
	addq	$8, %rsi
	addl	$262140, %r9d           # imm = 0x3FFFC
	addl	$262140, %r10d          # imm = 0x3FFFC
	addl	$262140, %ebp           # imm = 0x3FFFC
	addl	$262140, %r8d           # imm = 0x3FFFC
	addl	$-4, %r14d
	jne	.LBB1_34
.LBB1_35:                               # %for.cond.14.i.67
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%ebx, %eax
	jne	.LBB1_35
# BB#36:                                # %land.rhs.i
	movl	%ecx, 2608(%r12)
	leal	-1(%r13), %eax
	cmpl	$62, %eax
	ja	.LBB1_48
# BB#37:                                # %lor.lhs.false.2.i
	leal	1(%r13), %eax
	testl	%r13d, %eax
	jne	.LBB1_48
# BB#38:                                # %lor.lhs.false.3.i
	leal	-1(%r11), %ecx
	testl	%r11d, %ecx
	jne	.LBB1_48
# BB#39:                                # %if.end.i
	cltq
	imulq	$780903145, %rax, %rcx  # imm = 0x2E8BA2E9
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	imull	$11, %ecx, %ecx
	subl	%ecx, %eax
	leal	-3(%rax,%rax,2), %ecx
	movl	$779895816, %eax        # imm = 0x2E7C4408
	shrq	%cl, %rax
	andl	$7, %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, 2612(%r12)
	movl	$-1, %ecx
	testl	%r13d, %r13d
	js	.LBB1_46
# BB#40:                                # %for.body.i.preheader
	leal	1(%r13), %eax
	xorl	%esi, %esi
	testb	$3, %al
	movl	$0, %ebx
	je	.LBB1_43
# BB#41:                                # %for.body.i.prol.preheader
	movb	%r13b, %al
	incb	%al
	movzbl	%al, %edi
	andl	$3, %edi
	xorl	%ebx, %ebx
.LBB1_42:                               # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	cltd
	idivl	%r13d
	movw	%ax, 2616(%r12,%rbx,2)
	incq	%rbx
	addl	$65535, %esi            # imm = 0xFFFF
	cmpl	%ebx, %edi
	jne	.LBB1_42
.LBB1_43:                               # %for.body.i.preheader.split
	cmpl	$3, %r13d
	jb	.LBB1_46
# BB#44:                                # %for.body.i.preheader.split.split
	movl	%r13d, %edi
	incl	%edi
	subl	%ebx, %edi
	leaq	2622(%r12,%rbx,2), %rbp
	imull	$65535, %ebx, %r8d      # imm = 0xFFFF
	leal	196605(%r8), %r9d
	leal	131070(%r8), %esi
	leal	65535(%r8), %ebx
.LBB1_45:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%r13d
	movw	%ax, -6(%rbp)
	movl	%ebx, %eax
	cltd
	idivl	%r13d
	movw	%ax, -4(%rbp)
	movl	%esi, %eax
	cltd
	idivl	%r13d
	movw	%ax, -2(%rbp)
	movl	%r9d, %eax
	cltd
	idivl	%r13d
	movw	%ax, (%rbp)
	addq	$8, %rbp
	addl	$262140, %r9d           # imm = 0x3FFFC
	addl	$262140, %esi           # imm = 0x3FFFC
	addl	$262140, %ebx           # imm = 0x3FFFC
	addl	$262140, %r8d           # imm = 0x3FFFC
	addl	$-4, %edi
	jne	.LBB1_45
.LBB1_46:                               # %for.cond.14.i
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	movl	$1, %r15d
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%r11d, %eax
	jne	.LBB1_46
# BB#47:                                # %for.end.20.i
	movl	%ecx, 2744(%r12)
.LBB1_48:                               # %set_std_cmap.exit
	movl	%r15d, 2336(%r12)
	movl	$1, 2748(%r12)
	movl	$1, %ecx
.LBB1_49:                               # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	alloc_std_cmap, .Lfunc_end1-alloc_std_cmap
	.cfi_endproc

	.align	16, 0x90
	.type	setup_cube,@function
setup_cube:                             # @setup_cube
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 112
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r13
	movq	%r13, (%rsp)            # 8-byte Spill
	testl	%edx, %edx
	je	.LBB2_2
# BB#1:                                 # %if.then
	movl	%r15d, %ebp
	imull	%ebp, %ebp
	imull	%r15d, %ebp
	movl	$1, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	leal	1(%r15), %eax
	imull	%r15d, %eax
	incl	%eax
	cltq
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%r15d, %ebp
.LBB2_3:                                # %if.end
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	leaq	.L.str.10(%rip), %rcx
	movl	$8, %esi
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, 2768(%r13)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB2_23
# BB#4:                                 # %if.end.9
	movq	2304(%r13), %rcx
	movq	%rcx, (%rax)
	movq	2296(%r13), %rcx
	decl	%ebp
	movslq	%ebp, %r12
	movq	%rcx, (%rax,%r12,8)
	cmpl	$2, %r12d
	jl	.LBB2_10
# BB#5:                                 # %for.body.lr.ph
	leal	-1(%r15), %ebx
	movl	$1, %r14d
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	.align	16, 0x90
.LBB2_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%r15d
	movl	%edx, %ecx
	cltd
	idivl	%r15d
	movl	%edx, %esi
	imull	$65535, %eax, %eax      # imm = 0xFFFF
	cltd
	idivl	%ebx
	movzwl	2316(%r13), %edi
	andl	%eax, %edi
	movw	%di, 32(%rsp)
	imull	$65535, %esi, %eax      # imm = 0xFFFF
	cltd
	idivl	%ebx
	movzwl	2318(%r13), %esi
	andl	%eax, %esi
	movw	%si, 34(%rsp)
	imull	$65535, %ecx, %eax      # imm = 0xFFFF
	cltd
	idivl	%ebx
	movzwl	2320(%r13), %ecx
	andl	%eax, %ecx
	movw	%cx, 36(%rsp)
	movw	%di, 40(%rsp)
	movw	%si, 42(%rsp)
	movw	%cx, 44(%rsp)
	movq	1992(%r13), %rdi
	movq	2016(%r13), %rsi
	leaq	24(%rsp), %rdx
	callq	XAllocColor@PLT
	testl	%eax, %eax
	je	.LBB2_11
# BB#7:                                 # %if.end.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	24(%rsp), %rax
	movslq	2752(%r13), %rcx
	cmpq	%rcx, %rax
	jae	.LBB2_9
# BB#8:                                 # %if.then.7.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	2760(%r13), %r15
	leaq	(%rax,%rax,2), %r13
	leaq	(%r15,%r13,4), %rdi
	movl	$6, %edx
	leaq	40(%rsp), %rsi
	callq	memcpy@PLT
	movl	$1, 8(%r15,%r13,4)
	movq	(%rsp), %r13            # 8-byte Reload
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	24(%rsp), %rax
.LBB2_9:                                # %if.end.45
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	2768(%r13), %rcx
	movq	%rax, (%rcx,%r14,8)
	incq	%r14
	movq	16(%rsp), %rax          # 8-byte Reload
	addl	%eax, %ebp
	cmpq	%r12, %r14
	jl	.LBB2_6
.LBB2_10:
	movl	$1, %ecx
	jmp	.LBB2_23
.LBB2_11:                               # %if.then.44
	cmpl	$2, %r14d
	jl	.LBB2_22
# BB#12:                                # %for.body.lr.ph.i.i
	leal	-1(%r14), %ecx
	movq	2768(%r13), %r15
	leaq	8(%r15), %rbp
	movq	1992(%r13), %rdi
	movq	2016(%r13), %rsi
	xorl	%r12d, %r12d
	xorl	%r8d, %r8d
	movq	%rbp, %rdx
	callq	XFreeColors@PLT
	movslq	2752(%r13), %rax
	testb	$1, %r14b
	jne	.LBB2_15
# BB#13:                                # %for.body.i.i.prol
	movq	(%rbp), %rcx
	movl	$1, %r12d
	cmpq	%rax, %rcx
	jae	.LBB2_15
# BB#14:                                # %if.then.i.i.prol
	movq	2760(%r13), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	movl	$0, 8(%rdx,%rcx,4)
	movl	$1, %r12d
.LBB2_15:                               # %for.body.lr.ph.i.i.split
	cmpl	$2, %r14d
	je	.LBB2_22
# BB#16:                                # %for.body.lr.ph.i.i.split.split
	decl	%r14d
	subl	%r12d, %r14d
	leaq	16(%r15,%r12,8), %rcx
	.align	16, 0x90
.LBB2_17:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rcx), %rdx
	cmpq	%rax, %rdx
	jae	.LBB2_19
# BB#18:                                # %if.then.i.i
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	2760(%r13), %rsi
	leaq	(%rdx,%rdx,2), %rdx
	movl	$0, 8(%rsi,%rdx,4)
.LBB2_19:                               # %for.inc.i.i
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	(%rcx), %rdx
	cmpq	%rax, %rdx
	jae	.LBB2_21
# BB#20:                                # %if.then.i.i.1
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	2760(%r13), %rsi
	leaq	(%rdx,%rdx,2), %rdx
	movl	$0, 8(%rsi,%rdx,4)
.LBB2_21:                               # %for.inc.i.i.1
                                        #   in Loop: Header=BB2_17 Depth=1
	addq	$16, %rcx
	addl	$-2, %r14d
	jne	.LBB2_17
.LBB2_22:                               # %free_ramp.exit
	movq	24(%r13), %rax
	movq	2768(%r13), %rsi
	movq	200(%rax), %rdi
	leaq	.L.str.11(%rip), %rdx
	callq	*24(%rdi)
	movq	$0, 2768(%r13)
	xorl	%ecx, %ecx
.LBB2_23:                               # %cleanup.55
	movl	%ecx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	setup_cube, .Lfunc_end2-setup_cube
	.cfi_endproc

	.globl	gdev_x_free_dynamic_colors
	.align	16, 0x90
	.type	gdev_x_free_dynamic_colors,@function
gdev_x_free_dynamic_colors:             # @gdev_x_free_dynamic_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -48
.Ltmp45:
	.cfi_offset %r12, -40
.Ltmp46:
	.cfi_offset %r13, -32
.Ltmp47:
	.cfi_offset %r14, -24
.Ltmp48:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	2784(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB3_12
# BB#1:                                 # %for.cond.preheader
	movl	2776(%r15), %eax
	testl	%eax, %eax
	jle	.LBB3_11
# BB#2:                                 # %for.body.lr.ph
	xorl	%r12d, %r12d
	leaq	.L.str.6(%rip), %r14
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_10:                               # %for.end.for.body_crit_edge
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	2784(%r15), %rcx
.LBB3_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	movq	(%rcx,%r12,8), %r13
	testq	%r13, %r13
	je	.LBB3_9
	.align	16, 0x90
.LBB3_4:                                # %for.body.8
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rbx
	movq	16(%rbx), %r13
	cmpb	$0, 15(%rbx)
	je	.LBB3_7
# BB#5:                                 # %if.then.11
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	1992(%r15), %rdi
	movq	2016(%r15), %rsi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	callq	XFreeColors@PLT
	movslq	2752(%r15), %rcx
	movq	(%rbx), %rax
	cmpq	%rcx, %rax
	jae	.LBB3_7
# BB#6:                                 # %if.then.i
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	2760(%r15), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	$0, 8(%rcx,%rax,4)
.LBB3_7:                                # %if.end
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*24(%rdi)
	testq	%r13, %r13
	jne	.LBB3_4
# BB#8:                                 # %for.cond.6.for.end_crit_edge
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	2784(%r15), %rcx
	movl	2776(%r15), %eax
.LBB3_9:                                # %for.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	$0, (%rcx,%r12,8)
	incq	%r12
	movslq	%eax, %rcx
	cmpq	%rcx, %r12
	jl	.LBB3_10
.LBB3_11:                               # %for.end.19
	movl	$0, 2796(%r15)
.LBB3_12:                               # %if.end.22
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	gdev_x_free_dynamic_colors, .Lfunc_end3-gdev_x_free_dynamic_colors
	.cfi_endproc

	.globl	gdev_x_free_colors
	.align	16, 0x90
	.type	gdev_x_free_colors,@function
gdev_x_free_colors:                     # @gdev_x_free_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 2748(%rbx)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	2328(%rbx), %rdi
	callq	XFree@PLT
	movl	$0, 2748(%rbx)
.LBB4_2:                                # %if.end
	movq	$0, 2328(%rbx)
	movq	2768(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_4
# BB#3:                                 # %if.then.11
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	leaq	.L.str.7(%rip), %rdx
	callq	*24(%rdi)
.LBB4_4:                                # %if.end.14
	cmpq	$0, 2784(%rbx)
	je	.LBB4_6
# BB#5:                                 # %if.then.17
	movq	%rbx, %rdi
	callq	gdev_x_free_dynamic_colors@PLT
	movq	24(%rbx), %rax
	movq	2784(%rbx), %rsi
	movq	200(%rax), %rdi
	leaq	.L.str.8(%rip), %rdx
	callq	*24(%rdi)
	movq	$0, 2784(%rbx)
.LBB4_6:                                # %if.end.25
	movq	2760(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_8
# BB#7:                                 # %if.then.28
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	leaq	.L.str.9(%rip), %rdx
	callq	*24(%rdi)
	movq	$0, 2760(%rbx)
	movl	$0, 2752(%rbx)
.LBB4_8:                                # %if.end.38
	popq	%rbx
	retq
.Lfunc_end4:
	.size	gdev_x_free_colors, .Lfunc_end4-gdev_x_free_colors
	.cfi_endproc

	.globl	gdev_x_map_rgb_color
	.align	16, 0x90
	.type	gdev_x_map_rgb_color,@function
gdev_x_map_rgb_color:                   # @gdev_x_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 128
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movzwl	(%rsi), %ebp
	movzwl	2(%rsi), %r8d
	movzwl	4(%rsi), %r9d
	movzwl	2322(%rbx), %r11d
	movl	%r11d, %edx
	andl	%ebp, %edx
	movzwl	2324(%rbx), %r15d
	movl	%r15d, %esi
	andl	%r8d, %esi
	movl	%esi, %ecx
	orl	%edx, %ecx
	movzwl	2326(%rbx), %r10d
	movl	%r10d, %eax
	andl	%r9d, %eax
	orw	%ax, %cx
	je	.LBB5_1
# BB#2:                                 # %if.end
	movw	2316(%rbx), %di
	andw	%bp, %di
	movw	2318(%rbx), %r13w
	andw	%r8w, %r13w
	movw	2320(%rbx), %r12w
	andw	%r9w, %r12w
	movzwl	%dx, %ecx
	cmpl	%r11d, %ecx
	jne	.LBB5_6
# BB#3:                                 # %if.end
	movzwl	%r15w, %ecx
	movzwl	%si, %edx
	cmpl	%ecx, %edx
	jne	.LBB5_6
# BB#4:                                 # %if.end
	movzwl	%r10w, %ecx
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	jne	.LBB5_6
# BB#5:                                 # %do.end.67
	movq	2296(%rbx), %r14
	jmp	.LBB5_50
.LBB5_1:                                # %do.end
	movq	2304(%rbx), %r14
	jmp	.LBB5_50
.LBB5_6:                                # %cleanup.cont
	movq	2328(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB5_20
# BB#7:                                 # %if.then.72
	cmpl	$1, 100(%rbx)
	jg	.LBB5_9
# BB#8:                                 # %lor.lhs.false
	movzbl	110(%rbx), %eax
	cmpl	$255, %eax
	je	.LBB5_9
# BB#18:                                # %if.else.226
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movq	8(%rdx), %rcx
	movq	%rdx, %rsi
	leaq	1(%rcx), %r14
	imulq	%rbp, %r14
	shrq	$16, %r14
	imull	$65535, %r14d, %eax     # imm = 0xFFFF
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movzwl	%ax, %eax
	subl	%eax, %ebp
	movl	%ebp, %eax
	negl	%eax
	cmovll	%ebp, %eax
	testl	%r11d, %eax
	jne	.LBB5_32
# BB#19:                                # %cleanup.266
	andq	%rdi, %r14
	imulq	16(%rsi), %r14
	addq	56(%rsi), %r14
	jmp	.LBB5_50
.LBB5_9:                                # %if.then.82
	movl	2336(%rbx), %eax
	testl	%eax, %eax
	je	.LBB5_11
# BB#10:                                # %if.then.86
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movb	2340(%rbx), %cl
	movb	2476(%rbx), %al
	movl	%ebp, %esi
	shrl	%cl, %esi
	movzwl	2344(%rbx,%rsi,2), %edx
	movl	%r8d, %edi
	movb	%al, %cl
	shrl	%cl, %edi
	movzwl	2480(%rbx,%rdi,2), %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movb	2612(%rbx), %cl
	movl	%r9d, %r14d
	shrl	%cl, %r14d
	movzwl	2616(%rbx,%r14,2), %eax
	jmp	.LBB5_12
.LBB5_20:                               # %if.else.274
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movq	2768(%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB5_32
# BB#21:                                # %if.then.277
	cmpl	$1, 100(%rbx)
	jg	.LBB5_23
# BB#22:                                # %lor.lhs.false.282
	movzbl	110(%rbx), %eax
	cmpl	$255, %eax
	je	.LBB5_23
# BB#30:                                # %if.else.396
	movl	120(%rbx), %eax
	leal	-1(%rax), %esi
	imull	%ebp, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$16, %ecx
	addl	%eax, %ecx
	sarl	$16, %ecx
	imull	$65535, %ecx, %eax      # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%esi
	movzwl	%ax, %eax
	subl	%eax, %ebp
	movl	%ebp, %eax
	negl	%eax
	cmovll	%ebp, %eax
	testl	%r11d, %eax
	jne	.LBB5_32
# BB#31:                                # %cleanup.433
	movl	%ecx, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %r14
	jmp	.LBB5_50
.LBB5_11:                               # %if.else
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movq	8(%rdx), %rcx
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	1(%rcx), %rsi
	imulq	%rbp, %rsi
	shrq	$16, %rsi
	leaq	1(%rax), %rdi
	imulq	%r8, %rdi
	shrq	$16, %rdi
	movq	40(%rdx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	leaq	1(%rax), %r14
	imulq	%r9, %r14
	shrq	$16, %r14
	imull	$65535, %esi, %eax      # imm = 0xFFFF
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andq	%rdx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rcx
	imull	$65535, %edi, %eax      # imm = 0xFFFF
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andq	%rdx, %rax
	xorl	%edx, %edx
	divq	24(%rsp)                # 8-byte Folded Reload
	movq	%rax, 24(%rsp)          # 8-byte Spill
	imull	$65535, %r14d, %eax     # imm = 0xFFFF
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andq	%rdx, %rax
	xorl	%edx, %edx
	divq	(%rsp)                  # 8-byte Folded Reload
	movq	%rcx, %rdx
.LBB5_12:                               # %if.end.146
	movzwl	%dx, %ecx
	subl	%ecx, %ebp
	movl	%ebp, %ecx
	negl	%ecx
	cmovll	%ebp, %ecx
	testl	%ecx, %r11d
	jne	.LBB5_32
# BB#13:                                # %land.lhs.true.156
	movq	24(%rsp), %rcx          # 8-byte Reload
	movzwl	%cx, %ecx
	subl	%ecx, %r8d
	movl	%r8d, %ecx
	negl	%ecx
	cmovll	%r8d, %ecx
	testl	%ecx, %r15d
	jne	.LBB5_32
# BB#14:                                # %land.lhs.true.168
	movzwl	%ax, %eax
	subl	%eax, %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovll	%r9d, %eax
	testl	%eax, %r10d
	jne	.LBB5_32
# BB#15:                                # %if.then.180
	cmpl	$0, 8(%rsp)             # 4-byte Folded Reload
	je	.LBB5_17
# BB#16:                                # %cond.true
	movb	2472(%rbx), %cl
	movb	2608(%rbx), %al
	shll	%cl, %esi
	movb	%al, %cl
	shll	%cl, %edi
	addl	%esi, %edi
	movb	2744(%rbx), %cl
	shll	%cl, %r14d
	addl	%edi, %r14d
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	56(%rax), %r14
	jmp	.LBB5_50
.LBB5_23:                               # %if.then.288
	movl	124(%rbx), %edx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	leal	-1(%rdx), %ecx
	movl	%edx, %eax
	imull	%ebp, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$16, %edi
	addl	%eax, %edi
	sarl	$16, %edi
	movl	%edx, %eax
	imull	%r8d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$16, %esi
	addl	%eax, %esi
	sarl	$16, %esi
	movl	%edx, %eax
	imull	%r9d, %eax
	movl	%eax, %r14d
	sarl	$31, %r14d
	shrl	$16, %r14d
	addl	%eax, %r14d
	sarl	$16, %r14d
	cmpl	$7, %ecx
	ja	.LBB5_25
# BB#24:                                # %if.then.309
	movl	%ecx, %eax
	leaq	cv_tables(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%edi, %ecx
	movzwl	(%rax,%rcx,2), %edx
	movl	%esi, %ecx
	movzwl	(%rax,%rcx,2), %ecx
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movl	%r14d, %ecx
	movzwl	(%rax,%rcx,2), %eax
	jmp	.LBB5_26
.LBB5_25:                               # %if.else.318
	imull	$65535, %edi, %eax      # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, (%rsp)            # 4-byte Spill
	imull	$65535, %esi, %eax      # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, 16(%rsp)          # 4-byte Spill
	imull	$65535, %r14d, %eax     # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ecx
	movl	(%rsp), %edx            # 4-byte Reload
.LBB5_26:                               # %if.end.328
	movzwl	%dx, %ecx
	subl	%ecx, %ebp
	movl	%ebp, %ecx
	negl	%ecx
	cmovll	%ebp, %ecx
	testl	%r11d, %ecx
	jne	.LBB5_32
# BB#27:                                # %land.lhs.true.340
	movl	16(%rsp), %ecx          # 4-byte Reload
	movzwl	%cx, %ecx
	subl	%ecx, %r8d
	movl	%r8d, %ecx
	negl	%ecx
	cmovll	%r8d, %ecx
	testl	%ecx, %r15d
	jne	.LBB5_32
# BB#28:                                # %land.lhs.true.352
	movzwl	%ax, %eax
	subl	%eax, %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovll	%r9d, %eax
	testl	%eax, %r10d
	je	.LBB5_29
.LBB5_32:                               # %if.end.441
	movq	2784(%rbx), %r8
	movq	$-1, %r14
	testq	%r8, %r8
	je	.LBB5_50
# BB#33:                                # %if.then.444
	movl	%r13d, %ecx
	movl	36(%rsp), %r9d          # 4-byte Reload
	xorl	%r9d, %ecx
	movl	%r12d, %edx
	xorl	%ecx, %edx
	movzwl	%dx, %edx
	movb	2792(%rbx), %cl
	shrl	%cl, %edx
	movslq	%edx, %r10
	movq	(%r8,%r10,8), %rcx
	xorl	%edx, %edx
	testq	%rcx, %rcx
	je	.LBB5_43
# BB#34:
	movzwl	%r9w, %esi
	movzwl	%r13w, %edi
	movzwl	%r12w, %ebp
	.align	16, 0x90
.LBB5_35:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	8(%rcx), %eax
	cmpl	%esi, %eax
	jne	.LBB5_42
# BB#36:                                # %land.lhs.true.463
                                        #   in Loop: Header=BB5_35 Depth=1
	movzwl	10(%rcx), %eax
	cmpl	%edi, %eax
	jne	.LBB5_42
# BB#37:                                # %land.lhs.true.470
                                        #   in Loop: Header=BB5_35 Depth=1
	movzwl	12(%rcx), %eax
	cmpl	%ebp, %eax
	je	.LBB5_38
.LBB5_42:                               # %for.inc
                                        #   in Loop: Header=BB5_35 Depth=1
	movq	%rcx, %rdx
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB5_35
.LBB5_43:                               # %for.end
	movl	%r9d, %ebp
	movl	2796(%rbx), %eax
	movq	$-1, %r14
	cmpl	2800(%rbx), %eax
	jg	.LBB5_50
# BB#44:                                # %if.end.517
	movq	%r10, 24(%rsp)          # 8-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	leaq	.L.str.6(%rip), %rcx
	movl	$24, %esi
	movl	$1, %edx
	callq	*88(%rdi)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB5_50
# BB#45:                                # %if.end.523
	movw	%bp, 8(%r15)
	movw	%bp, 48(%rsp)
	movw	%r13w, 10(%r15)
	movw	%r13w, 50(%rsp)
	movw	%r12w, 12(%r15)
	movw	%r12w, 52(%rsp)
	movq	2784(%rbx), %rax
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	(%rax,%rdx,8), %rcx
	movq	%rcx, 16(%r15)
	movq	%r15, (%rax,%rdx,8)
	incl	2796(%rbx)
	movw	%bp, 56(%rsp)
	movw	%r13w, 58(%rsp)
	movw	%r12w, 60(%rsp)
	movq	1992(%rbx), %rdi
	movq	2016(%rbx), %rsi
	leaq	40(%rsp), %rdx
	callq	XAllocColor@PLT
	testl	%eax, %eax
	je	.LBB5_49
# BB#46:                                # %if.end.i
	movq	40(%rsp), %rax
	movslq	2752(%rbx), %rcx
	cmpq	%rcx, %rax
	jae	.LBB5_48
# BB#47:                                # %if.then.7.i
	movq	2760(%rbx), %rbx
	leaq	(%rax,%rax,2), %rbp
	leaq	(%rbx,%rbp,4), %rdi
	leaq	56(%rsp), %rsi
	movl	$6, %edx
	callq	memcpy@PLT
	movl	$1, 8(%rbx,%rbp,4)
	movq	40(%rsp), %rax
.LBB5_48:                               # %if.then.549
	movq	%rax, (%r15)
	movb	$1, 15(%r15)
	movq	40(%rsp), %r14
	jmp	.LBB5_50
.LBB5_38:                               # %if.then.477
	testq	%rdx, %rdx
	je	.LBB5_40
# BB#39:                                # %if.then.479
	movq	16(%rcx), %rax
	movq	%rax, 16(%rdx)
	movq	(%r8,%r10,8), %rax
	movq	%rax, 16(%rcx)
	movq	%rcx, (%r8,%r10,8)
.LBB5_40:                               # %if.end.492
	movq	$-1, %r14
	cmpb	$0, 15(%rcx)
	je	.LBB5_50
# BB#41:                                # %do.end.498
	movq	(%rcx), %r14
	jmp	.LBB5_50
.LBB5_49:                               # %if.else.559
	movb	$0, 15(%r15)
.LBB5_50:                               # %cleanup.573
	movq	%r14, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_17:                               # %cond.false
	movl	%esi, %eax
	movq	16(%rsp), %rdx          # 8-byte Reload
	imulq	16(%rdx), %rax
	movl	%edi, %ecx
	imulq	32(%rdx), %rcx
	addq	%rax, %rcx
	movl	%r14d, %r14d
	imulq	48(%rdx), %r14
	addq	%rcx, %r14
	addq	56(%rdx), %r14
	jmp	.LBB5_50
.LBB5_29:                               # %cleanup.386
	movq	8(%rsp), %rax           # 8-byte Reload
	imull	%eax, %edi
	addl	%esi, %edi
	imull	%eax, %edi
	addl	%r14d, %edi
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rdi,8), %r14
	jmp	.LBB5_50
.Lfunc_end5:
	.size	gdev_x_map_rgb_color, .Lfunc_end5-gdev_x_map_rgb_color
	.cfi_endproc

	.globl	gdev_x_map_color_rgb
	.align	16, 0x90
	.type	gdev_x_map_color_rgb,@function
gdev_x_map_color_rgb:                   # @gdev_x_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rdx, %r8
	cmpq	%rsi, 2304(%rdi)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movw	$0, 4(%r8)
	movl	$0, (%r8)
	xorl	%ecx, %ecx
	jmp	.LBB6_12
.LBB6_2:                                # %if.end
	cmpq	%rsi, 2296(%rdi)
	jne	.LBB6_4
# BB#3:                                 # %if.then.4
	movw	$-1, 4(%r8)
	movl	$-1, (%r8)
	xorl	%ecx, %ecx
	jmp	.LBB6_12
.LBB6_4:                                # %if.end.8
	movq	2328(%rdi), %rcx
	movslq	2752(%rdi), %rbx
	cmpq	%rsi, %rbx
	jbe	.LBB6_8
# BB#5:                                 # %if.then.12
	movq	2760(%rdi), %rax
	leaq	(%rsi,%rsi,2), %rdx
	cmpl	$0, 8(%rax,%rdx,4)
	je	.LBB6_8
# BB#6:                                 # %if.then.16
	movw	(%rax,%rdx,4), %cx
	movw	%cx, (%r8)
	movw	2(%rax,%rdx,4), %cx
	movw	%cx, 2(%r8)
	movw	4(%rax,%rdx,4), %ax
	jmp	.LBB6_7
.LBB6_8:                                # %if.end.26
	testq	%rcx, %rcx
	je	.LBB6_13
# BB#9:                                 # %if.then.28
	movq	56(%rcx), %rax
	cmpq	%rsi, %rax
	ja	.LBB6_13
# BB#10:                                # %if.then.31
	movq	%rsi, %r13
	subq	%rax, %r13
	movq	8(%rcx), %rbp
	movq	%rbp, -8(%rsp)          # 8-byte Spill
	movq	16(%rcx), %r14
	xorl	%edx, %edx
	movq	%r13, %rax
	divq	%r14
	leaq	1(%rbp), %r9
	xorl	%edx, %edx
	divq	%r9
	movq	%rdx, %r11
	movq	32(%rcx), %r15
	xorl	%edx, %edx
	movq	%r13, %rax
	divq	%r15
	movq	24(%rcx), %rdx
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	leaq	1(%rdx), %r9
	xorl	%edx, %edx
	divq	%r9
	movq	%rdx, %r9
	movq	48(%rcx), %r12
	xorl	%edx, %edx
	movq	%r13, %rax
	divq	%r12
	movq	40(%rcx), %rbp
	leaq	1(%rbp), %rcx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r10
	movl	%r11d, %eax
	imulq	%r14, %rax
	movl	%r9d, %ecx
	imulq	%r15, %rcx
	addq	%rax, %rcx
	movl	%r10d, %eax
	imulq	%r12, %rax
	addq	%rcx, %rax
	cmpq	%rax, %r13
	jne	.LBB6_13
# BB#11:                                # %if.then.54
	imull	$65535, %r11d, %eax     # imm = 0xFFFF
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andq	%rsi, %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	divq	-8(%rsp)                # 8-byte Folded Reload
	movw	%ax, (%r8)
	imull	$65535, %r9d, %eax      # imm = 0xFFFF
	andq	%rsi, %rax
	xorl	%edx, %edx
	divq	-16(%rsp)               # 8-byte Folded Reload
	movw	%ax, 2(%r8)
	imull	$65535, %r10d, %eax     # imm = 0xFFFF
	andq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rbp
	movw	%ax, 4(%r8)
	jmp	.LBB6_12
.LBB6_13:                               # %if.end.81
	movl	$-1, %ecx
	cmpq	%rsi, %rbx
	ja	.LBB6_12
# BB#14:                                # %if.end.89
	movq	2768(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB6_27
# BB#15:                                # %if.then.92
	cmpl	$1, 100(%rdi)
	jg	.LBB6_17
# BB#16:                                # %lor.lhs.false
	movzbl	110(%rdi), %eax
	cmpl	$255, %eax
	je	.LBB6_17
# BB#22:                                # %if.else
	movslq	120(%rdi), %rbp
	testq	%rbp, %rbp
	jle	.LBB6_27
# BB#23:                                # %for.body.149.lr.ph
	xorl	%eax, %eax
.LBB6_24:                               # %for.body.149
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, (%rdx,%rax,8)
	je	.LBB6_25
# BB#26:                                # %for.inc.165
                                        #   in Loop: Header=BB6_24 Depth=1
	incq	%rax
	cmpq	%rbp, %rax
	jl	.LBB6_24
	jmp	.LBB6_27
.LBB6_17:                               # %if.then.99
	movl	124(%rdi), %ebp
	movl	%ebp, %eax
	imull	%eax, %eax
	imull	%ebp, %eax
	testl	%eax, %eax
	jle	.LBB6_27
# BB#18:                                # %for.body.lr.ph
	movslq	%eax, %rbx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB6_19:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, (%rdx,%rax,8)
	je	.LBB6_20
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB6_19 Depth=1
	incq	%rax
	cmpq	%rbx, %rax
	jl	.LBB6_19
.LBB6_27:                               # %if.end.173
	movq	2784(%rdi), %rax
	testq	%rax, %rax
	je	.LBB6_12
# BB#28:                                # %if.then.176
	movslq	2776(%rdi), %rdx
	testq	%rdx, %rdx
	jle	.LBB6_12
.LBB6_30:                               # %for.body.184
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_31 Depth 2
	movq	-8(%rax,%rdx,8), %rdi
	jmp	.LBB6_31
	.align	16, 0x90
.LBB6_35:                               # %for.inc.207
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	16(%rdi), %rdi
.LBB6_31:                               # %for.body.184
                                        #   Parent Loop BB6_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rdi, %rdi
	je	.LBB6_29
# BB#32:                                # %for.body.192
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	%rsi, (%rdi)
	jne	.LBB6_35
# BB#33:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpb	$0, 15(%rdi)
	je	.LBB6_35
	jmp	.LBB6_34
.LBB6_29:                               # %for.cond.181.loopexit
                                        #   in Loop: Header=BB6_30 Depth=1
	cmpq	$2, %rdx
	leaq	-1(%rdx), %rdx
	jge	.LBB6_30
	jmp	.LBB6_12
.LBB6_34:                               # %if.then.199
	movw	8(%rdi), %ax
	movw	%ax, (%r8)
	movw	10(%rdi), %ax
	movw	%ax, 2(%r8)
	movw	12(%rdi), %ax
.LBB6_7:                                # %cleanup.215
	movw	%ax, 4(%r8)
	xorl	%ecx, %ecx
.LBB6_12:                               # %cleanup.215
	movl	%ecx, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_20:                               # %if.then.111
	leal	-1(%rbp), %ebx
	cltd
	idivl	%ebp
	movl	%edx, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	divl	%ebp
	movl	%edx, %edi
	imull	$65535, %eax, %eax      # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ebx
	movw	%ax, (%r8)
	imull	$65535, %edi, %eax      # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ebx
	movw	%ax, 2(%r8)
	imull	$65535, %esi, %eax      # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ebx
	movw	%ax, 4(%r8)
	jmp	.LBB6_12
.LBB6_25:                               # %if.then.156
	imull	$65535, %eax, %eax      # imm = 0xFFFF
	decl	%ebp
	cltd
	idivl	%ebp
	movw	%ax, 4(%r8)
	movw	%ax, 2(%r8)
	movw	%ax, (%r8)
	xorl	%ecx, %ecx
	jmp	.LBB6_12
.Lfunc_end6:
	.size	gdev_x_map_color_rgb, .Lfunc_end6-gdev_x_map_color_rgb
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GHOSTVIEW_COLORS"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%*s %ld %ld"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Malformed GHOSTVIEW_COLOR property.\n"
	.size	.L.str.2, 37

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Unsupported X visual depth: %d\n"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gdevx color_to_rgb"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unknown palette: %s\n"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"x11_dynamic_color"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"x11 dither_colors"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"x11 cman.dynamic.colors"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"x11 color_to_rgb"
	.size	.L.str.9, 17

	.type	cv_tables,@object       # @cv_tables
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
cv_tables:
	.quad	0
	.quad	cv_tab1
	.quad	cv_tab2
	.quad	cv_tab3
	.quad	cv_tab4
	.quad	cv_tab5
	.quad	cv_tab6
	.quad	cv_tab7
	.size	cv_tables, 64

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"gdevx setup_cube"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"x11_setup_colors"
	.size	.L.str.11, 17

	.type	cv_tab1,@object         # @cv_tab1
	.section	.rodata,"a",@progbits
	.align	2
cv_tab1:
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.size	cv_tab1, 4

	.type	cv_tab2,@object         # @cv_tab2
	.align	2
cv_tab2:
	.short	0                       # 0x0
	.short	32767                   # 0x7fff
	.short	65535                   # 0xffff
	.size	cv_tab2, 6

	.type	cv_tab3,@object         # @cv_tab3
	.align	2
cv_tab3:
	.short	0                       # 0x0
	.short	21845                   # 0x5555
	.short	43690                   # 0xaaaa
	.short	65535                   # 0xffff
	.size	cv_tab3, 8

	.type	cv_tab4,@object         # @cv_tab4
	.align	2
cv_tab4:
	.short	0                       # 0x0
	.short	16383                   # 0x3fff
	.short	32767                   # 0x7fff
	.short	49151                   # 0xbfff
	.short	65535                   # 0xffff
	.size	cv_tab4, 10

	.type	cv_tab5,@object         # @cv_tab5
	.align	2
cv_tab5:
	.short	0                       # 0x0
	.short	13107                   # 0x3333
	.short	26214                   # 0x6666
	.short	39321                   # 0x9999
	.short	52428                   # 0xcccc
	.short	65535                   # 0xffff
	.size	cv_tab5, 12

	.type	cv_tab6,@object         # @cv_tab6
	.align	2
cv_tab6:
	.short	0                       # 0x0
	.short	10922                   # 0x2aaa
	.short	21845                   # 0x5555
	.short	32767                   # 0x7fff
	.short	43690                   # 0xaaaa
	.short	54612                   # 0xd554
	.short	65535                   # 0xffff
	.size	cv_tab6, 14

	.type	cv_tab7,@object         # @cv_tab7
	.align	16
cv_tab7:
	.short	0                       # 0x0
	.short	9362                    # 0x2492
	.short	18724                   # 0x4924
	.short	28086                   # 0x6db6
	.short	37448                   # 0x9248
	.short	46810                   # 0xb6da
	.short	56172                   # 0xdb6c
	.short	65535                   # 0xffff
	.size	cv_tab7, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
