	.text
	.file	"gxctable.bc"
	.globl	gx_color_interpolate_nearest
	.align	16, 0x90
	.type	gx_color_interpolate_nearest,@function
gx_color_interpolate_nearest:           # @gx_color_interpolate_nearest
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movl	(%rsi), %eax
	movl	20(%rsi), %r10d
	leaq	4(%rdi), %rcx
	cmpl	$3, %eax
	cmovleq	%rdi, %rcx
	testl	%r10d, %r10d
	jle	.LBB0_14
# BB#1:                                 # %for.body.lr.ph
	cmpl	$3, %eax
	setg	%r8b
	movq	24(%rsi), %rdi
	movl	$128, %ebx
	movl	(%rcx), %eax
	addl	%ebx, %eax
	sarl	$8, %eax
	cltq
	shlq	$4, %rax
	movq	(%rdi,%rax), %r11
	movzbl	%r8b, %eax
	movl	4(%rcx), %edi
	addl	%ebx, %edi
	sarl	$8, %edi
	imull	12(%rsi,%rax,4), %edi
	addl	8(%rcx), %ebx
	sarl	$8, %ebx
	addl	%edi, %ebx
	imull	%r10d, %ebx
	movslq	%ebx, %rax
	leaq	(%r11,%rax), %rcx
	leal	-1(%r10), %edi
	leaq	1(%rdi), %r8
	movabsq	$8589934584, %rbx       # imm = 0x1FFFFFFF8
	movq	%r8, %r9
	andq	%rbx, %r9
	je	.LBB0_2
# BB#3:                                 # %vector.memcheck
	leaq	(%rax,%rdi), %rsi
	leaq	(%rsi,%r11), %rsi
	cmpq	%rsi, %rdx
	ja	.LBB0_6
# BB#4:                                 # %vector.memcheck
	leaq	(%rdx,%rdi,2), %rsi
	cmpq	%rsi, %rcx
	ja	.LBB0_6
# BB#5:
	xorl	%r9d, %r9d
	jmp	.LBB0_8
.LBB0_2:
	xorl	%r9d, %r9d
	jmp	.LBB0_8
.LBB0_6:                                # %vector.body.preheader
	addq	%r9, %rcx
	leaq	8(%rdx), %rsi
	leaq	4(%rax,%r11), %rax
	incq	%rdi
	andq	%rbx, %rdi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqa	%xmm1, %xmm3
	pslld	$7, %xmm3
	movdqa	%xmm2, %xmm4
	pslld	$7, %xmm4
	movdqa	%xmm1, %xmm5
	psrld	$1, %xmm5
	movdqa	%xmm2, %xmm6
	psrld	$1, %xmm6
	por	%xmm3, %xmm5
	por	%xmm4, %xmm6
	psrld	$5, %xmm1
	psrld	$5, %xmm2
	psubw	%xmm1, %xmm5
	pshuflw	$232, %xmm5, %xmm1      # xmm1 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -8(%rsi)
	psubw	%xmm2, %xmm6
	pshuflw	$232, %xmm6, %xmm1      # xmm1 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%rsi)
	addq	$16, %rsi
	addq	$8, %rax
	addq	$-8, %rdi
	jne	.LBB0_7
.LBB0_8:                                # %middle.block
	cmpq	%r9, %r8
	je	.LBB0_14
# BB#9:                                 # %for.body.preheader
	leal	1(%r10), %esi
	movl	%r9d, %eax
	orl	$1, %eax
	subl	%eax, %esi
	testb	$1, %sil
	je	.LBB0_11
# BB#10:                                # %for.body.prol
	movzbl	(%rcx), %edi
	movl	%edi, %ebx
	shll	$7, %ebx
	movl	%edi, %esi
	shrl	%esi
	orl	%ebx, %esi
	shrl	$5, %edi
	subl	%edi, %esi
	movw	%si, (%rdx,%r9,2)
	orq	$1, %r9
	incq	%rcx
.LBB0_11:                               # %for.body.preheader.split
	cmpl	%eax, %r10d
	je	.LBB0_14
# BB#12:                                # %for.body.preheader.split.split
	subl	%r9d, %r10d
	leaq	2(%rdx,%r9,2), %rax
	.align	16, 0x90
.LBB0_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %edx
	movl	%edx, %esi
	shll	$7, %esi
	movl	%edx, %edi
	shrl	%edi
	orl	%esi, %edi
	shrl	$5, %edx
	subl	%edx, %edi
	movw	%di, -2(%rax)
	movzbl	1(%rcx), %edx
	movl	%edx, %esi
	shll	$7, %esi
	movl	%edx, %edi
	shrl	%edi
	orl	%esi, %edi
	shrl	$5, %edx
	subl	%edx, %edi
	movw	%di, (%rax)
	addq	$4, %rax
	addq	$2, %rcx
	addl	$-2, %r10d
	jne	.LBB0_13
.LBB0_14:                               # %for.end
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gx_color_interpolate_nearest, .Lfunc_end0-gx_color_interpolate_nearest
	.cfi_endproc

	.globl	gx_color_interpolate_linear
	.align	16, 0x90
	.type	gx_color_interpolate_linear,@function
gx_color_interpolate_linear:            # @gx_color_interpolate_linear
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$256, %ecx              # imm = 0x100
	jmp	interpolate_accum       # TAILCALL
.Lfunc_end1:
	.size	gx_color_interpolate_linear, .Lfunc_end1-gx_color_interpolate_linear
	.cfi_endproc

	.align	16, 0x90
	.type	interpolate_accum,@function
interpolate_accum:                      # @interpolate_accum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 192
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	20(%rbx), %edi
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	cmpl	$4, (%rbx)
	jl	.LBB2_3
# BB#1:                                 # %if.then
	movl	(%r15), %r14d
	movl	%r14d, %r12d
	sarl	$8, %r12d
	movl	$3, 104(%rsp)
	movl	8(%rbx), %eax
	movl	%eax, 108(%rsp)
	movl	12(%rbx), %ecx
	movl	%ecx, 112(%rsp)
	movl	16(%rbx), %ecx
	movl	%ecx, 116(%rsp)
	movl	%edi, 124(%rsp)
	imull	%r12d, %eax
	movslq	%eax, %rbp
	shlq	$4, %rbp
	addq	24(%rbx), %rbp
	movq	%rbp, 128(%rsp)
	addq	$4, %r15
	leaq	104(%rsp), %rsi
	movl	$256, %ecx              # imm = 0x100
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	interpolate_accum
	movl	4(%rbx), %eax
	decl	%eax
	cmpl	%eax, %r12d
	je	.LBB2_12
# BB#2:                                 # %if.end
	movzbl	%r14b, %ecx
	movslq	8(%rbx), %rax
	shlq	$4, %rax
	addq	%rax, %rbp
	movq	%rbp, 128(%rsp)
	leaq	104(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	interpolate_accum
	jmp	.LBB2_12
.LBB2_3:                                # %if.else
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movl	8(%r15), %r10d
	movl	%r10d, %ecx
	sarl	$8, %ecx
	movl	12(%rbx), %esi
	leal	-1(%rsi), %eax
	xorl	%r12d, %r12d
	cmpl	%eax, %ecx
	movl	%edi, %r8d
	cmovel	%r12d, %r8d
	movl	(%r15), %r9d
	movl	4(%r15), %r11d
	movl	%r11d, %ebp
	sarl	$8, %ebp
	movl	4(%rbx), %r14d
	movl	8(%rbx), %eax
	decl	%eax
	movl	%esi, %edx
	imull	%edi, %edx
	cmpl	%eax, %ebp
	cmovel	%r12d, %edx
	movq	%rdx, %r15
	imull	%esi, %ebp
	addl	%ecx, %ebp
	imull	%edi, %ebp
	movl	%r9d, %ecx
	sarl	$8, %ecx
	movslq	%ecx, %rax
	movq	24(%rbx), %rdx
	movq	%rax, %rsi
	shlq	$4, %rsi
	movq	(%rdx,%rsi), %rsi
	decl	%r14d
	cmpl	%r14d, %eax
	jne	.LBB2_5
# BB#4:
	leaq	(%rsi,%rbp), %rax
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false.63
	incl	%ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	movq	(%rdx,%rax), %rax
	addq	%rbp, %rax
.LBB2_6:                                # %for.cond.preheader
	movq	%r13, %r14
	testl	%edi, %edi
	jle	.LBB2_12
# BB#7:                                 # %for.body.lr.ph
	movzbl	%r10b, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movzbl	%r11b, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movzbl	%r9b, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	%r8d, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	addq	%rbp, %rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	%r15d, %edx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	addl	%r8d, %r15d
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	(%rax,%rdx), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	leaq	(%rax,%r15), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rbp), %eax
	movl	%eax, %edx
	shll	$7, %edx
	movl	%eax, %r8d
	shrl	%r8d
	orl	%edx, %r8d
	shrl	$5, %eax
	subl	%eax, %r8d
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbp), %rax
	movzbl	(%rsi,%rax), %eax
	movl	%eax, %edx
	shll	$7, %edx
	movl	%eax, %r9d
	shrl	%r9d
	orl	%edx, %r9d
	shrl	$5, %eax
	subl	%eax, %r9d
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbp), %rax
	movzbl	(%rsi,%rax), %eax
	movl	%eax, %edx
	shll	$7, %edx
	movl	%eax, %r10d
	shrl	%r10d
	orl	%edx, %r10d
	shrl	$5, %eax
	subl	%eax, %r10d
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbp), %rax
	movzbl	(%rsi,%rax), %eax
	movl	%eax, %edx
	shll	$7, %edx
	movl	%eax, %r15d
	shrl	%r15d
	orl	%edx, %r15d
	shrl	$5, %eax
	subl	%eax, %r15d
	movq	72(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%rbp), %eax
	movl	%eax, %edx
	shll	$7, %edx
	movl	%eax, %r12d
	shrl	%r12d
	orl	%edx, %r12d
	shrl	$5, %eax
	subl	%eax, %r12d
	movq	24(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%rbp), %eax
	movl	%eax, %edx
	shll	$7, %edx
	movl	%eax, %r13d
	shrl	%r13d
	orl	%edx, %r13d
	shrl	$5, %eax
	subl	%eax, %r13d
	movq	16(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%rbp), %eax
	movl	%eax, %edx
	shll	$7, %edx
	movl	%eax, %r11d
	shrl	%r11d
	orl	%edx, %r11d
	shrl	$5, %eax
	subl	%eax, %r11d
	movq	8(%rsp), %rax           # 8-byte Reload
	movzbl	(%rax,%rbp), %eax
	movl	%eax, %edx
	shll	$7, %edx
	movl	%eax, %edi
	shrl	%edi
	orl	%edx, %edi
	shrl	$5, %eax
	subl	%eax, %edi
	movswl	%r8w, %eax
	movswl	%r9w, %edx
	subl	%eax, %edx
	movq	56(%rsp), %rbx          # 8-byte Reload
	imull	%ebx, %edx
	shrl	$8, %edx
	addl	%eax, %edx
	movswl	%r10w, %esi
	movswl	%r15w, %eax
	subl	%esi, %eax
	imull	%ebx, %eax
	shrl	$8, %eax
	addl	%esi, %eax
	movswl	%r12w, %ecx
	movswl	%r13w, %esi
	subl	%ecx, %esi
	imull	%ebx, %esi
	shrl	$8, %esi
	addl	%ecx, %esi
	movswl	%r11w, %ecx
	movswl	%di, %edi
	subl	%ecx, %edi
	imull	%ebx, %edi
	shrl	$8, %edi
	addl	%ecx, %edi
	movswl	%dx, %ecx
	cwtl
	subl	%ecx, %eax
	movq	64(%rsp), %rbx          # 8-byte Reload
	imull	%ebx, %eax
	shrl	$8, %eax
	addl	%ecx, %eax
	movswl	%si, %ecx
	movswl	%di, %edx
	subl	%ecx, %edx
	imull	%ebx, %edx
	shrl	$8, %edx
	addl	%ecx, %edx
	movswl	%ax, %ecx
	movswl	%dx, %eax
	subl	%ecx, %eax
	cltq
	imulq	48(%rsp), %rax          # 8-byte Folded Reload
	shrq	$8, %rax
	addl	%ecx, %eax
	movl	92(%rsp), %edx          # 4-byte Reload
	cmpl	$256, %edx              # imm = 0x100
	jne	.LBB2_10
# BB#9:                                 # %if.then.281
                                        #   in Loop: Header=BB2_8 Depth=1
	movw	%ax, (%r14,%rbp,2)
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_10:                               # %if.else.284
                                        #   in Loop: Header=BB2_8 Depth=1
	cwtl
	movswl	(%r14,%rbp,2), %ecx
	subl	%ecx, %eax
	imull	%edx, %eax
	shrl	$8, %eax
	addl	%ecx, %eax
	movw	%ax, (%r14,%rbp,2)
.LBB2_11:                               # %if.end.301
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	(%rsp), %rsi            # 8-byte Reload
	incq	%rbp
	cmpl	%ebp, %eax
	jne	.LBB2_8
.LBB2_12:                               # %cleanup.304
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	interpolate_accum, .Lfunc_end2-interpolate_accum
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
