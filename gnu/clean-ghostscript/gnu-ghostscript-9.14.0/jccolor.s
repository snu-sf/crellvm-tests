	.text
	.file	"jccolor.bc"
	.globl	jinit_color_converter
	.align	16, 0x90
	.type	jinit_color_converter,@function
jinit_color_converter:                  # @jinit_color_converter
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
	movl	$24, %edx
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 536(%rbx)
	movq	$null_method, (%r14)
	movl	60(%rbx), %eax
	decl	%eax
	cmpl	$6, %eax
	jbe	.LBB0_1
# BB#5:                                 # %sw.default
	cmpl	$0, 56(%rbx)
	jg	.LBB0_7
	jmp	.LBB0_6
.LBB0_1:                                # %entry
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_3:                                # %sw.bb.14
	cmpl	$3, 56(%rbx)
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_4:                                # %sw.bb.23
	cmpl	$4, 56(%rbx)
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_2:                                # %sw.bb
	cmpl	$1, 56(%rbx)
	je	.LBB0_7
.LBB0_6:                                # %if.then.34
	movq	(%rbx), %rax
	movl	$10, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_7:                                # %sw.epilog
	cmpl	$0, 340(%rbx)
	je	.LBB0_10
# BB#8:                                 # %land.lhs.true
	movl	96(%rbx), %eax
	orl	$4, %eax
	cmpl	$6, %eax
	je	.LBB0_10
# BB#9:                                 # %if.then.44
	movq	(%rbx), %rax
	movl	$28, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_10:                               # %if.end.49
	movl	96(%rbx), %eax
	leal	-1(%rax), %ecx
	cmpl	$6, %ecx
	jbe	.LBB0_11
# BB#46:                                # %sw.default.210
	cmpl	60(%rbx), %eax
	jne	.LBB0_48
# BB#47:                                # %lor.lhs.false
	movl	92(%rbx), %eax
	cmpl	56(%rbx), %eax
	je	.LBB0_49
.LBB0_48:                               # %if.then.217
	movq	(%rbx), %rax
	movl	$28, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_49:                               # %if.end.222
	movq	$null_convert, 8(%r14)
.LBB0_50:                               # %sw.epilog.225
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB0_11:                               # %if.end.49
	jmpq	*.LJTI0_1(,%rcx,8)
.LBB0_18:                               # %sw.bb.74
	cmpl	$3, 92(%rbx)
	je	.LBB0_20
# BB#19:                                # %if.then.77
	movq	(%rbx), %rax
	movl	$11, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	96(%rbx), %eax
.LBB0_20:                               # %if.end.82
	cmpl	%eax, 60(%rbx)
	jne	.LBB0_40
# BB#21:                                # %if.then.86
	movl	340(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB0_22
# BB#24:                                # %sw.bb.91
	movq	$rgb_rgb1_convert, 8(%r14)
	jmp	.LBB0_50
.LBB0_12:                               # %sw.bb.51
	cmpl	$1, 92(%rbx)
	je	.LBB0_14
# BB#13:                                # %if.then.53
	movq	(%rbx), %rax
	movl	$11, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_14:                               # %if.end.58
	movl	60(%rbx), %eax
	decl	%eax
	cmpl	$6, %eax
	ja	.LBB0_40
# BB#15:                                # %if.end.58
	jmpq	*.LJTI0_2(,%rax,8)
.LBB0_16:                               # %sw.bb.60
	movq	$grayscale_convert, 8(%r14)
	jmp	.LBB0_50
.LBB0_25:                               # %sw.bb.105
	cmpl	$3, 92(%rbx)
	je	.LBB0_27
# BB#26:                                # %if.then.108
	movq	(%rbx), %rax
	movl	$11, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_27:                               # %if.end.113
	movl	60(%rbx), %eax
	cmpl	$3, %eax
	je	.LBB0_49
# BB#28:                                # %if.end.113
	cmpl	$2, %eax
	jne	.LBB0_40
	jmp	.LBB0_29
.LBB0_37:                               # %sw.bb.165
	cmpl	$4, 92(%rbx)
	je	.LBB0_39
# BB#38:                                # %if.then.168
	movq	(%rbx), %rax
	movl	$11, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_39:                               # %if.end.173
	cmpl	$4, 60(%rbx)
	je	.LBB0_49
	jmp	.LBB0_40
.LBB0_41:                               # %sw.bb.185
	cmpl	$4, 92(%rbx)
	je	.LBB0_43
# BB#42:                                # %if.then.188
	movq	(%rbx), %rax
	movl	$11, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_43:                               # %if.end.193
	movl	60(%rbx), %eax
	cmpl	$5, %eax
	je	.LBB0_49
# BB#44:                                # %if.end.193
	cmpl	$4, %eax
	jne	.LBB0_40
# BB#45:                                # %sw.bb.195
	movq	$rgb_ycc_start, (%r14)
	movq	$cmyk_ycck_convert, 8(%r14)
	jmp	.LBB0_50
.LBB0_30:                               # %sw.bb.130
	cmpl	$3, 92(%rbx)
	je	.LBB0_32
# BB#31:                                # %if.then.133
	movq	(%rbx), %rax
	movl	$11, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_32:                               # %if.end.138
	movl	60(%rbx), %eax
	cmpl	$7, %eax
	je	.LBB0_49
# BB#33:                                # %if.end.138
	cmpl	$3, %eax
	jne	.LBB0_34
# BB#36:                                # %sw.bb.149
	movq	104(%rbx), %rax
	movl	$1, 148(%rax)
	movl	$1, 244(%rax)
	jmp	.LBB0_49
.LBB0_22:                               # %if.then.86
	testl	%eax, %eax
	jne	.LBB0_40
# BB#23:                                # %sw.bb.88
	movq	$rgb_convert, 8(%r14)
	jmp	.LBB0_50
.LBB0_34:                               # %if.end.138
	cmpl	$2, %eax
	jne	.LBB0_40
# BB#35:                                # %sw.bb.140
	movq	104(%rbx), %rax
	movl	$1, 148(%rax)
	movl	$1, 244(%rax)
.LBB0_29:                               # %sw.bb.115
	movq	$rgb_ycc_start, (%r14)
	movq	$rgb_ycc_convert, 8(%r14)
	jmp	.LBB0_50
.LBB0_40:                               # %sw.default.68
	movq	(%rbx), %rax
	movl	$28, 40(%rax)
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*(%rax)                 # TAILCALL
.LBB0_17:                               # %sw.bb.62
	movq	$rgb_ycc_start, (%r14)
	movq	$rgb_gray_convert, 8(%r14)
	jmp	.LBB0_50
.Lfunc_end0:
	.size	jinit_color_converter, .Lfunc_end0-jinit_color_converter
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_3
	.quad	.LBB0_3
.LJTI0_1:
	.quad	.LBB0_12
	.quad	.LBB0_18
	.quad	.LBB0_25
	.quad	.LBB0_37
	.quad	.LBB0_41
	.quad	.LBB0_18
	.quad	.LBB0_30
.LJTI0_2:
	.quad	.LBB0_16
	.quad	.LBB0_17
	.quad	.LBB0_16
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_16

	.text
	.align	16, 0x90
	.type	null_method,@function
null_method:                            # @null_method
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end1:
	.size	null_method, .Lfunc_end1-null_method
	.cfi_endproc

	.align	16, 0x90
	.type	grayscale_convert,@function
grayscale_convert:                      # @grayscale_convert
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
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -48
.Ltmp11:
	.cfi_offset %r12, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	testl	%r8d, %r8d
	jle	.LBB2_9
# BB#1:                                 # %while.body.lr.ph
	movl	48(%rdi), %r11d
	movslq	56(%rdi), %r12
	leal	-1(%r11), %r9d
	movl	%r11d, %r10d
	andl	$3, %r10d
	movl	%r11d, %r14d
	andl	$3, %r14d
	.align	16, 0x90
.LBB2_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
                                        #     Child Loop BB2_8 Depth 2
	testl	%r11d, %r11d
	movl	%ecx, %eax
	je	.LBB2_2
# BB#4:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	(%rdx), %rbx
	movq	(%rbx,%rax,8), %r15
	testl	%r10d, %r10d
	movq	(%rsi), %rbx
	movl	$0, %edi
	je	.LBB2_6
	.align	16, 0x90
.LBB2_5:                                # %for.body.prol
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rbx), %al
	movb	%al, (%r15,%rdi)
	addq	%r12, %rbx
	incq	%rdi
	cmpl	%edi, %r14d
	jne	.LBB2_5
.LBB2_6:                                # %for.body.lr.ph.split
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$3, %r9d
	jb	.LBB2_2
# BB#7:                                 # %for.body.lr.ph.split.split
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%r11d, %ebp
	subl	%edi, %ebp
	leaq	3(%r15,%rdi), %rdi
	.align	16, 0x90
.LBB2_8:                                # %for.body
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rbx), %al
	movb	%al, -3(%rdi)
	movb	(%rbx,%r12), %al
	addq	%r12, %rbx
	movb	%al, -2(%rdi)
	movb	(%r12,%rbx), %al
	addq	%r12, %rbx
	movb	%al, -1(%rdi)
	movb	(%r12,%rbx), %al
	addq	%r12, %rbx
	movb	%al, (%rdi)
	addq	$4, %rdi
	addq	%r12, %rbx
	addl	$-4, %ebp
	jne	.LBB2_8
.LBB2_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB2_3 Depth=1
	addq	$8, %rsi
	incl	%ecx
	cmpl	$2, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jge	.LBB2_3
.LBB2_9:                                # %while.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	grayscale_convert, .Lfunc_end2-grayscale_convert
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_ycc_start,@function
rgb_ycc_start:                          # @rgb_ycc_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	536(%rdi), %rbx
	movq	8(%rdi), %rax
	movl	$1, %esi
	movl	$16384, %edx            # imm = 0x4000
	callq	*(%rax)
	movq	%rax, 16(%rbx)
	addq	$14336, %rax            # imm = 0x3800
	movl	$8421375, %r8d          # imm = 0x807FFF
	movl	$32768, %r9d            # imm = 0x8000
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, -14336(%rax)
	movq	%rsi, -12288(%rax)
	movq	%r9, -10240(%rax)
	movq	%rdx, -8192(%rax)
	movq	%rcx, -6144(%rax)
	movq	%r8, -4096(%rax)
	movq	%r11, -2048(%rax)
	movq	%r10, (%rax)
	addq	$32768, %r8             # imm = 0x8000
	addq	$8, %rax
	addq	$19595, %rdi            # imm = 0x4C8B
	addq	$38470, %rsi            # imm = 0x9646
	addq	$7471, %r9              # imm = 0x1D2F
	addq	$-11058, %rdx           # imm = 0xFFFFFFFFFFFFD4CE
	addq	$-21710, %rcx           # imm = 0xFFFFFFFFFFFFAB32
	addq	$-27439, %r11           # imm = 0xFFFFFFFFFFFF94D1
	addq	$-5329, %r10            # imm = 0xFFFFFFFFFFFFEB2F
	cmpq	$5016320, %rdi          # imm = 0x4C8B00
	jne	.LBB3_1
# BB#2:                                 # %for.end
	popq	%rbx
	retq
.Lfunc_end3:
	.size	rgb_ycc_start, .Lfunc_end3-rgb_ycc_start
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_gray_convert,@function
rgb_gray_convert:                       # @rgb_gray_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 40
.Ltmp21:
	.cfi_offset %rbx, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	testl	%r8d, %r8d
	jle	.LBB4_6
# BB#1:
	movq	536(%rdi), %rax
	movq	16(%rax), %r10
	movl	48(%rdi), %r9d
	.align	16, 0x90
.LBB4_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	testl	%r9d, %r9d
	movl	%ecx, %eax
	je	.LBB4_2
# BB#4:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	(%rdx), %rdi
	movq	(%rdi,%rax,8), %rdi
	movq	(%rsi), %rax
	movl	%r9d, %r11d
	.align	16, 0x90
.LBB4_5:                                # %for.body
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%rax), %r15d
	movzbl	2(%rax), %r14d
	movzbl	(%rax), %ebx
	movl	2048(%r10,%r15,8), %ebp
	addl	(%r10,%rbx,8), %ebp
	addl	4096(%r10,%r14,8), %ebp
	shrl	$16, %ebp
	movb	%bpl, (%rdi)
	incq	%rdi
	addq	$3, %rax
	decl	%r11d
	jne	.LBB4_5
.LBB4_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB4_3 Depth=1
	addq	$8, %rsi
	incl	%ecx
	cmpl	$2, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jge	.LBB4_3
.LBB4_6:                                # %while.end
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rgb_gray_convert, .Lfunc_end4-rgb_gray_convert
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_convert,@function
rgb_convert:                            # @rgb_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 40
.Ltmp29:
	.cfi_offset %rbx, -40
.Ltmp30:
	.cfi_offset %r12, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %r15, -16
	testl	%r8d, %r8d
	jle	.LBB5_10
# BB#1:                                 # %while.body.lr.ph
	movl	48(%rdi), %r10d
	movl	%r10d, %r9d
	andl	$1, %r9d
	.align	16, 0x90
.LBB5_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
	testl	%r10d, %r10d
	movl	%ecx, %eax
	je	.LBB5_2
# BB#4:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	(%rdx), %rdi
	movq	8(%rdx), %rbx
	movq	(%rdi,%rax,8), %r14
	movq	(%rbx,%rax,8), %rbx
	movq	16(%rdx), %rdi
	movq	(%rdi,%rax,8), %r15
	testl	%r9d, %r9d
	movq	(%rsi), %rdi
	jne	.LBB5_6
# BB#5:                                 #   in Loop: Header=BB5_3 Depth=1
	xorl	%eax, %eax
	jmp	.LBB5_7
	.align	16, 0x90
.LBB5_6:                                # %for.body.prol
                                        #   in Loop: Header=BB5_3 Depth=1
	movb	(%rdi), %al
	movb	%al, (%r14)
	movb	1(%rdi), %al
	movb	%al, (%rbx)
	movb	2(%rdi), %al
	movb	%al, (%r15)
	addq	$3, %rdi
	movl	$1, %eax
.LBB5_7:                                # %for.body.lr.ph.split
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$1, %r10d
	je	.LBB5_2
# BB#8:                                 # %for.body.lr.ph.split.split
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	%r10d, %r11d
	subl	%eax, %r11d
	leaq	1(%r14,%rax), %r14
	leaq	1(%rbx,%rax), %r12
	leaq	1(%r15,%rax), %rax
	.align	16, 0x90
.LBB5_9:                                # %for.body
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdi), %bl
	movb	%bl, -1(%r14)
	movb	1(%rdi), %bl
	movb	%bl, -1(%r12)
	movb	2(%rdi), %bl
	movb	%bl, -1(%rax)
	movb	3(%rdi), %bl
	movb	%bl, (%r14)
	movb	4(%rdi), %bl
	movb	%bl, (%r12)
	movb	5(%rdi), %bl
	movb	%bl, (%rax)
	addq	$2, %r14
	addq	$2, %r12
	addq	$2, %rax
	addq	$6, %rdi
	addl	$-2, %r11d
	jne	.LBB5_9
.LBB5_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB5_3 Depth=1
	addq	$8, %rsi
	incl	%ecx
	cmpl	$2, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jge	.LBB5_3
.LBB5_10:                               # %while.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	rgb_convert, .Lfunc_end5-rgb_convert
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_rgb1_convert,@function
rgb_rgb1_convert:                       # @rgb_rgb1_convert
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
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 40
.Ltmp37:
	.cfi_offset %rbx, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	testl	%r8d, %r8d
	jle	.LBB6_6
# BB#1:
	movl	48(%rdi), %r9d
	.align	16, 0x90
.LBB6_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	testl	%r9d, %r9d
	movl	%ecx, %eax
	je	.LBB6_2
# BB#4:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	(%rdx), %rdi
	movq	8(%rdx), %rbx
	movq	(%rdi,%rax,8), %r10
	movq	(%rbx,%rax,8), %r11
	movq	16(%rdx), %rdi
	movq	(%rdi,%rax,8), %rdi
	movq	(%rsi), %rbp
	movl	%r9d, %r15d
	.align	16, 0x90
.LBB6_5:                                # %for.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rbp), %bl
	movb	1(%rbp), %r14b
	movb	2(%rbp), %al
	subb	%r14b, %bl
	xorb	$-128, %bl
	movb	%bl, (%r10)
	movb	%r14b, (%r11)
	subb	%r14b, %al
	xorb	$-128, %al
	movb	%al, (%rdi)
	incq	%r10
	incq	%r11
	incq	%rdi
	addq	$3, %rbp
	decl	%r15d
	jne	.LBB6_5
.LBB6_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB6_3 Depth=1
	addq	$8, %rsi
	incl	%ecx
	cmpl	$2, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jge	.LBB6_3
.LBB6_6:                                # %while.end
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	rgb_rgb1_convert, .Lfunc_end6-rgb_rgb1_convert
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_ycc_convert,@function
rgb_ycc_convert:                        # @rgb_ycc_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	testl	%r8d, %r8d
	jle	.LBB7_6
# BB#1:
	movq	536(%rdi), %rax
	movq	16(%rax), %r11
	movl	48(%rdi), %eax
	movl	%eax, -4(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB7_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	movq	%r8, %rdx
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	movl	%ecx, %eax
	je	.LBB7_2
# BB#4:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-16(%rsp), %rbp         # 8-byte Reload
	movq	(%rbp), %rdi
	movq	8(%rbp), %rbx
	movq	(%rdi,%rax,8), %r10
	movq	(%rbx,%rax,8), %r14
	movq	16(%rbp), %rbx
	movq	(%rbx,%rax,8), %rax
	movq	(%rsi), %rbx
	movl	-4(%rsp), %r8d          # 4-byte Reload
	.align	16, 0x90
.LBB7_5:                                # %for.body
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %r15d
	movzbl	1(%rbx), %r13d
	movzbl	2(%rbx), %r12d
	leal	256(%r13), %ebp
	movl	(%r11,%rbp,8), %ebp
	addl	(%r11,%r15,8), %ebp
	leal	512(%r12), %r9d
	addl	(%r11,%r9,8), %ebp
	shrl	$16, %ebp
	movb	%bpl, (%r10)
	leal	768(%r15), %r9d
	leal	1024(%r13), %ebp
	movl	(%r11,%rbp,8), %ebp
	addl	(%r11,%r9,8), %ebp
	leal	1280(%r12), %edi
	addl	(%r11,%rdi,8), %ebp
	shrl	$16, %ebp
	movb	%bpl, (%r14)
	leal	1280(%r15), %edi
	movl	12288(%r11,%r13,8), %ebp
	addl	(%r11,%rdi,8), %ebp
	addl	14336(%r11,%r12,8), %ebp
	shrl	$16, %ebp
	movb	%bpl, (%rax)
	incq	%r10
	incq	%r14
	incq	%rax
	addq	$3, %rbx
	decl	%r8d
	jne	.LBB7_5
.LBB7_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB7_3 Depth=1
	addq	$8, %rsi
	incl	%ecx
	cmpl	$2, %edx
	leal	-1(%rdx), %eax
	movl	%eax, %r8d
	jge	.LBB7_3
.LBB7_6:                                # %while.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	rgb_ycc_convert, .Lfunc_end7-rgb_ycc_convert
	.cfi_endproc

	.align	16, 0x90
	.type	null_convert,@function
null_convert:                           # @null_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	testl	%r8d, %r8d
	jle	.LBB8_13
# BB#1:                                 # %for.cond.preheader.lr.ph
	movslq	92(%rdi), %r13
	movl	48(%rdi), %r11d
	leal	-1(%r11), %r9d
	movl	%r11d, %r10d
	andl	$3, %r10d
	movl	%r11d, %r12d
	andl	$3, %r12d
	.align	16, 0x90
.LBB8_2:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
                                        #       Child Loop BB8_6 Depth 3
                                        #       Child Loop BB8_10 Depth 3
	testl	%r13d, %r13d
	jle	.LBB8_12
# BB#3:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	%ecx, %r14d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB8_4:                                # %for.body
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_6 Depth 3
                                        #       Child Loop BB8_10 Depth 3
	testl	%r11d, %r11d
	je	.LBB8_11
# BB#5:                                 # %for.body.7.lr.ph
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	(%rsi), %rbx
	addq	%r15, %rbx
	xorl	%eax, %eax
	testl	%r10d, %r10d
	movq	(%rdx,%r15,8), %rdi
	movq	(%rdi,%r14,8), %rdi
	je	.LBB8_8
	.align	16, 0x90
.LBB8_6:                                # %for.body.7.prol
                                        #   Parent Loop BB8_2 Depth=1
                                        #     Parent Loop BB8_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rbp
	movb	(%rbx), %al
	movb	%al, (%rdi,%rbp)
	addq	%r13, %rbx
	leaq	1(%rbp), %rax
	cmpl	%eax, %r12d
	jne	.LBB8_6
# BB#7:                                 #   in Loop: Header=BB8_4 Depth=2
	leaq	1(%rdi,%rbp), %rdi
.LBB8_8:                                # %for.body.7.lr.ph.split
                                        #   in Loop: Header=BB8_4 Depth=2
	cmpl	$3, %r9d
	jb	.LBB8_11
# BB#9:                                 # %for.body.7.lr.ph.split.split
                                        #   in Loop: Header=BB8_4 Depth=2
	movl	%r11d, %ebp
	subl	%eax, %ebp
	.align	16, 0x90
.LBB8_10:                               # %for.body.7
                                        #   Parent Loop BB8_2 Depth=1
                                        #     Parent Loop BB8_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rbx), %al
	movb	%al, (%rdi)
	movb	(%rbx,%r13), %al
	addq	%r13, %rbx
	movb	%al, 1(%rdi)
	movb	(%r13,%rbx), %al
	addq	%r13, %rbx
	movb	%al, 2(%rdi)
	movb	(%r13,%rbx), %al
	addq	%r13, %rbx
	movb	%al, 3(%rdi)
	addq	%r13, %rbx
	addq	$4, %rdi
	addl	$-4, %ebp
	jne	.LBB8_10
.LBB8_11:                               # %for.inc.10
                                        #   in Loop: Header=BB8_4 Depth=2
	incq	%r15
	cmpl	%r13d, %r15d
	jne	.LBB8_4
.LBB8_12:                               # %for.end.12
                                        #   in Loop: Header=BB8_2 Depth=1
	addq	$8, %rsi
	incl	%ecx
	cmpl	$1, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jg	.LBB8_2
.LBB8_13:                               # %while.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	null_convert, .Lfunc_end8-null_convert
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_ycck_convert,@function
cmyk_ycck_convert:                      # @cmyk_ycck_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	testl	%r8d, %r8d
	jle	.LBB9_6
# BB#1:
	movq	536(%rdi), %rax
	movq	16(%rax), %r12
	movl	48(%rdi), %eax
	movl	%eax, -12(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB9_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	movq	%r8, -8(%rsp)           # 8-byte Spill
	cmpl	$0, -12(%rsp)           # 4-byte Folded Reload
	movl	%ecx, %eax
	je	.LBB9_2
# BB#4:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-24(%rsp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdi
	movq	8(%rsi), %rbp
	movq	(%rdi,%rax,8), %r10
	movq	(%rbp,%rax,8), %r11
	movq	16(%rsi), %rdi
	movq	(%rdi,%rax,8), %r14
	movq	24(%rsi), %rdi
	movq	(%rdi,%rax,8), %r13
	movq	(%rdx), %r8
	movl	-12(%rsp), %esi         # 4-byte Reload
	.align	16, 0x90
.LBB9_5:                                # %for.body
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r8), %ebp
	movl	%ebp, %r9d
	xorl	$255, %r9d
	movzbl	1(%r8), %ebx
	xorl	$255, %ebx
	movzbl	2(%r8), %eax
	xorl	$255, %eax
	movb	3(%r8), %r15b
	movb	%r15b, (%r13)
	xorq	$255, %rbp
	leal	256(%rbx), %edi
	movl	(%r12,%rdi,8), %edi
	addl	(%r12,%rbp,8), %edi
	leal	512(%rax), %ebp
	addl	(%r12,%rbp,8), %edi
	shrl	$16, %edi
	movb	%dil, (%r10)
	leal	768(%r9), %edi
	leal	1024(%rbx), %ebp
	movl	(%r12,%rbp,8), %ebp
	addl	(%r12,%rdi,8), %ebp
	leal	1280(%rax), %edi
	addl	(%r12,%rdi,8), %ebp
	shrl	$16, %ebp
	movb	%bpl, (%r11)
	orl	$1280, %r9d             # imm = 0x500
	orl	$1536, %ebx             # imm = 0x600
	movl	(%r12,%rbx,8), %edi
	addl	(%r12,%r9,8), %edi
	orl	$1792, %eax             # imm = 0x700
	addl	(%r12,%rax,8), %edi
	shrl	$16, %edi
	movb	%dil, (%r14)
	incq	%r13
	incq	%r10
	incq	%r11
	incq	%r14
	addq	$4, %r8
	decl	%esi
	jne	.LBB9_5
.LBB9_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB9_3 Depth=1
	addq	$8, %rdx
	incl	%ecx
	movq	-8(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	leal	-1(%rax), %eax
	movl	%eax, %r8d
	jge	.LBB9_3
.LBB9_6:                                # %while.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	cmyk_ycck_convert, .Lfunc_end9-cmyk_ycck_convert
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
