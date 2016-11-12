	.text
	.file	"gdevddrw.bc"
	.globl	gx_fill_trapezoid_cf_fd
	.align	16, 0x90
	.type	gx_fill_trapezoid_cf_fd,@function
gx_fill_trapezoid_cf_fd:                # @gx_fill_trapezoid_cf_fd
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
	subq	$136, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 192
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
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	leal	127(%rcx), %r10d
	movl	%r10d, %r12d
	andl	$-256, %r12d
	orl	$128, %r12d
	leal	127(%r8), %r11d
	movl	%r11d, %ecx
	andl	$-256, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %r12d
	jge	.LBB0_98
# BB#1:                                 # %if.end
	movq	%r8, 80(%rsp)           # 8-byte Spill
	movq	192(%rsp), %rax
	movslq	8(%rsi), %rcx
	movslq	8(%rdx), %rdi
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movl	(%rsi), %ebx
	movl	4(%rsi), %ebp
	movl	%ecx, %r14d
	subl	%ebx, %r14d
	movl	(%rdx), %r13d
	movl	4(%rdx), %edi
	movl	%edi, 120(%rsp)         # 4-byte Spill
	movl	%r12d, %edi
	subl	%ebp, %edi
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	1200(%rax), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	12(%rsi), %eax
	subl	%ebp, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	12(%rdx), %r8d
	addl	$127, %ebx
	leal	127(%r13), %r15d
	movslq	%ebx, %rax
	addq	$127, %rcx
	xorq	%rax, %rcx
	xorl	%esi, %esi
	cmpq	$256, %rcx              # imm = 0x100
	jae	.LBB0_3
# BB#2:
	movq	%r13, 112(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	jmp	.LBB0_16
.LBB0_3:                                # %if.else
	testl	%r14d, %r14d
	js	.LBB0_7
# BB#4:                                 # %if.then.i
	movq	%r13, 112(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movl	44(%rsp), %ecx          # 4-byte Reload
	cmpl	%r14d, %ecx
	jle	.LBB0_6
# BB#5:
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movl	%r14d, %esi
	jmp	.LBB0_11
.LBB0_7:                                # %if.else.8.i
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %esi
	addl	%r14d, %esi
	js	.LBB0_9
# BB#8:                                 # %if.then.12.i
	movq	%r13, 112(%rsp)         # 8-byte Spill
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	subl	%edi, %ebx
	movl	$-1, %r13d
	jmp	.LBB0_11
.LBB0_6:                                # %if.else.i
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movl	%r14d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r13d
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.16.i
	movq	%r13, 112(%rsp)         # 8-byte Spill
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	leal	1(%r14), %eax
	cltd
	idivl	%ecx
	movl	%eax, %r13d
	decl	%r13d
.LBB0_10:                               # %compute_dx.exit
	movl	%r13d, %eax
	imull	%ecx, %eax
	movl	%r14d, %esi
	subl	%eax, %esi
	movl	%r13d, %eax
	imull	%edi, %eax
	addl	%ebx, %eax
	movl	%eax, %ebx
.LBB0_11:                               # %compute_dx.exit
	movl	%r8d, 124(%rsp)         # 4-byte Spill
	movq	%r10, 64(%rsp)          # 8-byte Spill
	cmpl	$255, %edi
	jg	.LBB0_14
# BB#12:                                # %compute_dx.exit
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB0_14
# BB#13:                                # %cond.true
	movl	%esi, %eax
	imull	%edi, %eax
	cltd
	idivl	44(%rsp)                # 4-byte Folded Reload
	jmp	.LBB0_15
.LBB0_14:                               # %cond.false
	movl	%esi, %ebp
	movl	44(%rsp), %edx          # 4-byte Reload
	movl	%edi, 108(%rsp)         # 4-byte Spill
	movl	%r12d, 20(%rsp)         # 4-byte Spill
	movl	%r11d, %r12d
	movl	%r13d, 104(%rsp)        # 4-byte Spill
	callq	fixed_mult_quo
	movl	%ebp, %esi
	movl	104(%rsp), %r13d        # 4-byte Reload
	movl	%r12d, %r11d
	movl	20(%rsp), %r12d         # 4-byte Reload
	movl	108(%rsp), %edi         # 4-byte Reload
.LBB0_15:                               # %cond.end
	movl	%eax, %ebp
	movq	64(%rsp), %r10          # 8-byte Reload
	movl	124(%rsp), %r8d         # 4-byte Reload
	leal	(%rbx,%rbp), %ebx
	movl	76(%rsp), %r9d          # 4-byte Reload
.LBB0_16:                               # %if.end.73
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	120(%rsp), %eax         # 4-byte Reload
	subl	%eax, %r8d
	sarl	$8, %r10d
	sarl	$8, %r11d
	subl	%eax, %r12d
	movl	%r9d, %eax
	andl	$1, %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	andl	$2, %r9d
	movq	56(%rsp), %rax          # 8-byte Reload
	subl	$-128, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	addl	$-128, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movslq	%r15d, %rax
	leaq	127(%rcx), %rdx
	xorq	%rax, %rdx
	cmpq	$255, %rdx
	ja	.LBB0_25
# BB#17:                                # %if.then.82
	movl	%r13d, %eax
	orl	%esi, %eax
	je	.LBB0_19
# BB#18:
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	movl	%edi, 108(%rsp)         # 4-byte Spill
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	jmp	.LBB0_58
.LBB0_25:                               # %if.else.130
	movq	112(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ecx
	cmpl	%r14d, %ecx
	movq	%rcx, %rdx
	jne	.LBB0_45
# BB#26:                                # %if.else.130
	testl	%ebp, %ebp
	je	.LBB0_45
# BB#27:                                # %if.then.136
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	testl	%r13d, %r13d
	je	.LBB0_28
# BB#29:                                # %if.else.144
	testl	%r14d, %r14d
	js	.LBB0_32
# BB#30:                                # %if.then.i.196
	cmpl	%r14d, %r8d
	jg	.LBB0_36
# BB#31:                                # %if.else.i.208
	movl	%r14d, %eax
	cltd
	idivl	%r8d
	jmp	.LBB0_35
.LBB0_45:                               # %if.else.179
	testl	%edx, %edx
	js	.LBB0_49
# BB#46:                                # %if.then.i.231
	xorl	%eax, %eax
	cmpl	%edx, %r8d
	jle	.LBB0_48
# BB#47:
	movl	%edx, %ecx
	jmp	.LBB0_53
.LBB0_19:                               # %if.then.90
	testl	%r9d, %r9d
	setne	%r9b
	cmpl	$0, 120(%rsp)           # 4-byte Folded Reload
	setne	%dil
	movl	%ebx, %esi
	sarl	$8, %esi
	movl	%r15d, %ecx
	sarl	$8, %ecx
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r10d
	setl	%dl
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r10d
	setg	%al
	testb	%r9b, %al
	jne	.LBB0_23
# BB#20:                                # %if.then.90
	andb	%dil, %dl
	jne	.LBB0_23
# BB#21:                                # %if.then.90
	cmpl	%ecx, %esi
	jne	.LBB0_23
# BB#22:                                # %if.then.105
	movl	%esi, %eax
	shll	$8, %eax
	orl	$128, %eax
	subl	%eax, %r15d
	subl	%ebx, %eax
	cmpl	%r15d, %eax
	setl	%al
	movzbl	%al, %ecx
	setge	%al
	addl	%esi, %ecx
	movzbl	%al, %eax
	subl	%eax, %esi
.LBB0_23:                               # %do.end.123
	subl	%esi, %ecx
	subl	%r10d, %r11d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r10d, %edx
	movl	%r11d, %r8d
	jmp	.LBB0_24
.LBB0_28:
	movl	%esi, %edx
	jmp	.LBB0_37
.LBB0_49:                               # %if.else.8.i.247
	movl	%r8d, %ecx
	addl	%edx, %ecx
	js	.LBB0_51
# BB#50:                                # %if.then.12.i.251
	subl	%r12d, %r15d
	movl	$-1, %eax
	jmp	.LBB0_53
.LBB0_48:                               # %if.else.i.243
	movl	%edx, %eax
	movq	%rdx, %r14
	cltd
	idivl	%r8d
	jmp	.LBB0_52
.LBB0_32:                               # %if.else.8.i.212
	movl	%r8d, %eax
	addl	%r14d, %eax
	js	.LBB0_34
# BB#33:                                # %if.then.12.i.216
	subl	%r12d, %r15d
	movl	$-1, 96(%rsp)           # 4-byte Folded Spill
	movl	%eax, %edx
	jmp	.LBB0_37
.LBB0_51:                               # %if.else.16.i.261
	leal	1(%rdx), %eax
	movq	%rdx, %r14
	cltd
	idivl	%r8d
	decl	%eax
.LBB0_52:                               # %compute_dx.exit262
	movl	%eax, %ecx
	imull	%r8d, %ecx
	subl	%ecx, %r14d
	movl	%eax, %ecx
	imull	%r12d, %ecx
	addl	%ecx, %r15d
	movl	%r14d, %ecx
.LBB0_53:                               # %compute_dx.exit262
	movl	%r13d, 104(%rsp)        # 4-byte Spill
	cmpl	$255, %r12d
	jg	.LBB0_56
# BB#54:                                # %compute_dx.exit262
	cmpl	$8388606, %ecx          # imm = 0x7FFFFE
	jg	.LBB0_56
# BB#55:                                # %cond.true.188
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	%edi, 108(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	imull	%r12d, %eax
	cltd
	idivl	%r8d
	jmp	.LBB0_57
.LBB0_56:                               # %cond.false.193
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	%edi, 108(%rsp)         # 4-byte Spill
	movl	%r12d, %edi
	movl	%r8d, %r13d
	movl	%esi, 128(%rsp)         # 4-byte Spill
	movl	%ecx, %esi
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movl	%r13d, %edx
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movl	%r11d, 40(%rsp)         # 4-byte Spill
	movq	%r10, %r14
	movl	%r12d, 20(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	movl	128(%rsp), %esi         # 4-byte Reload
	movl	%r13d, %r8d
	movl	20(%rsp), %r12d         # 4-byte Reload
	movq	%r14, %r10
	movl	40(%rsp), %r11d         # 4-byte Reload
	movl	76(%rsp), %r9d          # 4-byte Reload
.LBB0_57:                               # %cond.end.197
	movl	104(%rsp), %r13d        # 4-byte Reload
	addl	%eax, %r15d
	jmp	.LBB0_58
.LBB0_34:                               # %if.else.16.i.226
	leal	1(%r14), %eax
	cltd
	idivl	%r8d
	decl	%eax
.LBB0_35:                               # %if.end.145
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	%eax, %edx
	imull	%r8d, %edx
	subl	%edx, %r14d
	imull	%r12d, %eax
	addl	%eax, %r15d
.LBB0_36:                               # %if.end.145
	movl	%r14d, %edx
.LBB0_37:                               # %if.end.145
	cmpl	%edi, %r12d
	jne	.LBB0_40
# BB#38:                                # %if.end.145
	cmpl	44(%rsp), %r8d          # 4-byte Folded Reload
	jne	.LBB0_40
# BB#39:                                # %if.then.153
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movl	%edi, 108(%rsp)         # 4-byte Spill
	addl	%ebp, %r15d
	jmp	.LBB0_58
.LBB0_40:                               # %if.else.156
	movl	%r13d, 104(%rsp)        # 4-byte Spill
	cmpl	$255, %r12d
	jg	.LBB0_44
# BB#41:                                # %if.else.156
	cmpl	$8388606, %edx          # imm = 0x7FFFFE
	jg	.LBB0_44
# BB#42:                                # %cond.true.165
	movl	%edi, 108(%rsp)         # 4-byte Spill
	movl	%edx, %eax
	movl	%edx, 92(%rsp)          # 4-byte Spill
	imull	%r12d, %eax
	cltd
	idivl	%r8d
	jmp	.LBB0_43
.LBB0_44:                               # %cond.false.170
	movl	%edi, 108(%rsp)         # 4-byte Spill
	movl	%r12d, %edi
	movl	%r8d, %r13d
	movl	%esi, 128(%rsp)         # 4-byte Spill
	movl	%edx, %esi
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movl	%r13d, %edx
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movl	%r11d, 40(%rsp)         # 4-byte Spill
	movq	%r10, %r14
	movl	%r12d, 20(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	movl	128(%rsp), %esi         # 4-byte Reload
	movl	%r13d, %r8d
	movl	20(%rsp), %r12d         # 4-byte Reload
	movq	%r14, %r10
	movl	40(%rsp), %r11d         # 4-byte Reload
	movl	76(%rsp), %r9d          # 4-byte Reload
.LBB0_43:                               # %if.end.202
	addl	%eax, %r15d
	movl	104(%rsp), %r13d        # 4-byte Reload
.LBB0_58:                               # %if.end.202
	movl	%r8d, 124(%rsp)         # 4-byte Spill
	movl	44(%rsp), %r14d         # 4-byte Reload
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB0_64
# BB#59:                                # %if.then.i.265
	shll	$8, %r13d
	testl	%esi, %esi
	movl	%r13d, %ecx
	movl	124(%rsp), %r13d        # 4-byte Reload
	je	.LBB0_60
# BB#61:                                # %if.else.i.269
	movl	%r12d, 20(%rsp)         # 4-byte Spill
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movl	%esi, %eax
	shll	$8, %eax
	cltd
	idivl	%r14d
	movl	%edx, 104(%rsp)         # 4-byte Spill
	addl	%ecx, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%esi, %ebp
	movl	108(%rsp), %edi         # 4-byte Reload
	imull	%edi, %ebp
	cmpl	$255, %edi
	jg	.LBB0_63
# BB#62:                                # %cond.true.i
	movq	%r10, 64(%rsp)          # 8-byte Spill
	movl	%r11d, 40(%rsp)         # 4-byte Spill
	movl	%ebp, %eax
	cltd
	idivl	%r14d
	subl	%r14d, %edx
	movl	%edx, 128(%rsp)         # 4-byte Spill
	jmp	.LBB0_65
.LBB0_64:                               # %if.else.19.i
	movl	%r12d, 20(%rsp)         # 4-byte Spill
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movq	%r10, 64(%rsp)          # 8-byte Spill
	movl	%r11d, 40(%rsp)         # 4-byte Spill
	shll	$8, %r13d
	movl	$256, %edi              # imm = 0x100
	movl	%r13d, %ebp
	movl	%esi, %r13d
	movl	%r14d, %edx
	callq	fixed_mult_quo
	addl	%ebp, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%r13d, %r12d
	shll	$8, %r12d
	movl	$256, %edi              # imm = 0x100
	movl	%r13d, %esi
	movl	%r14d, %edx
	callq	fixed_mult_quo
	imull	%r14d, %eax
	subl	%eax, %r12d
	movl	%r12d, 104(%rsp)        # 4-byte Spill
	movl	%r13d, %ebp
	movl	108(%rsp), %edi         # 4-byte Reload
	imull	%edi, %ebp
	movl	%r13d, %esi
	movl	%r14d, %edx
	callq	fixed_mult_quo
	imull	%r14d, %eax
	subl	%r14d, %ebp
	subl	%eax, %ebp
	movl	%ebp, 128(%rsp)         # 4-byte Spill
	movl	124(%rsp), %r13d        # 4-byte Reload
	jmp	.LBB0_65
.LBB0_60:
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	movl	%r12d, 20(%rsp)         # 4-byte Spill
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movq	%r10, 64(%rsp)          # 8-byte Spill
	movl	%r11d, 40(%rsp)         # 4-byte Spill
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	movl	112(%rsp), %eax         # 4-byte Reload
	movl	%eax, 128(%rsp)         # 4-byte Spill
	jmp	.LBB0_65
.LBB0_63:                               # %cond.false.i
	movq	%r10, 64(%rsp)          # 8-byte Spill
	movl	%r11d, 40(%rsp)         # 4-byte Spill
	movl	%r14d, %edx
	callq	fixed_mult_quo
	imull	%r14d, %eax
	subl	%eax, %ebp
	subl	%r14d, %ebp
	movl	%ebp, 128(%rsp)         # 4-byte Spill
.LBB0_65:                               # %compute_ldx.exit
	movl	96(%rsp), %ebp          # 4-byte Reload
	movl	92(%rsp), %r14d         # 4-byte Reload
	movl	%r13d, %eax
	negl	%eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	shll	$8, %ebp
	cmpl	$8388606, %r14d         # imm = 0x7FFFFE
	jg	.LBB0_72
# BB#66:                                # %if.then.i.277
	testl	%r14d, %r14d
	movl	40(%rsp), %r9d          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movq	80(%rsp), %r10          # 8-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	je	.LBB0_67
# BB#69:                                # %if.else.i.290
	movl	%r14d, %eax
	shll	$8, %eax
	cltd
	idivl	%r13d
	movl	%edx, 96(%rsp)          # 4-byte Spill
	addl	%ebp, %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	%r14d, %esi
	movl	%r13d, %r14d
	movl	%esi, %r13d
	movl	20(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r13d
	cmpl	$255, %edi
	jg	.LBB0_71
# BB#70:                                # %cond.true.i.292
	movl	%r13d, %eax
	cltd
	idivl	%r14d
	movl	%edx, %r13d
	subl	%r14d, %r13d
	movl	%r14d, 124(%rsp)        # 4-byte Spill
	movq	56(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB0_68
.LBB0_72:                               # %if.else.19.i.316
	movl	$256, %edi              # imm = 0x100
	movl	%r14d, %esi
	movl	%r13d, %edx
	callq	fixed_mult_quo
	addl	%ebp, %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	%r14d, %ebp
	shll	$8, %ebp
	movl	$256, %edi              # imm = 0x100
	movl	%r14d, %esi
	movl	%r13d, %edx
	callq	fixed_mult_quo
	imull	%r13d, %eax
	subl	%eax, %ebp
	movl	%ebp, 96(%rsp)          # 4-byte Spill
	movl	%r13d, %ebp
	movl	%ebp, 124(%rsp)         # 4-byte Spill
	movl	%r14d, %r13d
	movl	20(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r13d
	movl	%r14d, %esi
	movl	%ebp, %edx
	callq	fixed_mult_quo
	imull	%ebp, %eax
	subl	%ebp, %r13d
	subl	%eax, %r13d
	movl	40(%rsp), %r9d          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB0_73
.LBB0_67:
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	movl	%r13d, 124(%rsp)        # 4-byte Spill
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	movl	108(%rsp), %r13d        # 4-byte Reload
.LBB0_68:                               # %compute_ldx.exit317
	movl	76(%rsp), %r14d         # 4-byte Reload
	movq	%r10, %rdi
	jmp	.LBB0_74
.LBB0_71:                               # %cond.false.i.296
	movl	%r14d, %edx
	movq	%r8, %rbp
	callq	fixed_mult_quo
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %r8
	movl	40(%rsp), %r9d          # 4-byte Reload
	imull	%r14d, %eax
	subl	%eax, %r13d
	subl	%r14d, %r13d
	movl	%r14d, 124(%rsp)        # 4-byte Spill
.LBB0_73:                               # %compute_ldx.exit317
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	76(%rsp), %r14d         # 4-byte Reload
.LBB0_74:                               # %compute_ldx.exit317
	testl	%r14d, %r14d
	setne	%r11b
	cmpl	$0, 120(%rsp)           # 4-byte Folded Reload
	setne	%r12b
	incl	%ebx
	incl	%r15d
	movslq	%ebx, %rdx
	leaq	-256(%rdx), %rax
	movl	128(%rsp), %ebp         # 4-byte Reload
	cmpl	112(%rsp), %ebp         # 4-byte Folded Reload
	cmovneq	%rdx, %rax
	testb	%bl, %bl
	cmovneq	%rdx, %rax
	movq	%rax, %rbp
	shrq	$8, %rbp
	movslq	%r15d, %rdx
	movabsq	$1099511627520, %rsi    # imm = 0xFFFFFFFF00
	leaq	(%rdx,%rsi), %r10
	cmpl	108(%rsp), %r13d        # 4-byte Folded Reload
	cmovneq	%rdx, %r10
	testb	%r15b, %r15b
	cmovneq	%rdx, %r10
	shrq	$8, %r10
	cmpl	%ecx, %r8d
	setl	%dl
	cmpl	%edi, %r8d
	setg	%cl
	testb	%r11b, %cl
	movl	44(%rsp), %r8d          # 4-byte Reload
	jne	.LBB0_78
# BB#75:                                # %compute_ldx.exit317
	andb	%r12b, %dl
	jne	.LBB0_78
# BB#76:                                # %compute_ldx.exit317
	cmpl	%r10d, %ebp
	jne	.LBB0_78
# BB#77:                                # %if.then.262
	movl	$4294967040, %ecx       # imm = 0xFFFFFF00
	andl	%ecx, %eax
	orl	$128, %eax
	movl	%r15d, %ecx
	subl	%eax, %ecx
	subl	%ebx, %eax
	cmpl	%ecx, %eax
	setl	%al
	movzbl	%al, %eax
	setge	%cl
	leal	(%rax,%rbp), %r10d
	movzbl	%cl, %eax
	subl	%eax, %ebp
.LBB0_78:                               # %while.cond.preheader
	testl	%r14d, %r14d
	sete	76(%rsp)                # 1-byte Folded Spill
.LBB0_79:                               # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_80 Depth 2
	movl	%ebp, %r11d
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %eax
	movq	56(%rsp), %rdi          # 8-byte Reload
	.align	16, 0x90
.LBB0_80:                               # %while.cond
                                        #   Parent Loop BB0_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %r14d
	cmpl	%r14d, %r9d
	je	.LBB0_99
# BB#81:                                # %while.body
                                        #   in Loop: Header=BB0_80 Depth=2
	cmpl	$0, 120(%rsp)           # 4-byte Folded Reload
	setne	%cl
	movl	%ebx, %eax
	addl	100(%rsp), %eax         # 4-byte Folded Reload
	movl	128(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ebx
	addl	104(%rsp), %ebx         # 4-byte Folded Reload
	movl	$0, %edx
	cmovnsl	%r8d, %edx
	movl	%ebx, %esi
	subl	%edx, %esi
	movl	%esi, 128(%rsp)         # 4-byte Spill
	shrl	$31, %ebx
	xorl	$1, %ebx
	addl	%eax, %ebx
	movslq	%ebx, %rdx
	leaq	-256(%rdx), %rax
	testb	%bl, %bl
	cmovneq	%rdx, %rax
	cmpl	112(%rsp), %esi         # 4-byte Folded Reload
	cmovneq	%rdx, %rax
	movq	%rax, %rbp
	shrq	$8, %rbp
	movl	%r15d, %edx
	addl	92(%rsp), %edx          # 4-byte Folded Reload
	movl	%r13d, %r15d
	addl	96(%rsp), %r15d         # 4-byte Folded Reload
	movl	$0, %esi
	cmovnsl	124(%rsp), %esi         # 4-byte Folded Reload
	movl	%r15d, %r13d
	subl	%esi, %r13d
	shrl	$31, %r15d
	xorl	$1, %r15d
	addl	%edx, %r15d
	movslq	%r15d, %rdx
	movabsq	$1099511627520, %rsi    # imm = 0xFFFFFFFF00
	leaq	(%rdx,%rsi), %r12
	testb	%r15b, %r15b
	cmovneq	%rdx, %r12
	cmpl	108(%rsp), %r13d        # 4-byte Folded Reload
	cmovneq	%rdx, %r12
	shrq	$8, %r12
	cmpl	%edi, %r14d
	setl	%dl
	testb	%dl, %cl
	leal	-1(%r14), %edx
	jne	.LBB0_86
# BB#82:                                # %while.body
                                        #   in Loop: Header=BB0_80 Depth=2
	cmpl	%r12d, %ebp
	jne	.LBB0_86
# BB#83:                                # %land.lhs.true.359
                                        #   in Loop: Header=BB0_80 Depth=2
	movq	80(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %edx
	setl	%cl
	orb	76(%rsp), %cl           # 1-byte Folded Reload
	movzbl	%cl, %ecx
	cmpl	$1, %ecx
	jne	.LBB0_84
# BB#85:                                # %if.then.364
                                        #   in Loop: Header=BB0_80 Depth=2
	movl	$4294967040, %ecx       # imm = 0xFFFFFF00
	andl	%ecx, %eax
	orl	$128, %eax
	movl	%r15d, %ecx
	subl	%eax, %ecx
	subl	%ebx, %eax
	cmpl	%ecx, %eax
	setl	%al
	setge	%cl
	movzbl	%cl, %ecx
	movzbl	%al, %r12d
	addl	%ebp, %r12d
	subl	%ecx, %ebp
	jmp	.LBB0_86
	.align	16, 0x90
.LBB0_84:                               #   in Loop: Header=BB0_80 Depth=2
	movl	%ebp, %r12d
.LBB0_86:                               # %if.end.382
                                        #   in Loop: Header=BB0_80 Depth=2
	cmpl	%r11d, %ebp
	jne	.LBB0_88
# BB#87:                                # %if.end.382
                                        #   in Loop: Header=BB0_80 Depth=2
	leal	1(%r14), %eax
	cmpl	%r10d, %r12d
	je	.LBB0_80
.LBB0_88:                               # %if.then.388
                                        #   in Loop: Header=BB0_79 Depth=1
	cmpl	%ebp, %r10d
	jge	.LBB0_92
# BB#89:                                # %if.then.391
                                        #   in Loop: Header=BB0_79 Depth=1
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movl	%r14d, %r8d
	movq	64(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %r8d
	cmpl	$2, %r8d
	jl	.LBB0_90
# BB#91:                                # %do.end.398
                                        #   in Loop: Header=BB0_79 Depth=1
	subl	%r11d, %r10d
	decl	%r8d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r11d, %esi
	movl	%r10d, %ecx
	movl	%r9d, 40(%rsp)          # 4-byte Spill
	movq	24(%rsp), %r9           # 8-byte Reload
	movl	%r11d, 16(%rsp)         # 4-byte Spill
	callq	*32(%rsp)               # 8-byte Folded Reload
	movl	16(%rsp), %r11d         # 4-byte Reload
	movl	40(%rsp), %r9d          # 4-byte Reload
	testl	%eax, %eax
	movl	20(%rsp), %edx          # 4-byte Reload
	movl	%edx, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	%ebp, %r10d
	jns	.LBB0_92
	jmp	.LBB0_98
.LBB0_90:                               #   in Loop: Header=BB0_79 Depth=1
	movl	%ebp, %r10d
	movl	20(%rsp), %edx          # 4-byte Reload
.LBB0_92:                               # %if.end.411
                                        #   in Loop: Header=BB0_79 Depth=1
	cmpl	%r11d, %r12d
	jge	.LBB0_93
# BB#94:                                # %if.then.414
                                        #   in Loop: Header=BB0_79 Depth=1
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movl	%r14d, %r8d
	movq	64(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %r8d
	cmpl	$2, %r8d
	jl	.LBB0_95
# BB#96:                                # %do.end.421
                                        #   in Loop: Header=BB0_79 Depth=1
	movl	%r10d, %ecx
	subl	%r11d, %ecx
	decl	%r8d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%r10, 8(%rsp)           # 8-byte Spill
	movl	%r11d, %esi
	movl	%r9d, 40(%rsp)          # 4-byte Spill
	movq	24(%rsp), %r9           # 8-byte Reload
	movl	%r11d, 16(%rsp)         # 4-byte Spill
	callq	*32(%rsp)               # 8-byte Folded Reload
	movl	16(%rsp), %r11d         # 4-byte Reload
	movq	8(%rsp), %r10           # 8-byte Reload
	movl	40(%rsp), %r9d          # 4-byte Reload
	testl	%eax, %eax
	movl	%r11d, %r12d
	movl	20(%rsp), %edx          # 4-byte Reload
	jns	.LBB0_97
	jmp	.LBB0_98
.LBB0_93:                               #   in Loop: Header=BB0_79 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%eax, %edx
	jmp	.LBB0_97
.LBB0_95:                               #   in Loop: Header=BB0_79 Depth=1
	movl	%r11d, %r12d
.LBB0_97:                               # %do.end.437
                                        #   in Loop: Header=BB0_79 Depth=1
	movl	%r9d, 40(%rsp)          # 4-byte Spill
	subl	%r11d, %r10d
	movl	%r14d, %r8d
	subl	%edx, %r8d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r11d, %esi
	movl	%r10d, %ecx
	movq	24(%rsp), %r9           # 8-byte Reload
	callq	*32(%rsp)               # 8-byte Folded Reload
	movl	44(%rsp), %r8d          # 4-byte Reload
	movl	40(%rsp), %r9d          # 4-byte Reload
	testl	%eax, %eax
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movl	%r12d, %r10d
	jns	.LBB0_79
.LBB0_98:                               # %cleanup.483
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_99:                               # %do.end.449
	subl	%r11d, %r10d
	movq	64(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %r9d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r11d, %esi
	movl	%r10d, %ecx
	movl	%r9d, %r8d
.LBB0_24:                               # %do.end.123
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end0:
	.size	gx_fill_trapezoid_cf_fd, .Lfunc_end0-gx_fill_trapezoid_cf_fd
	.cfi_endproc

	.globl	gx_fill_trapezoid_cf_nd
	.align	16, 0x90
	.type	gx_fill_trapezoid_cf_nd,@function
gx_fill_trapezoid_cf_nd:                # @gx_fill_trapezoid_cf_nd
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
	subq	$136, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 192
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
	movl	%ecx, %r11d
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leal	127(%r11), %r10d
	movl	%r10d, %r12d
	andl	$-256, %r12d
	orl	$128, %r12d
	leal	127(%r8), %r15d
	movl	%r15d, %ecx
	andl	$-256, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %r12d
	jge	.LBB1_103
# BB#1:                                 # %if.end
	movslq	8(%rsi), %rax
	movslq	8(%rdx), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movl	(%rsi), %ebp
	movl	4(%rsi), %ecx
	movl	%eax, %r13d
	subl	%ebp, %r13d
	movl	(%rdx), %ebx
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movl	4(%rdx), %edi
	movl	%edi, 116(%rsp)         # 4-byte Spill
	movl	%r12d, %edi
	subl	%ecx, %edi
	movl	12(%rsi), %esi
	subl	%ecx, %esi
	movl	%esi, 60(%rsp)          # 4-byte Spill
	movl	12(%rdx), %r14d
	addl	$127, %ebp
	leal	127(%rbx), %ebx
	movslq	%ebp, %rcx
	addq	$127, %rax
	xorq	%rcx, %rax
	xorl	%esi, %esi
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB1_3
# BB#2:
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	jmp	.LBB1_16
.LBB1_3:                                # %if.else
	testl	%r13d, %r13d
	js	.LBB1_7
# BB#4:                                 # %if.then.i
	movl	60(%rsp), %ecx          # 4-byte Reload
	cmpl	%r13d, %ecx
	jle	.LBB1_6
# BB#5:
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movl	%r13d, %esi
	jmp	.LBB1_11
.LBB1_7:                                # %if.else.8.i
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %esi
	addl	%r13d, %esi
	js	.LBB1_9
# BB#8:                                 # %if.then.12.i
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	subl	%edi, %ebp
	movl	$-1, 132(%rsp)          # 4-byte Folded Spill
	jmp	.LBB1_11
.LBB1_6:                                # %if.else.i
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movl	%r13d, %eax
	cltd
	idivl	%ecx
	jmp	.LBB1_10
.LBB1_9:                                # %if.else.16.i
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	leal	1(%r13), %eax
	cltd
	idivl	%ecx
	decl	%eax
.LBB1_10:                               # %compute_dx.exit
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%ecx, %edx
	movl	%r13d, %esi
	subl	%edx, %esi
	imull	%edi, %eax
	addl	%ebp, %eax
	movl	%eax, %ebp
.LBB1_11:                               # %compute_dx.exit
	movl	%r14d, 128(%rsp)        # 4-byte Spill
	movq	%r10, 64(%rsp)          # 8-byte Spill
	cmpl	$255, %edi
	jg	.LBB1_14
# BB#12:                                # %compute_dx.exit
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB1_14
# BB#13:                                # %cond.true
	movl	%esi, %eax
	imull	%edi, %eax
	cltd
	idivl	60(%rsp)                # 4-byte Folded Reload
	jmp	.LBB1_15
.LBB1_14:                               # %cond.false
	movq	%r11, 48(%rsp)          # 8-byte Spill
	movl	%esi, %r14d
	movl	60(%rsp), %edx          # 4-byte Reload
	movl	%edi, 100(%rsp)         # 4-byte Spill
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	movq	%r8, %r12
	callq	fixed_mult_quo
	movl	%r14d, %esi
	movq	48(%rsp), %r11          # 8-byte Reload
	movq	%r12, %r8
	movl	32(%rsp), %r12d         # 4-byte Reload
	movl	100(%rsp), %edi         # 4-byte Reload
.LBB1_15:                               # %cond.end
	movl	%eax, %r9d
	movq	64(%rsp), %r10          # 8-byte Reload
	movl	128(%rsp), %r14d        # 4-byte Reload
	leal	(%rbp,%r9), %ebp
	movl	76(%rsp), %ecx          # 4-byte Reload
.LBB1_16:                               # %if.end.73
	movq	120(%rsp), %rdx         # 8-byte Reload
	movl	116(%rsp), %eax         # 4-byte Reload
	subl	%eax, %r14d
	sarl	$8, %r10d
	sarl	$8, %r15d
	subl	%eax, %r12d
	movl	%ecx, %eax
	andl	$1, %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	andl	$2, %ecx
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	subl	$-128, %r11d
	addl	$-128, %r8d
	movslq	%ebx, %rax
	movq	%rdx, %rcx
	leaq	127(%rcx), %rdx
	xorq	%rax, %rdx
	cmpq	$255, %rdx
	ja	.LBB1_25
# BB#17:                                # %if.then.82
	movq	%r11, 48(%rsp)          # 8-byte Spill
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	movl	132(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	orl	%esi, %eax
	je	.LBB1_19
# BB#18:
	movl	%edi, %r13d
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	movl	%r14d, 128(%rsp)        # 4-byte Spill
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	movl	76(%rsp), %r9d          # 4-byte Reload
	jmp	.LBB1_58
.LBB1_25:                               # %if.else.131
	movq	%r11, 48(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ecx
	cmpl	%r13d, %ecx
	movq	%rcx, %rdx
	jne	.LBB1_45
# BB#26:                                # %if.else.131
	testl	%r9d, %r9d
	je	.LBB1_45
# BB#27:                                # %if.then.137
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	cmpl	$0, 132(%rsp)           # 4-byte Folded Reload
	je	.LBB1_28
# BB#29:                                # %if.else.145
	testl	%r13d, %r13d
	js	.LBB1_32
# BB#30:                                # %if.then.i.204
	cmpl	%r13d, %r14d
	jg	.LBB1_36
# BB#31:                                # %if.else.i.216
	movl	%r13d, %eax
	cltd
	idivl	%r14d
	jmp	.LBB1_35
.LBB1_45:                               # %if.else.180
	testl	%edx, %edx
	js	.LBB1_49
# BB#46:                                # %if.then.i.239
	xorl	%eax, %eax
	cmpl	%edx, %r14d
	jle	.LBB1_48
# BB#47:
	movl	%edx, %ecx
	jmp	.LBB1_53
.LBB1_19:                               # %if.then.90
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	setne	%r9b
	cmpl	$0, 120(%rsp)           # 4-byte Folded Reload
	setne	%dil
	movl	%ebp, %esi
	sarl	$8, %esi
	movl	%ebx, %ecx
	sarl	$8, %ecx
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r10d
	setl	%dl
	cmpl	%r8d, %r10d
	setg	%al
	testb	%r9b, %al
	jne	.LBB1_23
# BB#20:                                # %if.then.90
	andb	%dil, %dl
	jne	.LBB1_23
# BB#21:                                # %if.then.90
	cmpl	%ecx, %esi
	jne	.LBB1_23
# BB#22:                                # %if.then.105
	movl	%esi, %eax
	shll	$8, %eax
	orl	$128, %eax
	subl	%eax, %ebx
	subl	%ebp, %eax
	cmpl	%ebx, %eax
	setl	%al
	movzbl	%al, %ecx
	setge	%al
	addl	%esi, %ecx
	movzbl	%al, %eax
	subl	%eax, %esi
.LBB1_23:                               # %do.end.123
	movq	192(%rsp), %rdi
	movq	(%rdi), %rax
	subl	%esi, %ecx
	subl	%r10d, %r15d
	movl	200(%rsp), %edx
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%r10d, %edx
	movl	%r15d, %r8d
	jmp	.LBB1_24
.LBB1_28:
	movl	%esi, 104(%rsp)         # 4-byte Spill
	jmp	.LBB1_37
.LBB1_49:                               # %if.else.8.i.255
	movl	%r14d, %ecx
	addl	%edx, %ecx
	js	.LBB1_51
# BB#50:                                # %if.then.12.i.259
	subl	%r12d, %ebx
	movl	$-1, %eax
	jmp	.LBB1_53
.LBB1_48:                               # %if.else.i.251
	movl	%edx, %eax
	movq	%rdx, %r13
	cltd
	idivl	%r14d
	jmp	.LBB1_52
.LBB1_32:                               # %if.else.8.i.220
	movl	%r14d, %eax
	addl	%r13d, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	js	.LBB1_34
# BB#33:                                # %if.then.12.i.224
	subl	%r12d, %ebx
	movl	$-1, 92(%rsp)           # 4-byte Folded Spill
	jmp	.LBB1_37
.LBB1_51:                               # %if.else.16.i.269
	leal	1(%rdx), %eax
	movq	%rdx, %r13
	cltd
	idivl	%r14d
	decl	%eax
.LBB1_52:                               # %compute_dx.exit270
	movl	%eax, %ecx
	imull	%r14d, %ecx
	subl	%ecx, %r13d
	movl	%eax, %ecx
	imull	%r12d, %ecx
	addl	%ecx, %ebx
	movl	%r13d, %ecx
.LBB1_53:                               # %compute_dx.exit270
	movl	76(%rsp), %r9d          # 4-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	cmpl	$255, %r12d
	jg	.LBB1_56
# BB#54:                                # %compute_dx.exit270
	cmpl	$8388606, %ecx          # imm = 0x7FFFFE
	jg	.LBB1_56
# BB#55:                                # %cond.true.189
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	%edi, %r13d
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	imull	%r12d, %eax
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	cltd
	idivl	%r14d
	movl	%r14d, 128(%rsp)        # 4-byte Spill
	jmp	.LBB1_57
.LBB1_56:                               # %cond.false.194
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	%edi, %r13d
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%r12d, %edi
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	movl	%esi, 116(%rsp)         # 4-byte Spill
	movl	%ecx, %esi
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	movl	%r14d, %edx
	movl	%r14d, 128(%rsp)        # 4-byte Spill
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movl	%r15d, %r14d
	movq	%r10, %r15
	movq	%r8, %r12
	callq	fixed_mult_quo
	movl	116(%rsp), %esi         # 4-byte Reload
	movq	%r12, %r8
	movq	%r15, %r10
	movl	%r14d, %r15d
	movl	76(%rsp), %r9d          # 4-byte Reload
.LBB1_57:                               # %cond.end.198
	movl	132(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ebx
	jmp	.LBB1_58
.LBB1_34:                               # %if.else.16.i.234
	leal	1(%r13), %eax
	cltd
	idivl	%r14d
	decl	%eax
.LBB1_35:                               # %if.end.146
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	%eax, %edx
	imull	%r14d, %edx
	subl	%edx, %r13d
	imull	%r12d, %eax
	addl	%eax, %ebx
.LBB1_36:                               # %if.end.146
	movl	%r13d, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
.LBB1_37:                               # %if.end.146
	cmpl	%edi, %r12d
	jne	.LBB1_40
# BB#38:                                # %if.end.146
	cmpl	60(%rsp), %r14d         # 4-byte Folded Reload
	jne	.LBB1_40
# BB#39:                                # %if.then.154
	movl	%edi, %r13d
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	movl	%r14d, 128(%rsp)        # 4-byte Spill
	addl	%r9d, %ebx
	movl	132(%rsp), %ecx         # 4-byte Reload
	movl	76(%rsp), %r9d          # 4-byte Reload
	jmp	.LBB1_58
.LBB1_40:                               # %if.else.157
	cmpl	$255, %r12d
	movl	104(%rsp), %eax         # 4-byte Reload
	movl	76(%rsp), %r9d          # 4-byte Reload
	jg	.LBB1_44
# BB#41:                                # %if.else.157
	cmpl	$8388606, %eax          # imm = 0x7FFFFE
	jg	.LBB1_44
# BB#42:                                # %cond.true.166
	movl	%edi, %r13d
	imull	%r12d, %eax
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	cltd
	idivl	%r14d
	movl	%r14d, 128(%rsp)        # 4-byte Spill
	jmp	.LBB1_43
.LBB1_44:                               # %cond.false.171
	movl	%edi, %r13d
	movl	%r12d, %edi
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	movl	%esi, 116(%rsp)         # 4-byte Spill
	movl	%eax, %esi
	movl	%r14d, %edx
	movl	%r14d, 128(%rsp)        # 4-byte Spill
	movl	%r15d, %r14d
	movq	%r10, %r15
	movq	%r8, %r12
	callq	fixed_mult_quo
	movl	116(%rsp), %esi         # 4-byte Reload
	movq	%r12, %r8
	movq	%r15, %r10
	movl	%r14d, %r15d
	movl	76(%rsp), %r9d          # 4-byte Reload
.LBB1_43:                               # %if.end.203
	addl	%eax, %ebx
	movl	132(%rsp), %ecx         # 4-byte Reload
.LBB1_58:                               # %if.end.203
	movl	60(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %eax
	negl	%eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB1_64
# BB#59:                                # %if.then.i.273
	shll	$8, %ecx
	testl	%esi, %esi
	je	.LBB1_60
# BB#61:                                # %if.else.i.277
	movl	%r15d, %r11d
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movl	%esi, %eax
	shll	$8, %eax
	cltd
	movl	%r12d, %r14d
	idivl	%r14d
	movl	%edx, 100(%rsp)         # 4-byte Spill
	addl	%ecx, %eax
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	%esi, %r15d
	imull	%r13d, %r15d
	cmpl	$255, %r13d
	jg	.LBB1_63
# BB#62:                                # %cond.true.i
	movq	%r8, 80(%rsp)           # 8-byte Spill
	movq	%r10, 64(%rsp)          # 8-byte Spill
	movl	%r11d, 36(%rsp)         # 4-byte Spill
	movl	%r15d, %eax
	cltd
	idivl	%r14d
	subl	%r14d, %edx
	movl	%edx, 132(%rsp)         # 4-byte Spill
	jmp	.LBB1_66
.LBB1_64:                               # %if.else.19.i
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movq	%r8, 80(%rsp)           # 8-byte Spill
	movq	%r10, 64(%rsp)          # 8-byte Spill
	movl	%r15d, 36(%rsp)         # 4-byte Spill
	shll	$8, %ecx
	movl	$256, %edi              # imm = 0x100
	movl	%esi, %r14d
	movl	%r12d, %edx
	movl	%ecx, %r15d
	callq	fixed_mult_quo
	addl	%r15d, %eax
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	%r14d, %r15d
	shll	$8, %r15d
	movl	$256, %edi              # imm = 0x100
	movl	%r14d, %esi
	movl	%r12d, %edx
	callq	fixed_mult_quo
	imull	%r12d, %eax
	subl	%eax, %r15d
	movl	%r15d, 100(%rsp)        # 4-byte Spill
	movl	%r14d, %r15d
	imull	%r13d, %r15d
	movl	%r13d, %edi
	movl	%r14d, %esi
	movl	%r12d, %edx
	callq	fixed_mult_quo
	imull	%r12d, %eax
	subl	%r12d, %r15d
	subl	%eax, %r15d
	jmp	.LBB1_65
.LBB1_60:
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movq	%r8, 80(%rsp)           # 8-byte Spill
	movq	%r10, 64(%rsp)          # 8-byte Spill
	movl	%r15d, 36(%rsp)         # 4-byte Spill
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, 132(%rsp)         # 4-byte Spill
	jmp	.LBB1_66
.LBB1_63:                               # %cond.false.i
	movq	%r8, 80(%rsp)           # 8-byte Spill
	movq	%r10, 64(%rsp)          # 8-byte Spill
	movl	%r11d, 36(%rsp)         # 4-byte Spill
	movl	%r13d, %edi
	movl	%r14d, %edx
	callq	fixed_mult_quo
	imull	%r14d, %eax
	subl	%eax, %r15d
	subl	%r14d, %r15d
.LBB1_65:                               # %compute_ldx.exit
	movl	%r15d, 132(%rsp)        # 4-byte Spill
.LBB1_66:                               # %compute_ldx.exit
	movl	128(%rsp), %r12d        # 4-byte Reload
	movl	92(%rsp), %r14d         # 4-byte Reload
	movl	104(%rsp), %esi         # 4-byte Reload
	movl	%r12d, %eax
	negl	%eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	shll	$8, %r14d
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB1_73
# BB#67:                                # %if.then.i.285
	testl	%esi, %esi
	movl	36(%rsp), %r9d          # 4-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	80(%rsp), %r11          # 8-byte Reload
	je	.LBB1_68
# BB#69:                                # %if.else.i.298
	movl	%esi, %eax
	shll	$8, %eax
	cltd
	idivl	%r12d
	movl	%edx, 92(%rsp)          # 4-byte Spill
	addl	%r14d, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	%r12d, %r13d
	movl	%esi, %r12d
	movl	32(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r12d
	cmpl	$255, %edi
	jg	.LBB1_72
# BB#70:                                # %cond.true.i.300
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	movl	%edx, %r12d
	subl	%r13d, %r12d
	movl	%r13d, 128(%rsp)        # 4-byte Spill
	jmp	.LBB1_71
.LBB1_73:                               # %if.else.19.i.324
	movl	$256, %edi              # imm = 0x100
	movl	%r12d, %edx
	movl	%esi, %r15d
	callq	fixed_mult_quo
	addl	%r14d, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	%r15d, %r13d
	shll	$8, %r13d
	movl	$256, %edi              # imm = 0x100
	movl	%r15d, %esi
	movl	%r12d, %edx
	callq	fixed_mult_quo
	imull	%r12d, %eax
	subl	%eax, %r13d
	movl	%r13d, 92(%rsp)         # 4-byte Spill
	movl	%r12d, %r13d
	movl	%r13d, 128(%rsp)        # 4-byte Spill
	movl	%r15d, %r12d
	movl	32(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r12d
	movl	%r15d, %esi
	movl	%r13d, %edx
	callq	fixed_mult_quo
	imull	%r13d, %eax
	subl	%r13d, %r12d
	subl	%eax, %r12d
	movl	36(%rsp), %r9d          # 4-byte Reload
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %r11          # 8-byte Reload
	jmp	.LBB1_74
.LBB1_68:
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	movl	%r12d, 128(%rsp)        # 4-byte Spill
	movl	%r14d, 88(%rsp)         # 4-byte Spill
	movl	104(%rsp), %r12d        # 4-byte Reload
.LBB1_71:                               # %compute_ldx.exit325
	movl	76(%rsp), %r14d         # 4-byte Reload
	movq	%rcx, %rdi
	jmp	.LBB1_75
.LBB1_72:                               # %cond.false.i.304
	movl	%r13d, %edx
	movq	%rcx, %r14
	callq	fixed_mult_quo
	movq	80(%rsp), %r11          # 8-byte Reload
	movq	%r14, %rdi
	movl	36(%rsp), %r9d          # 4-byte Reload
	imull	%r13d, %eax
	subl	%eax, %r12d
	subl	%r13d, %r12d
	movl	%r13d, 128(%rsp)        # 4-byte Spill
.LBB1_74:                               # %compute_ldx.exit325
	movl	76(%rsp), %r14d         # 4-byte Reload
.LBB1_75:                               # %compute_ldx.exit325
	testl	%r14d, %r14d
	setne	%r10b
	cmpl	$0, 120(%rsp)           # 4-byte Folded Reload
	setne	%r8b
	incl	%ebp
	incl	%ebx
	movslq	%ebp, %rdx
	leaq	-256(%rdx), %rax
	movl	132(%rsp), %ecx         # 4-byte Reload
	cmpl	116(%rsp), %ecx         # 4-byte Folded Reload
	cmovneq	%rdx, %rax
	testb	%bpl, %bpl
	cmovneq	%rdx, %rax
	movq	%rax, %r13
	shrq	$8, %r13
	movslq	%ebx, %rdx
	movabsq	$1099511627520, %rcx    # imm = 0xFFFFFFFF00
	leaq	(%rdx,%rcx), %rsi
	cmpl	104(%rsp), %r12d        # 4-byte Folded Reload
	cmovneq	%rdx, %rsi
	testb	%bl, %bl
	cmovneq	%rdx, %rsi
	shrq	$8, %rsi
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %edi
	setl	%dl
	cmpl	%r11d, %edi
	setg	%cl
	testb	%r10b, %cl
	movl	60(%rsp), %edi          # 4-byte Reload
	jne	.LBB1_76
# BB#77:                                # %compute_ldx.exit325
	andb	%r8b, %dl
	jne	.LBB1_76
# BB#78:                                # %compute_ldx.exit325
	movq	%rsi, %r10
	cmpl	%r10d, %r13d
	jne	.LBB1_80
# BB#79:                                # %if.then.263
	movl	$4294967040, %ecx       # imm = 0xFFFFFF00
	andl	%ecx, %eax
	orl	$128, %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	subl	%ebp, %eax
	cmpl	%ecx, %eax
	setl	%al
	movzbl	%al, %eax
	setge	%cl
	leal	(%rax,%r13), %r10d
	movzbl	%cl, %eax
	subl	%eax, %r13d
.LBB1_80:                               # %while.cond.preheader
	movq	48(%rsp), %r8           # 8-byte Reload
	jmp	.LBB1_81
.LBB1_76:
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	%rsi, %r10
.LBB1_81:                               # %while.cond.preheader
	testl	%r14d, %r14d
	sete	76(%rsp)                # 1-byte Folded Spill
.LBB1_82:                               # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_83 Depth 2
	movl	%r13d, %esi
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %eax
	.align	16, 0x90
.LBB1_83:                               # %while.cond
                                        #   Parent Loop BB1_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %r14d
	cmpl	%r14d, %r9d
	je	.LBB1_104
# BB#84:                                # %while.body
                                        #   in Loop: Header=BB1_83 Depth=2
	movl	%esi, %r11d
	cmpl	$0, 120(%rsp)           # 4-byte Folded Reload
	setne	%cl
	movl	%ebp, %eax
	addl	96(%rsp), %eax          # 4-byte Folded Reload
	movl	132(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ebp
	addl	100(%rsp), %ebp         # 4-byte Folded Reload
	movl	$0, %edx
	cmovnsl	%edi, %edx
	movl	%ebp, %esi
	subl	%edx, %esi
	movl	%esi, 132(%rsp)         # 4-byte Spill
	shrl	$31, %ebp
	xorl	$1, %ebp
	addl	%eax, %ebp
	movslq	%ebp, %rdx
	leaq	-256(%rdx), %rax
	testb	%bpl, %bpl
	cmovneq	%rdx, %rax
	cmpl	116(%rsp), %esi         # 4-byte Folded Reload
	cmovneq	%rdx, %rax
	movq	%rax, %r13
	shrq	$8, %r13
	movl	%ebx, %edx
	addl	88(%rsp), %edx          # 4-byte Folded Reload
	movl	%r12d, %ebx
	addl	92(%rsp), %ebx          # 4-byte Folded Reload
	movl	$0, %esi
	cmovnsl	128(%rsp), %esi         # 4-byte Folded Reload
	movl	%ebx, %r12d
	subl	%esi, %r12d
	shrl	$31, %ebx
	xorl	$1, %ebx
	addl	%edx, %ebx
	movslq	%ebx, %rdx
	movabsq	$1099511627520, %rsi    # imm = 0xFFFFFFFF00
	leaq	(%rdx,%rsi), %r15
	testb	%bl, %bl
	cmovneq	%rdx, %r15
	cmpl	104(%rsp), %r12d        # 4-byte Folded Reload
	cmovneq	%rdx, %r15
	shrq	$8, %r15
	cmpl	%r8d, %r14d
	setl	%dl
	testb	%dl, %cl
	leal	-1(%r14), %edx
	jne	.LBB1_85
# BB#86:                                # %while.body
                                        #   in Loop: Header=BB1_83 Depth=2
	cmpl	%r15d, %r13d
	jne	.LBB1_87
# BB#88:                                # %land.lhs.true.360
                                        #   in Loop: Header=BB1_83 Depth=2
	movq	80(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %edx
	setl	%cl
	orb	76(%rsp), %cl           # 1-byte Folded Reload
	movzbl	%cl, %ecx
	cmpl	$1, %ecx
	movl	%r11d, %esi
	jne	.LBB1_89
# BB#90:                                # %if.then.365
                                        #   in Loop: Header=BB1_83 Depth=2
	movl	$4294967040, %ecx       # imm = 0xFFFFFF00
	andl	%ecx, %eax
	orl	$128, %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	subl	%ebp, %eax
	cmpl	%ecx, %eax
	setl	%al
	setge	%cl
	movzbl	%cl, %ecx
	movzbl	%al, %r15d
	addl	%r13d, %r15d
	subl	%ecx, %r13d
	jmp	.LBB1_91
	.align	16, 0x90
.LBB1_85:                               #   in Loop: Header=BB1_83 Depth=2
	movl	%r11d, %esi
	jmp	.LBB1_91
	.align	16, 0x90
.LBB1_87:                               #   in Loop: Header=BB1_83 Depth=2
	movl	%r11d, %esi
	jmp	.LBB1_91
	.align	16, 0x90
.LBB1_89:                               #   in Loop: Header=BB1_83 Depth=2
	movl	%r13d, %r15d
.LBB1_91:                               # %if.end.383
                                        #   in Loop: Header=BB1_83 Depth=2
	cmpl	%esi, %r13d
	jne	.LBB1_93
# BB#92:                                # %if.end.383
                                        #   in Loop: Header=BB1_83 Depth=2
	leal	1(%r14), %eax
	cmpl	%r10d, %r15d
	je	.LBB1_83
.LBB1_93:                               # %if.then.389
                                        #   in Loop: Header=BB1_82 Depth=1
	cmpl	%r13d, %r10d
	jge	.LBB1_97
# BB#94:                                # %if.then.392
                                        #   in Loop: Header=BB1_82 Depth=1
	movl	%edx, 32(%rsp)          # 4-byte Spill
	movl	%r14d, %r8d
	movq	64(%rsp), %rax          # 8-byte Reload
	subl	%eax, %r8d
	cmpl	$2, %r8d
	jl	.LBB1_95
# BB#96:                                # %do.end.399
                                        #   in Loop: Header=BB1_82 Depth=1
	movq	192(%rsp), %rdi
	movq	%rax, %rdx
	movq	(%rdi), %rax
	subl	%esi, %r10d
	decl	%r8d
	movl	200(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%esi, 24(%rsp)          # 4-byte Spill
	movl	24(%rsp), %esi          # 4-byte Reload
	movl	%r10d, %ecx
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	*40(%rax)
	movl	24(%rsp), %esi          # 4-byte Reload
	movl	36(%rsp), %r9d          # 4-byte Reload
	testl	%eax, %eax
	movl	32(%rsp), %edx          # 4-byte Reload
	movl	%edx, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	%r13d, %r10d
	jns	.LBB1_97
	jmp	.LBB1_103
.LBB1_95:                               #   in Loop: Header=BB1_82 Depth=1
	movl	%r13d, %r10d
	movl	32(%rsp), %edx          # 4-byte Reload
.LBB1_97:                               # %if.end.414
                                        #   in Loop: Header=BB1_82 Depth=1
	cmpl	%esi, %r15d
	jge	.LBB1_98
# BB#99:                                # %if.then.417
                                        #   in Loop: Header=BB1_82 Depth=1
	movl	%edx, 32(%rsp)          # 4-byte Spill
	movl	%r14d, %r8d
	movq	64(%rsp), %rax          # 8-byte Reload
	subl	%eax, %r8d
	cmpl	$2, %r8d
	jl	.LBB1_100
# BB#101:                               # %do.end.424
                                        #   in Loop: Header=BB1_82 Depth=1
	movq	192(%rsp), %rdi
	movq	(%rdi), %r11
	movl	%r10d, %ecx
	subl	%esi, %ecx
	decl	%r8d
	movq	%r10, 24(%rsp)          # 8-byte Spill
	movl	200(%rsp), %edx
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%esi, %r15d
	movl	%eax, %edx
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	*40(%r11)
	movl	%r15d, %esi
	movq	24(%rsp), %r10          # 8-byte Reload
	movl	36(%rsp), %r9d          # 4-byte Reload
	testl	%eax, %eax
	movl	32(%rsp), %edx          # 4-byte Reload
	jns	.LBB1_102
	jmp	.LBB1_103
.LBB1_98:                               #   in Loop: Header=BB1_82 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%eax, %edx
	jmp	.LBB1_102
.LBB1_100:                              #   in Loop: Header=BB1_82 Depth=1
	movl	%eax, %edx
	movl	%esi, %r15d
.LBB1_102:                              # %do.end.442
                                        #   in Loop: Header=BB1_82 Depth=1
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movq	192(%rsp), %rdi
	movq	(%rdi), %rax
	subl	%esi, %r10d
	movl	%r14d, %r8d
	subl	%edx, %r8d
	movl	200(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%r10d, %ecx
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	*40(%rax)
	movl	60(%rsp), %edi          # 4-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movl	36(%rsp), %r9d          # 4-byte Reload
	testl	%eax, %eax
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movl	%r15d, %r10d
	jns	.LBB1_82
	jmp	.LBB1_103
.LBB1_104:                              # %do.end.456
	movq	192(%rsp), %rdi
	movq	(%rdi), %rax
	subl	%esi, %r10d
	movq	64(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %r9d
	movl	200(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%r10d, %ecx
	movl	%r9d, %r8d
.LBB1_24:                               # %do.end.123
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	*40(%rax)
.LBB1_103:                              # %cleanup.493
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gx_fill_trapezoid_cf_nd, .Lfunc_end1-gx_fill_trapezoid_cf_nd
	.cfi_endproc

	.globl	gx_default_fill_trapezoid
	.align	16, 0x90
	.type	gx_default_fill_trapezoid,@function
gx_default_fill_trapezoid:              # @gx_default_fill_trapezoid
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
	subq	$152, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 208
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
	movl	%ecx, %r11d
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movl	216(%rsp), %edi
	movq	208(%rsp), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%rcx)
	sete	%cl
	movl	%edi, %eax
	andl	$563, %eax              # imm = 0x233
	cmpl	$48, %eax
	sete	%al
	andb	%cl, %al
	addl	$127, %r11d
	movl	%r11d, %r13d
	andl	$-256, %r13d
	orl	$128, %r13d
	addl	$127, %r8d
	movl	%r8d, %ecx
	andl	$-256, %ecx
	testl	%r9d, %r9d
	je	.LBB2_156
# BB#1:                                 # %if.then
	testb	%al, %al
	je	.LBB2_80
# BB#2:                                 # %if.then.3
	xorl	%eax, %eax
	cmpl	%ecx, %r13d
	jge	.LBB2_311
# BB#3:                                 # %if.end.i
	movslq	8(%rsi), %rax
	movslq	8(%rdx), %r9
	movl	(%rsi), %r12d
	movl	4(%rsi), %ecx
	movl	%eax, %r14d
	subl	%r12d, %r14d
	movl	(%rdx), %ebx
	movl	4(%rdx), %edi
	movl	%edi, 128(%rsp)         # 4-byte Spill
	movl	%r13d, %edi
	subl	%ecx, %edi
	movl	%edi, 136(%rsp)         # 4-byte Spill
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	8(%rdi), %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	1200(%rdi), %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	12(%rsi), %r10d
	subl	%ecx, %r10d
	movl	12(%rdx), %edi
	addl	$127, %r12d
	leal	127(%rbx), %ebp
	movslq	%r12d, %rcx
	addq	$127, %rax
	xorq	%rcx, %rax
	xorl	%esi, %esi
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB2_5
# BB#4:
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	movl	128(%rsp), %eax         # 4-byte Reload
	jmp	.LBB2_18
.LBB2_156:                              # %if.else.5
	testb	%al, %al
	je	.LBB2_234
# BB#157:                               # %if.then.7
	xorl	%eax, %eax
	cmpl	%ecx, %r13d
	jge	.LBB2_311
# BB#158:                               # %if.end.i.269
	movslq	8(%rsi), %rax
	movslq	8(%rdx), %r10
	movl	(%rsi), %r12d
	movl	4(%rsi), %ecx
	movl	%eax, %r14d
	subl	%r12d, %r14d
	movl	(%rdx), %ebx
	movl	4(%rdx), %r15d
	movl	%r13d, %edi
	subl	%ecx, %edi
	movl	%edi, 128(%rsp)         # 4-byte Spill
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	8(%rdi), %rdi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	1200(%rdi), %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movl	12(%rsi), %r9d
	subl	%ecx, %r9d
	movl	12(%rdx), %edi
	addl	$127, %r12d
	leal	127(%rbx), %ebp
	movslq	%r12d, %rcx
	addq	$127, %rax
	xorq	%rcx, %rax
	xorl	%esi, %esi
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB2_160
# BB#159:
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	jmp	.LBB2_173
.LBB2_80:                               # %if.else
	movl	%edi, 48(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	cmpl	%ecx, %r13d
	jge	.LBB2_311
# BB#81:                                # %if.end.i.32
	movslq	8(%rsi), %rax
	movslq	8(%rdx), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	(%rsi), %ebx
	movl	4(%rsi), %ecx
	movl	%eax, %r15d
	subl	%ebx, %r15d
	movl	(%rdx), %edi
	movl	4(%rdx), %ebp
	movl	%ebp, 148(%rsp)         # 4-byte Spill
	movl	%r13d, %r12d
	subl	%ecx, %r12d
	movl	12(%rsi), %r9d
	subl	%ecx, %r9d
	movl	12(%rdx), %ecx
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	addl	$127, %ebx
	leal	127(%rdi), %r14d
	movslq	%ebx, %rcx
	addq	$127, %rax
	xorq	%rcx, %rax
	xorl	%ecx, %ecx
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB2_83
# BB#82:
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	movl	148(%rsp), %eax         # 4-byte Reload
	movq	136(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_96
.LBB2_234:                              # %if.else.9
	movl	%edi, 48(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	cmpl	%ecx, %r13d
	jge	.LBB2_311
# BB#235:                               # %if.end.i.602
	movslq	8(%rsi), %rax
	movslq	8(%rdx), %r9
	movl	(%rsi), %r12d
	movl	4(%rsi), %ecx
	movl	%eax, %r14d
	subl	%r12d, %r14d
	movl	(%rdx), %ebx
	movl	4(%rdx), %edi
	movl	%r13d, %r15d
	subl	%ecx, %r15d
	movl	12(%rsi), %r10d
	subl	%ecx, %r10d
	movl	12(%rdx), %ecx
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	addl	$127, %r12d
	leal	127(%rbx), %ebp
	movslq	%r12d, %rcx
	addq	$127, %rax
	xorq	%rcx, %rax
	xorl	%ecx, %ecx
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB2_237
# BB#236:
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	jmp	.LBB2_250
.LBB2_5:                                # %if.else.i
	testl	%r14d, %r14d
	js	.LBB2_9
# BB#6:                                 # %if.then.i.i
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	cmpl	%r14d, %r10d
	jle	.LBB2_8
# BB#7:
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movl	%r14d, %esi
	movl	136(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_13
.LBB2_83:                               # %if.else.i.34
	testl	%r15d, %r15d
	js	.LBB2_87
# BB#84:                                # %if.then.i.i.36
	xorl	%r10d, %r10d
	cmpl	%r15d, %r9d
	jle	.LBB2_86
# BB#85:
	movl	%r15d, %ecx
	jmp	.LBB2_91
.LBB2_160:                              # %if.else.i.271
	testl	%r14d, %r14d
	js	.LBB2_164
# BB#161:                               # %if.then.i.i.273
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	cmpl	%r14d, %r9d
	jle	.LBB2_163
# BB#162:
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movl	%r14d, %esi
	movl	128(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_168
.LBB2_237:                              # %if.else.i.604
	testl	%r14d, %r14d
	js	.LBB2_241
# BB#238:                               # %if.then.i.i.606
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	cmpl	%r14d, %r10d
	jle	.LBB2_240
# BB#239:
	movl	$0, 120(%rsp)           # 4-byte Folded Spill
	movl	%r14d, %ecx
	jmp	.LBB2_245
.LBB2_9:                                # %if.else.8.i.i
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movl	%r10d, %esi
	addl	%r14d, %esi
	js	.LBB2_11
# BB#10:                                # %if.then.12.i.i
	movl	136(%rsp), %edi         # 4-byte Reload
	subl	%edi, %r12d
	movl	$-1, %r15d
	jmp	.LBB2_13
.LBB2_87:                               # %if.else.8.i.i.45
	movl	%r9d, %ecx
	addl	%r15d, %ecx
	js	.LBB2_89
# BB#88:                                # %if.then.12.i.i.47
	subl	%r12d, %ebx
	movl	$-1, %r10d
	jmp	.LBB2_91
.LBB2_8:                                # %if.else.i.i
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	cltd
	idivl	%r10d
	movl	%eax, %r15d
	jmp	.LBB2_12
.LBB2_86:                               # %if.else.i.i.42
	movl	%r15d, %eax
	cltd
	idivl	%r9d
	movl	%eax, %r10d
	jmp	.LBB2_90
.LBB2_164:                              # %if.else.8.i.i.282
	movl	%r9d, %esi
	addl	%r14d, %esi
	js	.LBB2_166
# BB#165:                               # %if.then.12.i.i.284
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movl	128(%rsp), %edi         # 4-byte Reload
	subl	%edi, %r12d
	movl	$-1, %r15d
	jmp	.LBB2_168
.LBB2_241:                              # %if.else.8.i.i.615
	movl	%r10d, %ecx
	addl	%r14d, %ecx
	js	.LBB2_243
# BB#242:                               # %if.then.12.i.i.617
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	subl	%r15d, %r12d
	movl	$-1, 120(%rsp)          # 4-byte Folded Spill
	jmp	.LBB2_245
.LBB2_163:                              # %if.else.i.i.279
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	cltd
	idivl	%r9d
	movl	%eax, %r15d
	jmp	.LBB2_167
.LBB2_240:                              # %if.else.i.i.612
	movl	%r14d, %eax
	cltd
	idivl	%r10d
	jmp	.LBB2_244
.LBB2_11:                               # %if.else.16.i.i
	leal	1(%r14), %eax
	cltd
	idivl	%r10d
	movl	%eax, %r15d
	decl	%r15d
.LBB2_12:                               # %compute_dx.exit.i
	movl	%r15d, %eax
	imull	%r10d, %eax
	movl	%r14d, %esi
	subl	%eax, %esi
	movl	%r15d, %eax
	movl	136(%rsp), %edi         # 4-byte Reload
	imull	%edi, %eax
	addl	%r12d, %eax
	movl	%eax, %r12d
.LBB2_13:                               # %compute_dx.exit.i
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	cmpl	$255, %edi
	jg	.LBB2_16
# BB#14:                                # %compute_dx.exit.i
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB2_16
# BB#15:                                # %cond.true.i
	movl	%esi, %eax
	imull	%edi, %eax
	movl	%edi, 136(%rsp)         # 4-byte Spill
	cltd
	idivl	%r10d
	movl	%eax, %ecx
	movl	60(%rsp), %r13d         # 4-byte Reload
	movl	148(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_17
.LBB2_16:                               # %cond.false.i
	movl	%r15d, 112(%rsp)        # 4-byte Spill
	movl	%r10d, %r15d
	movl	%esi, %ebx
	movl	%edi, %eax
	movl	%r15d, %edx
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%r11d, %r13d
	movl	%eax, 136(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	movl	%ebx, %esi
	movl	148(%rsp), %edi         # 4-byte Reload
	movl	%r15d, %r10d
	movl	112(%rsp), %r15d        # 4-byte Reload
	movl	%r13d, %r11d
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	%eax, %ecx
	movl	60(%rsp), %r13d         # 4-byte Reload
.LBB2_17:                               # %cond.end.i
	movq	104(%rsp), %r9          # 8-byte Reload
	movl	128(%rsp), %eax         # 4-byte Reload
	leal	(%r12,%rcx), %r12d
.LBB2_18:                               # %if.end.61.i
	subl	%eax, %edi
	sarl	$8, %r11d
	sarl	$8, %r8d
	subl	%eax, %r13d
	movslq	%ebp, %rax
	leaq	127(%r9), %rdx
	xorq	%rax, %rdx
	cmpq	$255, %rdx
	ja	.LBB2_22
# BB#19:                                # %if.then.70.i
	xorl	%ebx, %ebx
	movl	%r15d, %eax
	orl	%esi, %eax
	je	.LBB2_21
# BB#20:
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	jmp	.LBB2_55
.LBB2_22:                               # %if.else.95.i
	movq	120(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r9d
	cmpl	%r14d, %r9d
	jne	.LBB2_42
# BB#23:                                # %if.else.95.i
	testl	%ecx, %ecx
	je	.LBB2_42
# BB#24:                                # %if.then.101.i
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	testl	%r15d, %r15d
	je	.LBB2_25
# BB#26:                                # %if.else.109.i
	testl	%r14d, %r14d
	js	.LBB2_29
# BB#27:                                # %if.then.i.16.i
	cmpl	%r14d, %edi
	jg	.LBB2_33
# BB#28:                                # %if.else.i.28.i
	movl	%r14d, %eax
	cltd
	idivl	%edi
	jmp	.LBB2_32
.LBB2_42:                               # %if.else.144.i
	testl	%r9d, %r9d
	js	.LBB2_45
# BB#43:                                # %if.then.i.51.i
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	cmpl	%r9d, %edi
	jg	.LBB2_49
# BB#44:                                # %if.else.i.63.i
	movl	%r9d, %eax
	cltd
	idivl	%edi
	jmp	.LBB2_48
.LBB2_21:                               # %if.then.78.i
	sarl	$8, %r12d
	sarl	$8, %ebp
	subl	%r11d, %r8d
	subl	%r12d, %ebp
	movq	80(%rsp), %rdi          # 8-byte Reload
	movl	%r11d, %esi
	movl	%r12d, %edx
	movl	%r8d, %ecx
	movl	%ebp, %r8d
	jmp	.LBB2_78
.LBB2_25:
	movl	%esi, %ebx
	jmp	.LBB2_34
.LBB2_45:                               # %if.else.8.i.67.i
	movl	%edi, %ebx
	addl	%r9d, %ebx
	js	.LBB2_47
# BB#46:                                # %if.then.12.i.71.i
	subl	%r13d, %ebp
	movl	$-1, 104(%rsp)          # 4-byte Folded Spill
	jmp	.LBB2_50
.LBB2_89:                               # %if.else.16.i.i.55
	leal	1(%r15), %eax
	cltd
	idivl	%r9d
	movl	%eax, %r10d
	decl	%r10d
.LBB2_90:                               # %compute_dx.exit.i.61
	movl	%r10d, %eax
	imull	%r9d, %eax
	movl	%r15d, %ecx
	subl	%eax, %ecx
	movl	%r10d, %eax
	imull	%r12d, %eax
	addl	%ebx, %eax
	movl	%eax, %ebx
.LBB2_91:                               # %compute_dx.exit.i.61
	movq	136(%rsp), %rbp         # 8-byte Reload
	cmpl	$255, %r12d
	jg	.LBB2_94
# BB#92:                                # %compute_dx.exit.i.61
	cmpl	$8388606, %ecx          # imm = 0x7FFFFE
	jg	.LBB2_94
# BB#93:                                # %cond.true.i.64
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movl	%ecx, %eax
	imull	%r12d, %eax
	cltd
	idivl	%r9d
	jmp	.LBB2_95
.LBB2_94:                               # %cond.false.i.66
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movl	%r12d, %edi
	movl	%ecx, %esi
	movl	%r9d, %edx
	movl	%r12d, 112(%rsp)        # 4-byte Spill
	movq	%r8, %r12
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, %r13d
	movl	%r9d, 32(%rsp)          # 4-byte Spill
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	movl	%r10d, 120(%rsp)        # 4-byte Spill
	callq	fixed_mult_quo
	movl	120(%rsp), %r10d        # 4-byte Reload
	movl	104(%rsp), %ecx         # 4-byte Reload
	movl	32(%rsp), %r9d          # 4-byte Reload
	movl	%r13d, %r11d
	movl	60(%rsp), %r13d         # 4-byte Reload
	movq	%r12, %r8
	movl	112(%rsp), %r12d        # 4-byte Reload
.LBB2_95:                               # %cond.end.i.69
	movl	%eax, %edi
	movl	148(%rsp), %eax         # 4-byte Reload
	leal	(%rbx,%rdi), %ebx
.LBB2_96:                               # %if.end.61.i.77
	subl	%eax, 40(%rsp)          # 4-byte Folded Spill
	sarl	$8, %r11d
	sarl	$8, %r8d
	subl	%eax, %r13d
	movslq	%r14d, %rax
	leaq	127(%rbp), %rdx
	xorq	%rax, %rdx
	cmpq	$255, %rdx
	ja	.LBB2_100
# BB#97:                                # %if.then.70.i.78
	movl	%r10d, %eax
	orl	%ecx, %eax
	je	.LBB2_99
# BB#98:
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	movl	$0, 136(%rsp)           # 4-byte Folded Spill
	jmp	.LBB2_133
.LBB2_100:                              # %if.else.96.i
	movq	128(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ebp
	cmpl	%r15d, %ebp
	jne	.LBB2_120
# BB#101:                               # %if.else.96.i
	testl	%edi, %edi
	je	.LBB2_120
# BB#102:                               # %if.then.102.i
	movl	$0, 136(%rsp)           # 4-byte Folded Spill
	testl	%r10d, %r10d
	je	.LBB2_103
# BB#104:                               # %if.else.110.i
	testl	%r15d, %r15d
	js	.LBB2_107
# BB#105:                               # %if.then.i.16.i.86
	movl	40(%rsp), %esi          # 4-byte Reload
	cmpl	%r15d, %esi
	jg	.LBB2_111
# BB#106:                               # %if.else.i.28.i.92
	movl	%r15d, %eax
	cltd
	idivl	%esi
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%esi, %edx
	jmp	.LBB2_110
.LBB2_120:                              # %if.else.145.i
	testl	%ebp, %ebp
	js	.LBB2_123
# BB#121:                               # %if.then.i.51.i.112
	movl	$0, 136(%rsp)           # 4-byte Folded Spill
	movl	40(%rsp), %esi          # 4-byte Reload
	cmpl	%ebp, %esi
	jg	.LBB2_127
# BB#122:                               # %if.else.i.63.i.118
	movl	%ebp, %eax
	cltd
	idivl	%esi
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%esi, %edx
	jmp	.LBB2_126
.LBB2_99:                               # %if.then.78.i.82
	sarl	$8, %ebx
	sarl	$8, %r14d
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	subl	%r11d, %r8d
	subl	%ebx, %r14d
	movl	48(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%r11d, %esi
	movl	%ebx, %edx
	movl	%r8d, %ecx
	movl	%r14d, %r8d
	jmp	.LBB2_310
.LBB2_103:
	movl	%ecx, %esi
	jmp	.LBB2_112
.LBB2_123:                              # %if.else.8.i.67.i.121
	movl	40(%rsp), %edi          # 4-byte Reload
	movl	%edi, %esi
	addl	%ebp, %esi
	js	.LBB2_125
# BB#124:                               # %if.then.12.i.71.i.123
	subl	%r13d, %r14d
	movl	$-1, 136(%rsp)          # 4-byte Folded Spill
	jmp	.LBB2_128
.LBB2_29:                               # %if.else.8.i.32.i
	movl	%edi, %ebx
	addl	%r14d, %ebx
	js	.LBB2_31
# BB#30:                                # %if.then.12.i.36.i
	subl	%r13d, %ebp
	movl	$-1, 104(%rsp)          # 4-byte Folded Spill
	jmp	.LBB2_34
.LBB2_107:                              # %if.else.8.i.32.i.95
	movl	40(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %esi
	addl	%r15d, %esi
	js	.LBB2_109
# BB#108:                               # %if.then.12.i.36.i.97
	subl	%r13d, %r14d
	movl	$-1, 136(%rsp)          # 4-byte Folded Spill
	jmp	.LBB2_112
.LBB2_166:                              # %if.else.16.i.i.292
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movl	%edi, 148(%rsp)         # 4-byte Spill
	leal	1(%r14), %eax
	cltd
	idivl	%r9d
	movl	%eax, %r15d
	decl	%r15d
.LBB2_167:                              # %compute_dx.exit.i.298
	movl	%r15d, %eax
	imull	%r9d, %eax
	movl	%r14d, %esi
	subl	%eax, %esi
	movl	%r15d, %eax
	movl	128(%rsp), %edi         # 4-byte Reload
	imull	%edi, %eax
	addl	%r12d, %eax
	movl	%eax, %r12d
.LBB2_168:                              # %compute_dx.exit.i.298
	movq	%r10, 104(%rsp)         # 8-byte Spill
	cmpl	$255, %edi
	jg	.LBB2_171
# BB#169:                               # %compute_dx.exit.i.298
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB2_171
# BB#170:                               # %cond.true.i.301
	movl	%esi, %eax
	imull	%edi, %eax
	movl	%edi, 128(%rsp)         # 4-byte Spill
	cltd
	idivl	%r9d
	movl	%eax, %ecx
	movl	148(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_172
.LBB2_171:                              # %cond.false.i.303
	movl	%r15d, 112(%rsp)        # 4-byte Spill
	movl	%esi, %r15d
	movl	%edi, %eax
	movl	%r9d, %edx
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, %r13d
	movl	%r9d, %ebx
	movl	%eax, 128(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	movl	%r15d, %esi
	movl	112(%rsp), %r15d        # 4-byte Reload
	movl	148(%rsp), %edi         # 4-byte Reload
	movl	%ebx, %r9d
	movl	%r13d, %r11d
	movl	60(%rsp), %r13d         # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	%eax, %ecx
.LBB2_172:                              # %cond.end.i.306
	movq	104(%rsp), %r10         # 8-byte Reload
	leal	(%r12,%rcx), %r12d
.LBB2_173:                              # %if.end.61.i.314
	movl	136(%rsp), %eax         # 4-byte Reload
	subl	%eax, %edi
	sarl	$8, %r11d
	sarl	$8, %r8d
	subl	%eax, %r13d
	movslq	%ebp, %rax
	leaq	127(%r10), %rdx
	xorq	%rax, %rdx
	cmpq	$255, %rdx
	ja	.LBB2_177
# BB#174:                               # %if.then.70.i.315
	xorl	%ebx, %ebx
	movl	%r15d, %eax
	orl	%esi, %eax
	je	.LBB2_176
# BB#175:
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	jmp	.LBB2_210
.LBB2_177:                              # %if.else.95.i.325
	movq	120(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r10d
	cmpl	%r14d, %r10d
	jne	.LBB2_197
# BB#178:                               # %if.else.95.i.325
	testl	%ecx, %ecx
	je	.LBB2_197
# BB#179:                               # %if.then.101.i.327
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	testl	%r15d, %r15d
	je	.LBB2_180
# BB#181:                               # %if.else.109.i.329
	testl	%r14d, %r14d
	js	.LBB2_184
# BB#182:                               # %if.then.i.16.i.331
	cmpl	%r14d, %edi
	jg	.LBB2_188
# BB#183:                               # %if.else.i.28.i.337
	movl	%r14d, %eax
	cltd
	idivl	%edi
	jmp	.LBB2_187
.LBB2_197:                              # %if.else.144.i.373
	testl	%r10d, %r10d
	js	.LBB2_200
# BB#198:                               # %if.then.i.51.i.375
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	cmpl	%r10d, %edi
	jg	.LBB2_204
# BB#199:                               # %if.else.i.63.i.381
	movl	%r10d, %eax
	cltd
	idivl	%edi
	jmp	.LBB2_203
.LBB2_176:                              # %if.then.78.i.321
	sarl	$8, %r12d
	sarl	$8, %ebp
	subl	%r12d, %ebp
	subl	%r11d, %r8d
	movq	80(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %esi
	movl	%r11d, %edx
	movl	%ebp, %ecx
	jmp	.LBB2_233
.LBB2_180:
	movl	%esi, %ebx
	jmp	.LBB2_189
.LBB2_200:                              # %if.else.8.i.67.i.384
	movl	%edi, %ebx
	addl	%r10d, %ebx
	js	.LBB2_202
# BB#201:                               # %if.then.12.i.71.i.386
	subl	%r13d, %ebp
	movl	$-1, 100(%rsp)          # 4-byte Folded Spill
	jmp	.LBB2_205
.LBB2_243:                              # %if.else.16.i.i.625
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	leal	1(%r14), %eax
	cltd
	idivl	%r10d
	decl	%eax
.LBB2_244:                              # %compute_dx.exit.i.631
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%r10d, %edx
	movl	%r14d, %ecx
	subl	%edx, %ecx
	imull	%r15d, %eax
	addl	%r12d, %eax
	movl	%eax, %r12d
.LBB2_245:                              # %compute_dx.exit.i.631
	movq	%r9, 112(%rsp)          # 8-byte Spill
	cmpl	$255, %r15d
	jg	.LBB2_248
# BB#246:                               # %compute_dx.exit.i.631
	cmpl	$8388606, %ecx          # imm = 0x7FFFFE
	jg	.LBB2_248
# BB#247:                               # %cond.true.i.634
	movl	%ecx, %eax
	imull	%r15d, %eax
	cltd
	idivl	%r10d
	movl	%eax, %ebx
	movq	112(%rsp), %r9          # 8-byte Reload
	movl	120(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_249
.LBB2_248:                              # %cond.false.i.636
	movl	%r15d, %edi
	movl	%ecx, %esi
	movl	%r10d, %edx
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	movq	%r8, %r15
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, %r13d
	movl	%r10d, %ebx
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	movl	120(%rsp), %edi         # 4-byte Reload
	movl	100(%rsp), %ecx         # 4-byte Reload
	movl	%ebx, %r10d
	movl	%r13d, %r11d
	movl	60(%rsp), %r13d         # 4-byte Reload
	movq	%r15, %r8
	movl	136(%rsp), %r15d        # 4-byte Reload
	movl	%eax, %ebx
	movq	112(%rsp), %r9          # 8-byte Reload
.LBB2_249:                              # %cond.end.i.639
	leal	(%r12,%rbx), %r12d
.LBB2_250:                              # %if.end.61.i.647
	movl	148(%rsp), %eax         # 4-byte Reload
	subl	%eax, 40(%rsp)          # 4-byte Folded Spill
	sarl	$8, %r11d
	sarl	$8, %r8d
	subl	%eax, %r13d
	movslq	%ebp, %rax
	leaq	127(%r9), %rdx
	xorq	%rax, %rdx
	cmpq	$255, %rdx
	ja	.LBB2_254
# BB#251:                               # %if.then.70.i.648
	movl	%edi, %eax
	orl	%ecx, %eax
	je	.LBB2_253
# BB#252:
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	jmp	.LBB2_287
.LBB2_254:                              # %if.else.96.i.660
	movq	128(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r9d
	cmpl	%r14d, %r9d
	jne	.LBB2_274
# BB#255:                               # %if.else.96.i.660
	testl	%ebx, %ebx
	je	.LBB2_274
# BB#256:                               # %if.then.102.i.662
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	testl	%edi, %edi
	je	.LBB2_257
# BB#258:                               # %if.else.110.i.664
	testl	%r14d, %r14d
	js	.LBB2_262
# BB#259:                               # %if.then.i.16.i.666
	movl	40(%rsp), %esi          # 4-byte Reload
	cmpl	%r14d, %esi
	jle	.LBB2_261
# BB#260:
	movl	%r14d, %esi
	jmp	.LBB2_266
.LBB2_274:                              # %if.else.145.i.708
	testl	%r9d, %r9d
	js	.LBB2_277
# BB#275:                               # %if.then.i.51.i.710
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	movl	40(%rsp), %esi          # 4-byte Reload
	cmpl	%r9d, %esi
	jg	.LBB2_281
# BB#276:                               # %if.else.i.63.i.716
	movl	%r9d, %eax
	cltd
	idivl	%esi
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%esi, %edx
	jmp	.LBB2_280
.LBB2_253:                              # %if.then.78.i.656
	sarl	$8, %r12d
	sarl	$8, %ebp
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	subl	%r12d, %ebp
	subl	%r11d, %r8d
	movl	48(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%r12d, %esi
	movl	%r11d, %edx
	movl	%ebp, %ecx
	jmp	.LBB2_310
.LBB2_257:
	movl	%ecx, %esi
	jmp	.LBB2_266
.LBB2_277:                              # %if.else.8.i.67.i.719
	movl	40(%rsp), %r14d         # 4-byte Reload
	movl	%r14d, %esi
	addl	%r9d, %esi
	js	.LBB2_279
# BB#278:                               # %if.then.12.i.71.i.721
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	subl	%r13d, %ebp
	movl	$-1, 128(%rsp)          # 4-byte Folded Spill
	jmp	.LBB2_282
.LBB2_47:                               # %if.else.16.i.81.i
	leal	1(%r9), %eax
	cltd
	idivl	%edi
	decl	%eax
.LBB2_48:                               # %compute_dx.exit82.i
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	imull	%edi, %ecx
	subl	%ecx, %r9d
	imull	%r13d, %eax
	addl	%eax, %ebp
.LBB2_49:                               # %compute_dx.exit82.i
	movl	%r9d, %ebx
.LBB2_50:                               # %compute_dx.exit82.i
	movl	136(%rsp), %eax         # 4-byte Reload
	movl	%r15d, 112(%rsp)        # 4-byte Spill
	cmpl	$255, %r13d
	jg	.LBB2_53
# BB#51:                                # %compute_dx.exit82.i
	cmpl	$8388606, %ebx          # imm = 0x7FFFFE
	jg	.LBB2_53
# BB#52:                                # %cond.true.153.i
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	%ebx, %eax
	imull	%r13d, %eax
	cltd
	idivl	%edi
	jmp	.LBB2_54
.LBB2_53:                               # %cond.false.158.i
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	%r10d, 88(%rsp)         # 4-byte Spill
	movl	%edi, %r15d
	movl	%r13d, %edi
	movl	%esi, 120(%rsp)         # 4-byte Spill
	movl	%ebx, %esi
	movl	%r15d, %edx
	movq	%r8, %r14
	movl	%ebx, 128(%rsp)         # 4-byte Spill
	movl	%r11d, %ebx
	callq	fixed_mult_quo
	movl	120(%rsp), %esi         # 4-byte Reload
	movl	%r15d, %edi
	movl	88(%rsp), %r10d         # 4-byte Reload
	movl	%ebx, %r11d
	movl	128(%rsp), %ebx         # 4-byte Reload
	movq	%r14, %r8
.LBB2_54:                               # %cond.end.162.i
	movl	112(%rsp), %r15d        # 4-byte Reload
	addl	%eax, %ebp
	jmp	.LBB2_55
.LBB2_125:                              # %if.else.16.i.81.i.131
	leal	1(%rbp), %eax
	cltd
	idivl	%edi
	decl	%eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%edi, %edx
.LBB2_126:                              # %compute_dx.exit82.i.135
	subl	%edx, %ebp
	imull	%r13d, %eax
	addl	%eax, %r14d
.LBB2_127:                              # %compute_dx.exit82.i.135
	movl	%ebp, %esi
.LBB2_128:                              # %compute_dx.exit82.i.135
	movl	%r10d, 120(%rsp)        # 4-byte Spill
	movl	%r12d, 112(%rsp)        # 4-byte Spill
	cmpl	$255, %r13d
	jg	.LBB2_131
# BB#129:                               # %compute_dx.exit82.i.135
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB2_131
# BB#130:                               # %cond.true.154.i
	movl	%esi, %eax
	movl	%esi, 128(%rsp)         # 4-byte Spill
	imull	%r13d, %eax
	cltd
	idivl	40(%rsp)                # 4-byte Folded Reload
	jmp	.LBB2_132
.LBB2_131:                              # %cond.false.159.i
	movl	%r13d, %edi
	movl	%esi, 128(%rsp)         # 4-byte Spill
	movl	40(%rsp), %edx          # 4-byte Reload
	movq	%r8, %r15
	movl	%r11d, %ebp
	movl	%r9d, %r12d
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	movl	104(%rsp), %ecx         # 4-byte Reload
	movl	%r12d, %r9d
	movl	%ebp, %r11d
	movq	%r15, %r8
.LBB2_132:                              # %cond.end.163.i
	movl	112(%rsp), %r12d        # 4-byte Reload
	movl	120(%rsp), %r10d        # 4-byte Reload
	addl	%eax, %r14d
	jmp	.LBB2_133
.LBB2_184:                              # %if.else.8.i.32.i.340
	movl	%edi, %eax
	addl	%r14d, %eax
	js	.LBB2_186
# BB#185:                               # %if.then.12.i.36.i.342
	subl	%r13d, %ebp
	movl	$-1, 100(%rsp)          # 4-byte Folded Spill
	movl	%eax, %ebx
	jmp	.LBB2_189
.LBB2_262:                              # %if.else.8.i.32.i.675
	movl	%edi, %r9d
	movl	40(%rsp), %edi          # 4-byte Reload
	movl	%edi, %esi
	addl	%r14d, %esi
	js	.LBB2_264
# BB#263:                               # %if.then.12.i.36.i.677
	subl	%r13d, %ebp
	movl	$-1, 128(%rsp)          # 4-byte Folded Spill
	jmp	.LBB2_265
.LBB2_261:                              # %if.else.i.28.i.672
	movl	%r14d, %eax
	cltd
	idivl	%esi
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%esi, %edx
	subl	%edx, %r14d
	imull	%r13d, %eax
	addl	%eax, %ebp
	movl	%r14d, %esi
	jmp	.LBB2_266
.LBB2_31:                               # %if.else.16.i.46.i
	leal	1(%r14), %eax
	cltd
	idivl	%edi
	decl	%eax
.LBB2_32:                               # %if.end.110.i
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%edi, %edx
	subl	%edx, %r14d
	imull	%r13d, %eax
	addl	%eax, %ebp
.LBB2_33:                               # %if.end.110.i
	movl	%r14d, %ebx
.LBB2_34:                               # %if.end.110.i
	movl	136(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r13d
	jne	.LBB2_37
# BB#35:                                # %if.end.110.i
	cmpl	%r10d, %edi
	jne	.LBB2_37
# BB#36:                                # %if.then.118.i
	movl	%eax, 136(%rsp)         # 4-byte Spill
	addl	%ecx, %ebp
	jmp	.LBB2_55
.LBB2_37:                               # %if.else.121.i
	movl	%r15d, 112(%rsp)        # 4-byte Spill
	cmpl	$255, %r13d
	jg	.LBB2_41
# BB#38:                                # %if.else.121.i
	cmpl	$8388606, %ebx          # imm = 0x7FFFFE
	jg	.LBB2_41
# BB#39:                                # %cond.true.130.i
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	%ebx, %eax
	imull	%r13d, %eax
	cltd
	idivl	%edi
	jmp	.LBB2_40
.LBB2_41:                               # %cond.false.135.i
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	%r10d, 88(%rsp)         # 4-byte Spill
	movl	%edi, %r15d
	movl	%r13d, %edi
	movl	%esi, 120(%rsp)         # 4-byte Spill
	movl	%ebx, %esi
	movl	%r15d, %edx
	movq	%r8, %r14
	movl	%ebx, 128(%rsp)         # 4-byte Spill
	movl	%r11d, %ebx
	callq	fixed_mult_quo
	movl	120(%rsp), %esi         # 4-byte Reload
	movl	%r15d, %edi
	movl	88(%rsp), %r10d         # 4-byte Reload
	movl	%ebx, %r11d
	movl	128(%rsp), %ebx         # 4-byte Reload
	movq	%r14, %r8
.LBB2_40:                               # %if.end.167.i
	addl	%eax, %ebp
	movl	112(%rsp), %r15d        # 4-byte Reload
.LBB2_55:                               # %if.end.167.i
	movl	%ebx, 128(%rsp)         # 4-byte Spill
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movl	%r10d, %eax
	negl	%eax
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB2_62
# BB#56:                                # %if.then.i.97.i
	shll	$8, %r15d
	testl	%esi, %esi
	movl	148(%rsp), %r14d        # 4-byte Reload
	movl	128(%rsp), %ebx         # 4-byte Reload
	je	.LBB2_57
# BB#58:                                # %if.else.i.110.i
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%esi, %eax
	shll	$8, %eax
	cltd
	idivl	%r10d
	movl	%edx, 120(%rsp)         # 4-byte Spill
	addl	%r15d, %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	%esi, %r15d
	movl	136(%rsp), %edi         # 4-byte Reload
	imull	%edi, %r15d
	cmpl	$255, %edi
	jg	.LBB2_61
# BB#59:                                # %cond.true.i.112.i
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%r15d, %eax
	cltd
	idivl	%r10d
	movl	%edx, %r15d
	jmp	.LBB2_60
.LBB2_62:                               # %if.else.19.i.136.i
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	shll	$8, %r15d
	movl	%r10d, %r13d
	movl	$256, %edi              # imm = 0x100
	movl	%esi, %r14d
	movl	%r13d, %edx
	callq	fixed_mult_quo
	addl	%r15d, %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	%r14d, %ebx
	shll	$8, %ebx
	movl	$256, %edi              # imm = 0x100
	movl	%r14d, %esi
	movl	%r13d, %edx
	callq	fixed_mult_quo
	imull	%r13d, %eax
	subl	%eax, %ebx
	movl	%ebx, 120(%rsp)         # 4-byte Spill
	movl	%r14d, %r15d
	movl	136(%rsp), %edi         # 4-byte Reload
	imull	%edi, %r15d
	movl	%r14d, %esi
	movl	%r13d, %edx
	callq	fixed_mult_quo
	movl	%r13d, %r10d
	imull	%r10d, %eax
	subl	%r10d, %r15d
	subl	%eax, %r15d
	movl	148(%rsp), %r14d        # 4-byte Reload
	movl	104(%rsp), %r13d        # 4-byte Reload
	movl	128(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB2_63
.LBB2_57:
	movl	$0, 120(%rsp)           # 4-byte Folded Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%r15d, 112(%rsp)        # 4-byte Spill
	movl	%eax, %r15d
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	104(%rsp), %r13d        # 4-byte Reload
	jmp	.LBB2_63
.LBB2_61:                               # %cond.false.i.116.i
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%ebx, %r13d
	movl	%r10d, %ebx
	movl	%ebx, %edx
	callq	fixed_mult_quo
	movl	%ebx, %r10d
	movl	%r13d, %ebx
	imull	%r10d, %eax
	subl	%eax, %r15d
.LBB2_60:                               # %compute_ldx.exit137.i
	subl	%r10d, %r15d
	movl	104(%rsp), %r13d        # 4-byte Reload
.LBB2_63:                               # %compute_ldx.exit137.i
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	cmpl	$8388606, %ebx          # imm = 0x7FFFFE
	jg	.LBB2_70
# BB#64:                                # %if.then.i.85.i
	movl	%r14d, 148(%rsp)        # 4-byte Spill
	shll	$8, %r13d
	testl	%ebx, %ebx
	movq	64(%rsp), %rsi          # 8-byte Reload
	movl	76(%rsp), %r11d         # 4-byte Reload
	movabsq	$1099511627520, %r9     # imm = 0xFFFFFFFF00
	je	.LBB2_65
# BB#66:                                # %if.else.i.89.i
	movl	%r10d, 88(%rsp)         # 4-byte Spill
	movl	%ebx, %eax
	shll	$8, %eax
	cltd
	movl	148(%rsp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, 104(%rsp)         # 4-byte Spill
	addl	%r13d, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%ebx, %r13d
	movl	60(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r13d
	cmpl	$255, %edi
	jg	.LBB2_69
# BB#67:                                # %cond.true.i.i
	movl	%r13d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %r13d
	subl	%ecx, %r13d
	jmp	.LBB2_68
.LBB2_70:                               # %if.else.19.i.i
	shll	$8, %r13d
	movl	%r10d, 88(%rsp)         # 4-byte Spill
	movl	$256, %edi              # imm = 0x100
	movl	%ebx, %esi
	movl	%r14d, %edx
	movl	%r14d, 148(%rsp)        # 4-byte Spill
	callq	fixed_mult_quo
	addl	%r13d, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%ebx, %esi
	shll	$8, %ebx
	movl	$256, %edi              # imm = 0x100
	movl	%esi, %r13d
	movl	%r14d, %edx
	callq	fixed_mult_quo
	imull	%r14d, %eax
	subl	%eax, %ebx
	movl	%ebx, 104(%rsp)         # 4-byte Spill
	movl	%r13d, %esi
	movl	60(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r13d
	movl	%r14d, %edx
	callq	fixed_mult_quo
	movl	88(%rsp), %r10d         # 4-byte Reload
	imull	%r14d, %eax
	subl	%r14d, %r13d
	subl	%eax, %r13d
	movq	64(%rsp), %rsi          # 8-byte Reload
	movl	76(%rsp), %r11d         # 4-byte Reload
	movabsq	$1099511627520, %r9     # imm = 0xFFFFFFFF00
	jmp	.LBB2_71
.LBB2_65:
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	movl	%r13d, 100(%rsp)        # 4-byte Spill
	movl	136(%rsp), %r13d        # 4-byte Reload
	jmp	.LBB2_71
.LBB2_69:                               # %cond.false.i.i
	movl	%ebx, %esi
	movl	%ecx, %edx
	movq	%r9, %r14
	movl	%ecx, %ebx
	callq	fixed_mult_quo
	movq	%r14, %r9
	movq	64(%rsp), %rsi          # 8-byte Reload
	imull	%ebx, %eax
	subl	%eax, %r13d
	subl	%ebx, %r13d
.LBB2_68:                               # %compute_ldx.exit.i
	movl	76(%rsp), %r11d         # 4-byte Reload
	movl	88(%rsp), %r10d         # 4-byte Reload
.LBB2_71:                               # %compute_ldx.exit.i
	movl	32(%rsp), %edi          # 4-byte Reload
	incl	%r12d
	incl	%ebp
	movslq	%r12d, %rax
	leaq	(%rax,%r9), %r14
	cmpl	%edi, %r15d
	cmovneq	%rax, %r14
	testb	%r12b, %r12b
	cmovneq	%rax, %r14
	shrq	$8, %r14
	movslq	%ebp, %rax
	leaq	(%rax,%r9), %rbx
	cmpl	136(%rsp), %r13d        # 4-byte Folded Reload
	cmovneq	%rax, %rbx
	testb	%bpl, %bpl
	cmovneq	%rax, %rbx
	shrq	$8, %rbx
	leal	-1(%rsi), %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
.LBB2_72:                               # %while.cond.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_73 Depth 2
	movl	%r14d, %edx
	movl	%ebx, %r8d
	movl	%r11d, %esi
	.align	16, 0x90
.LBB2_73:                               # %while.cond.i
                                        #   Parent Loop BB2_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r11d, 128(%rsp)        # 4-byte Folded Reload
	je	.LBB2_77
# BB#74:                                # %while.body.i
                                        #   in Loop: Header=BB2_73 Depth=2
	incl	%r11d
	movl	%r12d, %eax
	addl	112(%rsp), %eax         # 4-byte Folded Reload
	movl	%r15d, %r12d
	addl	120(%rsp), %r12d        # 4-byte Folded Reload
	movl	$0, %ecx
	cmovnsl	%r10d, %ecx
	movl	%r12d, %r15d
	subl	%ecx, %r15d
	shrl	$31, %r12d
	xorl	$1, %r12d
	addl	%eax, %r12d
	movslq	%r12d, %rax
	leaq	(%rax,%r9), %r14
	testb	%r12b, %r12b
	cmovneq	%rax, %r14
	cmpl	%edi, %r15d
	cmovneq	%rax, %r14
	shrq	$8, %r14
	movl	%ebp, %eax
	addl	100(%rsp), %eax         # 4-byte Folded Reload
	movl	%r13d, %ebp
	addl	104(%rsp), %ebp         # 4-byte Folded Reload
	movl	$0, %ecx
	cmovnsl	148(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ebp, %r13d
	subl	%ecx, %r13d
	shrl	$31, %ebp
	xorl	$1, %ebp
	addl	%eax, %ebp
	movslq	%ebp, %rax
	leaq	(%rax,%r9), %rbx
	testb	%bpl, %bpl
	cmovneq	%rax, %rbx
	cmpl	136(%rsp), %r13d        # 4-byte Folded Reload
	cmovneq	%rax, %rbx
	shrq	$8, %rbx
	cmpl	%edx, %r14d
	jne	.LBB2_76
# BB#75:                                # %while.body.i
                                        #   in Loop: Header=BB2_73 Depth=2
	cmpl	%r8d, %ebx
	je	.LBB2_73
.LBB2_76:                               # %do.end.303.i
                                        #   in Loop: Header=BB2_72 Depth=1
	movl	%r11d, %ecx
	subl	%esi, %ecx
	subl	%edx, %r8d
	movl	%r10d, 88(%rsp)         # 4-byte Spill
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %r9           # 8-byte Reload
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	callq	*48(%rsp)               # 8-byte Folded Reload
	movl	32(%rsp), %edi          # 4-byte Reload
	movl	88(%rsp), %r10d         # 4-byte Reload
	movabsq	$1099511627520, %r9     # imm = 0xFFFFFFFF00
	movl	76(%rsp), %r11d         # 4-byte Reload
	testl	%eax, %eax
	jns	.LBB2_72
	jmp	.LBB2_311
.LBB2_77:                               # %do.end.315.i
	movq	64(%rsp), %rcx          # 8-byte Reload
	subl	%esi, %ecx
	subl	%edx, %r8d
	movq	80(%rsp), %rdi          # 8-byte Reload
.LBB2_78:                               # %do.end.315.i
	movq	40(%rsp), %r9           # 8-byte Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	jmp	.LBB2_79
.LBB2_109:                              # %if.else.16.i.46.i.105
	leal	1(%r15), %eax
	cltd
	idivl	%ebp
	decl	%eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%ebp, %edx
.LBB2_110:                              # %if.end.111.i
	subl	%edx, %r15d
	imull	%r13d, %eax
	addl	%eax, %r14d
.LBB2_111:                              # %if.end.111.i
	movl	%r15d, %esi
.LBB2_112:                              # %if.end.111.i
	cmpl	%r12d, %r13d
	jne	.LBB2_115
# BB#113:                               # %if.end.111.i
	cmpl	%r9d, 40(%rsp)          # 4-byte Folded Reload
	jne	.LBB2_115
# BB#114:                               # %if.then.119.i
	movl	%esi, 128(%rsp)         # 4-byte Spill
	addl	%edi, %r14d
	jmp	.LBB2_133
.LBB2_115:                              # %if.else.122.i
	movl	%r10d, 120(%rsp)        # 4-byte Spill
	cmpl	$255, %r13d
	jg	.LBB2_119
# BB#116:                               # %if.else.122.i
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB2_119
# BB#117:                               # %cond.true.131.i
	movl	%esi, %eax
	movl	%esi, 128(%rsp)         # 4-byte Spill
	imull	%r13d, %eax
	cltd
	idivl	40(%rsp)                # 4-byte Folded Reload
	jmp	.LBB2_118
.LBB2_119:                              # %cond.false.136.i
	movl	%r13d, %edi
	movl	%esi, 128(%rsp)         # 4-byte Spill
	movl	40(%rsp), %edx          # 4-byte Reload
	movq	%r8, %r15
	movl	%r11d, %ebp
	movl	%r12d, 112(%rsp)        # 4-byte Spill
	movl	%r9d, %r12d
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	movl	104(%rsp), %ecx         # 4-byte Reload
	movl	%r12d, %r9d
	movl	112(%rsp), %r12d        # 4-byte Reload
	movl	%ebp, %r11d
	movq	%r15, %r8
.LBB2_118:                              # %if.end.168.i
	addl	%eax, %r14d
	movl	120(%rsp), %r10d        # 4-byte Reload
.LBB2_133:                              # %if.end.168.i
	movl	%r9d, %eax
	negl	%eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	cmpl	$8388606, %ecx          # imm = 0x7FFFFE
	jg	.LBB2_140
# BB#134:                               # %if.then.i.97.i.141
	shll	$8, %r10d
	testl	%ecx, %ecx
	je	.LBB2_135
# BB#136:                               # %if.else.i.110.i.148
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	shll	$8, %eax
	cltd
	idivl	%r9d
	movl	%edx, 120(%rsp)         # 4-byte Spill
	addl	%r10d, %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	%ecx, %ebp
	imull	%r12d, %ebp
	cmpl	$255, %r12d
	jg	.LBB2_139
# BB#137:                               # %cond.true.i.112.i.150
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%ebp, %eax
	cltd
	idivl	%r9d
	movl	%edx, %ebp
	subl	%r9d, %ebp
	jmp	.LBB2_141
.LBB2_140:                              # %if.else.19.i.136.i.170
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	shll	$8, %r10d
	movl	$256, %edi              # imm = 0x100
	movl	%ecx, %esi
	movl	%r9d, %edx
	movl	%r9d, %r13d
	movl	%ecx, %r15d
	movl	%r10d, %ebp
	callq	fixed_mult_quo
	addl	%ebp, %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	%r15d, %ebp
	shll	$8, %ebp
	movl	$256, %edi              # imm = 0x100
	movl	%r15d, %esi
	movl	%r13d, %edx
	callq	fixed_mult_quo
	imull	%r13d, %eax
	subl	%eax, %ebp
	movl	%ebp, 120(%rsp)         # 4-byte Spill
	movl	%r15d, %ebp
	imull	%r12d, %ebp
	movl	%r12d, %edi
	movl	%r15d, %esi
	movl	%r13d, %edx
	callq	fixed_mult_quo
	movl	%r13d, %r9d
	imull	%r9d, %eax
	subl	%r9d, %ebp
	subl	%eax, %ebp
	jmp	.LBB2_141
.LBB2_135:
	movl	$0, 120(%rsp)           # 4-byte Folded Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%r10d, 112(%rsp)        # 4-byte Spill
	movl	148(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB2_141
.LBB2_139:                              # %cond.false.i.116.i.154
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%r12d, %edi
	movl	%ecx, %esi
	movl	%r9d, %edx
	movl	%r9d, %r12d
	callq	fixed_mult_quo
	movl	%r12d, %r9d
	imull	%r9d, %eax
	subl	%eax, %ebp
	subl	%r9d, %ebp
.LBB2_141:                              # %compute_ldx.exit137.i.175
	movl	40(%rsp), %r15d         # 4-byte Reload
	movl	136(%rsp), %r13d        # 4-byte Reload
	movl	128(%rsp), %esi         # 4-byte Reload
	movl	%r15d, %eax
	negl	%eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB2_148
# BB#142:                               # %if.then.i.85.i.178
	movl	%r9d, %r12d
	shll	$8, %r13d
	testl	%esi, %esi
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	76(%rsp), %r11d         # 4-byte Reload
	movabsq	$1099511627520, %r9     # imm = 0xFFFFFFFF00
	movq	%r9, %rdi
	je	.LBB2_143
# BB#144:                               # %if.else.i.89.i.185
	movl	%esi, %eax
	shll	$8, %eax
	cltd
	idivl	%r15d
	movl	%edx, 104(%rsp)         # 4-byte Spill
	addl	%r13d, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%esi, %r13d
	movl	60(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r13d
	cmpl	$255, %edi
	jg	.LBB2_147
# BB#145:                               # %cond.true.i.i.187
	movl	%r13d, %eax
	cltd
	idivl	%r15d
	movl	%edx, %r13d
	jmp	.LBB2_146
.LBB2_148:                              # %if.else.19.i.i.207
	shll	$8, %r13d
	movl	$256, %edi              # imm = 0x100
	movl	%esi, %r12d
	movl	%r15d, %edx
	movl	%r9d, 32(%rsp)          # 4-byte Spill
	callq	fixed_mult_quo
	addl	%r13d, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%r12d, %r13d
	shll	$8, %r13d
	movl	$256, %edi              # imm = 0x100
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	fixed_mult_quo
	imull	%r15d, %eax
	subl	%eax, %r13d
	movl	%r13d, 104(%rsp)        # 4-byte Spill
	movl	%r12d, %r13d
	movl	60(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r13d
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	fixed_mult_quo
	imull	%r15d, %eax
	subl	%r15d, %r13d
	subl	%eax, %r13d
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	76(%rsp), %r11d         # 4-byte Reload
	movabsq	$1099511627520, %r9     # imm = 0xFFFFFFFF00
	movq	%r9, %rdi
	movl	32(%rsp), %r9d          # 4-byte Reload
	jmp	.LBB2_149
.LBB2_143:
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	movl	%r13d, 100(%rsp)        # 4-byte Spill
	movl	136(%rsp), %r13d        # 4-byte Reload
	movl	%r12d, %r9d
	jmp	.LBB2_149
.LBB2_147:                              # %cond.false.i.i.191
	movl	%r15d, %edx
	callq	fixed_mult_quo
	movl	76(%rsp), %r11d         # 4-byte Reload
	imull	%r15d, %eax
	subl	%eax, %r13d
.LBB2_146:                              # %compute_ldx.exit.i.214
	subl	%r15d, %r13d
	movq	64(%rsp), %rdx          # 8-byte Reload
	movabsq	$1099511627520, %rdi    # imm = 0xFFFFFFFF00
	movl	%r12d, %r9d
.LBB2_149:                              # %compute_ldx.exit.i.214
	incl	%ebx
	incl	%r14d
	movslq	%ebx, %rax
	leaq	(%rax,%rdi), %r15
	cmpl	148(%rsp), %ebp         # 4-byte Folded Reload
	cmovneq	%rax, %r15
	testb	%bl, %bl
	cmovneq	%rax, %r15
	shrq	$8, %r15
	movslq	%r14d, %rax
	leaq	(%rax,%rdi), %r12
	cmpl	136(%rsp), %r13d        # 4-byte Folded Reload
	cmovneq	%rax, %r12
	testb	%r14b, %r14b
	cmovneq	%rax, %r12
	shrq	$8, %r12
	leal	-1(%rdx), %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
.LBB2_150:                              # %while.cond.outer.i.221
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_151 Depth 2
	movl	%r15d, %edx
	movl	%r12d, %r8d
	movl	%r11d, %esi
	movl	40(%rsp), %r10d         # 4-byte Reload
	.align	16, 0x90
.LBB2_151:                              # %while.cond.i.227
                                        #   Parent Loop BB2_150 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r11d, 128(%rsp)        # 4-byte Folded Reload
	je	.LBB2_155
# BB#152:                               # %while.body.i.234
                                        #   in Loop: Header=BB2_151 Depth=2
	incl	%r11d
	movl	%ebx, %eax
	addl	112(%rsp), %eax         # 4-byte Folded Reload
	movl	%ebp, %ebx
	addl	120(%rsp), %ebx         # 4-byte Folded Reload
	movl	$0, %ecx
	cmovnsl	%r9d, %ecx
	movl	%ebx, %ebp
	subl	%ecx, %ebp
	shrl	$31, %ebx
	xorl	$1, %ebx
	addl	%eax, %ebx
	movslq	%ebx, %rax
	leaq	(%rax,%rdi), %r15
	testb	%bl, %bl
	cmovneq	%rax, %r15
	cmpl	148(%rsp), %ebp         # 4-byte Folded Reload
	cmovneq	%rax, %r15
	shrq	$8, %r15
	movl	%r14d, %eax
	addl	100(%rsp), %eax         # 4-byte Folded Reload
	movl	%r13d, %r14d
	addl	104(%rsp), %r14d        # 4-byte Folded Reload
	movl	$0, %ecx
	cmovnsl	%r10d, %ecx
	movl	%r14d, %r13d
	subl	%ecx, %r13d
	shrl	$31, %r14d
	xorl	$1, %r14d
	addl	%eax, %r14d
	movslq	%r14d, %rax
	leaq	(%rax,%rdi), %r12
	testb	%r14b, %r14b
	cmovneq	%rax, %r12
	cmpl	136(%rsp), %r13d        # 4-byte Folded Reload
	cmovneq	%rax, %r12
	shrq	$8, %r12
	cmpl	%edx, %r15d
	jne	.LBB2_154
# BB#153:                               # %while.body.i.234
                                        #   in Loop: Header=BB2_151 Depth=2
	cmpl	%r8d, %r12d
	je	.LBB2_151
.LBB2_154:                              # %do.end.304.i
                                        #   in Loop: Header=BB2_150 Depth=1
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %r10
	movl	%r11d, %ecx
	subl	%esi, %ecx
	subl	%edx, %r8d
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movl	%r9d, 32(%rsp)          # 4-byte Spill
	movq	80(%rsp), %r9           # 8-byte Reload
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	callq	*40(%r10)
	movl	32(%rsp), %r9d          # 4-byte Reload
	movabsq	$1099511627520, %rdi    # imm = 0xFFFFFFFF00
	movl	76(%rsp), %r11d         # 4-byte Reload
	testl	%eax, %eax
	jns	.LBB2_150
	jmp	.LBB2_311
.LBB2_155:                              # %do.end.318.i
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movq	64(%rsp), %rbp          # 8-byte Reload
	subl	%esi, %ebp
	subl	%edx, %r8d
	movl	48(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%ebp, %ecx
	jmp	.LBB2_310
.LBB2_202:                              # %if.else.16.i.81.i.394
	leal	1(%r10), %eax
	cltd
	idivl	%edi
	decl	%eax
.LBB2_203:                              # %compute_dx.exit82.i.401
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	imull	%edi, %ecx
	subl	%ecx, %r10d
	imull	%r13d, %eax
	addl	%eax, %ebp
.LBB2_204:                              # %compute_dx.exit82.i.401
	movl	%r10d, %ebx
.LBB2_205:                              # %compute_dx.exit82.i.401
	movl	128(%rsp), %eax         # 4-byte Reload
	movl	%r15d, 112(%rsp)        # 4-byte Spill
	cmpl	$255, %r13d
	jg	.LBB2_208
# BB#206:                               # %compute_dx.exit82.i.401
	cmpl	$8388606, %ebx          # imm = 0x7FFFFE
	jg	.LBB2_208
# BB#207:                               # %cond.true.153.i.404
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%ebx, %eax
	imull	%r13d, %eax
	cltd
	idivl	%edi
	jmp	.LBB2_209
.LBB2_208:                              # %cond.false.158.i.406
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%edi, %edx
	movl	%r13d, %edi
	movl	%esi, 136(%rsp)         # 4-byte Spill
	movl	%ebx, %esi
	movl	%ebx, 120(%rsp)         # 4-byte Spill
	movq	%r8, %r14
	movl	%r11d, %r15d
	movl	%r9d, %ebx
	movl	%edx, 148(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	movl	136(%rsp), %esi         # 4-byte Reload
	movl	148(%rsp), %edi         # 4-byte Reload
	movl	%ebx, %r9d
	movl	%r15d, %r11d
	movq	%r14, %r8
	movl	120(%rsp), %ebx         # 4-byte Reload
.LBB2_209:                              # %cond.end.162.i.409
	movl	112(%rsp), %r15d        # 4-byte Reload
	addl	%eax, %ebp
	jmp	.LBB2_210
.LBB2_279:                              # %if.else.16.i.81.i.729
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	leal	1(%r9), %eax
	cltd
	idivl	%r14d
	decl	%eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%r14d, %edx
.LBB2_280:                              # %compute_dx.exit82.i.736
	subl	%edx, %r9d
	imull	%r13d, %eax
	addl	%eax, %ebp
.LBB2_281:                              # %compute_dx.exit82.i.736
	movl	%r9d, %esi
.LBB2_282:                              # %compute_dx.exit82.i.736
	movl	%edi, 120(%rsp)         # 4-byte Spill
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, %r15
	cmpl	$255, %r13d
	jg	.LBB2_285
# BB#283:                               # %compute_dx.exit82.i.736
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB2_285
# BB#284:                               # %cond.true.154.i.739
	movl	%esi, %eax
	movl	%esi, 104(%rsp)         # 4-byte Spill
	imull	%r13d, %eax
	cltd
	idivl	40(%rsp)                # 4-byte Folded Reload
	jmp	.LBB2_286
.LBB2_285:                              # %cond.false.159.i.741
	movl	%r13d, %edi
	movl	%esi, 104(%rsp)         # 4-byte Spill
	movl	40(%rsp), %edx          # 4-byte Reload
	movl	%r10d, %ebx
	movl	%ecx, %r14d
	callq	fixed_mult_quo
	movl	%r14d, %ecx
	movl	%ebx, %r10d
.LBB2_286:                              # %cond.end.163.i.744
	movq	%r15, %r8
	movl	76(%rsp), %r11d         # 4-byte Reload
	movl	120(%rsp), %edi         # 4-byte Reload
	addl	%eax, %ebp
	jmp	.LBB2_287
.LBB2_186:                              # %if.else.16.i.46.i.350
	leal	1(%r14), %eax
	cltd
	idivl	%edi
	decl	%eax
.LBB2_187:                              # %if.end.110.i.357
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%edi, %edx
	subl	%edx, %r14d
	imull	%r13d, %eax
	addl	%eax, %ebp
.LBB2_188:                              # %if.end.110.i.357
	movl	%r14d, %ebx
.LBB2_189:                              # %if.end.110.i.357
	movl	128(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r13d
	jne	.LBB2_192
# BB#190:                               # %if.end.110.i.357
	cmpl	%r9d, %edi
	jne	.LBB2_192
# BB#191:                               # %if.then.118.i.359
	movl	%eax, 128(%rsp)         # 4-byte Spill
	addl	%ecx, %ebp
	jmp	.LBB2_210
.LBB2_192:                              # %if.else.121.i.363
	movl	%r15d, 112(%rsp)        # 4-byte Spill
	cmpl	$255, %r13d
	jg	.LBB2_196
# BB#193:                               # %if.else.121.i.363
	cmpl	$8388606, %ebx          # imm = 0x7FFFFE
	jg	.LBB2_196
# BB#194:                               # %cond.true.130.i.366
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%ebx, %eax
	imull	%r13d, %eax
	cltd
	idivl	%edi
	jmp	.LBB2_195
.LBB2_196:                              # %cond.false.135.i.368
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%edi, %edx
	movl	%r13d, %edi
	movl	%esi, 136(%rsp)         # 4-byte Spill
	movl	%ebx, %esi
	movl	%ebx, 120(%rsp)         # 4-byte Spill
	movq	%r8, %r14
	movl	%r11d, %r15d
	movl	%r9d, %ebx
	movl	%edx, 148(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	movl	136(%rsp), %esi         # 4-byte Reload
	movl	148(%rsp), %edi         # 4-byte Reload
	movl	%ebx, %r9d
	movl	%r15d, %r11d
	movq	%r14, %r8
	movl	120(%rsp), %ebx         # 4-byte Reload
.LBB2_195:                              # %if.end.167.i.414
	addl	%eax, %ebp
	movl	112(%rsp), %r15d        # 4-byte Reload
.LBB2_210:                              # %if.end.167.i.414
	movl	%ebx, 120(%rsp)         # 4-byte Spill
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movl	%r9d, %eax
	negl	%eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB2_217
# BB#211:                               # %if.then.i.97.i.417
	shll	$8, %r15d
	testl	%esi, %esi
	movl	148(%rsp), %r14d        # 4-byte Reload
	je	.LBB2_212
# BB#213:                               # %if.else.i.110.i.424
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%esi, %eax
	shll	$8, %eax
	cltd
	idivl	%r9d
	movl	%edx, 112(%rsp)         # 4-byte Spill
	addl	%r15d, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movl	%esi, %r15d
	movl	128(%rsp), %edi         # 4-byte Reload
	imull	%edi, %r15d
	cmpl	$255, %edi
	jg	.LBB2_216
# BB#214:                               # %cond.true.i.112.i.426
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%r15d, %eax
	cltd
	idivl	%r9d
	movl	%edx, %r15d
	subl	%r9d, %r15d
	jmp	.LBB2_218
.LBB2_217:                              # %if.else.19.i.136.i.446
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	shll	$8, %r15d
	movl	$256, %edi              # imm = 0x100
	movl	%esi, %r14d
	movl	%r9d, %edx
	movl	%r9d, %r13d
	callq	fixed_mult_quo
	addl	%r15d, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movl	%r14d, %ebx
	shll	$8, %ebx
	movl	$256, %edi              # imm = 0x100
	movl	%r14d, %esi
	movl	%r13d, %edx
	callq	fixed_mult_quo
	imull	%r13d, %eax
	subl	%eax, %ebx
	movl	%ebx, 112(%rsp)         # 4-byte Spill
	movl	%r14d, %r15d
	movl	128(%rsp), %edi         # 4-byte Reload
	imull	%edi, %r15d
	movl	%r14d, %esi
	movl	%r13d, %edx
	callq	fixed_mult_quo
	movl	%r13d, %r9d
	imull	%r9d, %eax
	subl	%r9d, %r15d
	subl	%eax, %r15d
	movl	148(%rsp), %r14d        # 4-byte Reload
	jmp	.LBB2_218
.LBB2_212:
	movl	$0, 112(%rsp)           # 4-byte Folded Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%r15d, 104(%rsp)        # 4-byte Spill
	movl	136(%rsp), %r15d        # 4-byte Reload
	jmp	.LBB2_218
.LBB2_216:                              # %cond.false.i.116.i.430
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%r9d, %edx
	movl	%r9d, %ebx
	callq	fixed_mult_quo
	movl	%ebx, %r9d
	imull	%r9d, %eax
	subl	%eax, %r15d
	subl	%r9d, %r15d
.LBB2_218:                              # %compute_ldx.exit137.i.451
	movl	100(%rsp), %ebx         # 4-byte Reload
	movl	120(%rsp), %esi         # 4-byte Reload
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB2_225
# BB#219:                               # %if.then.i.85.i.454
	movl	%r14d, 148(%rsp)        # 4-byte Spill
	movl	%r9d, 48(%rsp)          # 4-byte Spill
	shll	$8, %ebx
	testl	%esi, %esi
	movq	64(%rsp), %r10          # 8-byte Reload
	movl	76(%rsp), %r11d         # 4-byte Reload
	movabsq	$1099511627520, %r9     # imm = 0xFFFFFFFF00
	movq	%r9, %r8
	je	.LBB2_220
# BB#221:                               # %if.else.i.89.i.461
	movl	%esi, %eax
	shll	$8, %eax
	cltd
	movl	148(%rsp), %r14d        # 4-byte Reload
	idivl	%r14d
	movl	%edx, 100(%rsp)         # 4-byte Spill
	addl	%ebx, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	%esi, %r13d
	movl	60(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r13d
	cmpl	$255, %edi
	jg	.LBB2_224
# BB#222:                               # %cond.true.i.i.463
	movl	%r13d, %eax
	cltd
	idivl	%r14d
	movl	%edx, %r13d
	subl	%r14d, %r13d
	jmp	.LBB2_226
.LBB2_225:                              # %if.else.19.i.i.483
	shll	$8, %ebx
	movl	$256, %edi              # imm = 0x100
	movl	%r14d, %edx
	movl	%r9d, 48(%rsp)          # 4-byte Spill
	movl	%esi, %r13d
	movl	%r14d, 148(%rsp)        # 4-byte Spill
	callq	fixed_mult_quo
	addl	%ebx, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	%r13d, %esi
	movl	%esi, %ebx
	shll	$8, %ebx
	movl	$256, %edi              # imm = 0x100
	movl	%r14d, %edx
	callq	fixed_mult_quo
	imull	%r14d, %eax
	subl	%eax, %ebx
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	movl	%r13d, %esi
	movl	60(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r13d
	movl	%r14d, %edx
	callq	fixed_mult_quo
	imull	%r14d, %eax
	subl	%r14d, %r13d
	subl	%eax, %r13d
	movq	64(%rsp), %r10          # 8-byte Reload
	movl	76(%rsp), %r11d         # 4-byte Reload
	movabsq	$1099511627520, %r9     # imm = 0xFFFFFFFF00
	movq	%r9, %r8
	jmp	.LBB2_226
.LBB2_220:
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	movl	%ebx, 88(%rsp)          # 4-byte Spill
	movl	128(%rsp), %r13d        # 4-byte Reload
	jmp	.LBB2_226
.LBB2_224:                              # %cond.false.i.i.467
	movl	%r14d, %edx
	callq	fixed_mult_quo
	movabsq	$1099511627520, %r8     # imm = 0xFFFFFFFF00
	movl	76(%rsp), %r11d         # 4-byte Reload
	movq	64(%rsp), %r10          # 8-byte Reload
	imull	%r14d, %eax
	subl	%eax, %r13d
	subl	%r14d, %r13d
.LBB2_226:                              # %compute_ldx.exit.i.507
	movl	48(%rsp), %r9d          # 4-byte Reload
	incl	%r12d
	incl	%ebp
	movslq	%r12d, %rax
	leaq	(%rax,%r8), %r14
	cmpl	136(%rsp), %r15d        # 4-byte Folded Reload
	cmovneq	%rax, %r14
	testb	%r12b, %r12b
	cmovneq	%rax, %r14
	shrq	$8, %r14
	movslq	%ebp, %rax
	leaq	(%rax,%r8), %rbx
	cmpl	128(%rsp), %r13d        # 4-byte Folded Reload
	cmovneq	%rax, %rbx
	testb	%bpl, %bpl
	cmovneq	%rax, %rbx
	shrq	$8, %rbx
	leal	-1(%r10), %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
.LBB2_227:                              # %while.cond.outer.i.515
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_228 Depth 2
	movl	%r14d, %esi
	movl	%ebx, %ecx
	movl	%r11d, %edx
	.align	16, 0x90
.LBB2_228:                              # %while.cond.i.523
                                        #   Parent Loop BB2_227 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r11d, 120(%rsp)        # 4-byte Folded Reload
	je	.LBB2_232
# BB#229:                               # %while.body.i.561
                                        #   in Loop: Header=BB2_228 Depth=2
	incl	%r11d
	movl	%r12d, %eax
	addl	104(%rsp), %eax         # 4-byte Folded Reload
	movl	%r15d, %r12d
	addl	112(%rsp), %r12d        # 4-byte Folded Reload
	movl	$0, %edi
	cmovnsl	%r9d, %edi
	movl	%r12d, %r15d
	subl	%edi, %r15d
	shrl	$31, %r12d
	xorl	$1, %r12d
	addl	%eax, %r12d
	movslq	%r12d, %rax
	leaq	(%rax,%r8), %r14
	testb	%r12b, %r12b
	cmovneq	%rax, %r14
	cmpl	136(%rsp), %r15d        # 4-byte Folded Reload
	cmovneq	%rax, %r14
	shrq	$8, %r14
	movl	%ebp, %eax
	addl	88(%rsp), %eax          # 4-byte Folded Reload
	movl	%r13d, %ebp
	addl	100(%rsp), %ebp         # 4-byte Folded Reload
	movl	$0, %edi
	cmovnsl	148(%rsp), %edi         # 4-byte Folded Reload
	movl	%ebp, %r13d
	subl	%edi, %r13d
	shrl	$31, %ebp
	xorl	$1, %ebp
	addl	%eax, %ebp
	movslq	%ebp, %rax
	leaq	(%rax,%r8), %rbx
	testb	%bpl, %bpl
	cmovneq	%rax, %rbx
	cmpl	128(%rsp), %r13d        # 4-byte Folded Reload
	cmovneq	%rax, %rbx
	shrq	$8, %rbx
	cmpl	%esi, %r14d
	jne	.LBB2_231
# BB#230:                               # %while.body.i.561
                                        #   in Loop: Header=BB2_228 Depth=2
	cmpl	%ecx, %ebx
	je	.LBB2_228
.LBB2_231:                              # %do.end.303.i.566
                                        #   in Loop: Header=BB2_227 Depth=1
	subl	%esi, %ecx
	movl	%r11d, %r8d
	subl	%edx, %r8d
	movq	80(%rsp), %rdi          # 8-byte Reload
	movl	%r9d, 48(%rsp)          # 4-byte Spill
	movq	32(%rsp), %r9           # 8-byte Reload
	movq	%r10, 64(%rsp)          # 8-byte Spill
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	callq	*40(%rsp)               # 8-byte Folded Reload
	movl	48(%rsp), %r9d          # 4-byte Reload
	movabsq	$1099511627520, %r8     # imm = 0xFFFFFFFF00
	movl	76(%rsp), %r11d         # 4-byte Reload
	movq	64(%rsp), %r10          # 8-byte Reload
	testl	%eax, %eax
	jns	.LBB2_227
	jmp	.LBB2_311
.LBB2_232:                              # %do.end.315.i.570
	subl	%esi, %ecx
	subl	%edx, %r10d
	movq	80(%rsp), %rdi          # 8-byte Reload
	movl	%r10d, %r8d
.LBB2_233:                              # %do.end.315.i.570
	movq	32(%rsp), %r9           # 8-byte Reload
	movq	40(%rsp), %rax          # 8-byte Reload
.LBB2_79:                               # %do.end.315.i
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB2_264:                              # %if.else.16.i.46.i.685
	leal	1(%r14), %eax
	cltd
	idivl	%edi
	decl	%eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%edi, %edx
	subl	%edx, %r14d
	imull	%r13d, %eax
	addl	%eax, %ebp
	movl	%r14d, %esi
.LBB2_265:                              # %if.end.111.i.692
	movl	%r9d, %edi
.LBB2_266:                              # %if.end.111.i.692
	cmpl	%r15d, %r13d
	jne	.LBB2_269
# BB#267:                               # %if.end.111.i.692
	cmpl	%r10d, 40(%rsp)         # 4-byte Folded Reload
	jne	.LBB2_269
# BB#268:                               # %if.then.119.i.694
	movl	%esi, 104(%rsp)         # 4-byte Spill
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	addl	%ebx, %ebp
	jmp	.LBB2_287
.LBB2_269:                              # %if.else.122.i.698
	movl	%edi, 120(%rsp)         # 4-byte Spill
	cmpl	$255, %r13d
	jg	.LBB2_273
# BB#270:                               # %if.else.122.i.698
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB2_273
# BB#271:                               # %cond.true.131.i.701
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%esi, 104(%rsp)         # 4-byte Spill
	imull	%r13d, %eax
	cltd
	idivl	40(%rsp)                # 4-byte Folded Reload
	jmp	.LBB2_272
.LBB2_273:                              # %cond.false.136.i.703
	movl	%r13d, %edi
	movl	%esi, 104(%rsp)         # 4-byte Spill
	movl	40(%rsp), %edx          # 4-byte Reload
	movq	%r8, %r14
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	movl	%r11d, %r15d
	movl	%r10d, %ebx
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	movl	100(%rsp), %ecx         # 4-byte Reload
	movl	%ebx, %r10d
	movl	%r15d, %r11d
	movq	%r14, %r8
.LBB2_272:                              # %if.end.168.i.749
	addl	%eax, %ebp
	movl	120(%rsp), %edi         # 4-byte Reload
.LBB2_287:                              # %if.end.168.i.749
	movl	%r10d, %eax
	negl	%eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	cmpl	$8388606, %ecx          # imm = 0x7FFFFE
	jg	.LBB2_294
# BB#288:                               # %if.then.i.97.i.752
	shll	$8, %edi
	testl	%ecx, %ecx
	je	.LBB2_289
# BB#290:                               # %if.else.i.110.i.759
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	shll	$8, %eax
	cltd
	idivl	%r10d
	movl	%edx, 120(%rsp)         # 4-byte Spill
	addl	%edi, %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	%ecx, %r14d
	movl	136(%rsp), %edi         # 4-byte Reload
	imull	%edi, %r14d
	cmpl	$255, %edi
	jg	.LBB2_293
# BB#291:                               # %cond.true.i.112.i.761
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%r14d, %eax
	cltd
	idivl	%r10d
	movl	%edx, %r14d
	subl	%r10d, %r14d
	jmp	.LBB2_295
.LBB2_294:                              # %if.else.19.i.136.i.781
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	shll	$8, %edi
	movl	%edi, %eax
	movl	$256, %edi              # imm = 0x100
	movl	%ecx, %esi
	movl	%r10d, %edx
	movl	%r10d, %r13d
	movl	%ecx, %r15d
	movl	%eax, %r14d
	callq	fixed_mult_quo
	addl	%r14d, %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	%r15d, %ebx
	shll	$8, %ebx
	movl	$256, %edi              # imm = 0x100
	movl	%r15d, %esi
	movl	%r13d, %edx
	callq	fixed_mult_quo
	imull	%r13d, %eax
	subl	%eax, %ebx
	movl	%ebx, 120(%rsp)         # 4-byte Spill
	movl	%r15d, %r14d
	movl	136(%rsp), %edi         # 4-byte Reload
	imull	%edi, %r14d
	movl	%r15d, %esi
	movl	%r13d, %edx
	callq	fixed_mult_quo
	movl	%r13d, %r10d
	imull	%r10d, %eax
	subl	%r10d, %r14d
	subl	%eax, %r14d
	jmp	.LBB2_295
.LBB2_289:
	movl	$0, 120(%rsp)           # 4-byte Folded Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%edi, 112(%rsp)         # 4-byte Spill
	movl	148(%rsp), %r14d        # 4-byte Reload
	jmp	.LBB2_295
.LBB2_293:                              # %cond.false.i.116.i.765
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%ecx, %esi
	movl	%r10d, %edx
	movl	%r10d, %ebx
	callq	fixed_mult_quo
	movl	%ebx, %r10d
	imull	%r10d, %eax
	subl	%eax, %r14d
	subl	%r10d, %r14d
.LBB2_295:                              # %compute_ldx.exit137.i.786
	movl	40(%rsp), %ecx          # 4-byte Reload
	movl	104(%rsp), %esi         # 4-byte Reload
	movl	%ecx, %eax
	negl	%eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB2_302
# BB#296:                               # %if.then.i.85.i.789
	movl	%r10d, %ebx
	movl	128(%rsp), %edi         # 4-byte Reload
	shll	$8, %edi
	testl	%esi, %esi
	movq	64(%rsp), %r10          # 8-byte Reload
	movl	76(%rsp), %r11d         # 4-byte Reload
	movabsq	$1099511627520, %r9     # imm = 0xFFFFFFFF00
	movq	%r9, %r8
	je	.LBB2_297
# BB#298:                               # %if.else.i.89.i.796
	movl	%esi, %eax
	shll	$8, %eax
	cltd
	idivl	%ecx
	movl	%edx, 104(%rsp)         # 4-byte Spill
	addl	%edi, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%esi, %r13d
	movl	60(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r13d
	cmpl	$255, %edi
	jg	.LBB2_301
# BB#299:                               # %cond.true.i.i.798
	movl	%r13d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %r13d
	jmp	.LBB2_300
.LBB2_302:                              # %if.else.19.i.i.818
	movl	128(%rsp), %ebx         # 4-byte Reload
	shll	$8, %ebx
	movl	$256, %edi              # imm = 0x100
	movl	%esi, %r15d
	movl	%ecx, %edx
	movl	%r10d, 32(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	addl	%ebx, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%r15d, %ebx
	shll	$8, %ebx
	movl	$256, %edi              # imm = 0x100
	movl	%r15d, %esi
	movl	40(%rsp), %edx          # 4-byte Reload
	callq	fixed_mult_quo
	imull	40(%rsp), %eax          # 4-byte Folded Reload
	subl	%eax, %ebx
	movl	%ebx, 104(%rsp)         # 4-byte Spill
	movl	%r15d, %r13d
	movl	60(%rsp), %edi          # 4-byte Reload
	imull	%edi, %r13d
	movl	%r15d, %esi
	movl	40(%rsp), %edx          # 4-byte Reload
	callq	fixed_mult_quo
	movl	40(%rsp), %r15d         # 4-byte Reload
	imull	%r15d, %eax
	subl	%r15d, %r13d
	subl	%eax, %r13d
	movq	64(%rsp), %r10          # 8-byte Reload
	movl	76(%rsp), %r11d         # 4-byte Reload
	movabsq	$1099511627520, %r9     # imm = 0xFFFFFFFF00
	movq	%r9, %r8
	movl	32(%rsp), %r9d          # 4-byte Reload
	jmp	.LBB2_303
.LBB2_297:
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	movl	%edi, 100(%rsp)         # 4-byte Spill
	movl	136(%rsp), %r13d        # 4-byte Reload
	movl	%ebx, %r9d
	jmp	.LBB2_303
.LBB2_301:                              # %cond.false.i.i.802
	movl	%ecx, %edx
	movl	%r11d, %r15d
	callq	fixed_mult_quo
	movl	40(%rsp), %ecx          # 4-byte Reload
	movl	%r15d, %r11d
	movq	64(%rsp), %r10          # 8-byte Reload
	imull	%ecx, %eax
	subl	%eax, %r13d
.LBB2_300:                              # %compute_ldx.exit.i.843
	subl	%ecx, %r13d
	movabsq	$1099511627520, %r9     # imm = 0xFFFFFFFF00
	movq	%r9, %r8
	movl	%ebx, %r9d
.LBB2_303:                              # %compute_ldx.exit.i.843
	incl	%r12d
	incl	%ebp
	movslq	%r12d, %rax
	leaq	(%rax,%r8), %r15
	cmpl	148(%rsp), %r14d        # 4-byte Folded Reload
	cmovneq	%rax, %r15
	testb	%r12b, %r12b
	cmovneq	%rax, %r15
	shrq	$8, %r15
	movslq	%ebp, %rax
	leaq	(%rax,%r8), %rbx
	cmpl	136(%rsp), %r13d        # 4-byte Folded Reload
	cmovneq	%rax, %rbx
	testb	%bpl, %bpl
	cmovneq	%rax, %rbx
	shrq	$8, %rbx
	leal	-1(%r10), %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
.LBB2_304:                              # %while.cond.outer.i.851
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_305 Depth 2
	movl	%r15d, %esi
	movl	%ebx, %ecx
	movl	%r11d, %edx
	movl	40(%rsp), %r10d         # 4-byte Reload
	.align	16, 0x90
.LBB2_305:                              # %while.cond.i.859
                                        #   Parent Loop BB2_304 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r11d, 128(%rsp)        # 4-byte Folded Reload
	je	.LBB2_309
# BB#306:                               # %while.body.i.897
                                        #   in Loop: Header=BB2_305 Depth=2
	incl	%r11d
	movl	%r12d, %eax
	addl	112(%rsp), %eax         # 4-byte Folded Reload
	movl	%r14d, %r12d
	addl	120(%rsp), %r12d        # 4-byte Folded Reload
	movl	$0, %edi
	cmovnsl	%r9d, %edi
	movl	%r12d, %r14d
	subl	%edi, %r14d
	shrl	$31, %r12d
	xorl	$1, %r12d
	addl	%eax, %r12d
	movslq	%r12d, %rax
	leaq	(%rax,%r8), %r15
	testb	%r12b, %r12b
	cmovneq	%rax, %r15
	cmpl	148(%rsp), %r14d        # 4-byte Folded Reload
	cmovneq	%rax, %r15
	shrq	$8, %r15
	movl	%ebp, %eax
	addl	100(%rsp), %eax         # 4-byte Folded Reload
	movl	%r13d, %ebp
	addl	104(%rsp), %ebp         # 4-byte Folded Reload
	movl	$0, %edi
	cmovnsl	%r10d, %edi
	movl	%ebp, %r13d
	subl	%edi, %r13d
	shrl	$31, %ebp
	xorl	$1, %ebp
	addl	%eax, %ebp
	movslq	%ebp, %rax
	leaq	(%rax,%r8), %rbx
	testb	%bpl, %bpl
	cmovneq	%rax, %rbx
	cmpl	136(%rsp), %r13d        # 4-byte Folded Reload
	cmovneq	%rax, %rbx
	shrq	$8, %rbx
	cmpl	%esi, %r15d
	jne	.LBB2_308
# BB#307:                               # %while.body.i.897
                                        #   in Loop: Header=BB2_305 Depth=2
	cmpl	%ecx, %ebx
	je	.LBB2_305
.LBB2_308:                              # %do.end.304.i.903
                                        #   in Loop: Header=BB2_304 Depth=1
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %r10
	subl	%esi, %ecx
	movl	%r11d, %r8d
	subl	%edx, %r8d
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movl	%r9d, 32(%rsp)          # 4-byte Spill
	movq	80(%rsp), %r9           # 8-byte Reload
	movl	%r11d, 76(%rsp)         # 4-byte Spill
	callq	*40(%r10)
	movl	32(%rsp), %r9d          # 4-byte Reload
	movabsq	$1099511627520, %r8     # imm = 0xFFFFFFFF00
	movl	76(%rsp), %r11d         # 4-byte Reload
	testl	%eax, %eax
	jns	.LBB2_304
	jmp	.LBB2_311
.LBB2_309:                              # %do.end.318.i.908
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	subl	%esi, %ecx
	movq	64(%rsp), %r8           # 8-byte Reload
	subl	%edx, %r8d
	movl	48(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, (%rsp)
	movq	$0, 8(%rsp)
.LBB2_310:                              # %do.end.318.i.908
	movq	80(%rsp), %r9           # 8-byte Reload
	callq	*40(%rax)
.LBB2_311:                              # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gx_default_fill_trapezoid, .Lfunc_end2-gx_default_fill_trapezoid
	.cfi_endproc

	.globl	gx_default_fill_linear_color_trapezoid
	.align	16, 0x90
	.type	gx_default_fill_linear_color_trapezoid,@function
gx_default_fill_linear_color_trapezoid: # @gx_default_fill_linear_color_trapezoid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 128
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %r15, -16
	movq	152(%rsp), %r15
	movq	144(%rsp), %r14
	movq	136(%rsp), %rbx
	movq	128(%rsp), %rax
	movq	(%rdx), %rdx
	movq	%rdx, 56(%rsp)
	movq	(%rcx), %r10
	movq	%r10, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	movq	(%rsi), %r11
	movl	(%r11), %eax
	movl	%eax, 88(%rsp)
	movq	(%r8), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%r9), %r8
	movq	%r8, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movl	8(%r11), %eax
	movl	%eax, 48(%rsp)
	testq	%rbx, %rbx
	je	.LBB3_3
# BB#1:                                 # %entry
	testq	%r15, %r15
	je	.LBB3_3
# BB#2:                                 # %check_gradient_overflow.exit
	cmpl	%r10d, %edx
	movl	%r10d, %eax
	cmovlel	%edx, %eax
	cmpl	%r8d, %ecx
	movl	%r8d, %ebx
	cmovlel	%ecx, %ebx
	sarl	%ebx
	sarl	%eax
	subl	%eax, %ebx
	xorl	%eax, %eax
	cmpl	$1073741821, %ebx       # imm = 0x3FFFFFFD
	jg	.LBB3_6
.LBB3_3:                                # %if.end
	shrq	$32, %rdx
	shrq	$32, %rcx
	shrq	$32, %r10
	shrq	$32, %r8
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	movl	4(%r11), %eax
	movl	12(%r11), %edx
	cmpl	%eax, %ecx
	cmovll	%eax, %ecx
	cmpl	%r8d, %r10d
	cmovlel	%r10d, %r8d
	cmpl	%edx, %r8d
	cmovgl	%edx, %r8d
	movl	$gx_fill_trapezoid_as_lc, %eax
	cmpl	$0, 8(%rsi)
	jne	.LBB3_5
# BB#4:                                 # %select.mid
	movl	$gx_fill_trapezoid_ns_lc, %eax
.LBB3_5:                                # %select.end
	movq	%rsi, 8(%rsp)
	movq	$0, (%rsp)
	leaq	56(%rsp), %rsi
	leaq	16(%rsp), %rdx
	xorl	%r9d, %r9d
	callq	*%rax
	movl	%eax, %ecx
	testl	%ecx, %ecx
	sete	%al
	movzbl	%al, %eax
	cmovsl	%ecx, %eax
.LBB3_6:                                # %cleanup
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	gx_default_fill_linear_color_trapezoid, .Lfunc_end3-gx_default_fill_linear_color_trapezoid
	.cfi_endproc

	.globl	gx_default_fill_linear_color_triangle
	.align	16, 0x90
	.type	gx_default_fill_linear_color_triangle,@function
gx_default_fill_linear_color_triangle:  # @gx_default_fill_linear_color_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 64
.Ltmp52:
	.cfi_offset %rbx, -48
.Ltmp53:
	.cfi_offset %r12, -40
.Ltmp54:
	.cfi_offset %r13, -32
.Ltmp55:
	.cfi_offset %r14, -24
.Ltmp56:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	64(%rsp), %r10
	movq	72(%rsp), %r11
	movslq	(%r15), %rbx
	movslq	(%r14), %r12
	subq	%r12, %rbx
	movslq	4(%r15), %rax
	movslq	4(%r14), %r13
	subq	%r13, %rax
	movslq	(%r8), %rdx
	subq	%r12, %rdx
	movslq	4(%r8), %rcx
	subq	%r13, %rcx
	imulq	%rbx, %rcx
	imulq	%rax, %rdx
	cmpq	%rdx, %rcx
	movq	%r11, %rbx
	cmovlq	%r10, %rbx
	cmovlq	%r11, %r10
	movq	%r8, %r11
	cmovlq	%r15, %r11
	cmovlq	%r8, %r15
	movl	4(%r15), %edx
	cmpl	%edx, %r13d
	jg	.LBB4_4
# BB#1:                                 # %land.lhs.true
	cmpl	4(%r11), %r13d
	jle	.LBB4_2
.LBB4_4:                                # %if.end.24
	cmpl	%r13d, %edx
	jg	.LBB4_7
# BB#5:                                 # %land.lhs.true.29
	cmpl	4(%r11), %edx
	jle	.LBB4_6
.LBB4_7:                                # %if.else
	movq	%r10, 8(%rsp)
	movq	%r9, (%rsp)
	movq	%r11, %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	movq	%rbx, %r9
	jmp	.LBB4_3
.LBB4_2:                                # %if.then.23
	movq	%rbx, 8(%rsp)
	movq	%r10, (%rsp)
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r11, %r8
	jmp	.LBB4_3
.LBB4_6:                                # %if.then.34
	movq	%r9, 8(%rsp)
	movq	%rbx, (%rsp)
	movq	%r15, %rdx
	movq	%r11, %rcx
	movq	%r14, %r8
	movq	%r10, %r9
.LBB4_3:                                # %if.then.23
	callq	fill_linear_color_triangle
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	gx_default_fill_linear_color_triangle, .Lfunc_end4-gx_default_fill_linear_color_triangle
	.cfi_endproc

	.align	16, 0x90
	.type	fill_linear_color_triangle,@function
fill_linear_color_triangle:             # @fill_linear_color_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp63:
	.cfi_def_cfa_offset 208
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	216(%rsp), %rsi
	movq	208(%rsp), %r11
	movl	4(%rdx), %edi
	movl	4(%rax), %ebp
	cmpl	%ebp, %edi
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	%rsi, 24(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%r9, (%rsp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rcx
	movq	%rax, %r8
	movq	%rbx, %r9
	callq	gx_default_fill_linear_color_trapezoid
	jmp	.LBB5_28
.LBB5_2:                                # %if.end
	movl	4(%rbx), %ecx
	cmpl	%ecx, %ebp
	jne	.LBB5_4
# BB#3:                                 # %if.then.6
	movq	%r11, 24(%rsp)
	movq	%r9, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%r9, (%rsp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rcx
	movq	%rdx, %r8
	movq	%rax, %r9
	callq	gx_default_fill_linear_color_trapezoid
	jmp	.LBB5_28
.LBB5_4:                                # %if.end.8
	movq	(%rdx), %r13
	movq	%r13, 112(%rsp)
	movq	(%rbx), %rdx
	movq	%rdx, 120(%rsp)
	movq	%r9, 128(%rsp)
	movq	%rsi, 136(%rsp)
	movq	(%r15), %r12
	movl	(%r12), %ebx
	movl	%ebx, 144(%rsp)
	movq	%r13, 72(%rsp)
	movq	(%rax), %rbx
	movq	%rbx, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%r11, 96(%rsp)
	movl	8(%r12), %eax
	movl	%eax, 104(%rsp)
	movq	%r13, %r10
	shrq	$32, %r10
	movq	%rdx, %r9
	shrq	$32, %r9
	movq	%rbx, %r8
	shrq	$32, %r8
	cmpl	%ebp, %edi
	jge	.LBB5_16
# BB#5:                                 # %if.end.8
	cmpl	%ecx, %ebp
	jge	.LBB5_16
# BB#6:                                 # %if.then.24
	movq	%rbx, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r11, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movl	8(%r12), %eax
	movl	%eax, 64(%rsp)
	testq	%rsi, %rsi
	je	.LBB5_10
# BB#7:                                 # %lor.lhs.false.i
	testq	%r11, %r11
	je	.LBB5_9
# BB#8:                                 # %check_gradient_overflow.exit
	cmpl	%edx, %r13d
	movl	%edx, %eax
	cmovlel	%r13d, %eax
	cmpl	%ebx, %r13d
	movl	%ebx, %ecx
	cmovlel	%r13d, %ecx
	sarl	%ecx
	sarl	%eax
	subl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1073741821, %ecx       # imm = 0x3FFFFFFD
	jg	.LBB5_28
.LBB5_9:                                # %check_gradient_overflow.exit81
	cmpl	%edx, %r13d
	movl	%edx, %eax
	cmovlel	%r13d, %eax
	cmpl	%edx, %ebx
	cmovlel	%ebx, %edx
	sarl	%edx
	sarl	%eax
	subl	%eax, %edx
	xorl	%eax, %eax
	cmpl	$1073741821, %edx       # imm = 0x3FFFFFFD
	jg	.LBB5_28
.LBB5_10:                               # %if.end.39
	movl	4(%r12), %ecx
	movl	12(%r12), %eax
	cmpl	%ecx, %r10d
	cmovgel	%r10d, %ecx
	cmpl	%r8d, %r9d
	cmovlel	%r9d, %r8d
	cmpl	%eax, %r8d
	cmovgl	%eax, %r8d
	movl	$gx_fill_trapezoid_as_lc, %ebp
	cmpl	$0, 8(%r15)
	jne	.LBB5_12
# BB#11:                                # %select.mid
	movl	$gx_fill_trapezoid_ns_lc, %ebp
.LBB5_12:                               # %select.end
	movq	%r15, 8(%rsp)
	movq	$0, (%rsp)
	leaq	112(%rsp), %rsi
	leaq	72(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	callq	*%rbp
	movl	%eax, %ecx
	testl	%ecx, %ecx
	sete	%al
	movzbl	%al, %eax
	cmovsl	%ecx, %eax
	testl	%eax, %eax
	jle	.LBB5_28
# BB#13:                                # %if.end.43
	movl	116(%rsp), %eax
	movl	124(%rsp), %edx
	movl	36(%rsp), %ecx
	movl	44(%rsp), %r8d
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	(%r15), %rax
	movl	4(%rax), %esi
	movl	12(%rax), %eax
	cmpl	%esi, %ecx
	cmovll	%esi, %ecx
	cmpl	%r8d, %edx
	cmovlel	%edx, %r8d
	cmpl	%eax, %r8d
	cmovgl	%eax, %r8d
	movl	$gx_fill_trapezoid_as_lc, %ebp
	cmpl	$0, 8(%r15)
	jne	.LBB5_15
# BB#14:                                # %select.mid208
	movl	$gx_fill_trapezoid_ns_lc, %ebp
.LBB5_15:                               # %select.end207
	movq	%r15, 8(%rsp)
	movq	$0, (%rsp)
	leaq	112(%rsp), %rsi
	leaq	32(%rsp), %rdx
	jmp	.LBB5_27
.LBB5_16:                               # %if.else
	movq	%rdx, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%r11, 56(%rsp)
	movl	8(%r12), %eax
	movl	%eax, 64(%rsp)
	testq	%rsi, %rsi
	je	.LBB5_19
# BB#17:                                # %if.else
	testq	%r11, %r11
	je	.LBB5_19
# BB#18:                                # %check_gradient_overflow.exit171
	cmpl	%edx, %r13d
	movl	%edx, %eax
	cmovlel	%r13d, %eax
	cmpl	%ebx, %r13d
	movl	%ebx, %ecx
	cmovlel	%r13d, %ecx
	sarl	%ecx
	sarl	%eax
	subl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1073741821, %ecx       # imm = 0x3FFFFFFD
	jg	.LBB5_28
.LBB5_19:                               # %if.end.56
	testq	%r11, %r11
	je	.LBB5_21
# BB#20:                                # %check_gradient_overflow.exit192
	cmpl	%ebx, %edx
	movl	%ebx, %eax
	cmovlel	%edx, %eax
	cmpl	%ebx, %r13d
	cmovlel	%r13d, %ebx
	sarl	%ebx
	sarl	%eax
	subl	%eax, %ebx
	xorl	%eax, %eax
	cmpl	$1073741821, %ebx       # imm = 0x3FFFFFFD
	jg	.LBB5_28
.LBB5_21:                               # %if.end.60
	movl	4(%r12), %ecx
	movl	12(%r12), %eax
	cmpl	%ecx, %r10d
	cmovgel	%r10d, %ecx
	cmpl	%r8d, %r9d
	cmovlel	%r9d, %r8d
	cmpl	%eax, %r8d
	cmovgl	%eax, %r8d
	movl	$gx_fill_trapezoid_as_lc, %ebp
	cmpl	$0, 8(%r15)
	jne	.LBB5_23
# BB#22:                                # %select.mid213
	movl	$gx_fill_trapezoid_ns_lc, %ebp
.LBB5_23:                               # %select.end212
	movq	%r15, 8(%rsp)
	movq	$0, (%rsp)
	leaq	112(%rsp), %rsi
	leaq	72(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	callq	*%rbp
	movl	%eax, %ecx
	testl	%ecx, %ecx
	sete	%al
	movzbl	%al, %eax
	cmovsl	%ecx, %eax
	testl	%eax, %eax
	jle	.LBB5_28
# BB#24:                                # %if.end.64
	movl	36(%rsp), %eax
	movl	44(%rsp), %edx
	movl	76(%rsp), %ecx
	movl	84(%rsp), %r8d
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	(%r15), %rax
	movl	4(%rax), %esi
	movl	12(%rax), %eax
	cmpl	%esi, %ecx
	cmovll	%esi, %ecx
	cmpl	%r8d, %edx
	cmovlel	%edx, %r8d
	cmpl	%eax, %r8d
	cmovgl	%eax, %r8d
	movl	$gx_fill_trapezoid_as_lc, %ebp
	cmpl	$0, 8(%r15)
	jne	.LBB5_26
# BB#25:                                # %select.mid218
	movl	$gx_fill_trapezoid_ns_lc, %ebp
.LBB5_26:                               # %select.end217
	movq	%r15, 8(%rsp)
	movq	$0, (%rsp)
	leaq	32(%rsp), %rsi
	leaq	72(%rsp), %rdx
.LBB5_27:                               # %cleanup
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	callq	*%rbp
	movl	%eax, %ecx
	testl	%ecx, %ecx
	sete	%al
	movzbl	%al, %eax
	cmovsl	%ecx, %eax
.LBB5_28:                               # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fill_linear_color_triangle, .Lfunc_end5-fill_linear_color_triangle
	.cfi_endproc

	.globl	gx_default_fill_parallelogram
	.align	16, 0x90
	.type	gx_default_fill_parallelogram,@function
gx_default_fill_parallelogram:          # @gx_default_fill_parallelogram
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 128
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
	movl	%edx, %r10d
	movq	%rdi, %r15
	movl	144(%rsp), %ebx
	movq	136(%rsp), %rdi
	movl	128(%rsp), %eax
	movl	%r9d, %edx
	orl	%r8d, %edx
	je	.LBB6_2
# BB#1:                                 # %entry
	movl	%eax, %edx
	orl	%ecx, %edx
	je	.LBB6_2
# BB#3:                                 # %if.end.56
	testl	%r8d, %r8d
	jns	.LBB6_5
# BB#4:                                 # %if.then.59
	leal	(%rsi,%rcx), %esi
	leal	(%r10,%r8), %r10d
	negl	%ecx
	negl	%r8d
.LBB6_5:                                # %if.end.64
	testl	%eax, %eax
	jns	.LBB6_7
# BB#6:                                 # %if.then.67
	addl	%r9d, %esi
	addl	%eax, %r10d
	negl	%r9d
	negl	%eax
.LBB6_7:                                # %if.end.72
	leal	(%r9,%rcx), %r13d
	movl	%r9d, %edx
	xorl	%ecx, %edx
	js	.LBB6_8
# BB#9:                                 # %if.else.82
	cvtsi2sdl	%r8d, %xmm0
	cvtsi2sdl	%r9d, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB6_10
# BB#12:                                # %if.then.90
	movl	%r8d, %edx
	movl	%ecx, %ebx
	jmp	.LBB6_13
.LBB6_2:                                # %if.then
	movslq	%esi, %rbp
	addq	$127, %rbp
	shrq	$8, %rbp
	movslq	%r10d, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	addl	%esi, %ecx
	addl	%r9d, %ecx
	movslq	%ecx, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	addl	%r10d, %r8d
	addl	%eax, %r8d
	movslq	%r8d, %rax
	addq	$127, %rax
	shrq	$8, %rax
	cmpl	%ebp, %esi
	movl	%esi, %ecx
	cmovll	%ebp, %ecx
	cmovlel	%esi, %ebp
	cmpl	%edx, %eax
	movl	%eax, %r8d
	cmovll	%edx, %r8d
	cmovlel	%eax, %edx
	movq	(%rdi), %rax
	subl	%ebp, %ecx
	subl	%edx, %r8d
	movl	%ebx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%ebp, %esi
	movq	%r15, %r9
	callq	*40(%rax)
	jmp	.LBB6_28
.LBB6_8:                                # %if.then.77
	cmpl	%r9d, %ecx
	movl	%eax, %edx
	cmovgl	%r8d, %edx
	movl	%r9d, %ebx
	cmovgel	%ecx, %ebx
	cmovgl	%eax, %r8d
	cmovgl	%r9d, %ecx
	jmp	.LBB6_11
.LBB6_10:
	movl	%eax, %edx
	movl	%r9d, %ebx
.LBB6_11:                               # %if.end.92
	movl	%r8d, %eax
	movl	%ecx, %r9d
.LBB6_13:                               # %if.end.92
	addl	%esi, %r13d
	movq	1360(%r15), %r14
	leal	(%rax,%r10), %ebp
	leal	(%rbp,%rdx), %r12d
	movl	%esi, 40(%rsp)
	movl	%esi, 56(%rsp)
	movl	%r10d, 44(%rsp)
	movl	%r10d, 60(%rsp)
	addl	%esi, %r9d
	movl	%r9d, 64(%rsp)
	movl	%ebp, 68(%rsp)
	addl	%esi, %ebx
	movl	%ebx, 48(%rsp)
	leal	(%rdx,%r10), %ebx
	movl	%ebx, 52(%rsp)
	movslq	%r10d, %rcx
	addq	$127, %rcx
	andq	$-256, %rcx
	cmpl	%edx, %eax
	jge	.LBB6_20
# BB#14:                                # %if.then.117
	movslq	%ebp, %rdx
	addq	$127, %rdx
	andq	$-256, %rdx
	cmpq	%rdx, %rcx
	je	.LBB6_17
# BB#15:                                # %if.then.127
	movl	144(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movl	%r10d, %ecx
	movl	%ebp, %r8d
	callq	*%r14
	testl	%eax, %eax
	js	.LBB6_28
# BB#16:                                # %if.then.127.if.end.135_crit_edge
	movl	52(%rsp), %ebx
.LBB6_17:                               # %if.end.135
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movl	%r13d, 64(%rsp)
	movl	%r12d, 68(%rsp)
	movq	%rcx, %rax
	sarq	$32, %rax
	addq	$127, %rax
	movslq	%ebx, %rdx
	addq	$127, %rdx
	xorq	%rax, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jb	.LBB6_19
# BB#18:                                # %if.then.154
	shrq	$32, %rcx
	movl	144(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movl	%ebx, %r8d
	callq	*%r14
	testl	%eax, %eax
	js	.LBB6_28
.LBB6_19:                               # %if.end.162
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	movl	%r13d, 48(%rsp)
	movl	%r12d, 52(%rsp)
	jmp	.LBB6_26
.LBB6_20:                               # %if.else.169
	movslq	%ebx, %rdx
	addq	$127, %rdx
	andq	$-256, %rdx
	cmpq	%rdx, %rcx
	je	.LBB6_23
# BB#21:                                # %if.then.180
	movl	144(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movl	%r10d, %ecx
	movl	%ebx, %r8d
	callq	*%r14
	testl	%eax, %eax
	js	.LBB6_28
# BB#22:                                # %if.then.180.if.end.188_crit_edge
	movl	68(%rsp), %ebp
.LBB6_23:                               # %if.end.188
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movl	%r13d, 48(%rsp)
	movl	%r12d, 52(%rsp)
	movq	%rcx, %rax
	sarq	$32, %rax
	addq	$127, %rax
	movslq	%ebp, %rdx
	addq	$127, %rdx
	xorq	%rax, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jb	.LBB6_25
# BB#24:                                # %if.then.207
	shrq	$32, %rcx
	movl	144(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movl	%ebp, %r8d
	callq	*%r14
	testl	%eax, %eax
	js	.LBB6_28
.LBB6_25:                               # %if.end.215
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	movl	%r13d, 64(%rsp)
	movl	%r12d, 68(%rsp)
	movl	%ebp, %ebx
.LBB6_26:                               # %if.end.222
	movslq	%ebx, %rax
	addq	$127, %rax
	movslq	%r12d, %rcx
	addq	$127, %rcx
	xorq	%rax, %rcx
	xorl	%eax, %eax
	cmpq	$256, %rcx              # imm = 0x100
	jb	.LBB6_28
# BB#27:                                # %if.then.231
	movl	144(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movl	%ebx, %ecx
	movl	%r12d, %r8d
	callq	*%r14
.LBB6_28:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_default_fill_parallelogram, .Lfunc_end6-gx_default_fill_parallelogram
	.cfi_endproc

	.globl	gx_default_fill_triangle
	.align	16, 0x90
	.type	gx_default_fill_triangle,@function
gx_default_fill_triangle:               # @gx_default_fill_triangle
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
	subq	$72, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 128
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %r14
	movl	128(%rsp), %ebx
	movq	1360(%r14), %r10
	testl	%r8d, %r8d
	jns	.LBB7_2
# BB#1:                                 # %if.then
	leal	(%r12,%r13), %r12d
	leal	(%r15,%r8), %r15d
	subl	%r13d, %r9d
	subl	%r8d, %ebx
	negl	%r13d
	negl	%r8d
.LBB7_2:                                # %if.end
	testl	%ebx, %ebx
	jns	.LBB7_4
# BB#3:                                 # %if.then.8
	addl	%r9d, %r12d
	addl	%ebx, %r15d
	subl	%r9d, %r13d
	subl	%ebx, %r8d
	negl	%r9d
	negl	%ebx
.LBB7_4:                                # %if.end.15
	movl	144(%rsp), %edx
	movq	136(%rsp), %rcx
	cmpl	%ebx, %r8d
	movl	%r8d, %esi
	cmovgl	%ebx, %esi
	movl	%r9d, %ebp
	cmovgl	%r13d, %ebp
	cmovgel	%r8d, %ebx
	cmovgl	%r9d, %r13d
	movl	%r12d, 40(%rsp)
	movl	%r12d, 56(%rsp)
	movl	%r15d, 44(%rsp)
	movl	%r15d, 60(%rsp)
	testl	%esi, %esi
	je	.LBB7_5
# BB#9:                                 # %if.else.44
	movq	%r10, 32(%rsp)          # 8-byte Spill
	cmpl	%ebx, %esi
	jne	.LBB7_11
# BB#10:                                # %if.then.46
	cmpl	%ebp, %r13d
	movl	%ebp, %eax
	cmovlel	%r13d, %eax
	cmovll	%ebp, %r13d
	leal	(%r13,%r12), %ecx
	addl	%eax, %r12d
	movl	%r12d, 64(%rsp)
	movl	%ecx, 48(%rsp)
	leal	(%rsi,%r15), %r8d
	movl	%r8d, 52(%rsp)
	movl	%r8d, 68(%rsp)
	jmp	.LBB7_16
.LBB7_5:                                # %if.then.25
	leal	(%r12,%r13), %eax
	testl	%r13d, %r13d
	js	.LBB7_6
# BB#7:                                 # %if.else
	movl	%eax, 40(%rsp)
	jmp	.LBB7_8
.LBB7_11:                               # %if.else.68
	leal	(%r15,%rsi), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%ebp, %edi
	movl	%ebx, %edx
	callq	fixed_mult_quo
	cmpl	%r13d, %eax
	jge	.LBB7_13
# BB#12:                                # %if.then.71
	leal	(%rbp,%r12), %eax
	movl	%eax, 64(%rsp)
	leal	(%rbx,%r15), %eax
	movl	%eax, 68(%rsp)
	addl	%r13d, %r12d
	movl	%r12d, 48(%rsp)
	movl	28(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%rsp)
	movl	144(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	callq	*32(%rsp)               # 8-byte Folded Reload
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movl	%ebx, %ecx
	jmp	.LBB7_14
.LBB7_6:                                # %if.then.27
	movl	%eax, 56(%rsp)
.LBB7_8:                                # %if.end.34
	addl	%ebp, %r12d
	movl	%r12d, 48(%rsp)
	movl	%r12d, 64(%rsp)
	leal	(%rbx,%r15), %r8d
	movl	%r8d, 52(%rsp)
	movl	%r8d, 68(%rsp)
	jmp	.LBB7_17
.LBB7_13:                               # %if.else.89
	leal	(%r13,%r12), %eax
	movl	%eax, 64(%rsp)
	movl	28(%rsp), %r13d         # 4-byte Reload
	movl	%r13d, 68(%rsp)
	addl	%ebp, %r12d
	movl	%r12d, 48(%rsp)
	leal	(%rbx,%r15), %eax
	movl	%eax, 52(%rsp)
	movl	144(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movl	%r15d, %ecx
	movl	%r13d, %r8d
	callq	*32(%rsp)               # 8-byte Folded Reload
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 64(%rsp)
	movl	%r13d, %ecx
.LBB7_14:                               # %if.end.107
	testl	%eax, %eax
	js	.LBB7_18
# BB#15:                                # %if.end.107.if.end.112_crit_edge
	movl	52(%rsp), %r8d
	movl	%ecx, %r15d
.LBB7_16:                               # %if.end.112
	movq	32(%rsp), %r10          # 8-byte Reload
	movq	136(%rsp), %rcx
	movl	144(%rsp), %edx
.LBB7_17:                               # %if.end.112
	movl	%edx, 8(%rsp)
	movq	%rcx, (%rsp)
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movl	%r15d, %ecx
	callq	*%r10
.LBB7_18:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_default_fill_triangle, .Lfunc_end7-gx_default_fill_triangle
	.cfi_endproc

	.globl	gx_default_draw_thin_line
	.align	16, 0x90
	.type	gx_default_draw_thin_line,@function
gx_default_draw_thin_line:              # @gx_default_draw_thin_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 128
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %r11
	movl	144(%rsp), %r9d
	movl	136(%rsp), %r10d
	movl	%r9d, %ebp
	orl	%r10d, %ebp
	sete	%al
	movl	%r8d, %edx
	subl	%r15d, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movl	%ecx, %ebx
	subl	%r12d, %ebx
	movl	%ebx, %edi
	negl	%edi
	cmovll	%ebx, %edi
	cmpl	%esi, %edi
	movl	$4294967169, %edi       # imm = 0xFFFFFF81
	movzbl	%al, %eax
	jle	.LBB8_1
# BB#20:                                # %if.else.232
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%ebp, 24(%rsp)          # 4-byte Spill
	testl	%ebx, %ebx
	movl	%r8d, %ebx
	cmovsl	%r15d, %ebx
	movl	%ecx, %ebp
	cmovsl	%r12d, %ebp
	movl	%r15d, %r14d
	cmovsl	%r8d, %r14d
	cmovsl	%ecx, %r12d
	cmpl	%r15d, %r8d
	jne	.LBB8_26
# BB#21:                                # %if.else.232
	testl	%r10d, %r10d
	je	.LBB8_26
# BB#22:                                # %if.then.242
	movl	%ebp, %eax
	andl	$-256, %eax
	movl	%ebp, %ecx
	notl	%ecx
	leal	128(%rax,%rcx), %eax
	cmpl	$127, %eax
                                        # implicit-def: R13D
	ja	.LBB8_24
# BB#23:                                # %if.then.257
	movl	%ebp, %esi
	sarl	$8, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	%ebx, %edx
	sarl	$8, %edx
	movl	128(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r11, %r9
	movq	%r11, %r15
	callq	*40(%rax)
	movl	$4294967169, %edi       # imm = 0xFFFFFF81
	movq	%r15, %r11
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB8_40
.LBB8_24:                               # %if.end.271
	movl	%r12d, %eax
	andl	$-256, %eax
	orl	$128, %eax
	subl	%r12d, %eax
	cmpl	$-128, %eax
	jb	.LBB8_34
# BB#25:                                # %if.then.285
	movl	%r12d, %esi
	sarl	$8, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	%r14d, %edx
	sarl	$8, %edx
	jmp	.LBB8_33
.LBB8_1:                                # %if.then
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%ebp, 24(%rsp)          # 4-byte Spill
	testl	%edx, %edx
	movl	%r8d, %ebp
	cmovsl	%r15d, %ebp
	movl	%ecx, %ebx
	cmovsl	%r12d, %ebx
	cmovsl	%r8d, %r15d
	movl	%r12d, %r14d
	cmovsl	%ecx, %r14d
	cmpl	%r12d, %ecx
	jne	.LBB8_7
# BB#2:                                 # %if.then
	testl	%r9d, %r9d
	je	.LBB8_7
# BB#3:                                 # %if.then.21
	movl	%ebp, %eax
	andl	$-256, %eax
	movl	%ebp, %ecx
	notl	%ecx
	leal	128(%rax,%rcx), %eax
	cmpl	$127, %eax
                                        # implicit-def: R13D
	ja	.LBB8_5
# BB#4:                                 # %if.then.32
	movl	%ebp, %edx
	sarl	$8, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	%ebx, %esi
	sarl	$8, %esi
	movl	128(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r11, %r9
	movq	%r11, %r12
	callq	*40(%rax)
	movl	$4294967169, %edi       # imm = 0xFFFFFF81
	movq	%r12, %r11
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB8_40
.LBB8_5:                                # %if.end.39
	movl	%r15d, %eax
	andl	$-256, %eax
	orl	$128, %eax
	subl	%r15d, %eax
	cmpl	$-128, %eax
	jb	.LBB8_15
# BB#6:                                 # %if.then.53
	movl	%r15d, %edx
	sarl	$8, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	%r14d, %esi
	sarl	$8, %esi
	jmp	.LBB8_14
.LBB8_26:                               # %if.else.303
	cmpl	%r15d, %r8d
	je	.LBB8_34
# BB#27:                                # %if.then.306
	movl	%ebp, %eax
	andl	$-256, %eax
	orl	$128, %eax
	subl	%ebp, %eax
	movl	%ebx, %edx
	andl	$-256, %edx
	orl	$128, %edx
	subl	%ebx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	leal	-1(%rax), %edx
	cmpl	$127, %edx
                                        # implicit-def: R13D
	ja	.LBB8_30
# BB#28:                                # %if.then.306
	addl	%eax, %ecx
	cmpl	$128, %ecx
                                        # implicit-def: R13D
	jg	.LBB8_30
# BB#29:                                # %if.then.339
	movl	%ebp, %esi
	sarl	$8, %esi
	movl	%ebx, %edx
	sarl	$8, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	128(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r11, %r9
	movq	%r11, %r15
	callq	*40(%rax)
	movl	$4294967169, %edi       # imm = 0xFFFFFF81
	movq	%r15, %r11
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB8_40
.LBB8_30:                               # %if.end.353
	movl	%r12d, %eax
	andl	$-256, %eax
	orl	$128, %eax
	subl	%r12d, %eax
	movl	%r14d, %edx
	andl	$-256, %edx
	orl	$128, %edx
	subl	%r14d, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	cmpl	$-128, %eax
	jb	.LBB8_34
# BB#31:                                # %if.end.353
	subl	%eax, %ecx
	cmpl	$128, %ecx
	jg	.LBB8_34
# BB#32:                                # %if.then.385
	movl	%r12d, %esi
	sarl	$8, %esi
	movl	%r14d, %edx
	sarl	$8, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
.LBB8_33:                               # %if.then.385
	movl	128(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r11, %r9
	movq	%r11, %r15
	callq	*40(%rax)
	movl	$4294967169, %edi       # imm = 0xFFFFFF81
	movq	%r15, %r11
	testl	%eax, %eax
	cmovsl	%eax, %r13d
	js	.LBB8_40
.LBB8_34:                               # %if.end.405
	movl	%r14d, %edx
	movl	28(%rsp), %ecx          # 4-byte Reload
	subl	%ecx, %edx
	sarl	$8, %edx
	movl	%ebx, %eax
	subl	%ecx, %eax
	sarl	$8, %eax
	cmpl	%edx, %eax
	jne	.LBB8_37
# BB#35:                                # %if.then.412
	movslq	%r12d, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movslq	%ebp, %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	xorl	%r13d, %r13d
	subl	%esi, %ecx
	jle	.LBB8_40
# BB#36:                                # %if.end.427
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	128(%rsp), %ebp
	movl	%ebp, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %r8d
	jmp	.LBB8_18
.LBB8_7:                                # %if.else
	cmpl	%r12d, %ecx
	je	.LBB8_15
# BB#8:                                 # %if.then.73
	movl	%ebp, %eax
	andl	$-256, %eax
	orl	$128, %eax
	subl	%ebp, %eax
	movl	%ebx, %edx
	andl	$-256, %edx
	orl	$128, %edx
	subl	%ebx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	leal	-1(%rax), %edx
	cmpl	$127, %edx
                                        # implicit-def: R13D
	ja	.LBB8_11
# BB#9:                                 # %if.then.73
	addl	%eax, %ecx
	cmpl	$128, %ecx
                                        # implicit-def: R13D
	jg	.LBB8_11
# BB#10:                                # %if.then.105
	movl	%ebp, %edx
	sarl	$8, %edx
	movl	%ebx, %esi
	sarl	$8, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	128(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r11, %r9
	movq	%r11, %r12
	callq	*40(%rax)
	movl	$4294967169, %edi       # imm = 0xFFFFFF81
	movq	%r12, %r11
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB8_40
.LBB8_11:                               # %if.end.119
	movl	%r15d, %eax
	andl	$-256, %eax
	orl	$128, %eax
	subl	%r15d, %eax
	movl	%r14d, %edx
	andl	$-256, %edx
	orl	$128, %edx
	subl	%r14d, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	cmpl	$-128, %eax
	jb	.LBB8_15
# BB#12:                                # %if.end.119
	subl	%eax, %ecx
	cmpl	$128, %ecx
	jg	.LBB8_15
# BB#13:                                # %if.then.151
	movl	%r15d, %edx
	sarl	$8, %edx
	movl	%r14d, %esi
	sarl	$8, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
.LBB8_14:                               # %if.then.151
	movl	128(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r11, %r9
	movq	%r11, %r12
	callq	*40(%rax)
	movl	$4294967169, %edi       # imm = 0xFFFFFF81
	movq	%r12, %r11
	testl	%eax, %eax
	cmovsl	%eax, %r13d
	js	.LBB8_40
.LBB8_15:                               # %if.end.171
	movl	%r14d, %esi
	movl	28(%rsp), %ecx          # 4-byte Reload
	subl	%ecx, %esi
	sarl	$8, %esi
	movl	%ebx, %eax
	subl	%ecx, %eax
	sarl	$8, %eax
	cmpl	%esi, %eax
	jne	.LBB8_19
# BB#16:                                # %if.then.178
	movslq	%r15d, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movslq	%ebp, %r8
	addq	$127, %r8
	shrq	$8, %r8
	xorl	%r13d, %r13d
	subl	%edx, %r8d
	jle	.LBB8_40
# BB#17:                                # %if.end.193
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	128(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %ecx
.LBB8_18:                               # %cleanup.477
	movq	%r11, %r9
	callq	*40(%rax)
	jmp	.LBB8_39
.LBB8_37:                               # %if.end.431
	addl	%edi, %r14d
	cmpl	$1, 24(%rsp)            # 4-byte Folded Reload
	sbbl	%eax, %eax
	leal	(%r14,%rax), %ecx
	movl	%ecx, 56(%rsp)
	leal	256(%rax,%r14), %ecx
	movl	%ecx, 40(%rsp)
	addl	%edi, %ebx
	leal	(%rax,%rbx), %ecx
	movl	%ecx, 64(%rsp)
	leal	256(%rax,%rbx), %eax
	movl	%eax, 48(%rsp)
	movl	%r12d, 44(%rsp)
	movl	%r12d, 60(%rsp)
	movl	%ebp, 52(%rsp)
	movl	%ebp, 68(%rsp)
	movl	$1, %r9d
	movl	%r12d, %r15d
	jmp	.LBB8_38
.LBB8_19:                               # %if.end.197
	addl	%edi, %r14d
	cmpl	$1, 24(%rsp)            # 4-byte Folded Reload
	sbbl	%eax, %eax
	leal	(%r14,%rax), %ecx
	movl	%ecx, 56(%rsp)
	leal	256(%rax,%r14), %ecx
	movl	%ecx, 40(%rsp)
	addl	%edi, %ebx
	leal	(%rax,%rbx), %ecx
	movl	%ecx, 64(%rsp)
	leal	256(%rax,%rbx), %eax
	movl	%eax, 48(%rsp)
	movl	%r15d, 44(%rsp)
	movl	%r15d, 60(%rsp)
	movl	%ebp, 52(%rsp)
	movl	%ebp, 68(%rsp)
	xorl	%r9d, %r9d
.LBB8_38:                               # %if.end.470
	movl	128(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	movq	%r11, %rdi
	movl	%r15d, %ecx
	movl	%ebp, %r8d
	callq	*1360(%r11)
.LBB8_39:                               # %cleanup.477
	movl	%eax, %r13d
.LBB8_40:                               # %cleanup.477
	movl	%r13d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gx_default_draw_thin_line, .Lfunc_end8-gx_default_draw_thin_line
	.cfi_endproc

	.globl	gx_default_draw_line
	.align	16, 0x90
	.type	gx_default_draw_line,@function
gx_default_draw_line:                   # @gx_default_draw_line
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end9:
	.size	gx_default_draw_line, .Lfunc_end9-gx_default_draw_line
	.cfi_endproc

	.align	16, 0x90
	.type	image_enum_common_enum_ptrs,@function
image_enum_common_enum_ptrs:            # @image_enum_common_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB10_2
# BB#1:                                 # %sw.bb
	movq	16(%rsi), %rdi
	callq	gx_device_enum_ptr
	movq	%rax, (%rbx)
	movl	$ptr_struct_procs, %eax
.LBB10_2:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end10:
	.size	image_enum_common_enum_ptrs, .Lfunc_end10-image_enum_common_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	image_enum_common_reloc_ptrs,@function
image_enum_common_reloc_ptrs:           # @image_enum_common_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	16(%rbx), %rdi
	movq	%rcx, %rsi
	callq	gx_device_reloc_ptr
	movq	%rax, 16(%rbx)
	popq	%rbx
	retq
.Lfunc_end11:
	.size	image_enum_common_reloc_ptrs, .Lfunc_end11-image_enum_common_reloc_ptrs
	.cfi_endproc

	.globl	gx_default_begin_image
	.align	16, 0x90
	.type	gx_default_begin_image,@function
gx_default_begin_image:                 # @gx_default_begin_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp117:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 56
	subq	$648, %rsp              # imm = 0x288
.Ltmp119:
	.cfi_def_cfa_offset 704
.Ltmp120:
	.cfi_offset %rbx, -56
.Ltmp121:
	.cfi_offset %r12, -48
.Ltmp122:
	.cfi_offset %r13, -40
.Ltmp123:
	.cfi_offset %r14, -32
.Ltmp124:
	.cfi_offset %r15, -24
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, %r15
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	1392(%rbx), %r14
	movl	$2, %esi
	callq	*1688(%rbx)
	movq	$gx_no_begin_image, 1392(%rbx)
	cmpl	%r12d, 568(%r13)
	je	.LBB12_2
# BB#1:                                 # %if.else
	leaq	48(%rsp), %rdi
	movl	$600, %edx              # imm = 0x258
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r14, %rbp
	movq	%r15, %r14
	movq	%rdi, %r15
	movq	%r13, %rsi
	callq	memcpy
	movl	%r12d, 616(%rsp)
	movq	%r15, %r13
	movq	%r14, %r15
	movq	%rbp, %r14
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB12_2:                               # %if.end
	movq	720(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	712(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	704(%rsp), %rax
	movq	%rax, (%rsp)
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rcx
	movq	%r15, %r8
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	*1440(%rbx)
	movq	%r14, 1392(%rbx)
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gx_default_begin_image, .Lfunc_end12-gx_default_begin_image
	.cfi_endproc

	.align	16, 0x90
	.type	gx_no_begin_image,@function
gx_no_begin_image:                      # @gx_no_begin_image
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end13:
	.size	gx_no_begin_image, .Lfunc_end13-gx_no_begin_image
	.cfi_endproc

	.globl	gx_default_begin_typed_image
	.align	16, 0x90
	.type	gx_default_begin_typed_image,@function
gx_default_begin_typed_image:           # @gx_default_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp129:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp130:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 112
.Ltmp133:
	.cfi_offset %rbx, -56
.Ltmp134:
	.cfi_offset %r12, -48
.Ltmp135:
	.cfi_offset %r13, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	128(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	120(%rsp), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	112(%rsp), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%r13, %r13
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$2, %esi
	movq	%rbp, %rdi
	callq	*1688(%rbp)
.LBB14_2:                               # %if.end
	movq	(%rbx), %rax
	movl	$gx_begin_image1, %ecx
	cmpq	%rcx, 8(%rax)
	jne	.LBB14_8
# BB#3:                                 # %if.then.2
	testq	%r12, %r12
	je	.LBB14_6
# BB#4:                                 # %lor.lhs.false
	testq	%r13, %r13
	je	.LBB14_8
# BB#5:                                 # %land.lhs.true
	leaq	132(%r13), %rsi
	movq	%r12, %rdi
	callq	gs_matrix_compare
	testl	%eax, %eax
	jne	.LBB14_8
.LBB14_6:                               # %if.then.5
	movl	568(%rbx), %ecx
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	*1392(%rbp)
	testl	%eax, %eax
	js	.LBB14_8
# BB#7:                                 # %return
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_8:                               # %if.end.15
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end14:
	.size	gx_default_begin_typed_image, .Lfunc_end14-gx_default_begin_typed_image
	.cfi_endproc

	.globl	gx_default_image_data
	.align	16, 0x90
	.type	gx_default_image_data,@function
gx_default_image_data:                  # @gx_default_image_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	jmp	gx_image_data           # TAILCALL
.Lfunc_end15:
	.size	gx_default_image_data, .Lfunc_end15-gx_default_image_data
	.cfi_endproc

	.globl	gx_default_end_image
	.align	16, 0x90
	.type	gx_default_end_image,@function
gx_default_end_image:                   # @gx_default_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	movl	%edx, %esi
	jmp	gx_image_end            # TAILCALL
.Lfunc_end16:
	.size	gx_default_end_image, .Lfunc_end16-gx_default_end_image
	.cfi_endproc

	.globl	gx_default_fillpage
	.align	16, 0x90
	.type	gx_default_fillpage,@function
gx_default_fillpage:                    # @gx_default_fillpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp142:
	.cfi_def_cfa_offset 64
.Ltmp143:
	.cfi_offset %rbx, -32
.Ltmp144:
	.cfi_offset %r14, -24
.Ltmp145:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gx_hld_is_hl_color_available
	testl	%eax, %eax
	je	.LBB17_2
# BB#1:                                 # %if.end
	movq	$0, 16(%rsp)
	movl	832(%rbx), %eax
	shll	$8, %eax
	movl	%eax, 24(%rsp)
	movl	836(%rbx), %eax
	shll	$8, %eax
	movl	%eax, 28(%rsp)
	leaq	16(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*1576(%rbx)
	cmpl	$-15, %eax
	jne	.LBB17_3
.LBB17_2:                               # %if.then.8
	movq	(%r14), %rax
	movl	832(%rbx), %ecx
	movl	836(%rbx), %r8d
	movq	$0, 8(%rsp)
	movl	$252, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %r9
	callq	*40(%rax)
.LBB17_3:                               # %if.end.12
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end17:
	.size	gx_default_fillpage, .Lfunc_end17-gx_default_fillpage
	.cfi_endproc

	.align	16, 0x90
	.type	gx_fill_trapezoid_as_lc,@function
gx_fill_trapezoid_as_lc:                # @gx_fill_trapezoid_as_lc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp148:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp149:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 56
	subq	$2520, %rsp             # imm = 0x9D8
.Ltmp152:
	.cfi_def_cfa_offset 2576
.Ltmp153:
	.cfi_offset %rbx, -56
.Ltmp154:
	.cfi_offset %r12, -48
.Ltmp155:
	.cfi_offset %r13, -40
.Ltmp156:
	.cfi_offset %r14, -32
.Ltmp157:
	.cfi_offset %r15, -24
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsi, %r9
	addl	$127, %ecx
	movl	%ecx, 192(%rsp)         # 4-byte Spill
	movl	%ecx, %ebp
	andl	$-256, %ebp
	orl	$128, %ebp
	addl	$127, %r8d
	movl	%r8d, 140(%rsp)         # 4-byte Spill
	movl	%r8d, %ecx
	andl	$-256, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %ebp
	jge	.LBB18_123
# BB#1:                                 # %if.end
	movslq	8(%r9), %rax
	movslq	8(%rdx), %r14
	movq	%rdx, %rsi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	(%r9), %edx
	movl	4(%r9), %ecx
	movl	%eax, %r12d
	subl	%edx, %r12d
	movl	(%rsi), %r8d
	movl	4(%rsi), %ebx
	movl	%ebx, 164(%rsp)         # 4-byte Spill
	movl	%ebp, %ebx
	subl	%ecx, %ebx
	movl	%ebx, 180(%rsp)         # 4-byte Spill
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	movl	100(%rdi), %r11d
	movl	12(%r9), %r10d
	subl	%ecx, %r10d
	movl	12(%rsi), %edi
	addl	$127, %edx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movslq	%edx, %rcx
	addq	$127, %rax
	xorq	%rcx, %rax
	xorl	%r13d, %r13d
	cmpq	$256, %rax              # imm = 0x100
	leal	127(%r8), %eax
	movl	%eax, 196(%rsp)         # 4-byte Spill
	jae	.LBB18_3
# BB#2:
	movq	%r8, 152(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$0, 176(%rsp)           # 4-byte Folded Spill
	xorl	%ecx, %ecx
	jmp	.LBB18_16
.LBB18_3:                               # %if.else
	testl	%r12d, %r12d
	js	.LBB18_7
# BB#4:                                 # %if.then.i
	cmpl	%r12d, %r10d
	jle	.LBB18_6
# BB#5:
	movq	%r8, 152(%rsp)          # 8-byte Spill
	movl	%edi, %r8d
	movl	$0, 176(%rsp)           # 4-byte Folded Spill
	movl	%r12d, %r15d
	movl	180(%rsp), %edi         # 4-byte Reload
	jmp	.LBB18_11
.LBB18_7:                               # %if.else.8.i
	movl	%r10d, %r15d
	addl	%r12d, %r15d
	js	.LBB18_9
# BB#8:                                 # %if.then.12.i
	movq	%r8, 152(%rsp)          # 8-byte Spill
	movl	%edi, %r8d
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	180(%rsp), %edi         # 4-byte Reload
	subl	%edi, %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movl	$-1, 176(%rsp)          # 4-byte Folded Spill
	jmp	.LBB18_11
.LBB18_6:                               # %if.else.i
	movq	%r8, 152(%rsp)          # 8-byte Spill
	movl	%edi, %r8d
	movl	%r12d, %eax
	cltd
	idivl	%r10d
	jmp	.LBB18_10
.LBB18_9:                               # %if.else.16.i
	movq	%r8, 152(%rsp)          # 8-byte Spill
	movl	%edi, %r8d
	leal	1(%r12), %eax
	cltd
	idivl	%r10d
	decl	%eax
.LBB18_10:                              # %compute_dx.exit
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	imull	%r10d, %ecx
	movl	%r12d, %r15d
	subl	%ecx, %r15d
	movl	180(%rsp), %edi         # 4-byte Reload
	imull	%edi, %eax
	movq	184(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
.LBB18_11:                              # %compute_dx.exit
	cmpl	$255, %edi
	jg	.LBB18_14
# BB#12:                                # %compute_dx.exit
	cmpl	$8388606, %r15d         # imm = 0x7FFFFE
	jg	.LBB18_14
# BB#13:                                # %cond.true
	movl	%r15d, %eax
	imull	%edi, %eax
	movl	%edi, 180(%rsp)         # 4-byte Spill
	cltd
	idivl	%r10d
	movl	%eax, %ecx
	xorl	%r13d, %r13d
	movl	%r8d, %edi
	jmp	.LBB18_15
.LBB18_14:                              # %cond.false
	movl	%edi, 180(%rsp)         # 4-byte Spill
	movl	%r15d, %esi
	movl	%r10d, %edx
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movl	%r10d, %ebx
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%r8d, %ebp
	callq	fixed_mult_quo
	movl	%ebp, %edi
	movq	200(%rsp), %rbp         # 8-byte Reload
	movl	%ebx, %r10d
	movq	104(%rsp), %r9          # 8-byte Reload
	movq	168(%rsp), %r11         # 8-byte Reload
	movl	%eax, %ecx
	xorl	%r13d, %r13d
.LBB18_15:                              # %cond.end
	movq	184(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
.LBB18_16:                              # %if.end.62
	movl	164(%rsp), %eax         # 4-byte Reload
	subl	%eax, %edi
	movl	%ebp, %r8d
	subl	%eax, %r8d
	movslq	196(%rsp), %rax         # 4-byte Folded Reload
	leaq	127(%r14), %rdx
	xorq	%rax, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jae	.LBB18_18
# BB#17:
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movl	%r15d, %esi
	movl	176(%rsp), %ebp         # 4-byte Reload
	movq	144(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB18_53
.LBB18_18:                              # %if.else.74
	movq	152(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r14d
	cmpl	%r12d, %r14d
	movl	%r15d, %esi
	jne	.LBB18_39
# BB#19:                                # %if.else.74
	testl	%ecx, %ecx
	je	.LBB18_39
# BB#20:                                # %if.then.80
	xorl	%r15d, %r15d
	cmpl	$0, 176(%rsp)           # 4-byte Folded Reload
	je	.LBB18_21
# BB#22:                                # %if.else.88
	testl	%r12d, %r12d
	js	.LBB18_26
# BB#23:                                # %if.then.i.134
	cmpl	%r12d, %edi
	jle	.LBB18_25
# BB#24:
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	jmp	.LBB18_30
.LBB18_39:                              # %if.else.123
	testl	%r14d, %r14d
	js	.LBB18_43
# BB#40:                                # %if.then.i.291
	cmpl	%r14d, %edi
	jle	.LBB18_42
# BB#41:
	xorl	%r12d, %r12d
	movl	%esi, 164(%rsp)         # 4-byte Spill
	jmp	.LBB18_47
.LBB18_21:
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%esi, %r13d
	jmp	.LBB18_31
.LBB18_43:                              # %if.else.8.i.307
	movl	%edi, %r13d
	addl	%r14d, %r13d
	js	.LBB18_45
# BB#44:                                # %if.then.12.i.311
	movl	%esi, 164(%rsp)         # 4-byte Spill
	subl	%r8d, 196(%rsp)         # 4-byte Folded Spill
	movl	$-1, %r12d
	jmp	.LBB18_48
.LBB18_42:                              # %if.else.i.303
	movl	%esi, 164(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	cltd
	idivl	%edi
	movl	%eax, %r12d
	jmp	.LBB18_46
.LBB18_26:                              # %if.else.8.i.150
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%edi, %r13d
	addl	%r12d, %r13d
	js	.LBB18_28
# BB#27:                                # %if.then.12.i.154
	subl	%r8d, 196(%rsp)         # 4-byte Folded Spill
	movl	$-1, %r15d
	jmp	.LBB18_31
.LBB18_25:                              # %if.else.i.146
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	cltd
	idivl	%edi
	movl	%eax, %r15d
	jmp	.LBB18_29
.LBB18_45:                              # %if.else.16.i.321
	movl	%esi, 164(%rsp)         # 4-byte Spill
	leal	1(%r14), %eax
	cltd
	idivl	%edi
	movl	%eax, %r12d
	decl	%r12d
.LBB18_46:                              # %compute_dx.exit322
	movl	%r12d, %ecx
	imull	%edi, %ecx
	subl	%ecx, %r14d
	movl	%r12d, %ecx
	imull	%r8d, %ecx
	addl	%ecx, 196(%rsp)         # 4-byte Folded Spill
.LBB18_47:                              # %compute_dx.exit322
	movl	%r14d, %r13d
.LBB18_48:                              # %compute_dx.exit322
	movl	180(%rsp), %eax         # 4-byte Reload
	cmpl	$255, %r8d
	jg	.LBB18_51
# BB#49:                                # %compute_dx.exit322
	cmpl	$8388606, %r13d         # imm = 0x7FFFFE
	jg	.LBB18_51
# BB#50:                                # %cond.true.132
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%r13d, %eax
	imull	%r8d, %eax
	cltd
	idivl	%edi
	movl	164(%rsp), %esi         # 4-byte Reload
	movl	176(%rsp), %ebp         # 4-byte Reload
	movq	144(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB18_52
.LBB18_51:                              # %cond.false.137
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%edi, %edx
	movl	%r8d, %edi
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movl	%r13d, %esi
	movl	%r10d, %ebp
	movl	%edx, %r15d
	callq	fixed_mult_quo
	movl	92(%rsp), %r8d          # 4-byte Reload
	movl	%r15d, %edi
	movl	%ebp, %r10d
	movq	144(%rsp), %rbx         # 8-byte Reload
	movl	164(%rsp), %esi         # 4-byte Reload
	movl	176(%rsp), %ebp         # 4-byte Reload
.LBB18_52:                              # %cond.end.141
	addl	%eax, 196(%rsp)         # 4-byte Folded Spill
	jmp	.LBB18_53
.LBB18_28:                              # %if.else.16.i.164
	leal	1(%r12), %eax
	cltd
	idivl	%edi
	movl	%eax, %r15d
	decl	%r15d
.LBB18_29:                              # %if.end.89
	movl	%r15d, %edx
	imull	%edi, %edx
	subl	%edx, %r12d
	movl	%r15d, %edx
	imull	%r8d, %edx
	addl	%edx, 196(%rsp)         # 4-byte Folded Spill
.LBB18_30:                              # %if.end.89
	movl	%r12d, %r13d
.LBB18_31:                              # %if.end.89
	movl	176(%rsp), %ebp         # 4-byte Reload
	movq	144(%rsp), %rbx         # 8-byte Reload
	movl	180(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	jne	.LBB18_34
# BB#32:                                # %if.end.89
	cmpl	%r10d, %edi
	jne	.LBB18_34
# BB#33:                                # %if.then.97
	movl	%eax, 180(%rsp)         # 4-byte Spill
	addl	%ecx, 196(%rsp)         # 4-byte Folded Spill
	movl	%r15d, %r12d
	jmp	.LBB18_53
.LBB18_34:                              # %if.else.100
	movl	%esi, 164(%rsp)         # 4-byte Spill
	cmpl	$255, %r8d
	jg	.LBB18_38
# BB#35:                                # %if.else.100
	cmpl	$8388606, %r13d         # imm = 0x7FFFFE
	jg	.LBB18_38
# BB#36:                                # %cond.true.109
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movl	%r13d, %eax
	imull	%r8d, %eax
	cltd
	idivl	%edi
	jmp	.LBB18_37
.LBB18_38:                              # %cond.false.114
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movl	%edi, %r12d
	movl	%r8d, %edi
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	%r10d, %ebp
	callq	fixed_mult_quo
	movl	92(%rsp), %r8d          # 4-byte Reload
	movl	%r12d, %edi
	movl	%ebp, %r10d
.LBB18_37:                              # %if.end.146
	addl	%eax, 196(%rsp)         # 4-byte Folded Spill
	movl	164(%rsp), %esi         # 4-byte Reload
	movl	176(%rsp), %ebp         # 4-byte Reload
	movl	%r15d, %r12d
.LBB18_53:                              # %if.end.146
	movl	%edi, %r15d
	movl	%r10d, %eax
	negl	%eax
	movl	%eax, 164(%rsp)         # 4-byte Spill
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB18_59
# BB#54:                                # %if.then.i.330
	shll	$8, %ebp
	testl	%esi, %esi
	movl	%r15d, %ecx
	je	.LBB18_55
# BB#56:                                # %if.else.i.343
	movl	%ecx, %r15d
	movl	%esi, %eax
	shll	$8, %eax
	cltd
	idivl	%r10d
	addl	%ebp, %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%esi, %eax
	movl	180(%rsp), %edi         # 4-byte Reload
	imull	%edi, %eax
	cmpl	$255, %edi
	jg	.LBB18_58
# BB#57:                                # %cond.true.i.345
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movl	%edx, 120(%rsp)         # 4-byte Spill
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	cltd
	idivl	%r10d
	subl	%r10d, %edx
	movl	%edx, 180(%rsp)         # 4-byte Spill
	jmp	.LBB18_60
.LBB18_59:                              # %if.else.19.i.369
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	shll	$8, %ebp
	movl	$256, %edi              # imm = 0x100
	movl	%r12d, 176(%rsp)        # 4-byte Spill
	movl	%esi, %r12d
	movl	%r10d, %edx
	movl	%r10d, %ebx
	callq	fixed_mult_quo
	addl	%ebp, %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%r12d, %ebp
	shll	$8, %ebp
	movl	$256, %edi              # imm = 0x100
	movl	%r12d, %esi
	movl	%ebx, %edx
	callq	fixed_mult_quo
	imull	%ebx, %eax
	subl	%eax, %ebp
	movl	%ebp, 120(%rsp)         # 4-byte Spill
	movl	%r12d, %ebp
	movl	180(%rsp), %edi         # 4-byte Reload
	imull	%edi, %ebp
	movl	%r12d, %esi
	movl	176(%rsp), %r12d        # 4-byte Reload
	movl	%ebx, %edx
	callq	fixed_mult_quo
	movl	%ebx, %r10d
	imull	%r10d, %eax
	subl	%r10d, %ebp
	subl	%eax, %ebp
	movl	%ebp, 180(%rsp)         # 4-byte Spill
	jmp	.LBB18_60
.LBB18_55:
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movl	$0, 120(%rsp)           # 4-byte Folded Spill
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	movl	%ebp, 128(%rsp)         # 4-byte Spill
	movl	164(%rsp), %eax         # 4-byte Reload
	movl	%eax, 180(%rsp)         # 4-byte Spill
	jmp	.LBB18_61
.LBB18_58:                              # %cond.false.i.349
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movl	%edx, 120(%rsp)         # 4-byte Spill
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	movl	%r10d, %edx
	movl	%r10d, %ebp
	movl	%eax, %ebx
	callq	fixed_mult_quo
	movl	%ebp, %r10d
	imull	%r10d, %eax
	subl	%eax, %ebx
	subl	%r10d, %ebx
	movl	%ebx, 180(%rsp)         # 4-byte Spill
.LBB18_60:                              # %compute_ldx.exit370
	movl	%r15d, %ecx
.LBB18_61:                              # %compute_ldx.exit370
	movq	104(%rsp), %r15         # 8-byte Reload
	movl	%ecx, %eax
	negl	%eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	cmpl	$8388606, %r13d         # imm = 0x7FFFFE
	jg	.LBB18_67
# BB#62:                                # %if.then.i.280
	shll	$8, %r12d
	testl	%r13d, %r13d
	je	.LBB18_63
# BB#64:                                # %if.else.i.284
	movl	%r13d, %eax
	shll	$8, %eax
	cltd
	idivl	%ecx
	addl	%r12d, %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movl	%r13d, %ebp
	movl	92(%rsp), %edi          # 4-byte Reload
	imull	%edi, %ebp
	cmpl	$255, %edi
	jg	.LBB18_66
# BB#65:                                # %cond.true.i
	movl	%edx, 116(%rsp)         # 4-byte Spill
	movl	%r10d, 136(%rsp)        # 4-byte Spill
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	subl	%ecx, %ebp
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	jmp	.LBB18_68
.LBB18_67:                              # %if.else.19.i
	movl	%r10d, 136(%rsp)        # 4-byte Spill
	shll	$8, %r12d
	movl	$256, %edi              # imm = 0x100
	movl	%r13d, %esi
	movl	%ecx, %edx
	movl	%ecx, %ebx
	movl	%ebx, 132(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	addl	%r12d, %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movl	%r13d, %ebp
	shll	$8, %ebp
	movl	$256, %edi              # imm = 0x100
	movl	%r13d, %esi
	movl	%ebx, %edx
	callq	fixed_mult_quo
	imull	%ebx, %eax
	subl	%eax, %ebp
	movl	%ebp, 116(%rsp)         # 4-byte Spill
	movl	%r13d, %ebp
	movl	92(%rsp), %edi          # 4-byte Reload
	imull	%edi, %ebp
	movl	%r13d, %esi
	movl	%ebx, %edx
	callq	fixed_mult_quo
	imull	%ebx, %eax
	subl	%ebx, %ebp
	subl	%eax, %ebp
	jmp	.LBB18_68
.LBB18_63:
	movl	$0, 116(%rsp)           # 4-byte Folded Spill
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movl	%r10d, 136(%rsp)        # 4-byte Spill
	movl	%r12d, 124(%rsp)        # 4-byte Spill
	movl	152(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB18_68
.LBB18_66:                              # %cond.false.i
	movl	%edx, 116(%rsp)         # 4-byte Spill
	movl	%r10d, 136(%rsp)        # 4-byte Spill
	movl	%r13d, %esi
	movl	%ecx, %edx
	movl	%ecx, %ebx
	movl	%ebx, 132(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	imull	%ebx, %eax
	subl	%eax, %ebp
	subl	%ebx, %ebp
.LBB18_68:                              # %compute_ldx.exit
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	24(%r15), %r10
	xorl	%ebx, %ebx
	testq	%r10, %r10
	movl	$0, %r9d
	je	.LBB18_83
# BB#69:                                # %lor.lhs.false.i.208
	movq	16(%r15), %r12
	testq	%r12, %r12
	movl	$0, %r9d
	je	.LBB18_83
# BB#70:                                # %if.else.i.213
	cmpq	$0, 24(%rdx)
	je	.LBB18_72
# BB#71:                                # %lor.end.i.216
	cmpq	$0, 16(%rdx)
	je	.LBB18_72
# BB#73:                                # %if.else.8.i.228
	movl	%ebp, 176(%rsp)         # 4-byte Spill
	movl	12(%r15), %ecx
	subl	4(%r15), %ecx
	movl	$-28, %eax
	cmpl	136(%rsp), %ecx         # 4-byte Folded Reload
	movl	192(%rsp), %ecx         # 4-byte Reload
	jne	.LBB18_123
# BB#74:
	xorl	%eax, %eax
	movl	136(%rsp), %r9d         # 4-byte Reload
	jmp	.LBB18_75
.LBB18_72:                              # %if.then.6.i.221
	movl	%ebp, 176(%rsp)         # 4-byte Spill
	movq	2584(%rsp), %rax
	movl	32(%rax), %r9d
	subl	28(%rax), %r9d
	movb	$1, %al
	movl	192(%rsp), %ecx         # 4-byte Reload
.LBB18_75:                              # %for.cond.preheader.i.231
	movq	168(%rsp), %rdi         # 8-byte Reload
	testl	%edi, %edi
	jle	.LBB18_76
# BB#77:                                # %for.body.lr.ph.i.241
	movl	%ecx, 192(%rsp)         # 4-byte Spill
	leaq	4(%r15), %rcx
	movq	2584(%rsp), %rdx
	leaq	28(%rdx), %rdx
	testb	%al, %al
	cmovneq	%rdx, %rcx
	movslq	%r9d, %r15
	movq	200(%rsp), %r11         # 8-byte Reload
	subl	(%rcx), %r11d
	leaq	2256(%rsp), %rsi
	leaq	2000(%rsp), %r14
	leaq	1744(%rsp), %rbx
	movq	%r10, %rbp
	movl	%edi, %r8d
	.align	16, 0x90
.LBB18_78:                              # %for.body.i.263
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp), %rcx
	movslq	(%r12), %rdi
	subq	%rdi, %rcx
	movl	%ecx, (%rbx)
	imulq	%r11, %rcx
	movq	%rcx, %rax
	cqto
	idivq	%r15
	leal	(%rdi,%rax), %edx
	movl	%edx, (%rsi)
	cltq
	imulq	%r15, %rax
	subq	%rax, %rcx
	jns	.LBB18_80
# BB#79:                                # %if.then.49.i.267
                                        #   in Loop: Header=BB18_78 Depth=1
	decl	%edx
	movl	%edx, (%rsi)
	addq	%r15, %rcx
.LBB18_80:                              # %if.end.56.i.274
                                        #   in Loop: Header=BB18_78 Depth=1
	movl	%ecx, (%r14)
	addq	$4, %rsi
	addq	$4, %r14
	addq	$4, %rbx
	addq	$4, %r12
	addq	$4, %rbp
	decl	%r8d
	jne	.LBB18_78
# BB#81:
	movl	176(%rsp), %ebp         # 4-byte Reload
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	jmp	.LBB18_82
.LBB18_76:
	movl	%ecx, 192(%rsp)         # 4-byte Spill
	movl	176(%rsp), %ebp         # 4-byte Reload
.LBB18_82:                              # %if.end.173
	xorl	%ebx, %ebx
.LBB18_83:                              # %if.end.173
	movq	24(%rdx), %r11
	testq	%r11, %r11
	je	.LBB18_84
# BB#85:                                # %lor.lhs.false.i.181
	movq	16(%rdx), %r8
	testq	%r8, %r8
	movq	168(%rsp), %r12         # 8-byte Reload
	je	.LBB18_98
# BB#86:                                # %if.else.i.184
	movq	%r15, %rax
	movl	%ebp, %r15d
	testq	%r10, %r10
	je	.LBB18_88
# BB#87:                                # %lor.end.i
	cmpq	$0, 16(%rax)
	je	.LBB18_88
# BB#89:                                # %if.else.8.i.186
	movl	12(%rdx), %ecx
	subl	4(%rdx), %ecx
	movl	$-28, %eax
	cmpl	132(%rsp), %ecx         # 4-byte Folded Reload
	jne	.LBB18_123
# BB#90:
	xorl	%eax, %eax
	movl	132(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB18_91
.LBB18_84:
	movq	168(%rsp), %r12         # 8-byte Reload
	jmp	.LBB18_98
.LBB18_88:                              # %if.then.6.i
	movq	2584(%rsp), %rax
	movl	32(%rax), %ebx
	subl	28(%rax), %ebx
	movb	$1, %al
.LBB18_91:                              # %for.cond.preheader.i
	testl	%r12d, %r12d
	jle	.LBB18_92
# BB#93:                                # %for.body.lr.ph.i.191
	addq	$4, %rdx
	movq	2584(%rsp), %rcx
	leaq	28(%rcx), %rcx
	testb	%al, %al
	cmoveq	%rdx, %rcx
	movslq	%ebx, %r10
	movl	%ebx, %r13d
	movq	200(%rsp), %rax         # 8-byte Reload
	subl	(%rcx), %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	leaq	1488(%rsp), %rdi
	leaq	1232(%rsp), %rsi
	leaq	976(%rsp), %rbp
	movl	%r12d, %r14d
	.align	16, 0x90
.LBB18_94:                              # %for.body.i.199
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%r11), %rcx
	movslq	(%r8), %rbx
	subq	%rbx, %rcx
	movl	%ecx, (%rbp)
	imulq	200(%rsp), %rcx         # 8-byte Folded Reload
	movq	%rcx, %rax
	cqto
	idivq	%r10
	leal	(%rbx,%rax), %edx
	movl	%edx, (%rdi)
	cltq
	imulq	%r10, %rax
	subq	%rax, %rcx
	jns	.LBB18_96
# BB#95:                                # %if.then.49.i
                                        #   in Loop: Header=BB18_94 Depth=1
	decl	%edx
	movl	%edx, (%rdi)
	addq	%r10, %rcx
.LBB18_96:                              # %if.end.56.i
                                        #   in Loop: Header=BB18_94 Depth=1
	movl	%ecx, (%rsi)
	addq	$4, %rdi
	addq	$4, %rsi
	addq	$4, %rbp
	addq	$4, %r8
	addq	$4, %r11
	decl	%r14d
	jne	.LBB18_94
# BB#97:
	movl	%r15d, %ebp
	movl	%r13d, %ebx
	jmp	.LBB18_98
.LBB18_92:
	movl	%r15d, %ebp
.LBB18_98:                              # %if.end.178
	movl	%ebp, 176(%rsp)         # 4-byte Spill
	movq	%r12, 168(%rsp)         # 8-byte Spill
	sarl	$8, 192(%rsp)           # 4-byte Folded Spill
	sarl	$8, 140(%rsp)           # 4-byte Folded Spill
	movq	184(%rsp), %rcx         # 8-byte Reload
	incl	%ecx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movl	196(%rsp), %edx         # 4-byte Reload
	incl	%edx
	movl	%edx, 196(%rsp)         # 4-byte Spill
	movabsq	$8589934584, %rdi       # imm = 0x1FFFFFFF8
	movslq	%ecx, %rax
	leaq	-256(%rax), %r13
	movl	180(%rsp), %esi         # 4-byte Reload
	cmpl	164(%rsp), %esi         # 4-byte Folded Reload
	cmovneq	%rax, %r13
	testb	%cl, %cl
	cmovneq	%rax, %r13
	shrq	$8, %r13
	movslq	%edx, %rax
	leaq	-256(%rax), %r14
	cmpl	152(%rsp), %ebp         # 4-byte Folded Reload
	cmovneq	%rax, %r14
	testb	%dl, %dl
	cmovneq	%rax, %r14
	shrq	$8, %r14
	testl	%r12d, %r12d
	setg	%al
	testl	%r9d, %r9d
	setne	%r11b
	sete	%cl
	leaq	1488(%rsp), %rdx
	leaq	2256(%rsp), %rsi
	cmoveq	%rdx, %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	andb	%al, %r11b
	movslq	%r9d, %rsi
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	testl	%ebx, %ebx
	movl	%ebx, %esi
	setne	%bl
	sete	%dl
	andb	%al, %bl
	movb	%bl, 96(%rsp)           # 1-byte Spill
	movslq	%esi, %r15
	orb	%cl, %dl
	movb	%dl, 92(%rsp)           # 1-byte Spill
	leal	-1(%r12), %eax
	incq	%rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	andq	%rax, %rdi
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	leaq	-8(%rdi), %rax
	shrq	$3, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorps	%xmm2, %xmm2
	jmp	.LBB18_99
	.align	16, 0x90
.LBB18_119:                             # %if.end.247
                                        #   in Loop: Header=BB18_99 Depth=1
	movl	%ebx, 192(%rsp)         # 4-byte Spill
	movq	184(%rsp), %rax         # 8-byte Reload
	addl	128(%rsp), %eax         # 4-byte Folded Reload
	movl	180(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	addl	120(%rsp), %edx         # 4-byte Folded Reload
	movl	$0, %ecx
	cmovnsl	136(%rsp), %ecx         # 4-byte Folded Reload
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, 180(%rsp)         # 4-byte Spill
	shrl	$31, %edx
	xorl	$1, %edx
	addl	%eax, %edx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movslq	%edx, %rax
	leaq	-256(%rax), %r12
	testb	%dl, %dl
	cmovneq	%rax, %r12
	cmpl	164(%rsp), %esi         # 4-byte Folded Reload
	cmovneq	%rax, %r12
	movl	196(%rsp), %eax         # 4-byte Reload
	addl	124(%rsp), %eax         # 4-byte Folded Reload
	movl	176(%rsp), %edx         # 4-byte Reload
	addl	116(%rsp), %edx         # 4-byte Folded Reload
	movl	$0, %ecx
	cmovnsl	132(%rsp), %ecx         # 4-byte Folded Reload
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, 176(%rsp)         # 4-byte Spill
	shrl	$31, %edx
	xorl	$1, %edx
	addl	%eax, %edx
	movl	%edx, 196(%rsp)         # 4-byte Spill
	movslq	%edx, %rax
	leaq	-256(%rax), %r14
	testb	%dl, %dl
	cmovneq	%rax, %r14
	cmpl	152(%rsp), %esi         # 4-byte Folded Reload
	cmovneq	%rax, %r14
	testb	%r11b, %r11b
	movq	168(%rsp), %r10         # 8-byte Reload
	movl	%r10d, %r9d
	leaq	2000(%rsp), %rdi
	leaq	1744(%rsp), %rbx
	leaq	2256(%rsp), %rsi
	movq	104(%rsp), %r13         # 8-byte Reload
	je	.LBB18_121
	.align	16, 0x90
.LBB18_120:                             # %for.body.i.119
                                        #   Parent Loop BB18_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi), %rdx
	movslq	(%rbx), %rax
	shlq	$8, %rax
	addq	%rdx, %rax
	cqto
	idivq	%r13
	addl	(%rsi), %eax
	movl	%edx, %ebp
	sarl	$31, %ebp
	addl	%ebp, %eax
	movl	%r13d, %ecx
	andl	%ebp, %ecx
	addl	%edx, %ecx
	movl	%eax, (%rsi)
	movl	%ecx, (%rdi)
	addq	$4, %rsi
	addq	$4, %rbx
	addq	$4, %rdi
	decl	%r9d
	jne	.LBB18_120
.LBB18_121:                             # %step_gradient.exit130
                                        #   in Loop: Header=BB18_99 Depth=1
	movq	%r12, %r13
	sarq	$8, %r13
	sarq	$8, %r14
	cmpb	$0, 96(%rsp)            # 1-byte Folded Reload
	movl	%r10d, %r9d
	leaq	1232(%rsp), %rdi
	leaq	976(%rsp), %rsi
	leaq	1488(%rsp), %rbx
	je	.LBB18_99
	.align	16, 0x90
.LBB18_122:                             # %for.body.i
                                        #   Parent Loop BB18_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi), %rdx
	movslq	(%rsi), %rax
	shlq	$8, %rax
	addq	%rdx, %rax
	cqto
	idivq	%r15
	addl	(%rbx), %eax
	movl	%edx, %ebp
	sarl	$31, %ebp
	addl	%ebp, %eax
	movl	%r15d, %ecx
	andl	%ebp, %ecx
	addl	%edx, %ecx
	movl	%eax, (%rbx)
	movl	%ecx, (%rdi)
	addq	$4, %rbx
	addq	$4, %rsi
	addq	$4, %rdi
	decl	%r9d
	jne	.LBB18_122
.LBB18_99:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_115 Depth 2
                                        #     Child Loop BB18_106 Depth 2
                                        #     Child Loop BB18_111 Depth 2
                                        #     Child Loop BB18_120 Depth 2
                                        #     Child Loop BB18_122 Depth 2
	movl	%r14d, %r8d
	subl	%r13d, %r8d
	movl	192(%rsp), %ebx         # 4-byte Reload
	je	.LBB18_118
# BB#100:                               # %if.then.222
                                        #   in Loop: Header=BB18_99 Depth=1
	cmpb	$0, 92(%rsp)            # 1-byte Folded Reload
	je	.LBB18_112
# BB#101:                               # %if.then.i.169
                                        #   in Loop: Header=BB18_99 Depth=1
	movl	$1, %r10d
	movq	168(%rsp), %rsi         # 8-byte Reload
	testl	%esi, %esi
	jle	.LBB18_113
# BB#102:                               # %overflow.checked
                                        #   in Loop: Header=BB18_99 Depth=1
	movl	%ebx, %r9d
	movq	64(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	movl	$0, %ebp
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	56(%rsp), %rbx          # 8-byte Reload
	je	.LBB18_108
# BB#103:                               # %vector.body.preheader
                                        #   in Loop: Header=BB18_99 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB18_105
# BB#104:                               # %vector.body.prol
                                        #   in Loop: Header=BB18_99 Depth=1
	movaps	(%rbx), %xmm0
	movaps	16(%rbx), %xmm1
	movaps	%xmm0, 720(%rsp)
	movaps	%xmm1, 736(%rsp)
	movaps	%xmm2, 464(%rsp)
	movaps	%xmm2, 480(%rsp)
	movaps	%xmm2, 208(%rsp)
	movaps	%xmm2, 224(%rsp)
	movl	$8, %eax
.LBB18_105:                             # %vector.body.preheader.split
                                        #   in Loop: Header=BB18_99 Depth=1
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movq	%rcx, %rbp
	je	.LBB18_108
	.align	16, 0x90
.LBB18_106:                             # %vector.body
                                        #   Parent Loop BB18_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%rbx,%rax,4), %xmm0
	movaps	16(%rbx,%rax,4), %xmm1
	movaps	%xmm0, 720(%rsp,%rax,4)
	movaps	%xmm1, 736(%rsp,%rax,4)
	movaps	%xmm2, 464(%rsp,%rax,4)
	movaps	%xmm2, 480(%rsp,%rax,4)
	movaps	%xmm2, 208(%rsp,%rax,4)
	movaps	%xmm2, 224(%rsp,%rax,4)
	movaps	32(%rbx,%rax,4), %xmm0
	movaps	48(%rbx,%rax,4), %xmm1
	movaps	%xmm0, 752(%rsp,%rax,4)
	movaps	%xmm1, 768(%rsp,%rax,4)
	movaps	%xmm2, 496(%rsp,%rax,4)
	movaps	%xmm2, 512(%rsp,%rax,4)
	movaps	%xmm2, 240(%rsp,%rax,4)
	movaps	%xmm2, 256(%rsp,%rax,4)
	addq	$16, %rax
	cmpq	%rax, %rcx
	jne	.LBB18_106
# BB#107:                               #   in Loop: Header=BB18_99 Depth=1
	movq	%rcx, %rbp
.LBB18_108:                             # %middle.block
                                        #   in Loop: Header=BB18_99 Depth=1
	cmpq	%rbp, 48(%rsp)          # 8-byte Folded Reload
	je	.LBB18_109
# BB#110:                               # %for.body.i.178.preheader
                                        #   in Loop: Header=BB18_99 Depth=1
	leaq	208(%rsp,%rbp,4), %rax
	leaq	464(%rsp,%rbp,4), %rcx
	leaq	720(%rsp,%rbp,4), %rdx
	subl	%ebp, %esi
	leaq	(%rbx,%rbp,4), %rbp
	.align	16, 0x90
.LBB18_111:                             # %for.body.i.178
                                        #   Parent Loop BB18_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %ebx
	movl	%ebx, (%rdx)
	movl	$0, (%rcx)
	movl	$0, (%rax)
	addq	$4, %rax
	addq	$4, %rcx
	addq	$4, %rdx
	addq	$4, %rbp
	decl	%esi
	jne	.LBB18_111
.LBB18_109:                             #   in Loop: Header=BB18_99 Depth=1
	movb	%r11b, %bpl
	movl	%r9d, %ebx
	jmp	.LBB18_117
	.align	16, 0x90
.LBB18_112:                             # %if.else.i.179
                                        #   in Loop: Header=BB18_99 Depth=1
	movl	180(%rsp), %eax         # 4-byte Reload
	cmpl	164(%rsp), %eax         # 4-byte Folded Reload
	sete	%cl
	movl	%r13d, %eax
	shll	$8, %eax
	orl	$128, %eax
	shll	$8, %r14d
	addl	$-128, %r14d
	movl	%r14d, %edx
	subl	%eax, %edx
	movl	%edx, %r10d
	sarl	$8, %r10d
	cmpl	$256, %edx              # imm = 0x100
	movl	$1, %edx
	cmovll	%edx, %r10d
	movq	168(%rsp), %rdi         # 8-byte Reload
	testl	%edi, %edi
	jle	.LBB18_113
# BB#114:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB18_99 Depth=1
	movl	%r10d, 72(%rsp)         # 4-byte Spill
	movl	%r8d, 76(%rsp)          # 4-byte Spill
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movb	%r11b, %bpl
	movzbl	%cl, %ecx
	movq	184(%rsp), %rdx         # 8-byte Reload
	subl	%ecx, %edx
	leal	-128(%rdx), %esi
	movl	176(%rsp), %ecx         # 4-byte Reload
	cmpl	152(%rsp), %ecx         # 4-byte Folded Reload
	movl	$0, %ecx
	movl	$-1, %ebx
	cmovel	%ebx, %ecx
	subl	%esi, %eax
	cltq
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movl	196(%rsp), %eax         # 4-byte Reload
	subl	%edx, %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	subl	%esi, %r14d
	movslq	%r14d, %rbx
	movl	%edi, %r9d
	leaq	720(%rsp), %r13
	leaq	464(%rsp), %r14
	leaq	208(%rsp), %r12
	leaq	2256(%rsp), %r10
	leaq	1488(%rsp), %r8
	.align	16, 0x90
.LBB18_115:                             # %for.body.i.i
                                        #   Parent Loop BB18_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%r10), %r11
	movslq	(%r8), %rsi
	subq	%r11, %rsi
	movq	%rsi, %rax
	imulq	200(%rsp), %rax         # 8-byte Folded Reload
	cqto
	idivq	%rcx
	movq	%rax, %rdi
	imulq	%rbx, %rsi
	addl	%r11d, %edi
	movq	%rsi, %rax
	cqto
	idivq	%rcx
	movl	%edi, (%r13)
	movl	$0, (%r14)
	addl	%r11d, %eax
	subl	%edi, %eax
	addq	$4, %r8
	addq	$4, %r10
	movl	%eax, (%r12)
	addq	$4, %r12
	addq	$4, %r14
	addq	$4, %r13
	decl	%r9d
	jne	.LBB18_115
# BB#116:                               #   in Loop: Header=BB18_99 Depth=1
	movl	192(%rsp), %ebx         # 4-byte Reload
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	80(%rsp), %r13          # 8-byte Reload
	movl	76(%rsp), %r8d          # 4-byte Reload
	movl	72(%rsp), %r10d         # 4-byte Reload
	jmp	.LBB18_117
.LBB18_113:                             #   in Loop: Header=BB18_99 Depth=1
	movb	%r11b, %bpl
	movq	144(%rsp), %rdi         # 8-byte Reload
.LBB18_117:                             # %cond.end.237
                                        #   in Loop: Header=BB18_99 Depth=1
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	movl	%r10d, 16(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	464(%rsp), %rax
	movq	%rax, (%rsp)
	movq	2584(%rsp), %rsi
	movl	%r13d, %edx
	movl	%ebx, %ecx
	leaq	720(%rsp), %r9
	movq	%rdi, %rax
	callq	*1592(%rax)
	testl	%eax, %eax
	movb	%bpl, %r11b
	xorps	%xmm2, %xmm2
	js	.LBB18_123
.LBB18_118:                             # %if.end.243
                                        #   in Loop: Header=BB18_99 Depth=1
	incl	%ebx
	xorl	%eax, %eax
	cmpl	140(%rsp), %ebx         # 4-byte Folded Reload
	jne	.LBB18_119
.LBB18_123:                             # %cleanup.352
	addq	$2520, %rsp             # imm = 0x9D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gx_fill_trapezoid_as_lc, .Lfunc_end18-gx_fill_trapezoid_as_lc
	.cfi_endproc

	.align	16, 0x90
	.type	gx_fill_trapezoid_ns_lc,@function
gx_fill_trapezoid_ns_lc:                # @gx_fill_trapezoid_ns_lc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp160:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp161:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp162:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp163:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp164:
	.cfi_def_cfa_offset 56
	subq	$2520, %rsp             # imm = 0x9D8
.Ltmp165:
	.cfi_def_cfa_offset 2576
.Ltmp166:
	.cfi_offset %rbx, -56
.Ltmp167:
	.cfi_offset %r12, -48
.Ltmp168:
	.cfi_offset %r13, -40
.Ltmp169:
	.cfi_offset %r14, -32
.Ltmp170:
	.cfi_offset %r15, -24
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsi, %r9
	addl	$127, %ecx
	movl	%ecx, 192(%rsp)         # 4-byte Spill
	movl	%ecx, %ebp
	andl	$-256, %ebp
	orl	$128, %ebp
	addl	$127, %r8d
	movl	%r8d, 140(%rsp)         # 4-byte Spill
	movl	%r8d, %ecx
	andl	$-256, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %ebp
	jge	.LBB19_123
# BB#1:                                 # %if.end
	movslq	8(%r9), %rax
	movslq	8(%rdx), %r14
	movq	%rdx, %rsi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	(%r9), %edx
	movl	4(%r9), %ecx
	movl	%eax, %r12d
	subl	%edx, %r12d
	movl	(%rsi), %r8d
	movl	4(%rsi), %ebx
	movl	%ebx, 164(%rsp)         # 4-byte Spill
	movl	%ebp, %ebx
	subl	%ecx, %ebx
	movl	%ebx, 180(%rsp)         # 4-byte Spill
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	movl	100(%rdi), %r11d
	movl	12(%r9), %r10d
	subl	%ecx, %r10d
	movl	12(%rsi), %edi
	addl	$127, %edx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movslq	%edx, %rcx
	addq	$127, %rax
	xorq	%rcx, %rax
	xorl	%r13d, %r13d
	cmpq	$256, %rax              # imm = 0x100
	leal	127(%r8), %eax
	movl	%eax, 196(%rsp)         # 4-byte Spill
	jae	.LBB19_3
# BB#2:
	movq	%r8, 152(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$0, 176(%rsp)           # 4-byte Folded Spill
	xorl	%ecx, %ecx
	jmp	.LBB19_16
.LBB19_3:                               # %if.else
	testl	%r12d, %r12d
	js	.LBB19_7
# BB#4:                                 # %if.then.i
	cmpl	%r12d, %r10d
	jle	.LBB19_6
# BB#5:
	movq	%r8, 152(%rsp)          # 8-byte Spill
	movl	%edi, %r8d
	movl	$0, 176(%rsp)           # 4-byte Folded Spill
	movl	%r12d, %r15d
	movl	180(%rsp), %edi         # 4-byte Reload
	jmp	.LBB19_11
.LBB19_7:                               # %if.else.8.i
	movl	%r10d, %r15d
	addl	%r12d, %r15d
	js	.LBB19_9
# BB#8:                                 # %if.then.12.i
	movq	%r8, 152(%rsp)          # 8-byte Spill
	movl	%edi, %r8d
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	180(%rsp), %edi         # 4-byte Reload
	subl	%edi, %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movl	$-1, 176(%rsp)          # 4-byte Folded Spill
	jmp	.LBB19_11
.LBB19_6:                               # %if.else.i
	movq	%r8, 152(%rsp)          # 8-byte Spill
	movl	%edi, %r8d
	movl	%r12d, %eax
	cltd
	idivl	%r10d
	jmp	.LBB19_10
.LBB19_9:                               # %if.else.16.i
	movq	%r8, 152(%rsp)          # 8-byte Spill
	movl	%edi, %r8d
	leal	1(%r12), %eax
	cltd
	idivl	%r10d
	decl	%eax
.LBB19_10:                              # %compute_dx.exit
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	imull	%r10d, %ecx
	movl	%r12d, %r15d
	subl	%ecx, %r15d
	movl	180(%rsp), %edi         # 4-byte Reload
	imull	%edi, %eax
	movq	184(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
.LBB19_11:                              # %compute_dx.exit
	cmpl	$255, %edi
	jg	.LBB19_14
# BB#12:                                # %compute_dx.exit
	cmpl	$8388606, %r15d         # imm = 0x7FFFFE
	jg	.LBB19_14
# BB#13:                                # %cond.true
	movl	%r15d, %eax
	imull	%edi, %eax
	movl	%edi, 180(%rsp)         # 4-byte Spill
	cltd
	idivl	%r10d
	movl	%eax, %ecx
	xorl	%r13d, %r13d
	movl	%r8d, %edi
	jmp	.LBB19_15
.LBB19_14:                              # %cond.false
	movl	%edi, 180(%rsp)         # 4-byte Spill
	movl	%r15d, %esi
	movl	%r10d, %edx
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movl	%r10d, %ebx
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%r8d, %ebp
	callq	fixed_mult_quo
	movl	%ebp, %edi
	movq	200(%rsp), %rbp         # 8-byte Reload
	movl	%ebx, %r10d
	movq	104(%rsp), %r9          # 8-byte Reload
	movq	168(%rsp), %r11         # 8-byte Reload
	movl	%eax, %ecx
	xorl	%r13d, %r13d
.LBB19_15:                              # %cond.end
	movq	184(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
.LBB19_16:                              # %if.end.62
	movl	164(%rsp), %eax         # 4-byte Reload
	subl	%eax, %edi
	movl	%ebp, %r8d
	subl	%eax, %r8d
	movslq	196(%rsp), %rax         # 4-byte Folded Reload
	leaq	127(%r14), %rdx
	xorq	%rax, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jae	.LBB19_18
# BB#17:
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movl	%r15d, %esi
	movl	176(%rsp), %ebp         # 4-byte Reload
	movq	144(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB19_53
.LBB19_18:                              # %if.else.74
	movq	152(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r14d
	cmpl	%r12d, %r14d
	movl	%r15d, %esi
	jne	.LBB19_39
# BB#19:                                # %if.else.74
	testl	%ecx, %ecx
	je	.LBB19_39
# BB#20:                                # %if.then.80
	xorl	%r15d, %r15d
	cmpl	$0, 176(%rsp)           # 4-byte Folded Reload
	je	.LBB19_21
# BB#22:                                # %if.else.88
	testl	%r12d, %r12d
	js	.LBB19_26
# BB#23:                                # %if.then.i.134
	cmpl	%r12d, %edi
	jle	.LBB19_25
# BB#24:
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	jmp	.LBB19_30
.LBB19_39:                              # %if.else.123
	testl	%r14d, %r14d
	js	.LBB19_43
# BB#40:                                # %if.then.i.291
	cmpl	%r14d, %edi
	jle	.LBB19_42
# BB#41:
	xorl	%r12d, %r12d
	movl	%esi, 164(%rsp)         # 4-byte Spill
	jmp	.LBB19_47
.LBB19_21:
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%esi, %r13d
	jmp	.LBB19_31
.LBB19_43:                              # %if.else.8.i.307
	movl	%edi, %r13d
	addl	%r14d, %r13d
	js	.LBB19_45
# BB#44:                                # %if.then.12.i.311
	movl	%esi, 164(%rsp)         # 4-byte Spill
	subl	%r8d, 196(%rsp)         # 4-byte Folded Spill
	movl	$-1, %r12d
	jmp	.LBB19_48
.LBB19_42:                              # %if.else.i.303
	movl	%esi, 164(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	cltd
	idivl	%edi
	movl	%eax, %r12d
	jmp	.LBB19_46
.LBB19_26:                              # %if.else.8.i.150
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%edi, %r13d
	addl	%r12d, %r13d
	js	.LBB19_28
# BB#27:                                # %if.then.12.i.154
	subl	%r8d, 196(%rsp)         # 4-byte Folded Spill
	movl	$-1, %r15d
	jmp	.LBB19_31
.LBB19_25:                              # %if.else.i.146
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	cltd
	idivl	%edi
	movl	%eax, %r15d
	jmp	.LBB19_29
.LBB19_45:                              # %if.else.16.i.321
	movl	%esi, 164(%rsp)         # 4-byte Spill
	leal	1(%r14), %eax
	cltd
	idivl	%edi
	movl	%eax, %r12d
	decl	%r12d
.LBB19_46:                              # %compute_dx.exit322
	movl	%r12d, %ecx
	imull	%edi, %ecx
	subl	%ecx, %r14d
	movl	%r12d, %ecx
	imull	%r8d, %ecx
	addl	%ecx, 196(%rsp)         # 4-byte Folded Spill
.LBB19_47:                              # %compute_dx.exit322
	movl	%r14d, %r13d
.LBB19_48:                              # %compute_dx.exit322
	movl	180(%rsp), %eax         # 4-byte Reload
	cmpl	$255, %r8d
	jg	.LBB19_51
# BB#49:                                # %compute_dx.exit322
	cmpl	$8388606, %r13d         # imm = 0x7FFFFE
	jg	.LBB19_51
# BB#50:                                # %cond.true.132
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%r13d, %eax
	imull	%r8d, %eax
	cltd
	idivl	%edi
	movl	164(%rsp), %esi         # 4-byte Reload
	movl	176(%rsp), %ebp         # 4-byte Reload
	movq	144(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB19_52
.LBB19_51:                              # %cond.false.137
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movq	%r11, 168(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%edi, %edx
	movl	%r8d, %edi
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movl	%r13d, %esi
	movl	%r10d, %ebp
	movl	%edx, %r15d
	callq	fixed_mult_quo
	movl	92(%rsp), %r8d          # 4-byte Reload
	movl	%r15d, %edi
	movl	%ebp, %r10d
	movq	144(%rsp), %rbx         # 8-byte Reload
	movl	164(%rsp), %esi         # 4-byte Reload
	movl	176(%rsp), %ebp         # 4-byte Reload
.LBB19_52:                              # %cond.end.141
	addl	%eax, 196(%rsp)         # 4-byte Folded Spill
	jmp	.LBB19_53
.LBB19_28:                              # %if.else.16.i.164
	leal	1(%r12), %eax
	cltd
	idivl	%edi
	movl	%eax, %r15d
	decl	%r15d
.LBB19_29:                              # %if.end.89
	movl	%r15d, %edx
	imull	%edi, %edx
	subl	%edx, %r12d
	movl	%r15d, %edx
	imull	%r8d, %edx
	addl	%edx, 196(%rsp)         # 4-byte Folded Spill
.LBB19_30:                              # %if.end.89
	movl	%r12d, %r13d
.LBB19_31:                              # %if.end.89
	movl	176(%rsp), %ebp         # 4-byte Reload
	movq	144(%rsp), %rbx         # 8-byte Reload
	movl	180(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	jne	.LBB19_34
# BB#32:                                # %if.end.89
	cmpl	%r10d, %edi
	jne	.LBB19_34
# BB#33:                                # %if.then.97
	movl	%eax, 180(%rsp)         # 4-byte Spill
	addl	%ecx, 196(%rsp)         # 4-byte Folded Spill
	movl	%r15d, %r12d
	jmp	.LBB19_53
.LBB19_34:                              # %if.else.100
	movl	%esi, 164(%rsp)         # 4-byte Spill
	cmpl	$255, %r8d
	jg	.LBB19_38
# BB#35:                                # %if.else.100
	cmpl	$8388606, %r13d         # imm = 0x7FFFFE
	jg	.LBB19_38
# BB#36:                                # %cond.true.109
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movl	%r13d, %eax
	imull	%r8d, %eax
	cltd
	idivl	%edi
	jmp	.LBB19_37
.LBB19_38:                              # %cond.false.114
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movl	%edi, %r12d
	movl	%r8d, %edi
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	%r10d, %ebp
	callq	fixed_mult_quo
	movl	92(%rsp), %r8d          # 4-byte Reload
	movl	%r12d, %edi
	movl	%ebp, %r10d
.LBB19_37:                              # %if.end.146
	addl	%eax, 196(%rsp)         # 4-byte Folded Spill
	movl	164(%rsp), %esi         # 4-byte Reload
	movl	176(%rsp), %ebp         # 4-byte Reload
	movl	%r15d, %r12d
.LBB19_53:                              # %if.end.146
	movl	%edi, %r15d
	movl	%r10d, %eax
	negl	%eax
	movl	%eax, 164(%rsp)         # 4-byte Spill
	cmpl	$8388606, %esi          # imm = 0x7FFFFE
	jg	.LBB19_59
# BB#54:                                # %if.then.i.330
	shll	$8, %ebp
	testl	%esi, %esi
	movl	%r15d, %ecx
	je	.LBB19_55
# BB#56:                                # %if.else.i.343
	movl	%ecx, %r15d
	movl	%esi, %eax
	shll	$8, %eax
	cltd
	idivl	%r10d
	addl	%ebp, %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%esi, %eax
	movl	180(%rsp), %edi         # 4-byte Reload
	imull	%edi, %eax
	cmpl	$255, %edi
	jg	.LBB19_58
# BB#57:                                # %cond.true.i.345
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movl	%edx, 120(%rsp)         # 4-byte Spill
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	cltd
	idivl	%r10d
	subl	%r10d, %edx
	movl	%edx, 180(%rsp)         # 4-byte Spill
	jmp	.LBB19_60
.LBB19_59:                              # %if.else.19.i.369
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	shll	$8, %ebp
	movl	$256, %edi              # imm = 0x100
	movl	%r12d, 176(%rsp)        # 4-byte Spill
	movl	%esi, %r12d
	movl	%r10d, %edx
	movl	%r10d, %ebx
	callq	fixed_mult_quo
	addl	%ebp, %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%r12d, %ebp
	shll	$8, %ebp
	movl	$256, %edi              # imm = 0x100
	movl	%r12d, %esi
	movl	%ebx, %edx
	callq	fixed_mult_quo
	imull	%ebx, %eax
	subl	%eax, %ebp
	movl	%ebp, 120(%rsp)         # 4-byte Spill
	movl	%r12d, %ebp
	movl	180(%rsp), %edi         # 4-byte Reload
	imull	%edi, %ebp
	movl	%r12d, %esi
	movl	176(%rsp), %r12d        # 4-byte Reload
	movl	%ebx, %edx
	callq	fixed_mult_quo
	movl	%ebx, %r10d
	imull	%r10d, %eax
	subl	%r10d, %ebp
	subl	%eax, %ebp
	movl	%ebp, 180(%rsp)         # 4-byte Spill
	jmp	.LBB19_60
.LBB19_55:
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movl	$0, 120(%rsp)           # 4-byte Folded Spill
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	movl	%ebp, 128(%rsp)         # 4-byte Spill
	movl	164(%rsp), %eax         # 4-byte Reload
	movl	%eax, 180(%rsp)         # 4-byte Spill
	jmp	.LBB19_61
.LBB19_58:                              # %cond.false.i.349
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movl	%edx, 120(%rsp)         # 4-byte Spill
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	movl	%r10d, %edx
	movl	%r10d, %ebp
	movl	%eax, %ebx
	callq	fixed_mult_quo
	movl	%ebp, %r10d
	imull	%r10d, %eax
	subl	%eax, %ebx
	subl	%r10d, %ebx
	movl	%ebx, 180(%rsp)         # 4-byte Spill
.LBB19_60:                              # %compute_ldx.exit370
	movl	%r15d, %ecx
.LBB19_61:                              # %compute_ldx.exit370
	movq	104(%rsp), %r15         # 8-byte Reload
	movl	%ecx, %eax
	negl	%eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	cmpl	$8388606, %r13d         # imm = 0x7FFFFE
	jg	.LBB19_67
# BB#62:                                # %if.then.i.280
	shll	$8, %r12d
	testl	%r13d, %r13d
	je	.LBB19_63
# BB#64:                                # %if.else.i.284
	movl	%r13d, %eax
	shll	$8, %eax
	cltd
	idivl	%ecx
	addl	%r12d, %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movl	%r13d, %ebp
	movl	92(%rsp), %edi          # 4-byte Reload
	imull	%edi, %ebp
	cmpl	$255, %edi
	jg	.LBB19_66
# BB#65:                                # %cond.true.i
	movl	%edx, 116(%rsp)         # 4-byte Spill
	movl	%r10d, 136(%rsp)        # 4-byte Spill
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	subl	%ecx, %ebp
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	jmp	.LBB19_68
.LBB19_67:                              # %if.else.19.i
	movl	%r10d, 136(%rsp)        # 4-byte Spill
	shll	$8, %r12d
	movl	$256, %edi              # imm = 0x100
	movl	%r13d, %esi
	movl	%ecx, %edx
	movl	%ecx, %ebx
	movl	%ebx, 132(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	addl	%r12d, %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movl	%r13d, %ebp
	shll	$8, %ebp
	movl	$256, %edi              # imm = 0x100
	movl	%r13d, %esi
	movl	%ebx, %edx
	callq	fixed_mult_quo
	imull	%ebx, %eax
	subl	%eax, %ebp
	movl	%ebp, 116(%rsp)         # 4-byte Spill
	movl	%r13d, %ebp
	movl	92(%rsp), %edi          # 4-byte Reload
	imull	%edi, %ebp
	movl	%r13d, %esi
	movl	%ebx, %edx
	callq	fixed_mult_quo
	imull	%ebx, %eax
	subl	%ebx, %ebp
	subl	%eax, %ebp
	jmp	.LBB19_68
.LBB19_63:
	movl	$0, 116(%rsp)           # 4-byte Folded Spill
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movl	%r10d, 136(%rsp)        # 4-byte Spill
	movl	%r12d, 124(%rsp)        # 4-byte Spill
	movl	152(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB19_68
.LBB19_66:                              # %cond.false.i
	movl	%edx, 116(%rsp)         # 4-byte Spill
	movl	%r10d, 136(%rsp)        # 4-byte Spill
	movl	%r13d, %esi
	movl	%ecx, %edx
	movl	%ecx, %ebx
	movl	%ebx, 132(%rsp)         # 4-byte Spill
	callq	fixed_mult_quo
	imull	%ebx, %eax
	subl	%eax, %ebp
	subl	%ebx, %ebp
.LBB19_68:                              # %compute_ldx.exit
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	24(%r15), %r10
	xorl	%ebx, %ebx
	testq	%r10, %r10
	movl	$0, %r9d
	je	.LBB19_83
# BB#69:                                # %lor.lhs.false.i.208
	movq	16(%r15), %r12
	testq	%r12, %r12
	movl	$0, %r9d
	je	.LBB19_83
# BB#70:                                # %if.else.i.213
	cmpq	$0, 24(%rdx)
	je	.LBB19_72
# BB#71:                                # %lor.end.i.216
	cmpq	$0, 16(%rdx)
	je	.LBB19_72
# BB#73:                                # %if.else.8.i.228
	movl	%ebp, 176(%rsp)         # 4-byte Spill
	movl	12(%r15), %ecx
	subl	4(%r15), %ecx
	movl	$-28, %eax
	cmpl	136(%rsp), %ecx         # 4-byte Folded Reload
	movl	192(%rsp), %ecx         # 4-byte Reload
	jne	.LBB19_123
# BB#74:
	xorl	%eax, %eax
	movl	136(%rsp), %r9d         # 4-byte Reload
	jmp	.LBB19_75
.LBB19_72:                              # %if.then.6.i.221
	movl	%ebp, 176(%rsp)         # 4-byte Spill
	movq	2584(%rsp), %rax
	movl	32(%rax), %r9d
	subl	28(%rax), %r9d
	movb	$1, %al
	movl	192(%rsp), %ecx         # 4-byte Reload
.LBB19_75:                              # %for.cond.preheader.i.231
	movq	168(%rsp), %rdi         # 8-byte Reload
	testl	%edi, %edi
	jle	.LBB19_76
# BB#77:                                # %for.body.lr.ph.i.241
	movl	%ecx, 192(%rsp)         # 4-byte Spill
	leaq	4(%r15), %rcx
	movq	2584(%rsp), %rdx
	leaq	28(%rdx), %rdx
	testb	%al, %al
	cmovneq	%rdx, %rcx
	movslq	%r9d, %r15
	movq	200(%rsp), %r11         # 8-byte Reload
	subl	(%rcx), %r11d
	leaq	2256(%rsp), %rsi
	leaq	2000(%rsp), %r14
	leaq	1744(%rsp), %rbx
	movq	%r10, %rbp
	movl	%edi, %r8d
	.align	16, 0x90
.LBB19_78:                              # %for.body.i.263
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp), %rcx
	movslq	(%r12), %rdi
	subq	%rdi, %rcx
	movl	%ecx, (%rbx)
	imulq	%r11, %rcx
	movq	%rcx, %rax
	cqto
	idivq	%r15
	leal	(%rdi,%rax), %edx
	movl	%edx, (%rsi)
	cltq
	imulq	%r15, %rax
	subq	%rax, %rcx
	jns	.LBB19_80
# BB#79:                                # %if.then.49.i.267
                                        #   in Loop: Header=BB19_78 Depth=1
	decl	%edx
	movl	%edx, (%rsi)
	addq	%r15, %rcx
.LBB19_80:                              # %if.end.56.i.274
                                        #   in Loop: Header=BB19_78 Depth=1
	movl	%ecx, (%r14)
	addq	$4, %rsi
	addq	$4, %r14
	addq	$4, %rbx
	addq	$4, %r12
	addq	$4, %rbp
	decl	%r8d
	jne	.LBB19_78
# BB#81:
	movl	176(%rsp), %ebp         # 4-byte Reload
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	jmp	.LBB19_82
.LBB19_76:
	movl	%ecx, 192(%rsp)         # 4-byte Spill
	movl	176(%rsp), %ebp         # 4-byte Reload
.LBB19_82:                              # %if.end.173
	xorl	%ebx, %ebx
.LBB19_83:                              # %if.end.173
	movq	24(%rdx), %r11
	testq	%r11, %r11
	je	.LBB19_84
# BB#85:                                # %lor.lhs.false.i.181
	movq	16(%rdx), %r8
	testq	%r8, %r8
	movq	168(%rsp), %r12         # 8-byte Reload
	je	.LBB19_98
# BB#86:                                # %if.else.i.184
	movq	%r15, %rax
	movl	%ebp, %r15d
	testq	%r10, %r10
	je	.LBB19_88
# BB#87:                                # %lor.end.i
	cmpq	$0, 16(%rax)
	je	.LBB19_88
# BB#89:                                # %if.else.8.i.186
	movl	12(%rdx), %ecx
	subl	4(%rdx), %ecx
	movl	$-28, %eax
	cmpl	132(%rsp), %ecx         # 4-byte Folded Reload
	jne	.LBB19_123
# BB#90:
	xorl	%eax, %eax
	movl	132(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB19_91
.LBB19_84:
	movq	168(%rsp), %r12         # 8-byte Reload
	jmp	.LBB19_98
.LBB19_88:                              # %if.then.6.i
	movq	2584(%rsp), %rax
	movl	32(%rax), %ebx
	subl	28(%rax), %ebx
	movb	$1, %al
.LBB19_91:                              # %for.cond.preheader.i
	testl	%r12d, %r12d
	jle	.LBB19_92
# BB#93:                                # %for.body.lr.ph.i.191
	addq	$4, %rdx
	movq	2584(%rsp), %rcx
	leaq	28(%rcx), %rcx
	testb	%al, %al
	cmoveq	%rdx, %rcx
	movslq	%ebx, %r10
	movl	%ebx, %r13d
	movq	200(%rsp), %rax         # 8-byte Reload
	subl	(%rcx), %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	leaq	1488(%rsp), %rdi
	leaq	1232(%rsp), %rsi
	leaq	976(%rsp), %rbp
	movl	%r12d, %r14d
	.align	16, 0x90
.LBB19_94:                              # %for.body.i.199
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%r11), %rcx
	movslq	(%r8), %rbx
	subq	%rbx, %rcx
	movl	%ecx, (%rbp)
	imulq	200(%rsp), %rcx         # 8-byte Folded Reload
	movq	%rcx, %rax
	cqto
	idivq	%r10
	leal	(%rbx,%rax), %edx
	movl	%edx, (%rdi)
	cltq
	imulq	%r10, %rax
	subq	%rax, %rcx
	jns	.LBB19_96
# BB#95:                                # %if.then.49.i
                                        #   in Loop: Header=BB19_94 Depth=1
	decl	%edx
	movl	%edx, (%rdi)
	addq	%r10, %rcx
.LBB19_96:                              # %if.end.56.i
                                        #   in Loop: Header=BB19_94 Depth=1
	movl	%ecx, (%rsi)
	addq	$4, %rdi
	addq	$4, %rsi
	addq	$4, %rbp
	addq	$4, %r8
	addq	$4, %r11
	decl	%r14d
	jne	.LBB19_94
# BB#97:
	movl	%r15d, %ebp
	movl	%r13d, %ebx
	jmp	.LBB19_98
.LBB19_92:
	movl	%r15d, %ebp
.LBB19_98:                              # %if.end.178
	movl	%ebp, 176(%rsp)         # 4-byte Spill
	movq	%r12, 168(%rsp)         # 8-byte Spill
	sarl	$8, 192(%rsp)           # 4-byte Folded Spill
	sarl	$8, 140(%rsp)           # 4-byte Folded Spill
	movq	184(%rsp), %rcx         # 8-byte Reload
	incl	%ecx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movl	196(%rsp), %edx         # 4-byte Reload
	incl	%edx
	movl	%edx, 196(%rsp)         # 4-byte Spill
	movabsq	$8589934584, %rdi       # imm = 0x1FFFFFFF8
	movslq	%ecx, %rax
	leaq	-256(%rax), %r13
	movl	180(%rsp), %esi         # 4-byte Reload
	cmpl	164(%rsp), %esi         # 4-byte Folded Reload
	cmovneq	%rax, %r13
	testb	%cl, %cl
	cmovneq	%rax, %r13
	shrq	$8, %r13
	movslq	%edx, %rax
	leaq	-256(%rax), %r14
	cmpl	152(%rsp), %ebp         # 4-byte Folded Reload
	cmovneq	%rax, %r14
	testb	%dl, %dl
	cmovneq	%rax, %r14
	shrq	$8, %r14
	testl	%r12d, %r12d
	setg	%al
	testl	%r9d, %r9d
	setne	%r11b
	sete	%cl
	leaq	1488(%rsp), %rdx
	leaq	2256(%rsp), %rsi
	cmoveq	%rdx, %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	andb	%al, %r11b
	movslq	%r9d, %rsi
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	testl	%ebx, %ebx
	movl	%ebx, %esi
	setne	%bl
	sete	%dl
	andb	%al, %bl
	movb	%bl, 96(%rsp)           # 1-byte Spill
	movslq	%esi, %r15
	orb	%cl, %dl
	movb	%dl, 92(%rsp)           # 1-byte Spill
	leal	-1(%r12), %eax
	incq	%rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	andq	%rax, %rdi
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	leaq	-8(%rdi), %rax
	shrq	$3, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorps	%xmm2, %xmm2
	jmp	.LBB19_99
	.align	16, 0x90
.LBB19_119:                             # %if.end.247
                                        #   in Loop: Header=BB19_99 Depth=1
	movl	%ebx, 192(%rsp)         # 4-byte Spill
	movq	184(%rsp), %rax         # 8-byte Reload
	addl	128(%rsp), %eax         # 4-byte Folded Reload
	movl	180(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	addl	120(%rsp), %edx         # 4-byte Folded Reload
	movl	$0, %ecx
	cmovnsl	136(%rsp), %ecx         # 4-byte Folded Reload
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, 180(%rsp)         # 4-byte Spill
	shrl	$31, %edx
	xorl	$1, %edx
	addl	%eax, %edx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movslq	%edx, %rax
	leaq	-256(%rax), %r12
	testb	%dl, %dl
	cmovneq	%rax, %r12
	cmpl	164(%rsp), %esi         # 4-byte Folded Reload
	cmovneq	%rax, %r12
	movl	196(%rsp), %eax         # 4-byte Reload
	addl	124(%rsp), %eax         # 4-byte Folded Reload
	movl	176(%rsp), %edx         # 4-byte Reload
	addl	116(%rsp), %edx         # 4-byte Folded Reload
	movl	$0, %ecx
	cmovnsl	132(%rsp), %ecx         # 4-byte Folded Reload
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, 176(%rsp)         # 4-byte Spill
	shrl	$31, %edx
	xorl	$1, %edx
	addl	%eax, %edx
	movl	%edx, 196(%rsp)         # 4-byte Spill
	movslq	%edx, %rax
	leaq	-256(%rax), %r14
	testb	%dl, %dl
	cmovneq	%rax, %r14
	cmpl	152(%rsp), %esi         # 4-byte Folded Reload
	cmovneq	%rax, %r14
	testb	%r11b, %r11b
	movq	168(%rsp), %r10         # 8-byte Reload
	movl	%r10d, %r9d
	leaq	2000(%rsp), %rdi
	leaq	1744(%rsp), %rbx
	leaq	2256(%rsp), %rsi
	movq	104(%rsp), %r13         # 8-byte Reload
	je	.LBB19_121
	.align	16, 0x90
.LBB19_120:                             # %for.body.i.119
                                        #   Parent Loop BB19_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi), %rdx
	movslq	(%rbx), %rax
	shlq	$8, %rax
	addq	%rdx, %rax
	cqto
	idivq	%r13
	addl	(%rsi), %eax
	movl	%edx, %ebp
	sarl	$31, %ebp
	addl	%ebp, %eax
	movl	%r13d, %ecx
	andl	%ebp, %ecx
	addl	%edx, %ecx
	movl	%eax, (%rsi)
	movl	%ecx, (%rdi)
	addq	$4, %rsi
	addq	$4, %rbx
	addq	$4, %rdi
	decl	%r9d
	jne	.LBB19_120
.LBB19_121:                             # %step_gradient.exit130
                                        #   in Loop: Header=BB19_99 Depth=1
	movq	%r12, %r13
	sarq	$8, %r13
	sarq	$8, %r14
	cmpb	$0, 96(%rsp)            # 1-byte Folded Reload
	movl	%r10d, %r9d
	leaq	1232(%rsp), %rdi
	leaq	976(%rsp), %rsi
	leaq	1488(%rsp), %rbx
	je	.LBB19_99
	.align	16, 0x90
.LBB19_122:                             # %for.body.i
                                        #   Parent Loop BB19_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi), %rdx
	movslq	(%rsi), %rax
	shlq	$8, %rax
	addq	%rdx, %rax
	cqto
	idivq	%r15
	addl	(%rbx), %eax
	movl	%edx, %ebp
	sarl	$31, %ebp
	addl	%ebp, %eax
	movl	%r15d, %ecx
	andl	%ebp, %ecx
	addl	%edx, %ecx
	movl	%eax, (%rbx)
	movl	%ecx, (%rdi)
	addq	$4, %rbx
	addq	$4, %rsi
	addq	$4, %rdi
	decl	%r9d
	jne	.LBB19_122
.LBB19_99:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_115 Depth 2
                                        #     Child Loop BB19_106 Depth 2
                                        #     Child Loop BB19_111 Depth 2
                                        #     Child Loop BB19_120 Depth 2
                                        #     Child Loop BB19_122 Depth 2
	movl	%r14d, %r8d
	subl	%r13d, %r8d
	movl	192(%rsp), %ebx         # 4-byte Reload
	je	.LBB19_118
# BB#100:                               # %if.then.222
                                        #   in Loop: Header=BB19_99 Depth=1
	cmpb	$0, 92(%rsp)            # 1-byte Folded Reload
	je	.LBB19_112
# BB#101:                               # %if.then.i.169
                                        #   in Loop: Header=BB19_99 Depth=1
	movl	$1, %r10d
	movq	168(%rsp), %rsi         # 8-byte Reload
	testl	%esi, %esi
	jle	.LBB19_113
# BB#102:                               # %overflow.checked
                                        #   in Loop: Header=BB19_99 Depth=1
	movl	%ebx, %r9d
	movq	64(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	movl	$0, %ebp
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	56(%rsp), %rbx          # 8-byte Reload
	je	.LBB19_108
# BB#103:                               # %vector.body.preheader
                                        #   in Loop: Header=BB19_99 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB19_105
# BB#104:                               # %vector.body.prol
                                        #   in Loop: Header=BB19_99 Depth=1
	movaps	(%rbx), %xmm0
	movaps	16(%rbx), %xmm1
	movaps	%xmm0, 720(%rsp)
	movaps	%xmm1, 736(%rsp)
	movaps	%xmm2, 464(%rsp)
	movaps	%xmm2, 480(%rsp)
	movaps	%xmm2, 208(%rsp)
	movaps	%xmm2, 224(%rsp)
	movl	$8, %eax
.LBB19_105:                             # %vector.body.preheader.split
                                        #   in Loop: Header=BB19_99 Depth=1
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movq	%rcx, %rbp
	je	.LBB19_108
	.align	16, 0x90
.LBB19_106:                             # %vector.body
                                        #   Parent Loop BB19_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	(%rbx,%rax,4), %xmm0
	movaps	16(%rbx,%rax,4), %xmm1
	movaps	%xmm0, 720(%rsp,%rax,4)
	movaps	%xmm1, 736(%rsp,%rax,4)
	movaps	%xmm2, 464(%rsp,%rax,4)
	movaps	%xmm2, 480(%rsp,%rax,4)
	movaps	%xmm2, 208(%rsp,%rax,4)
	movaps	%xmm2, 224(%rsp,%rax,4)
	movaps	32(%rbx,%rax,4), %xmm0
	movaps	48(%rbx,%rax,4), %xmm1
	movaps	%xmm0, 752(%rsp,%rax,4)
	movaps	%xmm1, 768(%rsp,%rax,4)
	movaps	%xmm2, 496(%rsp,%rax,4)
	movaps	%xmm2, 512(%rsp,%rax,4)
	movaps	%xmm2, 240(%rsp,%rax,4)
	movaps	%xmm2, 256(%rsp,%rax,4)
	addq	$16, %rax
	cmpq	%rax, %rcx
	jne	.LBB19_106
# BB#107:                               #   in Loop: Header=BB19_99 Depth=1
	movq	%rcx, %rbp
.LBB19_108:                             # %middle.block
                                        #   in Loop: Header=BB19_99 Depth=1
	cmpq	%rbp, 48(%rsp)          # 8-byte Folded Reload
	je	.LBB19_109
# BB#110:                               # %for.body.i.178.preheader
                                        #   in Loop: Header=BB19_99 Depth=1
	leaq	208(%rsp,%rbp,4), %rax
	leaq	464(%rsp,%rbp,4), %rcx
	leaq	720(%rsp,%rbp,4), %rdx
	subl	%ebp, %esi
	leaq	(%rbx,%rbp,4), %rbp
	.align	16, 0x90
.LBB19_111:                             # %for.body.i.178
                                        #   Parent Loop BB19_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %ebx
	movl	%ebx, (%rdx)
	movl	$0, (%rcx)
	movl	$0, (%rax)
	addq	$4, %rax
	addq	$4, %rcx
	addq	$4, %rdx
	addq	$4, %rbp
	decl	%esi
	jne	.LBB19_111
.LBB19_109:                             #   in Loop: Header=BB19_99 Depth=1
	movb	%r11b, %bpl
	movl	%r9d, %ebx
	jmp	.LBB19_117
	.align	16, 0x90
.LBB19_112:                             # %if.else.i.179
                                        #   in Loop: Header=BB19_99 Depth=1
	movl	180(%rsp), %eax         # 4-byte Reload
	cmpl	164(%rsp), %eax         # 4-byte Folded Reload
	sete	%cl
	movl	%r13d, %eax
	shll	$8, %eax
	orl	$128, %eax
	shll	$8, %r14d
	addl	$-128, %r14d
	movl	%r14d, %edx
	subl	%eax, %edx
	movl	%edx, %r10d
	sarl	$8, %r10d
	cmpl	$256, %edx              # imm = 0x100
	movl	$1, %edx
	cmovll	%edx, %r10d
	movq	168(%rsp), %rdi         # 8-byte Reload
	testl	%edi, %edi
	jle	.LBB19_113
# BB#114:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB19_99 Depth=1
	movl	%r10d, 72(%rsp)         # 4-byte Spill
	movl	%r8d, 76(%rsp)          # 4-byte Spill
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movb	%r11b, %bpl
	movzbl	%cl, %ecx
	movq	184(%rsp), %rdx         # 8-byte Reload
	subl	%ecx, %edx
	leal	-128(%rdx), %esi
	movl	176(%rsp), %ecx         # 4-byte Reload
	cmpl	152(%rsp), %ecx         # 4-byte Folded Reload
	movl	$0, %ecx
	movl	$-1, %ebx
	cmovel	%ebx, %ecx
	subl	%esi, %eax
	cltq
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movl	196(%rsp), %eax         # 4-byte Reload
	subl	%edx, %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	subl	%esi, %r14d
	movslq	%r14d, %rbx
	movl	%edi, %r9d
	leaq	720(%rsp), %r13
	leaq	464(%rsp), %r14
	leaq	208(%rsp), %r12
	leaq	2256(%rsp), %r10
	leaq	1488(%rsp), %r8
	.align	16, 0x90
.LBB19_115:                             # %for.body.i.i
                                        #   Parent Loop BB19_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%r10), %r11
	movslq	(%r8), %rsi
	subq	%r11, %rsi
	movq	%rsi, %rax
	imulq	200(%rsp), %rax         # 8-byte Folded Reload
	cqto
	idivq	%rcx
	movq	%rax, %rdi
	imulq	%rbx, %rsi
	addl	%r11d, %edi
	movq	%rsi, %rax
	cqto
	idivq	%rcx
	movl	%edi, (%r13)
	movl	$0, (%r14)
	addl	%r11d, %eax
	subl	%edi, %eax
	addq	$4, %r8
	addq	$4, %r10
	movl	%eax, (%r12)
	addq	$4, %r12
	addq	$4, %r14
	addq	$4, %r13
	decl	%r9d
	jne	.LBB19_115
# BB#116:                               #   in Loop: Header=BB19_99 Depth=1
	movl	192(%rsp), %ebx         # 4-byte Reload
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	80(%rsp), %r13          # 8-byte Reload
	movl	76(%rsp), %r8d          # 4-byte Reload
	movl	72(%rsp), %r10d         # 4-byte Reload
	jmp	.LBB19_117
.LBB19_113:                             #   in Loop: Header=BB19_99 Depth=1
	movb	%r11b, %bpl
	movq	144(%rsp), %rdi         # 8-byte Reload
.LBB19_117:                             # %cond.end.237
                                        #   in Loop: Header=BB19_99 Depth=1
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	movl	%r10d, 16(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	464(%rsp), %rax
	movq	%rax, (%rsp)
	movq	2584(%rsp), %rsi
	movl	%r13d, %edx
	movl	%ebx, %ecx
	leaq	720(%rsp), %r9
	movq	%rdi, %rax
	callq	*1592(%rax)
	testl	%eax, %eax
	movb	%bpl, %r11b
	xorps	%xmm2, %xmm2
	js	.LBB19_123
.LBB19_118:                             # %if.end.243
                                        #   in Loop: Header=BB19_99 Depth=1
	incl	%ebx
	xorl	%eax, %eax
	cmpl	140(%rsp), %ebx         # 4-byte Folded Reload
	jne	.LBB19_119
.LBB19_123:                             # %cleanup.352
	addq	$2520, %rsp             # imm = 0x9D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gx_fill_trapezoid_ns_lc, .Lfunc_end19-gx_fill_trapezoid_ns_lc
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_image_enum_common_t"
	.size	.L.str, 23

	.type	st_gx_image_enum_common,@object # @st_gx_image_enum_common
	.section	.rodata,"a",@progbits
	.globl	st_gx_image_enum_common
	.align	8
st_gx_image_enum_common:
	.long	568                     # 0x238
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	image_enum_common_enum_ptrs
	.quad	image_enum_common_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gx_image_enum_common, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
