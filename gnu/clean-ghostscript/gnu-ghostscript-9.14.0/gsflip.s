	.text
	.file	"gsflip.bc"
	.globl	image_flip_planes
	.align	16, 0x90
	.type	image_flip_planes,@function
image_flip_planes:                      # @image_flip_planes
	.cfi_startproc
# BB#0:                                 # %entry
	leal	-1(%r9), %eax
	cmpl	$11, %eax
	ja	.LBB0_6
# BB#1:                                 # %if.end
	cmpl	$4, %r8d
	jne	.LBB0_2
# BB#4:                                 # %sw.bb.2
	movslq	%r9d, %rax
	jmpq	*image_flip4_procs(,%rax,8) # TAILCALL
.LBB0_2:                                # %if.end
	cmpl	$3, %r8d
	jne	.LBB0_5
# BB#3:                                 # %sw.bb
	movslq	%r9d, %rax
	jmpq	*image_flip3_procs(,%rax,8) # TAILCALL
.LBB0_5:                                # %sw.default
	testl	%r8d, %r8d
	js	.LBB0_6
# BB#7:                                 # %if.end.8
	movslq	%r9d, %rax
	jmpq	*image_flipN_procs(,%rax,8) # TAILCALL
.LBB0_6:                                # %return
	movl	$-1, %eax
	retq
.Lfunc_end0:
	.size	image_flip_planes, .Lfunc_end0-image_flip_planes
	.cfi_endproc

	.align	16, 0x90
	.type	flip_fail,@function
flip_fail:                              # @flip_fail
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end1:
	.size	flip_fail, .Lfunc_end1-flip_fail
	.cfi_endproc

	.align	16, 0x90
	.type	flip3x1,@function
flip3x1:                                # @flip3x1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	testl	%ecx, %ecx
	jle	.LBB2_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %r8
	movq	16(%rsi), %rdx
	addq	%r8, %rdx
	movq	8(%rsi), %rax
	addq	%r8, %rax
	addq	(%rsi), %r8
	incl	%ecx
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r8), %r9d
	movzbl	(%rax), %ebx
	movl	flip3x1.tab3x1(,%rbx,4), %esi
	shrl	%esi
	orl	flip3x1.tab3x1(,%r9,4), %esi
	movzbl	(%rdx), %ebx
	movl	flip3x1.tab3x1(,%rbx,4), %ebx
	shrl	$2, %ebx
	orl	%esi, %ebx
	movl	%ebx, %esi
	shrl	$16, %esi
	movb	%sil, (%rdi)
	movb	%bh, 1(%rdi)  # NOREX
	movb	%bl, 2(%rdi)
	incq	%r8
	incq	%rax
	incq	%rdx
	decl	%ecx
	addq	$3, %rdi
	cmpl	$1, %ecx
	jg	.LBB2_2
.LBB2_3:                                # %for.end
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	flip3x1, .Lfunc_end2-flip3x1
	.cfi_endproc

	.align	16, 0x90
	.type	flip3x2,@function
flip3x2:                                # @flip3x2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	testl	%ecx, %ecx
	jle	.LBB3_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %r8
	movq	16(%rsi), %rdx
	addq	%r8, %rdx
	movq	8(%rsi), %rax
	addq	%r8, %rax
	addq	(%rsi), %r8
	incl	%ecx
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r8), %r9d
	movzbl	(%rax), %ebx
	movl	flip3x2.tab3x2(,%rbx,4), %esi
	shrl	$2, %esi
	orl	flip3x2.tab3x2(,%r9,4), %esi
	movzbl	(%rdx), %ebx
	movl	flip3x2.tab3x2(,%rbx,4), %ebx
	shrl	$4, %ebx
	orl	%esi, %ebx
	movl	%ebx, %esi
	shrl	$16, %esi
	movb	%sil, (%rdi)
	movb	%bh, 1(%rdi)  # NOREX
	movb	%bl, 2(%rdi)
	incq	%r8
	incq	%rax
	incq	%rdx
	decl	%ecx
	addq	$3, %rdi
	cmpl	$1, %ecx
	jg	.LBB3_2
.LBB3_3:                                # %for.end
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end3:
	.size	flip3x2, .Lfunc_end3-flip3x2
	.cfi_endproc

	.align	16, 0x90
	.type	flip3x4,@function
flip3x4:                                # @flip3x4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbx, -16
	testl	%ecx, %ecx
	jle	.LBB4_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %r8
	movq	16(%rsi), %r9
	addq	%r8, %r9
	movq	8(%rsi), %r10
	addq	%r8, %r10
	addq	(%rsi), %r8
	incl	%ecx
	.align	16, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r8), %dl
	movb	(%r10), %sil
	movb	(%r9), %al
	movb	%dl, %r11b
	andb	$-16, %r11b
	movb	%sil, %bl
	shrb	$4, %bl
	orb	%r11b, %bl
	movb	%bl, (%rdi)
	movb	%al, %bl
	andb	$-16, %bl
	andb	$15, %dl
	orb	%bl, %dl
	movb	%dl, 1(%rdi)
	shlb	$4, %sil
	andb	$15, %al
	orb	%sil, %al
	movb	%al, 2(%rdi)
	incq	%r8
	incq	%r10
	incq	%r9
	decl	%ecx
	addq	$3, %rdi
	cmpl	$1, %ecx
	jg	.LBB4_2
.LBB4_3:                                # %for.end
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	flip3x4, .Lfunc_end4-flip3x4
	.cfi_endproc

	.align	16, 0x90
	.type	flip3x8,@function
flip3x8:                                # @flip3x8
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jle	.LBB5_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %r8
	movq	16(%rsi), %r9
	addq	%r8, %r9
	movq	8(%rsi), %rax
	addq	%r8, %rax
	addq	(%rsi), %r8
	incl	%ecx
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r8), %dl
	movb	%dl, (%rdi)
	movb	(%rax), %dl
	movb	%dl, 1(%rdi)
	movb	(%r9), %dl
	movb	%dl, 2(%rdi)
	incq	%r8
	incq	%rax
	incq	%r9
	decl	%ecx
	addq	$3, %rdi
	cmpl	$1, %ecx
	jg	.LBB5_2
.LBB5_3:                                # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	flip3x8, .Lfunc_end5-flip3x8
	.cfi_endproc

	.align	16, 0x90
	.type	flip3x12,@function
flip3x12:                               # @flip3x12
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
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 40
.Ltmp10:
	.cfi_offset %rbx, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	testl	%ecx, %ecx
	jle	.LBB6_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %r9
	movq	8(%rsi), %r8
	addq	%r9, %r8
	addq	$2, %r9
	movq	(%rsi), %r10
	addq	%r9, %r10
	addq	16(%rsi), %r9
	addl	$3, %ecx
	.align	16, 0x90
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	-2(%r10), %sil
	movb	-1(%r10), %bl
	movb	(%r8), %r15b
	movb	1(%r8), %r11b
	movb	2(%r8), %bpl
	movb	-1(%r9), %r14b
	movb	%sil, (%rdi)
	movb	%bl, %al
	andb	$-16, %al
	movb	%r15b, %dl
	shrb	$4, %dl
	orb	%al, %dl
	movb	%dl, 1(%rdi)
	shlb	$4, %r15b
	movb	%r11b, %al
	shrb	$4, %al
	orb	%r15b, %al
	movb	%al, 2(%rdi)
	movb	-2(%r9), %al
	movb	%al, 3(%rdi)
	movb	%r14b, %al
	andb	$-16, %al
	andb	$15, %bl
	orb	%al, %bl
	movb	%bl, 4(%rdi)
	movb	(%r10), %al
	movb	%al, 5(%rdi)
	shlb	$4, %r11b
	movb	%bpl, %al
	shrb	$4, %al
	orb	%r11b, %al
	movb	%al, 6(%rdi)
	shlb	$4, %bpl
	andb	$15, %r14b
	orb	%bpl, %r14b
	movb	%r14b, 7(%rdi)
	movb	(%r9), %al
	movb	%al, 8(%rdi)
	addq	$3, %r10
	addq	$3, %r9
	addl	$-3, %ecx
	addq	$3, %r8
	addq	$9, %rdi
	cmpl	$3, %ecx
	jg	.LBB6_2
.LBB6_3:                                # %for.end
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	flip3x12, .Lfunc_end6-flip3x12
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.zero	16,127
.LCPI7_1:
	.zero	16,85
.LCPI7_2:
	.zero	16,63
.LCPI7_3:
	.zero	16,51
.LCPI7_4:
	.zero	16,252
.LCPI7_5:
	.zero	16,240
.LCPI7_6:
	.zero	16,15
	.text
	.align	16, 0x90
	.type	flip4x1,@function
flip4x1:                                # @flip4x1
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
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 64
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
	testl	%ecx, %ecx
	jle	.LBB7_14
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %r15
	movq	24(%rsi), %r10
	leaq	(%r10,%r15), %r8
	movq	16(%rsi), %r11
	leaq	(%r11,%r15), %r12
	movq	(%rsi), %r14
	movq	8(%rsi), %rbx
	leaq	(%rbx,%r15), %rsi
	leaq	(%r14,%r15), %r9
	cmpl	$2, %ecx
	movl	$1, %edx
	movl	$1, %eax
	cmovll	%ecx, %eax
	notl	%eax
	leal	1(%rcx,%rax), %ebp
	incq	%rbp
	movabsq	$8589934576, %r13       # imm = 0x1FFFFFFF0
	movq	%rbp, %rax
	andq	%r13, %rax
	je	.LBB7_2
# BB#3:                                 # %vector.memcheck
	movq	%rax, -120(%rsp)        # 8-byte Spill
	movq	%rbp, -112(%rsp)        # 8-byte Spill
	cmpl	$2, %ecx
	cmovll	%ecx, %edx
	notl	%edx
	leal	1(%rcx,%rdx), %eax
	leaq	3(%rdi,%rax,4), %r13
	leaq	(%rax,%r15), %rax
	leaq	(%r14,%rax), %rdx
	leaq	(%rbx,%rax), %rbp
	movq	%rbp, -104(%rsp)        # 8-byte Spill
	leaq	(%r11,%rax), %rbp
	movq	%rbp, -96(%rsp)         # 8-byte Spill
	leaq	(%rax,%r10), %rax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	cmpq	%rdi, %rdx
	setae	-72(%rsp)               # 1-byte Folded Spill
	cmpq	%r13, %r9
	setbe	-73(%rsp)               # 1-byte Folded Spill
	cmpq	%rdi, -104(%rsp)        # 8-byte Folded Reload
	setae	%dl
	cmpq	%r13, %rsi
	setbe	-104(%rsp)              # 1-byte Folded Spill
	cmpq	%rdi, -96(%rsp)         # 8-byte Folded Reload
	setae	%al
	cmpq	%r13, %r12
	setbe	-96(%rsp)               # 1-byte Folded Spill
	cmpq	%rdi, -88(%rsp)         # 8-byte Folded Reload
	setae	%bpl
	cmpq	%r13, %r8
	setbe	-88(%rsp)               # 1-byte Folded Spill
	movb	-73(%rsp), %r13b        # 1-byte Reload
	testb	-72(%rsp), %r13b        # 1-byte Folded Reload
	jne	.LBB7_4
# BB#5:                                 # %vector.memcheck
	andb	-104(%rsp), %dl         # 1-byte Folded Reload
	jne	.LBB7_4
# BB#6:                                 # %vector.memcheck
	andb	-96(%rsp), %al          # 1-byte Folded Reload
	jne	.LBB7_4
# BB#7:                                 # %vector.memcheck
	andb	-88(%rsp), %bpl         # 1-byte Folded Reload
	jne	.LBB7_4
# BB#8:                                 # %vector.body.preheader
	movq	-120(%rsp), %rbp        # 8-byte Reload
	leaq	(%rdi,%rbp,4), %rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	addq	%rbp, %r9
	addq	%rbp, %rsi
	addq	%rbp, %r12
	addq	%rbp, %r8
	movl	%ecx, %r13d
	subl	%ebp, %r13d
	addq	%r15, %r10
	addq	%r15, %r11
	addq	%r15, %rbx
	addq	%r15, %r14
	addq	$63, %rdi
	movl	%ecx, %eax
	notl	%eax
	cmpl	$-3, %eax
	movl	$-2, %edx
	cmovgl	%eax, %edx
	leal	1(%rcx,%rdx), %ecx
	incq	%rcx
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %rcx
	movdqa	.LCPI7_0(%rip), %xmm8   # xmm8 = [127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127]
	movdqa	.LCPI7_1(%rip), %xmm9   # xmm9 = [85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85]
	movdqa	.LCPI7_2(%rip), %xmm10  # xmm10 = [63,63,63,63,63,63,63,63,63,63,63,63,63,63,63,63]
	movdqa	.LCPI7_3(%rip), %xmm11  # xmm11 = [51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51]
	movdqa	.LCPI7_4(%rip), %xmm12  # xmm12 = [252,252,252,252,252,252,252,252,252,252,252,252,252,252,252,252]
	movdqa	.LCPI7_5(%rip), %xmm13  # xmm13 = [240,240,240,240,240,240,240,240,240,240,240,240,240,240,240,240]
	movdqa	.LCPI7_6(%rip), %xmm14  # xmm14 = [15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15]
	.align	16, 0x90
.LBB7_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%r14), %xmm3
	movdqu	(%r11), %xmm5
	movdqu	(%r10), %xmm2
	movdqu	(%rbx), %xmm7
	movdqa	%xmm7, %xmm1
	psrlw	$1, %xmm1
	pand	%xmm8, %xmm1
	pxor	%xmm3, %xmm1
	pand	%xmm9, %xmm1
	pxor	%xmm1, %xmm3
	movdqa	%xmm2, %xmm4
	psrlw	$1, %xmm4
	pand	%xmm8, %xmm4
	paddb	%xmm1, %xmm1
	pxor	%xmm5, %xmm4
	pand	%xmm9, %xmm4
	pxor	%xmm4, %xmm5
	pxor	%xmm7, %xmm1
	paddb	%xmm4, %xmm4
	pxor	%xmm2, %xmm4
	movdqa	%xmm5, %xmm0
	psrlw	$2, %xmm0
	pand	%xmm10, %xmm0
	pxor	%xmm3, %xmm0
	pand	%xmm11, %xmm0
	pxor	%xmm0, %xmm3
	movdqa	%xmm4, %xmm7
	psllw	$2, %xmm0
	psrlw	$2, %xmm7
	pand	%xmm10, %xmm7
	pxor	%xmm1, %xmm7
	pand	%xmm12, %xmm0
	pand	%xmm11, %xmm7
	pxor	%xmm7, %xmm1
	psllw	$2, %xmm7
	pxor	%xmm5, %xmm0
	pand	%xmm12, %xmm7
	movdqa	%xmm3, %xmm5
	pand	%xmm13, %xmm5
	movdqa	%xmm1, %xmm6
	psrlw	$4, %xmm6
	pxor	%xmm4, %xmm7
	pand	%xmm14, %xmm6
	psllw	$4, %xmm3
	pand	%xmm13, %xmm3
	por	%xmm5, %xmm6
	pand	%xmm14, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, -64(%rsp)
	movzbl	-63(%rsp), %eax
	movzbl	-62(%rsp), %edx
	movd	%edx, %xmm3
	movd	%eax, %xmm4
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	movzbl	-61(%rsp), %eax
	movd	%eax, %xmm3
	movdqa	%xmm6, -48(%rsp)
	punpcklbw	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	movzbl	-47(%rsp), %eax
	movzbl	-46(%rsp), %edx
	movd	%edx, %xmm3
	punpcklbw	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3],xmm1[4],xmm4[4],xmm1[5],xmm4[5],xmm1[6],xmm4[6],xmm1[7],xmm4[7]
	movd	%eax, %xmm4
	movzbl	-45(%rsp), %eax
	movd	%eax, %xmm5
	movdqa	%xmm0, %xmm2
	punpcklbw	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1],xmm6[2],xmm3[2],xmm6[3],xmm3[3],xmm6[4],xmm3[4],xmm6[5],xmm3[5],xmm6[6],xmm3[6],xmm6[7],xmm3[7]
	psllw	$4, %xmm2
	pand	%xmm13, %xmm2
	movdqa	%xmm7, %xmm3
	pand	%xmm14, %xmm3
	punpcklbw	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1],xmm4[2],xmm5[2],xmm4[3],xmm5[3],xmm4[4],xmm5[4],xmm4[5],xmm5[5],xmm4[6],xmm5[6],xmm4[7],xmm5[7]
	por	%xmm2, %xmm3
	movdqa	%xmm3, -32(%rsp)
	movzbl	-31(%rsp), %eax
	punpcklbw	%xmm4, %xmm6    # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3],xmm6[4],xmm4[4],xmm6[5],xmm4[5],xmm6[6],xmm4[6],xmm6[7],xmm4[7]
	movzbl	-30(%rsp), %edx
	movd	%edx, %xmm2
	movd	%eax, %xmm4
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	movzbl	-29(%rsp), %eax
	movd	%eax, %xmm2
	pand	%xmm13, %xmm0
	punpcklbw	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	psrlw	$4, %xmm7
	pand	%xmm14, %xmm7
	por	%xmm0, %xmm7
	punpcklbw	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	movdqa	%xmm7, -16(%rsp)
	movzbl	-15(%rsp), %eax
	movzbl	-14(%rsp), %edx
	punpcklbw	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1],xmm3[2],xmm4[2],xmm3[3],xmm4[3],xmm3[4],xmm4[4],xmm3[5],xmm4[5],xmm3[6],xmm4[6],xmm3[7],xmm4[7]
	movd	%edx, %xmm0
	movd	%eax, %xmm1
	movzbl	-13(%rsp), %eax
	punpcklbw	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklbw	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklbw	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1],xmm7[2],xmm3[2],xmm7[3],xmm3[3],xmm7[4],xmm3[4],xmm7[5],xmm3[5],xmm7[6],xmm3[6],xmm7[7],xmm3[7]
	movb	-44(%rsp), %al
	movb	%al, -47(%rdi)
	movb	-43(%rsp), %al
	movb	%al, -43(%rdi)
	movb	-42(%rsp), %al
	movb	%al, -39(%rdi)
	movb	-41(%rsp), %al
	movb	%al, -35(%rdi)
	movb	-40(%rsp), %al
	movb	%al, -31(%rdi)
	movb	-39(%rsp), %al
	movb	%al, -27(%rdi)
	movb	-38(%rsp), %al
	movb	%al, -23(%rdi)
	movb	-37(%rsp), %al
	movb	%al, -19(%rdi)
	movb	-36(%rsp), %al
	movb	%al, -15(%rdi)
	movb	-35(%rsp), %al
	movb	%al, -11(%rdi)
	movb	-34(%rsp), %al
	movb	%al, -7(%rdi)
	movb	-33(%rsp), %al
	movb	%al, -3(%rdi)
	movb	-12(%rsp), %al
	movb	%al, -46(%rdi)
	movb	-11(%rsp), %al
	movb	%al, -42(%rdi)
	movb	-10(%rsp), %al
	movb	%al, -38(%rdi)
	movb	-9(%rsp), %al
	movb	%al, -34(%rdi)
	movb	-8(%rsp), %al
	movb	%al, -30(%rdi)
	movb	-7(%rsp), %al
	movb	%al, -26(%rdi)
	movb	-6(%rsp), %al
	movb	%al, -22(%rdi)
	movb	-5(%rsp), %al
	movb	%al, -18(%rdi)
	movb	-4(%rsp), %al
	movb	%al, -14(%rdi)
	movb	-3(%rsp), %al
	movb	%al, -10(%rdi)
	movb	-2(%rsp), %al
	movb	%al, -6(%rdi)
	movb	-1(%rsp), %al
	movb	%al, -2(%rdi)
	movb	-60(%rsp), %al
	movb	%al, -45(%rdi)
	movb	-59(%rsp), %al
	movb	%al, -41(%rdi)
	movb	-58(%rsp), %al
	movb	%al, -37(%rdi)
	movb	-57(%rsp), %al
	movb	%al, -33(%rdi)
	movb	-56(%rsp), %al
	movb	%al, -29(%rdi)
	movb	-55(%rsp), %al
	movb	%al, -25(%rdi)
	movb	-54(%rsp), %al
	movb	%al, -21(%rdi)
	movb	-53(%rsp), %al
	movb	%al, -17(%rdi)
	movb	-52(%rsp), %al
	movb	%al, -13(%rdi)
	movb	-51(%rsp), %al
	movb	%al, -9(%rdi)
	movb	-50(%rsp), %al
	movb	%al, -5(%rdi)
	movb	-49(%rsp), %al
	punpcklbw	%xmm7, %xmm6    # xmm6 = xmm6[0],xmm7[0],xmm6[1],xmm7[1],xmm6[2],xmm7[2],xmm6[3],xmm7[3],xmm6[4],xmm7[4],xmm6[5],xmm7[5],xmm6[6],xmm7[6],xmm6[7],xmm7[7]
	movb	%al, -1(%rdi)
	movdqu	%xmm6, -63(%rdi)
	movb	-28(%rsp), %al
	movb	%al, -44(%rdi)
	movb	-27(%rsp), %al
	movb	%al, -40(%rdi)
	movb	-26(%rsp), %al
	movb	%al, -36(%rdi)
	movb	-25(%rsp), %al
	movb	%al, -32(%rdi)
	movb	-24(%rsp), %al
	movb	%al, -28(%rdi)
	movb	-23(%rsp), %al
	movb	%al, -24(%rdi)
	movb	-22(%rsp), %al
	movb	%al, -20(%rdi)
	movb	-21(%rsp), %al
	movb	%al, -16(%rdi)
	movb	-20(%rsp), %al
	movb	%al, -12(%rdi)
	movb	-19(%rsp), %al
	movb	%al, -8(%rdi)
	movb	-18(%rsp), %al
	movb	%al, -4(%rdi)
	movb	-17(%rsp), %al
	addq	$16, %r10
	addq	$16, %r11
	movb	%al, (%rdi)
	addq	$16, %rbx
	addq	$16, %r14
	addq	$64, %rdi
	addq	$-16, %rcx
	jne	.LBB7_9
# BB#10:
	movq	-72(%rsp), %rdi         # 8-byte Reload
	movl	%r13d, %ecx
	movq	%rbp, %rax
	movq	-112(%rsp), %rbp        # 8-byte Reload
	jmp	.LBB7_11
.LBB7_2:
	xorl	%eax, %eax
	jmp	.LBB7_11
.LBB7_4:
	movq	-112(%rsp), %rbp        # 8-byte Reload
	xorl	%eax, %eax
.LBB7_11:                               # %middle.block
	cmpq	%rax, %rbp
	je	.LBB7_14
# BB#12:                                # %for.body.preheader
	incl	%ecx
	.align	16, 0x90
.LBB7_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r9), %bpl
	movb	(%rsi), %al
	movb	(%r12), %r10b
	movb	(%r8), %r11b
	movb	%al, %r14b
	shrb	%r14b
	xorb	%bpl, %r14b
	andb	$85, %r14b
	xorb	%r14b, %bpl
	addb	%r14b, %r14b
	xorb	%al, %r14b
	movb	%r11b, %al
	shrb	%al
	xorb	%r10b, %al
	andb	$85, %al
	xorb	%al, %r10b
	addb	%al, %al
	xorb	%r11b, %al
	movb	%r10b, %r11b
	shrb	$2, %r11b
	xorb	%bpl, %r11b
	andb	$51, %r11b
	xorb	%r11b, %bpl
	shlb	$2, %r11b
	xorb	%r10b, %r11b
	movb	%al, %bl
	shrb	$2, %bl
	xorb	%r14b, %bl
	andb	$51, %bl
	xorb	%bl, %r14b
	shlb	$2, %bl
	xorb	%al, %bl
	movb	%bpl, %al
	andb	$-16, %al
	movb	%r14b, %dl
	shrb	$4, %dl
	orb	%al, %dl
	movb	%dl, (%rdi)
	movb	%r11b, %al
	andb	$-16, %al
	movb	%bl, %dl
	shrb	$4, %dl
	orb	%al, %dl
	movb	%dl, 1(%rdi)
	shlb	$4, %bpl
	andb	$15, %r14b
	orb	%bpl, %r14b
	movb	%r14b, 2(%rdi)
	shlb	$4, %r11b
	andb	$15, %bl
	orb	%r11b, %bl
	movb	%bl, 3(%rdi)
	incq	%r9
	incq	%rsi
	incq	%r12
	incq	%r8
	decl	%ecx
	addq	$4, %rdi
	cmpl	$1, %ecx
	jg	.LBB7_13
.LBB7_14:                               # %for.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	flip4x1, .Lfunc_end7-flip4x1
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.zero	16,15
.LCPI8_1:
	.zero	16,240
.LCPI8_2:
	.zero	16,63
.LCPI8_3:
	.zero	16,51
.LCPI8_4:
	.zero	16,252
	.text
	.align	16, 0x90
	.type	flip4x2,@function
flip4x2:                                # @flip4x2
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
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 64
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
	testl	%ecx, %ecx
	jle	.LBB8_14
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %r13
	movq	24(%rsi), %r10
	leaq	(%r10,%r13), %r8
	movq	16(%rsi), %r11
	leaq	(%r11,%r13), %r12
	movq	(%rsi), %r14
	movq	8(%rsi), %rbx
	leaq	(%rbx,%r13), %rsi
	leaq	(%r14,%r13), %r15
	cmpl	$2, %ecx
	movl	$1, %edx
	movl	$1, %ebp
	cmovll	%ecx, %ebp
	notl	%ebp
	leal	1(%rcx,%rbp), %eax
	incq	%rax
	movabsq	$8589934576, %r9        # imm = 0x1FFFFFFF0
	movq	%rax, %rbp
	andq	%r9, %rbp
	movq	%rbp, -72(%rsp)         # 8-byte Spill
	je	.LBB8_2
# BB#3:                                 # %vector.memcheck
	movq	%rax, -120(%rsp)        # 8-byte Spill
	cmpl	$2, %ecx
	cmovll	%ecx, %edx
	notl	%edx
	leal	1(%rcx,%rdx), %edx
	leaq	3(%rdi,%rdx,4), %rbp
	leaq	(%rdx,%r13), %rdx
	leaq	(%r14,%rdx), %r9
	leaq	(%rbx,%rdx), %rax
	movq	%rax, -112(%rsp)        # 8-byte Spill
	leaq	(%r11,%rdx), %rax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	leaq	(%rdx,%r10), %rdx
	movq	%rdx, -96(%rsp)         # 8-byte Spill
	cmpq	%rdi, %r9
	setae	-80(%rsp)               # 1-byte Folded Spill
	cmpq	%rbp, %r15
	setbe	-81(%rsp)               # 1-byte Folded Spill
	cmpq	%rdi, -112(%rsp)        # 8-byte Folded Reload
	setae	%dl
	cmpq	%rbp, %rsi
	setbe	-112(%rsp)              # 1-byte Folded Spill
	cmpq	%rdi, -104(%rsp)        # 8-byte Folded Reload
	setae	%r9b
	cmpq	%rbp, %r12
	setbe	-104(%rsp)              # 1-byte Folded Spill
	cmpq	%rdi, -96(%rsp)         # 8-byte Folded Reload
	setae	%al
	cmpq	%rbp, %r8
	setbe	-96(%rsp)               # 1-byte Folded Spill
	movb	-81(%rsp), %bpl         # 1-byte Reload
	testb	-80(%rsp), %bpl         # 1-byte Folded Reload
	jne	.LBB8_4
# BB#5:                                 # %vector.memcheck
	andb	-112(%rsp), %dl         # 1-byte Folded Reload
	jne	.LBB8_4
# BB#6:                                 # %vector.memcheck
	andb	-104(%rsp), %r9b        # 1-byte Folded Reload
	jne	.LBB8_4
# BB#7:                                 # %vector.memcheck
	andb	-96(%rsp), %al          # 1-byte Folded Reload
	jne	.LBB8_4
# BB#8:                                 # %vector.body.preheader
	movq	-72(%rsp), %rax         # 8-byte Reload
	leaq	(%rdi,%rax,4), %rdx
	movq	%rdx, -80(%rsp)         # 8-byte Spill
	addq	%rax, %r15
	addq	%rax, %rsi
	addq	%rax, %r12
	addq	%rax, %r8
	movl	%ecx, %r9d
	subl	%eax, %r9d
	addq	%r13, %r10
	addq	%r13, %r11
	addq	%r13, %rbx
	addq	%r13, %r14
	addq	$63, %rdi
	movl	%ecx, %ebp
	notl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	1(%rcx,%rdx), %ecx
	incq	%rcx
	movabsq	$8589934576, %rdx       # imm = 0x1FFFFFFF0
	andq	%rdx, %rcx
	movdqa	.LCPI8_0(%rip), %xmm8   # xmm8 = [15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15]
	movdqa	.LCPI8_1(%rip), %xmm9   # xmm9 = [240,240,240,240,240,240,240,240,240,240,240,240,240,240,240,240]
	movdqa	.LCPI8_2(%rip), %xmm10  # xmm10 = [63,63,63,63,63,63,63,63,63,63,63,63,63,63,63,63]
	movdqa	.LCPI8_3(%rip), %xmm11  # xmm11 = [51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51]
	movdqa	.LCPI8_4(%rip), %xmm4   # xmm4 = [252,252,252,252,252,252,252,252,252,252,252,252,252,252,252,252]
	.align	16, 0x90
.LBB8_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rbx), %xmm1
	movdqu	(%r11), %xmm0
	movdqu	(%r10), %xmm6
	movdqu	(%r14), %xmm5
	movdqa	%xmm0, %xmm7
	psrlw	$4, %xmm7
	pxor	%xmm5, %xmm7
	pand	%xmm8, %xmm7
	pxor	%xmm7, %xmm5
	psllw	$4, %xmm7
	movdqa	%xmm6, %xmm2
	psrlw	$4, %xmm2
	pxor	%xmm1, %xmm2
	pand	%xmm9, %xmm7
	pand	%xmm8, %xmm2
	pxor	%xmm2, %xmm1
	psllw	$4, %xmm2
	pxor	%xmm0, %xmm7
	pand	%xmm9, %xmm2
	pxor	%xmm6, %xmm2
	movdqa	%xmm1, %xmm6
	psrlw	$2, %xmm6
	pand	%xmm10, %xmm6
	pxor	%xmm5, %xmm6
	pand	%xmm11, %xmm6
	pxor	%xmm6, %xmm5
	psllw	$2, %xmm6
	pand	%xmm4, %xmm6
	movdqa	%xmm2, %xmm0
	psrlw	$2, %xmm0
	pand	%xmm10, %xmm0
	pxor	%xmm1, %xmm6
	pxor	%xmm7, %xmm0
	pand	%xmm11, %xmm0
	pxor	%xmm0, %xmm7
	psllw	$2, %xmm0
	pand	%xmm4, %xmm0
	movdqa	%xmm5, -64(%rsp)
	movzbl	-63(%rsp), %edx
	pxor	%xmm2, %xmm0
	movzbl	-62(%rsp), %ebp
	movd	%ebp, %xmm1
	movd	%edx, %xmm2
	punpcklbw	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3],xmm5[4],xmm1[4],xmm5[5],xmm1[5],xmm5[6],xmm1[6],xmm5[7],xmm1[7]
	movzbl	-61(%rsp), %edx
	movd	%edx, %xmm1
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	punpcklbw	%xmm2, %xmm5    # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3],xmm5[4],xmm2[4],xmm5[5],xmm2[5],xmm5[6],xmm2[6],xmm5[7],xmm2[7]
	movdqa	%xmm7, -48(%rsp)
	movzbl	-47(%rsp), %edx
	movzbl	-46(%rsp), %ebp
	movd	%ebp, %xmm1
	movd	%edx, %xmm2
	movzbl	-45(%rsp), %edx
	movd	%edx, %xmm3
	punpcklbw	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movdqa	%xmm6, -32(%rsp)
	movzbl	-31(%rsp), %edx
	punpcklbw	%xmm2, %xmm7    # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3],xmm7[4],xmm2[4],xmm7[5],xmm2[5],xmm7[6],xmm2[6],xmm7[7],xmm2[7]
	movzbl	-30(%rsp), %ebp
	movd	%ebp, %xmm1
	movd	%edx, %xmm2
	punpcklbw	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	movzbl	-29(%rsp), %edx
	movd	%edx, %xmm1
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	punpcklbw	%xmm7, %xmm5    # xmm5 = xmm5[0],xmm7[0],xmm5[1],xmm7[1],xmm5[2],xmm7[2],xmm5[3],xmm7[3],xmm5[4],xmm7[4],xmm5[5],xmm7[5],xmm5[6],xmm7[6],xmm5[7],xmm7[7]
	movdqa	%xmm0, -16(%rsp)
	movzbl	-15(%rsp), %edx
	movzbl	-14(%rsp), %ebp
	punpcklbw	%xmm2, %xmm6    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3],xmm6[4],xmm2[4],xmm6[5],xmm2[5],xmm6[6],xmm2[6],xmm6[7],xmm2[7]
	movd	%ebp, %xmm1
	movd	%edx, %xmm2
	movzbl	-13(%rsp), %edx
	punpcklbw	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movd	%edx, %xmm1
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklbw	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	movb	-60(%rsp), %dl
	movb	%dl, -47(%rdi)
	movb	-59(%rsp), %dl
	movb	%dl, -43(%rdi)
	movb	-58(%rsp), %dl
	movb	%dl, -39(%rdi)
	movb	-57(%rsp), %dl
	movb	%dl, -35(%rdi)
	movb	-56(%rsp), %dl
	movb	%dl, -31(%rdi)
	movb	-55(%rsp), %dl
	movb	%dl, -27(%rdi)
	movb	-54(%rsp), %dl
	movb	%dl, -23(%rdi)
	movb	-53(%rsp), %dl
	movb	%dl, -19(%rdi)
	movb	-52(%rsp), %dl
	movb	%dl, -15(%rdi)
	movb	-51(%rsp), %dl
	movb	%dl, -11(%rdi)
	movb	-50(%rsp), %dl
	movb	%dl, -7(%rdi)
	movb	-49(%rsp), %dl
	movb	%dl, -3(%rdi)
	movb	-28(%rsp), %dl
	movb	%dl, -46(%rdi)
	movb	-27(%rsp), %dl
	movb	%dl, -42(%rdi)
	movb	-26(%rsp), %dl
	movb	%dl, -38(%rdi)
	movb	-25(%rsp), %dl
	movb	%dl, -34(%rdi)
	movb	-24(%rsp), %dl
	movb	%dl, -30(%rdi)
	movb	-23(%rsp), %dl
	movb	%dl, -26(%rdi)
	movb	-22(%rsp), %dl
	movb	%dl, -22(%rdi)
	movb	-21(%rsp), %dl
	movb	%dl, -18(%rdi)
	movb	-20(%rsp), %dl
	movb	%dl, -14(%rdi)
	movb	-19(%rsp), %dl
	movb	%dl, -10(%rdi)
	movb	-18(%rsp), %dl
	movb	%dl, -6(%rdi)
	movb	-17(%rsp), %dl
	movb	%dl, -2(%rdi)
	movb	-44(%rsp), %dl
	movb	%dl, -45(%rdi)
	movb	-43(%rsp), %dl
	movb	%dl, -41(%rdi)
	movb	-42(%rsp), %dl
	movb	%dl, -37(%rdi)
	movb	-41(%rsp), %dl
	movb	%dl, -33(%rdi)
	movb	-40(%rsp), %dl
	movb	%dl, -29(%rdi)
	movb	-39(%rsp), %dl
	movb	%dl, -25(%rdi)
	movb	-38(%rsp), %dl
	movb	%dl, -21(%rdi)
	movb	-37(%rsp), %dl
	movb	%dl, -17(%rdi)
	movb	-36(%rsp), %dl
	movb	%dl, -13(%rdi)
	movb	-35(%rsp), %dl
	movb	%dl, -9(%rdi)
	movb	-34(%rsp), %dl
	movb	%dl, -5(%rdi)
	movb	-33(%rsp), %dl
	punpcklbw	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3],xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	movb	%dl, -1(%rdi)
	movdqu	%xmm5, -63(%rdi)
	movb	-12(%rsp), %dl
	movb	%dl, -44(%rdi)
	movb	-11(%rsp), %dl
	movb	%dl, -40(%rdi)
	movb	-10(%rsp), %dl
	movb	%dl, -36(%rdi)
	movb	-9(%rsp), %dl
	movb	%dl, -32(%rdi)
	movb	-8(%rsp), %dl
	movb	%dl, -28(%rdi)
	movb	-7(%rsp), %dl
	movb	%dl, -24(%rdi)
	movb	-6(%rsp), %dl
	movb	%dl, -20(%rdi)
	movb	-5(%rsp), %dl
	movb	%dl, -16(%rdi)
	movb	-4(%rsp), %dl
	movb	%dl, -12(%rdi)
	movb	-3(%rsp), %dl
	movb	%dl, -8(%rdi)
	movb	-2(%rsp), %dl
	movb	%dl, -4(%rdi)
	movb	-1(%rsp), %dl
	addq	$16, %r10
	addq	$16, %r11
	movb	%dl, (%rdi)
	addq	$16, %rbx
	addq	$16, %r14
	addq	$64, %rdi
	addq	$-16, %rcx
	jne	.LBB8_9
# BB#10:
	movq	-80(%rsp), %rdi         # 8-byte Reload
	movl	%r9d, %ecx
	movq	%rax, %rdx
	movq	-120(%rsp), %rax        # 8-byte Reload
	jmp	.LBB8_11
.LBB8_2:
	xorl	%edx, %edx
	jmp	.LBB8_11
.LBB8_4:
	movq	-120(%rsp), %rax        # 8-byte Reload
	xorl	%edx, %edx
.LBB8_11:                               # %middle.block
	cmpq	%rdx, %rax
	je	.LBB8_14
# BB#12:                                # %for.body.preheader
	incl	%ecx
	.align	16, 0x90
.LBB8_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r15), %bpl
	movb	(%rsi), %r11b
	movb	(%r12), %r9b
	movb	(%r8), %r10b
	movb	%r9b, %al
	shrb	$4, %al
	movb	%bpl, %r14b
	andb	$15, %r14b
	xorb	%al, %r14b
	xorb	%r14b, %bpl
	shlb	$4, %r14b
	xorb	%r9b, %r14b
	movb	%r10b, %al
	shrb	$4, %al
	movb	%r11b, %bl
	andb	$15, %bl
	xorb	%al, %bl
	xorb	%bl, %r11b
	shlb	$4, %bl
	xorb	%r10b, %bl
	movb	%r11b, %al
	shrb	$2, %al
	xorb	%bpl, %al
	andb	$51, %al
	xorb	%al, %bpl
	shlb	$2, %al
	xorb	%r11b, %al
	movb	%bl, %dl
	shrb	$2, %dl
	xorb	%r14b, %dl
	andb	$51, %dl
	xorb	%dl, %r14b
	shlb	$2, %dl
	xorb	%bl, %dl
	movb	%bpl, (%rdi)
	movb	%al, 1(%rdi)
	movb	%r14b, 2(%rdi)
	movb	%dl, 3(%rdi)
	incq	%r15
	incq	%rsi
	incq	%r12
	incq	%r8
	decl	%ecx
	addq	$4, %rdi
	cmpl	$1, %ecx
	jg	.LBB8_13
.LBB8_14:                               # %for.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	flip4x2, .Lfunc_end8-flip4x2
	.cfi_endproc

	.align	16, 0x90
	.type	flip4x4,@function
flip4x4:                                # @flip4x4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	testl	%ecx, %ecx
	jle	.LBB9_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %r9
	movq	24(%rsi), %r8
	addq	%r9, %r8
	movq	16(%rsi), %r10
	addq	%r9, %r10
	movq	8(%rsi), %r11
	addq	%r9, %r11
	addq	(%rsi), %r9
	incl	%ecx
	.align	16, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r9), %bpl
	movb	(%r11), %bl
	movb	(%r10), %sil
	movb	(%r8), %r14b
	movb	%bpl, %dl
	andb	$-16, %dl
	movb	%bl, %al
	shrb	$4, %al
	orb	%dl, %al
	movb	%al, (%rdi)
	movb	%sil, %al
	andb	$-16, %al
	movb	%r14b, %dl
	shrb	$4, %dl
	orb	%al, %dl
	movb	%dl, 1(%rdi)
	shlb	$4, %bpl
	andb	$15, %bl
	orb	%bpl, %bl
	movb	%bl, 2(%rdi)
	shlb	$4, %sil
	andb	$15, %r14b
	orb	%sil, %r14b
	movb	%r14b, 3(%rdi)
	incq	%r9
	incq	%r11
	incq	%r10
	incq	%r8
	decl	%ecx
	addq	$4, %rdi
	cmpl	$1, %ecx
	jg	.LBB9_2
.LBB9_3:                                # %for.end
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	flip4x4, .Lfunc_end9-flip4x4
	.cfi_endproc

	.align	16, 0x90
	.type	flip4x8,@function
flip4x8:                                # @flip4x8
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jle	.LBB10_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %r9
	movq	24(%rsi), %r8
	addq	%r9, %r8
	movq	16(%rsi), %r10
	addq	%r9, %r10
	movq	8(%rsi), %rax
	addq	%r9, %rax
	addq	(%rsi), %r9
	incl	%ecx
	.align	16, 0x90
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r9), %dl
	movb	%dl, (%rdi)
	movb	(%rax), %dl
	movb	%dl, 1(%rdi)
	movb	(%r10), %dl
	movb	%dl, 2(%rdi)
	movb	(%r8), %dl
	movb	%dl, 3(%rdi)
	incq	%r9
	incq	%rax
	incq	%r10
	incq	%r8
	decl	%ecx
	addq	$4, %rdi
	cmpl	$1, %ecx
	jg	.LBB10_2
.LBB10_3:                               # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	flip4x8, .Lfunc_end10-flip4x8
	.cfi_endproc

	.align	16, 0x90
	.type	flip4x12,@function
flip4x12:                               # @flip4x12
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 48
.Ltmp51:
	.cfi_offset %rbx, -48
.Ltmp52:
	.cfi_offset %r12, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	testl	%ecx, %ecx
	jle	.LBB11_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %r8
	addq	$2, %r8
	movq	(%rsi), %r9
	addq	%r8, %r9
	movq	8(%rsi), %r10
	addq	%r8, %r10
	movq	16(%rsi), %r11
	addq	%r8, %r11
	addq	24(%rsi), %r8
	addl	$3, %ecx
	.align	16, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	-2(%r9), %bpl
	movb	-1(%r9), %r14b
	movb	-1(%r10), %r12b
	movb	-1(%r11), %sil
	movb	-1(%r8), %r15b
	movb	%bpl, (%rdi)
	movb	-2(%r10), %dl
	movb	%r14b, %al
	andb	$-16, %al
	movb	%dl, %bl
	shrb	$4, %bl
	orb	%al, %bl
	movb	%bl, 1(%rdi)
	shlb	$4, %dl
	movb	%r12b, %al
	shrb	$4, %al
	orb	%dl, %al
	movb	%al, 2(%rdi)
	movb	-2(%r11), %al
	movb	%al, 3(%rdi)
	movb	-2(%r8), %al
	movb	%sil, %dl
	andb	$-16, %dl
	movb	%al, %bl
	shrb	$4, %bl
	orb	%dl, %bl
	movb	%bl, 4(%rdi)
	shlb	$4, %al
	movb	%r15b, %dl
	shrb	$4, %dl
	orb	%al, %dl
	movb	%dl, 5(%rdi)
	movb	(%r9), %al
	shlb	$4, %r14b
	movb	%al, %dl
	shrb	$4, %dl
	orb	%r14b, %dl
	movb	%dl, 6(%rdi)
	shlb	$4, %al
	andb	$15, %r12b
	orb	%al, %r12b
	movb	%r12b, 7(%rdi)
	movb	(%r10), %al
	movb	%al, 8(%rdi)
	movb	(%r11), %al
	shlb	$4, %sil
	movb	%al, %dl
	shrb	$4, %dl
	orb	%sil, %dl
	movb	%dl, 9(%rdi)
	shlb	$4, %al
	andb	$15, %r15b
	orb	%al, %r15b
	movb	%r15b, 10(%rdi)
	movb	(%r8), %al
	movb	%al, 11(%rdi)
	addq	$3, %r9
	addq	$3, %r10
	addq	$3, %r11
	addq	$3, %r8
	addl	$-3, %ecx
	addq	$12, %rdi
	cmpl	$3, %ecx
	jg	.LBB11_2
.LBB11_3:                               # %for.end
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	flip4x12, .Lfunc_end11-flip4x12
	.cfi_endproc

	.align	16, 0x90
	.type	flipN_fail,@function
flipN_fail:                             # @flipN_fail
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end12:
	.size	flipN_fail, .Lfunc_end12-flipN_fail
	.cfi_endproc

	.align	16, 0x90
	.type	flipNx1to8,@function
flipNx1to8:                             # @flipNx1to8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 56
.Ltmp62:
	.cfi_offset %rbx, -56
.Ltmp63:
	.cfi_offset %r12, -48
.Ltmp64:
	.cfi_offset %r13, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movl	%r8d, -8(%rsp)          # 4-byte Spill
	movl	%ecx, %ebp
	movl	%ebp, -12(%rsp)         # 4-byte Spill
	movl	$1, %ebx
	movb	%r9b, %cl
	shll	%cl, %ebx
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jle	.LBB13_18
# BB#1:                                 # %for.cond.5.preheader.lr.ph
	decl	%ebx
	shll	$3, -12(%rsp)           # 4-byte Folded Spill
	movslq	%edx, %r14
	movl	$8, %eax
	movl	%r9d, -4(%rsp)          # 4-byte Spill
	subl	%r9d, %eax
	movl	%eax, -16(%rsp)         # 4-byte Spill
	movl	%r9d, %ebp
	sarl	$2, %ebp
	movslq	-8(%rsp), %r12          # 4-byte Folded Reload
	xorl	%r9d, %r9d
	xorl	%r13d, %r13d
	xorl	%edx, %edx
.LBB13_2:                               # %for.cond.5.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
	cmpl	$0, -8(%rsp)            # 4-byte Folded Reload
	jle	.LBB13_15
# BB#3:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	%r9d, %eax
	sarl	$3, %eax
	movslq	%eax, %r10
	movl	%r9d, %eax
	andl	$7, %eax
	movl	-16(%rsp), %r11d        # 4-byte Reload
	subl	%eax, %r11d
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB13_4:                               # %for.body.8
                                        #   Parent Loop BB13_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%r8,8), %rax
	addq	%r14, %rax
	movzbl	(%r10,%rax), %r15d
	movb	%r11b, %cl
	shrl	%cl, %r15d
	andl	%ebx, %r15d
	cmpl	$2, %ebp
	je	.LBB13_13
# BB#5:                                 # %for.body.8
                                        #   in Loop: Header=BB13_4 Depth=2
	cmpl	$1, %ebp
	jne	.LBB13_6
# BB#10:                                # %sw.bb.32
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	%edx, %eax
	xorl	$4, %eax
	cmpl	$4, %edx
	jne	.LBB13_11
# BB#12:                                # %if.else.37
                                        #   in Loop: Header=BB13_4 Depth=2
	movzbl	%r13b, %ecx
	orl	%ecx, %r15d
	movb	%r15b, (%rdi)
	incq	%rdi
	movl	%eax, %edx
	jmp	.LBB13_14
	.align	16, 0x90
.LBB13_13:                              # %sw.bb.45
                                        #   in Loop: Header=BB13_4 Depth=2
	movb	%r15b, (%rdi)
	incq	%rdi
	jmp	.LBB13_14
	.align	16, 0x90
.LBB13_6:                               # %for.body.8
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	$-15, %eax
	testl	%ebp, %ebp
	jne	.LBB13_18
# BB#7:                                 # %sw.bb
                                        #   in Loop: Header=BB13_4 Depth=2
	addl	-4(%rsp), %edx          # 4-byte Folded Reload
	cmpl	$8, %edx
	jne	.LBB13_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB13_4 Depth=2
	movzbl	%r13b, %eax
	orl	%eax, %r15d
	movb	%r15b, (%rdi)
	incq	%rdi
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	jmp	.LBB13_14
.LBB13_11:                              # %if.then.34
                                        #   in Loop: Header=BB13_4 Depth=2
	shll	$4, %r15d
	movl	%eax, %edx
	movb	%r15b, %r13b
	jmp	.LBB13_14
.LBB13_9:                               # %if.else
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	$8, %ecx
	subl	%edx, %ecx
	shll	%cl, %r15d
	movzbl	%r13b, %r13d
	orl	%r15d, %r13d
	.align	16, 0x90
.LBB13_14:                              # %for.inc
                                        #   in Loop: Header=BB13_4 Depth=2
	incq	%r8
	cmpq	%r12, %r8
	jl	.LBB13_4
.LBB13_15:                              # %for.inc.49
                                        #   in Loop: Header=BB13_2 Depth=1
	addl	-4(%rsp), %r9d          # 4-byte Folded Reload
	cmpl	-12(%rsp), %r9d         # 4-byte Folded Reload
	jl	.LBB13_2
# BB#16:                                # %for.end.51
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB13_18
# BB#17:                                # %if.then.54
	movzbl	%r13b, %esi
	movzbl	(%rdi), %ebp
	movl	$255, %ebx
	movb	%dl, %cl
	shrl	%cl, %ebx
	andl	%ebp, %ebx
	orl	%esi, %ebx
	movb	%bl, (%rdi)
.LBB13_18:                              # %cleanup.62
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	flipNx1to8, .Lfunc_end13-flipNx1to8
	.cfi_endproc

	.align	16, 0x90
	.type	flipNx12,@function
flipNx12:                               # @flipNx12
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp71:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp72:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 56
.Ltmp74:
	.cfi_offset %rbx, -56
.Ltmp75:
	.cfi_offset %r12, -48
.Ltmp76:
	.cfi_offset %r13, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	testl	%ecx, %ecx
	jle	.LBB14_14
# BB#1:                                 # %for.cond.5.preheader.lr.ph
	shll	$3, %ecx
	movslq	%edx, %r10
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB14_2:                               # %for.cond.5.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_4 Depth 2
	testl	%r8d, %r8d
	jle	.LBB14_11
# BB#3:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB14_2 Depth=1
	movl	%r9d, %eax
	sarl	$3, %eax
	movslq	%eax, %r15
	movl	%r9d, %r14d
	andl	$4, %r14d
	movl	%r8d, %r13d
	movq	%rsi, %rbx
	.align	16, 0x90
.LBB14_4:                               # %for.body.8
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rdx
	addq	%r10, %rdx
	testl	%r14d, %r14d
	movzbl	(%r15,%rdx), %eax
	movzbl	1(%r15,%rdx), %ebp
	jne	.LBB14_5
# BB#6:                                 # %cond.false.19
                                        #   in Loop: Header=BB14_4 Depth=2
	shll	$4, %eax
	shrl	$4, %ebp
	jmp	.LBB14_7
	.align	16, 0x90
.LBB14_5:                               # %cond.true.14
                                        #   in Loop: Header=BB14_4 Depth=2
	andl	$15, %eax
	shll	$8, %eax
.LBB14_7:                               # %cond.end.26
                                        #   in Loop: Header=BB14_4 Depth=2
	orl	%eax, %ebp
	cmpl	$4, %r12d
	jne	.LBB14_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB14_4 Depth=2
	movzbl	%r11b, %eax
	movl	%ebp, %edx
	shrl	$8, %edx
	orl	%eax, %edx
	movb	%dl, (%rdi)
	movb	%bpl, 1(%rdi)
	addq	$2, %rdi
	jmp	.LBB14_10
	.align	16, 0x90
.LBB14_8:                               # %if.then
                                        #   in Loop: Header=BB14_4 Depth=2
	movl	%ebp, %eax
	shrl	$4, %eax
	movb	%al, (%rdi)
	incq	%rdi
	shll	$4, %ebp
	movb	%bpl, %r11b
.LBB14_10:                              # %do.end
                                        #   in Loop: Header=BB14_4 Depth=2
	xorl	$4, %r12d
	addq	$8, %rbx
	decl	%r13d
	jne	.LBB14_4
.LBB14_11:                              # %for.inc.42
                                        #   in Loop: Header=BB14_2 Depth=1
	addl	$12, %r9d
	cmpl	%ecx, %r9d
	jl	.LBB14_2
# BB#12:                                # %for.end.43
	testl	%r12d, %r12d
	je	.LBB14_14
# BB#13:                                # %if.then.46
	movzbl	%r11b, %eax
	movzbl	(%rdi), %edx
	movl	$255, %esi
	movb	%r12b, %cl
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movb	%sil, (%rdi)
.LBB14_14:                              # %if.end.53
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	flipNx12, .Lfunc_end14-flipNx12
	.cfi_endproc

	.type	image_flip3_procs,@object # @image_flip3_procs
	.section	.rodata,"a",@progbits
	.align	16
image_flip3_procs:
	.quad	flip_fail
	.quad	flip3x1
	.quad	flip3x2
	.quad	flip_fail
	.quad	flip3x4
	.quad	flip_fail
	.quad	flip_fail
	.quad	flip_fail
	.quad	flip3x8
	.quad	flip_fail
	.quad	flip_fail
	.quad	flip_fail
	.quad	flip3x12
	.size	image_flip3_procs, 104

	.type	image_flip4_procs,@object # @image_flip4_procs
	.align	16
image_flip4_procs:
	.quad	flip_fail
	.quad	flip4x1
	.quad	flip4x2
	.quad	flip_fail
	.quad	flip4x4
	.quad	flip_fail
	.quad	flip_fail
	.quad	flip_fail
	.quad	flip4x8
	.quad	flip_fail
	.quad	flip_fail
	.quad	flip_fail
	.quad	flip4x12
	.size	image_flip4_procs, 104

	.type	image_flipN_procs,@object # @image_flipN_procs
	.align	16
image_flipN_procs:
	.quad	flipN_fail
	.quad	flipNx1to8
	.quad	flipNx1to8
	.quad	flipN_fail
	.quad	flipNx1to8
	.quad	flipN_fail
	.quad	flipN_fail
	.quad	flipN_fail
	.quad	flipNx1to8
	.quad	flipN_fail
	.quad	flipN_fail
	.quad	flipN_fail
	.quad	flipNx12
	.size	image_flipN_procs, 104

	.type	flip3x1.tab3x1,@object  # @flip3x1.tab3x1
	.align	16
flip3x1.tab3x1:
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	32                      # 0x20
	.long	36                      # 0x24
	.long	256                     # 0x100
	.long	260                     # 0x104
	.long	288                     # 0x120
	.long	292                     # 0x124
	.long	2048                    # 0x800
	.long	2052                    # 0x804
	.long	2080                    # 0x820
	.long	2084                    # 0x824
	.long	2304                    # 0x900
	.long	2308                    # 0x904
	.long	2336                    # 0x920
	.long	2340                    # 0x924
	.long	16384                   # 0x4000
	.long	16388                   # 0x4004
	.long	16416                   # 0x4020
	.long	16420                   # 0x4024
	.long	16640                   # 0x4100
	.long	16644                   # 0x4104
	.long	16672                   # 0x4120
	.long	16676                   # 0x4124
	.long	18432                   # 0x4800
	.long	18436                   # 0x4804
	.long	18464                   # 0x4820
	.long	18468                   # 0x4824
	.long	18688                   # 0x4900
	.long	18692                   # 0x4904
	.long	18720                   # 0x4920
	.long	18724                   # 0x4924
	.long	131072                  # 0x20000
	.long	131076                  # 0x20004
	.long	131104                  # 0x20020
	.long	131108                  # 0x20024
	.long	131328                  # 0x20100
	.long	131332                  # 0x20104
	.long	131360                  # 0x20120
	.long	131364                  # 0x20124
	.long	133120                  # 0x20800
	.long	133124                  # 0x20804
	.long	133152                  # 0x20820
	.long	133156                  # 0x20824
	.long	133376                  # 0x20900
	.long	133380                  # 0x20904
	.long	133408                  # 0x20920
	.long	133412                  # 0x20924
	.long	147456                  # 0x24000
	.long	147460                  # 0x24004
	.long	147488                  # 0x24020
	.long	147492                  # 0x24024
	.long	147712                  # 0x24100
	.long	147716                  # 0x24104
	.long	147744                  # 0x24120
	.long	147748                  # 0x24124
	.long	149504                  # 0x24800
	.long	149508                  # 0x24804
	.long	149536                  # 0x24820
	.long	149540                  # 0x24824
	.long	149760                  # 0x24900
	.long	149764                  # 0x24904
	.long	149792                  # 0x24920
	.long	149796                  # 0x24924
	.long	1048576                 # 0x100000
	.long	1048580                 # 0x100004
	.long	1048608                 # 0x100020
	.long	1048612                 # 0x100024
	.long	1048832                 # 0x100100
	.long	1048836                 # 0x100104
	.long	1048864                 # 0x100120
	.long	1048868                 # 0x100124
	.long	1050624                 # 0x100800
	.long	1050628                 # 0x100804
	.long	1050656                 # 0x100820
	.long	1050660                 # 0x100824
	.long	1050880                 # 0x100900
	.long	1050884                 # 0x100904
	.long	1050912                 # 0x100920
	.long	1050916                 # 0x100924
	.long	1064960                 # 0x104000
	.long	1064964                 # 0x104004
	.long	1064992                 # 0x104020
	.long	1064996                 # 0x104024
	.long	1065216                 # 0x104100
	.long	1065220                 # 0x104104
	.long	1065248                 # 0x104120
	.long	1065252                 # 0x104124
	.long	1067008                 # 0x104800
	.long	1067012                 # 0x104804
	.long	1067040                 # 0x104820
	.long	1067044                 # 0x104824
	.long	1067264                 # 0x104900
	.long	1067268                 # 0x104904
	.long	1067296                 # 0x104920
	.long	1067300                 # 0x104924
	.long	1179648                 # 0x120000
	.long	1179652                 # 0x120004
	.long	1179680                 # 0x120020
	.long	1179684                 # 0x120024
	.long	1179904                 # 0x120100
	.long	1179908                 # 0x120104
	.long	1179936                 # 0x120120
	.long	1179940                 # 0x120124
	.long	1181696                 # 0x120800
	.long	1181700                 # 0x120804
	.long	1181728                 # 0x120820
	.long	1181732                 # 0x120824
	.long	1181952                 # 0x120900
	.long	1181956                 # 0x120904
	.long	1181984                 # 0x120920
	.long	1181988                 # 0x120924
	.long	1196032                 # 0x124000
	.long	1196036                 # 0x124004
	.long	1196064                 # 0x124020
	.long	1196068                 # 0x124024
	.long	1196288                 # 0x124100
	.long	1196292                 # 0x124104
	.long	1196320                 # 0x124120
	.long	1196324                 # 0x124124
	.long	1198080                 # 0x124800
	.long	1198084                 # 0x124804
	.long	1198112                 # 0x124820
	.long	1198116                 # 0x124824
	.long	1198336                 # 0x124900
	.long	1198340                 # 0x124904
	.long	1198368                 # 0x124920
	.long	1198372                 # 0x124924
	.long	8388608                 # 0x800000
	.long	8388612                 # 0x800004
	.long	8388640                 # 0x800020
	.long	8388644                 # 0x800024
	.long	8388864                 # 0x800100
	.long	8388868                 # 0x800104
	.long	8388896                 # 0x800120
	.long	8388900                 # 0x800124
	.long	8390656                 # 0x800800
	.long	8390660                 # 0x800804
	.long	8390688                 # 0x800820
	.long	8390692                 # 0x800824
	.long	8390912                 # 0x800900
	.long	8390916                 # 0x800904
	.long	8390944                 # 0x800920
	.long	8390948                 # 0x800924
	.long	8404992                 # 0x804000
	.long	8404996                 # 0x804004
	.long	8405024                 # 0x804020
	.long	8405028                 # 0x804024
	.long	8405248                 # 0x804100
	.long	8405252                 # 0x804104
	.long	8405280                 # 0x804120
	.long	8405284                 # 0x804124
	.long	8407040                 # 0x804800
	.long	8407044                 # 0x804804
	.long	8407072                 # 0x804820
	.long	8407076                 # 0x804824
	.long	8407296                 # 0x804900
	.long	8407300                 # 0x804904
	.long	8407328                 # 0x804920
	.long	8407332                 # 0x804924
	.long	8519680                 # 0x820000
	.long	8519684                 # 0x820004
	.long	8519712                 # 0x820020
	.long	8519716                 # 0x820024
	.long	8519936                 # 0x820100
	.long	8519940                 # 0x820104
	.long	8519968                 # 0x820120
	.long	8519972                 # 0x820124
	.long	8521728                 # 0x820800
	.long	8521732                 # 0x820804
	.long	8521760                 # 0x820820
	.long	8521764                 # 0x820824
	.long	8521984                 # 0x820900
	.long	8521988                 # 0x820904
	.long	8522016                 # 0x820920
	.long	8522020                 # 0x820924
	.long	8536064                 # 0x824000
	.long	8536068                 # 0x824004
	.long	8536096                 # 0x824020
	.long	8536100                 # 0x824024
	.long	8536320                 # 0x824100
	.long	8536324                 # 0x824104
	.long	8536352                 # 0x824120
	.long	8536356                 # 0x824124
	.long	8538112                 # 0x824800
	.long	8538116                 # 0x824804
	.long	8538144                 # 0x824820
	.long	8538148                 # 0x824824
	.long	8538368                 # 0x824900
	.long	8538372                 # 0x824904
	.long	8538400                 # 0x824920
	.long	8538404                 # 0x824924
	.long	9437184                 # 0x900000
	.long	9437188                 # 0x900004
	.long	9437216                 # 0x900020
	.long	9437220                 # 0x900024
	.long	9437440                 # 0x900100
	.long	9437444                 # 0x900104
	.long	9437472                 # 0x900120
	.long	9437476                 # 0x900124
	.long	9439232                 # 0x900800
	.long	9439236                 # 0x900804
	.long	9439264                 # 0x900820
	.long	9439268                 # 0x900824
	.long	9439488                 # 0x900900
	.long	9439492                 # 0x900904
	.long	9439520                 # 0x900920
	.long	9439524                 # 0x900924
	.long	9453568                 # 0x904000
	.long	9453572                 # 0x904004
	.long	9453600                 # 0x904020
	.long	9453604                 # 0x904024
	.long	9453824                 # 0x904100
	.long	9453828                 # 0x904104
	.long	9453856                 # 0x904120
	.long	9453860                 # 0x904124
	.long	9455616                 # 0x904800
	.long	9455620                 # 0x904804
	.long	9455648                 # 0x904820
	.long	9455652                 # 0x904824
	.long	9455872                 # 0x904900
	.long	9455876                 # 0x904904
	.long	9455904                 # 0x904920
	.long	9455908                 # 0x904924
	.long	9568256                 # 0x920000
	.long	9568260                 # 0x920004
	.long	9568288                 # 0x920020
	.long	9568292                 # 0x920024
	.long	9568512                 # 0x920100
	.long	9568516                 # 0x920104
	.long	9568544                 # 0x920120
	.long	9568548                 # 0x920124
	.long	9570304                 # 0x920800
	.long	9570308                 # 0x920804
	.long	9570336                 # 0x920820
	.long	9570340                 # 0x920824
	.long	9570560                 # 0x920900
	.long	9570564                 # 0x920904
	.long	9570592                 # 0x920920
	.long	9570596                 # 0x920924
	.long	9584640                 # 0x924000
	.long	9584644                 # 0x924004
	.long	9584672                 # 0x924020
	.long	9584676                 # 0x924024
	.long	9584896                 # 0x924100
	.long	9584900                 # 0x924104
	.long	9584928                 # 0x924120
	.long	9584932                 # 0x924124
	.long	9586688                 # 0x924800
	.long	9586692                 # 0x924804
	.long	9586720                 # 0x924820
	.long	9586724                 # 0x924824
	.long	9586944                 # 0x924900
	.long	9586948                 # 0x924904
	.long	9586976                 # 0x924920
	.long	9586980                 # 0x924924
	.size	flip3x1.tab3x1, 1024

	.type	flip3x2.tab3x2,@object  # @flip3x2.tab3x2
	.align	16
flip3x2.tab3x2:
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	32                      # 0x20
	.long	48                      # 0x30
	.long	1024                    # 0x400
	.long	1040                    # 0x410
	.long	1056                    # 0x420
	.long	1072                    # 0x430
	.long	2048                    # 0x800
	.long	2064                    # 0x810
	.long	2080                    # 0x820
	.long	2096                    # 0x830
	.long	3072                    # 0xc00
	.long	3088                    # 0xc10
	.long	3104                    # 0xc20
	.long	3120                    # 0xc30
	.long	65536                   # 0x10000
	.long	65552                   # 0x10010
	.long	65568                   # 0x10020
	.long	65584                   # 0x10030
	.long	66560                   # 0x10400
	.long	66576                   # 0x10410
	.long	66592                   # 0x10420
	.long	66608                   # 0x10430
	.long	67584                   # 0x10800
	.long	67600                   # 0x10810
	.long	67616                   # 0x10820
	.long	67632                   # 0x10830
	.long	68608                   # 0x10c00
	.long	68624                   # 0x10c10
	.long	68640                   # 0x10c20
	.long	68656                   # 0x10c30
	.long	131072                  # 0x20000
	.long	131088                  # 0x20010
	.long	131104                  # 0x20020
	.long	131120                  # 0x20030
	.long	132096                  # 0x20400
	.long	132112                  # 0x20410
	.long	132128                  # 0x20420
	.long	132144                  # 0x20430
	.long	133120                  # 0x20800
	.long	133136                  # 0x20810
	.long	133152                  # 0x20820
	.long	133168                  # 0x20830
	.long	134144                  # 0x20c00
	.long	134160                  # 0x20c10
	.long	134176                  # 0x20c20
	.long	134192                  # 0x20c30
	.long	196608                  # 0x30000
	.long	196624                  # 0x30010
	.long	196640                  # 0x30020
	.long	196656                  # 0x30030
	.long	197632                  # 0x30400
	.long	197648                  # 0x30410
	.long	197664                  # 0x30420
	.long	197680                  # 0x30430
	.long	198656                  # 0x30800
	.long	198672                  # 0x30810
	.long	198688                  # 0x30820
	.long	198704                  # 0x30830
	.long	199680                  # 0x30c00
	.long	199696                  # 0x30c10
	.long	199712                  # 0x30c20
	.long	199728                  # 0x30c30
	.long	4194304                 # 0x400000
	.long	4194320                 # 0x400010
	.long	4194336                 # 0x400020
	.long	4194352                 # 0x400030
	.long	4195328                 # 0x400400
	.long	4195344                 # 0x400410
	.long	4195360                 # 0x400420
	.long	4195376                 # 0x400430
	.long	4196352                 # 0x400800
	.long	4196368                 # 0x400810
	.long	4196384                 # 0x400820
	.long	4196400                 # 0x400830
	.long	4197376                 # 0x400c00
	.long	4197392                 # 0x400c10
	.long	4197408                 # 0x400c20
	.long	4197424                 # 0x400c30
	.long	4259840                 # 0x410000
	.long	4259856                 # 0x410010
	.long	4259872                 # 0x410020
	.long	4259888                 # 0x410030
	.long	4260864                 # 0x410400
	.long	4260880                 # 0x410410
	.long	4260896                 # 0x410420
	.long	4260912                 # 0x410430
	.long	4261888                 # 0x410800
	.long	4261904                 # 0x410810
	.long	4261920                 # 0x410820
	.long	4261936                 # 0x410830
	.long	4262912                 # 0x410c00
	.long	4262928                 # 0x410c10
	.long	4262944                 # 0x410c20
	.long	4262960                 # 0x410c30
	.long	4325376                 # 0x420000
	.long	4325392                 # 0x420010
	.long	4325408                 # 0x420020
	.long	4325424                 # 0x420030
	.long	4326400                 # 0x420400
	.long	4326416                 # 0x420410
	.long	4326432                 # 0x420420
	.long	4326448                 # 0x420430
	.long	4327424                 # 0x420800
	.long	4327440                 # 0x420810
	.long	4327456                 # 0x420820
	.long	4327472                 # 0x420830
	.long	4328448                 # 0x420c00
	.long	4328464                 # 0x420c10
	.long	4328480                 # 0x420c20
	.long	4328496                 # 0x420c30
	.long	4390912                 # 0x430000
	.long	4390928                 # 0x430010
	.long	4390944                 # 0x430020
	.long	4390960                 # 0x430030
	.long	4391936                 # 0x430400
	.long	4391952                 # 0x430410
	.long	4391968                 # 0x430420
	.long	4391984                 # 0x430430
	.long	4392960                 # 0x430800
	.long	4392976                 # 0x430810
	.long	4392992                 # 0x430820
	.long	4393008                 # 0x430830
	.long	4393984                 # 0x430c00
	.long	4394000                 # 0x430c10
	.long	4394016                 # 0x430c20
	.long	4394032                 # 0x430c30
	.long	8388608                 # 0x800000
	.long	8388624                 # 0x800010
	.long	8388640                 # 0x800020
	.long	8388656                 # 0x800030
	.long	8389632                 # 0x800400
	.long	8389648                 # 0x800410
	.long	8389664                 # 0x800420
	.long	8389680                 # 0x800430
	.long	8390656                 # 0x800800
	.long	8390672                 # 0x800810
	.long	8390688                 # 0x800820
	.long	8390704                 # 0x800830
	.long	8391680                 # 0x800c00
	.long	8391696                 # 0x800c10
	.long	8391712                 # 0x800c20
	.long	8391728                 # 0x800c30
	.long	8454144                 # 0x810000
	.long	8454160                 # 0x810010
	.long	8454176                 # 0x810020
	.long	8454192                 # 0x810030
	.long	8455168                 # 0x810400
	.long	8455184                 # 0x810410
	.long	8455200                 # 0x810420
	.long	8455216                 # 0x810430
	.long	8456192                 # 0x810800
	.long	8456208                 # 0x810810
	.long	8456224                 # 0x810820
	.long	8456240                 # 0x810830
	.long	8457216                 # 0x810c00
	.long	8457232                 # 0x810c10
	.long	8457248                 # 0x810c20
	.long	8457264                 # 0x810c30
	.long	8519680                 # 0x820000
	.long	8519696                 # 0x820010
	.long	8519712                 # 0x820020
	.long	8519728                 # 0x820030
	.long	8520704                 # 0x820400
	.long	8520720                 # 0x820410
	.long	8520736                 # 0x820420
	.long	8520752                 # 0x820430
	.long	8521728                 # 0x820800
	.long	8521744                 # 0x820810
	.long	8521760                 # 0x820820
	.long	8521776                 # 0x820830
	.long	8522752                 # 0x820c00
	.long	8522768                 # 0x820c10
	.long	8522784                 # 0x820c20
	.long	8522800                 # 0x820c30
	.long	8585216                 # 0x830000
	.long	8585232                 # 0x830010
	.long	8585248                 # 0x830020
	.long	8585264                 # 0x830030
	.long	8586240                 # 0x830400
	.long	8586256                 # 0x830410
	.long	8586272                 # 0x830420
	.long	8586288                 # 0x830430
	.long	8587264                 # 0x830800
	.long	8587280                 # 0x830810
	.long	8587296                 # 0x830820
	.long	8587312                 # 0x830830
	.long	8588288                 # 0x830c00
	.long	8588304                 # 0x830c10
	.long	8588320                 # 0x830c20
	.long	8588336                 # 0x830c30
	.long	12582912                # 0xc00000
	.long	12582928                # 0xc00010
	.long	12582944                # 0xc00020
	.long	12582960                # 0xc00030
	.long	12583936                # 0xc00400
	.long	12583952                # 0xc00410
	.long	12583968                # 0xc00420
	.long	12583984                # 0xc00430
	.long	12584960                # 0xc00800
	.long	12584976                # 0xc00810
	.long	12584992                # 0xc00820
	.long	12585008                # 0xc00830
	.long	12585984                # 0xc00c00
	.long	12586000                # 0xc00c10
	.long	12586016                # 0xc00c20
	.long	12586032                # 0xc00c30
	.long	12648448                # 0xc10000
	.long	12648464                # 0xc10010
	.long	12648480                # 0xc10020
	.long	12648496                # 0xc10030
	.long	12649472                # 0xc10400
	.long	12649488                # 0xc10410
	.long	12649504                # 0xc10420
	.long	12649520                # 0xc10430
	.long	12650496                # 0xc10800
	.long	12650512                # 0xc10810
	.long	12650528                # 0xc10820
	.long	12650544                # 0xc10830
	.long	12651520                # 0xc10c00
	.long	12651536                # 0xc10c10
	.long	12651552                # 0xc10c20
	.long	12651568                # 0xc10c30
	.long	12713984                # 0xc20000
	.long	12714000                # 0xc20010
	.long	12714016                # 0xc20020
	.long	12714032                # 0xc20030
	.long	12715008                # 0xc20400
	.long	12715024                # 0xc20410
	.long	12715040                # 0xc20420
	.long	12715056                # 0xc20430
	.long	12716032                # 0xc20800
	.long	12716048                # 0xc20810
	.long	12716064                # 0xc20820
	.long	12716080                # 0xc20830
	.long	12717056                # 0xc20c00
	.long	12717072                # 0xc20c10
	.long	12717088                # 0xc20c20
	.long	12717104                # 0xc20c30
	.long	12779520                # 0xc30000
	.long	12779536                # 0xc30010
	.long	12779552                # 0xc30020
	.long	12779568                # 0xc30030
	.long	12780544                # 0xc30400
	.long	12780560                # 0xc30410
	.long	12780576                # 0xc30420
	.long	12780592                # 0xc30430
	.long	12781568                # 0xc30800
	.long	12781584                # 0xc30810
	.long	12781600                # 0xc30820
	.long	12781616                # 0xc30830
	.long	12782592                # 0xc30c00
	.long	12782608                # 0xc30c10
	.long	12782624                # 0xc30c20
	.long	12782640                # 0xc30c30
	.size	flip3x2.tab3x2, 1024


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
