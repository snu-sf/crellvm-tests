	.text
	.file	"gxblend1.bc"
	.globl	pdf14_unpack_additive
	.align	16, 0x90
	.type	pdf14_unpack_additive,@function
pdf14_unpack_additive:                  # @pdf14_unpack_additive
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edi, %edi
	jle	.LBB0_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edi, %rax
	incq	%rax
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%sil, -2(%rcx,%rax)
	shrq	$8, %rsi
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB0_2
.LBB0_3:                                # %for.end
	retq
.Lfunc_end0:
	.size	pdf14_unpack_additive, .Lfunc_end0-pdf14_unpack_additive
	.cfi_endproc

	.globl	pdf14_unpack_subtractive
	.align	16, 0x90
	.type	pdf14_unpack_subtractive,@function
pdf14_unpack_subtractive:               # @pdf14_unpack_subtractive
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edi, %edi
	jle	.LBB1_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edi, %rax
	incq	%rax
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%sil, %dl
	notb	%dl
	movb	%dl, -2(%rcx,%rax)
	shrq	$8, %rsi
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB1_2
.LBB1_3:                                # %for.end
	retq
.Lfunc_end1:
	.size	pdf14_unpack_subtractive, .Lfunc_end1-pdf14_unpack_subtractive
	.cfi_endproc

	.globl	pdf14_unpack_compressed
	.align	16, 0x90
	.type	pdf14_unpack_compressed,@function
pdf14_unpack_compressed:                # @pdf14_unpack_compressed
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %rbx
	movl	%edi, %r15d
	movq	3088(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_1
# BB#4:                                 # %if.else
	movq	%rbx, %rdi
	callq	find_bit_map
	movswq	2(%rax), %rdx
	movl	num_comp_bits(,%rdx,4), %r9d
	movl	$1, %r10d
	movb	%r9b, %cl
	shll	%cl, %r10d
	decl	%r10d
	movl	comp_bit_factor(,%rdx,4), %r8d
	movb	$-1, %r11b
	cmpl	$0, 4(%rax)
	je	.LBB2_6
# BB#5:                                 # %if.then.13
	movl	%r10d, %ecx
	andl	%ebx, %ecx
	imull	%r8d, %ecx
	shrl	$16, %ecx
	movl	$255, %r11d
	subl	%ecx, %r11d
	movb	%r9b, %cl
	shrq	%cl, %rbx
.LBB2_6:                                # %if.end
	testl	%r15d, %r15d
	jle	.LBB2_14
# BB#7:                                 # %for.body.23.lr.ph
	movl	%r15d, %edx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB2_8:                                # %for.body.23
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rbp
	movl	$1, %edi
	movb	%sil, %cl
	shlq	%cl, %rdi
	btq	%rsi, %rbp
	jae	.LBB2_12
# BB#9:                                 # %if.then.29
                                        #   in Loop: Header=BB2_8 Depth=1
	testq	16(%rax), %rdi
	je	.LBB2_11
# BB#10:                                # %if.then.35
                                        #   in Loop: Header=BB2_8 Depth=1
	movb	%r11b, (%r14,%rsi)
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_12:                               # %if.else.48
                                        #   in Loop: Header=BB2_8 Depth=1
	movb	$-1, (%r14,%rsi)
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_11:                               # %if.else.37
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	%ebx, %ecx
	andl	%r10d, %ecx
	imull	%r8d, %ecx
	shrl	$16, %ecx
	movl	$255, %edi
	subl	%ecx, %edi
	movb	%dil, (%r14,%rsi)
	movb	%r9b, %cl
	shrq	%cl, %rbx
.LBB2_13:                               # %for.inc.51
                                        #   in Loop: Header=BB2_8 Depth=1
	incq	%rsi
	cmpl	%esi, %edx
	jne	.LBB2_8
	jmp	.LBB2_14
.LBB2_1:                                # %for.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB2_14
# BB#2:                                 # %for.body.lr.ph
	movslq	%r15d, %rax
	incq	%rax
	.align	16, 0x90
.LBB2_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%bl, %cl
	notb	%cl
	movb	%cl, -2(%r14,%rax)
	shrq	$8, %rbx
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB2_3
.LBB2_14:                               # %if.end.53
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pdf14_unpack_compressed, .Lfunc_end2-pdf14_unpack_compressed
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
.LCPI3_1:
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
.LCPI3_2:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	pdf14_unpack_custom
	.align	16, 0x90
	.type	pdf14_unpack_custom,@function
pdf14_unpack_custom:                    # @pdf14_unpack_custom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 160
.Ltmp12:
	.cfi_offset %rbx, -24
.Ltmp13:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movl	%edi, %r14d
	movq	1728(%rdx), %rdi
	leaq	(%rsp), %rdx
	callq	*1560(%rdi)
	testl	%r14d, %r14d
	jle	.LBB3_8
# BB#1:                                 # %for.body.preheader
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %r8
	xorl	%esi, %esi
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	movq	%r8, %rdx
	andq	%rax, %rdx
	je	.LBB3_5
# BB#2:                                 # %vector.body.preheader
	leaq	8(%rsp), %rsi
	leaq	4(%rbx), %rdi
	incq	%rcx
	andq	%rax, %rcx
	pxor	%xmm0, %xmm0
	movdqa	.LCPI3_0(%rip), %xmm1   # xmm1 = [65281,65281,65281,65281]
	movdqa	.LCPI3_1(%rip), %xmm2   # xmm2 = [8388608,8388608,8388608,8388608]
	movdqa	.LCPI3_2(%rip), %xmm3   # xmm3 = [255,255,255,255]
	.align	16, 0x90
.LBB3_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm4         # xmm4 = mem[0],zero
	movq	(%rsi), %xmm5           # xmm5 = mem[0],zero
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	punpcklwd	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	pshufd	$245, %xmm4, %xmm6      # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	pshufd	$245, %xmm5, %xmm6      # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	paddd	%xmm2, %xmm4
	paddd	%xmm2, %xmm5
	psrld	$24, %xmm4
	psrld	$24, %xmm5
	pxor	%xmm3, %xmm4
	pxor	%xmm3, %xmm5
	pand	%xmm3, %xmm4
	packuswb	%xmm4, %xmm4
	packuswb	%xmm4, %xmm4
	movd	%xmm4, -4(%rdi)
	pand	%xmm3, %xmm5
	packuswb	%xmm5, %xmm5
	packuswb	%xmm5, %xmm5
	movd	%xmm5, (%rdi)
	addq	$16, %rsi
	addq	$8, %rdi
	addq	$-8, %rcx
	jne	.LBB3_3
# BB#4:
	movq	%rdx, %rsi
.LBB3_5:                                # %middle.block
	cmpq	%rsi, %r8
	je	.LBB3_8
# BB#6:                                 # %for.body.preheader13
	leaq	(%rsp,%rsi,2), %rax
	addq	%rsi, %rbx
	subl	%esi, %r14d
	.align	16, 0x90
.LBB3_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	notl	%ecx
	movb	%cl, (%rbx)
	addq	$2, %rax
	incq	%rbx
	decl	%r14d
	jne	.LBB3_7
.LBB3_8:                                # %for.end
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	pdf14_unpack_custom, .Lfunc_end3-pdf14_unpack_custom
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	2                       # 0x2
	.text
	.globl	pdf14_preserve_backdrop_cm
	.align	16, 0x90
	.type	pdf14_preserve_backdrop_cm,@function
pdf14_preserve_backdrop_cm:             # @pdf14_preserve_backdrop_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp20:
	.cfi_def_cfa_offset 320
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%r8, %r10
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	%rsi, %r11
	movl	44(%rdi), %eax
	movl	48(%rdi), %r12d
	movl	44(%rdx), %r15d
	movl	48(%rdx), %r13d
	cmpl	%r15d, %eax
	cmovgel	%eax, %r15d
	movl	52(%rdi), %eax
	movl	52(%rdx), %esi
	cmpl	%esi, %eax
	cmovlel	%eax, %esi
	cmpl	%r13d, %r12d
	movl	%r13d, %ebx
	cmovgel	%r12d, %ebx
	movl	56(%rdi), %ecx
	movl	56(%rdx), %r14d
	cmpl	%r14d, %ecx
	movl	%r14d, %ebp
	cmovlel	%ecx, %ebp
	xorl	%eax, %eax
	subl	%r15d, %esi
	jle	.LBB4_19
# BB#1:                                 # %entry
	subl	%ebx, %ebp
	jle	.LBB4_19
# BB#2:                                 # %if.then
	movl	%ebp, 136(%rsp)         # 4-byte Spill
	movl	%esi, 140(%rsp)         # 4-byte Spill
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	%rdi, %rbp
	movl	%ecx, 124(%rsp)         # 4-byte Spill
	movq	320(%rsp), %rsi
	movl	$0, 260(%rsp)
	movaps	.LCPI4_0(%rip), %xmm0   # xmm0 = [0,1,8,2]
	movaps	%xmm0, 240(%rsp)
	movl	$0, 256(%rsp)
	movl	$0, (%rsp)
	leaq	240(%rsp), %r8
	movq	%r9, %rdi
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	%r11, %rcx
	movq	%r11, 128(%rsp)         # 8-byte Spill
	movq	%r10, %r9
	callq	gsicc_get_link_profile
	testq	%rax, %rax
	je	.LBB4_3
# BB#4:                                 # %if.end
	movl	328(%rsp), %edx
	cmpl	$0, 116(%rax)
	je	.LBB4_6
# BB#5:                                 # %if.then.65
	movq	%rbp, %rdi
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	%rax, %rbx
	callq	pdf14_preserve_backdrop
	movq	%rbx, %rdi
	callq	gsicc_release_link
	jmp	.LBB4_18
.LBB4_3:                                # %if.then.63
	movl	$.L__func__.pdf14_preserve_backdrop_cm, %edi
	movl	$.L.str, %esi
	movl	$212, %edx
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB4_19
.LBB4_6:                                # %if.else
	testl	%edx, %edx
	je	.LBB4_8
# BB#7:                                 # %if.then.67
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%r14d, 64(%rsp)         # 4-byte Spill
	movl	%r13d, 68(%rsp)         # 4-byte Spill
	movl	%r12d, 120(%rsp)        # 4-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	8(%rbp), %rdi
	movslq	%r15d, %rax
	leaq	(%rdi,%rax), %rcx
	movslq	44(%rbp), %rdx
	subq	%rdx, %rcx
	movslq	48(%rbp), %rdx
	movslq	%ebx, %rbx
	movq	%rbx, %rsi
	subq	%rdx, %rsi
	leaq	60(%rbp), %r12
	movslq	60(%rbp), %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	144(%rsp), %r15         # 8-byte Reload
	addq	8(%r15), %rax
	movslq	44(%r15), %rcx
	subq	%rcx, %rax
	movslq	48(%r15), %rcx
	subq	%rcx, %rbx
	leaq	60(%r15), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movslq	60(%r15), %rcx
	imulq	%rbx, %rcx
	addq	%rax, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leaq	68(%rbp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	64(%rbp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movslq	64(%rbp), %rax
	movslq	68(%rbp), %rdx
	imulq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.99
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%r14d, 64(%rsp)         # 4-byte Spill
	movl	%r13d, 68(%rsp)         # 4-byte Spill
	movl	%r12d, 120(%rsp)        # 4-byte Spill
	movq	%rbp, %r14
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movq	80(%r14), %rdi
	movslq	%r15d, %rax
	leaq	(%rdi,%rax), %rcx
	movslq	44(%r14), %rdx
	subq	%rdx, %rcx
	movslq	48(%r14), %rdx
	movslq	%ebx, %rbx
	movq	%rbx, %rsi
	subq	%rdx, %rsi
	leaq	60(%r14), %r12
	movslq	60(%r14), %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	144(%rsp), %r15         # 8-byte Reload
	addq	80(%r15), %rax
	movslq	44(%r15), %rcx
	subq	%rcx, %rax
	movslq	48(%r15), %rcx
	subq	%rcx, %rbx
	leaq	60(%r15), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movslq	60(%r15), %rcx
	imulq	%rbx, %rcx
	addq	%rax, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leaq	64(%r14), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movslq	64(%r14), %rax
	movslq	72(%r14), %rdx
	imulq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
	leaq	68(%r14), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
.LBB4_9:                                # %if.end.138
	movl	140(%rsp), %ebx         # 4-byte Reload
	movl	136(%rsp), %r14d        # 4-byte Reload
	movq	%r12, 72(%rsp)          # 8-byte Spill
	movl	%ebx, 140(%rsp)         # 4-byte Spill
	movl	60(%r15), %eax
	movl	64(%r15), %ecx
	movq	152(%rsp), %rdx         # 8-byte Reload
	movzbl	(%rdx), %esi
	movl	%ebx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	leaq	200(%rsp), %rbp
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rbp, %rdi
	callq	gsicc_init_buffer
	movq	88(%rsp), %r13          # 8-byte Reload
	movl	(%r13), %eax
	movl	(%r12), %ecx
	movq	128(%rsp), %rdx         # 8-byte Reload
	movzbl	(%rdx), %esi
	movl	%ebx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	160(%rsp), %r12
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%r12, %rdi
	callq	gsicc_init_buffer
	movq	320(%rsp), %rdi
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	movq	96(%rsp), %r12          # 8-byte Reload
	movq	%r12, %r8
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %r9
	callq	*8(%rbx)
	movq	%rbx, %rdi
	callq	gsicc_release_link
	movq	80(%rsp), %rax          # 8-byte Reload
	movslq	(%rax), %rax
	decq	%rax
	movslq	(%r13), %rcx
	imulq	%rax, %rcx
	addq	%rbp, %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movslq	68(%r15), %rax
	decq	%rax
	movslq	64(%r15), %rcx
	imulq	%rax, %rcx
	addq	%r12, %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB4_12
# BB#10:                                # %for.body.lr.ph.i
	movslq	140(%rsp), %r15         # 4-byte Folded Reload
	movq	72(%rsp), %rax          # 8-byte Reload
	movslq	(%rax), %r12
	movq	56(%rsp), %rax          # 8-byte Reload
	movslq	(%rax), %r14
	movl	120(%rsp), %r13d        # 4-byte Reload
	movl	68(%rsp), %ecx          # 4-byte Reload
	cmpl	%r13d, %ecx
	cmovgel	%ecx, %r13d
	notl	%r13d
	movl	124(%rsp), %eax         # 4-byte Reload
	notl	%eax
	movl	64(%rsp), %ecx          # 4-byte Reload
	notl	%ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	subl	%ecx, %r13d
	movq	152(%rsp), %rbp         # 8-byte Reload
	movq	128(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB4_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r12, %rbp
	addq	%r14, %rbx
	decl	%r13d
	jne	.LBB4_11
.LBB4_12:                               # %copy_plane_part.exit
	cmpl	$0, 328(%rsp)
	movl	120(%rsp), %r13d        # 4-byte Reload
	movq	144(%rsp), %rdx         # 8-byte Reload
	jne	.LBB4_18
# BB#13:                                # %if.then.166
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpl	$0, 36(%rcx)
	setne	%al
	cmpl	$1, 32(%rcx)
	movzbl	%al, %ebp
	sbbl	$-1, %ebp
	cmpl	$0, 36(%rdx)
	setne	%al
	cmpl	$1, 32(%rdx)
	movzbl	%al, %ebx
	sbbl	$-1, %ebx
	cmpl	$0, 40(%rcx)
	je	.LBB4_18
# BB#14:                                # %if.then.i
	cmpl	$0, 136(%rsp)           # 4-byte Folded Reload
	jle	.LBB4_18
# BB#15:                                # %if.then.i
	movl	40(%rdx), %eax
	testl	%eax, %eax
	je	.LBB4_18
# BB#16:                                # %for.body.lr.ph.i.i
	movslq	64(%rdx), %rax
	movq	128(%rsp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movslq	64(%rcx), %rcx
	movq	152(%rsp), %rdx         # 8-byte Reload
	addq	%rcx, %rdx
	imulq	%rcx, %rbp
	addq	%rdx, %rbp
	imulq	%rax, %rbx
	addq	%rsi, %rbx
	movslq	140(%rsp), %r14         # 4-byte Folded Reload
	movq	72(%rsp), %rax          # 8-byte Reload
	movslq	(%rax), %r15
	movq	56(%rsp), %rax          # 8-byte Reload
	movslq	(%rax), %r12
	movl	68(%rsp), %eax          # 4-byte Reload
	cmpl	%r13d, %eax
	cmovgel	%eax, %r13d
	notl	%r13d
	movl	124(%rsp), %ecx         # 4-byte Reload
	notl	%ecx
	movl	64(%rsp), %eax          # 4-byte Reload
	notl	%eax
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	subl	%eax, %r13d
	.align	16, 0x90
.LBB4_17:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r15, %rbp
	addq	%r12, %rbx
	decl	%r13d
	jne	.LBB4_17
.LBB4_18:                               # %cleanup.thread
	xorl	%eax, %eax
.LBB4_19:                               # %cleanup.176
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pdf14_preserve_backdrop_cm, .Lfunc_end4-pdf14_preserve_backdrop_cm
	.cfi_endproc

	.globl	pdf14_preserve_backdrop
	.align	16, 0x90
	.type	pdf14_preserve_backdrop,@function
pdf14_preserve_backdrop:                # @pdf14_preserve_backdrop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 128
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movslq	44(%r15), %r14
	movslq	44(%rbp), %r11
	cmpl	%r11d, %r14d
	movl	%r11d, %ebx
	cmovgel	%r14d, %ebx
	movl	48(%r15), %esi
	movl	%esi, 20(%rsp)          # 4-byte Spill
	movl	52(%r15), %ecx
	movl	48(%rbp), %edi
	movl	%edi, 16(%rsp)          # 4-byte Spill
	movl	52(%rbp), %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	cmpl	%edi, %esi
	movl	%edi, %ecx
	cmovgel	%esi, %ecx
	movl	56(%r15), %edi
	movl	%edi, 8(%rsp)           # 4-byte Spill
	movl	56(%rbp), %esi
	movl	%esi, 12(%rsp)          # 4-byte Spill
	cmpl	%esi, %edi
	movl	%esi, %r13d
	cmovlel	%edi, %r13d
	subl	%ebx, %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	jle	.LBB5_18
# BB#1:                                 # %entry
	subl	%ecx, %r13d
	movl	%r13d, 28(%rsp)         # 4-byte Spill
	jle	.LBB5_18
# BB#2:                                 # %if.then
	movl	60(%r15), %eax
	movl	64(%r15), %r8d
	movl	60(%rbp), %r9d
	testl	%edx, %edx
	je	.LBB5_4
# BB#3:                                 # %if.then.62
	movl	%edx, (%rsp)            # 4-byte Spill
	movq	8(%r15), %rdi
	movslq	%ebx, %rbx
	leaq	(%rdi,%rbx), %r10
	subq	%r14, %r10
	movl	%ecx, %esi
	subl	20(%rsp), %esi          # 4-byte Folded Reload
	imull	%esi, %eax
	movslq	%eax, %r12
	addq	%r10, %r12
	addq	8(%rbp), %rbx
	subq	%r11, %rbx
	subl	16(%rsp), %ecx          # 4-byte Folded Reload
	imull	%ecx, %r9d
	movslq	%r9d, %r14
	addq	%rbx, %r14
	imull	68(%r15), %r8d
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movl	%edx, (%rsp)            # 4-byte Spill
	movq	80(%r15), %rdi
	movslq	%ebx, %rbx
	leaq	(%rdi,%rbx), %r10
	subq	%r14, %r10
	movl	%ecx, %esi
	subl	20(%rsp), %esi          # 4-byte Folded Reload
	imull	%esi, %eax
	movslq	%eax, %r12
	addq	%r10, %r12
	addq	80(%rbp), %rbx
	subq	%r11, %rbx
	subl	16(%rsp), %ecx          # 4-byte Folded Reload
	imull	%ecx, %r9d
	movslq	%r9d, %r14
	addq	%rbx, %r14
	imull	72(%r15), %r8d
.LBB5_5:                                # %for.cond.preheader
	movslq	%r8d, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	68(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB5_12
# BB#6:                                 # %for.body.lr.ph
	movslq	4(%rsp), %rbx           # 4-byte Folded Reload
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	16(%rsp), %edx          # 4-byte Reload
	cmpl	%ecx, %edx
	movl	%ecx, %esi
	cmovgel	%edx, %esi
	notl	%esi
	movl	8(%rsp), %ecx           # 4-byte Reload
	notl	%ecx
	movl	12(%rsp), %edx          # 4-byte Reload
	notl	%edx
	cmpl	%edx, %ecx
	cmovgel	%ecx, %edx
	subl	%edx, %esi
	movl	%esi, 24(%rsp)          # 4-byte Spill
	xorl	%edx, %edx
	.align	16, 0x90
.LBB5_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
	testl	%r13d, %r13d
	jle	.LBB5_11
# BB#8:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movslq	60(%r15), %r13
	movslq	60(%rbp), %rbp
	movl	24(%rsp), %r15d         # 4-byte Reload
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movq	%r14, 56(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB5_9:                                # %for.body.i
                                        #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%r13, %r12
	addq	%rbp, %r14
	decl	%r15d
	jne	.LBB5_9
# BB#10:                                # %copy_plane_part.exit.loopexit
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	40(%rsp), %rbp          # 8-byte Reload
	movl	68(%rbp), %eax
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	64(%rsp), %r12          # 8-byte Reload
	movl	28(%rsp), %r13d         # 4-byte Reload
	movq	56(%rsp), %r14          # 8-byte Reload
	movl	52(%rsp), %edx          # 4-byte Reload
.LBB5_11:                               # %copy_plane_part.exit
                                        #   in Loop: Header=BB5_7 Depth=1
	movslq	64(%r15), %rcx
	addq	%rcx, %r12
	movslq	64(%rbp), %rcx
	addq	%rcx, %r14
	incl	%edx
	cmpl	%eax, %edx
	jl	.LBB5_7
.LBB5_12:                               # %for.end
	cmpl	$0, (%rsp)              # 4-byte Folded Reload
	jne	.LBB5_18
# BB#13:                                # %if.then.143
	cmpl	$0, 36(%r15)
	setne	%al
	cmpl	$1, 32(%r15)
	movzbl	%al, %eax
	sbbl	$-1, %eax
	cmpl	$0, 36(%rbp)
	setne	%cl
	cmpl	$1, 32(%rbp)
	movzbl	%cl, %ecx
	sbbl	$-1, %ecx
	cmpl	$0, 40(%r15)
	je	.LBB5_18
# BB#14:                                # %if.then.i
	testl	%r13d, %r13d
	jle	.LBB5_18
# BB#15:                                # %if.then.i
	movl	40(%rbp), %edx
	testl	%edx, %edx
	je	.LBB5_18
# BB#16:                                # %for.body.lr.ph.i.i
	movslq	64(%r15), %rdx
	imulq	%rdx, %rax
	addq	%rax, %r12
	movslq	64(%rbp), %rax
	imulq	%rax, %rcx
	addq	%rcx, %r14
	movslq	4(%rsp), %r13           # 4-byte Folded Reload
	movslq	60(%r15), %r15
	movslq	60(%rbp), %rbx
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	16(%rsp), %ecx          # 4-byte Reload
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	notl	%eax
	movl	8(%rsp), %edx           # 4-byte Reload
	notl	%edx
	movl	12(%rsp), %ecx          # 4-byte Reload
	notl	%ecx
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %ebp
	.align	16, 0x90
.LBB5_17:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memcpy
	addq	%r15, %r12
	addq	%rbx, %r14
	decl	%ebp
	jne	.LBB5_17
.LBB5_18:                               # %if.end.145
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pdf14_preserve_backdrop, .Lfunc_end5-pdf14_preserve_backdrop
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	pdf14_compose_group
	.align	16, 0x90
	.type	pdf14_compose_group,@function
pdf14_compose_group:                    # @pdf14_compose_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 56
	subq	$856, %rsp              # imm = 0x358
.Ltmp46:
	.cfi_def_cfa_offset 912
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
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%rcx, 320(%rsp)         # 8-byte Spill
	movzbl	24(%rdi), %eax
	movl	%eax, 332(%rsp)         # 4-byte Spill
	movb	25(%rdi), %al
	movb	%al, 447(%rsp)          # 1-byte Spill
	movl	28(%rdi), %eax
	movl	%eax, 348(%rsp)         # 4-byte Spill
	movslq	%ecx, %r11
	movq	80(%rdi), %rax
	addq	%r11, %rax
	movq	%rax, 608(%rsp)         # 8-byte Spill
	movl	%r9d, %r13d
	subl	48(%rdi), %r13d
	movq	80(%rsi), %r12
	addq	%r11, %r12
	movl	%r9d, %ebx
	subl	48(%rsi), %ebx
	cmpl	$0, 36(%rdi)
	movslq	44(%rdi), %rax
	movq	%rax, 592(%rsp)         # 8-byte Spill
	movl	60(%rdi), %r15d
	movslq	44(%rsi), %r14
	movl	60(%rsi), %r10d
	movl	64(%rdi), %eax
	movl	%eax, 600(%rsp)         # 4-byte Spill
	movslq	64(%rsi), %rbp
	movl	16(%rdi), %ecx
	movl	%ecx, 428(%rsp)         # 4-byte Spill
	movl	20(%rsi), %ecx
	movl	%ecx, 412(%rsp)         # 4-byte Spill
	jne	.LBB6_2
# BB#1:                                 # %select.mid
	xorl	%eax, %eax
.LBB6_2:                                # %select.end
	movl	36(%rsi), %r8d
	movq	%rsi, %rcx
	testl	%r8d, %r8d
	movl	%ebp, %esi
	movq	%rbp, 520(%rsp)         # 8-byte Spill
	cmovel	%r8d, %esi
	cmpl	$0, 68(%rdi)
	je	.LBB6_196
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, 68(%rcx)
	je	.LBB6_196
# BB#4:                                 # %do.body
	movq	%r14, 584(%rsp)         # 8-byte Spill
	movl	%eax, 616(%rsp)         # 4-byte Spill
	movq	%rdi, 464(%rsp)         # 8-byte Spill
	movl	40(%rdi), %ebp
	movl	%ebp, 284(%rsp)         # 4-byte Spill
	movslq	72(%rdi), %rbp
	movq	%rbp, 336(%rsp)         # 8-byte Spill
	movl	72(%rcx), %r14d
	movl	96(%rdi), %ebp
	cmpl	96(%rcx), %ebp
	jge	.LBB6_6
# BB#5:                                 # %if.then.54
	movl	%ebp, 96(%rcx)
.LBB6_6:                                # %if.end.61
	movq	464(%rsp), %rbp         # 8-byte Reload
	movl	104(%rbp), %ebp
	cmpl	104(%rcx), %ebp
	jle	.LBB6_8
# BB#7:                                 # %if.then.68
	movl	%ebp, 104(%rcx)
.LBB6_8:                                # %if.end.75
	movq	464(%rsp), %rbp         # 8-byte Reload
	movl	100(%rbp), %ebp
	cmpl	100(%rcx), %ebp
	jge	.LBB6_10
# BB#9:                                 # %if.then.83
	movl	%ebp, 100(%rcx)
.LBB6_10:                               # %if.end.90
	movq	%rdx, 416(%rsp)         # 8-byte Spill
	imull	%r10d, %ebx
	movq	520(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %ebp
	movl	920(%rsp), %edx
	imull	%edx, %ebp
	movq	%rcx, %rdx
	movq	464(%rsp), %rdi         # 8-byte Reload
	movl	108(%rdi), %edi
	cmpl	108(%rdx), %edi
	jle	.LBB6_12
# BB#11:                                # %if.then.98
	movl	%edi, 108(%rdx)
.LBB6_12:                               # %do.end.108
	subq	584(%rsp), %r12         # 8-byte Folded Reload
	movslq	%ebx, %rbx
	testl	%r8d, %r8d
	cmovnel	%ebp, %r8d
	movl	%r8d, 408(%rsp)         # 4-byte Spill
	xorl	%eax, %eax
	cmpl	$0, 40(%rdx)
	movq	%rdx, %rdi
	je	.LBB6_14
# BB#13:                                # %select.mid1043
	decl	%r14d
	movq	520(%rsp), %rcx         # 8-byte Reload
	imull	%ecx, %r14d
	movl	%r14d, %eax
.LBB6_14:                               # %select.end1042
	addq	%rbx, %r12
	movq	%rbx, %r8
	xorl	%ecx, %ecx
	movq	%rcx, 472(%rsp)         # 8-byte Spill
	cmpl	$0, 32(%rdi)
	movl	$0, %edx
	je	.LBB6_16
# BB#15:                                # %select.mid1221
	addl	%ebp, %esi
	movslq	%esi, %rdx
	leaq	(%rdx,%r12), %rdx
.LBB6_16:                               # %select.end1220
	movq	8(%rdi), %rbx
	testq	%rbx, %rbx
	movl	$0, %esi
	movl	616(%rsp), %r14d        # 4-byte Reload
	je	.LBB6_18
# BB#17:                                # %if.then.123
	movq	584(%rsp), %rcx         # 8-byte Reload
	negq	%rcx
	addq	%r11, %rbx
	addq	%rcx, %rbx
	addq	%r8, %rbx
	movl	$1, %ecx
	movq	%rcx, 472(%rsp)         # 8-byte Spill
	movq	%rbx, %rsi
.LBB6_18:                               # %if.end.141
	movq	%r12, 496(%rsp)         # 8-byte Spill
	movl	%eax, 584(%rsp)         # 4-byte Spill
	movq	%rdi, 208(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 256(%rsp)         # 8-byte Spill
	movq	416(%rsp), %r8          # 8-byte Reload
	testq	%r8, %r8
	movl	$0, %edi
	movq	%rdi, 304(%rsp)         # 8-byte Spill
	movl	$0, %ecx
	movq	%rcx, 400(%rsp)         # 8-byte Spill
	movl	$0, %ecx
	je	.LBB6_22
# BB#19:                                # %if.then.143
	movq	80(%r8), %rbp
	movq	88(%r8), %rdi
	movq	%rdi, 256(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	movq	%rdi, 304(%rsp)         # 8-byte Spill
	testq	%rbp, %rbp
	movl	$0, %ecx
	je	.LBB6_21
# BB#20:                                # %if.then.146
	addq	%r11, %rbp
	movslq	44(%r8), %rdi
	subq	%rdi, %rbp
	movslq	48(%r8), %rdi
	movslq	%r9d, %rbx
	subq	%rdi, %rbx
	movslq	60(%r8), %rcx
	imulq	%rbx, %rcx
	addq	%rbp, %rcx
	movl	$1, %edi
	movq	%rdi, 304(%rsp)         # 8-byte Spill
.LBB6_21:                               # %if.end.165
	movzbl	24(%r8), %edi
	movq	256(%rsp), %rbp         # 8-byte Reload
	movzbl	(%rbp,%rdi), %ebp
	imull	332(%rsp), %ebp         # 4-byte Folded Reload
	movl	%ebp, %edi
	subl	$-128, %edi
	shrl	$8, %edi
	leal	128(%rdi,%rbp), %edi
	shrl	$8, %edi
	movq	%rdi, 400(%rsp)         # 8-byte Spill
.LBB6_22:                               # %if.end.173
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movl	912(%rsp), %edi
	movl	%edi, %ecx
	subl	%r9d, %ecx
	jle	.LBB6_196
# BB#23:                                # %for.body.lr.ph
	imull	%r15d, %r13d
	movq	608(%rsp), %rbp         # 8-byte Reload
	subq	592(%rsp), %rbp         # 8-byte Folded Reload
	movslq	%r13d, %rax
	movslq	600(%rsp), %rdi         # 4-byte Folded Reload
	movq	%rdi, 248(%rsp)         # 8-byte Spill
	movl	%edi, %ebx
	movq	%rdi, %r8
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movl	920(%rsp), %r13d
	imull	%r13d, %ebx
	movl	%ebx, 608(%rsp)         # 4-byte Spill
	movl	%ebx, %ecx
	movq	336(%rsp), %rdi         # 8-byte Reload
	decq	%rdi
	addq	%rbp, %rax
	movq	%rax, 536(%rsp)         # 8-byte Spill
	movq	128(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %eax
	movq	320(%rsp), %rbp         # 8-byte Reload
	subl	%ebp, %eax
	movl	%eax, 484(%rsp)         # 4-byte Spill
	addl	%ecx, %r14d
	movl	%r14d, 616(%rsp)        # 4-byte Spill
	imulq	%r8, %rdi
	movq	%rdi, 336(%rsp)         # 8-byte Spill
	leal	-1(%r13), %r12d
	movq	%r12, 592(%rsp)         # 8-byte Spill
	cmpl	$1, 428(%rsp)           # 4-byte Folded Reload
	sbbb	%cl, %cl
	notb	%cl
	movl	332(%rsp), %edi         # 4-byte Reload
	orb	%dil, %cl
	movb	%cl, 319(%rsp)          # 1-byte Spill
	movq	520(%rsp), %r9          # 8-byte Reload
	movl	%r9d, %eax
	imull	%r12d, %eax
	movl	%eax, 600(%rsp)         # 4-byte Spill
	movl	%r8d, %ecx
	movq	%r8, %rax
	imull	%r12d, %ecx
	movl	%ecx, 576(%rsp)         # 4-byte Spill
	decl	%ebx
	subl	%ebp, %ebx
	incq	%rbx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	leal	-2(%r13), %r13d
	movq	%r13, 448(%rsp)         # 8-byte Spill
	leaq	1(%r13), %rcx
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	movq	%rcx, %rdi
	cmpl	$1, %r9d
	setne	%bl
	sete	%r11b
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	movq	%rdi, %rbp
	andq	%rcx, %rbp
	movq	%rbp, 240(%rsp)         # 8-byte Spill
	setne	560(%rsp)               # 1-byte Folded Spill
	leaq	1(%r12), %r14
	movq	%r14, 392(%rsp)         # 8-byte Spill
	andq	%rcx, %r14
	movq	%r14, 368(%rsp)         # 8-byte Spill
	setne	556(%rsp)               # 1-byte Folded Spill
	leaq	-32(%r14), %r14
	shrq	$5, %r14
	movq	%r14, 224(%rsp)         # 8-byte Spill
	leaq	-32(%rbp), %rdi
	shrq	$5, %rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	cmpl	$1, %eax
	setne	%bpl
	orb	%bpl, %bl
	movb	%bl, 239(%rsp)          # 1-byte Spill
	leaq	704(%rsp,%r12), %rbx
	movq	%rbx, 264(%rsp)         # 8-byte Spill
	leaq	784(%rsp), %rax
	cmpq	%rbx, %rax
	setbe	%bl
	leaq	784(%rsp,%r12), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leaq	704(%rsp), %r8
	cmpq	%rax, %r8
	setbe	%al
	andb	%bl, %al
	movb	%al, 183(%rsp)          # 1-byte Spill
	andl	$1, %r14d
	movq	%r14, 216(%rsp)         # 8-byte Spill
	cmpl	$1, %r9d
	sete	%al
	movb	556(%rsp), %r14b        # 1-byte Reload
	andb	%r14b, %al
	movb	%al, 299(%rsp)          # 1-byte Spill
	movb	560(%rsp), %r8b         # 1-byte Reload
	andb	%r8b, %r11b
	movb	%r11b, 143(%rsp)        # 1-byte Spill
	andl	$1, %edi
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	orq	$24, %rcx
	movq	288(%rsp), %rdi         # 8-byte Reload
	andq	%rdi, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	setne	%bl
	cmpl	$1, %r9d
	sete	%al
	andb	%bl, %al
	movb	%al, 158(%rsp)          # 1-byte Spill
	cmpl	$1, %r9d
	sete	%al
	andb	%r14b, %al
	movb	%al, 159(%rsp)          # 1-byte Spill
	movq	496(%rsp), %r14         # 8-byte Reload
	cmpl	$1, %r9d
	sete	%al
	andb	%r8b, %al
	movb	%al, 102(%rsp)          # 1-byte Spill
	cmpl	$1, %r9d
	setne	%al
	orb	%bpl, %al
	movb	%al, 182(%rsp)          # 1-byte Spill
	movq	416(%rsp), %rcx         # 8-byte Reload
	leaq	704(%rsp,%r13), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leaq	784(%rsp), %rbp
	cmpq	%rax, %rbp
	setbe	%bl
	leaq	784(%rsp,%r13), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	704(%rsp), %rbp
	cmpq	%rax, %rbp
	setbe	%al
	andb	%bl, %al
	movb	%al, 103(%rsp)          # 1-byte Spill
	movslq	616(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movslq	584(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 352(%rsp)         # 8-byte Spill
	movslq	600(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 384(%rsp)         # 8-byte Spill
	movslq	608(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 432(%rsp)         # 8-byte Spill
	movslq	576(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 272(%rsp)         # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rdi, %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	pcmpeqd	%xmm5, %xmm5
	movslq	%r12d, %rax
	movq	%rax, 376(%rsp)         # 8-byte Spill
	movslq	408(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 504(%rsp)         # 8-byte Spill
	leaq	624(%rsp,%r12), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	624(%rsp,%r13), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	920(%rsp), %edi
	leal	1(%rdi), %eax
	movl	%eax, 300(%rsp)         # 4-byte Spill
	movq	248(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rax), %rax
	movq	%rax, 608(%rsp)         # 8-byte Spill
	leaq	(%r9,%r9), %r13
	movl	%edi, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	120(%rsp), %r8          # 8-byte Reload
	leaq	(,%r9,4), %rax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	movq	%r9, %r12
	.align	16, 0x90
.LBB6_24:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_31 Depth 2
                                        #       Child Loop BB6_49 Depth 3
                                        #       Child Loop BB6_56 Depth 3
                                        #       Child Loop BB6_69 Depth 3
                                        #       Child Loop BB6_76 Depth 3
                                        #       Child Loop BB6_99 Depth 3
                                        #       Child Loop BB6_106 Depth 3
                                        #       Child Loop BB6_116 Depth 3
                                        #       Child Loop BB6_121 Depth 3
                                        #       Child Loop BB6_124 Depth 3
                                        #       Child Loop BB6_178 Depth 3
                                        #       Child Loop BB6_185 Depth 3
                                        #       Child Loop BB6_187 Depth 3
                                        #       Child Loop BB6_164 Depth 3
                                        #       Child Loop BB6_171 Depth 3
                                        #       Child Loop BB6_147 Depth 3
                                        #       Child Loop BB6_152 Depth 3
                                        #       Child Loop BB6_155 Depth 3
	movq	304(%rsp), %rdi         # 8-byte Reload
	testl	%edi, %edi
	je	.LBB6_27
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	912(%rsp), %ebp
	subl	%r8d, %ebp
	cmpl	48(%rcx), %ebp
	jl	.LBB6_27
# BB#26:                                # %land.lhs.true.184
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	$1, %edi
	cmpl	56(%rcx), %ebp
	jl	.LBB6_28
	.align	16, 0x90
.LBB6_27:                               # %if.else.192
                                        #   in Loop: Header=BB6_24 Depth=1
	xorl	%edi, %edi
.LBB6_28:                               # %if.end.193
                                        #   in Loop: Header=BB6_24 Depth=1
	cmpl	$0, 484(%rsp)           # 4-byte Folded Reload
	jle	.LBB6_29
# BB#30:                                # %for.body.197.lr.ph
                                        #   in Loop: Header=BB6_24 Depth=1
	movq	%r8, 120(%rsp)          # 8-byte Spill
	movq	304(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	setne	%al
	testl	%edi, %edi
	setne	%bl
	andb	%al, %bl
	movb	%bl, 463(%rsp)          # 1-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movq	%r13, %rax
	movq	536(%rsp), %r13         # 8-byte Reload
	movq	%r13, 616(%rsp)         # 8-byte Spill
	movq	%rax, %r13
	movq	%r14, 496(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	%rax, 576(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB6_31:                               # %for.body.197
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_49 Depth 3
                                        #       Child Loop BB6_56 Depth 3
                                        #       Child Loop BB6_69 Depth 3
                                        #       Child Loop BB6_76 Depth 3
                                        #       Child Loop BB6_99 Depth 3
                                        #       Child Loop BB6_106 Depth 3
                                        #       Child Loop BB6_116 Depth 3
                                        #       Child Loop BB6_121 Depth 3
                                        #       Child Loop BB6_124 Depth 3
                                        #       Child Loop BB6_178 Depth 3
                                        #       Child Loop BB6_185 Depth 3
                                        #       Child Loop BB6_187 Depth 3
                                        #       Child Loop BB6_164 Depth 3
                                        #       Child Loop BB6_171 Depth 3
                                        #       Child Loop BB6_147 Depth 3
                                        #       Child Loop BB6_152 Depth 3
                                        #       Child Loop BB6_155 Depth 3
	movq	%rdx, 600(%rsp)         # 8-byte Spill
	movq	%rsi, 584(%rsp)         # 8-byte Spill
	cmpb	$0, 463(%rsp)           # 1-byte Folded Reload
	je	.LBB6_35
# BB#32:                                # %land.lhs.true.201
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	320(%rsp), %rax         # 8-byte Reload
	leal	(%r15,%rax), %eax
	cmpl	44(%rcx), %eax
	jl	.LBB6_35
# BB#33:                                # %land.lhs.true.208
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	52(%rcx), %eax
	jge	.LBB6_35
# BB#34:                                #   in Loop: Header=BB6_31 Depth=2
	xorl	%ebx, %ebx
	jmp	.LBB6_36
	.align	16, 0x90
.LBB6_35:                               # %if.else.216
                                        #   in Loop: Header=BB6_31 Depth=2
	movb	$1, %bl
.LBB6_36:                               # %if.end.217
                                        #   in Loop: Header=BB6_31 Depth=2
	testb	%bl, %bl
	movq	400(%rsp), %rax         # 8-byte Reload
	movb	%al, %bpl
	jne	.LBB6_38
# BB#37:                                # %if.end.217
                                        #   in Loop: Header=BB6_31 Depth=2
	movb	319(%rsp), %al          # 1-byte Reload
	movb	%al, %bpl
.LBB6_38:                               # %if.end.217
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	448(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rax
	movq	592(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%r15), %rsi
	testq	%rcx, %rcx
	jne	.LBB6_40
# BB#39:                                # %if.end.217
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	332(%rsp), %ecx         # 4-byte Reload
	movb	%cl, %bpl
.LBB6_40:                               # %if.end.217
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	536(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rdx
	movq	496(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rdi
	movq	%rdi, 528(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rax), %rdi
	movq	%rdi, 488(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rsi), %rcx
	movq	%rcx, 512(%rsp)         # 8-byte Spill
	cmpl	$0, 928(%rsp)
	je	.LBB6_41
# BB#58:                                # %for.cond.231.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	%ebx, 556(%rsp)         # 4-byte Spill
	movl	%ebp, 560(%rsp)         # 4-byte Spill
	movl	920(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB6_77
# BB#59:                                # %overflow.checked550
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	368(%rsp), %rbp         # 8-byte Reload
	testq	%rbp, %rbp
	movl	$0, %r8d
	movq	616(%rsp), %rcx         # 8-byte Reload
	je	.LBB6_71
# BB#60:                                # %vector.stridecheck560
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpb	$0, 239(%rsp)           # 1-byte Folded Reload
	movl	$0, %r8d
	jne	.LBB6_71
# BB#61:                                # %vector.memcheck588
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%rcx, %r10
	movq	536(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %r8
	leaq	784(%rsp), %rax
	movq	%rax, %rsi
	cmpq	%r8, %rsi
	setbe	%al
	movq	184(%rsp), %rdi         # 8-byte Reload
	cmpq	%rdi, %rdx
	setbe	%bl
	andb	%al, %bl
	movq	512(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rsi
	setbe	%r11b
	movq	528(%rsp), %rax         # 8-byte Reload
	cmpq	%rdi, %rax
	setbe	%r9b
	leaq	704(%rsp), %rsi
	cmpq	%r8, %rsi
	setbe	%r12b
	movq	264(%rsp), %rdi         # 8-byte Reload
	cmpq	%rdi, %rdx
	setbe	%r8b
	cmpq	%rcx, %rsi
	setbe	%dl
	cmpq	%rdi, %rax
	setbe	%dil
	orb	183(%rsp), %bl          # 1-byte Folded Reload
	jne	.LBB6_62
# BB#63:                                # %vector.memcheck588
                                        #   in Loop: Header=BB6_31 Depth=2
	andb	%r9b, %r11b
	jne	.LBB6_62
# BB#64:                                # %vector.memcheck588
                                        #   in Loop: Header=BB6_31 Depth=2
	andb	%r8b, %r12b
	jne	.LBB6_62
# BB#65:                                # %vector.memcheck588
                                        #   in Loop: Header=BB6_31 Depth=2
	andb	%dil, %dl
	movl	$0, %r8d
	movq	%r10, %rcx
	jne	.LBB6_71
# BB#66:                                # %vector.body546.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	$0, 216(%rsp)           # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB6_68
# BB#67:                                # %vector.body546.prol
                                        #   in Loop: Header=BB6_31 Depth=2
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movaps	%xmm0, 784(%rsp)
	movaps	%xmm1, 800(%rsp)
	movdqu	(%r14), %xmm0
	movdqu	16(%r14), %xmm1
	movdqa	%xmm0, 704(%rsp)
	movdqa	%xmm1, 720(%rsp)
	movl	$32, %eax
.LBB6_68:                               # %vector.body546.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	$0, 224(%rsp)           # 8-byte Folded Reload
	movq	%rbp, %r8
	je	.LBB6_71
	.align	16, 0x90
.LBB6_69:                               # %vector.body546
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%rcx,%rax), %xmm0
	movups	16(%rcx,%rax), %xmm1
	movaps	%xmm0, 784(%rsp,%rax)
	movaps	%xmm1, 800(%rsp,%rax)
	movups	(%r14,%rax), %xmm0
	movups	16(%r14,%rax), %xmm1
	movaps	%xmm0, 704(%rsp,%rax)
	movaps	%xmm1, 720(%rsp,%rax)
	movups	32(%rcx,%rax), %xmm0
	movups	48(%rcx,%rax), %xmm1
	movaps	%xmm0, 816(%rsp,%rax)
	movaps	%xmm1, 832(%rsp,%rax)
	movdqu	32(%r14,%rax), %xmm0
	movdqu	48(%r14,%rax), %xmm1
	movdqa	%xmm0, 736(%rsp,%rax)
	movdqa	%xmm1, 752(%rsp,%rax)
	addq	$64, %rax
	cmpq	%rax, %rbp
	jne	.LBB6_69
# BB#70:                                #   in Loop: Header=BB6_31 Depth=2
	movq	%rbp, %r8
	jmp	.LBB6_71
	.align	16, 0x90
.LBB6_41:                               # %for.cond.246.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	%ebx, 556(%rsp)         # 4-byte Spill
	movl	%ebp, 560(%rsp)         # 4-byte Spill
	movl	920(%rsp), %ecx
	cmpl	$2, %ecx
	movq	608(%rsp), %rcx         # 8-byte Reload
	jl	.LBB6_57
# BB#42:                                # %overflow.checked611
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%r13, %r11
	movq	%rcx, %r10
	movq	240(%rsp), %rbp         # 8-byte Reload
	testq	%rbp, %rbp
	movl	$0, %r12d
	movq	616(%rsp), %rcx         # 8-byte Reload
	je	.LBB6_51
# BB#43:                                # %vector.stridecheck621
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpb	$0, 182(%rsp)           # 1-byte Folded Reload
	movl	$0, %r12d
	jne	.LBB6_51
# BB#44:                                # %vector.memcheck649
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	536(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rcx
	leaq	784(%rsp), %rax
	movq	%rax, %rsi
	cmpq	%rcx, %rsi
	setbe	%al
	movq	104(%rsp), %rdi         # 8-byte Reload
	cmpq	%rdi, %rdx
	setbe	%bl
	andb	%al, %bl
	movq	488(%rsp), %r13         # 8-byte Reload
	cmpq	%r13, %rsi
	setbe	%r12b
	movq	528(%rsp), %rax         # 8-byte Reload
	cmpq	%rdi, %rax
	setbe	%r9b
	leaq	704(%rsp), %rsi
	movq	%rsi, %rdi
	cmpq	%rcx, %rdi
	setbe	%cl
	movq	192(%rsp), %rsi         # 8-byte Reload
	cmpq	%rsi, %rdx
	setbe	%r8b
	cmpq	%r13, %rdi
	setbe	%dl
	cmpq	%rsi, %rax
	setbe	%dil
	orb	103(%rsp), %bl          # 1-byte Folded Reload
	jne	.LBB6_45
# BB#46:                                # %vector.memcheck649
                                        #   in Loop: Header=BB6_31 Depth=2
	andb	%r9b, %r12b
	jne	.LBB6_45
# BB#47:                                # %vector.memcheck649
                                        #   in Loop: Header=BB6_31 Depth=2
	andb	%r8b, %cl
	jne	.LBB6_45
# BB#48:                                # %vector.memcheck649
                                        #   in Loop: Header=BB6_31 Depth=2
	andb	%dil, %dl
	movl	$0, %eax
	movl	$0, %r12d
	movq	616(%rsp), %rcx         # 8-byte Reload
	jne	.LBB6_51
	.align	16, 0x90
.LBB6_49:                               # %vector.body607
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	(%rcx,%rax), %xmm0
	movdqu	16(%rcx,%rax), %xmm1
	pxor	%xmm5, %xmm0
	pxor	%xmm5, %xmm1
	movdqa	%xmm0, 784(%rsp,%rax)
	movdqa	%xmm1, 800(%rsp,%rax)
	movdqu	(%r14,%rax), %xmm0
	movdqu	16(%r14,%rax), %xmm1
	pxor	%xmm5, %xmm0
	pxor	%xmm5, %xmm1
	movdqa	%xmm0, 704(%rsp,%rax)
	movdqa	%xmm1, 720(%rsp,%rax)
	addq	$32, %rax
	cmpq	%rax, %rbp
	jne	.LBB6_49
# BB#50:                                #   in Loop: Header=BB6_31 Depth=2
	movq	%rbp, %r12
	jmp	.LBB6_51
.LBB6_62:                               #   in Loop: Header=BB6_31 Depth=2
	xorl	%r8d, %r8d
	movq	%r10, %rcx
	.align	16, 0x90
.LBB6_71:                               # %middle.block547
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%rcx, 616(%rsp)         # 8-byte Spill
	cmpq	%r8, 392(%rsp)          # 8-byte Folded Reload
	je	.LBB6_77
# BB#72:                                # %for.body.234.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	%r8d, %eax
	orl	$1, %eax
	movl	300(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	subl	%eax, %edx
	testb	$1, %dl
	je	.LBB6_74
# BB#73:                                # %for.body.234.prol
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%r8, %rdx
	imulq	248(%rsp), %rdx         # 8-byte Folded Reload
	movq	616(%rsp), %rcx         # 8-byte Reload
	movb	(%rcx,%rdx), %dl
	movb	%dl, 784(%rsp,%r8)
	movq	%r8, %rdx
	imulq	520(%rsp), %rdx         # 8-byte Folded Reload
	movb	(%r14,%rdx), %dl
	movb	%dl, 704(%rsp,%r8)
	orq	$1, %r8
.LBB6_74:                               # %for.body.234.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	920(%rsp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_77
# BB#75:                                # %for.body.234.preheader.split.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	248(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rax
	imulq	%r8, %rax
	movq	536(%rsp), %rdi         # 8-byte Reload
	leaq	(%rax,%rdi), %r9
	movq	520(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rax
	imulq	%r8, %rax
	movq	496(%rsp), %rsi         # 8-byte Reload
	leaq	(%rax,%rsi), %r10
	leaq	1(%r8), %rax
	movq	%rcx, %rdx
	imulq	%rax, %rdx
	leaq	(%rdx,%rsi), %r11
	imulq	%rbx, %rax
	leaq	(%rax,%rdi), %rdi
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	leaq	705(%rsp), %rdx
	leaq	785(%rsp), %rsi
	movq	160(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB6_76:                               # %for.body.234
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	(%r9,%rbx), %r12
	movb	(%r15,%r12), %cl
	movb	%cl, -1(%r8,%rsi)
	leaq	(%r10,%rbp), %rcx
	movb	(%r15,%rcx), %cl
	movb	%cl, -1(%r8,%rdx)
	leaq	(%rdi,%rbx), %rcx
	movb	(%r15,%rcx), %cl
	movb	%cl, (%r8,%rsi)
	leaq	(%r11,%rbp), %rcx
	movb	(%r15,%rcx), %cl
	movb	%cl, (%r8,%rdx)
	addq	$-2, %rax
	addq	$2, %rsi
	addq	$2, %rdx
	addq	608(%rsp), %rbx         # 8-byte Folded Reload
	addq	%r13, %rbp
	cmpl	%eax, %r8d
	jne	.LBB6_76
	jmp	.LBB6_77
.LBB6_45:                               #   in Loop: Header=BB6_31 Depth=2
	xorl	%r12d, %r12d
	movq	616(%rsp), %rcx         # 8-byte Reload
.LBB6_51:                               # %middle.block608
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%rcx, 616(%rsp)         # 8-byte Spill
	cmpq	%r12, 288(%rsp)         # 8-byte Folded Reload
	movq	%r11, %r13
	je	.LBB6_57
# BB#52:                                # %for.body.249.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%r10, %rsi
	movl	%r12d, %eax
	orl	$1, %eax
	movl	920(%rsp), %ecx
	movl	%ecx, %edx
	subl	%eax, %edx
	testb	$1, %dl
	je	.LBB6_54
# BB#53:                                # %for.body.249.prol
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%r12, %rdx
	imulq	248(%rsp), %rdx         # 8-byte Folded Reload
	movq	616(%rsp), %rcx         # 8-byte Reload
	movb	(%rcx,%rdx), %dl
	notb	%dl
	movb	%dl, 784(%rsp,%r12)
	movq	%r12, %rdx
	imulq	520(%rsp), %rdx         # 8-byte Folded Reload
	movb	(%r14,%rdx), %dl
	notb	%dl
	movb	%dl, 704(%rsp,%r12)
	orq	$1, %r12
.LBB6_54:                               # %for.body.249.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	592(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, %ecx
	je	.LBB6_57
# BB#55:                                # %for.body.249.preheader.split.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	248(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rax
	imulq	%r12, %rax
	movq	536(%rsp), %rdi         # 8-byte Reload
	leaq	(%rax,%rdi), %rax
	movq	%rax, 544(%rsp)         # 8-byte Spill
	movq	%rsi, %r9
	movq	520(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rax
	imulq	%r12, %rax
	movq	496(%rsp), %rsi         # 8-byte Reload
	leaq	(%rax,%rsi), %r10
	leaq	1(%r12), %rax
	movq	%rcx, %rdx
	imulq	%rax, %rdx
	leaq	(%rdx,%rsi), %r11
	imulq	%rbp, %rax
	leaq	(%rax,%rdi), %r8
	xorl	%eax, %eax
	xorl	%edx, %edx
	leaq	705(%rsp), %rsi
	leaq	785(%rsp), %rbx
	movq	592(%rsp), %rdi         # 8-byte Reload
	.align	16, 0x90
.LBB6_56:                               # %for.body.249
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	544(%rsp), %rbp         # 8-byte Reload
	leaq	(%rbp,%rdx), %rbp
	movb	(%r15,%rbp), %cl
	notb	%cl
	movb	%cl, -1(%r12,%rbx)
	leaq	(%r10,%rax), %rcx
	movb	(%r15,%rcx), %cl
	notb	%cl
	movb	%cl, -1(%r12,%rsi)
	leaq	(%r8,%rdx), %rcx
	movb	(%r15,%rcx), %cl
	notb	%cl
	movb	%cl, (%r12,%rbx)
	leaq	(%r11,%rax), %rcx
	movb	(%r15,%rcx), %cl
	notb	%cl
	movb	%cl, (%r12,%rsi)
	addq	$-2, %rdi
	addq	$2, %rbx
	addq	$2, %rsi
	addq	%r9, %rdx
	addq	%r13, %rax
	cmpl	%edi, %r12d
	jne	.LBB6_56
	.align	16, 0x90
.LBB6_57:                               # %for.end.268
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	272(%rsp), %rax         # 8-byte Reload
	movq	616(%rsp), %rcx         # 8-byte Reload
	movb	(%rcx,%rax), %al
	movq	376(%rsp), %rcx         # 8-byte Reload
	movb	%al, 784(%rsp,%rcx)
	movq	384(%rsp), %rax         # 8-byte Reload
	movb	(%r14,%rax), %al
	movb	%al, 704(%rsp,%rcx)
.LBB6_77:                               # %if.end.279
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	576(%rsp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB6_78
# BB#80:                                # %if.then.282
                                        #   in Loop: Header=BB6_31 Depth=2
	leaq	1(%rcx), %rax
	movl	556(%rsp), %edx         # 4-byte Reload
	testb	%dl, %dl
	je	.LBB6_82
# BB#81:                                #   in Loop: Header=BB6_31 Depth=2
	movq	%rax, %rcx
	jmp	.LBB6_79
	.align	16, 0x90
.LBB6_78:                               #   in Loop: Header=BB6_31 Depth=2
	xorl	%ecx, %ecx
.LBB6_79:                               # %if.end.301
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	464(%rsp), %rdi         # 8-byte Reload
	movq	520(%rsp), %r12         # 8-byte Reload
	movl	560(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB6_83
	.align	16, 0x90
.LBB6_82:                               # %if.then.284
                                        #   in Loop: Header=BB6_31 Depth=2
	movzbl	(%rcx), %ecx
	movl	560(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	movq	256(%rsp), %rsi         # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	imull	%edx, %ecx
	movl	%ecx, %edx
	subl	$-128, %edx
	shrl	$8, %edx
	leal	128(%rdx,%rcx), %ebx
	shrl	$8, %ebx
	movq	%rax, %rcx
	movq	464(%rsp), %rdi         # 8-byte Reload
	movq	520(%rsp), %r12         # 8-byte Reload
.LBB6_83:                               # %if.end.301
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$0, 412(%rsp)           # 4-byte Folded Reload
	je	.LBB6_126
# BB#84:                                # %if.then.303
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%rcx, 576(%rsp)         # 8-byte Spill
	movq	504(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %rsi
	testl	%eax, %eax
	movl	$0, %ecx
	cmoveq	%rcx, %rsi
	movq	352(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %rdx
	testl	%eax, %eax
	cmoveq	%rcx, %rdx
	movb	$-1, %cl
	cmpl	$0, 36(%rdi)
	movb	$-1, %r8b
	je	.LBB6_86
# BB#85:                                # %if.then.324
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	432(%rsp), %rax         # 8-byte Reload
	movq	616(%rsp), %rbp         # 8-byte Reload
	movb	(%rbp,%rax), %r8b
.LBB6_86:                               # %if.end.328
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$0, 40(%rdi)
	je	.LBB6_88
# BB#87:                                # %if.then.331
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	336(%rsp), %rax         # 8-byte Reload
	movq	616(%rsp), %rcx         # 8-byte Reload
	movb	(%rcx,%rax), %cl
.LBB6_88:                               # %if.end.335
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$0, 428(%rsp)           # 4-byte Folded Reload
	je	.LBB6_90
# BB#89:                                # %if.then.337
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	304(%rsp), %rax         # 8-byte Reload
	movl	%eax, 24(%rsp)
	movzbl	447(%rsp), %eax         # 1-byte Folded Reload
	movl	%eax, 16(%rsp)
	movzbl	%bl, %eax
	movl	%eax, 8(%rsp)
	movzbl	%cl, %eax
	movl	%eax, (%rsp)
	movzbl	%r8b, %r9d
	leaq	704(%rsp), %rdi
	leaq	784(%rsp), %rcx
	movq	592(%rsp), %r8          # 8-byte Reload
	callq	art_pdf_composite_knockout_isolated_8
	jmp	.LBB6_137
	.align	16, 0x90
.LBB6_126:                              # %if.else.380
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$0, 428(%rsp)           # 4-byte Folded Reload
	jne	.LBB6_129
# BB#127:                               # %lor.lhs.false.382
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	208(%rsp), %rax         # 8-byte Reload
	cmpq	$0, (%rax)
	jne	.LBB6_130
# BB#128:                               # %land.lhs.true.385
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$0, 20(%rdi)
	je	.LBB6_130
	.align	16, 0x90
.LBB6_129:                              # %if.then.388
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%rcx, 576(%rsp)         # 8-byte Spill
	movq	936(%rsp), %rax
	movq	%rax, (%rsp)
	movzbl	%bl, %r8d
	leaq	704(%rsp), %rdi
	movq	600(%rsp), %rsi         # 8-byte Reload
	leaq	784(%rsp), %rdx
	movq	592(%rsp), %rcx         # 8-byte Reload
	movl	348(%rsp), %r9d         # 4-byte Reload
	callq	art_pdf_composite_group_8
	jmp	.LBB6_131
	.align	16, 0x90
.LBB6_90:                               # %if.else.339
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	%ebx, %r11d
	movl	920(%rsp), %eax
	cmpl	$0, 928(%rsp)
	je	.LBB6_91
# BB#108:                               # %for.cond.342.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	testl	%eax, %eax
	movq	360(%rsp), %r10         # 8-byte Reload
	jle	.LBB6_125
# BB#109:                               # %overflow.checked473
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpb	$0, 159(%rsp)           # 1-byte Folded Reload
	movl	$0, %ecx
	je	.LBB6_118
# BB#110:                               # %vector.memcheck491
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	592(%rsp), %rax         # 8-byte Reload
	movq	584(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rax
	leaq	624(%rsp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB6_112
# BB#111:                               # %vector.memcheck491
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	584(%rsp), %rax         # 8-byte Reload
	cmpq	88(%rsp), %rax          # 8-byte Folded Reload
	movl	$0, %ecx
	jbe	.LBB6_118
.LBB6_112:                              # %vector.body469.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	$0, 216(%rsp)           # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB6_114
# BB#113:                               # %vector.body469.prol
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	584(%rsp), %rax         # 8-byte Reload
	movdqu	(%rax), %xmm0
	movdqu	16(%rax), %xmm1
	movdqa	%xmm0, 624(%rsp)
	movdqa	%xmm1, 640(%rsp)
	movl	$32, %eax
.LBB6_114:                              # %vector.body469.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	$0, 224(%rsp)           # 8-byte Folded Reload
	movq	368(%rsp), %rcx         # 8-byte Reload
	je	.LBB6_118
# BB#115:                               # %vector.body469.preheader.split.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	368(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rcx
	subq	%rax, %rcx
	leaq	672(%rsp), %rdx
	leaq	(%rdx,%rax), %rdx
	movq	584(%rsp), %rsi         # 8-byte Reload
	leaq	48(%rsi,%rax), %rsi
	.align	16, 0x90
.LBB6_116:                              # %vector.body469
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-48(%rsi), %xmm0
	movups	-32(%rsi), %xmm1
	movaps	%xmm0, -48(%rdx)
	movaps	%xmm1, -32(%rdx)
	movdqu	-16(%rsi), %xmm0
	movdqu	(%rsi), %xmm1
	movdqa	%xmm0, -16(%rdx)
	movdqa	%xmm1, (%rdx)
	addq	$64, %rdx
	addq	$64, %rsi
	addq	$-64, %rcx
	jne	.LBB6_116
# BB#117:                               #   in Loop: Header=BB6_31 Depth=2
	movq	%rdi, %rcx
.LBB6_118:                              # %middle.block470
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	%rcx, 392(%rsp)         # 8-byte Folded Reload
	je	.LBB6_125
# BB#119:                               # %for.body.345.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	%ecx, %eax
	orl	$1, %eax
	movl	300(%rsp), %edi         # 4-byte Reload
	movl	%edi, %esi
	subl	%eax, %esi
	movl	920(%rsp), %edx
	subl	%eax, %edx
	testb	$3, %sil
	je	.LBB6_122
# BB#120:                               # %for.body.345.prol.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%r12, %rax
	imulq	%rcx, %rax
	movq	584(%rsp), %rsi         # 8-byte Reload
	leaq	(%rax,%rsi), %rsi
	leal	1(%rcx), %eax
	subl	%eax, %edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB6_121:                              # %for.body.345.prol
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rsi), %al
	movb	%al, 624(%rsp,%rcx)
	incq	%rcx
	addq	%r12, %rsi
	incl	%edi
	jne	.LBB6_121
.LBB6_122:                              # %for.body.345.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$3, %edx
	jb	.LBB6_125
# BB#123:                               # %for.body.345.preheader.split.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	920(%rsp), %eax
	movl	%eax, %edx
	subl	%ecx, %edx
	leaq	627(%rsp), %rax
	leaq	(%rax,%rcx), %rsi
	leaq	3(%rcx), %r9
	imulq	%r12, %r9
	leaq	2(%rcx), %rbp
	imulq	%r12, %rbp
	movq	%r12, %rdi
	imulq	%rcx, %rdi
	incq	%rcx
	imulq	%r12, %rcx
	movq	584(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB6_124:                              # %for.body.345
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rdi,%rax), %bl
	movb	%bl, -3(%rsi)
	movb	(%rcx,%rax), %bl
	movb	%bl, -2(%rsi)
	movb	(%rbp,%rax), %bl
	movb	%bl, -1(%rsi)
	movb	(%r9,%rax), %bl
	movb	%bl, (%rsi)
	addq	$4, %rsi
	addq	%r10, %rax
	addl	$-4, %edx
	jne	.LBB6_124
	jmp	.LBB6_125
.LBB6_130:                              # %if.else.391
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%rcx, 576(%rsp)         # 8-byte Spill
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	616(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %ecx
	movq	936(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	348(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movzbl	%bl, %r9d
	leaq	704(%rsp), %rdi
	movq	600(%rsp), %rsi         # 8-byte Reload
	leaq	784(%rsp), %rdx
	movq	592(%rsp), %r8          # 8-byte Reload
	callq	art_pdf_recomposite_group_8
.LBB6_131:                              # %if.end.397
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$0, 284(%rsp)           # 4-byte Folded Reload
	je	.LBB6_137
# BB#132:                               # %if.then.399
                                        #   in Loop: Header=BB6_31 Depth=2
	testb	%bl, %bl
	je	.LBB6_137
# BB#133:                               # %if.then.399
                                        #   in Loop: Header=BB6_31 Depth=2
	movzbl	%bl, %eax
	cmpl	$255, %eax
	jne	.LBB6_135
# BB#134:                               # %if.then.403
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	336(%rsp), %rax         # 8-byte Reload
	movq	616(%rsp), %rcx         # 8-byte Reload
	movb	(%rcx,%rax), %al
	movq	352(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%r14,%rcx)
	jmp	.LBB6_137
.LBB6_91:                               # %for.cond.355.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$2, %eax
	jl	.LBB6_107
# BB#92:                                # %overflow.checked512
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpb	$0, 102(%rsp)           # 1-byte Folded Reload
	movl	$0, %ecx
	je	.LBB6_101
# BB#93:                                # %vector.memcheck529
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	448(%rsp), %rax         # 8-byte Reload
	movq	584(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rax
	leaq	624(%rsp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB6_95
# BB#94:                                # %vector.memcheck529
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	584(%rsp), %rax         # 8-byte Reload
	cmpq	56(%rsp), %rax          # 8-byte Folded Reload
	movl	$0, %ecx
	jbe	.LBB6_101
.LBB6_95:                               # %vector.body508.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB6_97
# BB#96:                                # %vector.body508.prol
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	584(%rsp), %rax         # 8-byte Reload
	movdqu	(%rax), %xmm0
	movdqu	16(%rax), %xmm1
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, 624(%rsp)
	movdqa	%xmm1, 640(%rsp)
	movl	$32, %eax
.LBB6_97:                               # %vector.body508.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	movq	240(%rsp), %rcx         # 8-byte Reload
	je	.LBB6_101
# BB#98:                                # %vector.body508.preheader.split.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	240(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rcx
	subq	%rax, %rcx
	leaq	672(%rsp), %rdx
	leaq	(%rdx,%rax), %rdx
	movq	584(%rsp), %rsi         # 8-byte Reload
	leaq	48(%rsi,%rax), %rsi
	pcmpeqd	%xmm2, %xmm2
	.align	16, 0x90
.LBB6_99:                               # %vector.body508
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	-48(%rsi), %xmm0
	movdqu	-32(%rsi), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, -48(%rdx)
	movdqa	%xmm1, -32(%rdx)
	movdqu	-16(%rsi), %xmm0
	movdqu	(%rsi), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, -16(%rdx)
	movdqa	%xmm1, (%rdx)
	addq	$64, %rdx
	addq	$64, %rsi
	addq	$-64, %rcx
	jne	.LBB6_99
# BB#100:                               #   in Loop: Header=BB6_31 Depth=2
	movq	%rdi, %rcx
.LBB6_101:                              # %middle.block509
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	%rcx, 288(%rsp)         # 8-byte Folded Reload
	je	.LBB6_107
# BB#102:                               # %for.body.358.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	%ecx, %eax
	orl	$1, %eax
	movl	920(%rsp), %edx
	subl	%eax, %edx
	testb	$1, %dl
	je	.LBB6_104
# BB#103:                               # %for.body.358.prol
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%rcx, %rdx
	imulq	%r12, %rdx
	movq	584(%rsp), %rsi         # 8-byte Reload
	movb	(%rsi,%rdx), %dl
	notb	%dl
	movb	%dl, 624(%rsp,%rcx)
	orq	$1, %rcx
.LBB6_104:                              # %for.body.358.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	592(%rsp), %rdx         # 8-byte Reload
	cmpl	%eax, %edx
	je	.LBB6_107
# BB#105:                               # %for.body.358.preheader.split.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	592(%rsp), %rax         # 8-byte Reload
	movl	%eax, %edx
	subl	%ecx, %edx
	leaq	625(%rsp), %rax
	leaq	(%rax,%rcx), %rsi
	movq	%r12, %rdi
	imulq	%rcx, %rdi
	incq	%rcx
	imulq	%r12, %rcx
	movq	584(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB6_106:                              # %for.body.358
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rdi,%rbp), %al
	notb	%al
	movb	%al, -1(%rsi)
	movb	(%rcx,%rbp), %al
	notb	%al
	movb	%al, (%rsi)
	addq	$2, %rsi
	addq	%r13, %rbp
	addl	$-2, %edx
	jne	.LBB6_106
.LBB6_107:                              # %for.end.369
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	384(%rsp), %rax         # 8-byte Reload
	movq	584(%rsp), %rcx         # 8-byte Reload
	movb	(%rcx,%rax), %al
	movq	376(%rsp), %rcx         # 8-byte Reload
	movb	%al, 624(%rsp,%rcx)
.LBB6_125:                              # %if.end.375
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	936(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	348(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movzbl	%r11b, %eax
	movl	%eax, (%rsp)
	movzbl	%r8b, %esi
	leaq	624(%rsp), %rdi
	leaq	704(%rsp), %rdx
	movq	600(%rsp), %rcx         # 8-byte Reload
	leaq	784(%rsp), %r8
	movq	592(%rsp), %r9          # 8-byte Reload
	callq	art_pdf_composite_knockout_group_8
.LBB6_137:                              # %if.end.431
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$0, 408(%rsp)           # 4-byte Folded Reload
	je	.LBB6_139
# BB#138:                               # %if.then.433
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	432(%rsp), %rax         # 8-byte Reload
	movq	616(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %esi
	movq	504(%rsp), %rbx         # 8-byte Reload
	movzbl	(%r14,%rbx), %edi
	movzbl	447(%rsp), %edx         # 1-byte Folded Reload
	callq	art_pdf_union_mul_8
	movb	%al, (%r14,%rbx)
.LBB6_139:                              # %if.end.440
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$0, 928(%rsp)
	je	.LBB6_156
# BB#140:                               # %for.cond.443.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	920(%rsp), %eax
	testl	%eax, %eax
	pcmpeqd	%xmm5, %xmm5
	movq	360(%rsp), %r9          # 8-byte Reload
	jle	.LBB6_191
# BB#141:                               # %overflow.checked
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpb	$0, 299(%rsp)           # 1-byte Folded Reload
	movl	$0, %eax
	movq	368(%rsp), %rdx         # 8-byte Reload
	je	.LBB6_149
# BB#142:                               # %vector.memcheck
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	528(%rsp), %rax         # 8-byte Reload
	cmpq	264(%rsp), %rax         # 8-byte Folded Reload
	ja	.LBB6_144
# BB#143:                               # %vector.memcheck
                                        #   in Loop: Header=BB6_31 Depth=2
	leaq	704(%rsp), %rax
	cmpq	512(%rsp), %rax         # 8-byte Folded Reload
	movl	$0, %eax
	jbe	.LBB6_149
.LBB6_144:                              # %vector.body.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	$0, 216(%rsp)           # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB6_146
# BB#145:                               # %vector.body.prol
                                        #   in Loop: Header=BB6_31 Depth=2
	movdqa	704(%rsp), %xmm0
	movdqa	720(%rsp), %xmm1
	movdqu	%xmm0, (%r14)
	movdqu	%xmm1, 16(%r14)
	movl	$32, %ecx
.LBB6_146:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	$0, 224(%rsp)           # 8-byte Folded Reload
	movq	%rdx, %rax
	je	.LBB6_149
	.align	16, 0x90
.LBB6_147:                              # %vector.body
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movaps	704(%rsp,%rcx), %xmm0
	movaps	720(%rsp,%rcx), %xmm1
	movups	%xmm0, (%r14,%rcx)
	movups	%xmm1, 16(%r14,%rcx)
	movdqa	736(%rsp,%rcx), %xmm0
	movdqa	752(%rsp,%rcx), %xmm1
	movdqu	%xmm0, 32(%r14,%rcx)
	movdqu	%xmm1, 48(%r14,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB6_147
# BB#148:                               #   in Loop: Header=BB6_31 Depth=2
	movq	%rdx, %rax
	.align	16, 0x90
.LBB6_149:                              # %middle.block
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	%rax, 392(%rsp)         # 8-byte Folded Reload
	je	.LBB6_191
# BB#150:                               # %for.body.446.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	%eax, %edx
	orl	$1, %edx
	movl	300(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %esi
	subl	%edx, %esi
	movl	920(%rsp), %ecx
	subl	%edx, %ecx
	testb	$3, %sil
	je	.LBB6_153
# BB#151:                               # %for.body.446.prol.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%r12, %rdx
	imulq	%rax, %rdx
	leaq	(%rdx,%r14), %rdx
	leal	1(%rax), %edi
	movl	%ebp, %esi
	subl	%edi, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB6_152:                              # %for.body.446.prol
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	704(%rsp,%rax), %bl
	movb	%bl, (%rdx)
	incq	%rax
	addq	%r12, %rdx
	incl	%esi
	jne	.LBB6_152
.LBB6_153:                              # %for.body.446.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$3, %ecx
	jb	.LBB6_191
# BB#154:                               # %for.body.446.preheader.split.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	920(%rsp), %ecx
	subl	%eax, %ecx
	leaq	3(%rax), %r8
	imulq	%r12, %r8
	leaq	707(%rsp), %rdx
	leaq	(%rdx,%rax), %rsi
	leaq	2(%rax), %rdi
	imulq	%r12, %rdi
	movq	%r12, %rbp
	imulq	%rax, %rbp
	incq	%rax
	imulq	%r12, %rax
	movq	%r14, %rbx
	.align	16, 0x90
.LBB6_155:                              # %for.body.446
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-3(%rsi), %dl
	movb	%dl, (%rbp,%rbx)
	movb	-2(%rsi), %dl
	movb	%dl, (%rax,%rbx)
	movb	-1(%rsi), %dl
	movb	%dl, (%rdi,%rbx)
	movb	(%rsi), %dl
	movb	%dl, (%r8,%rbx)
	addq	%r9, %rbx
	addq	$4, %rsi
	addl	$-4, %ecx
	jne	.LBB6_155
	jmp	.LBB6_191
	.align	16, 0x90
.LBB6_156:                              # %if.else.455
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$0, 944(%rsp)
	je	.LBB6_157
# BB#172:                               # %if.then.457
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpl	$0, 960(%rsp)
	je	.LBB6_186
# BB#173:                               # %for.cond.460.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	920(%rsp), %eax
	cmpl	$2, %eax
	pcmpeqd	%xmm5, %xmm5
	movdqa	.LCPI6_0(%rip), %xmm6   # xmm6 = [255,255,255,255]
	pxor	%xmm7, %xmm7
	jl	.LBB6_190
# BB#174:                               # %overflow.checked432
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpb	$0, 158(%rsp)           # 1-byte Folded Reload
	movl	$0, %ecx
	movq	144(%rsp), %rdx         # 8-byte Reload
	je	.LBB6_180
# BB#175:                               # %vector.memcheck450
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	528(%rsp), %rax         # 8-byte Reload
	cmpq	192(%rsp), %rax         # 8-byte Folded Reload
	ja	.LBB6_176
# BB#177:                               # %vector.memcheck450
                                        #   in Loop: Header=BB6_31 Depth=2
	leaq	704(%rsp), %rax
	cmpq	488(%rsp), %rax         # 8-byte Folded Reload
	movl	$0, %eax
	movl	$0, %ecx
	jbe	.LBB6_180
	jmp	.LBB6_178
.LBB6_157:                              # %for.cond.507.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	920(%rsp), %eax
	cmpl	$2, %eax
	pcmpeqd	%xmm5, %xmm5
	jl	.LBB6_190
# BB#158:                               # %overflow.checked393
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpb	$0, 143(%rsp)           # 1-byte Folded Reload
	movl	$0, %eax
	movq	240(%rsp), %rdx         # 8-byte Reload
	je	.LBB6_166
# BB#159:                               # %vector.memcheck411
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	528(%rsp), %rax         # 8-byte Reload
	cmpq	192(%rsp), %rax         # 8-byte Folded Reload
	ja	.LBB6_161
# BB#160:                               # %vector.memcheck411
                                        #   in Loop: Header=BB6_31 Depth=2
	leaq	704(%rsp), %rax
	cmpq	488(%rsp), %rax         # 8-byte Folded Reload
	movl	$0, %eax
	jbe	.LBB6_166
.LBB6_161:                              # %vector.body389.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB6_163
# BB#162:                               # %vector.body389.prol
                                        #   in Loop: Header=BB6_31 Depth=2
	movdqa	704(%rsp), %xmm0
	pxor	%xmm5, %xmm0
	movdqa	720(%rsp), %xmm1
	pxor	%xmm5, %xmm1
	movdqu	%xmm0, (%r14)
	movdqu	%xmm1, 16(%r14)
	movl	$32, %ecx
.LBB6_163:                              # %vector.body389.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	movq	%rdx, %rax
	je	.LBB6_166
	.align	16, 0x90
.LBB6_164:                              # %vector.body389
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqa	704(%rsp,%rcx), %xmm0
	pxor	%xmm5, %xmm0
	movdqa	720(%rsp,%rcx), %xmm1
	pxor	%xmm5, %xmm1
	movdqu	%xmm0, (%r14,%rcx)
	movdqu	%xmm1, 16(%r14,%rcx)
	movdqa	736(%rsp,%rcx), %xmm0
	pxor	%xmm5, %xmm0
	movdqa	752(%rsp,%rcx), %xmm1
	pxor	%xmm5, %xmm1
	movdqu	%xmm0, 32(%r14,%rcx)
	movdqu	%xmm1, 48(%r14,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB6_164
# BB#165:                               #   in Loop: Header=BB6_31 Depth=2
	movq	%rdx, %rax
.LBB6_166:                              # %middle.block390
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	%rax, 288(%rsp)         # 8-byte Folded Reload
	je	.LBB6_190
# BB#167:                               # %for.body.510.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	920(%rsp), %edx
	subl	%ecx, %edx
	testb	$1, %dl
	je	.LBB6_169
# BB#168:                               # %for.body.510.prol
                                        #   in Loop: Header=BB6_31 Depth=2
	movb	704(%rsp,%rax), %dl
	notb	%dl
	movq	%rax, %rsi
	imulq	%r12, %rsi
	movb	%dl, (%r14,%rsi)
	orq	$1, %rax
.LBB6_169:                              # %for.body.510.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	592(%rsp), %rdx         # 8-byte Reload
	cmpl	%ecx, %edx
	je	.LBB6_190
# BB#170:                               # %for.body.510.preheader.split.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	592(%rsp), %rcx         # 8-byte Reload
	subl	%eax, %ecx
	leaq	705(%rsp), %rdx
	leaq	(%rdx,%rax), %rdx
	movq	%r12, %rsi
	imulq	%rax, %rsi
	leaq	(%rsi,%r14), %rsi
	incq	%rax
	imulq	%r12, %rax
	leaq	(%rax,%r14), %rax
	xorl	%edi, %edi
	.align	16, 0x90
.LBB6_171:                              # %for.body.510
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-1(%rdx), %bl
	notb	%bl
	movb	%bl, (%rsi,%rdi)
	movb	(%rdx), %bl
	notb	%bl
	movb	%bl, (%rax,%rdi)
	addq	$2, %rdx
	addq	%r13, %rdi
	addl	$-2, %ecx
	jne	.LBB6_171
	jmp	.LBB6_190
.LBB6_186:                              # %for.cond.484.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	952(%rsp), %rax
	movq	%rax, %rdx
	testq	%rdx, %rdx
	movq	%r14, %rax
	leaq	704(%rsp), %rcx
	pcmpeqd	%xmm5, %xmm5
	je	.LBB6_190
	.align	16, 0x90
.LBB6_187:                              # %for.body.487
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	$1, %dl
	je	.LBB6_189
# BB#188:                               # %if.then.491
                                        #   in Loop: Header=BB6_187 Depth=3
	movb	(%rcx), %bl
	notb	%bl
	movb	%bl, (%rax)
.LBB6_189:                              # %for.inc.501
                                        #   in Loop: Header=BB6_187 Depth=3
	shrq	%rdx
	incq	%rcx
	addq	%r12, %rax
	testq	%rdx, %rdx
	jne	.LBB6_187
	jmp	.LBB6_190
.LBB6_135:                              # %land.lhs.true.412
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	336(%rsp), %rax         # 8-byte Reload
	movq	616(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	cmpl	$8, %eax
	je	.LBB6_137
# BB#136:                               # %if.then.418
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	352(%rsp), %rcx         # 8-byte Reload
	orb	(%r14,%rcx), %al
	andb	$-9, %al
	movb	%al, (%r14,%rcx)
	jmp	.LBB6_137
.LBB6_176:                              #   in Loop: Header=BB6_31 Depth=2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB6_178:                              # %vector.body428
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	(%r14,%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	movd	4(%r14,%rax), %xmm1     # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pandn	%xmm6, %xmm0
	pandn	%xmm6, %xmm1
	movd	704(%rsp,%rax), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movd	708(%rsp,%rax), %xmm3   # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm7, %xmm2    # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1],xmm2[2],xmm7[2],xmm2[3],xmm7[3],xmm2[4],xmm7[4],xmm2[5],xmm7[5],xmm2[6],xmm7[6],xmm2[7],xmm7[7]
	punpcklwd	%xmm7, %xmm2    # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1],xmm2[2],xmm7[2],xmm2[3],xmm7[3]
	punpcklbw	%xmm7, %xmm3    # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1],xmm3[2],xmm7[2],xmm3[3],xmm7[3],xmm3[4],xmm7[4],xmm3[5],xmm7[5],xmm3[6],xmm7[6],xmm3[7],xmm7[7]
	punpcklwd	%xmm7, %xmm3    # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1],xmm3[2],xmm7[2],xmm3[3],xmm7[3]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psrld	$8, %xmm0
	psrld	$8, %xmm1
	pxor	%xmm6, %xmm0
	pxor	%xmm6, %xmm1
	pand	%xmm6, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, (%r14,%rax)
	pand	%xmm6, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, 4(%r14,%rax)
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.LBB6_178
# BB#179:                               #   in Loop: Header=BB6_31 Depth=2
	movq	64(%rsp), %rcx          # 8-byte Reload
.LBB6_180:                              # %middle.block429
                                        #   in Loop: Header=BB6_31 Depth=2
	cmpq	%rcx, 288(%rsp)         # 8-byte Folded Reload
	je	.LBB6_190
# BB#181:                               # %for.body.463.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	movl	%ecx, %eax
	orl	$1, %eax
	movl	920(%rsp), %edx
	subl	%eax, %edx
	testb	$1, %dl
	je	.LBB6_183
# BB#182:                               # %for.body.463.prol
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	%rcx, %rdx
	imulq	%r12, %rdx
	movzbl	(%r14,%rdx), %esi
	xorl	$255, %esi
	movzbl	704(%rsp,%rcx), %edi
	imull	%esi, %edi
	shrl	$8, %edi
	notl	%edi
	movb	%dil, (%r14,%rdx)
	orq	$1, %rcx
.LBB6_183:                              # %for.body.463.preheader.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	592(%rsp), %rdx         # 8-byte Reload
	cmpl	%eax, %edx
	je	.LBB6_190
# BB#184:                               # %for.body.463.preheader.split.split
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	592(%rsp), %rax         # 8-byte Reload
	subl	%ecx, %eax
	leaq	705(%rsp), %rdx
	leaq	(%rdx,%rcx), %rdx
	movq	%r12, %rsi
	imulq	%rcx, %rsi
	leaq	(%rsi,%r14), %rsi
	incq	%rcx
	imulq	%r12, %rcx
	leaq	(%rcx,%r14), %rcx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB6_185:                              # %for.body.463
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rsi,%rdi), %ebp
	xorl	$255, %ebp
	movzbl	-1(%rdx), %ebx
	imull	%ebp, %ebx
	shrl	$8, %ebx
	notl	%ebx
	movb	%bl, (%rsi,%rdi)
	movzbl	(%rcx,%rdi), %ebp
	xorl	$255, %ebp
	movzbl	(%rdx), %ebx
	imull	%ebp, %ebx
	shrl	$8, %ebx
	notl	%ebx
	movb	%bl, (%rcx,%rdi)
	addq	$2, %rdx
	addq	%r13, %rdi
	addl	$-2, %eax
	jne	.LBB6_185
	.align	16, 0x90
.LBB6_190:                              # %if.end.522
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	376(%rsp), %rax         # 8-byte Reload
	movb	704(%rsp,%rax), %al
	movq	384(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%r14,%rcx)
.LBB6_191:                              # %do.end.531
                                        #   in Loop: Header=BB6_31 Depth=2
	movq	600(%rsp), %rax         # 8-byte Reload
	leaq	1(%rax), %rdx
	testq	%rax, %rax
	cmoveq	%rax, %rdx
	movq	584(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	leaq	1(%rcx), %rsi
	movq	472(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	cmoveq	%rcx, %rsi
	incq	616(%rsp)               # 8-byte Folded Spill
	incq	%r14
	incq	%r15
	cmpl	484(%rsp), %r15d        # 4-byte Folded Reload
	movq	416(%rsp), %rcx         # 8-byte Reload
	jne	.LBB6_31
# BB#192:                               # %for.cond.194.for.end.545_crit_edge
                                        #   in Loop: Header=BB6_24 Depth=1
	movq	536(%rsp), %rax         # 8-byte Reload
	addq	128(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 536(%rsp)         # 8-byte Spill
	movq	464(%rsp), %rax         # 8-byte Reload
	movl	60(%rax), %r15d
	movq	208(%rsp), %rdi         # 8-byte Reload
	movl	60(%rdi), %r10d
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	120(%rsp), %r8          # 8-byte Reload
	movq	112(%rsp), %r14         # 8-byte Reload
	jmp	.LBB6_193
	.align	16, 0x90
.LBB6_29:                               #   in Loop: Header=BB6_24 Depth=1
	movq	200(%rsp), %rax         # 8-byte Reload
.LBB6_193:                              # %for.end.545
                                        #   in Loop: Header=BB6_24 Depth=1
	movq	%rdx, %rbx
	movl	%r15d, %edx
	movl	484(%rsp), %edi         # 4-byte Reload
	subl	%edi, %edx
	movslq	%edx, %rbp
	movl	%r10d, %edx
	subl	%edi, %edx
	movslq	%edx, %rdi
	leaq	(%rbx,%rdi), %rdx
	testq	%rbx, %rbx
	cmoveq	%rbx, %rdx
	testq	%rax, %rax
	movl	$0, %ebx
	je	.LBB6_195
# BB#194:                               # %if.then.564
                                        #   in Loop: Header=BB6_24 Depth=1
	movslq	60(%rcx), %rbx
	addq	%rbx, %rax
	movq	%rax, %rbx
.LBB6_195:                              # %if.end.568
                                        #   in Loop: Header=BB6_24 Depth=1
	addq	%rbp, 536(%rsp)         # 8-byte Folded Spill
	addq	%rdi, %r14
	leaq	(%rdi,%rsi), %rdi
	movq	472(%rsp), %rbp         # 8-byte Reload
	testl	%ebp, %ebp
	cmovneq	%rdi, %rsi
	cmpl	$1, %r8d
	leal	-1(%r8), %edi
	movq	%rbx, 200(%rsp)         # 8-byte Spill
	movl	%edi, %r8d
	jg	.LBB6_24
.LBB6_196:                              # %cleanup
	addq	$856, %rsp              # imm = 0x358
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pdf14_compose_group, .Lfunc_end6-pdf14_compose_group
	.cfi_endproc

	.globl	pdf14_encode_color
	.align	16, 0x90
	.type	pdf14_encode_color,@function
pdf14_encode_color:                     # @pdf14_encode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	100(%rdi), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB7_6
# BB#1:                                 # %for.body.preheader
	xorl	%edx, %edx
	testb	$1, %al
	movl	$0, %ecx
	je	.LBB7_3
# BB#2:                                 # %for.body.prol
	movzwl	(%rsi), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movl	$1, %edx
.LBB7_3:                                # %for.body.preheader.split
	cmpl	$1, %eax
	je	.LBB7_6
# BB#4:                                 # %for.body.preheader.split.split
	subl	%edx, %eax
	leaq	2(%rsi,%rdx,2), %rdx
	.align	16, 0x90
.LBB7_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rcx
	movzwl	-2(%rdx), %esi
	imull	$65281, %esi, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	orq	%rcx, %rsi
	shlq	$8, %rsi
	movzwl	(%rdx), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	orq	%rsi, %rcx
	addq	$4, %rdx
	addl	$-2, %eax
	jne	.LBB7_5
.LBB7_6:                                # %for.end
	cmpq	$-1, %rcx
	sete	%al
	movzbl	%al, %eax
	xorq	%rcx, %rax
	retq
.Lfunc_end7:
	.size	pdf14_encode_color, .Lfunc_end7-pdf14_encode_color
	.cfi_endproc

	.globl	pdf14_encode_color_tag
	.align	16, 0x90
	.type	pdf14_encode_color_tag,@function
pdf14_encode_color_tag:                 # @pdf14_encode_color_tag
	.cfi_startproc
# BB#0:                                 # %entry
	movl	100(%rdi), %eax
	movl	1112(%rdi), %edx
	andl	$-129, %edx
	testl	%eax, %eax
	jle	.LBB8_1
# BB#2:                                 # %for.body.preheader
	xorl	%edi, %edi
	testb	$1, %al
	je	.LBB8_4
# BB#3:                                 # %for.body.prol
	shlq	$8, %rdx
	movzwl	(%rsi), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	orq	%rdx, %rcx
	movl	$1, %edi
	movq	%rcx, %rdx
.LBB8_4:                                # %for.body.preheader.split
	cmpl	$1, %eax
	je	.LBB8_7
# BB#5:                                 # %for.body.preheader.split.split
	subl	%edi, %eax
	leaq	2(%rsi,%rdi,2), %rsi
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB8_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rcx
	movzwl	-2(%rsi), %edx
	imull	$65281, %edx, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$24, %edx
	orq	%rcx, %rdx
	shlq	$8, %rdx
	movzwl	(%rsi), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	orq	%rdx, %rcx
	addq	$4, %rsi
	addl	$-2, %eax
	jne	.LBB8_6
	jmp	.LBB8_7
.LBB8_1:
	movq	%rdx, %rcx
.LBB8_7:                                # %for.end
	cmpq	$-1, %rcx
	sete	%al
	movzbl	%al, %eax
	xorq	%rcx, %rax
	retq
.Lfunc_end8:
	.size	pdf14_encode_color_tag, .Lfunc_end8-pdf14_encode_color_tag
	.cfi_endproc

	.globl	pdf14_decode_color
	.align	16, 0x90
	.type	pdf14_decode_color,@function
pdf14_decode_color:                     # @pdf14_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	100(%rdi), %esi
	testl	%esi, %esi
	jle	.LBB9_6
# BB#1:                                 # %for.body.lr.ph
	leal	-1(%rsi), %ecx
	xorl	%edi, %edi
	testb	$1, %sil
	je	.LBB9_3
# BB#2:                                 # %for.body.prol
	movzbl	%al, %esi
	imull	$257, %esi, %esi        # imm = 0x101
	movslq	%ecx, %rdi
	movw	%si, (%rdx,%rdi,2)
	shrq	$8, %rax
	movl	$1, %edi
.LBB9_3:                                # %for.body.lr.ph.split
	testl	%ecx, %ecx
	je	.LBB9_6
# BB#4:                                 # %for.body.lr.ph.split.split
	movl	%ecx, %esi
	subl	%edi, %esi
	incl	%edi
	subl	%edi, %ecx
	.align	16, 0x90
.LBB9_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	%al, %edi
	imull	$257, %edi, %edi        # imm = 0x101
	movslq	%esi, %rsi
	movw	%di, (%rdx,%rsi,2)
	movzbl	%ah, %edi  # NOREX
	imull	$257, %edi, %edi        # imm = 0x101
	movslq	%ecx, %rcx
	movw	%di, (%rdx,%rcx,2)
	shrq	$16, %rax
	addl	$-2, %esi
	addl	$-2, %ecx
	cmpl	$-1, %esi
	jne	.LBB9_5
.LBB9_6:                                # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	pdf14_decode_color, .Lfunc_end9-pdf14_decode_color
	.cfi_endproc

	.globl	pdf14_compressed_encode_color
	.align	16, 0x90
	.type	pdf14_compressed_encode_color,@function
pdf14_compressed_encode_color:          # @pdf14_compressed_encode_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp55:
	.cfi_def_cfa_offset 32
.Ltmp56:
	.cfi_offset %rbx, -24
.Ltmp57:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	1624(%rbx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*%rcx
.LBB10_2:                               # %if.end
	leaq	1736(%rbx), %rdx
	testq	%rax, %rax
	cmovneq	%rax, %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	devn_encode_compressed_color # TAILCALL
.Lfunc_end10:
	.size	pdf14_compressed_encode_color, .Lfunc_end10-pdf14_compressed_encode_color
	.cfi_endproc

	.globl	pdf14_compressed_decode_color
	.align	16, 0x90
	.type	pdf14_compressed_decode_color,@function
pdf14_compressed_decode_color:          # @pdf14_compressed_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 32
.Ltmp61:
	.cfi_offset %rbx, -32
.Ltmp62:
	.cfi_offset %r14, -24
.Ltmp63:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	1624(%rbx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*%rcx
.LBB11_2:                               # %if.end
	leaq	1736(%rbx), %rcx
	testq	%rax, %rax
	cmovneq	%rax, %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	devn_decode_compressed_color # TAILCALL
.Lfunc_end11:
	.size	pdf14_compressed_decode_color, .Lfunc_end11-pdf14_compressed_decode_color
	.cfi_endproc

	.globl	pdf14_gray_cs_to_cmyk_cm
	.align	16, 0x90
	.type	pdf14_gray_cs_to_cmyk_cm,@function
pdf14_gray_cs_to_cmyk_cm:               # @pdf14_gray_cs_to_cmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 40
.Ltmp68:
	.cfi_offset %rbx, -40
.Ltmp69:
	.cfi_offset %r12, -32
.Ltmp70:
	.cfi_offset %r14, -24
.Ltmp71:
	.cfi_offset %r15, -16
	movl	100(%rdi), %r12d
	movw	$0, 4(%rdx)
	movw	$0, 2(%rdx)
	movw	$0, (%rdx)
	movl	$32760, %eax            # imm = 0x7FF8
	subl	%esi, %eax
	movw	%ax, 6(%rdx)
	leal	-1(%r12), %eax
	cmpl	$4, %eax
	jl	.LBB12_12
# BB#1:                                 # %for.body.lr.ph
	movslq	%eax, %r8
	leal	-5(%r12), %edi
	leaq	1(%rdi), %r9
	movabsq	$8589934576, %r10       # imm = 0x1FFFFFFF0
	movq	%r9, %r14
	andq	%r10, %r14
	xorl	%ecx, %ecx
	movq	%r9, %r11
	andq	%r10, %r11
	je	.LBB12_9
# BB#2:                                 # %vector.body.preheader
	leaq	1(%rdi), %r15
	andq	%r10, %r15
	addq	$-16, %r15
	movl	%r15d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%esi, %esi
	testb	$3, %cl
	je	.LBB12_5
# BB#3:                                 # %vector.body.prol.preheader
	leal	-1(%r12), %ecx
	movslq	%ecx, %rcx
	leaq	-14(%rdx,%rcx,2), %rbx
	leal	-4(%r12), %ecx
	andl	$48, %ecx
	addl	$-16, %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB12_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rbx)
	movups	%xmm0, -16(%rbx)
	addq	$16, %rsi
	addq	$-32, %rbx
	incq	%rcx
	jne	.LBB12_4
.LBB12_5:                               # %vector.body.preheader.split
	subq	%r14, %r8
	subl	%r14d, %eax
	cmpq	$48, %r15
	jb	.LBB12_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rdi
	andq	%r10, %rdi
	subq	%rsi, %rdi
	decl	%r12d
	movslq	%r12d, %rcx
	addq	$-7, %rcx
	subq	%rsi, %rcx
	leaq	(%rdx,%rcx,2), %rcx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB12_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rcx)
	movups	%xmm0, -16(%rcx)
	movups	%xmm0, -32(%rcx)
	movups	%xmm0, -48(%rcx)
	movups	%xmm0, -64(%rcx)
	movups	%xmm0, -80(%rcx)
	movups	%xmm0, -96(%rcx)
	movups	%xmm0, -112(%rcx)
	addq	$-128, %rcx
	addq	$-64, %rdi
	jne	.LBB12_7
.LBB12_8:
	movq	%r11, %rcx
.LBB12_9:                               # %middle.block
	cmpq	%rcx, %r9
	je	.LBB12_12
# BB#10:                                # %for.body.preheader
	leaq	(%rdx,%r8,2), %rcx
	.align	16, 0x90
.LBB12_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	decl	%eax
	addq	$-2, %rcx
	cmpl	$3, %eax
	jg	.LBB12_11
.LBB12_12:                              # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	pdf14_gray_cs_to_cmyk_cm, .Lfunc_end12-pdf14_gray_cs_to_cmyk_cm
	.cfi_endproc

	.globl	pdf14_rgb_cs_to_cmyk_cm
	.align	16, 0x90
	.type	pdf14_rgb_cs_to_cmyk_cm,@function
pdf14_rgb_cs_to_cmyk_cm:                # @pdf14_rgb_cs_to_cmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp76:
	.cfi_def_cfa_offset 48
.Ltmp77:
	.cfi_offset %rbx, -40
.Ltmp78:
	.cfi_offset %r12, -32
.Ltmp79:
	.cfi_offset %r14, -24
.Ltmp80:
	.cfi_offset %r15, -16
	movq	%r9, %r14
	movq	%rsi, %rax
	movl	100(%rdi), %r15d
	testq	%rax, %rax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	24(%rdi), %r9
	movswl	%dx, %edi
	movswl	%cx, %esi
	movswl	%r8w, %edx
	movq	%rax, %rcx
	movq	%r14, %r8
	callq	color_rgb_to_cmyk
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movl	$32760, %eax            # imm = 0x7FF8
	movl	$32760, %esi            # imm = 0x7FF8
	subl	%edx, %esi
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%ecx, %edx
	subl	%r8d, %eax
	movswl	%ax, %ecx
	movswl	%dx, %edi
	cmpl	%ecx, %edi
	cmovgw	%cx, %di
	movswl	%di, %ecx
	movswl	%si, %edi
	cmpl	%ecx, %edi
	cmovgw	%cx, %di
	subl	%edi, %esi
	movw	%si, (%r14)
	subl	%edi, %edx
	movw	%dx, 2(%r14)
	subl	%edi, %eax
	movw	%ax, 4(%r14)
	movw	%di, 6(%r14)
.LBB13_3:                               # %for.cond.preheader
	leal	-1(%r15), %eax
	cmpl	$4, %eax
	jl	.LBB13_15
# BB#4:                                 # %for.body.lr.ph
	movslq	%eax, %r8
	leal	-5(%r15), %esi
	leaq	1(%rsi), %r10
	movabsq	$8589934576, %r9        # imm = 0x1FFFFFFF0
	movq	%r10, %r12
	andq	%r9, %r12
	xorl	%ecx, %ecx
	movq	%r10, %r11
	andq	%r9, %r11
	je	.LBB13_12
# BB#5:                                 # %vector.body.preheader
	leaq	1(%rsi), %rcx
	andq	%r9, %rcx
	addq	$-16, %rcx
	movl	%ecx, %edx
	shrl	$4, %edx
	incl	%edx
	xorl	%edi, %edi
	testb	$3, %dl
	je	.LBB13_8
# BB#6:                                 # %vector.body.prol.preheader
	leal	-1(%r15), %edx
	movslq	%edx, %rdx
	leaq	-14(%r14,%rdx,2), %rbx
	leal	-4(%r15), %edx
	andl	$48, %edx
	addl	$-16, %edx
	shrl	$4, %edx
	incl	%edx
	andl	$3, %edx
	negq	%rdx
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB13_7:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rbx)
	movups	%xmm0, -16(%rbx)
	addq	$16, %rdi
	addq	$-32, %rbx
	incq	%rdx
	jne	.LBB13_7
.LBB13_8:                               # %vector.body.preheader.split
	subq	%r12, %r8
	subl	%r12d, %eax
	cmpq	$48, %rcx
	jb	.LBB13_11
# BB#9:                                 # %vector.body.preheader.split.split
	incq	%rsi
	andq	%r9, %rsi
	subq	%rdi, %rsi
	decl	%r15d
	movslq	%r15d, %rcx
	addq	$-7, %rcx
	subq	%rdi, %rcx
	leaq	(%r14,%rcx,2), %rcx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB13_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rcx)
	movups	%xmm0, -16(%rcx)
	movups	%xmm0, -32(%rcx)
	movups	%xmm0, -48(%rcx)
	movups	%xmm0, -64(%rcx)
	movups	%xmm0, -80(%rcx)
	movups	%xmm0, -96(%rcx)
	movups	%xmm0, -112(%rcx)
	addq	$-128, %rcx
	addq	$-64, %rsi
	jne	.LBB13_10
.LBB13_11:
	movq	%r11, %rcx
.LBB13_12:                              # %middle.block
	cmpq	%rcx, %r10
	je	.LBB13_15
# BB#13:                                # %for.body.preheader
	leaq	(%r14,%r8,2), %rcx
	.align	16, 0x90
.LBB13_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	decl	%eax
	addq	$-2, %rcx
	cmpl	$3, %eax
	jg	.LBB13_14
.LBB13_15:                              # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	pdf14_rgb_cs_to_cmyk_cm, .Lfunc_end13-pdf14_rgb_cs_to_cmyk_cm
	.cfi_endproc

	.globl	pdf14_cmyk_cs_to_cmyk_cm
	.align	16, 0x90
	.type	pdf14_cmyk_cs_to_cmyk_cm,@function
pdf14_cmyk_cs_to_cmyk_cm:               # @pdf14_cmyk_cs_to_cmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 40
.Ltmp85:
	.cfi_offset %rbx, -40
.Ltmp86:
	.cfi_offset %r12, -32
.Ltmp87:
	.cfi_offset %r14, -24
.Ltmp88:
	.cfi_offset %r15, -16
	movl	100(%rdi), %edi
	movw	%si, (%r9)
	movw	%dx, 2(%r9)
	movw	%cx, 4(%r9)
	movw	%r8w, 6(%r9)
	leal	-1(%rdi), %eax
	cmpl	$4, %eax
	jl	.LBB14_12
# BB#1:                                 # %for.body.lr.ph
	movslq	%eax, %r8
	leal	-5(%rdi), %esi
	leaq	1(%rsi), %r11
	movabsq	$8589934576, %r10       # imm = 0x1FFFFFFF0
	movq	%r11, %r15
	andq	%r10, %r15
	xorl	%ecx, %ecx
	movq	%r11, %r14
	andq	%r10, %r14
	je	.LBB14_9
# BB#2:                                 # %vector.body.preheader
	leaq	1(%rsi), %r12
	andq	%r10, %r12
	addq	$-16, %r12
	movl	%r12d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%edx, %edx
	testb	$3, %cl
	je	.LBB14_5
# BB#3:                                 # %vector.body.prol.preheader
	leal	-1(%rdi), %ecx
	movslq	%ecx, %rcx
	leaq	-14(%r9,%rcx,2), %rcx
	leal	-4(%rdi), %ebx
	andl	$48, %ebx
	addl	$-16, %ebx
	shrl	$4, %ebx
	incl	%ebx
	andl	$3, %ebx
	negq	%rbx
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB14_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rcx)
	movups	%xmm0, -16(%rcx)
	addq	$16, %rdx
	addq	$-32, %rcx
	incq	%rbx
	jne	.LBB14_4
.LBB14_5:                               # %vector.body.preheader.split
	subq	%r15, %r8
	subl	%r15d, %eax
	cmpq	$48, %r12
	jb	.LBB14_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rsi
	andq	%r10, %rsi
	subq	%rdx, %rsi
	decl	%edi
	movslq	%edi, %rcx
	addq	$-7, %rcx
	subq	%rdx, %rcx
	leaq	(%r9,%rcx,2), %rcx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB14_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rcx)
	movups	%xmm0, -16(%rcx)
	movups	%xmm0, -32(%rcx)
	movups	%xmm0, -48(%rcx)
	movups	%xmm0, -64(%rcx)
	movups	%xmm0, -80(%rcx)
	movups	%xmm0, -96(%rcx)
	movups	%xmm0, -112(%rcx)
	addq	$-128, %rcx
	addq	$-64, %rsi
	jne	.LBB14_7
.LBB14_8:
	movq	%r14, %rcx
.LBB14_9:                               # %middle.block
	cmpq	%rcx, %r11
	je	.LBB14_12
# BB#10:                                # %for.body.preheader
	leaq	(%r9,%r8,2), %rcx
	.align	16, 0x90
.LBB14_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	decl	%eax
	addq	$-2, %rcx
	cmpl	$3, %eax
	jg	.LBB14_11
.LBB14_12:                              # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	pdf14_cmyk_cs_to_cmyk_cm, .Lfunc_end14-pdf14_cmyk_cs_to_cmyk_cm
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_0:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
.LCPI15_1:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	gx_build_blended_image_row
	.align	16, 0x90
	.type	gx_build_blended_image_row,@function
gx_build_blended_image_row:             # @gx_build_blended_image_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp92:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp93:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 56
	subq	$48, %rsp
.Ltmp95:
	.cfi_def_cfa_offset 104
.Ltmp96:
	.cfi_offset %rbx, -56
.Ltmp97:
	.cfi_offset %r12, -48
.Ltmp98:
	.cfi_offset %r13, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
.Ltmp101:
	.cfi_offset %rbp, -16
	movl	%r9d, 28(%rsp)          # 4-byte Spill
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	testl	%ecx, %ecx
	jle	.LBB15_39
# BB#1:                                 # %for.body.lr.ph
	movl	%r8d, %esi
	movl	%esi, 24(%rsp)          # 4-byte Spill
	movl	%esi, %eax
	imull	%edx, %eax
	movl	28(%rsp), %ecx          # 4-byte Reload
	movzbl	%cl, %ecx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movslq	%edx, %r9
	movslq	%esi, %rdx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	cltq
	movq	%rax, -16(%rsp)         # 8-byte Spill
	leal	-1(%rdx), %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	leaq	1(%rax), %r8
	movq	%r8, -32(%rsp)          # 8-byte Spill
	movabsq	$8589934560, %rbp       # imm = 0x1FFFFFFE0
	movq	%r8, %rsi
	andq	%rbp, %rsi
	movq	%rsi, -48(%rsp)         # 8-byte Spill
	setne	%r10b
	leaq	-32(%rsi), %rax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	shrq	$5, %rax
	movq	%rax, -112(%rsp)        # 8-byte Spill
	leal	1(%rax), %ebx
	movd	%ecx, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	andl	$3, %ebx
	movq	%rbx, -96(%rsp)         # 8-byte Spill
	cmpl	$1, %r9d
	sete	%bl
	andb	%bl, %r10b
	movb	%r10b, -49(%rsp)        # 1-byte Spill
	andl	$1, %eax
	movq	%rax, -120(%rsp)        # 8-byte Spill
	orq	$24, %rbp
	andq	%r8, %rbp
	movq	%rbp, -64(%rsp)         # 8-byte Spill
	setne	%al
	andb	%bl, %al
	movb	%al, -33(%rsp)          # 1-byte Spill
	pxor	%xmm10, %xmm10
	pxor	%xmm11, %xmm11
	pinsrw	$0, %ecx, %xmm11
	pinsrw	$2, %ecx, %xmm11
	pinsrw	$4, %ecx, %xmm11
	pinsrw	$6, %ecx, %xmm11
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%r8, %rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	leal	-32(%rsi), %eax
	shrl	$5, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movdqa	.LCPI15_0(%rip), %xmm8  # xmm8 = [128,128,128,128]
	movdqa	.LCPI15_1(%rip), %xmm9  # xmm9 = [255,255,255,255]
	movq	104(%rsp), %rbp
	leal	1(%rdx), %eax
	movl	%eax, -76(%rsp)         # 4-byte Spill
	leaq	4(%rbp), %r8
	movq	%rdi, %r11
	movq	%r11, 8(%rsp)           # 8-byte Spill
	leaq	4(%r11), %r12
	movl	%edx, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	(%r9,%r9), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB15_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_8 Depth 2
                                        #     Child Loop BB15_12 Depth 2
                                        #     Child Loop BB15_21 Depth 2
                                        #     Child Loop BB15_28 Depth 2
                                        #     Child Loop BB15_32 Depth 2
                                        #     Child Loop BB15_34 Depth 2
                                        #     Child Loop BB15_37 Depth 2
	movq	%rdx, %rsi
	imulq	%r10, %rsi
	movq	104(%rsp), %rax
	movq	%rax, %rdx
	leaq	(%rdx,%rsi), %rbx
	movq	-24(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rsi), %rax
	leaq	(%rax,%rdx), %r14
	movq	8(%rsp), %rdx           # 8-byte Reload
	leaq	(%rdx,%r10), %r13
	leaq	(%rcx,%r10), %rax
	leaq	(%rax,%rdx), %rax
	movq	-16(%rsp), %rcx         # 8-byte Reload
	leaq	(%r10,%rcx), %rcx
	movzbl	(%rdx,%rcx), %edx
	movl	%edx, %ecx
	incl	%ecx
	testb	$-2, %cl
	je	.LBB15_13
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	jle	.LBB15_38
# BB#4:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB15_2 Depth=1
	notb	%dl
	movzbl	%dl, %r15d
	cmpb	$0, -33(%rsp)           # 1-byte Folded Reload
	movl	$0, %esi
	je	.LBB15_10
# BB#5:                                 # %vector.memcheck147
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpq	%rax, %rbx
	ja	.LBB15_7
# BB#6:                                 # %vector.memcheck147
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpq	%r14, %r13
	movl	$0, %esi
	jbe	.LBB15_10
.LBB15_7:                               # %vector.ph148
                                        #   in Loop: Header=BB15_2 Depth=1
	movd	%r15d, %xmm5
	pshufd	$0, %xmm5, %xmm5        # xmm5 = xmm5[0,0,0,0]
	movq	-72(%rsp), %rsi         # 8-byte Reload
	movq	%r12, %r13
	movq	%r8, %r14
	.align	16, 0x90
.LBB15_8:                               # %vector.body124
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	-4(%r13), %xmm7         # xmm7 = mem[0],zero,zero,zero
	movd	(%r13), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm10, %xmm7   # xmm7 = xmm7[0],xmm10[0],xmm7[1],xmm10[1],xmm7[2],xmm10[2],xmm7[3],xmm10[3],xmm7[4],xmm10[4],xmm7[5],xmm10[5],xmm7[6],xmm10[6],xmm7[7],xmm10[7]
	punpcklwd	%xmm10, %xmm7   # xmm7 = xmm7[0],xmm10[0],xmm7[1],xmm10[1],xmm7[2],xmm10[2],xmm7[3],xmm10[3]
	punpcklbw	%xmm10, %xmm6   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3],xmm6[4],xmm10[4],xmm6[5],xmm10[5],xmm6[6],xmm10[6],xmm6[7],xmm10[7]
	punpcklwd	%xmm10, %xmm6   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3]
	movdqa	%xmm11, %xmm2
	psubd	%xmm7, %xmm2
	movdqa	%xmm11, %xmm3
	psubd	%xmm6, %xmm3
	pshufd	$245, %xmm2, %xmm1      # xmm1 = xmm2[1,1,3,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm5, %xmm4      # xmm4 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pshufd	$245, %xmm3, %xmm1      # xmm1 = xmm3[1,1,3,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	paddd	%xmm8, %xmm2
	paddd	%xmm8, %xmm3
	movdqa	%xmm2, %xmm1
	psrld	$8, %xmm1
	movdqa	%xmm3, %xmm4
	psrld	$8, %xmm4
	paddd	%xmm2, %xmm1
	paddd	%xmm3, %xmm4
	psrld	$8, %xmm1
	psrld	$8, %xmm4
	paddd	%xmm7, %xmm1
	paddd	%xmm6, %xmm4
	pand	%xmm9, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -4(%r14)
	pand	%xmm9, %xmm4
	packuswb	%xmm4, %xmm4
	packuswb	%xmm4, %xmm4
	movd	%xmm4, (%r14)
	addq	$8, %r14
	addq	$8, %r13
	addq	$-8, %rsi
	jne	.LBB15_8
# BB#9:                                 #   in Loop: Header=BB15_2 Depth=1
	movq	-64(%rsp), %rsi         # 8-byte Reload
.LBB15_10:                              # %middle.block125
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpq	%rsi, -32(%rsp)         # 8-byte Folded Reload
	je	.LBB15_38
# BB#11:                                # %for.body.8.preheader
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%r9, %rax
	imulq	%rsi, %rax
	leaq	(%rax,%r11), %rax
	leaq	(%rbp,%rsi), %rcx
	movl	24(%rsp), %edx          # 4-byte Reload
	subl	%esi, %edx
	.align	16, 0x90
.LBB15_12:                              # %for.body.8
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %esi
	movl	44(%rsp), %edi          # 4-byte Reload
	subl	%esi, %edi
	imull	%r15d, %edi
	movl	%edi, %ebx
	subl	$-128, %ebx
	shrl	$8, %ebx
	leal	128(%rbx,%rdi), %edi
	shrl	$8, %edi
	addl	%esi, %edi
	movb	%dil, (%rcx)
	addq	%r9, %rax
	incq	%rcx
	decl	%edx
	jne	.LBB15_12
	jmp	.LBB15_38
	.align	16, 0x90
.LBB15_13:                              # %if.else
                                        #   in Loop: Header=BB15_2 Depth=1
	testb	%dl, %dl
	je	.LBB15_29
# BB#14:                                # %for.cond.43.preheader
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	jle	.LBB15_38
# BB#15:                                # %for.body.46.lr.ph
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpb	$0, -49(%rsp)           # 1-byte Folded Reload
	movl	$0, %ecx
	movq	-48(%rsp), %rdx         # 8-byte Reload
	je	.LBB15_23
# BB#16:                                # %vector.memcheck
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpq	%rax, %rbx
	ja	.LBB15_18
# BB#17:                                # %vector.memcheck
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpq	%r14, %r13
	movl	$0, %ecx
	jbe	.LBB15_23
.LBB15_18:                              # %vector.body90.preheader
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpq	$0, -120(%rsp)          # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB15_20
# BB#19:                                # %vector.body90.prol
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movdqu	(%rax,%r10), %xmm1
	movdqu	16(%rax,%r10), %xmm2
	movq	104(%rsp), %rax
	movdqu	%xmm1, (%rax,%rsi)
	movdqu	%xmm2, 16(%rax,%rsi)
	movl	$32, %eax
.LBB15_20:                              # %vector.body90.preheader.split
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpq	$0, -112(%rsp)          # 8-byte Folded Reload
	movq	%rdx, %rcx
	je	.LBB15_23
	.align	16, 0x90
.LBB15_21:                              # %vector.body90
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r11,%rax), %xmm1
	movups	16(%r11,%rax), %xmm2
	movups	%xmm1, (%rbp,%rax)
	movups	%xmm2, 16(%rbp,%rax)
	movdqu	32(%r11,%rax), %xmm1
	movdqu	48(%r11,%rax), %xmm2
	movdqu	%xmm1, 32(%rbp,%rax)
	movdqu	%xmm2, 48(%rbp,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.LBB15_21
# BB#22:                                #   in Loop: Header=BB15_2 Depth=1
	movq	%rdx, %rcx
.LBB15_23:                              # %middle.block91
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpq	%rcx, -32(%rsp)         # 8-byte Folded Reload
	je	.LBB15_38
# BB#24:                                # %for.body.46.preheader
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	%ecx, %eax
	orl	$1, %eax
	movl	-76(%rsp), %edx         # 4-byte Reload
	subl	%eax, %edx
	testb	$1, %dl
	je	.LBB15_26
# BB#25:                                # %for.body.46.prol
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rcx, %rdx
	imulq	%r9, %rdx
	addq	%r10, %rdx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movb	(%rdi,%rdx), %dl
	leaq	(%rsi,%rcx), %rsi
	movq	104(%rsp), %rdi
	movb	%dl, (%rdi,%rsi)
	orq	$1, %rcx
.LBB15_26:                              # %for.body.46.preheader.split
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpl	24(%rsp), %eax          # 4-byte Folded Reload
	je	.LBB15_38
# BB#27:                                # %for.body.46.preheader.split.split
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%r9, %rax
	imulq	%rcx, %rax
	leaq	(%rax,%r11), %rax
	leaq	1(%rcx), %rdx
	imulq	%r9, %rdx
	leaq	(%rdx,%r11), %rdx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB15_28:                              # %for.body.46
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rax,%rsi), %bl
	movb	%bl, (%rbp,%rcx)
	movb	(%rdx,%rsi), %bl
	movb	%bl, 1(%rbp,%rcx)
	addq	$2, %rcx
	addq	16(%rsp), %rsi          # 8-byte Folded Reload
	movq	32(%rsp), %rdi          # 8-byte Reload
	cmpl	%ecx, %edi
	jne	.LBB15_28
	jmp	.LBB15_38
.LBB15_29:                              # %for.cond.31.preheader
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	jle	.LBB15_38
# BB#30:                                # %for.body.34.lr.ph
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-48(%rsp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	movl	$0, %ecx
	je	.LBB15_36
# BB#31:                                # %vector.ph
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpq	$0, -96(%rsp)           # 8-byte Folded Reload
	movq	-104(%rsp), %rcx        # 8-byte Reload
	movl	$0, %eax
	je	.LBB15_33
	.align	16, 0x90
.LBB15_32:                              # %vector.body.prol
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%rbp,%rax)
	movdqu	%xmm0, 16(%rbp,%rax)
	addq	$32, %rax
	incq	%rcx
	jne	.LBB15_32
.LBB15_33:                              # %vector.ph.split
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpq	$96, -88(%rsp)          # 8-byte Folded Reload
	movq	%rdx, %rcx
	jb	.LBB15_36
	.align	16, 0x90
.LBB15_34:                              # %vector.body
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%rbp,%rax)
	movdqu	%xmm0, 16(%rbp,%rax)
	movdqu	%xmm0, 32(%rbp,%rax)
	movdqu	%xmm0, 48(%rbp,%rax)
	movdqu	%xmm0, 64(%rbp,%rax)
	movdqu	%xmm0, 80(%rbp,%rax)
	movdqu	%xmm0, 96(%rbp,%rax)
	movdqu	%xmm0, 112(%rbp,%rax)
	subq	$-128, %rax
	cmpq	%rax, %rdx
	jne	.LBB15_34
# BB#35:                                #   in Loop: Header=BB15_2 Depth=1
	movq	%rdx, %rcx
.LBB15_36:                              # %middle.block
                                        #   in Loop: Header=BB15_2 Depth=1
	cmpq	%rcx, -32(%rsp)         # 8-byte Folded Reload
	je	.LBB15_38
	.align	16, 0x90
.LBB15_37:                              # %for.body.34
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	28(%rsp), %eax          # 4-byte Reload
	movb	%al, (%rbp,%rcx)
	incq	%rcx
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB15_37
	.align	16, 0x90
.LBB15_38:                              # %if.end.58
                                        #   in Loop: Header=BB15_2 Depth=1
	incq	%r10
	movq	-8(%rsp), %rdx          # 8-byte Reload
	addq	%rdx, %r8
	incq	%r12
	incq	%r11
	addq	%rdx, %rbp
	cmpl	4(%rsp), %r10d          # 4-byte Folded Reload
	jne	.LBB15_2
.LBB15_39:                              # %for.end.61
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gx_build_blended_image_row, .Lfunc_end15-gx_build_blended_image_row
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
.LCPI16_1:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	gx_blend_image_buffer
	.align	16, 0x90
	.type	gx_blend_image_buffer,@function
gx_blend_image_buffer:                  # @gx_blend_image_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp105:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp106:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp108:
	.cfi_def_cfa_offset 64
.Ltmp109:
	.cfi_offset %rbx, -56
.Ltmp110:
	.cfi_offset %r12, -48
.Ltmp111:
	.cfi_offset %r13, -40
.Ltmp112:
	.cfi_offset %r14, -32
.Ltmp113:
	.cfi_offset %r15, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%r8d, %r10d
	movl	%ecx, -116(%rsp)        # 4-byte Spill
	movl	%edx, -120(%rsp)        # 4-byte Spill
	movq	%rdi, -8(%rsp)          # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB16_29
# BB#1:                                 # %for.body.lr.ph
	movb	64(%rsp), %r9b
	movl	%r15d, %eax
	imull	%r10d, %eax
	movzbl	%r9b, %r12d
	cltq
	movq	%rax, -16(%rsp)         # 8-byte Spill
	leal	-1(%r15), %ecx
	incq	%rcx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	movabsq	$8589934560, %rdx       # imm = 0x1FFFFFFE0
	movq	%rcx, %rdi
	andq	%rdx, %rdi
	movq	%rdi, -56(%rsp)         # 8-byte Spill
	setne	%bl
	leaq	-32(%rdi), %rax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	shrl	$5, %eax
	incl	%eax
	leal	1(%r15), %ebp
	movl	%ebp, -100(%rsp)        # 4-byte Spill
	testl	%r15d, %r15d
	setle	-26(%rsp)               # 1-byte Folded Spill
	cmpl	$1, %r10d
	sete	%r8b
	andb	%r8b, %bl
	movb	%bl, -57(%rsp)          # 1-byte Spill
	movd	%r12d, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	andl	$3, %eax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	orq	$24, %rdx
	andq	%rcx, %rdx
	movq	%rdx, -40(%rsp)         # 8-byte Spill
	setne	%al
	andb	%r8b, %al
	movb	%al, -25(%rsp)          # 1-byte Spill
	pxor	%xmm10, %xmm10
	pxor	%xmm11, %xmm11
	pinsrw	$0, %r12d, %xmm11
	pinsrw	$2, %r12d, %xmm11
	pinsrw	$4, %r12d, %xmm11
	pinsrw	$6, %r12d, %xmm11
	movq	-8(%rsp), %rax          # 8-byte Reload
	leaq	4(%rax), %rax
	movq	%rax, -128(%rsp)        # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rcx, %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movslq	%r10d, %r13
	leal	-32(%rdi), %eax
	shrl	$5, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, -112(%rsp)        # 8-byte Spill
	leaq	(,%r13,4), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movdqa	.LCPI16_0(%rip), %xmm8  # xmm8 = [128,128,128,128]
	movdqa	.LCPI16_1(%rip), %xmm9  # xmm9 = [255,255,255,255]
	xorl	%eax, %eax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB16_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_4 Depth 2
                                        #       Child Loop BB16_8 Depth 3
                                        #       Child Loop BB16_12 Depth 3
                                        #       Child Loop BB16_16 Depth 3
                                        #       Child Loop BB16_18 Depth 3
                                        #       Child Loop BB16_23 Depth 3
                                        #       Child Loop BB16_26 Depth 3
	movl	%ecx, -76(%rsp)         # 4-byte Spill
	testl	%esi, %esi
	jle	.LBB16_28
# BB#3:                                 # %for.body.4.lr.ph
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-72(%rsp), %rax         # 8-byte Reload
	movslq	%eax, %r10
	movq	-8(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r10), %r8
	movq	-128(%rsp), %rax        # 8-byte Reload
	leaq	(%rax,%r10), %r11
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB16_4:                               # %for.body.4
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_8 Depth 3
                                        #       Child Loop BB16_12 Depth 3
                                        #       Child Loop BB16_16 Depth 3
                                        #       Child Loop BB16_18 Depth 3
                                        #       Child Loop BB16_23 Depth 3
                                        #       Child Loop BB16_26 Depth 3
	movq	-16(%rsp), %rax         # 8-byte Reload
	leaq	(%r10,%rax), %rax
	movq	-8(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	movl	%eax, %ecx
	incl	%ecx
	testb	$-2, %cl
	je	.LBB16_13
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB16_4 Depth=2
	testl	%r15d, %r15d
	jle	.LBB16_27
# BB#6:                                 # %for.body.12.lr.ph
                                        #   in Loop: Header=BB16_4 Depth=2
	notb	%al
	movzbl	%al, %ecx
	cmpb	$0, -25(%rsp)           # 1-byte Folded Reload
	movl	$0, %eax
	je	.LBB16_10
# BB#7:                                 # %vector.ph88
                                        #   in Loop: Header=BB16_4 Depth=2
	movq	%r15, %rdx
	movd	%ecx, %xmm5
	pshufd	$0, %xmm5, %xmm5        # xmm5 = xmm5[0,0,0,0]
	movq	-48(%rsp), %r15         # 8-byte Reload
	movq	%r11, %rbp
	.align	16, 0x90
.LBB16_8:                               # %vector.body74
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	-4(%rbp), %xmm7         # xmm7 = mem[0],zero,zero,zero
	movd	(%rbp), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm10, %xmm7   # xmm7 = xmm7[0],xmm10[0],xmm7[1],xmm10[1],xmm7[2],xmm10[2],xmm7[3],xmm10[3],xmm7[4],xmm10[4],xmm7[5],xmm10[5],xmm7[6],xmm10[6],xmm7[7],xmm10[7]
	punpcklwd	%xmm10, %xmm7   # xmm7 = xmm7[0],xmm10[0],xmm7[1],xmm10[1],xmm7[2],xmm10[2],xmm7[3],xmm10[3]
	punpcklbw	%xmm10, %xmm6   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3],xmm6[4],xmm10[4],xmm6[5],xmm10[5],xmm6[6],xmm10[6],xmm6[7],xmm10[7]
	punpcklwd	%xmm10, %xmm6   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3]
	movdqa	%xmm11, %xmm2
	psubd	%xmm7, %xmm2
	movdqa	%xmm11, %xmm3
	psubd	%xmm6, %xmm3
	pshufd	$245, %xmm2, %xmm1      # xmm1 = xmm2[1,1,3,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm5, %xmm4      # xmm4 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pshufd	$245, %xmm3, %xmm1      # xmm1 = xmm3[1,1,3,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	paddd	%xmm8, %xmm2
	paddd	%xmm8, %xmm3
	movdqa	%xmm2, %xmm1
	psrld	$8, %xmm1
	movdqa	%xmm3, %xmm4
	psrld	$8, %xmm4
	paddd	%xmm2, %xmm1
	paddd	%xmm3, %xmm4
	psrld	$8, %xmm1
	psrld	$8, %xmm4
	paddd	%xmm7, %xmm1
	paddd	%xmm6, %xmm4
	pand	%xmm9, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -4(%rbp)
	pand	%xmm9, %xmm4
	packuswb	%xmm4, %xmm4
	packuswb	%xmm4, %xmm4
	movd	%xmm4, (%rbp)
	addq	$8, %rbp
	addq	$-8, %r15
	jne	.LBB16_8
# BB#9:                                 #   in Loop: Header=BB16_4 Depth=2
	movq	-40(%rsp), %rax         # 8-byte Reload
	movq	%rdx, %r15
.LBB16_10:                              # %middle.block75
                                        #   in Loop: Header=BB16_4 Depth=2
	cmpq	%rax, -24(%rsp)         # 8-byte Folded Reload
	je	.LBB16_27
# BB#11:                                # %for.body.12.preheader
                                        #   in Loop: Header=BB16_4 Depth=2
	movq	%r13, %rdx
	imulq	%rax, %rdx
	leaq	(%rdx,%r8), %rbp
	movl	%r15d, %ebx
	subl	%eax, %ebx
	.align	16, 0x90
.LBB16_12:                              # %for.body.12
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbp), %eax
	movl	%r12d, %edx
	subl	%eax, %edx
	imull	%ecx, %edx
	movl	%edx, %edi
	subl	$-128, %edi
	shrl	$8, %edi
	leal	128(%rdi,%rdx), %edx
	shrl	$8, %edx
	addl	%eax, %edx
	movb	%dl, (%rbp)
	addq	%r13, %rbp
	decl	%ebx
	jne	.LBB16_12
	jmp	.LBB16_27
	.align	16, 0x90
.LBB16_13:                              # %if.else
                                        #   in Loop: Header=BB16_4 Depth=2
	testb	%al, %al
	setne	%al
	orb	-26(%rsp), %al          # 1-byte Folded Reload
	jne	.LBB16_27
# BB#14:                                # %overflow.checked
                                        #   in Loop: Header=BB16_4 Depth=2
	cmpb	$0, -57(%rsp)           # 1-byte Folded Reload
	movl	$0, %ecx
	movq	-56(%rsp), %rax         # 8-byte Reload
	je	.LBB16_20
# BB#15:                                # %vector.ph
                                        #   in Loop: Header=BB16_4 Depth=2
	movq	%rax, %rcx
	cmpq	$0, -96(%rsp)           # 8-byte Folded Reload
	movq	-112(%rsp), %rax        # 8-byte Reload
	movl	$0, %ebp
	je	.LBB16_17
	.align	16, 0x90
.LBB16_16:                              # %vector.body.prol
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	%xmm0, (%r8,%rbp)
	movdqu	%xmm0, 16(%r8,%rbp)
	addq	$32, %rbp
	incq	%rax
	jne	.LBB16_16
.LBB16_17:                              # %vector.ph.split
                                        #   in Loop: Header=BB16_4 Depth=2
	cmpq	$96, -88(%rsp)          # 8-byte Folded Reload
	movq	%rcx, %rax
	jb	.LBB16_20
	.align	16, 0x90
.LBB16_18:                              # %vector.body
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	%xmm0, (%r8,%rbp)
	movdqu	%xmm0, 16(%r8,%rbp)
	movdqu	%xmm0, 32(%r8,%rbp)
	movdqu	%xmm0, 48(%r8,%rbp)
	movdqu	%xmm0, 64(%r8,%rbp)
	movdqu	%xmm0, 80(%r8,%rbp)
	movdqu	%xmm0, 96(%r8,%rbp)
	movdqu	%xmm0, 112(%r8,%rbp)
	subq	$-128, %rbp
	cmpq	%rbp, %rax
	jne	.LBB16_18
# BB#19:                                #   in Loop: Header=BB16_4 Depth=2
	movq	%rax, %rcx
.LBB16_20:                              # %middle.block
                                        #   in Loop: Header=BB16_4 Depth=2
	cmpq	%rcx, -24(%rsp)         # 8-byte Folded Reload
	je	.LBB16_27
# BB#21:                                # %for.body.38.preheader
                                        #   in Loop: Header=BB16_4 Depth=2
	movl	%ecx, %eax
	orl	$1, %eax
	movl	-100(%rsp), %edi        # 4-byte Reload
	movl	%edi, %edx
	subl	%eax, %edx
	movl	%r15d, %ebp
	subl	%eax, %ebp
	testb	$3, %dl
	je	.LBB16_24
# BB#22:                                # %for.body.38.prol.preheader
                                        #   in Loop: Header=BB16_4 Depth=2
	movq	%r13, %rax
	imulq	%rcx, %rax
	leaq	(%rax,%r8), %rbx
	leal	1(%rcx), %edx
	movl	%edi, %eax
	subl	%edx, %eax
	andl	$3, %eax
	negl	%eax
	.align	16, 0x90
.LBB16_23:                              # %for.body.38.prol
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%r9b, (%rbx)
	incq	%rcx
	addq	%r13, %rbx
	incl	%eax
	jne	.LBB16_23
.LBB16_24:                              # %for.body.38.preheader.split
                                        #   in Loop: Header=BB16_4 Depth=2
	cmpl	$3, %ebp
	jb	.LBB16_27
# BB#25:                                # %for.body.38.preheader.split.split
                                        #   in Loop: Header=BB16_4 Depth=2
	movl	%r15d, %ebx
	subl	%ecx, %ebx
	leaq	3(%rcx), %rbp
	imulq	%r13, %rbp
	leaq	2(%rcx), %rax
	imulq	%r13, %rax
	movq	%r13, %rdi
	imulq	%rcx, %rdi
	incq	%rcx
	imulq	%r13, %rcx
	movq	%r8, %rdx
	.align	16, 0x90
.LBB16_26:                              # %for.body.38
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%r9b, (%rdi,%rdx)
	movb	%r9b, (%rcx,%rdx)
	movb	%r9b, (%rax,%rdx)
	movb	%r9b, (%rbp,%rdx)
	addq	(%rsp), %rdx            # 8-byte Folded Reload
	addl	$-4, %ebx
	jne	.LBB16_26
	.align	16, 0x90
.LBB16_27:                              # %if.end.46
                                        #   in Loop: Header=BB16_4 Depth=2
	incl	%r14d
	incq	%r10
	incq	%r11
	incq	%r8
	cmpl	%esi, %r14d
	jne	.LBB16_4
.LBB16_28:                              # %for.inc.51
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-76(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movq	-72(%rsp), %rax         # 8-byte Reload
	addl	-116(%rsp), %eax        # 4-byte Folded Reload
	movq	%rax, -72(%rsp)         # 8-byte Spill
	cmpl	-120(%rsp), %ecx        # 4-byte Folded Reload
	jne	.LBB16_2
.LBB16_29:                              # %for.end.53
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gx_blend_image_buffer, .Lfunc_end16-gx_blend_image_buffer
	.cfi_endproc

	.globl	gx_put_blended_image_cmykspot
	.align	16, 0x90
	.type	gx_put_blended_image_cmykspot,@function
gx_put_blended_image_cmykspot:          # @gx_put_blended_image_cmykspot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp119:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 56
	subq	$776, %rsp              # imm = 0x308
.Ltmp121:
	.cfi_def_cfa_offset 832
.Ltmp122:
	.cfi_offset %rbx, -56
.Ltmp123:
	.cfi_offset %r12, -48
.Ltmp124:
	.cfi_offset %r13, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movl	%r8d, 80(%rsp)          # 4-byte Spill
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	movl	%edx, %r15d
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	888(%rsp), %rbp
	movl	100(%r14), %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	(%rbp), %ebx
	leal	1(%rbx), %eax
	movl	%eax, (%rbp)
	movq	DeviceCMYKComponents(%rip), %r12
	movq	1544(%r14), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	strlen
	xorl	%ecx, %ecx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	*104(%rsp)              # 8-byte Folded Reload
	cmpl	$63, %eax
	ja	.LBB17_2
# BB#1:                                 # %if.then
	movl	%eax, 128(%rsp)
	movl	$0, 384(%rsp)
	movl	$1, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
.LBB17_2:                               # %if.end
	movq	DeviceCMYKComponents+8(%rip), %r12
	movq	1544(%r14), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	strlen
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	*104(%rsp)              # 8-byte Folded Reload
	cmpl	$64, %eax
	jae	.LBB17_4
# BB#3:                                 # %if.then.1
	movq	120(%rsp), %rsi         # 8-byte Reload
	leaq	(,%rsi,4), %rcx
	leaq	128(%rsp), %rdx
	orq	%rcx, %rdx
	movl	%eax, (%rdx)
	incl	%esi
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	leaq	384(%rsp), %rax
	orq	%rcx, %rax
	movl	$1, (%rax)
.LBB17_4:                               # %if.end.1
	movq	DeviceCMYKComponents+16(%rip), %r12
	movq	1544(%r14), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	strlen
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	*104(%rsp)              # 8-byte Folded Reload
	cmpl	$63, %eax
	ja	.LBB17_6
# BB#5:                                 # %if.then.2
	movq	120(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	movl	%eax, 128(%rsp,%rcx,4)
	leal	1(%rcx), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$2, 384(%rsp,%rcx,4)
.LBB17_6:                               # %if.end.2
	movq	DeviceCMYKComponents+24(%rip), %r12
	movq	1544(%r14), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	strlen
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	*104(%rsp)              # 8-byte Folded Reload
	cmpl	$63, %eax
	ja	.LBB17_8
# BB#7:                                 # %if.then.3
	movq	120(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	movl	%eax, 128(%rsp,%rcx,4)
	leal	1(%rcx), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$3, 384(%rsp,%rcx,4)
.LBB17_8:                               # %if.end.3
	testl	%ebx, %ebx
	jle	.LBB17_13
# BB#9:                                 # %for.body.28.preheader
	addq	$16, %rbp
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB17_10:                              # %for.body.28
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rsi
	movl	-8(%rbp), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	*1544(%r14)
	cmpl	$63, %eax
	ja	.LBB17_12
# BB#11:                                # %if.then.42
                                        #   in Loop: Header=BB17_10 Depth=1
	movq	120(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	movl	%eax, 128(%rsp,%rcx,4)
	leal	1(%rcx), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leal	4(%r12), %eax
	movl	%eax, 384(%rsp,%rcx,4)
.LBB17_12:                              # %for.inc.49
                                        #   in Loop: Header=BB17_10 Depth=1
	addq	$16, %rbp
	incl	%r12d
	cmpl	%r12d, %ebx
	jne	.LBB17_10
.LBB17_13:                              # %for.end.51
	movb	856(%rsp), %r11b
	movl	840(%rsp), %ebx
	movq	1656(%r14), %r10
	xorl	%eax, %eax
	testq	%r10, %r10
	je	.LBB17_18
# BB#14:                                # %if.then.55
	leaq	872(%rsp), %rax
	movl	864(%rsp), %ecx
	movl	848(%rsp), %ebp
	leal	1(%rbp), %r12d
	testl	%ecx, %ecx
	cmovel	%ecx, %r12d
	movq	(%rax), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	%rcx, %r8
	shrq	$32, %r8
	movq	%r8, 96(%rsp)           # 8-byte Spill
	movl	%r12d, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	%ebp, %edx
	movl	832(%rsp), %r9d
	callq	*%r10
	testl	%eax, %eax
	jne	.LBB17_16
# BB#15:                                # %if.then.67
	movzbl	856(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%r13, %rdi
	movl	832(%rsp), %ebp
	movl	%ebp, %esi
	movl	%ebx, %edx
	movl	116(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %ecx
	movl	%r15d, %r8d
	movl	848(%rsp), %eax
	movq	%rax, %r9
	callq	gx_blend_image_buffer
	movl	%r12d, 32(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	$0, 24(%rsp)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	848(%rsp), %edx
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	96(%rsp), %r8           # 8-byte Reload
	movl	832(%rsp), %r9d
	callq	*1656(%r14)
	xorl	%ebp, %ebp
.LBB17_16:                              # %if.end.75
	testl	%eax, %eax
	jle	.LBB17_17
# BB#34:                                # %if.then.78
	subl	%eax, %ebx
	jle	.LBB17_35
	.align	16, 0x90
.LBB17_36:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	96(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %r8d
	movl	%r12d, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	848(%rsp), %edx
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	832(%rsp), %r9d
	callq	*1656(%r14)
	testl	%eax, %eax
	js	.LBB17_56
# BB#37:                                # %while.cond
                                        #   in Loop: Header=BB17_36 Depth=1
	subl	%eax, %ebx
	testl	%ebx, %ebx
	jg	.LBB17_36
# BB#38:
	xorl	%eax, %eax
	jmp	.LBB17_56
.LBB17_17:
	movb	856(%rsp), %r11b
.LBB17_18:                              # %if.end.96
	movq	88(%rsp), %rsi          # 8-byte Reload
	testl	%esi, %esi
	jle	.LBB17_30
# BB#19:                                # %for.body.100.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%rsi), %edx
	leaq	1(%rdx), %r9
	xorl	%edi, %edi
	movq	%r9, %r10
	andq	%r8, %r10
	je	.LBB17_27
# BB#20:                                # %vector.body.preheader
	leaq	1(%rdx), %rbp
	andq	%r8, %rbp
	addq	$-16, %rbp
	movl	%ebp, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%edi, %edi
	testb	$3, %cl
	je	.LBB17_23
# BB#21:                                # %vector.body.prol.preheader
	movl	%esi, %ecx
	andl	$48, %ecx
	addl	$-16, %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB17_22:                              # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, 640(%rsp,%rdi,2)
	movaps	%xmm0, 656(%rsp,%rdi,2)
	addq	$16, %rdi
	incq	%rcx
	jne	.LBB17_22
.LBB17_23:                              # %vector.body.preheader.split
	cmpq	$48, %rbp
	jb	.LBB17_26
# BB#24:                                # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	subq	%rdi, %rdx
	leaq	752(%rsp,%rdi,2), %rcx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB17_25:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -112(%rcx)
	movaps	%xmm0, -96(%rcx)
	movaps	%xmm0, -80(%rcx)
	movaps	%xmm0, -64(%rcx)
	movaps	%xmm0, -48(%rcx)
	movaps	%xmm0, -32(%rcx)
	movaps	%xmm0, -16(%rcx)
	movaps	%xmm0, (%rcx)
	subq	$-128, %rcx
	addq	$-64, %rdx
	jne	.LBB17_25
.LBB17_26:
	movq	%r10, %rdi
.LBB17_27:                              # %middle.block
	cmpq	%rdi, %r9
	je	.LBB17_30
# BB#28:                                # %for.body.100.preheader206
	leaq	640(%rsp,%rdi,2), %rcx
	subl	%edi, %esi
	.align	16, 0x90
.LBB17_29:                              # %for.body.100
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	addq	$2, %rcx
	decl	%esi
	jne	.LBB17_29
.LBB17_30:                              # %for.cond.106.preheader
	testl	%ebx, %ebx
	jle	.LBB17_56
# BB#31:                                # %for.cond.110.preheader.lr.ph
	movslq	116(%rsp), %rcx         # 4-byte Folded Reload
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	848(%rsp), %ecx
	imull	%r15d, %ecx
	movzbl	%r11b, %r12d
	movl	80(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movslq	832(%rsp), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	120(%rsp), %rcx         # 8-byte Reload
	leal	-1(%rcx), %edx
	movl	%edx, 64(%rsp)          # 4-byte Spill
	movl	%ecx, %edx
	andl	$3, %edx
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movl	%ecx, %r8d
	andl	$3, %r8d
	xorl	%ecx, %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
.LBB17_32:                              # %for.cond.110.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_40 Depth 2
                                        #       Child Loop BB17_43 Depth 3
                                        #       Child Loop BB17_47 Depth 3
                                        #       Child Loop BB17_50 Depth 3
                                        #       Child Loop BB17_53 Depth 3
	cmpl	$0, 832(%rsp)
	jle	.LBB17_55
# BB#33:                                # %for.body.113.lr.ph
                                        #   in Loop: Header=BB17_32 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB17_40:                              # %for.body.113
                                        #   Parent Loop BB17_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_43 Depth 3
                                        #       Child Loop BB17_47 Depth 3
                                        #       Child Loop BB17_50 Depth 3
                                        #       Child Loop BB17_53 Depth 3
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	(%rbp,%rax), %rax
	movzbl	(%r13,%rax), %eax
	leal	1(%rax), %ecx
	testb	$-2, %cl
	je	.LBB17_44
# BB#41:                                # %for.cond.121.preheader
                                        #   in Loop: Header=BB17_40 Depth=2
	movq	120(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB17_54
# BB#42:                                # %for.body.124.preheader
                                        #   in Loop: Header=BB17_40 Depth=2
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	128(%rsp), %rdx
	leaq	384(%rsp), %rsi
	.align	16, 0x90
.LBB17_43:                              # %for.body.124
                                        #   Parent Loop BB17_32 Depth=1
                                        #     Parent Loop BB17_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rsi), %edi
	imull	%r15d, %edi
	addl	%ebp, %edi
	movslq	%edi, %rdi
	movzbl	(%r13,%rdi), %ebx
	movl	%ebx, %edi
	subl	%r12d, %edi
	imull	%eax, %edi
	leal	128(%rdi,%rbx), %ebx
	subl	$-128, %edi
	shrl	$8, %edi
	addl	%edi, %ebx
	movslq	(%rdx), %rdi
	movw	%bx, 640(%rsp,%rdi,2)
	addq	$4, %rsi
	addq	$4, %rdx
	decl	%ecx
	jne	.LBB17_43
	jmp	.LBB17_54
	.align	16, 0x90
.LBB17_44:                              # %if.else
                                        #   in Loop: Header=BB17_40 Depth=2
	testb	%al, %al
	je	.LBB17_48
# BB#45:                                # %for.cond.166.preheader
                                        #   in Loop: Header=BB17_40 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB17_54
# BB#46:                                # %for.body.169.preheader
                                        #   in Loop: Header=BB17_40 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	128(%rsp), %rcx
	leaq	384(%rsp), %rdx
	.align	16, 0x90
.LBB17_47:                              # %for.body.169
                                        #   Parent Loop BB17_32 Depth=1
                                        #     Parent Loop BB17_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rdx), %esi
	imull	%r15d, %esi
	addl	%ebp, %esi
	movslq	%esi, %rsi
	movzbl	(%r13,%rsi), %esi
	imull	$257, %esi, %esi        # imm = 0x101
	movslq	(%rcx), %rdi
	movw	%si, 640(%rsp,%rdi,2)
	addq	$4, %rdx
	addq	$4, %rcx
	decl	%eax
	jne	.LBB17_47
	jmp	.LBB17_54
.LBB17_48:                              # %for.cond.153.preheader
                                        #   in Loop: Header=BB17_40 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB17_54
# BB#49:                                # %for.body.156.preheader
                                        #   in Loop: Header=BB17_40 Depth=2
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	movl	$0, %ecx
	je	.LBB17_51
	.align	16, 0x90
.LBB17_50:                              # %for.body.156.prol
                                        #   Parent Loop BB17_32 Depth=1
                                        #     Parent Loop BB17_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	128(%rsp,%rcx,4), %rax
	movw	%r12w, 640(%rsp,%rax,2)
	incq	%rcx
	cmpl	%ecx, %r8d
	jne	.LBB17_50
.LBB17_51:                              # %for.body.156.preheader.split
                                        #   in Loop: Header=BB17_40 Depth=2
	cmpl	$3, 64(%rsp)            # 4-byte Folded Reload
	jb	.LBB17_54
# BB#52:                                # %for.body.156.preheader.split.split
                                        #   in Loop: Header=BB17_40 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	subl	%ecx, %eax
	leaq	140(%rsp), %rdx
	leaq	(%rdx,%rcx,4), %rcx
	.align	16, 0x90
.LBB17_53:                              # %for.body.156
                                        #   Parent Loop BB17_32 Depth=1
                                        #     Parent Loop BB17_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-12(%rcx), %rdx
	movw	%r12w, 640(%rsp,%rdx,2)
	movslq	-8(%rcx), %rdx
	movw	%r12w, 640(%rsp,%rdx,2)
	movslq	-4(%rcx), %rdx
	movw	%r12w, 640(%rsp,%rdx,2)
	movslq	(%rcx), %rdx
	movw	%r12w, 640(%rsp,%rdx,2)
	addq	$16, %rcx
	addl	$-4, %eax
	jne	.LBB17_53
	.align	16, 0x90
.LBB17_54:                              # %if.end.189
                                        #   in Loop: Header=BB17_40 Depth=2
	movq	%r8, %rbx
	movq	%r14, %rdi
	leaq	640(%rsp), %rsi
	callq	*1552(%r14)
	movq	104(%rsp), %rcx         # 8-byte Reload
	leal	(%rbp,%rcx), %esi
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r14, %rdi
	movl	116(%rsp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	*1200(%r14)
	testl	%eax, %eax
	js	.LBB17_56
# BB#39:                                # %for.cond.110
                                        #   in Loop: Header=BB17_40 Depth=2
	incq	%rbp
	cmpq	88(%rsp), %rbp          # 8-byte Folded Reload
	movq	%rbx, %r8
	jl	.LBB17_40
.LBB17_55:                              # %for.end.202
                                        #   in Loop: Header=BB17_32 Depth=1
	addq	48(%rsp), %r13          # 8-byte Folded Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	incl	%ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	cmpl	840(%rsp), %ecx
	jl	.LBB17_32
	jmp	.LBB17_56
.LBB17_35:
	xorl	%eax, %eax
.LBB17_56:                              # %cleanup.206
	addq	$776, %rsp              # imm = 0x308
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gx_put_blended_image_cmykspot, .Lfunc_end17-gx_put_blended_image_cmykspot
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI18_0:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
.LCPI18_1:
	.zero	16,1
	.text
	.globl	gx_put_blended_image_custom
	.align	16, 0x90
	.type	gx_put_blended_image_custom,@function
gx_put_blended_image_custom:            # @gx_put_blended_image_custom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp132:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 56
	subq	$408, %rsp              # imm = 0x198
.Ltmp134:
	.cfi_def_cfa_offset 464
.Ltmp135:
	.cfi_offset %rbx, -56
.Ltmp136:
	.cfi_offset %r12, -48
.Ltmp137:
	.cfi_offset %r13, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%r9, 96(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$0, 472(%rsp)
	jle	.LBB18_45
# BB#1:                                 # %for.cond.6.preheader.lr.ph
	movl	480(%rsp), %r9d
	movslq	%ecx, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	%r9d, %r11d
	imull	%edx, %r11d
	movslq	%edx, %r14
	leal	-1(%r9), %r10d
	movq	%r10, 64(%rsp)          # 8-byte Spill
	leaq	1(%r10), %r15
	movq	%r15, 176(%rsp)         # 8-byte Spill
	movabsq	$8589934576, %rbp       # imm = 0x1FFFFFFF0
	movq	%r15, %rdx
	andq	%rbp, %rdx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	setne	%al
	leaq	-16(%rdx), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	shrq	$4, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leal	1(%rcx), %ebx
	andl	$3, %ebx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	cmpl	$1, %r14d
	sete	%bl
	andb	%bl, %al
	movb	%al, 143(%rsp)          # 1-byte Spill
	andl	$1, %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	orq	$8, %rbp
	andq	%r15, %rbp
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	setne	%al
	andb	%bl, %al
	movb	%al, 175(%rsp)          # 1-byte Spill
	movzbl	488(%rsp), %r12d
	movl	%r8d, %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movslq	%r11d, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	pxor	%xmm7, %xmm7
	pxor	%xmm8, %xmm8
	pinsrw	$0, %r12d, %xmm8
	movdqa	%xmm8, %xmm0
	pinsrw	$1, %r12d, %xmm0
	pinsrw	$2, %r12d, %xmm0
	pinsrw	$3, %r12d, %xmm0
	pinsrw	$4, %r12d, %xmm0
	pinsrw	$5, %r12d, %xmm0
	pinsrw	$6, %r12d, %xmm0
	pinsrw	$7, %r12d, %xmm0
	movdqa	%xmm0, 80(%rsp)         # 16-byte Spill
	pinsrw	$2, %r12d, %xmm8
	pinsrw	$4, %r12d, %xmm8
	pinsrw	$6, %r12d, %xmm8
	movdqa	%xmm8, 192(%rsp)        # 16-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%r15, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leal	-16(%rdx), %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movdqa	.LCPI18_0(%rip), %xmm9  # xmm9 = [128,128,128,128]
	movslq	464(%rsp), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leaq	272(%rsp,%r10,2), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leal	1(%r9), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movq	%rsi, 224(%rsp)         # 8-byte Spill
	leaq	4(%rsi), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	%rsi, 264(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
.LBB18_2:                               # %for.cond.6.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_5 Depth 2
                                        #       Child Loop BB18_11 Depth 3
                                        #       Child Loop BB18_15 Depth 3
                                        #       Child Loop BB18_24 Depth 3
                                        #       Child Loop BB18_31 Depth 3
                                        #       Child Loop BB18_35 Depth 3
                                        #       Child Loop BB18_38 Depth 3
                                        #       Child Loop BB18_42 Depth 3
	cmpl	$0, 464(%rsp)
	jle	.LBB18_44
# BB#3:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	128(%rsp), %rdx         # 8-byte Reload
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	imulq	%rcx, %rdx
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movl	%eax, 236(%rsp)         # 4-byte Spill
	movq	264(%rsp), %r13         # 8-byte Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, 256(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB18_5:                               # %for.body.8
                                        #   Parent Loop BB18_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_11 Depth 3
                                        #       Child Loop BB18_15 Depth 3
                                        #       Child Loop BB18_24 Depth 3
                                        #       Child Loop BB18_31 Depth 3
                                        #       Child Loop BB18_35 Depth 3
                                        #       Child Loop BB18_38 Depth 3
                                        #       Child Loop BB18_42 Depth 3
	movq	248(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rax
	movq	224(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %rcx
	movq	240(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rax
	leaq	(%rax,%rdx), %rdx
	movq	208(%rsp), %rax         # 8-byte Reload
	leaq	(%r15,%rax), %rax
	movq	264(%rsp), %rsi         # 8-byte Reload
	movzbl	(%rsi,%rax), %eax
	movl	%eax, %esi
	incl	%esi
	testb	$-2, %sil
	je	.LBB18_16
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB18_5 Depth=2
	movl	480(%rsp), %esi
	testl	%esi, %esi
	jle	.LBB18_43
# BB#7:                                 # %for.body.15.lr.ph
                                        #   in Loop: Header=BB18_5 Depth=2
	notb	%al
	movzbl	%al, %eax
	cmpb	$0, 175(%rsp)           # 1-byte Folded Reload
	movl	$0, %ebp
	je	.LBB18_13
# BB#8:                                 # %vector.memcheck151
                                        #   in Loop: Header=BB18_5 Depth=2
	leaq	272(%rsp), %rsi
	cmpq	%rdx, %rsi
	ja	.LBB18_10
# BB#9:                                 # %vector.memcheck151
                                        #   in Loop: Header=BB18_5 Depth=2
	cmpq	152(%rsp), %rcx         # 8-byte Folded Reload
	movl	$0, %ebp
	jbe	.LBB18_13
.LBB18_10:                              # %vector.ph152
                                        #   in Loop: Header=BB18_5 Depth=2
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movq	104(%rsp), %rcx         # 8-byte Reload
	leaq	280(%rsp), %rdx
	movq	256(%rsp), %rsi         # 8-byte Reload
	.align	16, 0x90
.LBB18_11:                              # %vector.body128
                                        #   Parent Loop BB18_2 Depth=1
                                        #     Parent Loop BB18_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	-4(%rsi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movd	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm7, %xmm2    # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1],xmm2[2],xmm7[2],xmm2[3],xmm7[3],xmm2[4],xmm7[4],xmm2[5],xmm7[5],xmm2[6],xmm7[6],xmm2[7],xmm7[7]
	punpcklwd	%xmm7, %xmm2    # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1],xmm2[2],xmm7[2],xmm2[3],xmm7[3]
	punpcklbw	%xmm7, %xmm1    # xmm1 = xmm1[0],xmm7[0],xmm1[1],xmm7[1],xmm1[2],xmm7[2],xmm1[3],xmm7[3],xmm1[4],xmm7[4],xmm1[5],xmm7[5],xmm1[6],xmm7[6],xmm1[7],xmm7[7]
	punpcklwd	%xmm7, %xmm1    # xmm1 = xmm1[0],xmm7[0],xmm1[1],xmm7[1],xmm1[2],xmm7[2],xmm1[3],xmm7[3]
	movdqa	%xmm8, %xmm3
	psubd	%xmm2, %xmm3
	movdqa	%xmm8, %xmm4
	psubd	%xmm1, %xmm4
	pshufd	$245, %xmm3, %xmm5      # xmm5 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm0, %xmm6      # xmm6 = xmm0[1,1,3,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	pshufd	$245, %xmm4, %xmm5      # xmm5 = xmm4[1,1,3,3]
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm9, %xmm3
	paddd	%xmm9, %xmm4
	movdqa	%xmm3, %xmm5
	psrld	$8, %xmm5
	movdqa	%xmm4, %xmm6
	psrld	$8, %xmm6
	paddd	%xmm2, %xmm3
	paddd	%xmm1, %xmm4
	paddw	%xmm5, %xmm3
	pshuflw	$232, %xmm3, %xmm1      # xmm1 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -8(%rdx)
	paddw	%xmm6, %xmm4
	pshuflw	$232, %xmm4, %xmm1      # xmm1 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%rdx)
	addq	$8, %rsi
	addq	$16, %rdx
	addq	$-8, %rcx
	jne	.LBB18_11
# BB#12:                                #   in Loop: Header=BB18_5 Depth=2
	movq	112(%rsp), %rbp         # 8-byte Reload
.LBB18_13:                              # %middle.block129
                                        #   in Loop: Header=BB18_5 Depth=2
	cmpq	%rbp, 176(%rsp)         # 8-byte Folded Reload
	je	.LBB18_43
# BB#14:                                # %for.body.15.preheader
                                        #   in Loop: Header=BB18_5 Depth=2
	leaq	272(%rsp,%rbp,2), %rcx
	movq	%r14, %rdx
	imulq	%rbp, %rdx
	leaq	(%rdx,%r13), %rdx
	movl	480(%rsp), %esi
	subl	%ebp, %esi
	.align	16, 0x90
.LBB18_15:                              # %for.body.15
                                        #   Parent Loop BB18_2 Depth=1
                                        #     Parent Loop BB18_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdx), %ebp
	movl	%r12d, %ebx
	subl	%ebp, %ebx
	imull	%eax, %ebx
	leal	128(%rbx,%rbp), %ebp
	subl	$-128, %ebx
	shrl	$8, %ebx
	addl	%ebx, %ebp
	movw	%bp, (%rcx)
	addq	$2, %rcx
	addq	%r14, %rdx
	decl	%esi
	jne	.LBB18_15
	jmp	.LBB18_43
	.align	16, 0x90
.LBB18_16:                              # %if.else
                                        #   in Loop: Header=BB18_5 Depth=2
	testb	%al, %al
	je	.LBB18_32
# BB#17:                                # %for.cond.47.preheader
                                        #   in Loop: Header=BB18_5 Depth=2
	movl	480(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB18_43
# BB#18:                                # %overflow.checked100
                                        #   in Loop: Header=BB18_5 Depth=2
	cmpb	$0, 143(%rsp)           # 1-byte Folded Reload
	movl	$0, %eax
	movq	160(%rsp), %rsi         # 8-byte Reload
	movdqa	.LCPI18_1(%rip), %xmm2  # xmm2 = [257,257,257,257,257,257,257,257]
	je	.LBB18_26
# BB#19:                                # %vector.memcheck
                                        #   in Loop: Header=BB18_5 Depth=2
	leaq	272(%rsp), %rax
	cmpq	%rdx, %rax
	ja	.LBB18_21
# BB#20:                                # %vector.memcheck
                                        #   in Loop: Header=BB18_5 Depth=2
	cmpq	152(%rsp), %rcx         # 8-byte Folded Reload
	movl	$0, %eax
	jbe	.LBB18_26
.LBB18_21:                              # %vector.body96.preheader
                                        #   in Loop: Header=BB18_5 Depth=2
	cmpq	$0, 24(%rsp)            # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB18_23
# BB#22:                                # %vector.body96.prol
                                        #   in Loop: Header=BB18_5 Depth=2
	movq	264(%rsp), %rax         # 8-byte Reload
	movq	(%rax,%r15), %xmm0      # xmm0 = mem[0],zero
	movq	8(%rax,%r15), %xmm1     # xmm1 = mem[0],zero
	punpcklbw	%xmm7, %xmm0    # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3],xmm0[4],xmm7[4],xmm0[5],xmm7[5],xmm0[6],xmm7[6],xmm0[7],xmm7[7]
	punpcklbw	%xmm7, %xmm1    # xmm1 = xmm1[0],xmm7[0],xmm1[1],xmm7[1],xmm1[2],xmm7[2],xmm1[3],xmm7[3],xmm1[4],xmm7[4],xmm1[5],xmm7[5],xmm1[6],xmm7[6],xmm1[7],xmm7[7]
	pmullw	%xmm2, %xmm0
	pmullw	%xmm2, %xmm1
	movdqa	%xmm0, 272(%rsp)
	movdqa	%xmm1, 288(%rsp)
	movl	$16, %ecx
.LBB18_23:                              # %vector.body96.preheader.split
                                        #   in Loop: Header=BB18_5 Depth=2
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movq	%rsi, %rax
	je	.LBB18_26
	.align	16, 0x90
.LBB18_24:                              # %vector.body96
                                        #   Parent Loop BB18_2 Depth=1
                                        #     Parent Loop BB18_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx), %xmm0      # xmm0 = mem[0],zero
	movq	8(%r13,%rcx), %xmm1     # xmm1 = mem[0],zero
	punpcklbw	%xmm7, %xmm0    # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3],xmm0[4],xmm7[4],xmm0[5],xmm7[5],xmm0[6],xmm7[6],xmm0[7],xmm7[7]
	punpcklbw	%xmm7, %xmm1    # xmm1 = xmm1[0],xmm7[0],xmm1[1],xmm7[1],xmm1[2],xmm7[2],xmm1[3],xmm7[3],xmm1[4],xmm7[4],xmm1[5],xmm7[5],xmm1[6],xmm7[6],xmm1[7],xmm7[7]
	pmullw	%xmm2, %xmm0
	pmullw	%xmm2, %xmm1
	movdqa	%xmm0, 272(%rsp,%rcx,2)
	movdqa	%xmm1, 288(%rsp,%rcx,2)
	movq	16(%r13,%rcx), %xmm0    # xmm0 = mem[0],zero
	movq	24(%r13,%rcx), %xmm1    # xmm1 = mem[0],zero
	punpcklbw	%xmm7, %xmm0    # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3],xmm0[4],xmm7[4],xmm0[5],xmm7[5],xmm0[6],xmm7[6],xmm0[7],xmm7[7]
	punpcklbw	%xmm7, %xmm1    # xmm1 = xmm1[0],xmm7[0],xmm1[1],xmm7[1],xmm1[2],xmm7[2],xmm1[3],xmm7[3],xmm1[4],xmm7[4],xmm1[5],xmm7[5],xmm1[6],xmm7[6],xmm1[7],xmm7[7]
	pmullw	%xmm2, %xmm0
	pmullw	%xmm2, %xmm1
	movdqa	%xmm0, 304(%rsp,%rcx,2)
	movdqa	%xmm1, 320(%rsp,%rcx,2)
	addq	$32, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB18_24
# BB#25:                                #   in Loop: Header=BB18_5 Depth=2
	movq	%rsi, %rax
.LBB18_26:                              # %middle.block97
                                        #   in Loop: Header=BB18_5 Depth=2
	cmpq	%rax, 176(%rsp)         # 8-byte Folded Reload
	je	.LBB18_43
# BB#27:                                # %for.body.50.preheader
                                        #   in Loop: Header=BB18_5 Depth=2
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	76(%rsp), %edx          # 4-byte Reload
	subl	%ecx, %edx
	testb	$1, %dl
	je	.LBB18_29
# BB#28:                                # %for.body.50.prol
                                        #   in Loop: Header=BB18_5 Depth=2
	movq	%rax, %rdx
	imulq	%r14, %rdx
	addq	%r15, %rdx
	movq	264(%rsp), %rsi         # 8-byte Reload
	movzbl	(%rsi,%rdx), %edx
	imull	$257, %edx, %edx        # imm = 0x101
	movw	%dx, 272(%rsp,%rax,2)
	orq	$1, %rax
.LBB18_29:                              # %for.body.50.preheader.split
                                        #   in Loop: Header=BB18_5 Depth=2
	movl	480(%rsp), %edx
	cmpl	%edx, %ecx
	je	.LBB18_43
# BB#30:                                # %for.body.50.preheader.split.split
                                        #   in Loop: Header=BB18_5 Depth=2
	movl	480(%rsp), %ecx
	subl	%eax, %ecx
	leaq	274(%rsp), %rdx
	leaq	(%rdx,%rax,2), %rdx
	movq	%r14, %rsi
	imulq	%rax, %rsi
	leaq	(%rsi,%r13), %rsi
	incq	%rax
	imulq	%r14, %rax
	leaq	(%rax,%r13), %rax
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB18_31:                              # %for.body.50
                                        #   Parent Loop BB18_2 Depth=1
                                        #     Parent Loop BB18_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rsi,%rbp,2), %ebx
	imull	$257, %ebx, %ebx        # imm = 0x101
	movw	%bx, -2(%rdx)
	movzbl	(%rax,%rbp,2), %ebx
	imull	$257, %ebx, %ebx        # imm = 0x101
	movw	%bx, (%rdx)
	addq	$4, %rdx
	addq	%r14, %rbp
	addl	$-2, %ecx
	jne	.LBB18_31
	jmp	.LBB18_43
.LBB18_32:                              # %for.cond.36.preheader
                                        #   in Loop: Header=BB18_5 Depth=2
	movl	480(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB18_43
# BB#33:                                # %overflow.checked
                                        #   in Loop: Header=BB18_5 Depth=2
	movq	160(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	movl	$0, %edx
	je	.LBB18_40
# BB#34:                                # %vector.ph
                                        #   in Loop: Header=BB18_5 Depth=2
	cmpq	$0, 48(%rsp)            # 8-byte Folded Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	$0, %eax
	movdqa	80(%rsp), %xmm0         # 16-byte Reload
	je	.LBB18_36
	.align	16, 0x90
.LBB18_35:                              # %vector.body.prol
                                        #   Parent Loop BB18_2 Depth=1
                                        #     Parent Loop BB18_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqa	%xmm0, 272(%rsp,%rax,2)
	movdqa	%xmm0, 288(%rsp,%rax,2)
	addq	$16, %rax
	incq	%rcx
	jne	.LBB18_35
.LBB18_36:                              # %vector.ph.split
                                        #   in Loop: Header=BB18_5 Depth=2
	cmpq	$48, 56(%rsp)           # 8-byte Folded Reload
	movq	%rsi, %rdx
	jb	.LBB18_40
# BB#37:                                # %vector.ph.split.split
                                        #   in Loop: Header=BB18_5 Depth=2
	movq	%rsi, %rcx
	subq	%rax, %rcx
	leaq	384(%rsp), %rdx
	leaq	(%rdx,%rax,2), %rax
	movdqa	80(%rsp), %xmm0         # 16-byte Reload
	.align	16, 0x90
.LBB18_38:                              # %vector.body
                                        #   Parent Loop BB18_2 Depth=1
                                        #     Parent Loop BB18_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqa	%xmm0, -112(%rax)
	movdqa	%xmm0, -96(%rax)
	movdqa	%xmm0, -80(%rax)
	movdqa	%xmm0, -64(%rax)
	movdqa	%xmm0, -48(%rax)
	movdqa	%xmm0, -32(%rax)
	movdqa	%xmm0, -16(%rax)
	movdqa	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-64, %rcx
	jne	.LBB18_38
# BB#39:                                #   in Loop: Header=BB18_5 Depth=2
	movq	%rsi, %rdx
.LBB18_40:                              # %middle.block
                                        #   in Loop: Header=BB18_5 Depth=2
	cmpq	%rdx, 176(%rsp)         # 8-byte Folded Reload
	je	.LBB18_43
# BB#41:                                # %for.body.39.preheader
                                        #   in Loop: Header=BB18_5 Depth=2
	leaq	272(%rsp,%rdx,2), %rax
	movl	480(%rsp), %ecx
	subl	%edx, %ecx
	.align	16, 0x90
.LBB18_42:                              # %for.body.39
                                        #   Parent Loop BB18_2 Depth=1
                                        #     Parent Loop BB18_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	%r12w, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB18_42
	.align	16, 0x90
.LBB18_43:                              # %if.end.65
                                        #   in Loop: Header=BB18_5 Depth=2
	movq	%rdi, %rbx
	leaq	272(%rsp), %rsi
	callq	*1552(%rbx)
	movq	216(%rsp), %rcx         # 8-byte Reload
	leal	(%r15,%rcx), %esi
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movl	236(%rsp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	*1200(%rbx)
	movq	%rbx, %rdi
	testl	%eax, %eax
	js	.LBB18_45
# BB#4:                                 # %for.cond.6
                                        #   in Loop: Header=BB18_5 Depth=2
	incq	%r15
	incq	256(%rsp)               # 8-byte Folded Spill
	incq	%r13
	cmpq	184(%rsp), %r15         # 8-byte Folded Reload
	pxor	%xmm7, %xmm7
	movdqa	192(%rsp), %xmm8        # 16-byte Reload
	movdqa	.LCPI18_0(%rip), %xmm9  # xmm9 = [128,128,128,128]
	jl	.LBB18_5
.LBB18_44:                              # %for.end.76
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, 264(%rsp)         # 8-byte Folded Spill
	movq	144(%rsp), %rdx         # 8-byte Reload
	incq	%rdx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	addq	%rcx, 120(%rsp)         # 8-byte Folded Spill
	cmpl	472(%rsp), %edx
	jl	.LBB18_2
.LBB18_45:                              # %cleanup
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gx_put_blended_image_custom, .Lfunc_end18-gx_put_blended_image_custom
	.cfi_endproc

	.type	.L__func__.pdf14_preserve_backdrop_cm,@object # @__func__.pdf14_preserve_backdrop_cm
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.pdf14_preserve_backdrop_cm:
	.asciz	"pdf14_preserve_backdrop_cm"
	.size	.L__func__.pdf14_preserve_backdrop_cm, 27

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"./base/gxblend1.c"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ICC link failed.  Trans backdrop"
	.size	.L.str.1, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
