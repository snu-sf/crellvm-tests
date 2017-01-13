	.text
	.file	"jdcolor.bc"
	.globl	jinit_color_deconverter
	.align	16, 0x90
	.type	jinit_color_deconverter,@function
jinit_color_deconverter:                # @jinit_color_deconverter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$56, %edx
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 864(%r15)
	movq	$start_pass_dcolor, (%r14)
	movl	60(%r15), %eax
	cmpl	$7, %eax
	ja	.LBB0_7
# BB#1:                                 # %entry
	movl	$204, %ecx
	btl	%eax, %ecx
	jae	.LBB0_2
# BB#5:                                 # %sw.bb.5
	cmpl	$3, 56(%r15)
	jne	.LBB0_8
	jmp	.LBB0_9
.LBB0_2:                                # %entry
	movl	$48, %ecx
	btl	%eax, %ecx
	jae	.LBB0_3
# BB#6:                                 # %sw.bb.14
	cmpl	$4, 56(%r15)
	jne	.LBB0_8
	jmp	.LBB0_9
.LBB0_3:                                # %entry
	cmpl	$1, %eax
	jne	.LBB0_7
# BB#4:                                 # %sw.bb
	cmpl	$1, 56(%r15)
	jne	.LBB0_8
	jmp	.LBB0_9
.LBB0_7:                                # %sw.default
	cmpl	$0, 56(%r15)
	jg	.LBB0_9
.LBB0_8:                                # %if.then.25
	movq	(%r15), %rax
	movl	$11, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB0_9:                                # %sw.epilog
	cmpl	$0, 396(%r15)
	je	.LBB0_12
# BB#10:                                # %land.lhs.true
	movl	60(%r15), %eax
	orl	$4, %eax
	cmpl	$6, %eax
	je	.LBB0_12
# BB#11:                                # %if.then.36
	movq	(%r15), %rax
	movl	$28, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB0_12:                               # %if.end.41
	movl	64(%r15), %eax
	leal	-1(%rax), %ecx
	cmpl	$5, %ecx
	ja	.LBB0_51
# BB#13:                                # %if.end.41
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_14:                               # %sw.bb.42
	movl	$1, 144(%r15)
	movl	60(%r15), %eax
	decl	%eax
	cmpl	$6, %eax
	ja	.LBB0_53
# BB#15:                                # %sw.bb.42
	jmpq	*.LJTI0_2(,%rax,8)
.LBB0_16:                               # %sw.bb.44
	movq	$grayscale_convert, 8(%r14)
	movslq	56(%r15), %rax
	cmpq	$2, %rax
	jl	.LBB0_54
# BB#17:                                # %for.body.lr.ph
	movq	304(%r15), %r8
	leal	7(%rax), %edx
	leaq	-2(%rax), %rcx
	movl	$1, %esi
	testb	$7, %dl
	je	.LBB0_21
# BB#18:                                # %for.body.prol.preheader
	leaq	148(%r8), %rdi
	movb	%al, %dl
	addb	$7, %dl
	movzbl	%dl, %ebx
	andl	$7, %ebx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_19:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movl	$0, (%rdi)
	leaq	1(%rsi), %rdx
	addq	$96, %rdi
	cmpq	%rdx, %rbx
	jne	.LBB0_19
# BB#20:
	addq	$2, %rsi
.LBB0_21:                               # %for.body.lr.ph.split
	cmpq	$7, %rcx
	jb	.LBB0_54
# BB#22:                                # %for.body.lr.ph.split.split
	leaq	(%rsi,%rsi,2), %rcx
	shlq	$5, %rcx
	leaq	724(%rcx,%r8), %rcx
	.align	16, 0x90
.LBB0_23:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -672(%rcx)
	movl	$0, -576(%rcx)
	movl	$0, -480(%rcx)
	movl	$0, -384(%rcx)
	movl	$0, -288(%rcx)
	movl	$0, -192(%rcx)
	movl	$0, -96(%rcx)
	movl	$0, (%rcx)
	addq	$8, %rsi
	addq	$768, %rcx              # imm = 0x300
	cmpq	%rax, %rsi
	jl	.LBB0_23
	jmp	.LBB0_54
.LBB0_51:                               # %sw.default.138
	cmpl	60(%r15), %eax
	jne	.LBB0_53
# BB#52:                                # %if.then.142
	movl	56(%r15), %eax
	movl	%eax, 144(%r15)
	movq	$null_convert, 8(%r14)
	jmp	.LBB0_54
.LBB0_31:                               # %sw.bb.68
	movl	$3, 144(%r15)
	movl	60(%r15), %eax
	decl	%eax
	cmpl	$6, %eax
	ja	.LBB0_53
# BB#32:                                # %sw.bb.68
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_33:                               # %sw.bb.71
	movq	$gray_rgb_convert, 8(%r14)
	jmp	.LBB0_54
.LBB0_47:                               # %sw.bb.123
	movl	$4, 144(%r15)
	movl	60(%r15), %eax
	cmpl	$4, %eax
	jne	.LBB0_48
# BB#50:                                # %sw.bb.129
	movq	$null_convert, 8(%r14)
	jmp	.LBB0_54
.LBB0_42:                               # %sw.bb.100
	movl	$3, 144(%r15)
	cmpl	$6, 60(%r15)
	jne	.LBB0_53
# BB#43:                                # %if.then.104
	movl	396(%r15), %eax
	cmpl	$1, %eax
	jne	.LBB0_44
# BB#46:                                # %sw.bb.109
	movq	$rgb1_rgb_convert, 8(%r14)
	jmp	.LBB0_54
.LBB0_48:                               # %sw.bb.123
	cmpl	$5, %eax
	jne	.LBB0_53
# BB#49:                                # %sw.bb.126
	movq	$ycck_cmyk_convert, 8(%r14)
	jmp	.LBB0_35
.LBB0_44:                               # %if.then.104
	testl	%eax, %eax
	jne	.LBB0_53
# BB#45:                                # %sw.bb.106
	movq	$rgb_convert, 8(%r14)
	jmp	.LBB0_54
.LBB0_24:                               # %sw.bb.48
	movl	396(%r15), %eax
	cmpl	$1, %eax
	jne	.LBB0_25
# BB#27:                                # %sw.bb.53
	movq	$rgb1_gray_convert, 8(%r14)
	jmp	.LBB0_29
.LBB0_38:                               # %sw.bb.80
	movl	396(%r15), %eax
	cmpl	$1, %eax
	jne	.LBB0_39
# BB#41:                                # %sw.bb.85
	movq	$rgb1_rgb_convert, 8(%r14)
	jmp	.LBB0_54
.LBB0_34:                               # %sw.bb.74
	movq	$ycc_rgb_convert, 8(%r14)
.LBB0_35:                               # %sw.epilog.153
	movq	%r15, %rdi
	callq	build_ycc_rgb_table
	jmp	.LBB0_54
.LBB0_36:                               # %sw.bb.77
	movq	$ycc_rgb_convert, 8(%r14)
	movq	864(%r15), %r14
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%r15, %rdi
	callq	*(%rax)
	movq	%rax, 16(%r14)
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%r15, %rdi
	callq	*(%rax)
	movq	%rax, 24(%r14)
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	callq	*(%rax)
	movq	%rax, 32(%r14)
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	callq	*(%rax)
	movq	%rax, 40(%r14)
	movq	16(%r14), %r8
	movq	24(%r14), %r9
	movq	32(%r14), %r10
	movq	$-29696512, %r11        # imm = 0xFFFFFFFFFE3ADE00
	movq	$-23488896, %rdi        # imm = 0xFFFFFFFFFE999680
	xorl	%edx, %edx
	movl	$5806464, %esi          # imm = 0x589980
	movl	$11981184, %ebx         # imm = 0xB6D180
	.align	16, 0x90
.LBB0_37:                               # %for.body.i.98
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rcx
	shrq	$16, %rcx
	movl	%ecx, (%r8,%rdx)
	movq	%r11, %rcx
	shrq	$16, %rcx
	movl	%ecx, (%r9,%rdx)
	movq	%rbx, (%r10,%rdx,2)
	movq	%rsi, (%rax,%rdx,2)
	addq	$4, %rdx
	addq	$-45107, %rsi           # imm = 0xFFFFFFFFFFFF4FCD
	addq	$-93603, %rbx           # imm = 0xFFFFFFFFFFFE925D
	addq	$232260, %r11           # imm = 0x38B44
	addq	$183763, %rdi           # imm = 0x2CDD3
	cmpq	$1024, %rdx             # imm = 0x400
	jne	.LBB0_37
	jmp	.LBB0_54
.LBB0_25:                               # %sw.bb.48
	testl	%eax, %eax
	jne	.LBB0_28
# BB#26:                                # %sw.bb.50
	movq	$rgb_gray_convert, 8(%r14)
	jmp	.LBB0_29
.LBB0_39:                               # %sw.bb.80
	testl	%eax, %eax
	jne	.LBB0_53
# BB#40:                                # %sw.bb.82
	movq	$rgb_convert, 8(%r14)
	jmp	.LBB0_54
.LBB0_53:                               # %if.else.147
	movq	(%r15), %rax
	movl	$28, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB0_54:                               # %sw.epilog.153
	movl	$1, %eax
	cmpl	$0, 108(%r15)
	jne	.LBB0_56
# BB#55:                                # %if.else.156
	movl	144(%r15), %eax
.LBB0_56:                               # %if.end.159
	movl	%eax, 148(%r15)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB0_28:                               # %sw.default.56
	movq	(%r15), %rax
	movl	$28, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB0_29:                               # %sw.epilog.61
	movq	864(%r15), %rbx
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$6144, %edx             # imm = 0x1800
	movq	%r15, %rdi
	callq	*(%rax)
	movq	%rax, 48(%rbx)
	addq	$4104, %rax             # imm = 0x1008
	movl	$19595, %ecx            # imm = 0x4C8B
	movl	$38470, %edx            # imm = 0x9646
	movl	$40239, %esi            # imm = 0x9D2F
	.align	16, 0x90
.LBB0_30:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	-19595(%rcx), %rdi
	movq	%rdi, -4104(%rax)
	leaq	-38470(%rdx), %rdi
	movq	%rdi, -2056(%rax)
	leaq	-7471(%rsi), %rdi
	movq	%rdi, -8(%rax)
	movq	%rcx, -4096(%rax)
	movq	%rdx, -2048(%rax)
	movq	%rsi, (%rax)
	addq	$39190, %rcx            # imm = 0x9916
	addq	$16, %rax
	addq	$76940, %rdx            # imm = 0x12C8C
	addq	$14942, %rsi            # imm = 0x3A5E
	cmpq	$9886790, %rdx          # imm = 0x96DC46
	jne	.LBB0_30
	jmp	.LBB0_54
.Lfunc_end0:
	.size	jinit_color_deconverter, .Lfunc_end0-jinit_color_deconverter
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_14
	.quad	.LBB0_31
	.quad	.LBB0_51
	.quad	.LBB0_47
	.quad	.LBB0_51
	.quad	.LBB0_42
.LJTI0_1:
	.quad	.LBB0_33
	.quad	.LBB0_38
	.quad	.LBB0_34
	.quad	.LBB0_53
	.quad	.LBB0_53
	.quad	.LBB0_53
	.quad	.LBB0_36
.LJTI0_2:
	.quad	.LBB0_16
	.quad	.LBB0_24
	.quad	.LBB0_16
	.quad	.LBB0_53
	.quad	.LBB0_53
	.quad	.LBB0_53
	.quad	.LBB0_16

	.text
	.align	16, 0x90
	.type	start_pass_dcolor,@function
start_pass_dcolor:                      # @start_pass_dcolor
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end1:
	.size	start_pass_dcolor, .Lfunc_end1-start_pass_dcolor
	.cfi_endproc

	.align	16, 0x90
	.type	grayscale_convert,@function
grayscale_convert:                      # @grayscale_convert
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rcx, %rax
	movq	(%rsi), %rsi
	movl	136(%rdi), %r9d
	xorl	%ecx, %ecx
	movq	%rsi, %rdi
	movl	%edx, %esi
	movq	%rax, %rdx
	jmp	jcopy_sample_rows       # TAILCALL
.Lfunc_end2:
	.size	grayscale_convert, .Lfunc_end2-grayscale_convert
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_gray_convert,@function
rgb_gray_convert:                       # @rgb_gray_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
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
	testl	%r8d, %r8d
	jle	.LBB3_6
# BB#1:
	movq	864(%rdi), %rax
	movq	48(%rax), %r10
	movl	136(%rdi), %r9d
	.align	16, 0x90
.LBB3_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	testl	%r9d, %r9d
	movl	%edx, %edi
	je	.LBB3_2
# BB#4:                                 #   in Loop: Header=BB3_3 Depth=1
	movq	(%rsi), %rax
	movq	8(%rsi), %rbx
	movq	(%rax,%rdi,8), %r11
	movq	(%rbx,%rdi,8), %rax
	movq	16(%rsi), %rbx
	movq	(%rbx,%rdi,8), %rdi
	movq	(%rcx), %rbx
	movl	%r9d, %r13d
	.align	16, 0x90
.LBB3_5:                                # %for.body
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %r14d
	movzbl	(%rdi), %r15d
	movzbl	(%r11), %r12d
	movl	2048(%r10,%r14,8), %ebp
	addl	(%r10,%r12,8), %ebp
	addl	4096(%r10,%r15,8), %ebp
	shrl	$16, %ebp
	movb	%bpl, (%rbx)
	incq	%r11
	incq	%rax
	incq	%rdi
	incq	%rbx
	decl	%r13d
	jne	.LBB3_5
.LBB3_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB3_3 Depth=1
	incl	%edx
	addq	$8, %rcx
	cmpl	$2, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jge	.LBB3_3
.LBB3_6:                                # %while.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rgb_gray_convert, .Lfunc_end3-rgb_gray_convert
	.cfi_endproc

	.align	16, 0x90
	.type	rgb1_gray_convert,@function
rgb1_gray_convert:                      # @rgb1_gray_convert
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
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	testl	%r8d, %r8d
	jle	.LBB4_6
# BB#1:
	movq	864(%rdi), %rax
	movq	48(%rax), %r10
	movl	136(%rdi), %r9d
	.align	16, 0x90
.LBB4_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	testl	%r9d, %r9d
	movl	%edx, %edi
	je	.LBB4_2
# BB#4:                                 #   in Loop: Header=BB4_3 Depth=1
	movq	(%rsi), %rax
	movq	8(%rsi), %rbx
	movq	(%rax,%rdi,8), %r11
	movq	(%rbx,%rdi,8), %r13
	movq	16(%rsi), %rbx
	movq	(%rbx,%rdi,8), %rdi
	movq	(%rcx), %rbx
	movl	%r9d, %r15d
	.align	16, 0x90
.LBB4_5:                                # %for.body
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r11), %r14d
	movzbl	(%r13), %ebp
	movzbl	(%rdi), %r12d
	leal	128(%r14,%rbp), %eax
	movzbl	%al, %r14d
	leal	128(%rbp,%r12), %eax
	movzbl	%al, %eax
	movl	2048(%r10,%rbp,8), %ebp
	addl	(%r10,%r14,8), %ebp
	orl	$512, %eax              # imm = 0x200
	addl	(%r10,%rax,8), %ebp
	shrl	$16, %ebp
	movb	%bpl, (%rbx)
	incq	%r11
	incq	%r13
	incq	%rdi
	incq	%rbx
	decl	%r15d
	jne	.LBB4_5
.LBB4_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB4_3 Depth=1
	incl	%edx
	addq	$8, %rcx
	cmpl	$2, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jge	.LBB4_3
.LBB4_6:                                # %while.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rgb1_gray_convert, .Lfunc_end4-rgb1_gray_convert
	.cfi_endproc

	.align	16, 0x90
	.type	gray_rgb_convert,@function
gray_rgb_convert:                       # @gray_rgb_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 40
.Ltmp34:
	.cfi_offset %rbx, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	testl	%r8d, %r8d
	jle	.LBB5_9
# BB#1:                                 # %while.body.lr.ph
	movl	136(%rdi), %r11d
	leal	-1(%r11), %r9d
	movl	%r11d, %r10d
	andl	$3, %r10d
	movl	%r11d, %r14d
	andl	$3, %r14d
	.align	16, 0x90
.LBB5_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #     Child Loop BB5_8 Depth 2
	testl	%r11d, %r11d
	movl	%edx, %eax
	je	.LBB5_2
# BB#4:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	(%rsi), %rdi
	movq	(%rdi,%rax,8), %r15
	testl	%r10d, %r10d
	movq	(%rcx), %rdi
	movl	$0, %eax
	je	.LBB5_6
	.align	16, 0x90
.LBB5_5:                                # %for.body.prol
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r15,%rax), %bl
	movb	%bl, 2(%rdi)
	movb	%bl, 1(%rdi)
	movb	%bl, (%rdi)
	addq	$3, %rdi
	incq	%rax
	cmpl	%eax, %r14d
	jne	.LBB5_5
.LBB5_6:                                # %for.body.lr.ph.split
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$3, %r9d
	jb	.LBB5_2
# BB#7:                                 # %for.body.lr.ph.split.split
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	%r11d, %ebp
	subl	%eax, %ebp
	leaq	3(%r15,%rax), %rax
	addq	$11, %rdi
	.align	16, 0x90
.LBB5_8:                                # %for.body
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-3(%rax), %bl
	movb	%bl, -9(%rdi)
	movb	%bl, -10(%rdi)
	movb	%bl, -11(%rdi)
	movb	-2(%rax), %bl
	movb	%bl, -6(%rdi)
	movb	%bl, -7(%rdi)
	movb	%bl, -8(%rdi)
	movb	-1(%rax), %bl
	movb	%bl, -3(%rdi)
	movb	%bl, -4(%rdi)
	movb	%bl, -5(%rdi)
	movb	(%rax), %bl
	movb	%bl, (%rdi)
	movb	%bl, -1(%rdi)
	movb	%bl, -2(%rdi)
	addq	$4, %rax
	addq	$12, %rdi
	addl	$-4, %ebp
	jne	.LBB5_8
.LBB5_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB5_3 Depth=1
	incl	%edx
	addq	$8, %rcx
	cmpl	$2, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jge	.LBB5_3
.LBB5_9:                                # %while.end
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gray_rgb_convert, .Lfunc_end5-gray_rgb_convert
	.cfi_endproc

	.align	16, 0x90
	.type	ycc_rgb_convert,@function
ycc_rgb_convert:                        # @ycc_rgb_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	movq	%rsi, -32(%rsp)         # 8-byte Spill
	testl	%r8d, %r8d
	jle	.LBB6_6
# BB#1:
	movq	864(%rdi), %rax
	movl	136(%rdi), %ecx
	movl	%ecx, -20(%rsp)         # 4-byte Spill
	movq	440(%rdi), %r12
	movq	16(%rax), %r11
	movq	24(%rax), %r10
	movq	32(%rax), %r14
	movq	40(%rax), %r15
	.align	16, 0x90
.LBB6_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	movq	%r8, -8(%rsp)           # 8-byte Spill
	cmpl	$0, -20(%rsp)           # 4-byte Folded Reload
	movl	%edx, %eax
	je	.LBB6_2
# BB#4:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdi
	movq	8(%rcx), %rbx
	movq	(%rdi,%rax,8), %r13
	movq	(%rbx,%rax,8), %rbx
	movq	16(%rcx), %rdi
	movq	(%rdi,%rax,8), %rdi
	movq	-16(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	-20(%rsp), %ebp         # 4-byte Reload
	.align	16, 0x90
.LBB6_5:                                # %for.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13), %r9d
	movq	%r10, %rcx
	movzbl	(%rdi), %r10d
	movslq	(%r11,%r10,4), %rsi
	addq	%r9, %rsi
	movb	(%r12,%rsi), %sil
	movzbl	(%rbx), %r8d
	movb	%sil, (%rax)
	movq	(%r14,%r10,8), %rsi
	movq	%rcx, %r10
	addq	(%r15,%r8,8), %rsi
	shrq	$16, %rsi
	movslq	%esi, %rsi
	addq	%r9, %rsi
	movb	(%r12,%rsi), %cl
	movb	%cl, 1(%rax)
	movslq	(%r10,%r8,4), %rcx
	addq	%r9, %rcx
	movb	(%r12,%rcx), %cl
	movb	%cl, 2(%rax)
	incq	%r13
	incq	%rbx
	incq	%rdi
	addq	$3, %rax
	decl	%ebp
	jne	.LBB6_5
.LBB6_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB6_3 Depth=1
	incl	%edx
	addq	$8, -16(%rsp)           # 8-byte Folded Spill
	movq	-8(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	leal	-1(%rax), %eax
	movl	%eax, %r8d
	jge	.LBB6_3
.LBB6_6:                                # %while.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ycc_rgb_convert, .Lfunc_end6-ycc_rgb_convert
	.cfi_endproc

	.align	16, 0x90
	.type	build_ycc_rgb_table,@function
build_ycc_rgb_table:                    # @build_ycc_rgb_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -24
.Ltmp54:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	864(%rbx), %r14
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$1024, %edx             # imm = 0x400
	callq	*(%rax)
	movq	%rax, 16(%r14)
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	%rax, 24(%r14)
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	%rax, 32(%r14)
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	%rax, 40(%r14)
	movq	16(%r14), %r8
	movq	24(%r14), %r9
	movq	32(%r14), %r10
	movq	$-11728000, %r11        # imm = 0xFFFFFFFFFF4D0B80
	movq	$-14831872, %rbx        # imm = 0xFFFFFFFFFF1DAF00
	xorl	%ecx, %ecx
	movl	$5990656, %edx          # imm = 0x5B6900
	movl	$2919552, %esi          # imm = 0x2C8C80
	.align	16, 0x90
.LBB7_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r11, %rdi
	shrq	$16, %rdi
	movl	%edi, (%r8,%rcx)
	movq	%rbx, %rdi
	shrq	$16, %rdi
	movl	%edi, (%r9,%rcx)
	movq	%rdx, (%r10,%rcx,2)
	movq	%rsi, (%rax,%rcx,2)
	addq	$4, %rcx
	addq	$91881, %r11            # imm = 0x166E9
	addq	$116130, %rbx           # imm = 0x1C5A2
	addq	$-46802, %rdx           # imm = 0xFFFFFFFFFFFF492E
	addq	$-22553, %rsi           # imm = 0xFFFFFFFFFFFFA7E7
	cmpq	$1024, %rcx             # imm = 0x400
	jne	.LBB7_1
# BB#2:                                 # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	build_ycc_rgb_table, .Lfunc_end7-build_ycc_rgb_table
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_convert,@function
rgb_convert:                            # @rgb_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 40
.Ltmp59:
	.cfi_offset %rbx, -40
.Ltmp60:
	.cfi_offset %r12, -32
.Ltmp61:
	.cfi_offset %r14, -24
.Ltmp62:
	.cfi_offset %r15, -16
	testl	%r8d, %r8d
	jle	.LBB8_10
# BB#1:                                 # %while.body.lr.ph
	movl	136(%rdi), %r10d
	movl	%r10d, %r9d
	andl	$1, %r9d
	.align	16, 0x90
.LBB8_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_9 Depth 2
	testl	%r10d, %r10d
	movl	%edx, %eax
	je	.LBB8_2
# BB#4:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	(%rsi), %rdi
	movq	8(%rsi), %rbx
	movq	(%rdi,%rax,8), %r14
	movq	(%rbx,%rax,8), %rbx
	movq	16(%rsi), %rdi
	movq	(%rdi,%rax,8), %r15
	testl	%r9d, %r9d
	movq	(%rcx), %rdi
	jne	.LBB8_6
# BB#5:                                 #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	jmp	.LBB8_7
	.align	16, 0x90
.LBB8_6:                                # %for.body.prol
                                        #   in Loop: Header=BB8_3 Depth=1
	movb	(%r14), %al
	movb	%al, (%rdi)
	movb	(%rbx), %al
	movb	%al, 1(%rdi)
	movb	(%r15), %al
	movb	%al, 2(%rdi)
	addq	$3, %rdi
	movl	$1, %eax
.LBB8_7:                                # %for.body.lr.ph.split
                                        #   in Loop: Header=BB8_3 Depth=1
	cmpl	$1, %r10d
	je	.LBB8_2
# BB#8:                                 # %for.body.lr.ph.split.split
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	%r10d, %r11d
	subl	%eax, %r11d
	leaq	1(%r14,%rax), %r14
	leaq	1(%rbx,%rax), %r12
	leaq	1(%r15,%rax), %rax
	.align	16, 0x90
.LBB8_9:                                # %for.body
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-1(%r14), %bl
	movb	%bl, (%rdi)
	movb	-1(%r12), %bl
	movb	%bl, 1(%rdi)
	movb	-1(%rax), %bl
	movb	%bl, 2(%rdi)
	movb	(%r14), %bl
	movb	%bl, 3(%rdi)
	movb	(%r12), %bl
	movb	%bl, 4(%rdi)
	movb	(%rax), %bl
	movb	%bl, 5(%rdi)
	addq	$2, %r14
	addq	$2, %r12
	addq	$2, %rax
	addq	$6, %rdi
	addl	$-2, %r11d
	jne	.LBB8_9
.LBB8_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB8_3 Depth=1
	incl	%edx
	addq	$8, %rcx
	cmpl	$2, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jge	.LBB8_3
.LBB8_10:                               # %while.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	rgb_convert, .Lfunc_end8-rgb_convert
	.cfi_endproc

	.align	16, 0x90
	.type	rgb1_rgb_convert,@function
rgb1_rgb_convert:                       # @rgb1_rgb_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 40
.Ltmp67:
	.cfi_offset %rbx, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	testl	%r8d, %r8d
	jle	.LBB9_6
# BB#1:
	movl	136(%rdi), %r9d
	.align	16, 0x90
.LBB9_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	testl	%r9d, %r9d
	movl	%edx, %eax
	je	.LBB9_2
# BB#4:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	(%rsi), %rdi
	movq	8(%rsi), %rbx
	movq	(%rdi,%rax,8), %r10
	movq	(%rbx,%rax,8), %r11
	movq	16(%rsi), %rdi
	movq	(%rdi,%rax,8), %rdi
	movq	(%rcx), %rbp
	movl	%r9d, %r15d
	.align	16, 0x90
.LBB9_5:                                # %for.body
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r11), %r14b
	movb	(%r10), %bl
	addb	%r14b, %bl
	xorb	$-128, %bl
	movb	(%rdi), %al
	addb	%r14b, %al
	movb	%bl, (%rbp)
	movb	%r14b, 1(%rbp)
	xorb	$-128, %al
	movb	%al, 2(%rbp)
	incq	%r10
	incq	%r11
	incq	%rdi
	addq	$3, %rbp
	decl	%r15d
	jne	.LBB9_5
.LBB9_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB9_3 Depth=1
	incl	%edx
	addq	$8, %rcx
	cmpl	$2, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jge	.LBB9_3
.LBB9_6:                                # %while.end
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	rgb1_rgb_convert, .Lfunc_end9-rgb1_rgb_convert
	.cfi_endproc

	.align	16, 0x90
	.type	ycck_cmyk_convert,@function
ycck_cmyk_convert:                      # @ycck_cmyk_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 56
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
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	movq	%rsi, -40(%rsp)         # 8-byte Spill
	testl	%r8d, %r8d
	jle	.LBB10_6
# BB#1:
	movq	864(%rdi), %rax
	movl	136(%rdi), %ecx
	movl	%ecx, -28(%rsp)         # 4-byte Spill
	movq	440(%rdi), %r12
	movq	16(%rax), %r11
	movq	24(%rax), %r14
	movq	32(%rax), %r10
	movq	40(%rax), %r15
	.align	16, 0x90
.LBB10_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
	movl	%edx, -12(%rsp)         # 4-byte Spill
	movq	%r8, -8(%rsp)           # 8-byte Spill
	cmpl	$0, -28(%rsp)           # 4-byte Folded Reload
	movl	%edx, %eax
	je	.LBB10_2
# BB#4:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-40(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdi
	movq	8(%rcx), %rbp
	movq	(%rdi,%rax,8), %r13
	movq	(%rbp,%rax,8), %rbx
	movq	16(%rcx), %rdi
	movq	(%rdi,%rax,8), %rdi
	movq	24(%rcx), %rbp
	movq	(%rbp,%rax,8), %rax
	movq	-24(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rbp
	movl	-28(%rsp), %r9d         # 4-byte Reload
	.align	16, 0x90
.LBB10_5:                               # %for.body
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13), %r8d
	movzbl	(%rdi), %esi
	xorl	$255, %r8d
	movq	%r10, %rdx
	movl	%r8d, %r10d
	subl	(%r11,%rsi,4), %r10d
	movslq	%r10d, %rcx
	movq	%rdx, %r10
	movb	(%r12,%rcx), %cl
	movzbl	(%rbx), %edx
	movb	%cl, (%rbp)
	movq	(%r10,%rsi,8), %rcx
	addq	(%r15,%rdx,8), %rcx
	shrq	$16, %rcx
	movl	%r8d, %esi
	subl	%ecx, %esi
	movslq	%esi, %rcx
	movb	(%r12,%rcx), %cl
	movb	%cl, 1(%rbp)
	subl	(%r14,%rdx,4), %r8d
	movslq	%r8d, %rcx
	movb	(%r12,%rcx), %cl
	movb	%cl, 2(%rbp)
	movb	(%rax), %cl
	movb	%cl, 3(%rbp)
	incq	%r13
	incq	%rbx
	incq	%rdi
	incq	%rax
	addq	$4, %rbp
	decl	%r9d
	jne	.LBB10_5
.LBB10_2:                               # %while.cond.loopexit
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-12(%rsp), %edx         # 4-byte Reload
	incl	%edx
	addq	$8, -24(%rsp)           # 8-byte Folded Spill
	movq	-8(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	leal	-1(%rax), %eax
	movl	%eax, %r8d
	jge	.LBB10_3
.LBB10_6:                               # %while.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ycck_cmyk_convert, .Lfunc_end10-ycck_cmyk_convert
	.cfi_endproc

	.align	16, 0x90
	.type	null_convert,@function
null_convert:                           # @null_convert
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
.Ltmp89:
	.cfi_offset %rbx, -56
.Ltmp90:
	.cfi_offset %r12, -48
.Ltmp91:
	.cfi_offset %r13, -40
.Ltmp92:
	.cfi_offset %r14, -32
.Ltmp93:
	.cfi_offset %r15, -24
.Ltmp94:
	.cfi_offset %rbp, -16
	testl	%r8d, %r8d
	jle	.LBB11_13
# BB#1:                                 # %for.cond.preheader.lr.ph
	movslq	56(%rdi), %r13
	movl	136(%rdi), %r11d
	leal	-1(%r11), %r9d
	movl	%r11d, %r10d
	andl	$3, %r10d
	movl	%r11d, %r12d
	andl	$3, %r12d
	.align	16, 0x90
.LBB11_2:                               # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_4 Depth 2
                                        #       Child Loop BB11_6 Depth 3
                                        #       Child Loop BB11_10 Depth 3
	testl	%r13d, %r13d
	jle	.LBB11_12
# BB#3:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	%edx, %r14d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB11_4:                               # %for.body
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_6 Depth 3
                                        #       Child Loop BB11_10 Depth 3
	testl	%r11d, %r11d
	je	.LBB11_11
# BB#5:                                 # %for.body.7.lr.ph
                                        #   in Loop: Header=BB11_4 Depth=2
	movq	(%rcx), %rbx
	addq	%r15, %rbx
	xorl	%eax, %eax
	testl	%r10d, %r10d
	movq	(%rsi,%r15,8), %rdi
	movq	(%rdi,%r14,8), %rdi
	je	.LBB11_8
	.align	16, 0x90
.LBB11_6:                               # %for.body.7.prol
                                        #   Parent Loop BB11_2 Depth=1
                                        #     Parent Loop BB11_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rbp
	movb	(%rdi,%rbp), %al
	movb	%al, (%rbx)
	addq	%r13, %rbx
	leaq	1(%rbp), %rax
	cmpl	%eax, %r12d
	jne	.LBB11_6
# BB#7:                                 #   in Loop: Header=BB11_4 Depth=2
	leaq	1(%rdi,%rbp), %rdi
.LBB11_8:                               # %for.body.7.lr.ph.split
                                        #   in Loop: Header=BB11_4 Depth=2
	cmpl	$3, %r9d
	jb	.LBB11_11
# BB#9:                                 # %for.body.7.lr.ph.split.split
                                        #   in Loop: Header=BB11_4 Depth=2
	movl	%r11d, %ebp
	subl	%eax, %ebp
	.align	16, 0x90
.LBB11_10:                              # %for.body.7
                                        #   Parent Loop BB11_2 Depth=1
                                        #     Parent Loop BB11_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rdi), %al
	movb	%al, (%rbx)
	movb	1(%rdi), %al
	movb	%al, (%rbx,%r13)
	addq	%r13, %rbx
	movb	2(%rdi), %al
	movb	%al, (%r13,%rbx)
	addq	%r13, %rbx
	movb	3(%rdi), %al
	movb	%al, (%r13,%rbx)
	addq	%r13, %rbx
	addq	$4, %rdi
	addq	%r13, %rbx
	addl	$-4, %ebp
	jne	.LBB11_10
.LBB11_11:                              # %for.inc.10
                                        #   in Loop: Header=BB11_4 Depth=2
	incq	%r15
	cmpl	%r13d, %r15d
	jne	.LBB11_4
.LBB11_12:                              # %for.end.12
                                        #   in Loop: Header=BB11_2 Depth=1
	incl	%edx
	addq	$8, %rcx
	cmpl	$1, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jg	.LBB11_2
.LBB11_13:                              # %while.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	null_convert, .Lfunc_end11-null_convert
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
