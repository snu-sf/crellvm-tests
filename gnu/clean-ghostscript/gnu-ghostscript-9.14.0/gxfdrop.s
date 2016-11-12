	.text
	.file	"gxfdrop.bc"
	.globl	init_section
	.align	16, 0x90
	.type	init_section,@function
init_section:                           # @init_section
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %ecx
	subl	%esi, %ecx
	jle	.LBB0_6
# BB#1:                                 # %for.body.lr.ph
	movslq	%esi, %rax
	leal	-1(%rdx), %r8d
	testb	$1, %cl
	je	.LBB0_3
# BB#2:                                 # %for.body.prol
	movw	$256, 4(%rdi,%rax,8)    # imm = 0x100
	movw	$0, 6(%rdi,%rax,8)
	movw	$-1, 2(%rdi,%rax,8)
	movw	$-1, (%rdi,%rax,8)
	incq	%rax
.LBB0_3:                                # %for.body.lr.ph.split
	cmpl	%esi, %r8d
	je	.LBB0_6
# BB#4:                                 # %for.body.lr.ph.split.split
	subl	%eax, %edx
	leaq	14(%rdi,%rax,8), %rax
	movabsq	$1103806595071, %rcx    # imm = 0x100FFFFFFFF
	.align	16, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, -14(%rax)
	movq	%rcx, -6(%rax)
	addq	$16, %rax
	addl	$-2, %edx
	jne	.LBB0_5
.LBB0_6:                                # %for.end
	retq
.Lfunc_end0:
	.size	init_section, .Lfunc_end0-init_section
	.cfi_endproc

	.globl	free_all_margins
	.align	16, 0x90
	.type	free_all_margins,@function
free_all_margins:                       # @free_all_margins
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
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
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	368(%r14), %rsi
	movq	$0, 368(%r14)
	testq	%rsi, %rsi
	je	.LBB1_5
# BB#1:                                 # %while.body.lr.ph
	leaq	5064(%r14), %r12
	leaq	5544(%r14), %r15
	.align	16, 0x90
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rbx
	cmpq	%r12, %rsi
	jb	.LBB1_6
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%r15, %rsi
	jb	.LBB1_4
.LBB1_6:                                # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%r14), %rdi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
.LBB1_4:                                # %while.cond.backedge
                                        #   in Loop: Header=BB1_2 Depth=1
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB1_2
.LBB1_5:                                # %while.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	free_all_margins, .Lfunc_end1-free_all_margins
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI2_1:
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	256                     # 0x100
	.text
	.globl	continue_margin_common
	.align	16, 0x90
	.type	continue_margin_common,@function
continue_margin_common:                 # @continue_margin_common
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 176
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %r13d
	movq	%rcx, %r12
	movq	%rdx, %r9
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	4(%r12), %ebp
	movl	12(%r12), %r8d
	cmpl	%r13d, %ebp
	cmovll	%r13d, %ebp
	movslq	(%r14), %rax
	cmpl	%eax, %ebp
	cmovll	%eax, %ebp
	cmpl	%ebx, %r8d
	movl	%r8d, %ecx
	cmovgl	%ebx, %ecx
	movslq	%ecx, %r10
	addq	$256, %rax              # imm = 0x100
	cmpq	%rax, %r10
	cmovgel	%eax, %r10d
	cmpl	%r10d, %ebp
	jg	.LBB2_39
# BB#1:                                 # %if.then
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	movl	%r13d, %ebx
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	movq	24(%r14), %r13
	cmpl	%ebx, %ebp
	jne	.LBB2_2
# BB#10:                                # %cond.true.92
	movl	%ebp, 76(%rsp)          # 4-byte Spill
	movq	%r14, 112(%rsp)         # 8-byte Spill
	movl	32(%r9), %ebx
	movl	32(%r12), %r14d
	jmp	.LBB2_15
.LBB2_2:                                # %cond.false.56
	cmpl	12(%r9), %ebp
	jne	.LBB2_6
# BB#3:                                 # %cond.true.61
	movl	8(%r9), %ebx
	jmp	.LBB2_4
.LBB2_6:                                # %cond.false.63
	movq	%r10, 88(%rsp)          # 8-byte Spill
	movl	%ebp, %esi
	subl	4(%r9), %esi
	cmpl	24(%r9), %ebp
	movl	16(%r9), %edi
	movl	20(%r9), %ecx
	jle	.LBB2_7
# BB#9:                                 # %cond.false.73
	movl	%ecx, %edx
	movq	%r9, %rbx
	callq	fixed_mult_quo
	movq	%rbx, %r9
	movl	%eax, %ebx
	movl	12(%r12), %r8d
	jmp	.LBB2_8
.LBB2_7:                                # %cond.true.66
	imull	%edi, %esi
	addl	28(%r9), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ebx
.LBB2_8:                                # %cond.false.94
	addl	(%r9), %ebx
	movq	88(%rsp), %r10          # 8-byte Reload
.LBB2_4:                                # %cond.false.94
	cmpl	%r8d, %ebp
	jne	.LBB2_11
# BB#5:                                 # %cond.true.99
	movl	%ebp, 76(%rsp)          # 4-byte Spill
	movq	%r14, 112(%rsp)         # 8-byte Spill
	movl	8(%r12), %r14d
	jmp	.LBB2_15
.LBB2_11:                               # %cond.false.102
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movq	%r10, 88(%rsp)          # 8-byte Spill
	movq	%r9, %r15
	movq	%r14, 112(%rsp)         # 8-byte Spill
	movl	%ebp, %esi
	subl	4(%r12), %esi
	cmpl	24(%r12), %ebp
	movl	%ebp, 76(%rsp)          # 4-byte Spill
	movl	16(%r12), %edi
	jle	.LBB2_12
# BB#13:                                # %cond.false.118
	movl	20(%r12), %edx
	callq	fixed_mult_quo
	jmp	.LBB2_14
.LBB2_12:                               # %cond.true.106
	imull	%edi, %esi
	addl	28(%r12), %esi
	movl	%esi, %eax
	cltd
	idivl	20(%r12)
.LBB2_14:                               # %cond.end.127
	movl	%eax, %r14d
	movq	%r15, %r9
	movq	88(%rsp), %r10          # 8-byte Reload
	addl	(%r12), %r14d
	movq	104(%rsp), %r15         # 8-byte Reload
.LBB2_15:                               # %cond.end.134
	cmpl	100(%rsp), %r10d        # 4-byte Folded Reload
	jne	.LBB2_16
# BB#24:                                # %cond.true.183
	movq	%r10, 88(%rsp)          # 8-byte Spill
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movl	36(%r9), %r15d
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movl	36(%r12), %eax
	jmp	.LBB2_29
.LBB2_16:                               # %cond.false.139
	cmpl	12(%r9), %r10d
	jne	.LBB2_20
# BB#17:                                # %cond.true.144
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movl	8(%r9), %r15d
	jmp	.LBB2_18
.LBB2_20:                               # %cond.false.147
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movl	%r10d, %esi
	subl	4(%r9), %esi
	cmpl	24(%r9), %r10d
	movl	16(%r9), %edi
	movl	20(%r9), %ecx
	jle	.LBB2_21
# BB#23:                                # %cond.false.163
	movl	%ecx, %edx
	movq	%r9, %r15
	movq	%r10, %rbp
	callq	fixed_mult_quo
	movq	%rbp, %r10
	movq	%r15, %r9
	jmp	.LBB2_22
.LBB2_21:                               # %cond.true.151
	imull	%edi, %esi
	addl	28(%r9), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
.LBB2_22:                               # %cond.false.185
	movl	%eax, %r15d
	addl	(%r9), %r15d
.LBB2_18:                               # %cond.false.185
	cmpl	12(%r12), %r10d
	jne	.LBB2_25
# BB#19:                                # %cond.true.190
	movq	%r10, 88(%rsp)          # 8-byte Spill
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movl	8(%r12), %eax
	jmp	.LBB2_29
.LBB2_25:                               # %cond.false.193
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movl	%r10d, %esi
	subl	4(%r12), %esi
	cmpl	24(%r12), %r10d
	movl	16(%r12), %edi
	jle	.LBB2_26
# BB#27:                                # %cond.false.209
	movq	%r10, 88(%rsp)          # 8-byte Spill
	movl	20(%r12), %edx
	callq	fixed_mult_quo
	jmp	.LBB2_28
.LBB2_26:                               # %cond.true.197
	movq	%r10, 88(%rsp)          # 8-byte Spill
	imull	%edi, %esi
	addl	28(%r12), %esi
	movl	%esi, %eax
	cltd
	idivl	20(%r12)
.LBB2_28:                               # %cond.end.218
	addl	(%r12), %eax
.LBB2_29:                               # %cond.end.225
	movq	%r12, 80(%rsp)          # 8-byte Spill
	movl	%ebx, %edi
	cmpl	%r15d, %edi
	movl	%r15d, %r9d
	cmovlel	%edi, %r9d
	cmpl	%eax, %r14d
	movl	%eax, %r10d
	cmovgel	%r14d, %r10d
	movl	%r9d, %esi
	sarl	$8, %esi
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	388(%rcx), %ebx
	movl	%esi, %edx
	subl	%ebx, %edx
	leal	255(%r10), %r11d
	sarl	$8, %r11d
	movl	%r11d, %ecx
	subl	%ebx, %ecx
	cmpl	%ecx, %edx
	jge	.LBB2_38
# BB#30:                                # %for.body.lr.ph
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movslq	%edx, %rdi
	leal	-1(%r11), %r8d
	subl	%esi, %r8d
	leaq	1(%r8), %rsi
	movabsq	$8589934588, %r12       # imm = 0x1FFFFFFFC
	movq	%rsi, %rbp
	andq	%r12, %rbp
	andq	%r12, %rsi
	leaq	1(%r8,%rdi), %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	je	.LBB2_31
# BB#32:                                # %vector.ph
	addq	%rdi, %rbp
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movd	%rbx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movd	%r9d, %xmm1
	pshufd	$0, %xmm1, %xmm10       # xmm10 = xmm1[0,0,0,0]
	movd	%r10d, %xmm2
	pshufd	$0, %xmm2, %xmm11       # xmm11 = xmm2[0,0,0,0]
	incq	%r8
	andq	%r12, %r8
	movl	$1, %esi
	movd	%rsi, %xmm3
	pslldq	$8, %xmm3               # xmm3 = zero,zero,zero,zero,zero,zero,zero,zero,xmm3[0,1,2,3,4,5,6,7]
	movdqa	.LCPI2_0(%rip), %xmm8   # xmm8 = [2,3]
	pxor	%xmm9, %xmm9
	movdqa	.LCPI2_1(%rip), %xmm12  # xmm12 = [256,256,256,256]
	.align	16, 0x90
.LBB2_33:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%rdi, %xmm4
	pshufd	$68, %xmm4, %xmm4       # xmm4 = xmm4[0,1,0,1]
	movdqa	%xmm4, %xmm1
	paddq	%xmm3, %xmm1
	paddq	%xmm8, %xmm4
	movdqa	%xmm0, %xmm5
	paddq	%xmm1, %xmm5
	movdqa	%xmm0, %xmm7
	paddq	%xmm4, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pshufd	$232, %xmm5, %xmm2      # xmm2 = xmm5[0,2,2,3]
	punpcklqdq	%xmm7, %xmm2    # xmm2 = xmm2[0],xmm7[0]
	pslld	$8, %xmm2
	movdqa	%xmm10, %xmm7
	psubd	%xmm2, %xmm7
	movdqa	%xmm7, %xmm5
	pcmpgtd	%xmm9, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm11, %xmm6
	psubd	%xmm2, %xmm6
	movdqa	%xmm12, %xmm7
	pcmpgtd	%xmm6, %xmm7
	pand	%xmm7, %xmm6
	pandn	%xmm12, %xmm7
	por	%xmm6, %xmm7
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %r9
	movd	%xmm4, %rsi
	pshufd	$78, %xmm4, %xmm1       # xmm1 = xmm4[2,3,0,1]
	movd	%xmm1, %rbp
	pinsrw	$0, 4(%r13,%rdi,8), %xmm1
	pinsrw	$1, 4(%r13,%r9,8), %xmm1
	pinsrw	$2, 4(%r13,%rsi,8), %xmm1
	pinsrw	$3, 4(%r13,%rbp,8), %xmm1
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm5, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm5, %xmm2
	por	%xmm1, %xmm2
	movd	%xmm2, %ebx
	movw	%bx, 4(%r13,%rdi,8)
	pextrw	$2, %xmm2, %ebx
	movw	%bx, 4(%r13,%r9,8)
	pextrw	$4, %xmm2, %ebx
	movw	%bx, 4(%r13,%rsi,8)
	pextrw	$6, %xmm2, %ebx
	movw	%bx, 4(%r13,%rbp,8)
	pinsrw	$0, 6(%r13,%rdi,8), %xmm1
	pinsrw	$1, 6(%r13,%r9,8), %xmm1
	pinsrw	$2, 6(%r13,%rsi,8), %xmm1
	pinsrw	$3, 6(%r13,%rbp,8), %xmm1
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
	por	%xmm1, %xmm2
	movd	%xmm2, %ebx
	movw	%bx, 6(%r13,%rdi,8)
	pextrw	$2, %xmm2, %ebx
	movw	%bx, 6(%r13,%r9,8)
	pextrw	$4, %xmm2, %ebx
	movw	%bx, 6(%r13,%rsi,8)
	pextrw	$6, %xmm2, %esi
	movw	%si, 6(%r13,%rbp,8)
	addq	$4, %rdi
	addq	$-4, %r8
	jne	.LBB2_33
# BB#34:
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB2_35
.LBB2_31:
	movq	%rbx, %rbp
	movl	52(%rsp), %esi          # 4-byte Reload
.LBB2_35:                               # %middle.block
	cmpq	%rdi, 56(%rsp)          # 8-byte Folded Reload
	je	.LBB2_38
# BB#36:                                # %for.body.preheader
	leaq	6(%r13,%rdi,8), %rbx
	cmpl	%r14d, %eax
	cmovgel	%eax, %r14d
	leal	(%rbp,%rdi), %eax
	shll	$8, %eax
	subl	%eax, %r14d
	notl	%esi
	notl	%r15d
	cmpl	%r15d, %esi
	cmovgel	%esi, %r15d
	notl	%r15d
	subl	%eax, %r15d
	subl	%ebp, %r11d
	subl	%edi, %r11d
	.align	16, 0x90
.LBB2_37:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$257, %r14d             # imm = 0x101
	movl	$256, %eax              # imm = 0x100
	cmovll	%r14d, %eax
	testl	%r15d, %r15d
	movl	$0, %esi
	cmovnsl	%r15d, %esi
	movswl	-2(%rbx), %edi
	movl	$0, %ebp
	cmovgw	%r15w, %bp
	cmpl	%esi, %edi
	cmovlw	%di, %bp
	cmpl	$256, %r14d             # imm = 0x100
	movw	%bp, -2(%rbx)
	movswl	(%rbx), %esi
	movw	$256, %di               # imm = 0x100
	cmovlw	%r14w, %di
	cmpl	%eax, %esi
	cmovgw	%si, %di
	movw	%di, (%rbx)
	addq	$8, %rbx
	addl	$-256, %r14d
	addl	$-256, %r15d
	decl	%r11d
	jne	.LBB2_37
.LBB2_38:                               # %for.end
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	112(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	callq	store_margin
	testl	%eax, %eax
	movq	80(%rsp), %r12          # 8-byte Reload
	movl	76(%rsp), %ebp          # 4-byte Reload
	movl	72(%rsp), %r13d         # 4-byte Reload
	movl	100(%rsp), %ebx         # 4-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	88(%rsp), %r10          # 8-byte Reload
	js	.LBB2_41
.LBB2_39:                               # %if.end.302
	movq	%r14, 112(%rsp)         # 8-byte Spill
	movl	%ebx, 24(%rsp)
	movl	%r13d, 16(%rsp)
	movl	%r10d, (%rsp)
	movl	$1, 8(%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r9, %rdx
	movl	%ebp, %r9d
	movq	%r12, %r14
	movq	%r15, %r12
	movq	%r10, %r15
	callq	margin_boundary
	movq	112(%rsp), %rsi         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB2_41
# BB#40:                                # %if.end.307
	movl	%ebx, 24(%rsp)
	movl	%r13d, 16(%rsp)
	movl	%r15d, (%rsp)
	movl	$-1, 8(%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	%r14, %rdx
	movl	%ebp, %r9d
	callq	margin_boundary
.LBB2_41:                               # %cleanup.309
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	continue_margin_common, .Lfunc_end2-continue_margin_common
	.cfi_endproc

	.align	16, 0x90
	.type	store_margin,@function
store_margin:                           # @store_margin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 48
.Ltmp27:
	.cfi_offset %rbx, -48
.Ltmp28:
	.cfi_offset %r12, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rsi, %r14
	testl	%r12d, %r12d
	movl	$-28, %ecx
	js	.LBB3_67
# BB#1:                                 # %entry
	movq	408(%rdi), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB3_67
# BB#2:                                 # %lor.lhs.false
	cmpl	%r15d, 392(%rdi)
	jl	.LBB3_67
# BB#3:                                 # %if.end.3
	movq	16(%r14), %rsi
	movq	$0, 16(%r14)
	xorl	%ebp, %ebp
	testq	%rsi, %rsi
	je	.LBB3_54
# BB#4:                                 # %if.then.6
	movq	8(%r14), %r9
	testq	%r9, %r9
	je	.LBB3_67
# BB#5:                                 # %if.end.9
	leaq	8(%r14), %r8
	movl	(%rsi), %ecx
	cmpl	%r15d, %ecx
	jle	.LBB3_14
# BB#6:
	movq	%rsi, %rbp
	.align	16, 0x90
.LBB3_7:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbp), %rbp
	testq	%rbp, %rbp
	je	.LBB3_8
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	%r12d, 4(%rbp)
	movq	%rbp, %rax
	jge	.LBB3_7
	jmp	.LBB3_10
.LBB3_14:                               # %if.else
	movl	4(%rsi), %eax
	cmpl	%r12d, %eax
	jge	.LBB3_15
	.align	16, 0x90
.LBB3_19:                               # %do.body.25
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdx
	movq	16(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB3_20
# BB#24:                                # %land.rhs.29
                                        #   in Loop: Header=BB3_19 Depth=1
	cmpl	%r15d, (%rsi)
	jle	.LBB3_19
# BB#25:                                # %while.cond.40.preheader
	movq	8(%rsi), %rax
	xorl	%ebp, %ebp
	testq	%rax, %rax
	jne	.LBB3_21
# BB#26:
	movq	%rsi, %rbx
	jmp	.LBB3_35
.LBB3_8:
	xorl	%ebp, %ebp
	movq	%r9, %rax
.LBB3_10:                               # %while.cond.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB3_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdx
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_35
# BB#12:                                # %land.rhs.17
                                        #   in Loop: Header=BB3_11 Depth=1
	cmpl	%r15d, (%rax)
	movq	%rax, %rsi
	jle	.LBB3_11
# BB#13:
	movq	%rax, %rbx
	jmp	.LBB3_35
.LBB3_15:                               # %land.rhs.52.preheader
	cmpl	%r15d, %ecx
	movq	%rsi, %rdx
	movq	%rsi, %rbx
	jg	.LBB3_30
# BB#16:
	movq	%rsi, %rcx
.LBB3_17:                               # %while.body.56
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB3_18
# BB#29:                                # %while.body.56.land.rhs.52_crit_edge
                                        #   in Loop: Header=BB3_17 Depth=1
	cmpl	%r15d, (%rbx)
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	jle	.LBB3_17
	jmp	.LBB3_30
.LBB3_20:
	movq	%rdx, %rax
	xorl	%esi, %esi
.LBB3_21:                               # %land.rhs.42.lr.ph
	movq	%rax, %rbp
	.align	16, 0x90
.LBB3_22:                               # %land.rhs.42
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r12d, 4(%rbp)
	jl	.LBB3_23
# BB#27:                                # %while.body.46
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	8(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB3_22
# BB#28:
	xorl	%ebp, %ebp
	movq	%rsi, %rbx
	jmp	.LBB3_35
.LBB3_23:
	movq	%rsi, %rbx
	jmp	.LBB3_35
.LBB3_18:
	movq	%rcx, %rdx
	xorl	%ebx, %ebx
.LBB3_30:                               # %land.rhs.61.lr.ph
	cmpl	%r12d, %eax
	jl	.LBB3_34
# BB#31:
	xorl	%ebp, %ebp
.LBB3_32:                               # %while.body.65
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB3_35
# BB#33:                                # %while.body.65.land.rhs.61_crit_edge
                                        #   in Loop: Header=BB3_32 Depth=1
	cmpl	%r12d, 4(%rsi)
	jge	.LBB3_32
.LBB3_34:
	movq	%rsi, %rbp
.LBB3_35:                               # %if.end.69
	leaq	16(%rbp), %rax
	testq	%rbp, %rbp
	cmoveq	%r8, %rax
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB3_49
# BB#36:                                # %if.end.69
	cmpq	%rbx, %rsi
	je	.LBB3_49
# BB#37:                                # %if.then.79
	testq	%rbx, %rbx
	je	.LBB3_39
# BB#38:                                # %cond.false.82
	movq	8(%rbx), %rdx
.LBB3_39:                               # %cond.end.84
	testq	%rdx, %rdx
	je	.LBB3_49
# BB#40:                                # %cond.end.84
	cmpq	%rdx, %rsi
	je	.LBB3_49
# BB#41:                                # %land.lhs.true.89
	movq	8(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_49
# BB#42:                                # %if.then.92
	movq	8(%rsi), %rdx
	testq	%rdx, %rdx
	je	.LBB3_44
# BB#43:                                # %if.then.96
	movq	16(%rcx), %rbx
	movq	%rbx, 16(%rdx)
.LBB3_44:                               # %if.end.100
	movq	16(%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB3_46
# BB#45:                                # %if.then.103
	movq	%rdx, 8(%rbx)
.LBB3_46:                               # %if.end.107
	cmpq	%rsi, %r9
	jne	.LBB3_48
# BB#47:                                # %if.then.110
	movq	%rbx, (%r8)
.LBB3_48:                               # %if.end.113
	movq	368(%rdi), %rdx
	movq	%rdx, 16(%rcx)
	movq	%rsi, 368(%rdi)
	movl	(%rsi), %edx
	cmpl	%r12d, %edx
	cmovlel	%edx, %r12d
	movl	4(%rcx), %ecx
	cmpl	%r15d, %ecx
	cmovgel	%ecx, %r15d
	movq	(%rax), %rsi
.LBB3_49:                               # %if.end.132
	testq	%rsi, %rsi
	je	.LBB3_54
# BB#50:                                # %if.else.142
	movl	4(%rsi), %eax
	cmpl	%r12d, %eax
	jge	.LBB3_52
# BB#51:
	movq	%rsi, %rbp
	jmp	.LBB3_54
.LBB3_52:                               # %if.else.146
	movl	(%rsi), %ecx
	cmpl	%r15d, %ecx
	jle	.LBB3_68
# BB#53:                                # %if.then.149
	movq	8(%rsi), %rbp
.LBB3_54:                               # %if.end.181
	movq	368(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_56
# BB#55:                                # %if.then.i
	movq	16(%rax), %rcx
	movq	%rcx, 368(%rdi)
	jmp	.LBB3_59
.LBB3_56:                               # %if.else.i
	movslq	384(%rdi), %rcx
	cmpq	$19, %rcx
	jg	.LBB3_58
# BB#57:                                # %if.then.5.i
	leaq	(%rcx,%rcx,2), %rax
	leaq	5064(%rdi,%rax,8), %rax
	leal	1(%rcx), %ecx
	movl	%ecx, 384(%rdi)
	jmp	.LBB3_59
.LBB3_58:                               # %alloc_margin.exit
	movq	(%rdi), %rdi
	movl	$st_margin, %esi
	movl	$.L.str.1, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB3_67
.LBB3_59:                               # %if.end.184
	testq	%rbp, %rbp
	je	.LBB3_62
# BB#60:                                # %if.then.186
	movq	16(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	%rbp, 8(%rax)
	movq	%rax, 16(%rbp)
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB3_65
# BB#61:                                # %if.then.193
	movq	%rax, 8(%rcx)
	jmp	.LBB3_65
.LBB3_62:                               # %if.else.197
	movq	8(%r14), %rcx
	movq	%rcx, 16(%rax)
	movq	$0, 8(%rax)
	testq	%rcx, %rcx
	je	.LBB3_64
# BB#63:                                # %if.then.203
	movq	%rax, 8(%rcx)
.LBB3_64:                               # %if.end.206
	movq	%rax, 8(%r14)
.LBB3_65:                               # %if.end.208
	movl	%r12d, (%rax)
	movl	%r15d, 4(%rax)
	movq	%rax, 16(%r14)
.LBB3_66:                               # %cleanup.212
	xorl	%ecx, %ecx
.LBB3_67:                               # %cleanup.212
	movl	%ecx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_68:                               # %if.then.157
	cmpl	%ecx, %r12d
	cmovlel	%r12d, %ecx
	movl	%ecx, (%rsi)
	cmpl	%eax, %r15d
	cmovgel	%r15d, %eax
	movl	%eax, 4(%rsi)
	movq	%rsi, 16(%r14)
	jmp	.LBB3_66
.Lfunc_end3:
	.size	store_margin, .Lfunc_end3-store_margin
	.cfi_endproc

	.align	16, 0x90
	.type	margin_boundary,@function
margin_boundary:                        # @margin_boundary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 96
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movl	96(%rsp), %r15d
	xorl	%eax, %eax
	cmpl	%r15d, %r9d
	jg	.LBB4_33
# BB#1:                                 # %if.end
	movl	104(%rsp), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	24(%rbx), %r10
	testq	%rbp, %rbp
	je	.LBB4_18
# BB#2:                                 # %if.else
	movl	120(%rsp), %r12d
	cmpl	112(%rsp), %r9d
	jne	.LBB4_4
# BB#3:                                 # %cond.true
	movl	32(%rbp), %r14d
	jmp	.LBB4_10
.LBB4_4:                                # %cond.false
	cmpl	%r9d, 12(%rbp)
	jne	.LBB4_6
# BB#5:                                 # %cond.true.6
	movl	8(%rbp), %r14d
	jmp	.LBB4_10
.LBB4_6:                                # %cond.false.8
	movl	%r9d, %esi
	subl	4(%rbp), %esi
	cmpl	%r9d, 24(%rbp)
	movl	16(%rbp), %edi
	movl	20(%rbp), %ecx
	jge	.LBB4_7
# BB#8:                                 # %cond.false.15
	movl	%ecx, %edx
	movl	%r9d, 24(%rsp)          # 4-byte Spill
	movq	%r10, %r14
	callq	fixed_mult_quo
	movq	%r14, %r10
	movl	24(%rsp), %r9d          # 4-byte Reload
	jmp	.LBB4_9
.LBB4_7:                                # %cond.true.10
	imull	%edi, %esi
	addl	28(%rbp), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
.LBB4_9:                                # %cond.end
	movl	%eax, %r14d
	addl	(%rbp), %r14d
.LBB4_10:                               # %cond.end.28
	cmpl	%r12d, %r15d
	jne	.LBB4_12
# BB#11:                                # %cond.true.31
	movl	36(%rbp), %r8d
	jmp	.LBB4_18
.LBB4_12:                               # %cond.false.32
	cmpl	%r15d, 12(%rbp)
	jne	.LBB4_14
# BB#13:                                # %cond.true.36
	movl	8(%rbp), %r8d
	jmp	.LBB4_18
.LBB4_14:                               # %cond.false.39
	movq	%r10, 32(%rsp)          # 8-byte Spill
	movl	%r9d, %r12d
	movl	%r15d, %esi
	subl	4(%rbp), %esi
	cmpl	%r15d, 24(%rbp)
	movl	16(%rbp), %edi
	movl	20(%rbp), %ecx
	jge	.LBB4_15
# BB#16:                                # %cond.false.54
	movl	%ecx, %edx
	callq	fixed_mult_quo
	jmp	.LBB4_17
.LBB4_15:                               # %cond.true.42
	imull	%edi, %esi
	addl	28(%rbp), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
.LBB4_17:                               # %cond.end.63
	movl	%eax, %r8d
	movl	%r12d, %r9d
	movq	32(%rsp), %r10          # 8-byte Reload
	addl	(%rbp), %r8d
.LBB4_18:                               # %if.end.72
	movl	%r9d, 24(%rsp)          # 4-byte Spill
	cmpl	%r8d, %r14d
	movl	%r8d, %eax
	cmovlel	%r14d, %eax
	cmovgel	%r14d, %r8d
	movl	%eax, %esi
	andl	$-256, %esi
	orl	$128, %esi
	movl	%eax, %ecx
	sarl	$8, %ecx
	movl	388(%r13), %r9d
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movl	%ecx, %edi
	subl	%r9d, %edi
	leal	256(%rsi), %r15d
	cmpl	%eax, %esi
	setl	%dl
	movzbl	%dl, %r14d
	cmovgel	%esi, %r15d
	addl	%edi, %r14d
	movl	%r14d, 20(%rsp)         # 4-byte Spill
	cmpl	%r8d, %r15d
	jge	.LBB4_30
# BB#19:                                # %for.body.lr.ph
	cmpl	%eax, %esi
	setl	%al
	movzbl	%al, %eax
	addl	%eax, %ecx
	subl	%r9d, %ecx
	movslq	%ecx, %rax
	leaq	2(%r10,%rax,8), %r13
	movl	20(%rsp), %r14d         # 4-byte Reload
	.align	16, 0x90
.LBB4_20:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB4_21
# BB#22:                                # %cond.false.119
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	20(%rbp), %esi
	movl	4(%rbp), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	16(%rbp), %edx
	movl	%r15d, %edi
	subl	(%rbp), %edi
	movq	%rbp, %r12
	movl	%r8d, %ebp
	callq	fixed_mult_quo
	movl	%ebp, %r8d
	movq	%r12, %rbp
	addl	32(%rsp), %eax          # 4-byte Folded Reload
	subl	(%rbx), %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	cmpl	$257, %eax              # imm = 0x101
	movl	$256, %ecx              # imm = 0x100
	cmovgel	%ecx, %eax
	movl	(%rbp), %edx
	subl	8(%rbp), %edx
	imull	28(%rsp), %edx          # 4-byte Folded Reload
	jmp	.LBB4_23
	.align	16, 0x90
.LBB4_21:                               # %cond.end.101.thread
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	24(%rsp), %eax          # 4-byte Reload
	subl	(%rbx), %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	cmpl	$257, %eax              # imm = 0x101
	movl	$256, %ecx              # imm = 0x100
	cmovgel	%ecx, %eax
	movl	28(%rsp), %edx          # 4-byte Reload
.LBB4_23:                               # %cond.end.128
                                        #   in Loop: Header=BB4_20 Depth=1
	leaq	-2(%r13), %rcx
	testl	%edx, %edx
	cmovleq	%r13, %rcx
	movswl	(%rcx), %esi
	cmpl	$-2, %esi
	je	.LBB4_29
# BB#24:                                # %cond.end.128
                                        #   in Loop: Header=BB4_20 Depth=1
	movzwl	%si, %edi
	cmpl	$65535, %edi            # imm = 0xFFFF
	je	.LBB4_28
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_20 Depth=1
	movswl	%ax, %edi
	testl	%edx, %edx
	jle	.LBB4_27
# BB#26:                                # %cond.true.144
                                        #   in Loop: Header=BB4_20 Depth=1
	cmpl	%edi, %esi
	jg	.LBB4_28
	jmp	.LBB4_29
.LBB4_27:                               # %cond.false.149
                                        #   in Loop: Header=BB4_20 Depth=1
	cmpl	%edi, %esi
	jge	.LBB4_29
	.align	16, 0x90
.LBB4_28:                               # %if.then.154
                                        #   in Loop: Header=BB4_20 Depth=1
	movw	%ax, (%rcx)
.LBB4_29:                               # %if.end.155
                                        #   in Loop: Header=BB4_20 Depth=1
	addl	$256, %r15d             # imm = 0x100
	incl	%r14d
	addq	$8, %r13
	cmpl	%r8d, %r15d
	jl	.LBB4_20
.LBB4_30:                               # %for.end
	movl	$-28, %eax
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	js	.LBB4_33
# BB#31:                                # %lor.lhs.false.162
	movq	8(%rsp), %rdi           # 8-byte Reload
	cmpl	392(%rdi), %r14d
	jg	.LBB4_33
# BB#32:                                # %if.end.166
	cmpl	20(%rsp), %r14d         # 4-byte Folded Reload
	movl	$0, %eax
	jle	.LBB4_33
# BB#34:                                # %if.then.169
	movq	%rbx, %rsi
	movl	20(%rsp), %edx          # 4-byte Reload
	movl	%r14d, %ecx
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	store_margin            # TAILCALL
.LBB4_33:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	margin_boundary, .Lfunc_end4-margin_boundary
	.cfi_endproc

	.globl	margin_interior
	.align	16, 0x90
	.type	margin_interior,@function
margin_interior:                        # @margin_interior
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 64
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
	movl	%r8d, %r12d
	movl	%ecx, %ebx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movl	304(%rbp), %r8d
	cmpl	%ebx, %r8d
	jl	.LBB5_3
# BB#1:                                 # %entry
	cmpl	%r12d, %r8d
	jg	.LBB5_3
# BB#2:                                 # %if.then
	leaq	304(%rbp), %rsi
	movl	%r12d, (%rsp)
	movq	%rbp, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movl	%ebx, %r9d
	callq	mark_margin_interior
	testl	%eax, %eax
	js	.LBB5_7
.LBB5_3:                                # %if.end.5
	movl	$256, %r8d              # imm = 0x100
	addl	336(%rbp), %r8d
	cmpl	%ebx, %r8d
	jl	.LBB5_6
# BB#4:                                 # %if.end.5
	cmpl	%r12d, %r8d
	jg	.LBB5_6
# BB#5:                                 # %if.then.13
	movl	%r12d, (%rsp)
	leaq	336(%rbp), %rsi
	movq	%rbp, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movl	%ebx, %r9d
	callq	mark_margin_interior
	testl	%eax, %eax
	js	.LBB5_7
.LBB5_6:                                # %if.end.20
	xorl	%eax, %eax
.LBB5_7:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	margin_interior, .Lfunc_end5-margin_interior
	.cfi_endproc

	.align	16, 0x90
	.type	mark_margin_interior,@function
mark_margin_interior:                   # @mark_margin_interior
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
	pushq	%rax
.Ltmp62:
	.cfi_def_cfa_offset 64
.Ltmp63:
	.cfi_offset %rbx, -56
.Ltmp64:
	.cfi_offset %r12, -48
.Ltmp65:
	.cfi_offset %r13, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %r11
	movq	%rdi, %r15
	movq	24(%r11), %r14
	cmpl	%r9d, %ebx
	jne	.LBB6_1
# BB#10:                                # %cond.true.34
	movl	32(%r13), %ebp
	movl	32(%r12), %eax
	jmp	.LBB6_16
.LBB6_1:                                # %cond.false
	cmpl	64(%rsp), %ebx
	jne	.LBB6_2
# BB#11:                                # %cond.true.38
	movl	36(%r13), %ebp
	movl	36(%r12), %eax
	jmp	.LBB6_16
.LBB6_2:                                # %cond.false.4
	cmpl	%ebx, 12(%r13)
	jne	.LBB6_6
# BB#3:                                 # %cond.true.7
	movl	8(%r13), %ebp
	jmp	.LBB6_4
.LBB6_6:                                # %cond.false.9
	movl	%ebx, %esi
	subl	4(%r13), %esi
	cmpl	%ebx, 24(%r13)
	movl	16(%r13), %edi
	movl	20(%r13), %ecx
	jge	.LBB6_7
# BB#9:                                 # %cond.false.16
	movl	%ecx, %edx
	movq	%r11, %rbp
	callq	fixed_mult_quo
	movq	%rbp, %r11
	jmp	.LBB6_8
.LBB6_7:                                # %cond.true.11
	imull	%edi, %esi
	addl	28(%r13), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
.LBB6_8:                                # %cond.false.40
	movl	%eax, %ebp
	addl	(%r13), %ebp
.LBB6_4:                                # %cond.false.40
	cmpl	%ebx, 12(%r12)
	jne	.LBB6_12
# BB#5:                                 # %cond.true.44
	movl	8(%r12), %eax
	jmp	.LBB6_16
.LBB6_12:                               # %cond.false.47
	movq	%r11, %r13
	movl	%ebx, %esi
	subl	4(%r12), %esi
	cmpl	%ebx, 24(%r12)
	movl	16(%r12), %edi
	movl	20(%r12), %ecx
	jge	.LBB6_13
# BB#14:                                # %cond.false.62
	movl	%ecx, %edx
	callq	fixed_mult_quo
	jmp	.LBB6_15
.LBB6_13:                               # %cond.true.50
	imull	%edi, %esi
	addl	28(%r12), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
.LBB6_15:                               # %cond.end.71
	movq	%r13, %r11
	addl	(%r12), %eax
.LBB6_16:                               # %cond.end.80
	movl	%ebp, %r13d
	sarl	$8, %r13d
	movslq	%ebp, %r8
	andl	$-256, %ebp
	movslq	%ebp, %rbp
	orq	$128, %rbp
	cmpq	%r8, %rbp
	setl	%cl
	movzbl	%cl, %r10d
	movl	388(%r15), %r9d
	movl	%r13d, %edx
	subl	%r9d, %edx
	addl	%r10d, %edx
	movslq	%eax, %rdi
	addq	$127, %rdi
	shrq	$8, %rdi
	movl	%edi, %ecx
	subl	%r9d, %ecx
	cmpl	%ecx, %edx
	jge	.LBB6_27
# BB#17:                                # %if.then.95
	movl	$-28, %esi
	testl	%edx, %edx
	js	.LBB6_28
# BB#18:                                # %lor.lhs.false
	cmpl	392(%r15), %ecx
	jg	.LBB6_28
# BB#19:                                # %for.body.lr.ph
	movq	%r11, (%rsp)            # 8-byte Spill
	cmpq	%r8, %rbp
	setl	%r11b
	leal	(%r10,%r13), %esi
	subl	%r9d, %esi
	movslq	%esi, %rbx
	movl	%edi, %r12d
	subl	%r13d, %r12d
	movzbl	%r11b, %r11d
	subl	%r11d, %r12d
	leal	-1(%rdi), %r10d
	subl	%r13d, %r10d
	subl	%r11d, %r10d
	testb	$3, %r12b
	je	.LBB6_20
# BB#21:                                # %for.body.prol.preheader
	cmpq	%r8, %rbp
	setl	%r8b
	addl	$127, %eax
	shrl	$8, %eax
	subl	%r13d, %eax
	movzbl	%r8b, %ebp
	subl	%ebp, %eax
	andl	$3, %eax
	negl	%eax
	movq	(%rsp), %rsi            # 8-byte Reload
	.align	16, 0x90
.LBB6_22:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$-65538, (%r14,%rbx,8)  # imm = 0xFFFFFFFFFFFEFFFE
	incq	%rbx
	incl	%eax
	jne	.LBB6_22
	jmp	.LBB6_23
.LBB6_20:
	movq	(%rsp), %rsi            # 8-byte Reload
.LBB6_23:                               # %for.body.lr.ph.split
	cmpl	$3, %r10d
	jb	.LBB6_26
# BB#24:                                # %for.body.lr.ph.split.split
	subl	%r9d, %edi
	subl	%ebx, %edi
	leaq	26(%r14,%rbx,8), %rax
	.align	16, 0x90
.LBB6_25:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$-65538, -26(%rax)      # imm = 0xFFFFFFFFFFFEFFFE
	movl	$-65538, -18(%rax)      # imm = 0xFFFFFFFFFFFEFFFE
	movl	$-65538, -10(%rax)      # imm = 0xFFFFFFFFFFFEFFFE
	movl	$-65538, -2(%rax)       # imm = 0xFFFFFFFFFFFEFFFE
	addq	$32, %rax
	addl	$-4, %edi
	jne	.LBB6_25
.LBB6_26:                               # %for.end
	movq	%r15, %rdi
	callq	store_margin
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB6_28
.LBB6_27:                               # %if.end.114
	xorl	%esi, %esi
.LBB6_28:                               # %cleanup
	movl	%esi, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mark_margin_interior, .Lfunc_end6-mark_margin_interior
	.cfi_endproc

	.globl	process_h_lists
	.align	16, 0x90
	.type	process_h_lists,@function
process_h_lists:                        # @process_h_lists
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp73:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 96
.Ltmp76:
	.cfi_offset %rbx, -56
.Ltmp77:
	.cfi_offset %r12, -48
.Ltmp78:
	.cfi_offset %r13, -40
.Ltmp79:
	.cfi_offset %r14, -32
.Ltmp80:
	.cfi_offset %r15, -24
.Ltmp81:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%r8d, %r13d
	movq	%rcx, %r8
	movq	%rdx, %r15
	movq	%rsi, %r10
	movq	%rdi, %rbx
	cmpl	%r12d, %r13d
	jne	.LBB7_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB7_46
.LBB7_2:                                # %if.end
	movq	288(%rbx), %r14
	testq	%r14, %r14
	je	.LBB7_21
# BB#3:                                 # %if.then.2
	movslq	4(%r14), %rbp
	movslq	304(%rbx), %rax
	cmpl	%ebp, %eax
	jg	.LBB7_12
# BB#4:                                 # %land.lhs.true.i
	addq	$256, %rax              # imm = 0x100
	cmpq	%rax, %rbp
	jg	.LBB7_12
# BB#5:                                 # %if.then.i
	leaq	304(%rbx), %rsi
	testq	%r10, %r10
	jne	.LBB7_8
# BB#6:                                 # %if.then.i
	testq	%r15, %r15
	jne	.LBB7_8
# BB#7:                                 # %if.then.i
	testq	%r8, %r8
	jne	.LBB7_9
.LBB7_8:                                # %if.then.i.74
	movl	%r12d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$-1, %r9d
	movq	%rbx, %rdi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	movq	%r10, %rcx
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%r15, %r8
	movq	%r10, 24(%rsp)          # 8-byte Spill
	callq	process_h_sect
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %r10          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	testl	%eax, %eax
	js	.LBB7_46
.LBB7_9:                                # %if.end.9.i.77
	testq	%r15, %r15
	je	.LBB7_12
# BB#10:                                # %if.end.9.i.77
	testq	%r8, %r8
	je	.LBB7_12
# BB#11:                                # %if.then.13.i.80
	movl	%r12d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	%r10, 24(%rsp)          # 8-byte Spill
	callq	process_h_sect
	movq	24(%rsp), %r10          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	testl	%eax, %eax
	js	.LBB7_46
.LBB7_12:                               # %if.end.13.i
	movslq	336(%rbx), %rax
	cmpl	%ebp, %eax
	jg	.LBB7_21
# BB#13:                                # %land.lhs.true.17.i
	addq	$256, %rax              # imm = 0x100
	cmpq	%rax, %rbp
	jg	.LBB7_21
# BB#14:                                # %if.then.25.i
	leaq	336(%rbx), %rbp
	testq	%r10, %r10
	jne	.LBB7_17
# BB#15:                                # %if.then.25.i
	testq	%r15, %r15
	jne	.LBB7_17
# BB#16:                                # %if.then.25.i
	testq	%r8, %r8
	jne	.LBB7_18
.LBB7_17:                               # %if.then.i.22
	movl	%r12d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$-1, %r9d
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movq	%r10, %rcx
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%r15, %r8
	movq	%r10, 24(%rsp)          # 8-byte Spill
	callq	process_h_sect
	movq	24(%rsp), %r10          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	testl	%eax, %eax
	js	.LBB7_46
.LBB7_18:                               # %if.end.9.i
	testq	%r15, %r15
	je	.LBB7_21
# BB#19:                                # %if.end.9.i
	testq	%r8, %r8
	je	.LBB7_21
# BB#20:                                # %if.then.13.i
	movl	%r12d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r8, %rbp
	movq	%r10, %r14
	callq	process_h_sect
	movq	%r14, %r10
	movq	%rbp, %r8
	testl	%eax, %eax
	js	.LBB7_46
.LBB7_21:                               # %if.end.7
	movq	296(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB7_22
# BB#23:                                # %if.then.9
	movslq	4(%rbp), %r14
	movslq	304(%rbx), %rax
	cmpl	%r14d, %eax
	jg	.LBB7_32
# BB#24:                                # %land.lhs.true.i.32
	addq	$256, %rax              # imm = 0x100
	cmpq	%rax, %r14
	jg	.LBB7_32
# BB#25:                                # %if.then.i.35
	leaq	304(%rbx), %rsi
	testq	%r10, %r10
	jne	.LBB7_28
# BB#26:                                # %if.then.i.35
	testq	%r15, %r15
	jne	.LBB7_28
# BB#27:                                # %if.then.i.35
	testq	%r8, %r8
	jne	.LBB7_29
.LBB7_28:                               # %if.then.i.90
	movl	%r12d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	movq	%r10, %rcx
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%r15, %r8
	movq	%r10, 24(%rsp)          # 8-byte Spill
	callq	process_h_sect
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %r10          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB7_45
.LBB7_29:                               # %if.end.9.i.93
	testq	%r15, %r15
	je	.LBB7_32
# BB#30:                                # %if.end.9.i.93
	testq	%r8, %r8
	je	.LBB7_32
# BB#31:                                # %if.then.13.i.96
	movl	%r12d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$-1, %r9d
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	%r10, 24(%rsp)          # 8-byte Spill
	callq	process_h_sect
	movq	24(%rsp), %r10          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB7_45
.LBB7_32:                               # %if.end.13.i.39
	movslq	336(%rbx), %rax
	cmpl	%r14d, %eax
	jle	.LBB7_34
# BB#33:
	xorl	%eax, %eax
	jmp	.LBB7_46
.LBB7_22:
	xorl	%eax, %eax
	jmp	.LBB7_46
.LBB7_34:                               # %land.lhs.true.17.i.44
	addq	$256, %rax              # imm = 0x100
	cmpq	%rax, %r14
	jle	.LBB7_36
# BB#35:
	xorl	%eax, %eax
	jmp	.LBB7_46
.LBB7_36:                               # %if.then.25.i.46
	leaq	336(%rbx), %r14
	testq	%r10, %r10
	jne	.LBB7_39
# BB#37:                                # %if.then.25.i.46
	testq	%r15, %r15
	jne	.LBB7_39
# BB#38:                                # %if.then.25.i.46
	testq	%r8, %r8
	jne	.LBB7_40
.LBB7_39:                               # %if.then.i.57
	movl	%r12d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	%r10, %rcx
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%r15, %r8
	callq	process_h_sect
	movq	32(%rsp), %r8           # 8-byte Reload
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB7_45
.LBB7_40:                               # %if.end.9.i.60
	testq	%r15, %r15
	je	.LBB7_41
# BB#42:                                # %if.end.9.i.60
	testq	%r8, %r8
	je	.LBB7_43
# BB#44:                                # %if.then.13.i.63
	movl	%r12d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$-1, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	process_h_sect
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$0, %eax
	jns	.LBB7_46
.LBB7_45:                               # %process_h_list.exit49.thread114
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
	jmp	.LBB7_46
.LBB7_41:
	xorl	%eax, %eax
	jmp	.LBB7_46
.LBB7_43:
	xorl	%eax, %eax
.LBB7_46:                               # %return
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	process_h_lists, .Lfunc_end7-process_h_lists
	.cfi_endproc

	.globl	close_margins
	.align	16, 0x90
	.type	close_margins,@function
close_margins:                          # @close_margins
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp85:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp86:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp88:
	.cfi_def_cfa_offset 144
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
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movq	8(%rdx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB8_47
# BB#1:                                 # %for.body.lr.ph
	movabsq	$1103806595071, %rdx    # imm = 0x100FFFFFFFF
.LBB8_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
                                        #     Child Loop BB8_41 Depth 2
	movslq	(%rcx), %rbx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	movl	%ebx, %r15d
	movl	$-28, %eax
	js	.LBB8_47
# BB#3:                                 # %lor.lhs.false.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movslq	4(%rcx), %r13
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rcx          # 8-byte Reload
	cmpl	%r13d, 392(%rcx)
	jl	.LBB8_47
# BB#4:                                 # %for.cond.preheader.i
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	%ebx, %r13d
	jle	.LBB8_42
# BB#5:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movslq	(%rax), %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	24(%rax), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	408(%rax), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	28(%rax), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	leaq	10(%rcx,%rbx,8), %rbp
	movl	$-2, %edx
	xorl	%r12d, %r12d
	movl	%ebx, %r8d
	.align	16, 0x90
.LBB8_6:                                # %for.body.i
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswq	-10(%rbp,%r12,8), %rcx
	testq	%rcx, %rcx
	movl	$-2, %r14d
	js	.LBB8_23
# BB#7:                                 # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movswq	-8(%rbp,%r12,8), %rsi
	testq	%rsi, %rsi
	movl	$-2, %r14d
	js	.LBB8_23
# BB#8:                                 # %cond.false.i.i
                                        #   in Loop: Header=BB8_6 Depth=2
	xorl	%r14d, %r14d
	cmpl	$128, %esi
	jl	.LBB8_11
# BB#9:                                 # %cond.false.10.i.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	$1, %r14d
	cmpl	$128, %ecx
	jg	.LBB8_11
# BB#10:                                # %cond.false.16.i.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	$128, %edi
	subq	%rcx, %rdi
	addq	$-128, %rsi
	cmpq	%rsi, %rdi
	setl	%cl
	movzbl	%cl, %r14d
.LBB8_11:                               # %if.then.27.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movw	-6(%rbp,%r12,8), %cx
	testw	%cx, %cx
	jle	.LBB8_19
# BB#12:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movzwl	-4(%rbp,%r12,8), %ecx
	cmpl	$256, %ecx              # imm = 0x100
	jne	.LBB8_23
# BB#13:                                # %land.lhs.true.38.i
                                        #   in Loop: Header=BB8_6 Depth=2
	leaq	1(%rbx,%r12), %rcx
	cmpq	%r13, %rcx
	jge	.LBB8_23
# BB#14:                                # %cond.true.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movswq	-2(%rbp,%r12,8), %rcx
	testq	%rcx, %rcx
	movl	$-2, %r14d
	js	.LBB8_23
# BB#15:                                # %lor.lhs.false.i.8.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movswq	(%rbp,%r12,8), %rsi
	testq	%rsi, %rsi
	movl	$-2, %r14d
	js	.LBB8_23
# BB#16:                                # %cond.false.i.11.i
                                        #   in Loop: Header=BB8_6 Depth=2
	xorl	%r14d, %r14d
	cmpl	$128, %esi
	jl	.LBB8_23
# BB#17:                                # %cond.false.10.i.13.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	$1, %r14d
	cmpl	$128, %ecx
	jg	.LBB8_23
# BB#18:                                # %cond.false.16.i.19.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	$128, %edi
	subq	%rcx, %rdi
	addq	$-128, %rsi
	cmpq	%rsi, %rdi
	setl	%cl
	movzbl	%cl, %r14d
	jmp	.LBB8_23
.LBB8_19:                               # %if.else.i
                                        #   in Loop: Header=BB8_6 Depth=2
	jne	.LBB8_23
# BB#20:                                # %land.lhs.true.56.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movswl	-4(%rbp,%r12,8), %ecx
	cmpl	$256, %ecx              # imm = 0x100
	movl	%edx, %ecx
	jl	.LBB8_22
# BB#21:                                # %select.mid
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	%r14d, %ecx
.LBB8_22:                               # %select.end
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	%ecx, %r14d
	.align	16, 0x90
.LBB8_23:                               # %if.end.66.i
                                        #   in Loop: Header=BB8_6 Depth=2
	cmpl	%r14d, %edx
	je	.LBB8_31
# BB#24:                                # %if.then.69.i
                                        #   in Loop: Header=BB8_6 Depth=2
	leaq	(%r15,%r12), %rax
	testl	%edx, %edx
	js	.LBB8_30
# BB#25:                                # %do.end.i
                                        #   in Loop: Header=BB8_6 Depth=2
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB8_27
# BB#26:                                # %cond.true.73.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	16(%rbx), %rcx
	movq	56(%rbx), %rdi
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	388(%rax), %esi
	addl	%r8d, %esi
	movq	40(%rsp), %rax          # 8-byte Reload
	addl	%eax, %edx
	movq	8(%rcx), %r9
	leal	(%r15,%r12), %ecx
	subl	%r8d, %ecx
	movl	$1, %r8d
	callq	*80(%rbx)
	jmp	.LBB8_28
.LBB8_27:                               # %cond.false.78.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	16(%rcx), %rdi
	movq	(%rdi), %r10
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	388(%rax), %esi
	addl	%r8d, %esi
	movq	40(%rsp), %rax          # 8-byte Reload
	addl	%eax, %edx
	movq	56(%rcx), %r9
	movl	24(%rcx), %eax
	leal	(%r15,%r12), %ecx
	subl	%r8d, %ecx
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %r8d
	callq	*40(%r10)
.LBB8_28:                               # %cond.end.87.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movq	64(%rsp), %rbx          # 8-byte Reload
	testl	%eax, %eax
	js	.LBB8_47
# BB#29:                                # %cond.end.87.i.for.inc.i_crit_edge
                                        #   in Loop: Header=BB8_6 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
.LBB8_30:                               # %for.inc.i
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	%eax, %r8d
	movl	%r14d, %edx
.LBB8_31:                               # %for.inc.i
                                        #   in Loop: Header=BB8_6 Depth=2
	leaq	1(%rbx,%r12), %rcx
	incq	%r12
	cmpq	%r13, %rcx
	jl	.LBB8_6
# BB#32:                                # %for.end.i
                                        #   in Loop: Header=BB8_2 Depth=1
	testl	%edx, %edx
	js	.LBB8_37
# BB#33:                                # %do.end.102.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	%r15, %r14
	movq	%rbx, %rbp
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	16(%r15), %rdi
	movq	56(%r15), %r10
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	388(%rax), %esi
	je	.LBB8_35
# BB#34:                                # %cond.true.104.i
                                        #   in Loop: Header=BB8_2 Depth=1
	addl	%r8d, %esi
	movq	40(%rsp), %rax          # 8-byte Reload
	addl	%eax, %edx
	subl	%r8d, %ecx
	movq	8(%rdi), %r9
	movl	$1, %r8d
	movq	%r10, %rdi
	callq	*80(%r15)
	jmp	.LBB8_36
.LBB8_35:                               # %cond.false.115.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	(%rdi), %r11
	addl	%r8d, %esi
	movq	40(%rsp), %rax          # 8-byte Reload
	addl	%eax, %edx
	subl	%r8d, %ecx
	movl	24(%r15), %eax
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %r8d
	movq	%r10, %r9
	callq	*40(%r11)
.LBB8_36:                               # %cond.end.127.i
                                        #   in Loop: Header=BB8_2 Depth=1
	testl	%eax, %eax
	movq	%rbp, %rbx
	movq	%r14, %r15
	js	.LBB8_47
.LBB8_37:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	%r13d, %ecx
	subl	%ebx, %ecx
	leal	-1(%r13), %eax
	testb	$1, %cl
	je	.LBB8_39
# BB#38:                                # %for.body.i.i.prol
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movw	$256, 4(%rcx,%rbx,8)    # imm = 0x100
	movw	$0, 6(%rcx,%rbx,8)
	movw	$-1, 2(%rcx,%rbx,8)
	movw	$-1, (%rcx,%rbx,8)
	incq	%rbx
.LBB8_39:                               # %for.body.i.i.preheader.split
                                        #   in Loop: Header=BB8_2 Depth=1
	movabsq	$1103806595071, %rdx    # imm = 0x100FFFFFFFF
	cmpl	%r15d, %eax
	je	.LBB8_42
# BB#40:                                # %for.body.i.i.preheader.split.split
                                        #   in Loop: Header=BB8_2 Depth=1
	subl	%ebx, %r13d
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	14(%rax,%rbx,8), %rax
	.align	16, 0x90
.LBB8_41:                               # %for.body.i.i
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, -14(%rax)
	movq	%rdx, -6(%rax)
	addq	$16, %rax
	addl	$-2, %r13d
	jne	.LBB8_41
.LBB8_42:                               # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB8_2
# BB#43:                                # %for.end
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB8_47
# BB#44:
	movq	%rcx, %rsi
	.align	16, 0x90
.LBB8_45:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdx
	movq	16(%rdx), %rsi
	testq	%rsi, %rsi
	jne	.LBB8_45
# BB#46:                                # %while.end.i
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	368(%rdi), %rsi
	movq	%rsi, 16(%rdx)
	movq	%rcx, 368(%rdi)
	xorps	%xmm0, %xmm0
	movq	24(%rsp), %rcx          # 8-byte Reload
	movups	%xmm0, 8(%rcx)
.LBB8_47:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	close_margins, .Lfunc_end8-close_margins
	.cfi_endproc

	.globl	start_margin_set
	.align	16, 0x90
	.type	start_margin_set,@function
start_margin_set:                       # @start_margin_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp97:
	.cfi_def_cfa_offset 64
.Ltmp98:
	.cfi_offset %rbx, -24
.Ltmp99:
	.cfi_offset %r14, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	addl	$127, %ebx
	andl	$-256, %ebx
	addl	$-128, %ebx
	xorl	%eax, %eax
	cmpl	%ebx, 304(%r14)
	je	.LBB9_2
# BB#1:                                 # %if.end
	leaq	304(%r14), %rdx
	movups	336(%r14), %xmm0
	movups	352(%r14), %xmm1
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm1, 352(%r14)
	movups	%xmm0, 336(%r14)
	movaps	(%rsp), %xmm0
	movaps	16(%rsp), %xmm1
	movups	%xmm1, 16(%rdx)
	movups	%xmm0, (%rdx)
	movq	%r14, %rsi
	callq	close_margins
	movl	%ebx, 304(%r14)
.LBB9_2:                                # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	start_margin_set, .Lfunc_end9-start_margin_set
	.cfi_endproc

	.align	16, 0x90
	.type	process_h_sect,@function
process_h_sect:                         # @process_h_sect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 112
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movl	%r9d, 52(%rsp)          # 4-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	120(%rsp), %eax
	movl	112(%rsp), %ecx
	movl	4(%rbx), %r13d
	testq	%r14, %r14
	je	.LBB10_11
# BB#1:                                 # %cond.true
	cmpl	%ecx, %r13d
	jne	.LBB10_3
# BB#2:                                 # %cond.true.4
	movl	32(%r14), %ebp
	jmp	.LBB10_12
.LBB10_11:                              # %cond.false.37
	movl	388(%r12), %ebp
	shll	$8, %ebp
	jmp	.LBB10_12
.LBB10_3:                               # %cond.false
	cmpl	%eax, %r13d
	jne	.LBB10_5
# BB#4:                                 # %cond.true.6
	movl	36(%r14), %ebp
	jmp	.LBB10_12
.LBB10_5:                               # %cond.false.7
	cmpl	12(%r14), %r13d
	jne	.LBB10_7
# BB#6:                                 # %cond.true.10
	movl	8(%r14), %ebp
	jmp	.LBB10_12
.LBB10_7:                               # %cond.false.12
	movl	%r13d, %esi
	subl	4(%r14), %esi
	cmpl	24(%r14), %r13d
	movl	16(%r14), %edi
	movl	20(%r14), %ecx
	jle	.LBB10_8
# BB#10:                                # %cond.false.20
	movl	%ecx, %edx
	movq	%r8, %rbp
	callq	fixed_mult_quo
	movq	%rbp, %r8
	jmp	.LBB10_9
.LBB10_8:                               # %cond.true.14
	imull	%edi, %esi
	addl	28(%r14), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
.LBB10_9:                               # %cond.end.38
	movl	%eax, %ebp
	addl	(%r14), %ebp
	movl	120(%rsp), %eax
	movl	112(%rsp), %ecx
.LBB10_12:                              # %cond.end.38
	testq	%r8, %r8
	je	.LBB10_22
# BB#13:                                # %cond.true.41
	cmpl	%ecx, %r13d
	jne	.LBB10_15
# BB#14:                                # %cond.true.43
	movl	32(%r8), %r14d
	jmp	.LBB10_23
.LBB10_22:                              # %cond.false.91
	movl	392(%r12), %r14d
	addl	388(%r12), %r14d
	shll	$8, %r14d
	jmp	.LBB10_23
.LBB10_15:                              # %cond.false.45
	cmpl	%eax, %r13d
	jne	.LBB10_17
# BB#16:                                # %cond.true.47
	movl	36(%r8), %r14d
	jmp	.LBB10_23
.LBB10_17:                              # %cond.false.49
	cmpl	12(%r8), %r13d
	jne	.LBB10_19
# BB#18:                                # %cond.true.53
	movl	8(%r8), %r14d
	jmp	.LBB10_23
.LBB10_19:                              # %cond.false.56
	movl	%r13d, %esi
	subl	4(%r8), %esi
	cmpl	24(%r8), %r13d
	movl	16(%r8), %edi
	movl	20(%r8), %ecx
	jle	.LBB10_20
# BB#21:                                # %cond.false.71
	movl	%ecx, %edx
	movq	%r8, 40(%rsp)           # 8-byte Spill
	callq	fixed_mult_quo
	movl	%eax, %r14d
	movq	40(%rsp), %rax          # 8-byte Reload
	addl	(%rax), %r14d
	jmp	.LBB10_23
.LBB10_20:                              # %cond.true.59
	imull	%edi, %esi
	addl	28(%r8), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r14d
	addl	(%r8), %r14d
	.align	16, 0x90
.LBB10_23:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	movl	8(%rbx), %r8d
	cmpl	%r8d, %eax
	movl	%r8d, %ecx
	cmovlel	%eax, %ecx
	cmovgel	%eax, %r8d
	cmpl	%ecx, %ebp
	cmovgel	%ebp, %ecx
	cmpl	%r8d, %r14d
	cmovlel	%r14d, %r8d
	cmpl	%r8d, %ecx
	jge	.LBB10_25
# BB#24:                                # %do.end
                                        #   in Loop: Header=BB10_23 Depth=1
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 16(%rsp)
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r13d, %r9d
	callq	margin_boundary
	testl	%eax, %eax
	js	.LBB10_26
.LBB10_25:                              # %for.inc
                                        #   in Loop: Header=BB10_23 Depth=1
	movq	216(%rbx), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.LBB10_23
.LBB10_26:                              # %cleanup.166
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	process_h_sect, .Lfunc_end10-process_h_sect
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"section"
	.size	.L.str, 8

	.type	st_section,@object      # @st_section
	.section	.rodata,"a",@progbits
	.globl	st_section
	.align	8
st_section:
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_section, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"filling contiguity margin"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"margin"
	.size	.L.str.2, 7

	.type	st_margin,@object       # @st_margin
	.section	.rodata,"a",@progbits
	.align	8
st_margin:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_margin, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
