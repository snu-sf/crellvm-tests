	.text
	.file	"gxi12bit.bc"
	.align	16, 0x90
	.type	sample_unpack_12,@function
sample_unpack_12:                       # @sample_unpack_12
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rsp), %r9d
	movl	%ecx, %eax
	sarl	%eax
	leal	(%rax,%rax,2), %eax
	subl	%eax, %r8d
	addq	%rdx, %rax
	testb	$1, %cl
	je	.LBB0_1
# BB#2:                                 # %entry
	testl	%r8d, %r8d
	jle	.LBB0_3
# BB#4:                                 # %if.then
	cmpl	$1, %r8d
	je	.LBB0_14
# BB#5:                                 # %if.then
	cmpl	$2, %r8d
	jne	.LBB0_6
# BB#15:                                # %sw.bb
	movzbl	1(%rax), %eax
	andl	$15, %eax
	imull	$2184, %eax, %eax       # imm = 0x888
	movw	%ax, (%rdi)
	jmp	.LBB0_14
.LBB0_1:
	movq	%rdi, %r11
	jmp	.LBB0_7
.LBB0_3:
	movq	%rdi, %r11
	jmp	.LBB0_7
.LBB0_6:                                # %sw.default
	movzbl	1(%rax), %ecx
	andl	$15, %ecx
	shll	$8, %ecx
	movzbl	2(%rax), %edx
	orl	%ecx, %edx
	shll	$3, %edx
	movw	%dx, (%rdi)
	movslq	%r9d, %rcx
	leaq	(%rcx,%rdi), %r11
	addq	$3, %rax
	addl	$-3, %r8d
.LBB0_7:                                # %while.cond.preheader
	cmpl	$3, %r8d
	jl	.LBB0_10
# BB#8:                                 # %while.body.lr.ph
	movslq	%r9d, %r10
	.align	16, 0x90
.LBB0_9:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	shll	$4, %edx
	movzbl	1(%rax), %ecx
	shrl	$4, %ecx
	orl	%edx, %ecx
	shll	$3, %ecx
	movw	%cx, (%r11)
	movzbl	1(%rax), %ecx
	andl	$15, %ecx
	shll	$8, %ecx
	movzbl	2(%rax), %edx
	orl	%ecx, %edx
	shll	$3, %edx
	movw	%dx, (%r10,%r11)
	addq	%r10, %r11
	addq	%r10, %r11
	addq	$3, %rax
	addl	$-3, %r8d
	cmpl	$2, %r8d
	jg	.LBB0_9
.LBB0_10:                               # %while.end
	cmpl	$1, %r8d
	jne	.LBB0_11
# BB#13:                                # %sw.bb.81
	movzbl	(%rax), %eax
	shll	$7, %eax
	movw	%ax, (%r11)
	jmp	.LBB0_14
.LBB0_11:                               # %while.end
	cmpl	$2, %r8d
	jne	.LBB0_14
# BB#12:                                # %sw.bb.59
	movzbl	(%rax), %ecx
	shll	$4, %ecx
	movzbl	1(%rax), %edx
	shrl	$4, %edx
	orl	%ecx, %edx
	shll	$3, %edx
	movw	%dx, (%r11)
	movslq	%r9d, %rcx
	movzbl	1(%rax), %eax
	andl	$15, %eax
	imull	$2184, %eax, %eax       # imm = 0x888
	movw	%ax, (%r11,%rcx)
.LBB0_14:                               # %sw.epilog.93
	movl	$0, (%rsi)
	movq	%rdi, %rax
	retq
.Lfunc_end0:
	.size	sample_unpack_12, .Lfunc_end0-sample_unpack_12
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.text
	.globl	gs_image_class_2_fracs
	.align	16, 0x90
	.type	gs_image_class_2_fracs,@function
gs_image_class_2_fracs:                 # @gs_image_class_2_fracs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 64
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%eax, %eax
	movzbl	576(%rbx), %ecx
	cmpl	$9, %ecx
	jb	.LBB1_28
# BB#1:                                 # %if.then
	cmpb	$0, 1116(%rbx)
	je	.LBB1_5
# BB#2:                                 # %for.cond.preheader
	cmpb	$0, 579(%rbx)
	je	.LBB1_5
# BB#3:                                 # %for.body.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	584(%rbx,%rax,4), %ecx
	shll	$19, %ecx
	sarl	$16, %ecx
	movl	%ecx, 584(%rbx,%rax,4)
	incq	%rax
	movzbl	579(%rbx), %ecx
	addq	%rcx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB1_4
.LBB1_5:                                # %if.end
	movq	16(%rbx), %rdi
	movq	1216(%rbx), %rsi
	callq	gx_device_uses_std_cmap_procs
	movl	%eax, %ebp
	movq	1224(%rbx), %rdi
	callq	gs_color_space_get_index
	cmpl	$4, %eax
	jne	.LBB1_7
# BB#6:                                 # %land.lhs.true
	movq	1224(%rbx), %rcx
	movl	$image_render_frac, %eax
	cmpq	$0, 64(%rcx)
	je	.LBB1_28
.LBB1_7:                                # %lor.lhs.false
	movl	$image_render_frac, %eax
	cmpb	$0, 1116(%rbx)
	jne	.LBB1_28
# BB#8:                                 # %lor.lhs.false.32
	movl	$image_render_frac, %eax
	testl	%ebp, %ebp
	je	.LBB1_28
# BB#9:                                 # %lor.lhs.false.32
	movzbl	576(%rbx), %ecx
	cmpl	$16, %ecx
	jne	.LBB1_28
# BB#10:                                # %lor.lhs.false.39
	movq	1224(%rbx), %rdi
	callq	gs_color_space_get_index
	movl	%eax, %ecx
	movl	$image_render_frac, %eax
	cmpl	$3, %ecx
	je	.LBB1_28
# BB#11:                                # %if.else
	movq	1224(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	movl	%eax, %ebp
	movq	16(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	*1680(%rdi)
	movq	(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, %r14d
	movl	$0, 24792(%rbx)
	testl	%ebp, %ebp
	jle	.LBB1_16
# BB#12:                                # %for.body.56.lr.ph
	movslq	%ebp, %rax
	leaq	1852(%rbx), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_14:                               # %for.body.56
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rcx)
	jne	.LBB1_15
# BB#13:                                # %for.cond.53
                                        #   in Loop: Header=BB1_14 Depth=1
	incq	%rdx
	addq	$332, %rcx              # imm = 0x14C
	cmpq	%rax, %rdx
	jl	.LBB1_14
	jmp	.LBB1_16
.LBB1_15:                               # %if.then.61
	movl	$1, 24792(%rbx)
.LBB1_16:                               # %for.end.67
	movq	1216(%rbx), %rax
	movl	328(%rax), %ecx
	movl	%ecx, 12(%rsp)
	movl	324(%rax), %eax
	movl	%eax, 8(%rsp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [8,2,0,0]
	movups	%xmm0, 16(%rsp)
	movq	1224(%rbx), %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	movq	1224(%rbx), %rax
	je	.LBB1_18
# BB#17:                                # %land.lhs.true.73
	movq	48(%rax), %rbp
	testq	%rbp, %rbp
	jne	.LBB1_19
.LBB1_18:                               # %if.else.80
	movq	%rax, %rbp
.LBB1_19:                               # %if.end.82
	movq	64(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, 24796(%rbx)
	movq	16(%rbx), %rax
	cmpl	$1, 100(%rax)
	jg	.LBB1_21
# BB#20:                                # %lor.lhs.false.89
	movzbl	110(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB1_21
# BB#22:                                # %cond.false
	addq	$112, %rax
	jmp	.LBB1_23
.LBB1_21:                               # %cond.true
	addq	$116, %rax
.LBB1_23:                               # %cond.end
	cmpl	$31, (%rax)
	sbbl	%eax, %eax
	andl	$1, %eax
	movl	%eax, 24800(%rbx)
	movq	1216(%rbx), %rdi
	movl	%r14d, %esi
	callq	gx_has_transfer
	movl	%eax, 24804(%rbx)
	cmpl	$0, 24796(%rbx)
	je	.LBB1_25
# BB#24:                                # %if.then.108
	movl	$0, 24792(%rbx)
.LBB1_25:                               # %if.end.111
	cmpq	$0, 24448(%rbx)
	jne	.LBB1_27
# BB#26:                                # %if.then.114
	movq	1216(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	24(%rbx), %r9
	leaq	8(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	callq	gsicc_get_link
	movq	%rax, 24448(%rbx)
.LBB1_27:                               # %if.end.119
	movq	sample_unpackicc_16_proc(%rip), %rax
	movq	%rax, 1200(%rbx)
	movl	$image_render_icc16, %eax
.LBB1_28:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_image_class_2_fracs, .Lfunc_end1-gs_image_class_2_fracs
	.cfi_endproc

	.align	16, 0x90
	.type	image_render_frac,@function
image_render_frac:                      # @image_render_frac
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	subq	$2184, %rsp             # imm = 0x888
.Ltmp13:
	.cfi_def_cfa_offset 2240
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movl	%r8d, %ebx
	movl	%ecx, %ebp
	movl	%ebp, 344(%rsp)         # 4-byte Spill
	movl	%edx, 332(%rsp)         # 4-byte Spill
	movq	%rsi, 336(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	movq	1216(%r14), %rdi
	movq	%rdi, 256(%rsp)         # 8-byte Spill
	movq	1224(%r14), %r15
	movl	1304(%r14), %eax
	movl	%eax, 236(%rsp)         # 4-byte Spill
	movl	1264(%r14), %eax
	movl	%eax, 240(%rsp)         # 4-byte Spill
	movl	1512(%r14), %eax
	movl	%eax, 168(%rsp)         # 4-byte Spill
	movl	1516(%r14), %eax
	movl	%eax, 172(%rsp)         # 4-byte Spill
	movq	(%r15), %rax
	movq	72(%rax), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movb	1271(%r14), %al
	movb	%al, 247(%rsp)          # 1-byte Spill
	movq	%r13, %rsi
	callq	gx_get_cmap_procs
	movq	8(%rax), %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movq	16(%rax), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movb	1116(%r14), %al
	movb	%al, 287(%rsp)          # 1-byte Spill
	movzbl	579(%r14), %r12d
	movl	%ebp, %ebp
	movq	1224(%r14), %rdi
	callq	gs_color_space_get_index
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	je	.LBB2_80
# BB#1:                                 # %if.end
	movq	%rbp, 304(%rsp)         # 8-byte Spill
	movl	%eax, 248(%rsp)         # 4-byte Spill
	movslq	332(%rsp), %rax         # 4-byte Folded Reload
	imulq	%r12, %rax
	movq	%r12, 136(%rsp)         # 8-byte Spill
	movq	336(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,2), %rbx
	movl	1452(%r14), %ecx
	movl	%ecx, 280(%rsp)         # 4-byte Spill
	movl	1456(%r14), %r12d
	movl	1460(%r14), %eax
	movl	%eax, 332(%rsp)         # 4-byte Spill
	movl	1464(%r14), %eax
	movl	%eax, 328(%rsp)         # 4-byte Spill
	movl	1468(%r14), %eax
	movl	%eax, 324(%rsp)         # 4-byte Spill
	movl	1472(%r14), %eax
	movl	%eax, 276(%rsp)         # 4-byte Spill
	movq	%r13, %rbp
	movl	1476(%r14), %r13d
	movl	1480(%r14), %eax
	movl	%eax, 320(%rsp)         # 4-byte Spill
	movl	1484(%r14), %eax
	movl	%eax, 316(%rsp)         # 4-byte Spill
	movl	1488(%r14), %eax
	movl	%eax, 312(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	subl	$-128, %eax
	movl	%eax, 204(%rsp)         # 4-byte Spill
	movl	1372(%r14), %eax
	movl	1392(%r14), %ecx
	subl	1356(%r14), %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	subl	1360(%r14), %ecx
	movl	%ecx, 184(%rsp)         # 4-byte Spill
	movq	%r14, 288(%rsp)         # 8-byte Spill
	leaq	480(%rsp), %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	leaq	352(%rsp), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	movq	$-1, 1272(%rsp)
	movq	$gx_dc_type_data_pure, 1264(%rsp)
	movl	$0, 1624(%rsp)
	movq	$-1, 616(%rsp)
	movq	$gx_dc_type_data_pure, 608(%rsp)
	movl	$0, 968(%rsp)
	movq	$0, 1920(%rsp)
	movq	(%r15), %rax
	leaq	1920(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r15, 264(%rsp)         # 8-byte Spill
	callq	*32(%rax)
	movw	(%rbx), %ax
	notw	%ax
	movw	%ax, 480(%rsp)
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	callq	*1664(%rbp)
	movq	%rbp, %rcx
	testl	%eax, %eax
	je	.LBB2_3
# BB#2:                                 # %vector.body
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1272(%rsp)
	movups	%xmm0, 616(%rsp)
	movups	%xmm0, 1288(%rsp)
	movups	%xmm0, 632(%rsp)
	movups	%xmm0, 1304(%rsp)
	movups	%xmm0, 648(%rsp)
	movups	%xmm0, 1320(%rsp)
	movups	%xmm0, 664(%rsp)
	movups	%xmm0, 1336(%rsp)
	movups	%xmm0, 680(%rsp)
	movups	%xmm0, 1352(%rsp)
	movups	%xmm0, 696(%rsp)
	movups	%xmm0, 1368(%rsp)
	movups	%xmm0, 712(%rsp)
	movups	%xmm0, 1384(%rsp)
	movups	%xmm0, 728(%rsp)
	movl	$1, %r14d
.LBB2_3:                                # %while.cond.preheader
	sarl	$8, 204(%rsp)           # 4-byte Folded Spill
	cmpl	$0, 344(%rsp)           # 4-byte Folded Reload
	movq	304(%rsp), %rsi         # 8-byte Reload
	je	.LBB2_4
# BB#5:                                 # %while.body.lr.ph
	movq	136(%rsp), %r10         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	leaq	(%rdx,%r10,2), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rsi,2), %rax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	cmpl	$9, 248(%rsp)           # 4-byte Folded Reload
	sete	%al
	testl	%r14d, %r14d
	setne	%bl
	andb	%al, %bl
	movb	%bl, 223(%rsp)          # 1-byte Spill
	leaq	(%r10,%r10), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leal	-2(%r10,%r10), %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	leaq	350(%rsp,%r10,2), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	cmpq	$2, %r10
	movl	$2, %eax
	movl	$2, %esi
	cmovaq	%r10, %rsi
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	leaq	-1(%rsi), %rsi
	cmpq	$2, %r10
	movl	$2, %edi
	cmovaq	%r10, %rdi
	leaq	350(%rsp,%rdi,2), %rbx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	decq	%rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	cmpq	$2, %r10
	movl	$2, %edi
	cmovaq	%r10, %rdi
	addq	$-17, %rdi
	shrq	$4, %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	andq	$-16, %rsi
	orq	$1, %rsi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	andl	$1, %edi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movb	%r10b, %bl
	andb	$1, %bl
	movb	%bl, 95(%rsp)           # 1-byte Spill
	cmpl	$2, %r10d
	cmovaq	%r10, %rax
	decq	%rax
	andq	$-16, %rax
	orq	$1, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leal	(%r10,%r10), %eax
	movq	288(%rsp), %r14         # 8-byte Reload
	leaq	580(%r14,%rax,4), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leal	-2(%r10,%r10), %eax
	cltq
	leaq	584(%r14,%rax,4), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	2180(%r14), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	1264(%rsp), %r9
	leaq	608(%rsp), %rax
	xorl	%esi, %esi
	movq	%rsi, 248(%rsp)         # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rax, %r11
	movl	280(%rsp), %ebp         # 4-byte Reload
	movl	276(%rsp), %r14d        # 4-byte Reload
	movq	%rcx, %r15
	movq	%r15, 224(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB2_6:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
                                        #     Child Loop BB2_21 Depth 2
                                        #     Child Loop BB2_58 Depth 2
                                        #     Child Loop BB2_64 Depth 2
	movswl	(%rbx), %edi
	movw	%di, 352(%rsp)
	cmpl	$1, %r10d
	je	.LBB2_38
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	$3, %r10d
	jne	.LBB2_8
# BB#31:                                # %sw.bb.162
                                        #   in Loop: Header=BB2_6 Depth=1
	movswl	2(%rbx), %esi
	movw	%si, 354(%rsp)
	movswl	4(%rbx), %edx
	movw	%dx, 356(%rsp)
	addq	$6, %rbx
	movq	352(%rsp), %rax
	cmpq	480(%rsp), %rax
	je	.LBB2_74
# BB#32:                                # %if.end.177
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpb	$0, 287(%rsp)           # 1-byte Folded Reload
	movq	288(%rsp), %rdi         # 8-byte Reload
	je	.LBB2_35
# BB#33:                                # %land.lhs.true.179
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	600(%rdi), %edx
	jb	.LBB2_35
# BB#34:                                # %lor.lhs.false.i.245
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	604(%rdi), %edx
	ja	.LBB2_35
# BB#81:                                # %for.cond.i.232
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	592(%rdi), %esi
	jb	.LBB2_35
# BB#82:                                # %lor.lhs.false.i.245.1
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	596(%rdi), %esi
	ja	.LBB2_35
# BB#83:                                # %for.cond.i.232.1
                                        #   in Loop: Header=BB2_6 Depth=1
	movswl	%ax, %ecx
	cmpl	584(%rdi), %ecx
	jb	.LBB2_35
# BB#84:                                # %lor.lhs.false.i.245.2
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	588(%rdi), %ecx
	jbe	.LBB2_91
.LBB2_35:                               # %if.end.186
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%r9, 344(%rsp)          # 8-byte Spill
	cmpb	$0, 247(%rsp)           # 1-byte Folded Reload
	je	.LBB2_37
# BB#36:                                # %if.then.188
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rbx, 336(%rsp)         # 8-byte Spill
	movq	%r10, %rbx
	movl	$1, (%rsp)
	movswl	%ax, %edi
	jmp	.LBB2_50
	.align	16, 0x90
.LBB2_38:                               # %sw.bb.247
                                        #   in Loop: Header=BB2_6 Depth=1
	addq	$2, %rbx
	movzwl	480(%rsp), %eax
	cmpb	$0, 223(%rsp)           # 1-byte Folded Reload
	je	.LBB2_44
# BB#39:                                # %if.then.251
                                        #   in Loop: Header=BB2_6 Depth=1
	movzwl	%ax, %eax
	movzwl	%di, %ecx
	cmpl	%eax, %ecx
	je	.LBB2_74
# BB#40:                                # %if.end.261
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpb	$0, 287(%rsp)           # 1-byte Folded Reload
	movq	288(%rsp), %rax         # 8-byte Reload
	je	.LBB2_43
# BB#41:                                # %for.body.i.260.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	584(%rax), %edi
	jb	.LBB2_43
# BB#42:                                # %lor.lhs.false.i.265
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	588(%rax), %edi
	jbe	.LBB2_91
.LBB2_43:                               # %if.end.270
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rbx, 336(%rsp)         # 8-byte Spill
	movq	%r9, 344(%rsp)          # 8-byte Spill
	movq	%r10, %rbx
	cvtsi2ssl	%edi, %xmm0
	jmp	.LBB2_52
	.align	16, 0x90
.LBB2_8:                                # %while.body
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	$4, %r10d
	jne	.LBB2_9
# BB#24:                                # %sw.bb
                                        #   in Loop: Header=BB2_6 Depth=1
	movswl	2(%rbx), %esi
	movw	%si, 354(%rsp)
	movswl	4(%rbx), %edx
	movw	%dx, 356(%rsp)
	movswl	6(%rbx), %ecx
	movw	%cx, 358(%rsp)
	addq	$8, %rbx
	movq	352(%rsp), %rax
	cmpq	480(%rsp), %rax
	je	.LBB2_74
# BB#25:                                # %if.end.80
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpb	$0, 287(%rsp)           # 1-byte Folded Reload
	je	.LBB2_28
# BB#26:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	288(%rsp), %rdi         # 8-byte Reload
	cmpl	608(%rdi), %ecx
	jb	.LBB2_28
# BB#27:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	288(%rsp), %rdi         # 8-byte Reload
	cmpl	612(%rdi), %ecx
	ja	.LBB2_28
# BB#85:                                # %for.cond.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	288(%rsp), %rdi         # 8-byte Reload
	cmpl	600(%rdi), %edx
	jb	.LBB2_28
# BB#86:                                # %lor.lhs.false.i.1
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	288(%rsp), %rdi         # 8-byte Reload
	cmpl	604(%rdi), %edx
	ja	.LBB2_28
# BB#87:                                # %for.cond.i.1
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	288(%rsp), %rdi         # 8-byte Reload
	cmpl	592(%rdi), %esi
	jb	.LBB2_28
# BB#88:                                # %lor.lhs.false.i.2
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	288(%rsp), %rdi         # 8-byte Reload
	cmpl	596(%rdi), %esi
	ja	.LBB2_28
# BB#89:                                # %for.cond.i.2
                                        #   in Loop: Header=BB2_6 Depth=1
	movswl	%ax, %r8d
	movq	288(%rsp), %rdi         # 8-byte Reload
	cmpl	584(%rdi), %r8d
	jb	.LBB2_28
# BB#90:                                # %lor.lhs.false.i.3
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	288(%rsp), %rdi         # 8-byte Reload
	cmpl	588(%rdi), %r8d
	jbe	.LBB2_91
.LBB2_28:                               # %if.end.87
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%r9, 344(%rsp)          # 8-byte Spill
	cmpb	$0, 247(%rsp)           # 1-byte Folded Reload
	je	.LBB2_30
# BB#29:                                # %if.then.89
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rbx, 336(%rsp)         # 8-byte Spill
	movq	%r10, %rbx
	movq	%r15, (%rsp)
	movq	$0, 16(%rsp)
	movl	$1, 8(%rsp)
	movswl	%ax, %edi
	movq	%r11, %r8
	movq	%r11, 304(%rsp)         # 8-byte Spill
	movq	256(%rsp), %r9          # 8-byte Reload
	callq	*144(%rsp)              # 8-byte Folded Reload
	jmp	.LBB2_66
.LBB2_44:                               # %if.else
                                        #   in Loop: Header=BB2_6 Depth=1
	movzwl	%ax, %eax
	movzwl	%di, %ecx
	cmpl	%eax, %ecx
	je	.LBB2_74
# BB#45:                                # %if.end.300
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpb	$0, 287(%rsp)           # 1-byte Folded Reload
	je	.LBB2_48
# BB#46:                                # %for.body.i.280.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	288(%rsp), %rax         # 8-byte Reload
	cmpl	584(%rax), %edi
	jb	.LBB2_48
# BB#47:                                # %lor.lhs.false.i.285
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	288(%rsp), %rax         # 8-byte Reload
	cmpl	588(%rax), %edi
	jbe	.LBB2_91
.LBB2_48:                               # %if.end.309
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rbx, 336(%rsp)         # 8-byte Spill
	movq	%r9, 344(%rsp)          # 8-byte Spill
	cmpb	$0, 247(%rsp)           # 1-byte Folded Reload
	je	.LBB2_51
# BB#49:                                # %if.then.311
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%r10, %rbx
	movl	$1, (%rsp)
	movl	%edi, %esi
	movl	%edi, %edx
.LBB2_50:                               # %do.end.406
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%r11, %rcx
	movq	%r11, 304(%rsp)         # 8-byte Spill
	movq	256(%rsp), %r8          # 8-byte Reload
	movq	%r15, %r9
	callq	*176(%rsp)              # 8-byte Folded Reload
	jmp	.LBB2_66
.LBB2_9:                                # %for.cond.339.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%r11, %r15
	movq	%r9, 344(%rsp)          # 8-byte Spill
	cmpl	$2, %r10d
	jb	.LBB2_22
# BB#10:                                # %for.body.342.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpq	$1, 152(%rsp)           # 8-byte Folded Reload
	movl	$1, %eax
	je	.LBB2_21
# BB#11:                                # %overflow.checked388
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpq	$1, 96(%rsp)            # 8-byte Folded Reload
	movl	$1, %eax
	je	.LBB2_20
# BB#12:                                # %vector.memcheck
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rbx,%rax,2), %rax
	leaq	354(%rsp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_14
# BB#13:                                # %vector.memcheck
                                        #   in Loop: Header=BB2_6 Depth=1
	leaq	2(%rbx), %rax
	cmpq	56(%rsp), %rax          # 8-byte Folded Reload
	movl	$1, %eax
	jbe	.LBB2_20
.LBB2_14:                               # %vector.body384.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movl	$1, %edx
	jne	.LBB2_16
# BB#15:                                # %vector.body384.prol
                                        #   in Loop: Header=BB2_6 Depth=1
	movups	2(%rbx), %xmm0
	movups	18(%rbx), %xmm1
	movups	%xmm0, 354(%rsp)
	movups	%xmm1, 370(%rsp)
	movl	$17, %edx
.LBB2_16:                               # %vector.body384.preheader.split
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpq	$0, 48(%rsp)            # 8-byte Folded Reload
	movq	96(%rsp), %rax          # 8-byte Reload
	je	.LBB2_20
# BB#17:                                # %vector.body384.preheader.split.split
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	subq	%rdx, %rax
	leaq	48(%rbx,%rdx,2), %rcx
	leaq	400(%rsp), %rsi
	leaq	(%rsi,%rdx,2), %rdx
	.align	16, 0x90
.LBB2_18:                               # %vector.body384
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rcx), %xmm0
	movups	-32(%rcx), %xmm1
	movups	%xmm0, -48(%rdx)
	movups	%xmm1, -32(%rdx)
	movups	-16(%rcx), %xmm0
	movups	(%rcx), %xmm1
	movups	%xmm0, -16(%rdx)
	movups	%xmm1, (%rdx)
	addq	$64, %rcx
	addq	$64, %rdx
	addq	$-32, %rax
	jne	.LBB2_18
# BB#19:                                #   in Loop: Header=BB2_6 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
.LBB2_20:                               # %middle.block385
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpq	%rax, 152(%rsp)         # 8-byte Folded Reload
	je	.LBB2_22
	.align	16, 0x90
.LBB2_21:                               # %for.body.342
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	(%rbx,%rax,2), %cx
	movw	%cx, 352(%rsp,%rax,2)
	incq	%rax
	cmpq	%r10, %rax
	jl	.LBB2_21
.LBB2_22:                               # %for.end.350
                                        #   in Loop: Header=BB2_6 Depth=1
	leaq	(%rbx,%r10,2), %rbx
	movq	%rbx, 336(%rsp)         # 8-byte Spill
	movq	%r10, %rbx
	leaq	352(%rsp), %rdi
	leaq	480(%rsp), %rsi
	movq	160(%rsp), %rdx         # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB2_23
# BB#53:                                # %if.end.362
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpb	$0, 287(%rsp)           # 1-byte Folded Reload
	movq	%r15, %r11
	movq	224(%rsp), %r15         # 8-byte Reload
	je	.LBB2_59
# BB#54:                                # %land.lhs.true.364
                                        #   in Loop: Header=BB2_6 Depth=1
	movl	132(%rsp), %edx         # 4-byte Reload
	testl	%edx, %edx
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	js	.LBB2_55
	.align	16, 0x90
.LBB2_58:                               # %for.body.i.301
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	(%rsi), %edi
	cmpl	(%rax), %edi
	jb	.LBB2_59
# BB#56:                                # %lor.lhs.false.i.306
                                        #   in Loop: Header=BB2_58 Depth=2
	cmpl	(%rcx), %edi
	ja	.LBB2_59
# BB#57:                                # %for.cond.i.293
                                        #   in Loop: Header=BB2_58 Depth=2
	addq	$-2, %rsi
	addq	$-8, %rcx
	addq	$-8, %rax
	addl	$-2, %edx
	jns	.LBB2_58
	jmp	.LBB2_55
.LBB2_59:                               # %for.cond.372.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	testb	%bl, %bl
	je	.LBB2_65
# BB#60:                                # %for.body.375.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpb	$0, 95(%rsp)            # 1-byte Folded Reload
	movl	$0, %esi
	movq	288(%rsp), %rcx         # 8-byte Reload
	je	.LBB2_62
# BB#61:                                # %for.body.375.prol
                                        #   in Loop: Header=BB2_6 Depth=1
	movswl	352(%rsp), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	1848(%rcx), %xmm0
	addss	1784(%rcx), %xmm0
	movss	%xmm0, 1928(%rsp)
	movl	$1, %esi
.LBB2_62:                               # %for.body.375.preheader.split
                                        #   in Loop: Header=BB2_6 Depth=1
	movzbl	%bl, %eax
	cmpl	$1, %eax
	je	.LBB2_65
# BB#63:                                # %for.body.375.preheader.split.split
                                        #   in Loop: Header=BB2_6 Depth=1
	movl	%ebx, %eax
	subl	%esi, %eax
	leaq	354(%rsp), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	imulq	$83, %rsi, %rdx
	movq	72(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rdx,4), %rdx
	leaq	1932(%rsp), %rdi
	leaq	(%rdi,%rsi,4), %rsi
	.align	16, 0x90
.LBB2_64:                               # %for.body.375
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	-2(%rcx), %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	mulss	-332(%rdx), %xmm0
	addss	-396(%rdx), %xmm0
	movss	%xmm0, -4(%rsi)
	movswl	(%rcx), %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	mulss	(%rdx), %xmm0
	addss	-64(%rdx), %xmm0
	movss	%xmm0, (%rsi)
	addq	$4, %rcx
	addq	$664, %rdx              # imm = 0x298
	addq	$8, %rsi
	addl	$-2, %eax
	jne	.LBB2_64
	jmp	.LBB2_65
.LBB2_23:                               #   in Loop: Header=BB2_6 Depth=1
	movq	%rbx, %r10
	movq	344(%rsp), %r9          # 8-byte Reload
	movq	336(%rsp), %rbx         # 8-byte Reload
	movq	%r15, %r11
	movq	224(%rsp), %r15         # 8-byte Reload
	jmp	.LBB2_74
.LBB2_37:                               # %if.end.195
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rbx, 336(%rsp)         # 8-byte Spill
	movq	%r10, %rbx
	cwtl
	cvtsi2ssl	%eax, %xmm0
	mulss	1848(%rdi), %xmm0
	addss	1784(%rdi), %xmm0
	movss	%xmm0, 1928(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	mulss	2180(%rdi), %xmm0
	addss	2116(%rdi), %xmm0
	movss	%xmm0, 1932(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	2512(%rdi), %xmm0
	addss	2448(%rdi), %xmm0
	movss	%xmm0, 1936(%rsp)
	jmp	.LBB2_65
.LBB2_30:                               # %if.end.98
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rbx, 336(%rsp)         # 8-byte Spill
	movq	%r10, %rbx
	cwtl
	cvtsi2ssl	%eax, %xmm0
	movq	288(%rsp), %rax         # 8-byte Reload
	mulss	1848(%rax), %xmm0
	addss	1784(%rax), %xmm0
	movss	%xmm0, 1928(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	mulss	2180(%rax), %xmm0
	addss	2116(%rax), %xmm0
	movss	%xmm0, 1932(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	2512(%rax), %xmm0
	addss	2448(%rax), %xmm0
	movss	%xmm0, 1936(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	mulss	2844(%rax), %xmm0
	addss	2780(%rax), %xmm0
	movss	%xmm0, 1940(%rsp)
	jmp	.LBB2_65
.LBB2_91:                               # %for.cond.i.252
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rbx, 336(%rsp)         # 8-byte Spill
	movq	%r9, 344(%rsp)          # 8-byte Spill
	movq	%r10, %rbx
.LBB2_55:                               # %cleanup.thread325
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	$gx_dc_type_data_null, (%r11)
	movq	%r11, 304(%rsp)         # 8-byte Spill
	jmp	.LBB2_66
.LBB2_51:                               # %if.end.318
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%r10, %rbx
	cvtsi2ssl	%edi, %xmm0
	movq	288(%rsp), %rax         # 8-byte Reload
.LBB2_52:                               # %sw.epilog
                                        #   in Loop: Header=BB2_6 Depth=1
	mulss	1848(%rax), %xmm0
	addss	1784(%rax), %xmm0
	movss	%xmm0, 1928(%rsp)
.LBB2_65:                               #   in Loop: Header=BB2_6 Depth=1
	movq	264(%rsp), %rsi         # 8-byte Reload
	movq	%r11, 304(%rsp)         # 8-byte Spill
	movq	%rsi, 264(%rsp)         # 8-byte Spill
	movl	$1, %r9d
	leaq	1920(%rsp), %rdi
	movq	%r11, %rdx
	movq	256(%rsp), %rcx         # 8-byte Reload
	movq	%r15, %r8
	callq	*208(%rsp)              # 8-byte Folded Reload
	movq	%rax, 248(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	js	.LBB2_68
.LBB2_66:                               # %do.end.406
                                        #   in Loop: Header=BB2_6 Depth=1
	leaq	1264(%rsp), %rdi
	leaq	608(%rsp), %rsi
	callq	gx_device_color_equal
	testl	%eax, %eax
	je	.LBB2_68
# BB#67:                                #   in Loop: Header=BB2_6 Depth=1
	movq	344(%rsp), %rax         # 8-byte Reload
	movq	304(%rsp), %rdx         # 8-byte Reload
	movq	%rbx, %r10
	movq	336(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB2_73
	.align	16, 0x90
.LBB2_68:                               # %fill
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	$0, 240(%rsp)           # 4-byte Folded Reload
	je	.LBB2_70
# BB#69:                                # %if.then.412
                                        #   in Loop: Header=BB2_6 Depth=1
	movl	%ebp, %ecx
	movl	280(%rsp), %esi         # 4-byte Reload
	subl	%esi, %ecx
	movl	%r14d, %r8d
	movl	276(%rsp), %edx         # 4-byte Reload
	subl	%edx, %r8d
	movl	236(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	344(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	184(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r15, %rdi
	movl	188(%rsp), %r9d         # 4-byte Reload
	callq	*1368(%r15)
	movl	%eax, %ecx
	jmp	.LBB2_71
.LBB2_70:                               # %if.else.417
                                        #   in Loop: Header=BB2_6 Depth=1
	movl	%ebp, %r15d
	subl	$-128, %r15d
	sarl	$8, %r15d
	movl	%r15d, %eax
	movl	204(%rsp), %esi         # 4-byte Reload
	subl	%esi, %eax
	cmovsl	%r15d, %esi
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movq	344(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	movl	236(%rsp), %edx         # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	168(%rsp), %edx         # 4-byte Reload
	movl	172(%rsp), %r8d         # 4-byte Reload
	movq	224(%rsp), %r9          # 8-byte Reload
	callq	*40(%rax)
	movl	%eax, %ecx
	movl	%r15d, 204(%rsp)        # 4-byte Spill
	movq	224(%rsp), %r15         # 8-byte Reload
.LBB2_71:                               # %if.end.435
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rbx, %r10
	movq	336(%rsp), %rbx         # 8-byte Reload
	movq	304(%rsp), %rax         # 8-byte Reload
	testl	%ecx, %ecx
	movq	344(%rsp), %rdx         # 8-byte Reload
	js	.LBB2_79
# BB#72:                                # %cleanup.444
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	248(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movl	%ebp, 280(%rsp)         # 4-byte Spill
	movl	%r14d, 276(%rsp)        # 4-byte Spill
	js	.LBB2_79
.LBB2_73:                               # %if.end.447
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rdx, %r11
	movups	464(%rsp), %xmm0
	movaps	%xmm0, 592(%rsp)
	movups	448(%rsp), %xmm0
	movaps	%xmm0, 576(%rsp)
	movups	432(%rsp), %xmm0
	movaps	%xmm0, 560(%rsp)
	movups	416(%rsp), %xmm0
	movaps	%xmm0, 544(%rsp)
	movups	352(%rsp), %xmm0
	movups	368(%rsp), %xmm1
	movups	384(%rsp), %xmm2
	movups	400(%rsp), %xmm3
	movaps	%xmm3, 528(%rsp)
	movaps	%xmm2, 512(%rsp)
	movaps	%xmm1, 496(%rsp)
	movaps	%xmm0, 480(%rsp)
	movq	%rax, %r9
.LBB2_74:                               # %do.body.450
                                        #   in Loop: Header=BB2_6 Depth=1
	subl	328(%rsp), %r12d        # 4-byte Folded Reload
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	324(%rsp), %eax         # 4-byte Folded Reload
	addl	%r12d, %eax
	shrl	$31, %r12d
	addl	332(%rsp), %ebp         # 4-byte Folded Reload
	addl	%r12d, %ebp
	subl	316(%rsp), %r13d        # 4-byte Folded Reload
	movl	%r13d, %ecx
	sarl	$31, %ecx
	andl	312(%rsp), %ecx         # 4-byte Folded Reload
	addl	%r13d, %ecx
	shrl	$31, %r13d
	addl	320(%rsp), %r14d        # 4-byte Folded Reload
	addl	%r13d, %r14d
	cmpq	296(%rsp), %rbx         # 8-byte Folded Reload
	movl	%ecx, %r13d
	movl	%eax, %r12d
	jb	.LBB2_6
	jmp	.LBB2_75
.LBB2_4:
	leaq	1264(%rsp), %r9
	movl	280(%rsp), %ebp         # 4-byte Reload
	movl	276(%rsp), %r14d        # 4-byte Reload
	movq	%rcx, %r15
.LBB2_75:                               # %while.end
	cmpl	$0, 240(%rsp)           # 4-byte Folded Reload
	je	.LBB2_77
# BB#76:                                # %if.then.528
	movl	280(%rsp), %esi         # 4-byte Reload
	subl	%esi, %ebp
	movl	276(%rsp), %edx         # 4-byte Reload
	subl	%edx, %r14d
	movl	236(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	%r9, 8(%rsp)
	movl	184(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r15, %rdi
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	movl	188(%rsp), %r9d         # 4-byte Reload
	callq	*1368(%r15)
	jmp	.LBB2_78
.LBB2_77:                               # %if.else.534
	subl	$-128, %ebp
	sarl	$8, %ebp
	movl	%ebp, %eax
	movl	204(%rsp), %ecx         # 4-byte Reload
	subl	%ecx, %eax
	cmovnsl	%ecx, %ebp
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movq	(%r9), %rax
	movl	236(%rsp), %edx         # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r9, %rdi
	movl	%ebp, %esi
	movl	168(%rsp), %edx         # 4-byte Reload
	movl	172(%rsp), %r8d         # 4-byte Reload
	movq	%r15, %r9
	callq	*40(%rax)
.LBB2_78:                               # %if.end.555
	testl	%eax, %eax
	movl	$1, %ecx
	cmovsl	%eax, %ecx
	jmp	.LBB2_80
.LBB2_79:                               # %err
	movq	192(%rsp), %rax         # 8-byte Reload
	subq	160(%rsp), %rax         # 8-byte Folded Reload
	subq	64(%rsp), %rax          # 8-byte Folded Reload
	sarq	%rax
	cqto
	idivq	%r10
	movq	288(%rsp), %rdx         # 8-byte Reload
	movl	%eax, 1348(%rdx)
	movl	$0, 1352(%rdx)
.LBB2_80:                               # %cleanup.565
	movl	%ecx, %eax
	addq	$2184, %rsp             # imm = 0x888
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_render_frac, .Lfunc_end2-image_render_frac
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1199570688              # float 65535
	.text
	.align	16, 0x90
	.type	image_render_icc16,@function
image_render_icc16:                     # @image_render_icc16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	subq	$2104, %rsp             # imm = 0x838
.Ltmp26:
	.cfi_def_cfa_offset 2160
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movl	%ecx, %r15d
	movq	%rdi, %rbx
	movzbl	579(%rbx), %r14d
	movl	%r15d, %r13d
	xorl	%ecx, %ecx
	testl	%r8d, %r8d
	je	.LBB3_93
# BB#1:                                 # %if.end
	cmpq	$0, 24448(%rbx)
	je	.LBB3_2
# BB#3:                                 # %if.end.17
	movq	1216(%rbx), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	1304(%rbx), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movl	1264(%rbx), %eax
	movl	%eax, 276(%rsp)         # 4-byte Spill
	movslq	%edx, %rax
	imulq	%r14, %rax
	leaq	(%rsi,%rax,2), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movl	24792(%rbx), %r12d
	movl	24800(%rbx), %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	24804(%rbx), %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	leaq	320(%rsp), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	movq	1224(%rbx), %rdi
	callq	gs_color_space_is_PSCIE
	movq	$gx_dc_type_data_none, 1448(%rsp)
	movq	$gx_dc_type_data_none, 792(%rsp)
	leaq	312(%rsp), %rsi
	movq	%rbp, %rdi
	callq	*1680(%rbp)
	movl	%eax, 172(%rsp)         # 4-byte Spill
	movq	312(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, %ecx
	testl	%r12d, %r12d
	jne	.LBB3_6
# BB#4:                                 # %if.end.17
	movq	24448(%rbx), %rax
	movl	116(%rax), %eax
	testl	%eax, %eax
	je	.LBB3_6
# BB#5:                                 # %if.then.36
	movq	144(%rsp), %r15         # 8-byte Reload
	leaq	(%r15,%r13,2), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%r15, %rax
	movq	%r14, %r13
	movq	%rax, %r14
	movl	%r13d, %r12d
	jmp	.LBB3_54
.LBB3_2:                                # %if.then.16
	movl	$.L__func__.image_render_icc16, %edi
	movl	$.L.str, %esi
	movl	$630, %edx              # imm = 0x276
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %ecx
	jmp	.LBB3_93
.LBB3_6:                                # %if.else.39
	movl	%r12d, 304(%rsp)        # 4-byte Spill
	movq	%rbx, 256(%rsp)         # 8-byte Spill
	movq	%rbp, 160(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movslq	%ecx, %rbp
	movq	%r13, %rax
	imulq	%rbp, %rax
	addq	%rax, %rax
	xorl	%edx, %edx
	divq	%r14
	movq	%rax, %r12
	movl	$.L__func__.image_render_icc16, %edx
	movl	%r12d, %esi
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	callq	*64(%rdi)
	movq	%rax, %rcx
	imull	%r15d, %ebp
	xorl	%edx, %edx
	movl	%ebp, %eax
	divl	%r14d
	leaq	(%rcx,%rax,2), %r11
	movq	24448(%rbx), %rax
	cmpl	$0, 116(%rax)
	je	.LBB3_23
# BB#7:                                 # %if.then.56
	movq	136(%rsp), %r10         # 8-byte Reload
	cmpq	%r11, %rcx
	movq	%rcx, %r12
	jae	.LBB3_8
# BB#13:                                # %for.cond.preheader.lr.ph.i
	movq	%r14, %r13
	movl	%r13d, %r9d
	decl	%r9d
	incq	%r9
	movq	256(%rsp), %rax         # 8-byte Reload
	leaq	1784(%rax), %r8
	movss	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	%r12, %rbx
	movq	144(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rbp
	.align	16, 0x90
.LBB3_14:                               # %for.cond.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
	testb	%r13b, %r13b
	movl	%r13d, %edi
	movq	%r8, %rcx
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	je	.LBB3_10
	.align	16, 0x90
.LBB3_15:                               # %for.body.i
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	68(%rcx), %eax
	cmpl	$2, %eax
	je	.LBB3_20
# BB#16:                                # %for.body.i
                                        #   in Loop: Header=BB3_15 Depth=2
	cmpl	$1, %eax
	jne	.LBB3_17
# BB#19:                                # %sw.bb.2.i
                                        #   in Loop: Header=BB3_15 Depth=2
	movzwl	(%rsi), %eax
	shrq	$2, %rax
	andl	$16380, %eax            # imm = 0x3FFC
	movss	(%rcx,%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB3_21
	.align	16, 0x90
.LBB3_20:                               # %sw.bb.15.i
                                        #   in Loop: Header=BB3_15 Depth=2
	movzwl	(%rsi), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	64(%rcx), %xmm1
	addss	(%rcx), %xmm1
.LBB3_21:                               # %sw.epilog.i
                                        #   in Loop: Header=BB3_15 Depth=2
	mulss	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	minss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	maxss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	movw	%ax, (%rdx)
	jmp	.LBB3_22
	.align	16, 0x90
.LBB3_17:                               # %for.body.i
                                        #   in Loop: Header=BB3_15 Depth=2
	testl	%eax, %eax
	jne	.LBB3_22
# BB#18:                                # %sw.bb.i
                                        #   in Loop: Header=BB3_15 Depth=2
	movw	(%rsi), %ax
	movw	%ax, (%rdx)
	.align	16, 0x90
.LBB3_22:                               # %sw.epilog.i
                                        #   in Loop: Header=BB3_15 Depth=2
	addq	$2, %rdx
	addq	$2, %rsi
	addq	$332, %rcx              # imm = 0x14C
	decl	%edi
	jne	.LBB3_15
# BB#9:                                 # %for.cond.while.cond.loopexit_crit_edge.i
                                        #   in Loop: Header=BB3_14 Depth=1
	leaq	(%rbp,%r9,2), %rbp
	leaq	(%rbx,%r9,2), %rbx
.LBB3_10:                               # %while.cond.loopexit.i
                                        #   in Loop: Header=BB3_14 Depth=1
	cmpq	%r11, %rbx
	jb	.LBB3_14
# BB#11:
	movq	%r11, 248(%rsp)         # 8-byte Spill
	movq	%r12, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	160(%rsp), %rbp         # 8-byte Reload
	movq	256(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB3_12
.LBB3_23:                               # %if.else.57
	movq	%r11, 248(%rsp)         # 8-byte Spill
	movq	%rcx, 296(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	movl	%r15d, %eax
	divl	%r14d
	movl	%eax, %ebp
	addl	%r15d, %r15d
	movl	%ebp, 24(%rsp)
	movl	%r15d, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	leaq	488(%rsp), %rdi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r14d, %esi
	callq	gsicc_init_buffer
	movq	136(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	imull	%ebp, %eax
	addl	%eax, %eax
	movl	%ebp, 24(%rsp)
	movl	%eax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movzbl	%cl, %esi
	leaq	448(%rsp), %rdi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	gsicc_init_buffer
	cmpl	$0, 304(%rsp)           # 4-byte Folded Reload
	je	.LBB3_52
# BB#24:                                # %if.then.65
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L__func__.image_render_icc16, %edx
	movl	%r12d, %esi
	callq	*64(%rdi)
	movq	%rax, %rbx
	leaq	(%rbx,%r13,2), %r15
	movq	256(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 24808(%rax)
	je	.LBB3_25
# BB#38:                                # %if.else.82
	movq	1224(%rax), %rdi
	movq	%rax, %r12
	callq	get_cie_range
	cmpq	%r15, %rbx
	movq	%rbx, 304(%rsp)         # 8-byte Spill
	movq	%r14, %r13
	jae	.LBB3_51
# BB#39:                                # %for.cond.preheader.lr.ph.i.280
	leal	-1(%r13), %r9d
	incq	%r9
	leaq	1784(%r12), %r8
	movss	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	304(%rsp), %r11         # 8-byte Reload
	movq	144(%rsp), %r10         # 8-byte Reload
	.align	16, 0x90
.LBB3_42:                               # %for.cond.preheader.i.286
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_43 Depth 2
	testb	%r13b, %r13b
	movl	%r13d, %ebp
	movq	%r8, %rdx
	movq	%rax, %rbx
	movq	%r11, %rsi
	movq	%r10, %rdi
	je	.LBB3_41
	.align	16, 0x90
.LBB3_43:                               # %for.body.i.291
                                        #   Parent Loop BB3_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	68(%rdx), %ecx
	cmpl	$2, %ecx
	je	.LBB3_48
# BB#44:                                # %for.body.i.291
                                        #   in Loop: Header=BB3_43 Depth=2
	cmpl	$1, %ecx
	jne	.LBB3_45
# BB#47:                                # %sw.bb.2.i.297
                                        #   in Loop: Header=BB3_43 Depth=2
	movzwl	(%rdi), %ecx
	shrq	$2, %rcx
	andl	$16380, %ecx            # imm = 0x3FFC
	movss	(%rdx,%rcx), %xmm1      # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	jmp	.LBB3_49
	.align	16, 0x90
.LBB3_48:                               # %sw.bb.21.i
                                        #   in Loop: Header=BB3_43 Depth=2
	movzwl	(%rdi), %ecx
	cvtsi2ssl	%ecx, %xmm1
	mulss	64(%rdx), %xmm1
	addss	(%rdx), %xmm1
.LBB3_49:                               # %sw.epilog.i.306
                                        #   in Loop: Header=BB3_43 Depth=2
	movq	(%rbx), %xmm2           # xmm2 = mem[0],zero
	subss	%xmm2, %xmm1
	movaps	%xmm2, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	subss	%xmm2, %xmm3
	divss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	minss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	maxss	%xmm2, %xmm1
	cvttss2si	%xmm1, %ecx
	movw	%cx, (%rsi)
	jmp	.LBB3_50
	.align	16, 0x90
.LBB3_45:                               # %for.body.i.291
                                        #   in Loop: Header=BB3_43 Depth=2
	testl	%ecx, %ecx
	jne	.LBB3_50
# BB#46:                                # %sw.bb.i.292
                                        #   in Loop: Header=BB3_43 Depth=2
	movw	(%rdi), %cx
	movw	%cx, (%rsi)
	.align	16, 0x90
.LBB3_50:                               # %sw.epilog.i.306
                                        #   in Loop: Header=BB3_43 Depth=2
	addq	$2, %rsi
	addq	$2, %rdi
	addq	$8, %rbx
	addq	$332, %rdx              # imm = 0x14C
	decl	%ebp
	jne	.LBB3_43
# BB#40:                                # %for.cond.while.cond.loopexit_crit_edge.i.281
                                        #   in Loop: Header=BB3_42 Depth=1
	leaq	(%r10,%r9,2), %r10
	leaq	(%r11,%r9,2), %r11
.LBB3_41:                               # %while.cond.loopexit.i.285
                                        #   in Loop: Header=BB3_42 Depth=1
	cmpq	%r15, %r11
	jb	.LBB3_42
	jmp	.LBB3_51
.LBB3_8:
	movq	%r11, 248(%rsp)         # 8-byte Spill
	movq	%r12, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	160(%rsp), %rbp         # 8-byte Reload
	movq	256(%rsp), %rbx         # 8-byte Reload
	movq	%r14, %r13
	movq	144(%rsp), %r15         # 8-byte Reload
.LBB3_12:                               # %if.end.101
	movq	%r12, %r14
	movq	%r10, %r12
	jmp	.LBB3_54
.LBB3_52:                               # %if.else.94
	movq	256(%rsp), %rax         # 8-byte Reload
	movq	24448(%rax), %rsi
	leaq	488(%rsp), %rdx
	leaq	448(%rsp), %rcx
	movq	160(%rsp), %rbp         # 8-byte Reload
	movq	%rax, %rbx
	movq	%rbp, %rdi
	movq	144(%rsp), %r15         # 8-byte Reload
	movq	%r15, %r8
	movq	296(%rsp), %r12         # 8-byte Reload
	movq	%r12, %r9
	callq	*8(%rsi)
	movq	%r12, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%r14, %r13
	movq	%r12, %r14
	jmp	.LBB3_53
.LBB3_25:                               # %if.then.79
	movq	%rax, %r12
	cmpq	%r15, %rbx
	movq	%rbx, 304(%rsp)         # 8-byte Spill
	movq	%r14, %r13
	jae	.LBB3_51
# BB#26:                                # %for.cond.preheader.lr.ph.i.233
	leal	-1(%r13), %r9d
	incq	%r9
	leaq	1784(%r12), %r8
	movss	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	304(%rsp), %rbx         # 8-byte Reload
	movq	144(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB3_29:                               # %for.cond.preheader.i.242
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_30 Depth 2
	testb	%r13b, %r13b
	movl	%r13d, %edi
	movq	%r8, %rcx
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	je	.LBB3_28
	.align	16, 0x90
.LBB3_30:                               # %for.body.i.249
                                        #   Parent Loop BB3_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	68(%rcx), %eax
	cmpl	$2, %eax
	je	.LBB3_35
# BB#31:                                # %for.body.i.249
                                        #   in Loop: Header=BB3_30 Depth=2
	cmpl	$1, %eax
	jne	.LBB3_32
# BB#34:                                # %sw.bb.2.i.260
                                        #   in Loop: Header=BB3_30 Depth=2
	movzwl	(%rsi), %eax
	shrq	$2, %rax
	andl	$16380, %eax            # imm = 0x3FFC
	movss	(%rcx,%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB3_36
	.align	16, 0x90
.LBB3_35:                               # %sw.bb.15.i.272
                                        #   in Loop: Header=BB3_30 Depth=2
	movzwl	(%rsi), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	64(%rcx), %xmm1
	addss	(%rcx), %xmm1
.LBB3_36:                               # %sw.epilog.i.278
                                        #   in Loop: Header=BB3_30 Depth=2
	mulss	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	minss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	maxss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	movw	%ax, (%rdx)
	jmp	.LBB3_37
	.align	16, 0x90
.LBB3_32:                               # %for.body.i.249
                                        #   in Loop: Header=BB3_30 Depth=2
	testl	%eax, %eax
	jne	.LBB3_37
# BB#33:                                # %sw.bb.i.250
                                        #   in Loop: Header=BB3_30 Depth=2
	movw	(%rsi), %ax
	movw	%ax, (%rdx)
	.align	16, 0x90
.LBB3_37:                               # %sw.epilog.i.278
                                        #   in Loop: Header=BB3_30 Depth=2
	addq	$2, %rdx
	addq	$2, %rsi
	addq	$332, %rcx              # imm = 0x14C
	decl	%edi
	jne	.LBB3_30
# BB#27:                                # %for.cond.while.cond.loopexit_crit_edge.i.235
                                        #   in Loop: Header=BB3_29 Depth=1
	leaq	(%rbp,%r9,2), %rbp
	leaq	(%rbx,%r9,2), %rbx
.LBB3_28:                               # %while.cond.loopexit.i.239
                                        #   in Loop: Header=BB3_29 Depth=1
	cmpq	%r15, %rbx
	jb	.LBB3_29
.LBB3_51:                               # %if.end.87
	movq	24448(%r12), %rsi
	leaq	488(%rsp), %rdx
	leaq	448(%rsp), %rcx
	movq	160(%rsp), %rbp         # 8-byte Reload
	movq	%r12, %rbx
	movq	%rbp, %rdi
	movq	304(%rsp), %r14         # 8-byte Reload
	movq	%r14, %r8
	movq	296(%rsp), %r15         # 8-byte Reload
	movq	%r15, %r9
	callq	*8(%rsi)
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%r14, %rsi
	movq	%r15, %r14
	callq	*24(%rdi)
	movq	%r14, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	144(%rsp), %r15         # 8-byte Reload
.LBB3_53:                               # %if.end.101
	movq	136(%rsp), %r12         # 8-byte Reload
.LBB3_54:                               # %if.end.101
	movq	%r12, 136(%rsp)         # 8-byte Spill
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 256(%rsp)         # 8-byte Spill
	movq	%rbp, 160(%rsp)         # 8-byte Spill
	leaq	(%r15,%r13,2), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	1452(%rbx), %r15d
	movl	%r15d, 180(%rsp)        # 4-byte Spill
	movl	1456(%rbx), %eax
	movl	%eax, 304(%rsp)         # 4-byte Spill
	movl	1460(%rbx), %eax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movl	1464(%rbx), %eax
	movl	%eax, 220(%rsp)         # 4-byte Spill
	movl	1468(%rbx), %eax
	movl	%eax, 216(%rsp)         # 4-byte Spill
	movl	1472(%rbx), %ebp
	movl	%ebp, 176(%rsp)         # 4-byte Spill
	movl	1476(%rbx), %eax
	movl	%eax, 236(%rsp)         # 4-byte Spill
	movl	1480(%rbx), %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	1484(%rbx), %eax
	movl	%eax, 204(%rsp)         # 4-byte Spill
	movl	1372(%rbx), %eax
	movl	1392(%rbx), %ecx
	subl	1356(%rbx), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	subl	1360(%rbx), %ecx
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	leaq	1512(%rbx), %rax
	leaq	1516(%rbx), %rcx
	leaq	1524(%rbx), %rdx
	cmpl	$0, 276(%rsp)           # 4-byte Folded Reload
	cmoveq	%rcx, %rdx
	leaq	1520(%rbx), %rcx
	cmoveq	%rax, %rcx
	movl	%ebp, %eax
	cmovel	%r15d, %eax
	subl	$-128, %eax
	sarl	$8, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	(%rcx), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	(%rdx), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	1488(%rbx), %eax
	movl	%eax, 200(%rsp)         # 4-byte Spill
	leaq	656(%rsp), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	leaq	528(%rsp), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	movw	(%r14), %ax
	movq	%r14, %r13
	notw	%ax
	movw	%ax, 656(%rsp)
	leal	(%r12,%r12), %eax
	cltq
	movq	%rax, 280(%rsp)         # 8-byte Spill
	movslq	%r12d, %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movl	108(%rsp), %ecx         # 4-byte Reload
	orl	112(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	leal	-1(%rax), %ecx
	incq	%rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rcx, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	-16(%rax), %rax
	shrq	$4, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	1448(%rsp), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leaq	792(%rsp), %rax
	movl	%ebp, %r12d
	movl	%r15d, %r14d
	jmp	.LBB3_55
	.align	16, 0x90
.LBB3_84:                               # %if.end.262
                                        #   in Loop: Header=BB3_55 Depth=1
	movl	%eax, 236(%rsp)         # 4-byte Spill
	movl	%ecx, 172(%rsp)         # 4-byte Spill
	movaps	640(%rsp), %xmm0
	movaps	%xmm0, 768(%rsp)
	movaps	624(%rsp), %xmm0
	movaps	%xmm0, 752(%rsp)
	movaps	608(%rsp), %xmm0
	movaps	%xmm0, 736(%rsp)
	movaps	592(%rsp), %xmm0
	movaps	%xmm0, 720(%rsp)
	movaps	528(%rsp), %xmm0
	movaps	544(%rsp), %xmm1
	movaps	560(%rsp), %xmm2
	movaps	576(%rsp), %xmm3
	movaps	%xmm3, 704(%rsp)
	movaps	%xmm2, 688(%rsp)
	movaps	%xmm1, 672(%rsp)
	movaps	%xmm0, 656(%rsp)
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	%rbx, 184(%rsp)         # 8-byte Spill
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movl	%r15d, %ecx
	movl	%ecx, 180(%rsp)         # 4-byte Spill
	movq	264(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 176(%rsp)         # 4-byte Spill
	movl	296(%rsp), %r14d        # 4-byte Reload
.LBB3_55:                               # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_56 Depth 2
                                        #     Child Loop BB3_68 Depth 2
                                        #     Child Loop BB3_72 Depth 2
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	236(%rsp), %ebp         # 4-byte Reload
	.align	16, 0x90
.LBB3_56:                               # %while.cond
                                        #   Parent Loop BB3_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %r9d
	movl	%r12d, %r8d
	movq	248(%rsp), %rax         # 8-byte Reload
	cmpq	%rax, %r13
	jae	.LBB3_85
# BB#57:                                # %do.body.128
                                        #   in Loop: Header=BB3_56 Depth=2
	movl	304(%rsp), %ecx         # 4-byte Reload
	subl	220(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, %r14d
	sarl	$31, %r14d
	movl	%ecx, %r12d
	shrl	$31, %r12d
	andl	216(%rsp), %r14d        # 4-byte Folded Reload
	movq	224(%rsp), %rax         # 8-byte Reload
	leal	(%r9,%rax), %eax
	movl	%eax, 296(%rsp)         # 4-byte Spill
	subl	204(%rsp), %ebp         # 4-byte Folded Reload
	movl	%ebp, %ebx
	sarl	$31, %ebx
	movl	%ebp, %r15d
	shrl	$31, %r15d
	andl	200(%rsp), %ebx         # 4-byte Folded Reload
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	%r8, 264(%rsp)          # 8-byte Spill
	leal	(%r8,%rax), %eax
	movl	%eax, 292(%rsp)         # 4-byte Spill
	movq	256(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 580(%rax)
	je	.LBB3_59
# BB#58:                                #   in Loop: Header=BB3_56 Depth=2
	movq	%r9, 240(%rsp)          # 8-byte Spill
	jmp	.LBB3_60
	.align	16, 0x90
.LBB3_59:                               # %if.else.194
                                        #   in Loop: Header=BB3_56 Depth=2
	movq	%r9, 240(%rsp)          # 8-byte Spill
	movl	%ebp, 236(%rsp)         # 4-byte Spill
	movl	%ecx, 304(%rsp)         # 4-byte Spill
	leaq	528(%rsp), %rdi
	movq	%r13, %rsi
	movq	280(%rsp), %rdx         # 8-byte Reload
	callq	memcpy
	movl	304(%rsp), %ecx         # 4-byte Reload
	movl	236(%rsp), %ebp         # 4-byte Reload
	movq	192(%rsp), %rax         # 8-byte Reload
	leaq	(%r13,%rax,2), %r13
.LBB3_60:                               # %if.end.202
                                        #   in Loop: Header=BB3_56 Depth=2
	addl	%r14d, %ecx
	movl	%ecx, 304(%rsp)         # 4-byte Spill
	movl	296(%rsp), %r14d        # 4-byte Reload
	addl	%r12d, %r14d
	addl	%ebx, %ebp
	movl	292(%rsp), %r12d        # 4-byte Reload
	addl	%r15d, %r12d
	cmpl	$2, 276(%rsp)           # 4-byte Folded Reload
	je	.LBB3_62
# BB#61:                                # %land.lhs.true.205
                                        #   in Loop: Header=BB3_56 Depth=2
	leaq	528(%rsp), %rdi
	leaq	656(%rsp), %rsi
	movq	280(%rsp), %rdx         # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB3_56
.LBB3_62:                               # %for.cond.preheader
                                        #   in Loop: Header=BB3_55 Depth=1
	movq	136(%rsp), %rdi         # 8-byte Reload
	testl	%edi, %edi
	movq	160(%rsp), %r8          # 8-byte Reload
	jle	.LBB3_73
# BB#63:                                # %overflow.checked
                                        #   in Loop: Header=BB3_55 Depth=1
	cmpq	$0, 128(%rsp)           # 8-byte Folded Reload
	movl	$0, %esi
	je	.LBB3_70
# BB#64:                                # %vector.body.preheader
                                        #   in Loop: Header=BB3_55 Depth=1
	cmpq	$0, 48(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB3_66
# BB#65:                                # %vector.body.prol
                                        #   in Loop: Header=BB3_55 Depth=1
	movaps	528(%rsp), %xmm0
	movaps	544(%rsp), %xmm1
	movaps	%xmm0, 320(%rsp)
	movaps	%xmm1, 336(%rsp)
	movl	$16, %edx
.LBB3_66:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB3_55 Depth=1
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	movq	128(%rsp), %rsi         # 8-byte Reload
	je	.LBB3_70
# BB#67:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB3_55 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	subq	%rdx, %rax
	leaq	576(%rsp), %rcx
	leaq	(%rcx,%rdx,2), %rcx
	leaq	368(%rsp), %rsi
	leaq	(%rsi,%rdx,2), %rdx
	.align	16, 0x90
.LBB3_68:                               # %vector.body
                                        #   Parent Loop BB3_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-48(%rcx), %xmm0
	movaps	-32(%rcx), %xmm1
	movaps	%xmm0, -48(%rdx)
	movaps	%xmm1, -32(%rdx)
	movaps	-16(%rcx), %xmm0
	movups	(%rcx), %xmm1
	movaps	%xmm0, -16(%rdx)
	movaps	%xmm1, (%rdx)
	addq	$64, %rcx
	addq	$64, %rdx
	addq	$-32, %rax
	jne	.LBB3_68
# BB#69:                                #   in Loop: Header=BB3_55 Depth=1
	movq	128(%rsp), %rsi         # 8-byte Reload
.LBB3_70:                               # %middle.block
                                        #   in Loop: Header=BB3_55 Depth=1
	cmpq	%rsi, 72(%rsp)          # 8-byte Folded Reload
	je	.LBB3_73
# BB#71:                                # %for.body.preheader
                                        #   in Loop: Header=BB3_55 Depth=1
	leaq	528(%rsp,%rsi,2), %rax
	leaq	320(%rsp,%rsi,2), %rcx
	movl	%edi, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB3_72:                               # %for.body
                                        #   Parent Loop BB3_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	(%rax), %si
	movw	%si, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB3_72
.LBB3_73:                               # %for.end
                                        #   in Loop: Header=BB3_55 Depth=1
	cmpl	$0, 104(%rsp)           # 4-byte Folded Reload
	movq	152(%rsp), %rbx         # 8-byte Reload
	je	.LBB3_75
# BB#74:                                # %if.then.223
                                        #   in Loop: Header=BB3_55 Depth=1
	movl	%ebp, 236(%rsp)         # 4-byte Spill
	movl	%r14d, 296(%rsp)        # 4-byte Spill
	movl	$1, (%rsp)
	leaq	320(%rsp), %rdi
	movq	%rbx, %rsi
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	%r8, %rcx
	movq	%r8, %r14
	movl	108(%rsp), %r8d         # 4-byte Reload
	movl	112(%rsp), %r9d         # 4-byte Reload
	callq	cmap_transfer_halftone
	movq	144(%rsp), %rbp         # 8-byte Reload
	movq	240(%rsp), %r15         # 8-byte Reload
	jmp	.LBB3_77
	.align	16, 0x90
.LBB3_75:                               # %if.else.225
                                        #   in Loop: Header=BB3_55 Depth=1
	movl	%ebp, 236(%rsp)         # 4-byte Spill
	movl	%r14d, 296(%rsp)        # 4-byte Spill
	movq	%r8, %rdi
	leaq	320(%rsp), %rsi
	movq	%r8, %rbp
	callq	*1552(%rbp)
	movq	%rbp, %r14
	cmpq	$-1, %rax
	movq	144(%rsp), %rbp         # 8-byte Reload
	movq	240(%rsp), %r15         # 8-byte Reload
	je	.LBB3_77
# BB#76:                                # %if.then.231
                                        #   in Loop: Header=BB3_55 Depth=1
	movq	%rax, 8(%rbx)
	movq	$gx_dc_type_data_pure, (%rbx)
.LBB3_77:                               # %if.end.234
                                        #   in Loop: Header=BB3_55 Depth=1
	cmpl	$0, 276(%rsp)           # 4-byte Folded Reload
	je	.LBB3_79
# BB#78:                                # %if.then.237
                                        #   in Loop: Header=BB3_55 Depth=1
	movl	%r15d, %ecx
	movl	180(%rsp), %esi         # 4-byte Reload
	subl	%esi, %ecx
	movq	264(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	movl	176(%rsp), %edx         # 4-byte Reload
	subl	%edx, %r8d
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	88(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	movl	92(%rsp), %r9d          # 4-byte Reload
	callq	*1368(%rdi)
	movl	%eax, %ecx
	movl	236(%rsp), %eax         # 4-byte Reload
	jmp	.LBB3_83
	.align	16, 0x90
.LBB3_79:                               # %if.else.242
                                        #   in Loop: Header=BB3_55 Depth=1
	movl	%r12d, 292(%rsp)        # 4-byte Spill
	subl	$-128, %r15d
	movl	%r15d, %ebp
	sarl	$8, %ebp
	movl	%ebp, %eax
	movl	84(%rsp), %esi          # 4-byte Reload
	subl	%esi, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB3_80
# BB#81:                                # %if.then.254
                                        #   in Loop: Header=BB3_55 Depth=1
	testl	%eax, %eax
	cmovsl	%ebp, %esi
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	movl	116(%rsp), %edx         # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	40(%rsp), %edx          # 4-byte Reload
	movl	44(%rsp), %r8d          # 4-byte Reload
	movq	%r14, %r9
	callq	*40(%rax)
	movl	%eax, %ecx
	movl	180(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r15d
	movl	%ebp, 84(%rsp)          # 4-byte Spill
	movl	176(%rsp), %eax         # 4-byte Reload
	movq	%rax, 264(%rsp)         # 8-byte Spill
	jmp	.LBB3_82
.LBB3_80:                               #   in Loop: Header=BB3_55 Depth=1
	movl	180(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r15d
	movl	%ebp, 84(%rsp)          # 4-byte Spill
	movl	176(%rsp), %eax         # 4-byte Reload
	movq	%rax, 264(%rsp)         # 8-byte Spill
	movl	172(%rsp), %ecx         # 4-byte Reload
.LBB3_82:                               # %if.end.258
                                        #   in Loop: Header=BB3_55 Depth=1
	movl	292(%rsp), %r12d        # 4-byte Reload
	movl	236(%rsp), %eax         # 4-byte Reload
	movq	144(%rsp), %rbp         # 8-byte Reload
.LBB3_83:                               # %if.end.258
                                        #   in Loop: Header=BB3_55 Depth=1
	testl	%ecx, %ecx
	jns	.LBB3_84
# BB#92:                                # %err
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L__func__.image_render_icc16, %edx
	movq	64(%rsp), %rsi          # 8-byte Reload
	movl	%ecx, %ebx
	callq	*24(%rdi)
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rcx), %rdx
	movq	96(%rsp), %rax          # 8-byte Reload
	subq	%rdx, %rax
	subq	%rbp, %rax
	sarq	%rax
	cqto
	idivq	%rcx
	movq	256(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 1348(%rcx)
	movl	$0, 1352(%rcx)
	movl	%ebx, %ecx
	jmp	.LBB3_93
.LBB3_85:                               # %while.end
	cmpl	$0, 276(%rsp)           # 4-byte Folded Reload
	je	.LBB3_87
# BB#86:                                # %if.then.272
	movl	180(%rsp), %esi         # 4-byte Reload
	subl	%esi, %r9d
	movl	176(%rsp), %edx         # 4-byte Reload
	subl	%edx, %r8d
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	88(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	160(%rsp), %rdi         # 8-byte Reload
	movl	%r9d, %ecx
	movl	92(%rsp), %r9d          # 4-byte Reload
	callq	*1368(%rdi)
	movl	%eax, 172(%rsp)         # 4-byte Spill
	movq	64(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB3_89
.LBB3_87:                               # %if.else.278
	subl	$-128, %r9d
	sarl	$8, %r9d
	movl	%r9d, %eax
	movl	84(%rsp), %esi          # 4-byte Reload
	subl	%esi, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	testl	%ecx, %ecx
	movq	64(%rsp), %rbx          # 8-byte Reload
	jle	.LBB3_89
# BB#88:                                # %if.then.292
	testl	%eax, %eax
	cmovsl	%r9d, %esi
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	movl	116(%rsp), %edx         # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	40(%rsp), %edx          # 4-byte Reload
	movl	44(%rsp), %r8d          # 4-byte Reload
	movq	160(%rsp), %r9          # 8-byte Reload
	callq	*40(%rax)
	movl	%eax, 172(%rsp)         # 4-byte Spill
.LBB3_89:                               # %if.end.297
	testq	%rbx, %rbx
	movl	172(%rsp), %ecx         # 4-byte Reload
	je	.LBB3_91
# BB#90:                                # %if.then.300
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L__func__.image_render_icc16, %edx
	movq	%rbx, %rsi
	movl	%ecx, %ebx
	callq	*24(%rdi)
	movl	%ebx, %ecx
.LBB3_91:                               # %if.end.305
	testl	%ecx, %ecx
	movl	$1, %eax
	cmovnsl	%eax, %ecx
.LBB3_93:                               # %cleanup
	movl	%ecx, %eax
	addq	$2104, %rsp             # imm = 0x838
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image_render_icc16, .Lfunc_end3-image_render_icc16
	.cfi_endproc

	.type	sample_unpack_12_proc,@object # @sample_unpack_12_proc
	.section	.rodata,"a",@progbits
	.globl	sample_unpack_12_proc
	.align	8
sample_unpack_12_proc:
	.quad	sample_unpack_12
	.size	sample_unpack_12_proc, 8

	.type	.L__func__.image_render_icc16,@object # @__func__.image_render_icc16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.image_render_icc16:
	.asciz	"image_render_icc16"
	.size	.L__func__.image_render_icc16, 19

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"./base/gxi12bit.c"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ICC Link not created during image render icc16"
	.size	.L.str.1, 47

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image_render_color_icc"
	.size	.L.str.2, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
