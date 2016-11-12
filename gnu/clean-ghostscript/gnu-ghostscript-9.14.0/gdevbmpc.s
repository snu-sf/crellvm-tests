	.text
	.file	"gdevbmpc.bc"
	.globl	write_bmp_header
	.align	16, 0x90
	.type	write_bmp_header,@function
write_bmp_header:                       # @write_bmp_header
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
	subq	$1048, %rsp             # imm = 0x418
.Ltmp6:
	.cfi_def_cfa_offset 1104
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzwl	108(%rbx), %r15d
	cmpl	$9, %r15d
	jae	.LBB0_3
# BB#1:                                 # %if.then
	movl	$1, %r13d
	movb	%r15b, %cl
	shll	%cl, %r13d
	xorl	%ebp, %ebp
	leaq	10(%rsp), %r12
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	*1192(%rbx)
	movzwl	10(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movzwl	12(%rsp), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movzwl	14(%rsp), %edx
	imull	$65281, %edx, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$24, %edx
	movb	%dl, 16(%rsp,%rbp,4)
	movb	%cl, 17(%rsp,%rbp,4)
	movb	%al, 18(%rsp,%rbp,4)
	movb	$0, 19(%rsp,%rbp,4)
	incq	%rbp
	cmpl	%ebp, %r13d
	jne	.LBB0_2
.LBB0_3:                                # %if.end
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster
	leaq	16(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	movl	%eax, %r8d
	callq	write_bmp_depth_header
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	write_bmp_header, .Lfunc_end0-write_bmp_header
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4630737663307740652     # double 39.370078740157481
.LCPI1_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	write_bmp_depth_header,@function
write_bmp_depth_header:                 # @write_bmp_depth_header
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
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movl	%r8d, %eax
	negl	%eax
	andl	$3, %eax
	addl	%r8d, %eax
	movslq	%eax, %rbx
	movslq	836(%rbp), %r13
	movl	$66, %edi
	callq	fputc
	movl	$77, %edi
	movq	%r12, %rsi
	callq	fputc
	movabsq	$17179869184, %rax      # imm = 0x400000000
	movb	%r15b, %cl
	shlq	%cl, %rax
	shrq	$32, %rax
	addl	$54, %eax
	imulq	%r13, %rbx
	cmpl	$9, %r15d
	movl	$54, %ecx
	cmovll	%eax, %ecx
	leal	(%rbx,%rcx), %eax
	movl	%eax, (%rsp)
	movw	$0, 4(%rsp)
	movw	$0, 6(%rsp)
	movl	%ecx, 8(%rsp)
	leaq	(%rsp), %rdi
	movl	$1, %esi
	movl	$12, %edx
	movq	%r12, %rcx
	callq	fwrite
	movq	%rax, %rcx
	movl	$-12, %eax
	cmpq	$12, %rcx
	jne	.LBB1_4
# BB#1:                                 # %cleanup.cont
	movl	$40, (%rsp)
	movl	832(%rbp), %eax
	movl	%eax, 4(%rsp)
	movl	%r13d, 8(%rsp)
	movw	$1, 12(%rsp)
	movw	%r15w, 14(%rsp)
	movl	$0, 16(%rsp)
	movl	%ebx, 20(%rsp)
	movss	884(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, 24(%rsp)
	movss	888(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, 28(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	leaq	(%rsp), %rdi
	movl	$1, %esi
	movl	$40, %edx
	movq	%r12, %rcx
	callq	fwrite
	cmpl	$8, %r15d
	setg	%cl
	xorl	%edx, %edx
	cmpq	$40, %rax
	movl	$-12, %eax
	cmovel	%edx, %eax
	jne	.LBB1_4
# BB#2:                                 # %cleanup.cont
	testb	%cl, %cl
	jne	.LBB1_4
# BB#3:                                 # %if.then.43
	movl	$1, %eax
	movb	%r15b, %cl
	shll	%cl, %eax
	movslq	%eax, %rdx
	movl	$4, %esi
	movq	%r14, %rdi
	movq	%r12, %rcx
	callq	fwrite
	xorl	%eax, %eax
.LBB1_4:                                # %cleanup.48
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	write_bmp_depth_header, .Lfunc_end1-write_bmp_depth_header
	.cfi_endproc

	.globl	write_bmp_separated_header
	.align	16, 0x90
	.type	write_bmp_separated_header,@function
write_bmp_separated_header:             # @write_bmp_separated_header
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$1032, %rsp             # imm = 0x408
.Ltmp26:
	.cfi_def_cfa_offset 1040
	movzwl	108(%rdi), %r9d
	shrl	$2, %r9d
	movl	$1, %r8d
	movb	%r9b, %cl
	shll	%cl, %r8d
	cmpl	$31, %r9d
	je	.LBB2_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%r8d, %r10
	decl	%r8d
	xorl	%r11d, %r11d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r11d, %eax
	cltd
	idivl	%r8d
	movl	$255, %edx
	subl	%eax, %edx
	movb	%dl, (%rsp,%rcx,4)
	movb	%dl, 1(%rsp,%rcx,4)
	movb	%dl, 2(%rsp,%rcx,4)
	movb	$0, 3(%rsp,%rcx,4)
	incq	%rcx
	addl	$255, %r11d
	cmpq	%r10, %rcx
	jl	.LBB2_2
.LBB2_3:                                # %for.end
	movl	832(%rdi), %r8d
	imull	%r9d, %r8d
	addl	$7, %r8d
	sarl	$3, %r8d
	leaq	(%rsp), %rcx
	movl	%r9d, %edx
	callq	write_bmp_depth_header
	addq	$1032, %rsp             # imm = 0x408
	retq
.Lfunc_end2:
	.size	write_bmp_separated_header, .Lfunc_end2-write_bmp_separated_header
	.cfi_endproc

	.globl	bmp_map_16m_rgb_color
	.align	16, 0x90
	.type	bmp_map_16m_rgb_color,@function
bmp_map_16m_rgb_color:                  # @bmp_map_16m_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movzwl	2(%rsi), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%eax, %ecx
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$8, %eax
	andl	$16711680, %eax         # imm = 0xFF0000
	orq	%rcx, %rax
	retq
.Lfunc_end3:
	.size	bmp_map_16m_rgb_color, .Lfunc_end3-bmp_map_16m_rgb_color
	.cfi_endproc

	.globl	bmp_map_16m_color_rgb
	.align	16, 0x90
	.type	bmp_map_16m_color_rgb,@function
bmp_map_16m_color_rgb:                  # @bmp_map_16m_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movzbl	%ah, %ecx  # NOREX
	movzbl	%al, %esi
	shrl	$16, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, 4(%rdx)
	imull	$257, %ecx, %eax        # imm = 0x101
	movw	%ax, 2(%rdx)
	imull	$257, %esi, %eax        # imm = 0x101
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	bmp_map_16m_color_rgb, .Lfunc_end4-bmp_map_16m_color_rgb
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
