	.text
	.file	"gxdcconv.bc"
	.globl	color_rgb_to_gray
	.align	16, 0x90
	.type	color_rgb_to_gray,@function
color_rgb_to_gray:                      # @color_rgb_to_gray
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%edi, %rax
	imulq	$30, %rax, %rax
	movslq	%esi, %rcx
	imulq	$59, %rcx, %rcx
	movslq	%edx, %rdx
	imulq	$11, %rdx, %rdx
	addq	%rax, %rcx
	leaq	50(%rdx,%rcx), %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rcx # imm = 0x28F5C28F5C28F5C3
	mulq	%rcx
	shrl	$2, %edx
	movswl	%dx, %eax
	retq
.Lfunc_end0:
	.size	color_rgb_to_gray, .Lfunc_end0-color_rgb_to_gray
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1191178240              # float 32760
	.text
	.globl	color_rgb_to_cmyk
	.align	16, 0x90
	.type	color_rgb_to_cmyk,@function
color_rgb_to_cmyk:                      # @color_rgb_to_cmyk
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%rcx, %r13
	movl	%edx, 44(%rsp)          # 4-byte Spill
	movl	%esi, 40(%rsp)          # 4-byte Spill
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movl	$32760, %r15d           # imm = 0x7FF8
	movl	$32760, %ebp            # imm = 0x7FF8
	subl	%edi, %ebp
	movl	$32760, %r12d           # imm = 0x7FF8
	subl	%esi, %r12d
	subl	%edx, %r15d
	movswl	%bp, %ebx
	movswl	%r12w, %edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movswl	%r15w, %ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	cmpl	%ecx, %edx
	movw	%r15w, %ax
	cmovlew	%r12w, %ax
	cmpl	%ecx, %ebx
	movw	%r15w, %r14w
	cmovlew	%bp, %r14w
	cmpl	%edx, %ebx
	cmovgew	%ax, %r14w
	testq	%r13, %r13
	je	.LBB1_1
# BB#2:                                 # %cond.false.36
	movq	416(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB1_3
# BB#4:                                 # %cond.false.40
	movl	$gs_identity_transfer, %eax
	cmpq	%rax, 24(%rsi)
	movw	%r14w, %ax
	je	.LBB1_6
# BB#5:                                 # %cond.false.46
	addq	$56, %rsi
	movswl	%r14w, %edi
	movq	%r8, 16(%rsp)           # 8-byte Spill
	callq	gx_color_frac_map
	movq	16(%rsp), %r8           # 8-byte Reload
	jmp	.LBB1_6
.LBB1_1:
	movw	%r14w, %ax
	jmp	.LBB1_10
.LBB1_3:
	xorl	%eax, %eax
.LBB1_6:                                # %cond.false.60
	movq	424(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB1_13
# BB#7:                                 # %cond.false.64
	movl	%eax, %r13d
	movl	$gs_identity_transfer, %eax
	cmpq	%rax, 24(%rsi)
	je	.LBB1_9
# BB#8:                                 # %cond.false.71
	addq	$56, %rsi
	movswl	%r14w, %edi
	movq	%r8, %r14
	callq	gx_color_frac_map
	movq	%r14, %r8
	movw	%ax, %r14w
.LBB1_9:                                # %cond.end.81
	movl	%r13d, %eax
.LBB1_10:                               # %cond.end.81
	testw	%r14w, %r14w
	jne	.LBB1_11
.LBB1_13:                               # %if.then.93
	movw	%bp, (%r8)
	movw	%r12w, 2(%r8)
	movw	%r15w, 4(%r8)
	jmp	.LBB1_38
.LBB1_11:                               # %cond.end.81
	movzwl	%r14w, %ecx
	cmpl	$32760, %ecx            # imm = 0x7FF8
	jne	.LBB1_14
# BB#12:                                # %if.then
	movw	$0, 4(%r8)
	movl	$0, (%r8)
	jmp	.LBB1_38
.LBB1_14:                               # %if.else.97
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movswl	%r14w, %r13d
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	gs_currentcpsimode
	testl	%eax, %eax
	je	.LBB1_15
# BB#25:                                # %if.else.172
	movl	$32760, %eax            # imm = 0x7FF8
	subl	%r13d, %eax
	cvtsi2ssl	%eax, %xmm1
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movl	36(%rsp), %eax          # 4-byte Reload
	cwtl
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	subss	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	ucomiss	%xmm3, %xmm2
	movq	16(%rsp), %r8           # 8-byte Reload
	movl	12(%rsp), %eax          # 4-byte Reload
	jbe	.LBB1_27
# BB#26:
	xorl	%ecx, %ecx
	jmp	.LBB1_29
.LBB1_15:                               # %if.then.99
	leal	32760(%r13), %eax
	testw	%r14w, %r14w
	movswl	%ax, %ecx
	movl	$32760, %eax            # imm = 0x7FF8
	cmovsl	%ecx, %eax
	cmpl	%r13d, %ebx
	movq	16(%rsp), %r8           # 8-byte Reload
	jge	.LBB1_17
# BB#16:
	xorl	%ecx, %ecx
	jmp	.LBB1_18
.LBB1_27:                               # %cond.false.184
	movw	$32760, %cx             # imm = 0x7FF8
	ucomiss	.LCPI1_0(%rip), %xmm3
	jae	.LBB1_29
# BB#28:                                # %cond.false.188
	cvttss2si	%xmm3, %ecx
.LBB1_29:                               # %cond.end.193
	movw	%cx, (%r8)
	movl	40(%rsp), %ecx          # 4-byte Reload
	movswl	%cx, %ecx
	cvtsi2ssl	%ecx, %xmm4
	divss	%xmm1, %xmm4
	movaps	%xmm0, %xmm3
	subss	%xmm4, %xmm3
	ucomiss	%xmm3, %xmm2
	jbe	.LBB1_31
# BB#30:
	xorl	%ecx, %ecx
	jmp	.LBB1_33
.LBB1_31:                               # %cond.false.205
	movw	$32760, %cx             # imm = 0x7FF8
	ucomiss	.LCPI1_0(%rip), %xmm3
	jae	.LBB1_33
# BB#32:                                # %cond.false.209
	cvttss2si	%xmm3, %ecx
.LBB1_33:                               # %cond.end.214
	movw	%cx, 2(%r8)
	movl	44(%rsp), %ecx          # 4-byte Reload
	movswl	%cx, %ecx
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm1, %xmm2
	subss	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_35
# BB#34:
	xorl	%ecx, %ecx
	jmp	.LBB1_37
.LBB1_35:                               # %cond.false.226
	movw	$32760, %cx             # imm = 0x7FF8
	ucomiss	.LCPI1_0(%rip), %xmm0
	jae	.LBB1_37
# BB#36:                                # %cond.false.230
	cvttss2si	%xmm0, %ecx
	jmp	.LBB1_37
.LBB1_17:                               # %cond.false.114
	subl	%r13d, %ebp
	cmpl	%eax, %ebx
	movw	$32760, %cx             # imm = 0x7FF8
	cmovlew	%bp, %cx
.LBB1_18:                               # %cond.end.126
	movl	32(%rsp), %edx          # 4-byte Reload
	movl	28(%rsp), %esi          # 4-byte Reload
	movw	%cx, (%r8)
	cmpl	%r13d, %esi
	jge	.LBB1_20
# BB#19:
	xorl	%ecx, %ecx
	jmp	.LBB1_21
.LBB1_20:                               # %cond.false.135
	subl	%r13d, %r12d
	cmpl	%eax, %esi
	movw	$32760, %cx             # imm = 0x7FF8
	cmovlew	%r12w, %cx
.LBB1_21:                               # %cond.end.147
	movw	%cx, 2(%r8)
	cmpl	%r13d, %edx
	jge	.LBB1_23
# BB#22:
	xorl	%ecx, %ecx
	movl	12(%rsp), %eax          # 4-byte Reload
	jmp	.LBB1_37
.LBB1_23:                               # %cond.false.156
	subl	%r13d, %r15d
	cmpl	%eax, %edx
	movw	$32760, %cx             # imm = 0x7FF8
	cmovlew	%r15w, %cx
	movl	12(%rsp), %eax          # 4-byte Reload
.LBB1_37:                               # %cond.end.235
	movw	%cx, 4(%r8)
.LBB1_38:                               # %if.end.240
	movw	%ax, 6(%r8)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	color_rgb_to_cmyk, .Lfunc_end1-color_rgb_to_cmyk
	.cfi_endproc

	.globl	color_cmyk_to_gray
	.align	16, 0x90
	.type	color_cmyk_to_gray,@function
color_cmyk_to_gray:                     # @color_cmyk_to_gray
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%edi, %rax
	imulq	$30, %rax, %rax
	movslq	%esi, %rsi
	imulq	$59, %rsi, %rsi
	movslq	%edx, %rdx
	imulq	$11, %rdx, %rdx
	addq	%rax, %rsi
	leaq	50(%rdx,%rsi), %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rdx # imm = 0x28F5C28F5C28F5C3
	mulq	%rdx
	shrq	$2, %rdx
	movswl	%dx, %eax
	movl	$32760, %esi            # imm = 0x7FF8
	subl	%ecx, %esi
	movl	%esi, %ecx
	subl	%edx, %ecx
	xorl	%edx, %edx
	cmpl	%esi, %eax
	cmovlew	%cx, %dx
	movswl	%dx, %eax
	retq
.Lfunc_end2:
	.size	color_cmyk_to_gray, .Lfunc_end2-color_cmyk_to_gray
	.cfi_endproc

	.globl	color_cmyk_to_rgb
	.align	16, 0x90
	.type	color_cmyk_to_rgb,@function
color_cmyk_to_rgb:                      # @color_cmyk_to_rgb
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
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movl	%ecx, %ebx
	movl	%edx, %r14d
	movl	%esi, %r15d
	movl	%edi, %ebp
	cmpl	$32760, %ebx            # imm = 0x7FF8
	jne	.LBB3_1
# BB#3:                                 # %sw.bb.11
	movw	$0, 4(%r12)
	movl	$0, (%r12)
	jmp	.LBB3_8
.LBB3_1:                                # %entry
	testl	%ebx, %ebx
	jne	.LBB3_4
# BB#2:                                 # %sw.bb
	movl	$32760, %eax            # imm = 0x7FF8
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%ebp, %ecx
	movw	%cx, (%r12)
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%r15d, %ecx
	movw	%cx, 2(%r12)
	subl	%r14d, %eax
	jmp	.LBB3_7
.LBB3_4:                                # %sw.default
	movq	48(%rsp), %rdi
	callq	gs_currentcpsimode
	testl	%eax, %eax
	je	.LBB3_5
# BB#6:                                 # %if.else
	movl	$32760, %eax            # imm = 0x7FF8
	subl	%ebx, %eax
	movslq	%eax, %rcx
	movswq	%bp, %rdx
	movl	$32760, %eax            # imm = 0x7FF8
	movl	$32760, %esi            # imm = 0x7FF8
	subq	%rdx, %rsi
	imulq	%rcx, %rsi
	movq	%rsi, %rdx
	shrq	$15, %rdx
	shrl	$3, %esi
	leal	1(%rdx,%rsi), %edx
	shrl	$12, %edx
	movw	%dx, (%r12)
	movswq	%r15w, %rdx
	movl	$32760, %esi            # imm = 0x7FF8
	subq	%rdx, %rsi
	imulq	%rcx, %rsi
	movq	%rsi, %rdx
	shrq	$15, %rdx
	shrl	$3, %esi
	leal	1(%rdx,%rsi), %edx
	shrl	$12, %edx
	movw	%dx, 2(%r12)
	movswq	%r14w, %rdx
	subq	%rdx, %rax
	imulq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$15, %rcx
	shrl	$3, %eax
	leal	1(%rcx,%rax), %eax
	shrl	$12, %eax
	jmp	.LBB3_7
.LBB3_5:                                # %if.then
	movl	$32760, %eax            # imm = 0x7FF8
	subl	%ebx, %eax
	movswl	%ax, %ecx
	movswl	%bp, %edx
	movl	%eax, %esi
	subl	%ebp, %esi
	xorl	%edi, %edi
	cmpl	%edx, %ecx
	cmovlw	%di, %si
	movw	%si, (%r12)
	movswl	%r15w, %edx
	movl	%eax, %esi
	subl	%r15d, %esi
	cmpl	%edx, %ecx
	cmovlw	%di, %si
	movw	%si, 2(%r12)
	movswl	%r14w, %edx
	subl	%r14d, %eax
	cmpl	%edx, %ecx
	cmovlw	%di, %ax
.LBB3_7:                                # %do.end
	movw	%ax, 4(%r12)
.LBB3_8:                                # %do.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	color_cmyk_to_rgb, .Lfunc_end3-color_cmyk_to_rgb
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
