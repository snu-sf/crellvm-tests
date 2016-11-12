	.text
	.file	"jbig2_mmr.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	3                       # 0x3
	.quad	2                       # 0x2
.LCPI0_1:
	.quad	-3                      # 0xfffffffffffffffd
	.quad	-4                      # 0xfffffffffffffffc
.LCPI0_2:
	.quad	-1                      # 0xffffffffffffffff
	.quad	-2                      # 0xfffffffffffffffe
.LCPI0_3:
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.text
	.globl	jbig2_decode_generic_mmr
	.align	16, 0x90
	.type	jbig2_decode_generic_mmr,@function
jbig2_decode_generic_mmr:               # @jbig2_decode_generic_mmr
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%r9, %r14
	movq	%rcx, %rax
	movslq	8(%r14), %r15
	movq	16(%r14), %r13
	movl	(%r14), %ecx
	movl	4(%r14), %edx
	movl	%ecx, (%rsp)
	movl	%edx, 4(%rsp)
	movq	%rax, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	$0, 24(%rsp)
	xorl	%ebp, %ebp
	testq	%r8, %r8
	movl	$0, %esi
	je	.LBB0_10
# BB#1:                                 # %for.body.i.preheader
	movq	%r8, %rbx
	negq	%rbx
	cmpq	$-4, %rbx
	movq	$-4, %rcx
	cmovaq	%rbx, %rcx
	xorl	%edi, %edi
	testq	%rcx, %rcx
	movl	$0, %esi
	je	.LBB0_7
# BB#2:                                 # %overflow.checked
	negq	%rcx
	xorl	%edi, %edi
	movq	%rcx, %r9
	andq	$-8, %r9
	pxor	%xmm14, %xmm14
	pxor	%xmm2, %xmm2
	je	.LBB0_6
# BB#3:                                 # %vector.body.preheader
	cmpq	$-4, %rbx
	movq	$-4, %rdi
	cmovaq	%rbx, %rdi
	negq	%rdi
	andq	$-8, %rdi
	pxor	%xmm13, %xmm13
	xorl	%ebx, %ebx
	movl	$1, %esi
	movd	%rsi, %xmm11
	movdqa	.LCPI0_0(%rip), %xmm8   # xmm8 = [3,2]
	movdqa	.LCPI0_1(%rip), %xmm9   # xmm9 = [18446744073709551613,18446744073709551612]
	movdqa	.LCPI0_2(%rip), %xmm10  # xmm10 = [18446744073709551615,18446744073709551614]
	movdqa	.LCPI0_3(%rip), %xmm12  # xmm12 = [1065353216,1065353216,1065353216,1065353216]
	pxor	%xmm14, %xmm14
	pxor	%xmm2, %xmm2
	.align	16, 0x90
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%rbx, %xmm4
	pshufd	$68, %xmm4, %xmm6       # xmm6 = xmm4[0,1,0,1]
	movd	(%rax,%rbx), %xmm5      # xmm5 = mem[0],zero,zero,zero
	movd	4(%rax,%rbx), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm13, %xmm5   # xmm5 = xmm5[0],xmm13[0],xmm5[1],xmm13[1],xmm5[2],xmm13[2],xmm5[3],xmm13[3],xmm5[4],xmm13[4],xmm5[5],xmm13[5],xmm5[6],xmm13[6],xmm5[7],xmm13[7]
	punpcklwd	%xmm13, %xmm5   # xmm5 = xmm5[0],xmm13[0],xmm5[1],xmm13[1],xmm5[2],xmm13[2],xmm5[3],xmm13[3]
	punpcklbw	%xmm13, %xmm4   # xmm4 = xmm4[0],xmm13[0],xmm4[1],xmm13[1],xmm4[2],xmm13[2],xmm4[3],xmm13[3],xmm4[4],xmm13[4],xmm4[5],xmm13[5],xmm4[6],xmm13[6],xmm4[7],xmm13[7]
	punpcklwd	%xmm13, %xmm4   # xmm4 = xmm4[0],xmm13[0],xmm4[1],xmm13[1],xmm4[2],xmm13[2],xmm4[3],xmm13[3]
	movdqa	%xmm11, %xmm3
	psubq	%xmm6, %xmm3
	movdqa	%xmm8, %xmm7
	psubq	%xmm6, %xmm7
	movdqa	%xmm9, %xmm1
	psubq	%xmm6, %xmm1
	movdqa	%xmm10, %xmm0
	psubq	%xmm6, %xmm0
	psllq	$3, %xmm7
	psllq	$3, %xmm3
	psllq	$3, %xmm0
	psllq	$3, %xmm1
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$232, %xmm7, %xmm6      # xmm6 = xmm7[0,2,2,3]
	punpcklqdq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	pslld	$23, %xmm6
	paddd	%xmm12, %xmm6
	cvttps2dq	%xmm6, %xmm1
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm3      # xmm3 = xmm5[0,2,2,3]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	pslld	$23, %xmm0
	paddd	%xmm12, %xmm0
	cvttps2dq	%xmm0, %xmm0
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	por	%xmm1, %xmm14
	por	%xmm0, %xmm2
	addq	$8, %rbx
	cmpq	%rbx, %rdi
	jne	.LBB0_4
# BB#5:
	movq	%r9, %rdi
.LBB0_6:                                # %middle.block
	por	%xmm2, %xmm14
	pshufd	$78, %xmm14, %xmm0      # xmm0 = xmm14[2,3,0,1]
	por	%xmm14, %xmm0
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	por	%xmm0, %xmm1
	movd	%xmm1, %esi
	cmpq	%rcx, %rdi
	je	.LBB0_10
.LBB0_7:                                # %for.body.i.preheader32
	leaq	1(%rdi), %rbx
	shlq	$3, %rdi
	movl	$24, %ecx
	subl	%edi, %ecx
	.align	16, 0x90
.LBB0_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %edi
	movzbl	-1(%rax,%rbx), %esi
	shll	%cl, %esi
	orl	%edi, %esi
	cmpq	$3, %rbx
	jg	.LBB0_10
# BB#9:                                 # %for.body.i
                                        #   in Loop: Header=BB0_8 Depth=1
	addl	$-8, %ecx
	cmpq	%r8, %rbx
	leaq	1(%rbx), %rbx
	jb	.LBB0_8
.LBB0_10:                               # %jbig2_decode_mmr_init.exit
	movl	%esi, 32(%rsp)
	testl	%edx, %edx
	jle	.LBB0_11
# BB#12:
	leaq	(%rsp), %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	memset
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	jbig2_decode_mmr_line
	testl	%eax, %eax
	js	.LBB0_15
# BB#14:                                # %if.end
                                        #   in Loop: Header=BB0_13 Depth=1
	incl	%ebp
	cmpl	4(%r14), %ebp
	movq	%r13, %rbx
	leaq	(%r13,%r15), %r13
	jl	.LBB0_13
	jmp	.LBB0_15
.LBB0_11:
	xorl	%eax, %eax
.LBB0_15:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jbig2_decode_generic_mmr, .Lfunc_end0-jbig2_decode_generic_mmr
	.cfi_endproc

	.align	16, 0x90
	.type	jbig2_decode_mmr_line,@function
jbig2_decode_mmr_line:                  # @jbig2_decode_mmr_line
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
	subq	$40, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 96
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	(%r12), %esi
	xorl	%eax, %eax
	testl	%esi, %esi
	js	.LBB1_341
# BB#1:                                 # %if.end.lr.ph
	leaq	113(%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	1(%r15), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$-1, %r13d
	pcmpeqd	%xmm0, %xmm0
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB1_2:                                # %if.end
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_304 Depth 2
                                        #     Child Loop BB1_311 Depth 2
                                        #     Child Loop BB1_317 Depth 2
                                        #     Child Loop BB1_328 Depth 2
                                        #     Child Loop BB1_331 Depth 2
                                        #     Child Loop BB1_335 Depth 2
                                        #     Child Loop BB1_269 Depth 2
                                        #     Child Loop BB1_276 Depth 2
                                        #     Child Loop BB1_282 Depth 2
                                        #     Child Loop BB1_293 Depth 2
                                        #     Child Loop BB1_296 Depth 2
                                        #     Child Loop BB1_300 Depth 2
                                        #     Child Loop BB1_234 Depth 2
                                        #     Child Loop BB1_241 Depth 2
                                        #     Child Loop BB1_247 Depth 2
                                        #     Child Loop BB1_258 Depth 2
                                        #     Child Loop BB1_261 Depth 2
                                        #     Child Loop BB1_265 Depth 2
                                        #     Child Loop BB1_200 Depth 2
                                        #     Child Loop BB1_206 Depth 2
                                        #     Child Loop BB1_212 Depth 2
                                        #     Child Loop BB1_223 Depth 2
                                        #     Child Loop BB1_226 Depth 2
                                        #     Child Loop BB1_230 Depth 2
                                        #     Child Loop BB1_166 Depth 2
                                        #     Child Loop BB1_172 Depth 2
                                        #     Child Loop BB1_178 Depth 2
                                        #     Child Loop BB1_189 Depth 2
                                        #     Child Loop BB1_192 Depth 2
                                        #     Child Loop BB1_196 Depth 2
                                        #     Child Loop BB1_126 Depth 2
                                        #     Child Loop BB1_132 Depth 2
                                        #     Child Loop BB1_138 Depth 2
                                        #     Child Loop BB1_152 Depth 2
                                        #     Child Loop BB1_155 Depth 2
                                        #     Child Loop BB1_159 Depth 2
                                        #     Child Loop BB1_91 Depth 2
                                        #     Child Loop BB1_98 Depth 2
                                        #     Child Loop BB1_104 Depth 2
                                        #     Child Loop BB1_115 Depth 2
                                        #     Child Loop BB1_118 Depth 2
                                        #     Child Loop BB1_122 Depth 2
                                        #     Child Loop BB1_49 Depth 2
                                        #     Child Loop BB1_58 Depth 2
                                        #     Child Loop BB1_64 Depth 2
                                        #     Child Loop BB1_69 Depth 2
                                        #     Child Loop BB1_80 Depth 2
                                        #     Child Loop BB1_84 Depth 2
                                        #     Child Loop BB1_87 Depth 2
                                        #     Child Loop BB1_5 Depth 2
                                        #     Child Loop BB1_36 Depth 2
                                        #     Child Loop BB1_40 Depth 2
                                        #     Child Loop BB1_43 Depth 2
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_23 Depth 2
	movl	32(%r12), %edx
	movl	%edx, %eax
	shrl	$29, %eax
	cmpl	$1, %eax
	jne	.LBB1_46
# BB#3:                                 # %if.then.3
                                        #   in Loop: Header=BB1_2 Depth=1
	shll	$3, %edx
	movl	%edx, 32(%r12)
	movl	28(%r12), %ecx
	leal	3(%rcx), %eax
	movl	%eax, 28(%r12)
	cmpl	$8, %eax
	jl	.LBB1_8
# BB#4:                                 # %while.body.lr.ph.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	16(%r12), %rax
	movslq	24(%r12), %rsi
	addq	$4, %rsi
	addl	$-5, %ecx
	.align	16, 0x90
.LBB1_5:                                # %while.body.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 28(%r12)
	cmpq	%rax, %rsi
	jae	.LBB1_7
# BB#6:                                 # %if.then.i
                                        #   in Loop: Header=BB1_5 Depth=2
	movq	8(%r12), %rdi
	movzbl	(%rdi,%rsi), %edi
	shll	%cl, %edi
	orl	%edi, %edx
	movl	%edx, 32(%r12)
.LBB1_7:                                # %if.end.i
                                        #   in Loop: Header=BB1_5 Depth=2
	leal	-3(%rsi), %edi
	movl	%edi, 24(%r12)
	incq	%rsi
	cmpl	$7, %ecx
	leal	-8(%rcx), %ecx
	jg	.LBB1_5
.LBB1_8:                                # %jbig2_decode_mmr_consume.exit
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %r13d
	movl	$0, %eax
	cmovel	%eax, %r13d
	testl	%r11d, %r11d
	je	.LBB1_9
# BB#28:                                # %if.else
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r11d, %ebp
	movl	$jbig2_mmr_black_decode, %esi
	movl	$7, %edx
	movq	%r12, %rdi
	callq	jbig2_decode_get_run
	movl	%eax, %ebx
	movl	$jbig2_mmr_white_decode, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	jbig2_decode_get_run
	addl	%r13d, %ebx
	leal	(%rax,%rbx), %edx
	movl	(%r12), %eax
	cmpl	%eax, %ebx
	cmovgl	%eax, %ebx
	cmpl	%eax, %edx
	cmovgl	%eax, %edx
	testl	%r13d, %r13d
	movl	$-1, %eax
	js	.LBB1_341
# BB#29:                                # %if.else
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%r13d, %ebx
	pcmpeqd	%xmm0, %xmm0
	movl	%ebp, %r11d
	jl	.LBB1_341
# BB#30:                                # %if.end.43
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ebp
	sarl	$3, %ebp
	movl	%ebx, %eax
	sarl	$3, %eax
	andl	$7, %r13d
	andl	$7, %ebx
	movb	lm(%r13), %cl
	cmpl	%eax, %ebp
	jne	.LBB1_32
# BB#31:                                # %if.then.i.1312
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ebx, %eax
	andb	rm(%rax), %cl
	movslq	%ebp, %rax
	orb	%cl, (%r15,%rax)
	jmp	.LBB1_340
	.align	16, 0x90
.LBB1_46:                               # %if.else.46
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%edx, %ecx
	andl	$-268435456, %ecx       # imm = 0xFFFFFFFFF0000000
	cmpl	$268435456, %ecx        # imm = 0x10000000
	jne	.LBB1_88
# BB#47:                                # %if.then.49
                                        #   in Loop: Header=BB1_2 Depth=1
	shll	$4, %edx
	movl	%edx, 32(%r12)
	movl	28(%r12), %ecx
	leal	4(%rcx), %eax
	movl	%eax, 28(%r12)
	cmpl	$8, %eax
	jl	.LBB1_52
# BB#48:                                # %while.body.lr.ph.i.1284
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	16(%r12), %rax
	movslq	24(%r12), %rdi
	addq	$4, %rdi
	addl	$-4, %ecx
	.align	16, 0x90
.LBB1_49:                               # %while.body.i.1289
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 28(%r12)
	cmpq	%rax, %rdi
	jae	.LBB1_51
# BB#50:                                # %if.then.i.1294
                                        #   in Loop: Header=BB1_49 Depth=2
	movq	8(%r12), %rbp
	movzbl	(%rbp,%rdi), %ebp
	shll	%cl, %ebp
	orl	%ebp, %edx
	movl	%edx, 32(%r12)
.LBB1_51:                               # %if.end.i.1297
                                        #   in Loop: Header=BB1_49 Depth=2
	leal	-3(%rdi), %ebp
	movl	%ebp, 24(%r12)
	incq	%rdi
	cmpl	$7, %ecx
	leal	-8(%rcx), %ecx
	jg	.LBB1_49
.LBB1_52:                               # %jbig2_decode_mmr_consume.exit1298
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	sete	%dl
	testq	%r14, %r14
	je	.LBB1_53
# BB#56:                                # %if.end.i.1243
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	cmpl	$-1, %r13d
	movl	$0, %edi
	je	.LBB1_58
# BB#57:                                # %if.else.i.1253
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ecx
	notl	%ecx
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	leal	1(%r13), %eax
	jmp	.LBB1_58
	.align	16, 0x90
.LBB1_60:                               # %if.end.19.i.1271
                                        #   in Loop: Header=BB1_58 Depth=2
	incl	%eax
.LBB1_58:                               # %while.cond.preheader.i.1257
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %eax
	jge	.LBB1_61
# BB#59:                                # %while.body.i.1268
                                        #   in Loop: Header=BB1_58 Depth=2
	movl	%eax, %ecx
	notl	%ecx
	movl	%eax, %ebp
	sarl	$3, %ebp
	movslq	%ebp, %rbp
	movzbl	(%r14,%rbp), %ebp
	andb	$7, %cl
	shrl	%cl, %ebp
	andl	$1, %ebp
	cmpl	%ebp, %edi
	je	.LBB1_60
.LBB1_61:                               # %jbig2_find_changing_element.exit1273
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%esi, %eax
	jge	.LBB1_67
# BB#62:                                # %land.lhs.true.i.1204
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	%dl, %edi
	movl	%eax, %ecx
	notl	%ecx
	movl	%eax, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%r14,%rdx), %edx
	andb	$7, %cl
	shrl	%cl, %edx
	andl	$1, %edx
	cmpl	%edi, %edx
	je	.LBB1_67
# BB#63:                                # %if.end.i.1210
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %eax
	leal	1(%rax), %eax
	movl	$0, %ecx
	cmovel	%ecx, %eax
	cmovel	%ecx, %edx
	jmp	.LBB1_64
	.align	16, 0x90
.LBB1_66:                               # %if.end.19.i.1238
                                        #   in Loop: Header=BB1_64 Depth=2
	incl	%eax
.LBB1_64:                               # %if.end.i.1210
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %eax
	jge	.LBB1_67
# BB#65:                                # %while.body.i.1235
                                        #   in Loop: Header=BB1_64 Depth=2
	movl	%eax, %ecx
	notl	%ecx
	movl	%eax, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%edi, %edx
	je	.LBB1_66
.LBB1_67:                               # %if.end.i.1161
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%edx, %edx
	cmpl	$-1, %eax
	movl	$0, %edi
	je	.LBB1_69
# BB#68:                                # %if.else.i.1171
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ecx
	notl	%ecx
	movl	%eax, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%r14,%rdx), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	incl	%eax
	movl	%eax, %edx
	jmp	.LBB1_69
	.align	16, 0x90
.LBB1_71:                               # %if.end.19.i.1189
                                        #   in Loop: Header=BB1_69 Depth=2
	incl	%edx
.LBB1_69:                               # %while.cond.preheader.i.1175
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %edx
	jge	.LBB1_54
# BB#70:                                # %while.body.i.1186
                                        #   in Loop: Header=BB1_69 Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	cmpl	%eax, %edi
	je	.LBB1_71
	jmp	.LBB1_54
	.align	16, 0x90
.LBB1_88:                               # %if.else.62
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%edx, %edx
	js	.LBB1_89
# BB#123:                               # %if.else.82
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3, %eax
	jne	.LBB1_163
# BB#124:                               # %if.then.85
                                        #   in Loop: Header=BB1_2 Depth=1
	shll	$3, %edx
	movl	%edx, 32(%r12)
	movl	28(%r12), %ecx
	leal	3(%rcx), %eax
	movl	%eax, 28(%r12)
	cmpl	$8, %eax
	jl	.LBB1_129
# BB#125:                               # %while.body.lr.ph.i.965
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	16(%r12), %rax
	movslq	24(%r12), %rdi
	addq	$4, %rdi
	addl	$-5, %ecx
	.align	16, 0x90
.LBB1_126:                              # %while.body.i.970
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 28(%r12)
	cmpq	%rax, %rdi
	jae	.LBB1_128
# BB#127:                               # %if.then.i.975
                                        #   in Loop: Header=BB1_126 Depth=2
	movq	8(%r12), %rbp
	movzbl	(%rbp,%rdi), %ebp
	shll	%cl, %ebp
	orl	%ebp, %edx
	movl	%edx, 32(%r12)
.LBB1_128:                              # %if.end.i.978
                                        #   in Loop: Header=BB1_126 Depth=2
	leal	-3(%rdi), %ebp
	movl	%ebp, 24(%r12)
	incq	%rdi
	cmpl	$7, %ecx
	leal	-8(%rcx), %ecx
	jg	.LBB1_126
.LBB1_129:                              # %jbig2_decode_mmr_consume.exit979
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	sete	%bl
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB1_341
# BB#130:                               # %if.end.i.924
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%edx, %edx
	cmpl	$-1, %r13d
	movl	$0, %eax
	je	.LBB1_132
# BB#131:                               # %if.else.i.934
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ecx
	notl	%ecx
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	leal	1(%r13), %edx
	jmp	.LBB1_132
	.align	16, 0x90
.LBB1_134:                              # %if.end.19.i.952
                                        #   in Loop: Header=BB1_132 Depth=2
	incl	%edx
.LBB1_132:                              # %while.cond.preheader.i.938
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %edx
	jge	.LBB1_135
# BB#133:                               # %while.body.i.949
                                        #   in Loop: Header=BB1_132 Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%edi, %eax
	je	.LBB1_134
.LBB1_135:                              # %jbig2_find_changing_element.exit954
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	%bl, %r8d
	cmpl	%esi, %edx
	jge	.LBB1_140
# BB#136:                               # %land.lhs.true.i.885
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	cmpl	%r8d, %eax
	je	.LBB1_140
# BB#137:                               # %if.end.i.891
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %edx
	leal	1(%rdx), %ecx
	movl	$0, %edx
	cmovel	%edx, %ecx
	cmovel	%edx, %eax
	cmpl	%esi, %ecx
	movl	%ecx, %edx
	jge	.LBB1_140
	.align	16, 0x90
.LBB1_138:                              # %while.body.i.916
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%edi, %eax
	jne	.LBB1_140
# BB#139:                               # %if.end.19.i.919
                                        #   in Loop: Header=BB1_138 Depth=2
	incl	%edx
	cmpl	%esi, %edx
	jl	.LBB1_138
.LBB1_140:                              # %jbig2_find_changing_element_of_color.exit888
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	cmpl	%esi, %edx
	jge	.LBB1_341
# BB#141:                               # %if.end.95
                                        #   in Loop: Header=BB1_2 Depth=1
	incl	%edx
	testl	%r11d, %r11d
	je	.LBB1_142
# BB#143:                               # %if.then.97
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r13d, %r13d
	movl	$-1, %eax
	js	.LBB1_341
# BB#144:                               # %if.then.97
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%r13d, %edx
	jl	.LBB1_341
# BB#145:                               # %if.end.103
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ebx
	sarl	$3, %ebx
	movl	%edx, %eax
	sarl	$3, %eax
	andl	$7, %r13d
	movl	%edx, %r9d
	andl	$7, %r9d
	movb	lm(%r13), %cl
	cmpl	%eax, %ebx
	jne	.LBB1_148
# BB#146:                               # %if.then.i.850
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r9d, %eax
	andb	rm(%rax), %cl
	movslq	%ebx, %rax
	jmp	.LBB1_147
.LBB1_9:                                # %if.then.8
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$jbig2_mmr_white_decode, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	jbig2_decode_get_run
	movl	%eax, %ebx
	movl	$jbig2_mmr_black_decode, %esi
	movl	$7, %edx
	movq	%r12, %rdi
	callq	jbig2_decode_get_run
	addl	%r13d, %ebx
	leal	(%rax,%rbx), %edx
	movl	(%r12), %eax
	cmpl	%eax, %ebx
	cmovgl	%eax, %ebx
	cmpl	%eax, %edx
	cmovgl	%eax, %edx
	cmpl	%ebx, %edx
	movl	$-1, %eax
	jl	.LBB1_341
# BB#10:                                # %if.then.8
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%ebx, %ebx
	pcmpeqd	%xmm0, %xmm0
	js	.LBB1_341
# BB#11:                                # %if.end.24
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ebx, %ebp
	sarl	$3, %ebp
	movl	%edx, %eax
	sarl	$3, %eax
	andl	$7, %ebx
	movl	%edx, %ecx
	andl	$7, %ecx
	movb	lm(%rbx), %bl
	cmpl	%eax, %ebp
	jne	.LBB1_13
# BB#12:                                # %if.then.i.1348
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ecx, %eax
	andb	rm(%rax), %bl
	movslq	%ebp, %rax
	orb	%bl, (%r15,%rax)
	xorl	%r11d, %r11d
	jmp	.LBB1_340
.LBB1_32:                               # %if.else.i.1318
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%ebp, %r13
	orb	%cl, (%r15,%r13)
	leal	1(%rbp), %r9d
	cmpl	%eax, %r9d
	jge	.LBB1_44
# BB#33:                                # %for.body.i.1325.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-2(%rax), %edi
	subl	%ebp, %edi
	leaq	1(%rdi), %rcx
	movq	%rcx, %r10
	movabsq	$8589934560, %rsi       # imm = 0x1FFFFFFE0
	andq	%rsi, %r10
	andq	%rsi, %rcx
	leaq	1(%rdi,%r13), %r8
	je	.LBB1_41
# BB#34:                                # %vector.body1444.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r11d, 24(%rsp)         # 4-byte Spill
	leaq	1(%rdi), %r11
	andq	%rsi, %r11
	addq	$-32, %r11
	movl	%r11d, %ecx
	shrl	$5, %ecx
	incl	%ecx
	testb	$3, %cl
	movq	%r13, %rcx
	je	.LBB1_37
# BB#35:                                # %vector.body1444.prol.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rdi), %esi
	andl	$96, %esi
	addl	$-32, %esi
	shrl	$5, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	movq	%r13, %rcx
	.align	16, 0x90
.LBB1_36:                               # %vector.body1444.prol
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, 1(%r15,%rcx)
	movdqu	%xmm0, 17(%r15,%rcx)
	addq	$32, %rcx
	incq	%rsi
	jne	.LBB1_36
.LBB1_37:                               # %vector.body1444.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r10, %r13
	addl	%r10d, %r9d
	cmpq	$96, %r11
	jae	.LBB1_39
# BB#38:                                #   in Loop: Header=BB1_2 Depth=1
	movl	24(%rsp), %r11d         # 4-byte Reload
	jmp	.LBB1_41
.LBB1_53:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%esi, %edx
.LBB1_54:                               # %jbig2_find_changing_element.exit1191
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	je	.LBB1_55
# BB#72:                                # %if.then.55
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r13d, %r13d
	movl	$-1, %eax
	js	.LBB1_341
# BB#73:                                # %if.then.55
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%r13d, %edx
	jl	.LBB1_341
# BB#74:                                # %if.end.60
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ebp
	sarl	$3, %ebp
	movl	%edx, %eax
	sarl	$3, %eax
	andl	$7, %r13d
	movl	%edx, %ecx
	andl	$7, %ecx
	movb	lm(%r13), %bl
	cmpl	%eax, %ebp
	jne	.LBB1_76
# BB#75:                                # %if.then.i.1136
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ecx, %eax
	andb	rm(%rax), %bl
	movslq	%ebp, %rax
	orb	%bl, (%r15,%rax)
	jmp	.LBB1_340
.LBB1_89:                               # %if.then.65
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	%edx, %edx
	movl	%edx, 32(%r12)
	movl	28(%r12), %ecx
	leal	1(%rcx), %eax
	movl	%eax, 28(%r12)
	cmpl	$7, %ecx
	jl	.LBB1_94
# BB#90:                                # %while.body.lr.ph.i.1108
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	16(%r12), %rax
	movslq	24(%r12), %rdi
	addq	$4, %rdi
	addl	$-7, %ecx
	.align	16, 0x90
.LBB1_91:                               # %while.body.i.1113
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 28(%r12)
	cmpq	%rax, %rdi
	jae	.LBB1_93
# BB#92:                                # %if.then.i.1118
                                        #   in Loop: Header=BB1_91 Depth=2
	movq	8(%r12), %rbp
	movzbl	(%rbp,%rdi), %ebp
	shll	%cl, %ebp
	orl	%ebp, %edx
	movl	%edx, 32(%r12)
.LBB1_93:                               # %if.end.i.1121
                                        #   in Loop: Header=BB1_91 Depth=2
	leal	-3(%rdi), %ebp
	movl	%ebp, 24(%r12)
	incq	%rdi
	cmpl	$7, %ecx
	leal	-8(%rcx), %ecx
	jg	.LBB1_91
.LBB1_94:                               # %jbig2_decode_mmr_consume.exit1122
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	sete	%al
	testq	%r14, %r14
	movzbl	%al, %r10d
	je	.LBB1_95
# BB#96:                                # %if.end.i.1067
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%edx, %edx
	cmpl	$-1, %r13d
	movl	$0, %eax
	je	.LBB1_98
# BB#97:                                # %if.else.i.1077
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ecx
	notl	%ecx
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	leal	1(%r13), %edx
	jmp	.LBB1_98
	.align	16, 0x90
.LBB1_100:                              # %if.end.19.i.1095
                                        #   in Loop: Header=BB1_98 Depth=2
	incl	%edx
.LBB1_98:                               # %while.cond.preheader.i.1081
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %edx
	jge	.LBB1_101
# BB#99:                                # %while.body.i.1092
                                        #   in Loop: Header=BB1_98 Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%edi, %eax
	je	.LBB1_100
.LBB1_101:                              # %jbig2_find_changing_element.exit1097
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%esi, %edx
	jge	.LBB1_106
# BB#102:                               # %land.lhs.true.i.1028
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	cmpl	%r10d, %eax
	je	.LBB1_106
# BB#103:                               # %if.end.i.1034
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %edx
	leal	1(%rdx), %ecx
	movl	$0, %edx
	cmovel	%edx, %ecx
	cmovel	%edx, %eax
	cmpl	%esi, %ecx
	movl	%ecx, %edx
	jge	.LBB1_106
	.align	16, 0x90
.LBB1_104:                              # %while.body.i.1059
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%edi, %eax
	jne	.LBB1_106
# BB#105:                               # %if.end.19.i.1062
                                        #   in Loop: Header=BB1_104 Depth=2
	incl	%edx
	cmpl	%esi, %edx
	jl	.LBB1_104
	jmp	.LBB1_106
.LBB1_55:                               #   in Loop: Header=BB1_2 Depth=1
	xorl	%r11d, %r11d
	jmp	.LBB1_340
.LBB1_13:                               # %if.else.i.1354
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%ebp, %r13
	orb	%bl, (%r15,%r13)
	leal	1(%rbp), %r9d
	cmpl	%eax, %r9d
	jge	.LBB1_24
# BB#14:                                # %for.body.i.1361.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-2(%rax), %ebx
	subl	%ebp, %ebx
	leaq	1(%rbx), %rsi
	movq	%rsi, %r10
	movabsq	$8589934560, %rdi       # imm = 0x1FFFFFFE0
	andq	%rdi, %r10
	andq	%rdi, %rsi
	leaq	1(%rbx,%r13), %r8
	je	.LBB1_21
# BB#15:                                # %vector.body.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	1(%rbx), %r11
	andq	%rdi, %r11
	addq	$-32, %r11
	movl	%r11d, %esi
	shrl	$5, %esi
	incl	%esi
	testb	$3, %sil
	movq	%r13, %rsi
	je	.LBB1_18
# BB#16:                                # %vector.body.prol.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rbx), %edi
	andl	$96, %edi
	addl	$-32, %edi
	shrl	$5, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	movq	%r13, %rsi
	.align	16, 0x90
.LBB1_17:                               # %vector.body.prol
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, 1(%r15,%rsi)
	movdqu	%xmm0, 17(%r15,%rsi)
	addq	$32, %rsi
	incq	%rdi
	jne	.LBB1_17
.LBB1_18:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r10, %r13
	addl	%r10d, %r9d
	cmpq	$96, %r11
	jb	.LBB1_21
# BB#19:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbx
	movabsq	$8589934560, %rdi       # imm = 0x1FFFFFFE0
	andq	%rdi, %rbx
	movslq	%ebp, %rdi
	addq	%rbx, %rdi
	subq	%rsi, %rdi
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rsi,%rbp), %rsi
	.align	16, 0x90
.LBB1_20:                               # %vector.body
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rdi
	jne	.LBB1_20
.LBB1_21:                               # %middle.block
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%r13, %r8
	je	.LBB1_24
# BB#22:                                # %for.body.i.1361.preheader1749
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
	leaq	(%r13,%rsi), %rsi
	movl	%eax, %edi
	subl	%r9d, %edi
	.align	16, 0x90
.LBB1_23:                               # %for.body.i.1361
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rsi)
	incq	%rsi
	decl	%edi
	jne	.LBB1_23
.LBB1_24:                               # %for.end.i.1363
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%r11d, %r11d
	jmp	.LBB1_25
.LBB1_163:                              # %if.else.110
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%edx, %ecx
	shrl	$26, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_197
# BB#164:                               # %if.then.113
                                        #   in Loop: Header=BB1_2 Depth=1
	shll	$6, %edx
	movl	%edx, 32(%r12)
	movl	28(%r12), %ecx
	leal	6(%rcx), %eax
	movl	%eax, 28(%r12)
	cmpl	$8, %eax
	jl	.LBB1_169
# BB#165:                               # %while.body.lr.ph.i.822
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	16(%r12), %rax
	movslq	24(%r12), %rdi
	addq	$4, %rdi
	addl	$-2, %ecx
	.align	16, 0x90
.LBB1_166:                              # %while.body.i.827
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 28(%r12)
	cmpq	%rax, %rdi
	jae	.LBB1_168
# BB#167:                               # %if.then.i.832
                                        #   in Loop: Header=BB1_166 Depth=2
	movq	8(%r12), %rbp
	movzbl	(%rbp,%rdi), %ebp
	shll	%cl, %ebp
	orl	%ebp, %edx
	movl	%edx, 32(%r12)
.LBB1_168:                              # %if.end.i.835
                                        #   in Loop: Header=BB1_166 Depth=2
	leal	-3(%rdi), %ebp
	movl	%ebp, 24(%r12)
	incq	%rdi
	cmpl	$7, %ecx
	leal	-8(%rcx), %ecx
	jg	.LBB1_166
.LBB1_169:                              # %jbig2_decode_mmr_consume.exit836
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	sete	%al
	testq	%r14, %r14
	movzbl	%al, %r10d
	movl	%esi, %edx
	je	.LBB1_180
# BB#170:                               # %if.end.i.781
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%edx, %edx
	cmpl	$-1, %r13d
	movl	$0, %eax
	je	.LBB1_172
# BB#171:                               # %if.else.i.791
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ecx
	notl	%ecx
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	leal	1(%r13), %edx
	jmp	.LBB1_172
	.align	16, 0x90
.LBB1_174:                              # %if.end.19.i.809
                                        #   in Loop: Header=BB1_172 Depth=2
	incl	%edx
.LBB1_172:                              # %while.cond.preheader.i.795
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %edx
	jge	.LBB1_175
# BB#173:                               # %while.body.i.806
                                        #   in Loop: Header=BB1_172 Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%edi, %eax
	je	.LBB1_174
.LBB1_175:                              # %jbig2_find_changing_element.exit811
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%esi, %edx
	jge	.LBB1_180
# BB#176:                               # %land.lhs.true.i.742
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	cmpl	%r10d, %eax
	je	.LBB1_180
# BB#177:                               # %if.end.i.748
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %edx
	leal	1(%rdx), %ecx
	movl	$0, %edx
	cmovel	%edx, %ecx
	cmovel	%edx, %eax
	cmpl	%esi, %ecx
	movl	%ecx, %edx
	jge	.LBB1_180
	.align	16, 0x90
.LBB1_178:                              # %while.body.i.773
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%edi, %eax
	jne	.LBB1_180
# BB#179:                               # %if.end.19.i.776
                                        #   in Loop: Header=BB1_178 Depth=2
	incl	%edx
	cmpl	%esi, %edx
	jl	.LBB1_178
.LBB1_180:                              # %jbig2_find_changing_element_of_color.exit745
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	$2, %edx
	xorl	%eax, %eax
	cmpl	%esi, %edx
	jg	.LBB1_341
# BB#181:                               # %if.end.123
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	je	.LBB1_339
# BB#182:                               # %if.then.125
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r13d, %r13d
	movl	$-1, %eax
	js	.LBB1_341
# BB#183:                               # %if.then.125
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%r13d, %edx
	jl	.LBB1_341
# BB#184:                               # %if.end.131
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ebx
	sarl	$3, %ebx
	movl	%edx, %eax
	sarl	$3, %eax
	andl	$7, %r13d
	movl	%edx, %r9d
	andl	$7, %r9d
	movb	lm(%r13), %cl
	cmpl	%eax, %ebx
	je	.LBB1_110
# BB#185:                               # %if.else.i.713
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%ebx, %rdi
	orb	%cl, (%r15,%rdi)
	leal	1(%rbx), %r8d
	cmpl	%eax, %r8d
	jge	.LBB1_336
# BB#186:                               # %for.body.i.720.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-2(%rax), %ebp
	subl	%ebx, %ebp
	leaq	1(%rbp), %rsi
	movq	%rsi, %r11
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %r11
	andq	%rcx, %rsi
	leaq	1(%rbp,%rdi), %rsi
	je	.LBB1_194
# BB#187:                               # %vector.body1580.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%r8d, 8(%rsp)           # 4-byte Spill
	leaq	1(%rbp), %r13
	andq	%rcx, %r13
	addq	$-32, %r13
	movl	%r13d, %esi
	shrl	$5, %esi
	incl	%esi
	testb	$3, %sil
	movq	%rdi, %rsi
	je	.LBB1_190
# BB#188:                               # %vector.body1580.prol.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rbp), %r8d
	andl	$96, %r8d
	addl	$-32, %r8d
	shrl	$5, %r8d
	incl	%r8d
	andl	$3, %r8d
	negq	%r8
	movq	%rdi, %rsi
	.align	16, 0x90
.LBB1_189:                              # %vector.body1580.prol
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, 1(%r15,%rsi)
	movdqu	%xmm0, 17(%r15,%rsi)
	addq	$32, %rsi
	incq	%r8
	jne	.LBB1_189
.LBB1_190:                              # %vector.body1580.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r11, %rdi
	movl	8(%rsp), %r8d           # 4-byte Reload
	addl	%r11d, %r8d
	cmpq	$96, %r13
	jb	.LBB1_193
# BB#191:                               # %vector.body1580.preheader.split.split
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbp
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rbp
	movslq	%ebx, %rbx
	addq	%rbp, %rbx
	subq	%rsi, %rbx
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rsi,%rbp), %rsi
	.align	16, 0x90
.LBB1_192:                              # %vector.body1580
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rbx
	jne	.LBB1_192
.LBB1_193:                              #   in Loop: Header=BB1_2 Depth=1
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB1_194:                              # %middle.block1581
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB1_336
# BB#195:                               # %for.body.i.720.preheader1754
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
	leaq	(%rdi,%rsi), %rsi
	movl	%eax, %edi
	subl	%r8d, %edi
	.align	16, 0x90
.LBB1_196:                              # %for.body.i.720
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rsi)
	incq	%rsi
	decl	%edi
	jne	.LBB1_196
	jmp	.LBB1_336
.LBB1_76:                               # %if.else.i.1142
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%ebp, %r13
	orb	%bl, (%r15,%r13)
	leal	1(%rbp), %r9d
	cmpl	%eax, %r9d
	jge	.LBB1_25
# BB#77:                                # %for.body.i.1149.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-2(%rax), %ebx
	subl	%ebp, %ebx
	leaq	1(%rbx), %rsi
	movq	%rsi, %r10
	movabsq	$8589934560, %rdi       # imm = 0x1FFFFFFE0
	andq	%rdi, %r10
	andq	%rdi, %rsi
	leaq	1(%rbx,%r13), %r8
	je	.LBB1_85
# BB#78:                                # %vector.body1478.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r11d, 24(%rsp)         # 4-byte Spill
	leaq	1(%rbx), %r11
	andq	%rdi, %r11
	addq	$-32, %r11
	movl	%r11d, %esi
	shrl	$5, %esi
	incl	%esi
	testb	$3, %sil
	movq	%r13, %rsi
	je	.LBB1_81
# BB#79:                                # %vector.body1478.prol.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rbx), %edi
	andl	$96, %edi
	addl	$-32, %edi
	shrl	$5, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	movq	%r13, %rsi
	.align	16, 0x90
.LBB1_80:                               # %vector.body1478.prol
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, 1(%r15,%rsi)
	movdqu	%xmm0, 17(%r15,%rsi)
	addq	$32, %rsi
	incq	%rdi
	jne	.LBB1_80
.LBB1_81:                               # %vector.body1478.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r10, %r13
	addl	%r10d, %r9d
	cmpq	$96, %r11
	jae	.LBB1_83
# BB#82:                                #   in Loop: Header=BB1_2 Depth=1
	movl	24(%rsp), %r11d         # 4-byte Reload
	jmp	.LBB1_85
.LBB1_197:                              # %if.else.138
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%edx, %edi
	shrl	$25, %edi
	cmpl	$3, %edi
	jne	.LBB1_231
# BB#198:                               # %if.then.141
                                        #   in Loop: Header=BB1_2 Depth=1
	shll	$7, %edx
	movl	%edx, 32(%r12)
	movl	28(%r12), %ecx
	leal	7(%rcx), %eax
	movl	%eax, 28(%r12)
	testl	%ecx, %ecx
	jle	.LBB1_203
# BB#199:                               # %while.body.lr.ph.i.679
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	16(%r12), %rax
	movslq	24(%r12), %rdi
	addq	$4, %rdi
	decl	%ecx
	.align	16, 0x90
.LBB1_200:                              # %while.body.i.684
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 28(%r12)
	cmpq	%rax, %rdi
	jae	.LBB1_202
# BB#201:                               # %if.then.i.689
                                        #   in Loop: Header=BB1_200 Depth=2
	movq	8(%r12), %rbp
	movzbl	(%rbp,%rdi), %ebp
	shll	%cl, %ebp
	orl	%ebp, %edx
	movl	%edx, 32(%r12)
.LBB1_202:                              # %if.end.i.692
                                        #   in Loop: Header=BB1_200 Depth=2
	leal	-3(%rdi), %ebp
	movl	%ebp, 24(%r12)
	incq	%rdi
	cmpl	$7, %ecx
	leal	-8(%rcx), %ecx
	jg	.LBB1_200
.LBB1_203:                              # %jbig2_decode_mmr_consume.exit693
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	sete	%al
	testq	%r14, %r14
	movzbl	%al, %r10d
	movl	%esi, %edx
	je	.LBB1_214
# BB#204:                               # %if.end.i.638
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%edx, %edx
	cmpl	$-1, %r13d
	movl	$0, %eax
	je	.LBB1_206
# BB#205:                               # %if.else.i.648
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ecx
	notl	%ecx
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	leal	1(%r13), %edx
	jmp	.LBB1_206
	.align	16, 0x90
.LBB1_208:                              # %if.end.19.i.666
                                        #   in Loop: Header=BB1_206 Depth=2
	incl	%edx
.LBB1_206:                              # %while.cond.preheader.i.652
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %edx
	jge	.LBB1_209
# BB#207:                               # %while.body.i.663
                                        #   in Loop: Header=BB1_206 Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%edi, %eax
	je	.LBB1_208
.LBB1_209:                              # %jbig2_find_changing_element.exit668
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%esi, %edx
	jge	.LBB1_214
# BB#210:                               # %land.lhs.true.i.599
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	cmpl	%r10d, %eax
	je	.LBB1_214
# BB#211:                               # %if.end.i.605
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %edx
	leal	1(%rdx), %ecx
	movl	$0, %edx
	cmovel	%edx, %ecx
	cmovel	%edx, %eax
	cmpl	%esi, %ecx
	movl	%ecx, %edx
	jge	.LBB1_214
	.align	16, 0x90
.LBB1_212:                              # %while.body.i.630
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%edi, %eax
	jne	.LBB1_214
# BB#213:                               # %if.end.19.i.633
                                        #   in Loop: Header=BB1_212 Depth=2
	incl	%edx
	cmpl	%esi, %edx
	jl	.LBB1_212
.LBB1_214:                              # %jbig2_find_changing_element_of_color.exit602
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	$3, %edx
	xorl	%eax, %eax
	cmpl	%esi, %edx
	jg	.LBB1_341
# BB#215:                               # %if.end.151
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	je	.LBB1_339
# BB#216:                               # %if.then.153
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r13d, %r13d
	movl	$-1, %eax
	js	.LBB1_341
# BB#217:                               # %if.then.153
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%r13d, %edx
	jl	.LBB1_341
# BB#218:                               # %if.end.159
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ebx
	sarl	$3, %ebx
	movl	%edx, %eax
	sarl	$3, %eax
	andl	$7, %r13d
	movl	%edx, %r9d
	andl	$7, %r9d
	movb	lm(%r13), %cl
	cmpl	%eax, %ebx
	je	.LBB1_110
# BB#219:                               # %if.else.i.570
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%ebx, %rdi
	orb	%cl, (%r15,%rdi)
	leal	1(%rbx), %r8d
	cmpl	%eax, %r8d
	jge	.LBB1_336
# BB#220:                               # %for.body.i.577.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-2(%rax), %ebp
	subl	%ebx, %ebp
	leaq	1(%rbp), %rsi
	movq	%rsi, %r11
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %r11
	andq	%rcx, %rsi
	leaq	1(%rbp,%rdi), %rsi
	je	.LBB1_228
# BB#221:                               # %vector.body1614.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	leaq	1(%rbp), %r13
	andq	%rcx, %r13
	addq	$-32, %r13
	movl	%r13d, %esi
	shrl	$5, %esi
	incl	%esi
	testb	$3, %sil
	movq	%rdi, %rsi
	je	.LBB1_224
# BB#222:                               # %vector.body1614.prol.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rbp), %r8d
	andl	$96, %r8d
	addl	$-32, %r8d
	shrl	$5, %r8d
	incl	%r8d
	andl	$3, %r8d
	negq	%r8
	movq	%rdi, %rsi
	.align	16, 0x90
.LBB1_223:                              # %vector.body1614.prol
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, 1(%r15,%rsi)
	movdqu	%xmm0, 17(%r15,%rsi)
	addq	$32, %rsi
	incq	%r8
	jne	.LBB1_223
.LBB1_224:                              # %vector.body1614.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r11, %rdi
	movl	24(%rsp), %r8d          # 4-byte Reload
	addl	%r11d, %r8d
	cmpq	$96, %r13
	jb	.LBB1_227
# BB#225:                               # %vector.body1614.preheader.split.split
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbp
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rbp
	movslq	%ebx, %rbx
	addq	%rbp, %rbx
	subq	%rsi, %rbx
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rsi,%rbp), %rsi
	.align	16, 0x90
.LBB1_226:                              # %vector.body1614
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rbx
	jne	.LBB1_226
.LBB1_227:                              #   in Loop: Header=BB1_2 Depth=1
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB1_228:                              # %middle.block1615
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB1_336
# BB#229:                               # %for.body.i.577.preheader1755
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
	leaq	(%rdi,%rsi), %rsi
	movl	%eax, %edi
	subl	%r8d, %edi
	.align	16, 0x90
.LBB1_230:                              # %for.body.i.577
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rsi)
	incq	%rsi
	decl	%edi
	jne	.LBB1_230
	jmp	.LBB1_336
.LBB1_95:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%esi, %edx
.LBB1_106:                              # %jbig2_find_changing_element_of_color.exit1031
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	je	.LBB1_339
# BB#107:                               # %if.then.72
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r13d, %r13d
	movl	$-1, %eax
	js	.LBB1_341
# BB#108:                               # %if.then.72
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%r13d, %edx
	jl	.LBB1_341
# BB#109:                               # %if.end.77
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ebx
	sarl	$3, %ebx
	movl	%edx, %eax
	sarl	$3, %eax
	andl	$7, %r13d
	movl	%edx, %r9d
	andl	$7, %r9d
	movb	lm(%r13), %cl
	cmpl	%eax, %ebx
	je	.LBB1_110
# BB#111:                               # %if.else.i.999
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%ebx, %rdi
	orb	%cl, (%r15,%rdi)
	leal	1(%rbx), %r8d
	cmpl	%eax, %r8d
	jge	.LBB1_336
# BB#112:                               # %for.body.i.1006.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-2(%rax), %ebp
	subl	%ebx, %ebp
	leaq	1(%rbp), %rsi
	movq	%rsi, %r11
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %r11
	andq	%rcx, %rsi
	leaq	1(%rbp,%rdi), %rsi
	je	.LBB1_120
# BB#113:                               # %vector.body1512.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	leaq	1(%rbp), %r13
	andq	%rcx, %r13
	addq	$-32, %r13
	movl	%r13d, %esi
	shrl	$5, %esi
	incl	%esi
	testb	$3, %sil
	movq	%rdi, %rsi
	je	.LBB1_116
# BB#114:                               # %vector.body1512.prol.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rbp), %r8d
	andl	$96, %r8d
	addl	$-32, %r8d
	shrl	$5, %r8d
	incl	%r8d
	andl	$3, %r8d
	negq	%r8
	movq	%rdi, %rsi
	.align	16, 0x90
.LBB1_115:                              # %vector.body1512.prol
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, 1(%r15,%rsi)
	movdqu	%xmm0, 17(%r15,%rsi)
	addq	$32, %rsi
	incq	%r8
	jne	.LBB1_115
.LBB1_116:                              # %vector.body1512.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r11, %rdi
	movl	24(%rsp), %r8d          # 4-byte Reload
	addl	%r11d, %r8d
	cmpq	$96, %r13
	jb	.LBB1_119
# BB#117:                               # %vector.body1512.preheader.split.split
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbp
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rbp
	movslq	%ebx, %rbx
	addq	%rbp, %rbx
	subq	%rsi, %rbx
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rsi,%rbp), %rsi
	.align	16, 0x90
.LBB1_118:                              # %vector.body1512
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rbx
	jne	.LBB1_118
.LBB1_119:                              #   in Loop: Header=BB1_2 Depth=1
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB1_120:                              # %middle.block1513
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB1_336
# BB#121:                               # %for.body.i.1006.preheader1752
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
	leaq	(%rdi,%rsi), %rsi
	movl	%eax, %edi
	subl	%r8d, %edi
	.align	16, 0x90
.LBB1_122:                              # %for.body.i.1006
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rsi)
	incq	%rsi
	decl	%edi
	jne	.LBB1_122
	jmp	.LBB1_336
.LBB1_142:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%r8d, %r11d
	jmp	.LBB1_340
.LBB1_39:                               # %vector.body1444.preheader.split.split
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rdi
	movabsq	$8589934560, %rsi       # imm = 0x1FFFFFFE0
	andq	%rsi, %rdi
	movslq	%ebp, %rsi
	addq	%rdi, %rsi
	subq	%rcx, %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	leaq	(%rcx,%rdi), %rcx
	movl	24(%rsp), %r11d         # 4-byte Reload
	.align	16, 0x90
.LBB1_40:                               # %vector.body1444
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rcx)
	movdqu	%xmm0, -96(%rcx)
	movdqu	%xmm0, -80(%rcx)
	movdqu	%xmm0, -64(%rcx)
	movdqu	%xmm0, -48(%rcx)
	movdqu	%xmm0, -32(%rcx)
	movdqu	%xmm0, -16(%rcx)
	movdqu	%xmm0, (%rcx)
	subq	$-128, %rcx
	addq	$-128, %rsi
	jne	.LBB1_40
.LBB1_41:                               # %middle.block1445
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%r13, %r8
	je	.LBB1_44
# BB#42:                                # %for.body.i.1325.preheader1750
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	(%r13,%rcx), %rcx
	movl	%eax, %esi
	subl	%r9d, %esi
	.align	16, 0x90
.LBB1_43:                               # %for.body.i.1325
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rcx)
	incq	%rcx
	decl	%esi
	jne	.LBB1_43
.LBB1_44:                               # %for.end.i.1327
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%ebx, %ebx
	je	.LBB1_340
# BB#45:                                # %if.then.23.i.1333
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ebx, %ecx
	jmp	.LBB1_27
.LBB1_148:                              # %if.else.i.856
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%ebx, %rdi
	orb	%cl, (%r15,%rdi)
	leal	1(%rbx), %r13d
	cmpl	%eax, %r13d
	jge	.LBB1_160
# BB#149:                               # %for.body.i.863.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-2(%rax), %ebp
	subl	%ebx, %ebp
	leaq	1(%rbp), %rsi
	movq	%rsi, %r10
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %r10
	andq	%rcx, %rsi
	leaq	1(%rbp,%rdi), %rsi
	je	.LBB1_157
# BB#150:                               # %vector.body1546.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%r13d, 24(%rsp)         # 4-byte Spill
	leaq	1(%rbp), %r11
	andq	%rcx, %r11
	addq	$-32, %r11
	movl	%r11d, %esi
	shrl	$5, %esi
	incl	%esi
	testb	$3, %sil
	movq	%rdi, %rsi
	je	.LBB1_153
# BB#151:                               # %vector.body1546.prol.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rbp), %r13d
	andl	$96, %r13d
	addl	$-32, %r13d
	shrl	$5, %r13d
	incl	%r13d
	andl	$3, %r13d
	negq	%r13
	movq	%rdi, %rsi
	.align	16, 0x90
.LBB1_152:                              # %vector.body1546.prol
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, 1(%r15,%rsi)
	movdqu	%xmm0, 17(%r15,%rsi)
	addq	$32, %rsi
	incq	%r13
	jne	.LBB1_152
.LBB1_153:                              # %vector.body1546.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r10, %rdi
	movl	24(%rsp), %r13d         # 4-byte Reload
	addl	%r10d, %r13d
	cmpq	$96, %r11
	jb	.LBB1_156
# BB#154:                               # %vector.body1546.preheader.split.split
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbp
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rbp
	movslq	%ebx, %rbx
	addq	%rbp, %rbx
	subq	%rsi, %rbx
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rsi,%rbp), %rsi
	.align	16, 0x90
.LBB1_155:                              # %vector.body1546
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rbx
	jne	.LBB1_155
.LBB1_156:                              #   in Loop: Header=BB1_2 Depth=1
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB1_157:                              # %middle.block1547
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB1_160
# BB#158:                               # %for.body.i.863.preheader1753
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
	leaq	(%rdi,%rsi), %rsi
	movl	%eax, %edi
	subl	%r13d, %edi
	.align	16, 0x90
.LBB1_159:                              # %for.body.i.863
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rsi)
	incq	%rsi
	decl	%edi
	jne	.LBB1_159
.LBB1_160:                              # %for.end.i.865
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r9d, %r9d
	je	.LBB1_161
# BB#162:                               # %if.then.23.i.871
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r9d, %ecx
	movb	rm(%rcx), %cl
	cltq
.LBB1_147:                              # %while.body.backedge
                                        #   in Loop: Header=BB1_2 Depth=1
	orb	%cl, (%r15,%rax)
	movl	%r8d, %r11d
	jmp	.LBB1_340
.LBB1_231:                              # %if.else.166
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2, %eax
	jne	.LBB1_266
# BB#232:                               # %if.then.169
                                        #   in Loop: Header=BB1_2 Depth=1
	shll	$3, %edx
	movl	%edx, 32(%r12)
	movl	28(%r12), %ecx
	leal	3(%rcx), %eax
	movl	%eax, 28(%r12)
	cmpl	$8, %eax
	jl	.LBB1_237
# BB#233:                               # %while.body.lr.ph.i.536
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	16(%r12), %rax
	movslq	24(%r12), %rdi
	addq	$4, %rdi
	addl	$-5, %ecx
	.align	16, 0x90
.LBB1_234:                              # %while.body.i.541
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 28(%r12)
	cmpq	%rax, %rdi
	jae	.LBB1_236
# BB#235:                               # %if.then.i.546
                                        #   in Loop: Header=BB1_234 Depth=2
	movq	8(%r12), %rbp
	movzbl	(%rbp,%rdi), %ebp
	shll	%cl, %ebp
	orl	%ebp, %edx
	movl	%edx, 32(%r12)
.LBB1_236:                              # %if.end.i.549
                                        #   in Loop: Header=BB1_234 Depth=2
	leal	-3(%rdi), %ebp
	movl	%ebp, 24(%r12)
	incq	%rdi
	cmpl	$7, %ecx
	leal	-8(%rcx), %ecx
	jg	.LBB1_234
.LBB1_237:                              # %jbig2_decode_mmr_consume.exit550
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	sete	%al
	testq	%r14, %r14
	movzbl	%al, %r10d
	je	.LBB1_238
# BB#239:                               # %if.end.i.495
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%ebx, %ebx
	cmpl	$-1, %r13d
	movl	$0, %eax
	je	.LBB1_241
# BB#240:                               # %if.else.i.505
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ecx
	notl	%ecx
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	leal	1(%r13), %ebx
	jmp	.LBB1_241
	.align	16, 0x90
.LBB1_243:                              # %if.end.19.i.523
                                        #   in Loop: Header=BB1_241 Depth=2
	incl	%ebx
.LBB1_241:                              # %while.cond.preheader.i.509
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %ebx
	jge	.LBB1_244
# BB#242:                               # %while.body.i.520
                                        #   in Loop: Header=BB1_241 Depth=2
	movl	%ebx, %ecx
	notl	%ecx
	movl	%ebx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%r14,%rdx), %edx
	andb	$7, %cl
	shrl	%cl, %edx
	andl	$1, %edx
	cmpl	%edx, %eax
	je	.LBB1_243
.LBB1_244:                              # %jbig2_find_changing_element.exit525
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%esi, %ebx
	jge	.LBB1_249
# BB#245:                               # %land.lhs.true.i.456
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ebx, %ecx
	notl	%ecx
	movl	%ebx, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	cmpl	%r10d, %eax
	je	.LBB1_249
# BB#246:                               # %if.end.i.462
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %ebx
	leal	1(%rbx), %ecx
	movl	$0, %edx
	cmovel	%edx, %ecx
	cmovel	%edx, %eax
	cmpl	%esi, %ecx
	movl	%ecx, %ebx
	jge	.LBB1_249
.LBB1_247:                              # %while.body.i.487
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	notl	%ecx
	movl	%ebx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%r14,%rdx), %edx
	andb	$7, %cl
	shrl	%cl, %edx
	andl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB1_249
# BB#248:                               # %if.end.19.i.490
                                        #   in Loop: Header=BB1_247 Depth=2
	incl	%ebx
	cmpl	%esi, %ebx
	jl	.LBB1_247
	jmp	.LBB1_249
.LBB1_83:                               # %vector.body1478.preheader.split.split
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbx
	movabsq	$8589934560, %rdi       # imm = 0x1FFFFFFE0
	andq	%rdi, %rbx
	movslq	%ebp, %rdi
	addq	%rbx, %rdi
	subq	%rsi, %rdi
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rsi,%rbp), %rsi
	movl	24(%rsp), %r11d         # 4-byte Reload
	.align	16, 0x90
.LBB1_84:                               # %vector.body1478
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rdi
	jne	.LBB1_84
.LBB1_85:                               # %middle.block1479
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%r13, %r8
	je	.LBB1_25
# BB#86:                                # %for.body.i.1149.preheader1751
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
	leaq	(%r13,%rsi), %rsi
	movl	%eax, %edi
	subl	%r9d, %edi
	.align	16, 0x90
.LBB1_87:                               # %for.body.i.1149
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rsi)
	incq	%rsi
	decl	%edi
	jne	.LBB1_87
.LBB1_25:                               # %for.end.i.1363
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%ecx, %ecx
	je	.LBB1_340
# BB#26:                                # %if.then.23.i.1369
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ecx, %ecx
.LBB1_27:                               # %while.body.backedge
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	rm(%rcx), %cl
	cltq
	orb	%cl, (%r15,%rax)
	jmp	.LBB1_340
.LBB1_266:                              # %if.else.192
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2, %ecx
	jne	.LBB1_301
# BB#267:                               # %if.then.195
                                        #   in Loop: Header=BB1_2 Depth=1
	shll	$6, %edx
	movl	%edx, 32(%r12)
	movl	28(%r12), %ecx
	leal	6(%rcx), %eax
	movl	%eax, 28(%r12)
	cmpl	$8, %eax
	jl	.LBB1_272
# BB#268:                               # %while.body.lr.ph.i.393
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	16(%r12), %rax
	movslq	24(%r12), %rdi
	addq	$4, %rdi
	addl	$-2, %ecx
	.align	16, 0x90
.LBB1_269:                              # %while.body.i.398
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 28(%r12)
	cmpq	%rax, %rdi
	jae	.LBB1_271
# BB#270:                               # %if.then.i.403
                                        #   in Loop: Header=BB1_269 Depth=2
	movq	8(%r12), %rbp
	movzbl	(%rbp,%rdi), %ebp
	shll	%cl, %ebp
	orl	%ebp, %edx
	movl	%edx, 32(%r12)
.LBB1_271:                              # %if.end.i.406
                                        #   in Loop: Header=BB1_269 Depth=2
	leal	-3(%rdi), %ebp
	movl	%ebp, 24(%r12)
	incq	%rdi
	cmpl	$7, %ecx
	leal	-8(%rcx), %ecx
	jg	.LBB1_269
.LBB1_272:                              # %jbig2_decode_mmr_consume.exit407
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	sete	%al
	testq	%r14, %r14
	movzbl	%al, %r10d
	je	.LBB1_273
# BB#274:                               # %if.end.i.352
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%edx, %edx
	cmpl	$-1, %r13d
	movl	$0, %eax
	je	.LBB1_276
# BB#275:                               # %if.else.i.362
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ecx
	notl	%ecx
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	leal	1(%r13), %edx
	jmp	.LBB1_276
	.align	16, 0x90
.LBB1_278:                              # %if.end.19.i.380
                                        #   in Loop: Header=BB1_276 Depth=2
	incl	%edx
.LBB1_276:                              # %while.cond.preheader.i.366
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %edx
	jge	.LBB1_279
# BB#277:                               # %while.body.i.377
                                        #   in Loop: Header=BB1_276 Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%edi, %eax
	je	.LBB1_278
.LBB1_279:                              # %jbig2_find_changing_element.exit382
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%esi, %edx
	jge	.LBB1_284
# BB#280:                               # %land.lhs.true.i.313
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r14,%rax), %eax
	andb	$7, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	cmpl	%r10d, %eax
	je	.LBB1_284
# BB#281:                               # %if.end.i.319
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %edx
	leal	1(%rdx), %ecx
	movl	$0, %edx
	cmovel	%edx, %ecx
	cmovel	%edx, %eax
	cmpl	%esi, %ecx
	movl	%ecx, %edx
	jge	.LBB1_284
.LBB1_282:                              # %while.body.i.344
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%edi, %eax
	jne	.LBB1_284
# BB#283:                               # %if.end.19.i.347
                                        #   in Loop: Header=BB1_282 Depth=2
	incl	%edx
	cmpl	%esi, %edx
	jl	.LBB1_282
	jmp	.LBB1_284
.LBB1_161:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%r8d, %r11d
	jmp	.LBB1_340
.LBB1_301:                              # %if.else.219
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %edi
	jne	.LBB1_341
# BB#302:                               # %if.then.222
                                        #   in Loop: Header=BB1_2 Depth=1
	shll	$7, %edx
	movl	%edx, 32(%r12)
	movl	28(%r12), %ecx
	leal	7(%rcx), %edi
	movl	%edi, 28(%r12)
	testl	%ecx, %ecx
	jle	.LBB1_307
# BB#303:                               # %while.body.lr.ph.i.250
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	16(%r12), %rdi
	movslq	24(%r12), %rbp
	addq	$4, %rbp
	decl	%ecx
	.align	16, 0x90
.LBB1_304:                              # %while.body.i.255
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 28(%r12)
	cmpq	%rdi, %rbp
	jae	.LBB1_306
# BB#305:                               # %if.then.i.260
                                        #   in Loop: Header=BB1_304 Depth=2
	movq	8(%r12), %rbx
	movzbl	(%rbx,%rbp), %ebx
	shll	%cl, %ebx
	orl	%ebx, %edx
	movl	%edx, 32(%r12)
.LBB1_306:                              # %if.end.i.263
                                        #   in Loop: Header=BB1_304 Depth=2
	leal	-3(%rbp), %ebx
	movl	%ebx, 24(%r12)
	incq	%rbp
	cmpl	$7, %ecx
	leal	-8(%rcx), %ecx
	jg	.LBB1_304
.LBB1_307:                              # %jbig2_decode_mmr_consume.exit264
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r11d, %r11d
	sete	%cl
	testq	%r14, %r14
	movzbl	%cl, %r10d
	je	.LBB1_308
# BB#309:                               # %if.end.i.209
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%edx, %edx
	cmpl	$-1, %r13d
	movl	$0, %edi
	je	.LBB1_311
# BB#310:                               # %if.else.i.219
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ecx
	notl	%ecx
	movl	%r13d, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%r14,%rdx), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	leal	1(%r13), %edx
	jmp	.LBB1_311
	.align	16, 0x90
.LBB1_313:                              # %if.end.19.i.237
                                        #   in Loop: Header=BB1_311 Depth=2
	incl	%edx
.LBB1_311:                              # %while.cond.preheader.i.223
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %edx
	jge	.LBB1_314
# BB#312:                               # %while.body.i.234
                                        #   in Loop: Header=BB1_311 Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %ebp
	sarl	$3, %ebp
	movslq	%ebp, %rbp
	movzbl	(%r14,%rbp), %ebp
	andb	$7, %cl
	shrl	%cl, %ebp
	andl	$1, %ebp
	cmpl	%ebp, %edi
	je	.LBB1_313
.LBB1_314:                              # %jbig2_find_changing_element.exit239
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%esi, %edx
	jge	.LBB1_319
# BB#315:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %edi
	andb	$7, %cl
	shrl	%cl, %edi
	andl	$1, %edi
	cmpl	%r10d, %edi
	je	.LBB1_319
# BB#316:                               # %if.end.i.196
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %edx
	leal	1(%rdx), %ecx
	movl	$0, %edx
	cmovel	%edx, %ecx
	cmovel	%edx, %edi
	cmpl	%esi, %ecx
	movl	%ecx, %edx
	jge	.LBB1_319
.LBB1_317:                              # %while.body.i.205
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	notl	%ecx
	movl	%edx, %ebp
	sarl	$3, %ebp
	movslq	%ebp, %rbp
	movzbl	(%r14,%rbp), %ebp
	andb	$7, %cl
	shrl	%cl, %ebp
	andl	$1, %ebp
	cmpl	%ebp, %edi
	jne	.LBB1_319
# BB#318:                               # %if.end.19.i
                                        #   in Loop: Header=BB1_317 Depth=2
	incl	%edx
	cmpl	%esi, %edx
	jl	.LBB1_317
	jmp	.LBB1_319
.LBB1_238:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%esi, %ebx
.LBB1_249:                              # %jbig2_find_changing_element_of_color.exit459
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB1_341
# BB#250:                               # %if.end.177
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-1(%rbx), %edx
	testl	%r11d, %r11d
	je	.LBB1_339
# BB#251:                               # %if.then.179
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r13d, %r13d
	movl	$-1, %eax
	js	.LBB1_341
# BB#252:                               # %if.then.179
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%r13d, %ebx
	jle	.LBB1_341
# BB#253:                               # %if.end.185
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ebx
	sarl	$3, %ebx
	movl	%edx, %eax
	sarl	$3, %eax
	andl	$7, %r13d
	movl	%edx, %r9d
	andl	$7, %r9d
	movb	lm(%r13), %cl
	cmpl	%eax, %ebx
	je	.LBB1_110
# BB#254:                               # %if.else.i.427
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%ebx, %rdi
	orb	%cl, (%r15,%rdi)
	leal	1(%rbx), %r8d
	cmpl	%eax, %r8d
	jge	.LBB1_336
# BB#255:                               # %for.body.i.434.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-2(%rax), %ebp
	subl	%ebx, %ebp
	leaq	1(%rbp), %rsi
	movq	%rsi, %r11
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %r11
	andq	%rcx, %rsi
	leaq	1(%rbp,%rdi), %rsi
	je	.LBB1_263
# BB#256:                               # %vector.body1648.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	leaq	1(%rbp), %r13
	andq	%rcx, %r13
	addq	$-32, %r13
	movl	%r13d, %esi
	shrl	$5, %esi
	incl	%esi
	testb	$3, %sil
	movq	%rdi, %rsi
	je	.LBB1_259
# BB#257:                               # %vector.body1648.prol.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rbp), %r8d
	andl	$96, %r8d
	addl	$-32, %r8d
	shrl	$5, %r8d
	incl	%r8d
	andl	$3, %r8d
	negq	%r8
	movq	%rdi, %rsi
.LBB1_258:                              # %vector.body1648.prol
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, 1(%r15,%rsi)
	movdqu	%xmm0, 17(%r15,%rsi)
	addq	$32, %rsi
	incq	%r8
	jne	.LBB1_258
.LBB1_259:                              # %vector.body1648.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r11, %rdi
	movl	24(%rsp), %r8d          # 4-byte Reload
	addl	%r11d, %r8d
	cmpq	$96, %r13
	jb	.LBB1_262
# BB#260:                               # %vector.body1648.preheader.split.split
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbp
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rbp
	movslq	%ebx, %rbx
	addq	%rbp, %rbx
	subq	%rsi, %rbx
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rsi,%rbp), %rsi
.LBB1_261:                              # %vector.body1648
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rbx
	jne	.LBB1_261
.LBB1_262:                              #   in Loop: Header=BB1_2 Depth=1
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB1_263:                              # %middle.block1649
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB1_336
# BB#264:                               # %for.body.i.434.preheader1756
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
	leaq	(%rdi,%rsi), %rsi
	movl	%eax, %edi
	subl	%r8d, %edi
	.align	16, 0x90
.LBB1_265:                              # %for.body.i.434
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rsi)
	incq	%rsi
	decl	%edi
	jne	.LBB1_265
	jmp	.LBB1_336
.LBB1_273:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%esi, %edx
.LBB1_284:                              # %jbig2_find_changing_element_of_color.exit316
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %edx
	jl	.LBB1_341
# BB#285:                               # %if.end.204
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	$-2, %edx
	testl	%r11d, %r11d
	je	.LBB1_339
# BB#286:                               # %if.then.206
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r13d, %r13d
	movl	$-1, %eax
	js	.LBB1_341
# BB#287:                               # %if.then.206
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%r13d, %edx
	jl	.LBB1_341
# BB#288:                               # %if.end.212
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ebx
	sarl	$3, %ebx
	movl	%edx, %eax
	sarl	$3, %eax
	andl	$7, %r13d
	movl	%edx, %r9d
	andl	$7, %r9d
	movb	lm(%r13), %cl
	cmpl	%eax, %ebx
	je	.LBB1_110
# BB#289:                               # %if.else.i.284
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%ebx, %rdi
	orb	%cl, (%r15,%rdi)
	leal	1(%rbx), %r8d
	cmpl	%eax, %r8d
	jge	.LBB1_336
# BB#290:                               # %for.body.i.291.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-2(%rax), %ebp
	subl	%ebx, %ebp
	leaq	1(%rbp), %rsi
	movq	%rsi, %r11
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %r11
	andq	%rcx, %rsi
	leaq	1(%rbp,%rdi), %rsi
	je	.LBB1_298
# BB#291:                               # %vector.body1682.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	leaq	1(%rbp), %r13
	andq	%rcx, %r13
	addq	$-32, %r13
	movl	%r13d, %esi
	shrl	$5, %esi
	incl	%esi
	testb	$3, %sil
	movq	%rdi, %rsi
	je	.LBB1_294
# BB#292:                               # %vector.body1682.prol.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rbp), %r8d
	andl	$96, %r8d
	addl	$-32, %r8d
	shrl	$5, %r8d
	incl	%r8d
	andl	$3, %r8d
	negq	%r8
	movq	%rdi, %rsi
.LBB1_293:                              # %vector.body1682.prol
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, 1(%r15,%rsi)
	movdqu	%xmm0, 17(%r15,%rsi)
	addq	$32, %rsi
	incq	%r8
	jne	.LBB1_293
.LBB1_294:                              # %vector.body1682.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r11, %rdi
	movl	24(%rsp), %r8d          # 4-byte Reload
	addl	%r11d, %r8d
	cmpq	$96, %r13
	jb	.LBB1_297
# BB#295:                               # %vector.body1682.preheader.split.split
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbp
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rbp
	movslq	%ebx, %rbx
	addq	%rbp, %rbx
	subq	%rsi, %rbx
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rsi,%rbp), %rsi
.LBB1_296:                              # %vector.body1682
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rbx
	jne	.LBB1_296
.LBB1_297:                              #   in Loop: Header=BB1_2 Depth=1
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB1_298:                              # %middle.block1683
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB1_336
# BB#299:                               # %for.body.i.291.preheader1757
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
	leaq	(%rdi,%rsi), %rsi
	movl	%eax, %edi
	subl	%r8d, %edi
.LBB1_300:                              # %for.body.i.291
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rsi)
	incq	%rsi
	decl	%edi
	jne	.LBB1_300
	jmp	.LBB1_336
.LBB1_308:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%esi, %edx
.LBB1_319:                              # %jbig2_find_changing_element_of_color.exit
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3, %edx
	jl	.LBB1_341
# BB#320:                               # %if.end.231
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	$-3, %edx
	testl	%r11d, %r11d
	je	.LBB1_339
# BB#321:                               # %if.then.233
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r13d, %r13d
	movl	$-1, %eax
	js	.LBB1_341
# BB#322:                               # %if.then.233
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%r13d, %edx
	jl	.LBB1_341
# BB#323:                               # %if.end.239
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ebx
	sarl	$3, %ebx
	movl	%edx, %eax
	sarl	$3, %eax
	andl	$7, %r13d
	movl	%edx, %r9d
	andl	$7, %r9d
	movb	lm(%r13), %cl
	cmpl	%eax, %ebx
	jne	.LBB1_324
.LBB1_110:                              # %if.then.i.993
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r9d, %eax
	andb	rm(%rax), %cl
	movslq	%ebx, %rax
	jmp	.LBB1_338
.LBB1_324:                              # %if.else.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%ebx, %rdi
	orb	%cl, (%r15,%rdi)
	leal	1(%rbx), %r8d
	cmpl	%eax, %r8d
	jge	.LBB1_336
# BB#325:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-2(%rax), %ebp
	subl	%ebx, %ebp
	leaq	1(%rbp), %rsi
	movq	%rsi, %r11
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %r11
	andq	%rcx, %rsi
	leaq	1(%rbp,%rdi), %rsi
	je	.LBB1_333
# BB#326:                               # %vector.body1716.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	leaq	1(%rbp), %r13
	andq	%rcx, %r13
	addq	$-32, %r13
	movl	%r13d, %esi
	shrl	$5, %esi
	incl	%esi
	testb	$3, %sil
	movq	%rdi, %rsi
	je	.LBB1_329
# BB#327:                               # %vector.body1716.prol.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rbp), %r8d
	andl	$96, %r8d
	addl	$-32, %r8d
	shrl	$5, %r8d
	incl	%r8d
	andl	$3, %r8d
	negq	%r8
	movq	%rdi, %rsi
.LBB1_328:                              # %vector.body1716.prol
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, 1(%r15,%rsi)
	movdqu	%xmm0, 17(%r15,%rsi)
	addq	$32, %rsi
	incq	%r8
	jne	.LBB1_328
.LBB1_329:                              # %vector.body1716.preheader.split
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r11, %rdi
	movl	24(%rsp), %r8d          # 4-byte Reload
	addl	%r11d, %r8d
	cmpq	$96, %r13
	jb	.LBB1_332
# BB#330:                               # %vector.body1716.preheader.split.split
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbp
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rbp
	movslq	%ebx, %rbx
	addq	%rbp, %rbx
	subq	%rsi, %rbx
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rsi,%rbp), %rsi
.LBB1_331:                              # %vector.body1716
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rbx
	jne	.LBB1_331
.LBB1_332:                              #   in Loop: Header=BB1_2 Depth=1
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB1_333:                              # %middle.block1717
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB1_336
# BB#334:                               # %for.body.i.preheader1758
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
	leaq	(%rdi,%rsi), %rsi
	movl	%eax, %edi
	subl	%r8d, %edi
.LBB1_335:                              # %for.body.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rsi)
	incq	%rsi
	decl	%edi
	jne	.LBB1_335
.LBB1_336:                              # %for.end.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r9d, %r9d
	je	.LBB1_339
# BB#337:                               # %if.then.23.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r9d, %ecx
	movb	rm(%rcx), %cl
	cltq
.LBB1_338:                              # %while.body.backedge
                                        #   in Loop: Header=BB1_2 Depth=1
	orb	%cl, (%r15,%rax)
.LBB1_339:                              # %while.body.backedge
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r10d, %r11d
	.align	16, 0x90
.LBB1_340:                              # %while.body.backedge
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	(%r12), %esi
	xorl	%eax, %eax
	cmpl	%esi, %edx
	movl	%edx, %r13d
	jl	.LBB1_2
.LBB1_341:                              # %cleanup.259
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	jbig2_decode_mmr_line, .Lfunc_end1-jbig2_decode_mmr_line
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.quad	3                       # 0x3
	.quad	2                       # 0x2
.LCPI2_1:
	.quad	-3                      # 0xfffffffffffffffd
	.quad	-4                      # 0xfffffffffffffffc
.LCPI2_2:
	.quad	-1                      # 0xffffffffffffffff
	.quad	-2                      # 0xfffffffffffffffe
.LCPI2_3:
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.text
	.globl	jbig2_decode_halftone_mmr
	.align	16, 0x90
	.type	jbig2_decode_halftone_mmr,@function
jbig2_decode_halftone_mmr:              # @jbig2_decode_halftone_mmr
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
	movq	%r8, %r15
	movq	%rcx, %r14
	movslq	8(%r15), %r12
	movq	16(%r15), %rbx
	movl	(%r15), %eax
	movl	4(%r15), %r13d
	movl	%eax, 16(%rsp)
	movl	%r13d, 20(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	$0, 40(%rsp)
	xorl	%eax, %eax
	testq	%r14, %r14
	movl	$0, %edi
	je	.LBB2_10
# BB#1:                                 # %for.body.i.preheader
	movq	%r14, %rcx
	negq	%rcx
	cmpq	$-4, %rcx
	movq	$-4, %r11
	cmovaq	%rcx, %r11
	xorl	%r10d, %r10d
	testq	%r11, %r11
	movl	$0, %edi
	je	.LBB2_7
# BB#2:                                 # %overflow.checked
	negq	%r11
	xorl	%r10d, %r10d
	movq	%r11, %r8
	andq	$-8, %r8
	pxor	%xmm14, %xmm14
	pxor	%xmm2, %xmm2
	je	.LBB2_6
# BB#3:                                 # %vector.body.preheader
	cmpq	$-4, %rcx
	movq	$-4, %rbp
	cmovaq	%rcx, %rbp
	negq	%rbp
	andq	$-8, %rbp
	pxor	%xmm13, %xmm13
	xorl	%edi, %edi
	movl	$1, %ecx
	movd	%rcx, %xmm11
	movdqa	.LCPI2_0(%rip), %xmm8   # xmm8 = [3,2]
	movdqa	.LCPI2_1(%rip), %xmm9   # xmm9 = [18446744073709551613,18446744073709551612]
	movdqa	.LCPI2_2(%rip), %xmm10  # xmm10 = [18446744073709551615,18446744073709551614]
	movdqa	.LCPI2_3(%rip), %xmm12  # xmm12 = [1065353216,1065353216,1065353216,1065353216]
	pxor	%xmm14, %xmm14
	pxor	%xmm2, %xmm2
	.align	16, 0x90
.LBB2_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%rdi, %xmm4
	pshufd	$68, %xmm4, %xmm6       # xmm6 = xmm4[0,1,0,1]
	movd	(%rdx,%rdi), %xmm5      # xmm5 = mem[0],zero,zero,zero
	movd	4(%rdx,%rdi), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm13, %xmm5   # xmm5 = xmm5[0],xmm13[0],xmm5[1],xmm13[1],xmm5[2],xmm13[2],xmm5[3],xmm13[3],xmm5[4],xmm13[4],xmm5[5],xmm13[5],xmm5[6],xmm13[6],xmm5[7],xmm13[7]
	punpcklwd	%xmm13, %xmm5   # xmm5 = xmm5[0],xmm13[0],xmm5[1],xmm13[1],xmm5[2],xmm13[2],xmm5[3],xmm13[3]
	punpcklbw	%xmm13, %xmm4   # xmm4 = xmm4[0],xmm13[0],xmm4[1],xmm13[1],xmm4[2],xmm13[2],xmm4[3],xmm13[3],xmm4[4],xmm13[4],xmm4[5],xmm13[5],xmm4[6],xmm13[6],xmm4[7],xmm13[7]
	punpcklwd	%xmm13, %xmm4   # xmm4 = xmm4[0],xmm13[0],xmm4[1],xmm13[1],xmm4[2],xmm13[2],xmm4[3],xmm13[3]
	movdqa	%xmm11, %xmm3
	psubq	%xmm6, %xmm3
	movdqa	%xmm8, %xmm7
	psubq	%xmm6, %xmm7
	movdqa	%xmm9, %xmm1
	psubq	%xmm6, %xmm1
	movdqa	%xmm10, %xmm0
	psubq	%xmm6, %xmm0
	psllq	$3, %xmm7
	psllq	$3, %xmm3
	psllq	$3, %xmm0
	psllq	$3, %xmm1
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$232, %xmm7, %xmm6      # xmm6 = xmm7[0,2,2,3]
	punpcklqdq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	pslld	$23, %xmm6
	paddd	%xmm12, %xmm6
	cvttps2dq	%xmm6, %xmm1
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm3      # xmm3 = xmm5[0,2,2,3]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	pslld	$23, %xmm0
	paddd	%xmm12, %xmm0
	cvttps2dq	%xmm0, %xmm0
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	por	%xmm1, %xmm14
	por	%xmm0, %xmm2
	addq	$8, %rdi
	cmpq	%rdi, %rbp
	jne	.LBB2_4
# BB#5:
	movq	%r8, %r10
.LBB2_6:                                # %middle.block
	por	%xmm2, %xmm14
	pshufd	$78, %xmm14, %xmm0      # xmm0 = xmm14[2,3,0,1]
	por	%xmm14, %xmm0
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	por	%xmm0, %xmm1
	movd	%xmm1, %edi
	cmpq	%r11, %r10
	je	.LBB2_10
.LBB2_7:                                # %for.body.i.preheader36
	leaq	1(%r10), %rbp
	shlq	$3, %r10
	movl	$24, %ecx
	subl	%r10d, %ecx
	.align	16, 0x90
.LBB2_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %esi
	movzbl	-1(%rdx,%rbp), %edi
	shll	%cl, %edi
	orl	%esi, %edi
	cmpq	$3, %rbp
	jg	.LBB2_10
# BB#9:                                 # %for.body.i
                                        #   in Loop: Header=BB2_8 Depth=1
	addl	$-8, %ecx
	cmpq	%r14, %rbp
	leaq	1(%rbp), %rbp
	jb	.LBB2_8
.LBB2_10:                               # %jbig2_decode_mmr_init.exit
	movl	%edi, 48(%rsp)
	testl	%r13d, %r13d
	jle	.LBB2_15
# BB#11:                                # %for.body.lr.ph
	movq	%r9, 8(%rsp)            # 8-byte Spill
	xorl	%r14d, %r14d
	leaq	16(%rsp), %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	memset
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	jbig2_decode_mmr_line
	testl	%eax, %eax
	js	.LBB2_19
# BB#13:                                # %if.end
                                        #   in Loop: Header=BB2_12 Depth=1
	incl	%r14d
	cmpl	4(%r15), %r14d
	movq	%rbx, %rbp
	leaq	(%rbx,%r12), %rbx
	jl	.LBB2_12
# BB#14:                                # %for.cond.for.end_crit_edge
	movl	48(%rsp), %edi
	movq	8(%rsp), %r9            # 8-byte Reload
.LBB2_15:                               # %for.end
	andl	$-256, %edi
	movq	40(%rsp), %rcx
	cmpl	$1048832, %edi          # imm = 0x100100
	jne	.LBB2_16
# BB#17:                                # %if.then.8
	leal	3(%rcx), %edx
	movl	%edx, 40(%rsp)
	jmp	.LBB2_18
.LBB2_16:
	movl	%ecx, %edx
.LBB2_18:                               # %if.end.9
	movq	%rcx, %rsi
	shrq	$32, %rsi
	sarq	$35, %rcx
	addl	%edx, %ecx
	testl	%esi, %esi
	setg	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	addq	%rcx, (%r9)
.LBB2_19:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	jbig2_decode_halftone_mmr, .Lfunc_end2-jbig2_decode_halftone_mmr
	.cfi_endproc

	.align	16, 0x90
	.type	jbig2_decode_get_run,@function
jbig2_decode_get_run:                   # @jbig2_decode_get_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 40
.Ltmp43:
	.cfi_offset %rbx, -40
.Ltmp44:
	.cfi_offset %r12, -32
.Ltmp45:
	.cfi_offset %r14, -24
.Ltmp46:
	.cfi_offset %r15, -16
	movl	$32, %r8d
	subl	%edx, %r8d
	movl	$1, %r10d
	movb	%r8b, %cl
	shll	%cl, %r10d
	decl	%r10d
	movl	32(%rdi), %r11d
	xorl	%eax, %eax
	.align	16, 0x90
.LBB3_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	movl	%r11d, %ebx
	movb	%r8b, %cl
	shrl	%cl, %ebx
	movslq	%ebx, %rcx
	movswl	(%rsi,%rcx,4), %r14d
	movswl	2(%rsi,%rcx,4), %ecx
	cmpl	%edx, %ecx
	jle	.LBB3_3
# BB#2:                                 # %if.then.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	%r11d, %ebx
	andl	%r10d, %ebx
	movl	$32, %r9d
	subl	%ecx, %r9d
	movb	%r9b, %cl
	shrl	%cl, %ebx
	addl	%r14d, %ebx
	movslq	%ebx, %rcx
	movswl	(%rsi,%rcx,4), %r14d
	movswl	2(%rsi,%rcx,4), %ecx
	addl	%edx, %ecx
.LBB3_3:                                # %if.end.i
                                        #   in Loop: Header=BB3_1 Depth=1
	shll	%cl, %r11d
	movl	%r11d, 32(%rdi)
	movl	28(%rdi), %r15d
	leal	(%r15,%rcx), %ebx
	movl	%ebx, 28(%rdi)
	cmpl	$8, %ebx
	jl	.LBB3_8
# BB#4:                                 # %while.body.lr.ph.i.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	16(%rdi), %r9
	movslq	24(%rdi), %r12
	addq	$4, %r12
	leal	-8(%rcx,%r15), %ecx
	.align	16, 0x90
.LBB3_5:                                # %while.body.i.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 28(%rdi)
	cmpq	%r9, %r12
	jae	.LBB3_7
# BB#6:                                 # %if.then.i.i
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	8(%rdi), %rbx
	movzbl	(%rbx,%r12), %ebx
	shll	%cl, %ebx
	orl	%ebx, %r11d
	movl	%r11d, 32(%rdi)
.LBB3_7:                                # %if.end.i.i
                                        #   in Loop: Header=BB3_5 Depth=2
	leal	-3(%r12), %ebx
	movl	%ebx, 24(%rdi)
	incq	%r12
	cmpl	$7, %ecx
	leal	-8(%rcx), %ecx
	jg	.LBB3_5
.LBB3_8:                                # %jbig2_decode_get_code.exit
                                        #   in Loop: Header=BB3_1 Depth=1
	leal	(%rax,%r14), %eax
	cmpl	$63, %r14d
	jg	.LBB3_1
# BB#9:                                 # %do.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	jbig2_decode_get_run, .Lfunc_end3-jbig2_decode_get_run
	.cfi_endproc

	.type	jbig2_mmr_white_decode,@object # @jbig2_mmr_white_decode
	.section	.rodata,"a",@progbits
	.globl	jbig2_mmr_white_decode
	.align	16
jbig2_mmr_white_decode:
	.short	256                     # 0x100
	.short	12                      # 0xc
	.short	272                     # 0x110
	.short	12                      # 0xc
	.short	29                      # 0x1d
	.short	8                       # 0x8
	.short	30                      # 0x1e
	.short	8                       # 0x8
	.short	45                      # 0x2d
	.short	8                       # 0x8
	.short	46                      # 0x2e
	.short	8                       # 0x8
	.short	22                      # 0x16
	.short	7                       # 0x7
	.short	22                      # 0x16
	.short	7                       # 0x7
	.short	23                      # 0x17
	.short	7                       # 0x7
	.short	23                      # 0x17
	.short	7                       # 0x7
	.short	47                      # 0x2f
	.short	8                       # 0x8
	.short	48                      # 0x30
	.short	8                       # 0x8
	.short	13                      # 0xd
	.short	6                       # 0x6
	.short	13                      # 0xd
	.short	6                       # 0x6
	.short	13                      # 0xd
	.short	6                       # 0x6
	.short	13                      # 0xd
	.short	6                       # 0x6
	.short	20                      # 0x14
	.short	7                       # 0x7
	.short	20                      # 0x14
	.short	7                       # 0x7
	.short	33                      # 0x21
	.short	8                       # 0x8
	.short	34                      # 0x22
	.short	8                       # 0x8
	.short	35                      # 0x23
	.short	8                       # 0x8
	.short	36                      # 0x24
	.short	8                       # 0x8
	.short	37                      # 0x25
	.short	8                       # 0x8
	.short	38                      # 0x26
	.short	8                       # 0x8
	.short	19                      # 0x13
	.short	7                       # 0x7
	.short	19                      # 0x13
	.short	7                       # 0x7
	.short	31                      # 0x1f
	.short	8                       # 0x8
	.short	32                      # 0x20
	.short	8                       # 0x8
	.short	1                       # 0x1
	.short	6                       # 0x6
	.short	1                       # 0x1
	.short	6                       # 0x6
	.short	1                       # 0x1
	.short	6                       # 0x6
	.short	1                       # 0x1
	.short	6                       # 0x6
	.short	12                      # 0xc
	.short	6                       # 0x6
	.short	12                      # 0xc
	.short	6                       # 0x6
	.short	12                      # 0xc
	.short	6                       # 0x6
	.short	12                      # 0xc
	.short	6                       # 0x6
	.short	53                      # 0x35
	.short	8                       # 0x8
	.short	54                      # 0x36
	.short	8                       # 0x8
	.short	26                      # 0x1a
	.short	7                       # 0x7
	.short	26                      # 0x1a
	.short	7                       # 0x7
	.short	39                      # 0x27
	.short	8                       # 0x8
	.short	40                      # 0x28
	.short	8                       # 0x8
	.short	41                      # 0x29
	.short	8                       # 0x8
	.short	42                      # 0x2a
	.short	8                       # 0x8
	.short	43                      # 0x2b
	.short	8                       # 0x8
	.short	44                      # 0x2c
	.short	8                       # 0x8
	.short	21                      # 0x15
	.short	7                       # 0x7
	.short	21                      # 0x15
	.short	7                       # 0x7
	.short	28                      # 0x1c
	.short	7                       # 0x7
	.short	28                      # 0x1c
	.short	7                       # 0x7
	.short	61                      # 0x3d
	.short	8                       # 0x8
	.short	62                      # 0x3e
	.short	8                       # 0x8
	.short	63                      # 0x3f
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	320                     # 0x140
	.short	8                       # 0x8
	.short	384                     # 0x180
	.short	8                       # 0x8
	.short	10                      # 0xa
	.short	5                       # 0x5
	.short	10                      # 0xa
	.short	5                       # 0x5
	.short	10                      # 0xa
	.short	5                       # 0x5
	.short	10                      # 0xa
	.short	5                       # 0x5
	.short	10                      # 0xa
	.short	5                       # 0x5
	.short	10                      # 0xa
	.short	5                       # 0x5
	.short	10                      # 0xa
	.short	5                       # 0x5
	.short	10                      # 0xa
	.short	5                       # 0x5
	.short	11                      # 0xb
	.short	5                       # 0x5
	.short	11                      # 0xb
	.short	5                       # 0x5
	.short	11                      # 0xb
	.short	5                       # 0x5
	.short	11                      # 0xb
	.short	5                       # 0x5
	.short	11                      # 0xb
	.short	5                       # 0x5
	.short	11                      # 0xb
	.short	5                       # 0x5
	.short	11                      # 0xb
	.short	5                       # 0x5
	.short	11                      # 0xb
	.short	5                       # 0x5
	.short	27                      # 0x1b
	.short	7                       # 0x7
	.short	27                      # 0x1b
	.short	7                       # 0x7
	.short	59                      # 0x3b
	.short	8                       # 0x8
	.short	60                      # 0x3c
	.short	8                       # 0x8
	.short	288                     # 0x120
	.short	9                       # 0x9
	.short	290                     # 0x122
	.short	9                       # 0x9
	.short	18                      # 0x12
	.short	7                       # 0x7
	.short	18                      # 0x12
	.short	7                       # 0x7
	.short	24                      # 0x18
	.short	7                       # 0x7
	.short	24                      # 0x18
	.short	7                       # 0x7
	.short	49                      # 0x31
	.short	8                       # 0x8
	.short	50                      # 0x32
	.short	8                       # 0x8
	.short	51                      # 0x33
	.short	8                       # 0x8
	.short	52                      # 0x34
	.short	8                       # 0x8
	.short	25                      # 0x19
	.short	7                       # 0x7
	.short	25                      # 0x19
	.short	7                       # 0x7
	.short	55                      # 0x37
	.short	8                       # 0x8
	.short	56                      # 0x38
	.short	8                       # 0x8
	.short	57                      # 0x39
	.short	8                       # 0x8
	.short	58                      # 0x3a
	.short	8                       # 0x8
	.short	192                     # 0xc0
	.short	6                       # 0x6
	.short	192                     # 0xc0
	.short	6                       # 0x6
	.short	192                     # 0xc0
	.short	6                       # 0x6
	.short	192                     # 0xc0
	.short	6                       # 0x6
	.short	1664                    # 0x680
	.short	6                       # 0x6
	.short	1664                    # 0x680
	.short	6                       # 0x6
	.short	1664                    # 0x680
	.short	6                       # 0x6
	.short	1664                    # 0x680
	.short	6                       # 0x6
	.short	448                     # 0x1c0
	.short	8                       # 0x8
	.short	512                     # 0x200
	.short	8                       # 0x8
	.short	292                     # 0x124
	.short	9                       # 0x9
	.short	640                     # 0x280
	.short	8                       # 0x8
	.short	576                     # 0x240
	.short	8                       # 0x8
	.short	294                     # 0x126
	.short	9                       # 0x9
	.short	296                     # 0x128
	.short	9                       # 0x9
	.short	298                     # 0x12a
	.short	9                       # 0x9
	.short	300                     # 0x12c
	.short	9                       # 0x9
	.short	302                     # 0x12e
	.short	9                       # 0x9
	.short	256                     # 0x100
	.short	7                       # 0x7
	.short	256                     # 0x100
	.short	7                       # 0x7
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	128                     # 0x80
	.short	5                       # 0x5
	.short	128                     # 0x80
	.short	5                       # 0x5
	.short	128                     # 0x80
	.short	5                       # 0x5
	.short	128                     # 0x80
	.short	5                       # 0x5
	.short	128                     # 0x80
	.short	5                       # 0x5
	.short	128                     # 0x80
	.short	5                       # 0x5
	.short	128                     # 0x80
	.short	5                       # 0x5
	.short	128                     # 0x80
	.short	5                       # 0x5
	.short	8                       # 0x8
	.short	5                       # 0x5
	.short	8                       # 0x8
	.short	5                       # 0x5
	.short	8                       # 0x8
	.short	5                       # 0x5
	.short	8                       # 0x8
	.short	5                       # 0x5
	.short	8                       # 0x8
	.short	5                       # 0x5
	.short	8                       # 0x8
	.short	5                       # 0x5
	.short	8                       # 0x8
	.short	5                       # 0x5
	.short	8                       # 0x8
	.short	5                       # 0x5
	.short	9                       # 0x9
	.short	5                       # 0x5
	.short	9                       # 0x9
	.short	5                       # 0x5
	.short	9                       # 0x9
	.short	5                       # 0x5
	.short	9                       # 0x9
	.short	5                       # 0x5
	.short	9                       # 0x9
	.short	5                       # 0x5
	.short	9                       # 0x9
	.short	5                       # 0x5
	.short	9                       # 0x9
	.short	5                       # 0x5
	.short	9                       # 0x9
	.short	5                       # 0x5
	.short	16                      # 0x10
	.short	6                       # 0x6
	.short	16                      # 0x10
	.short	6                       # 0x6
	.short	16                      # 0x10
	.short	6                       # 0x6
	.short	16                      # 0x10
	.short	6                       # 0x6
	.short	17                      # 0x11
	.short	6                       # 0x6
	.short	17                      # 0x11
	.short	6                       # 0x6
	.short	17                      # 0x11
	.short	6                       # 0x6
	.short	17                      # 0x11
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	14                      # 0xe
	.short	6                       # 0x6
	.short	14                      # 0xe
	.short	6                       # 0x6
	.short	14                      # 0xe
	.short	6                       # 0x6
	.short	14                      # 0xe
	.short	6                       # 0x6
	.short	15                      # 0xf
	.short	6                       # 0x6
	.short	15                      # 0xf
	.short	6                       # 0x6
	.short	15                      # 0xf
	.short	6                       # 0x6
	.short	15                      # 0xf
	.short	6                       # 0x6
	.short	64                      # 0x40
	.short	5                       # 0x5
	.short	64                      # 0x40
	.short	5                       # 0x5
	.short	64                      # 0x40
	.short	5                       # 0x5
	.short	64                      # 0x40
	.short	5                       # 0x5
	.short	64                      # 0x40
	.short	5                       # 0x5
	.short	64                      # 0x40
	.short	5                       # 0x5
	.short	64                      # 0x40
	.short	5                       # 0x5
	.short	64                      # 0x40
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	65534                   # 0xfffe
	.short	3                       # 0x3
	.short	65534                   # 0xfffe
	.short	3                       # 0x3
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65533                   # 0xfffd
	.short	4                       # 0x4
	.short	1792                    # 0x700
	.short	3                       # 0x3
	.short	1792                    # 0x700
	.short	3                       # 0x3
	.short	1984                    # 0x7c0
	.short	4                       # 0x4
	.short	2048                    # 0x800
	.short	4                       # 0x4
	.short	2112                    # 0x840
	.short	4                       # 0x4
	.short	2176                    # 0x880
	.short	4                       # 0x4
	.short	2240                    # 0x8c0
	.short	4                       # 0x4
	.short	2304                    # 0x900
	.short	4                       # 0x4
	.short	1856                    # 0x740
	.short	3                       # 0x3
	.short	1856                    # 0x740
	.short	3                       # 0x3
	.short	1920                    # 0x780
	.short	3                       # 0x3
	.short	1920                    # 0x780
	.short	3                       # 0x3
	.short	2368                    # 0x940
	.short	4                       # 0x4
	.short	2432                    # 0x980
	.short	4                       # 0x4
	.short	2496                    # 0x9c0
	.short	4                       # 0x4
	.short	2560                    # 0xa00
	.short	4                       # 0x4
	.short	1472                    # 0x5c0
	.short	1                       # 0x1
	.short	1536                    # 0x600
	.short	1                       # 0x1
	.short	1600                    # 0x640
	.short	1                       # 0x1
	.short	1728                    # 0x6c0
	.short	1                       # 0x1
	.short	704                     # 0x2c0
	.short	1                       # 0x1
	.short	768                     # 0x300
	.short	1                       # 0x1
	.short	832                     # 0x340
	.short	1                       # 0x1
	.short	896                     # 0x380
	.short	1                       # 0x1
	.short	960                     # 0x3c0
	.short	1                       # 0x1
	.short	1024                    # 0x400
	.short	1                       # 0x1
	.short	1088                    # 0x440
	.short	1                       # 0x1
	.short	1152                    # 0x480
	.short	1                       # 0x1
	.short	1216                    # 0x4c0
	.short	1                       # 0x1
	.short	1280                    # 0x500
	.short	1                       # 0x1
	.short	1344                    # 0x540
	.short	1                       # 0x1
	.short	1408                    # 0x580
	.short	1                       # 0x1
	.size	jbig2_mmr_white_decode, 1216

	.type	jbig2_mmr_black_decode,@object # @jbig2_mmr_black_decode
	.globl	jbig2_mmr_black_decode
	.align	16
jbig2_mmr_black_decode:
	.short	128                     # 0x80
	.short	12                      # 0xc
	.short	160                     # 0xa0
	.short	13                      # 0xd
	.short	224                     # 0xe0
	.short	12                      # 0xc
	.short	256                     # 0x100
	.short	12                      # 0xc
	.short	10                      # 0xa
	.short	7                       # 0x7
	.short	11                      # 0xb
	.short	7                       # 0x7
	.short	288                     # 0x120
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	7                       # 0x7
	.short	9                       # 0x9
	.short	6                       # 0x6
	.short	9                       # 0x9
	.short	6                       # 0x6
	.short	8                       # 0x8
	.short	6                       # 0x6
	.short	8                       # 0x8
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	5                       # 0x5
	.short	7                       # 0x7
	.short	5                       # 0x5
	.short	7                       # 0x7
	.short	5                       # 0x5
	.short	7                       # 0x7
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	65534                   # 0xfffe
	.short	4                       # 0x4
	.short	65534                   # 0xfffe
	.short	4                       # 0x4
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65533                   # 0xfffd
	.short	5                       # 0x5
	.short	1792                    # 0x700
	.short	4                       # 0x4
	.short	1792                    # 0x700
	.short	4                       # 0x4
	.short	1984                    # 0x7c0
	.short	5                       # 0x5
	.short	2048                    # 0x800
	.short	5                       # 0x5
	.short	2112                    # 0x840
	.short	5                       # 0x5
	.short	2176                    # 0x880
	.short	5                       # 0x5
	.short	2240                    # 0x8c0
	.short	5                       # 0x5
	.short	2304                    # 0x900
	.short	5                       # 0x5
	.short	1856                    # 0x740
	.short	4                       # 0x4
	.short	1856                    # 0x740
	.short	4                       # 0x4
	.short	1920                    # 0x780
	.short	4                       # 0x4
	.short	1920                    # 0x780
	.short	4                       # 0x4
	.short	2368                    # 0x940
	.short	5                       # 0x5
	.short	2432                    # 0x980
	.short	5                       # 0x5
	.short	2496                    # 0x9c0
	.short	5                       # 0x5
	.short	2560                    # 0xa00
	.short	5                       # 0x5
	.short	18                      # 0x12
	.short	3                       # 0x3
	.short	18                      # 0x12
	.short	3                       # 0x3
	.short	18                      # 0x12
	.short	3                       # 0x3
	.short	18                      # 0x12
	.short	3                       # 0x3
	.short	18                      # 0x12
	.short	3                       # 0x3
	.short	18                      # 0x12
	.short	3                       # 0x3
	.short	18                      # 0x12
	.short	3                       # 0x3
	.short	18                      # 0x12
	.short	3                       # 0x3
	.short	52                      # 0x34
	.short	5                       # 0x5
	.short	52                      # 0x34
	.short	5                       # 0x5
	.short	640                     # 0x280
	.short	6                       # 0x6
	.short	704                     # 0x2c0
	.short	6                       # 0x6
	.short	768                     # 0x300
	.short	6                       # 0x6
	.short	832                     # 0x340
	.short	6                       # 0x6
	.short	55                      # 0x37
	.short	5                       # 0x5
	.short	55                      # 0x37
	.short	5                       # 0x5
	.short	56                      # 0x38
	.short	5                       # 0x5
	.short	56                      # 0x38
	.short	5                       # 0x5
	.short	1280                    # 0x500
	.short	6                       # 0x6
	.short	1344                    # 0x540
	.short	6                       # 0x6
	.short	1408                    # 0x580
	.short	6                       # 0x6
	.short	1472                    # 0x5c0
	.short	6                       # 0x6
	.short	59                      # 0x3b
	.short	5                       # 0x5
	.short	59                      # 0x3b
	.short	5                       # 0x5
	.short	60                      # 0x3c
	.short	5                       # 0x5
	.short	60                      # 0x3c
	.short	5                       # 0x5
	.short	1536                    # 0x600
	.short	6                       # 0x6
	.short	1600                    # 0x640
	.short	6                       # 0x6
	.short	24                      # 0x18
	.short	4                       # 0x4
	.short	24                      # 0x18
	.short	4                       # 0x4
	.short	24                      # 0x18
	.short	4                       # 0x4
	.short	24                      # 0x18
	.short	4                       # 0x4
	.short	25                      # 0x19
	.short	4                       # 0x4
	.short	25                      # 0x19
	.short	4                       # 0x4
	.short	25                      # 0x19
	.short	4                       # 0x4
	.short	25                      # 0x19
	.short	4                       # 0x4
	.short	1664                    # 0x680
	.short	6                       # 0x6
	.short	1728                    # 0x6c0
	.short	6                       # 0x6
	.short	320                     # 0x140
	.short	5                       # 0x5
	.short	320                     # 0x140
	.short	5                       # 0x5
	.short	384                     # 0x180
	.short	5                       # 0x5
	.short	384                     # 0x180
	.short	5                       # 0x5
	.short	448                     # 0x1c0
	.short	5                       # 0x5
	.short	448                     # 0x1c0
	.short	5                       # 0x5
	.short	512                     # 0x200
	.short	6                       # 0x6
	.short	576                     # 0x240
	.short	6                       # 0x6
	.short	53                      # 0x35
	.short	5                       # 0x5
	.short	53                      # 0x35
	.short	5                       # 0x5
	.short	54                      # 0x36
	.short	5                       # 0x5
	.short	54                      # 0x36
	.short	5                       # 0x5
	.short	896                     # 0x380
	.short	6                       # 0x6
	.short	960                     # 0x3c0
	.short	6                       # 0x6
	.short	1024                    # 0x400
	.short	6                       # 0x6
	.short	1088                    # 0x440
	.short	6                       # 0x6
	.short	1152                    # 0x480
	.short	6                       # 0x6
	.short	1216                    # 0x4c0
	.short	6                       # 0x6
	.short	64                      # 0x40
	.short	3                       # 0x3
	.short	64                      # 0x40
	.short	3                       # 0x3
	.short	64                      # 0x40
	.short	3                       # 0x3
	.short	64                      # 0x40
	.short	3                       # 0x3
	.short	64                      # 0x40
	.short	3                       # 0x3
	.short	64                      # 0x40
	.short	3                       # 0x3
	.short	64                      # 0x40
	.short	3                       # 0x3
	.short	64                      # 0x40
	.short	3                       # 0x3
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	13                      # 0xd
	.short	1                       # 0x1
	.short	23                      # 0x17
	.short	4                       # 0x4
	.short	23                      # 0x17
	.short	4                       # 0x4
	.short	50                      # 0x32
	.short	5                       # 0x5
	.short	51                      # 0x33
	.short	5                       # 0x5
	.short	44                      # 0x2c
	.short	5                       # 0x5
	.short	45                      # 0x2d
	.short	5                       # 0x5
	.short	46                      # 0x2e
	.short	5                       # 0x5
	.short	47                      # 0x2f
	.short	5                       # 0x5
	.short	57                      # 0x39
	.short	5                       # 0x5
	.short	58                      # 0x3a
	.short	5                       # 0x5
	.short	61                      # 0x3d
	.short	5                       # 0x5
	.short	256                     # 0x100
	.short	5                       # 0x5
	.short	16                      # 0x10
	.short	3                       # 0x3
	.short	16                      # 0x10
	.short	3                       # 0x3
	.short	16                      # 0x10
	.short	3                       # 0x3
	.short	16                      # 0x10
	.short	3                       # 0x3
	.short	17                      # 0x11
	.short	3                       # 0x3
	.short	17                      # 0x11
	.short	3                       # 0x3
	.short	17                      # 0x11
	.short	3                       # 0x3
	.short	17                      # 0x11
	.short	3                       # 0x3
	.short	48                      # 0x30
	.short	5                       # 0x5
	.short	49                      # 0x31
	.short	5                       # 0x5
	.short	62                      # 0x3e
	.short	5                       # 0x5
	.short	63                      # 0x3f
	.short	5                       # 0x5
	.short	30                      # 0x1e
	.short	5                       # 0x5
	.short	31                      # 0x1f
	.short	5                       # 0x5
	.short	32                      # 0x20
	.short	5                       # 0x5
	.short	33                      # 0x21
	.short	5                       # 0x5
	.short	40                      # 0x28
	.short	5                       # 0x5
	.short	41                      # 0x29
	.short	5                       # 0x5
	.short	22                      # 0x16
	.short	4                       # 0x4
	.short	22                      # 0x16
	.short	4                       # 0x4
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	14                      # 0xe
	.short	1                       # 0x1
	.short	15                      # 0xf
	.short	2                       # 0x2
	.short	15                      # 0xf
	.short	2                       # 0x2
	.short	15                      # 0xf
	.short	2                       # 0x2
	.short	15                      # 0xf
	.short	2                       # 0x2
	.short	15                      # 0xf
	.short	2                       # 0x2
	.short	15                      # 0xf
	.short	2                       # 0x2
	.short	15                      # 0xf
	.short	2                       # 0x2
	.short	15                      # 0xf
	.short	2                       # 0x2
	.short	128                     # 0x80
	.short	5                       # 0x5
	.short	192                     # 0xc0
	.short	5                       # 0x5
	.short	26                      # 0x1a
	.short	5                       # 0x5
	.short	27                      # 0x1b
	.short	5                       # 0x5
	.short	28                      # 0x1c
	.short	5                       # 0x5
	.short	29                      # 0x1d
	.short	5                       # 0x5
	.short	19                      # 0x13
	.short	4                       # 0x4
	.short	19                      # 0x13
	.short	4                       # 0x4
	.short	20                      # 0x14
	.short	4                       # 0x4
	.short	20                      # 0x14
	.short	4                       # 0x4
	.short	34                      # 0x22
	.short	5                       # 0x5
	.short	35                      # 0x23
	.short	5                       # 0x5
	.short	36                      # 0x24
	.short	5                       # 0x5
	.short	37                      # 0x25
	.short	5                       # 0x5
	.short	38                      # 0x26
	.short	5                       # 0x5
	.short	39                      # 0x27
	.short	5                       # 0x5
	.short	21                      # 0x15
	.short	4                       # 0x4
	.short	21                      # 0x15
	.short	4                       # 0x4
	.short	42                      # 0x2a
	.short	5                       # 0x5
	.short	43                      # 0x2b
	.short	5                       # 0x5
	.short	0                       # 0x0
	.short	3                       # 0x3
	.short	0                       # 0x0
	.short	3                       # 0x3
	.short	0                       # 0x0
	.short	3                       # 0x3
	.short	0                       # 0x0
	.short	3                       # 0x3
	.size	jbig2_mmr_black_decode, 1280

	.type	lm,@object              # @lm
	.section	.rodata.cst8,"aM",@progbits,8
lm:
	.ascii	"\377\177?\037\017\007\003\001"
	.size	lm, 8

	.type	rm,@object              # @rm
rm:
	.ascii	"\000\200\300\340\360\370\374\376"
	.size	rm, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
