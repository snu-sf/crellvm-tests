	.text
	.file	"gxiscale.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.text
	.globl	gs_image_class_0_interpolate
	.align	16, 0x90
	.type	gs_image_class_0_interpolate,@function
gs_image_class_0_interpolate:           # @gs_image_class_0_interpolate
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
	subq	$200, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 256
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
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpb	$0, 1119(%rbx)
	je	.LBB0_153
# BB#1:                                 # %if.end
	cmpb	$0, 1116(%rbx)
	jne	.LBB0_5
# BB#2:                                 # %lor.lhs.false
	cmpl	$1, 1264(%rbx)
	ja	.LBB0_5
# BB#3:                                 # %lor.lhs.false.7
	cmpb	$0, 1118(%rbx)
	jne	.LBB0_5
# BB#4:                                 # %lor.lhs.false.10
	cmpl	$0, 580(%rbx)
	jne	.LBB0_5
# BB#6:                                 # %if.end.14
	cmpl	$0, 568(%rbx)
	je	.LBB0_5
# BB#7:                                 # %lor.lhs.false.17
	cmpl	$0, 572(%rbx)
	je	.LBB0_5
# BB#8:                                 # %if.end.22
	movq	24(%rbx), %r12
	movq	1224(%rbx), %rbp
	cmpq	$0, 64(%rbp)
	setne	%al
	movzbl	%al, %r13d
	movq	(%rbp), %rax
	cmpl	$10, (%rax)
	jne	.LBB0_11
# BB#9:                                 # %if.then.29
	movq	40(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB0_11
# BB#10:                                # %select.mid
	movl	$1, %r13d
.LBB0_11:                               # %if.end.35
	movb	576(%rbx), %r14b
	movq	16(%rbx), %rdi
	leaq	192(%rsp), %rsi
	callq	*1680(%rdi)
	testl	%eax, %eax
	jne	.LBB0_5
# BB#12:                                # %if.end.50
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movzbl	%r14b, %eax
	cmpl	$9, %eax
	sbbb	%cl, %cl
	cmpl	$16, %eax
	sete	%r14b
	orb	%cl, %r14b
	movq	192(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movq	16(%rbx), %rdi
	cmpl	100(%rdi), %eax
	sete	%r15b
	andb	%r14b, %r15b
	movq	1216(%rbx), %rsi
	callq	gx_device_uses_std_cmap_procs
	testl	%r13d, %r13d
	setne	%cl
	andb	%r15b, %cl
	testl	%eax, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, 91(%rsp)           # 1-byte Spill
	movl	$65535, %eax            # imm = 0xFFFF
	movl	$32760, %ecx            # imm = 0x7FF8
	cmovnel	%eax, %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	1168(%rbx), %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	1172(%rbx), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movslq	1160(%rbx), %r15
	movslq	1144(%rbx), %rsi
	movq	%r15, %rcx
	subq	%rsi, %rcx
	movslq	1164(%rbx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	1148(%rbx), %r9d
	movl	1152(%rbx), %edx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movslq	%r9d, %r13
	movl	1264(%rbx), %r11d
	movl	1180(%rbx), %eax
	movl	%eax, %edi
	negl	%edi
	cmovll	%eax, %edi
	movl	1176(%rbx), %eax
	movl	%eax, %ebp
	negl	%ebp
	cmovll	%eax, %ebp
	leal	(%rdx,%rsi), %eax
	cltq
	testl	%r11d, %r11d
	je	.LBB0_13
# BB#49:                                # %if.else.620
	movslq	%ebp, %r8
	imulq	%r8, %rax
	movl	568(%rbx), %ebp
	movslq	%ebp, %r14
	cqto
	idivq	%r14
	movq	%rax, %r10
	movzbl	%r10b, %eax
	testl	%r10d, %r10d
	jns	.LBB0_52
# BB#50:                                # %if.else.620
	cmpq	$128, %rax
	jne	.LBB0_52
# BB#51:                                # %cond.true.674
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movl	%r11d, 104(%rsp)        # 4-byte Spill
	sarl	$8, %r10d
	incl	%r10d
	jmp	.LBB0_53
.LBB0_13:                               # %if.then.77
	movslq	%edi, %r8
	imulq	%r8, %rax
	movl	568(%rbx), %edi
	movslq	%edi, %r14
	cqto
	idivq	%r14
	movq	%rax, %r10
	movzbl	%r10b, %eax
	testl	%r10d, %r10d
	jns	.LBB0_16
# BB#14:                                # %if.then.77
	cmpq	$128, %rax
	jne	.LBB0_16
# BB#15:                                # %cond.true.119
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movl	%r11d, 104(%rsp)        # 4-byte Spill
	sarl	$8, %r10d
	incl	%r10d
	jmp	.LBB0_17
.LBB0_52:                               # %cond.false.689
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movl	%r11d, 104(%rsp)        # 4-byte Spill
	movslq	%r10d, %r10
	addq	$127, %r10
	shrq	$8, %r10
.LBB0_53:                               # %cond.end.706
	imulq	%r8, %rsi
	movq	%rsi, %rax
	cqto
	idivq	%r14
	movq	%rax, %r11
	movzbl	%r11b, %eax
	testl	%r11d, %r11d
	jns	.LBB0_56
# BB#54:                                # %cond.end.706
	cmpq	$128, %rax
	jne	.LBB0_56
# BB#55:                                # %cond.true.733
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	movq	%r12, 72(%rsp)          # 8-byte Spill
	sarl	$8, %r11d
	incl	%r11d
	jmp	.LBB0_57
.LBB0_56:                               # %cond.false.745
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	movq	%r12, 72(%rsp)          # 8-byte Spill
	movslq	%r11d, %r11
	addq	$127, %r11
	shrq	$8, %r11
.LBB0_57:                               # %cond.end.759
	movl	1156(%rbx), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leal	(%rax,%r9), %eax
	movq	%r9, 48(%rsp)           # 8-byte Spill
	cltq
	movslq	%edi, %r12
	imulq	%r12, %rax
	movl	572(%rbx), %edx
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movslq	%edx, %rcx
	cqto
	idivq	%rcx
	movq	%rax, %r9
	movzbl	%r9b, %eax
	testl	%r9d, %r9d
	jns	.LBB0_60
# BB#58:                                # %cond.end.759
	cmpq	$128, %rax
	jne	.LBB0_60
# BB#59:                                # %cond.true.794
	sarl	$8, %r9d
	incl	%r9d
	jmp	.LBB0_61
.LBB0_60:                               # %cond.false.809
	movslq	%r9d, %r9
	addq	$127, %r9
	shrq	$8, %r9
.LBB0_61:                               # %cond.end.826
	imulq	%r12, %r13
	movq	%r13, %rax
	cqto
	idivq	%rcx
	movq	%rax, %rsi
	movzbl	%sil, %eax
	testl	%esi, %esi
	jns	.LBB0_64
# BB#62:                                # %cond.end.826
	cmpq	$128, %rax
	jne	.LBB0_64
# BB#63:                                # %cond.true.853
	sarl	$8, %esi
	incl	%esi
	jmp	.LBB0_65
.LBB0_64:                               # %cond.false.865
	movslq	%esi, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
.LBB0_65:                               # %cond.end.879
	movq	128(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r15), %eax
	cltq
	imulq	%r8, %rax
	cqto
	idivq	%r14
	movq	%rax, %rdi
	movzbl	%dil, %eax
	testl	%edi, %edi
	jns	.LBB0_68
# BB#66:                                # %cond.end.879
	cmpq	$128, %rax
	jne	.LBB0_68
# BB#67:                                # %cond.true.924
	sarl	$8, %edi
	incl	%edi
	jmp	.LBB0_69
.LBB0_68:                               # %cond.false.939
	movslq	%edi, %rdi
	addq	$127, %rdi
	shrq	$8, %rdi
.LBB0_69:                               # %cond.end.956
	imulq	%r8, %r15
	movq	%r15, %rax
	cqto
	idivq	%r14
	movq	%rax, %rbp
	movzbl	%bpl, %eax
	testl	%ebp, %ebp
	jns	.LBB0_72
# BB#70:                                # %cond.end.956
	cmpq	$128, %rax
	jne	.LBB0_72
# BB#71:                                # %cond.true.983
	sarl	$8, %ebp
	incl	%ebp
	jmp	.LBB0_73
.LBB0_72:                               # %cond.false.995
	movslq	%ebp, %rbp
	addq	$127, %rbp
	shrq	$8, %rbp
.LBB0_73:                               # %cond.end.1009
	movq	112(%rsp), %r15         # 8-byte Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r15), %eax
	cltq
	imulq	%r12, %rax
	movq	%r12, %r13
	cqto
	idivq	%rcx
	movq	%rcx, %r12
	movq	%rax, %rcx
	movzbl	%cl, %eax
	testl	%ecx, %ecx
	jns	.LBB0_76
# BB#74:                                # %cond.end.1009
	cmpq	$128, %rax
	jne	.LBB0_76
# BB#75:                                # %cond.true.1044
	movq	%r14, 56(%rsp)          # 8-byte Spill
	sarl	$8, %ecx
	incl	%ecx
	jmp	.LBB0_77
.LBB0_76:                               # %cond.false.1059
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movslq	%ecx, %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
.LBB0_77:                               # %cond.end.1076
	leaq	127(%r8), %r14
	movq	%r15, %rax
	imulq	%r13, %rax
	addq	$127, %r13
	movq	%r13, 160(%rsp)         # 8-byte Spill
	cqto
	idivq	%r12
	movzbl	%al, %edx
	testl	%eax, %eax
	jns	.LBB0_80
# BB#78:                                # %cond.end.1076
	cmpq	$128, %rdx
	jne	.LBB0_80
# BB#79:                                # %cond.true.1103
	sarl	$8, %eax
	incl	%eax
	jmp	.LBB0_81
.LBB0_80:                               # %cond.false.1115
	cltq
	addq	$127, %rax
	shrq	$8, %rax
.LBB0_81:                               # %cond.end.1129
	subl	%r11d, %r10d
	subl	%esi, %r9d
	movq	%r14, %r11
	shrq	$8, %r11
	shrq	$8, 160(%rsp)           # 8-byte Folded Spill
	subl	%ebp, %edi
	subl	%eax, %ecx
	movq	152(%rsp), %rsi         # 8-byte Reload
	imulq	%rsi, %r8
	movq	%r8, %rax
	cqto
	idivq	56(%rsp)                # 8-byte Folded Reload
	jmp	.LBB0_46
.LBB0_16:                               # %cond.false.133
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movl	%r11d, 104(%rsp)        # 4-byte Spill
	movslq	%r10d, %r10
	addq	$127, %r10
	shrq	$8, %r10
.LBB0_17:                               # %cond.end.150
	imulq	%r8, %rsi
	movq	%rsi, %rax
	cqto
	idivq	%r14
	movq	%rax, %r11
	movzbl	%r11b, %eax
	testl	%r11d, %r11d
	jns	.LBB0_20
# BB#18:                                # %cond.end.150
	cmpq	$128, %rax
	jne	.LBB0_20
# BB#19:                                # %cond.true.177
	movl	%edi, 44(%rsp)          # 4-byte Spill
	movq	%r12, 72(%rsp)          # 8-byte Spill
	sarl	$8, %r11d
	incl	%r11d
	jmp	.LBB0_21
.LBB0_20:                               # %cond.false.189
	movl	%edi, 44(%rsp)          # 4-byte Spill
	movq	%r12, 72(%rsp)          # 8-byte Spill
	movslq	%r11d, %r11
	addq	$127, %r11
	shrq	$8, %r11
.LBB0_21:                               # %cond.end.203
	movl	1156(%rbx), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leal	(%rax,%r9), %eax
	movq	%r9, 48(%rsp)           # 8-byte Spill
	cltq
	movslq	%ebp, %r12
	imulq	%r12, %rax
	movl	572(%rbx), %edx
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movslq	%edx, %rcx
	cqto
	idivq	%rcx
	movq	%rax, %r9
	movzbl	%r9b, %eax
	testl	%r9d, %r9d
	jns	.LBB0_24
# BB#22:                                # %cond.end.203
	cmpq	$128, %rax
	jne	.LBB0_24
# BB#23:                                # %cond.true.237
	sarl	$8, %r9d
	incl	%r9d
	jmp	.LBB0_25
.LBB0_24:                               # %cond.false.252
	movslq	%r9d, %r9
	addq	$127, %r9
	shrq	$8, %r9
.LBB0_25:                               # %cond.end.269
	imulq	%r12, %r13
	movq	%r13, %rax
	cqto
	idivq	%rcx
	movq	%rax, %rbp
	movzbl	%bpl, %eax
	testl	%ebp, %ebp
	jns	.LBB0_28
# BB#26:                                # %cond.end.269
	cmpq	$128, %rax
	jne	.LBB0_28
# BB#27:                                # %cond.true.296
	sarl	$8, %ebp
	incl	%ebp
	jmp	.LBB0_29
.LBB0_28:                               # %cond.false.308
	movslq	%ebp, %rbp
	addq	$127, %rbp
	shrq	$8, %rbp
.LBB0_29:                               # %cond.end.322
	movq	128(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r15), %eax
	cltq
	imulq	%r8, %rax
	cqto
	idivq	%r14
	movq	%rax, %rdi
	movzbl	%dil, %eax
	testl	%edi, %edi
	jns	.LBB0_32
# BB#30:                                # %cond.end.322
	cmpq	$128, %rax
	jne	.LBB0_32
# BB#31:                                # %cond.true.364
	sarl	$8, %edi
	incl	%edi
	jmp	.LBB0_33
.LBB0_32:                               # %cond.false.379
	movslq	%edi, %rdi
	addq	$127, %rdi
	shrq	$8, %rdi
.LBB0_33:                               # %cond.end.396
	imulq	%r8, %r15
	movq	%r15, %rax
	cqto
	idivq	%r14
	movq	%rax, %rsi
	movzbl	%sil, %eax
	testl	%esi, %esi
	jns	.LBB0_36
# BB#34:                                # %cond.end.396
	cmpq	$128, %rax
	jne	.LBB0_36
# BB#35:                                # %cond.true.423
	movq	%r8, 56(%rsp)           # 8-byte Spill
	sarl	$8, %esi
	incl	%esi
	jmp	.LBB0_37
.LBB0_36:                               # %cond.false.435
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movslq	%esi, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
.LBB0_37:                               # %cond.end.449
	movq	112(%rsp), %r15         # 8-byte Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r15), %eax
	cltq
	imulq	%r12, %rax
	movq	%r12, %r13
	cqto
	idivq	%rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movzbl	%cl, %eax
	testl	%ecx, %ecx
	jns	.LBB0_40
# BB#38:                                # %cond.end.449
	cmpq	$128, %rax
	jne	.LBB0_40
# BB#39:                                # %cond.true.483
	movq	%r14, 32(%rsp)          # 8-byte Spill
	sarl	$8, %ecx
	incl	%ecx
	jmp	.LBB0_41
.LBB0_40:                               # %cond.false.498
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movslq	%ecx, %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
.LBB0_41:                               # %cond.end.515
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	127(%rax), %r14
	movq	%r15, %rax
	imulq	%r13, %rax
	addq	$127, %r13
	movq	%r13, 160(%rsp)         # 8-byte Spill
	cqto
	idivq	%r8
	movzbl	%al, %edx
	testl	%eax, %eax
	jns	.LBB0_44
# BB#42:                                # %cond.end.515
	cmpq	$128, %rdx
	jne	.LBB0_44
# BB#43:                                # %cond.true.542
	sarl	$8, %eax
	incl	%eax
	jmp	.LBB0_45
.LBB0_44:                               # %cond.false.554
	cltq
	addq	$127, %rax
	shrq	$8, %rax
.LBB0_45:                               # %cond.end.568
	subl	%r11d, %r10d
	subl	%ebp, %r9d
	movq	%r14, %r11
	sarq	$8, %r11
	sarq	$8, 160(%rsp)           # 8-byte Folded Spill
	subl	%esi, %edi
	subl	%eax, %ecx
	movq	152(%rsp), %rsi         # 8-byte Reload
	movslq	%esi, %rdx
	movq	56(%rsp), %rax          # 8-byte Reload
	imulq	%rdx, %rax
	cqto
	idivq	32(%rsp)                # 8-byte Folded Reload
.LBB0_46:                               # %cond.end.568
	movq	%rax, %r14
	movzbl	%r14b, %eax
	testl	%r14d, %r14d
	jns	.LBB0_82
# BB#47:                                # %cond.end.568
	cmpq	$128, %rax
	jne	.LBB0_82
# BB#48:                                # %cond.true.594
	sarl	$8, %r14d
	incl	%r14d
	jmp	.LBB0_83
.LBB0_82:                               # %cond.false.1167
	movslq	%r14d, %r14
	addq	$127, %r14
	shrq	$8, %r14
.LBB0_83:                               # %if.end.1183
	movq	144(%rsp), %r8          # 8-byte Reload
	movl	104(%rsp), %r13d        # 4-byte Reload
	leaq	1180(%rbx), %rax
	leaq	1176(%rbx), %rdx
	movl	%edi, %r15d
	negl	%r15d
	cmovll	%edi, %r15d
	movl	%ecx, %edi
	negl	%edi
	cmovll	%ecx, %edi
	leal	(%r14,%r15), %ecx
	cmpl	%r10d, %ecx
	jge	.LBB0_85
# BB#84:
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	jmp	.LBB0_86
.LBB0_85:                               # %if.then.1212
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	xorl	%r14d, %r14d
	movl	%r10d, %ecx
	subl	%r15d, %ecx
	cmovnsl	%ecx, %r14d
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	%ecx, %esi
	addl	%r10d, %esi
	movl	%esi, %r10d
.LBB0_86:                               # %if.end.1226
	movq	160(%rsp), %rcx         # 8-byte Reload
	movl	%r10d, %r12d
	negl	%r12d
	cmovll	%r10d, %r12d
	movl	%r9d, %ebp
	negl	%ebp
	cmovll	%r9d, %ebp
	testl	%r13d, %r13d
	cmoveq	%rax, %rdx
	cmpl	$0, (%rdx)
	jns	.LBB0_88
# BB#87:
	addl	%r15d, %r14d
	movl	%r12d, %eax
	subl	%r14d, %eax
	movl	%eax, %r14d
.LBB0_88:                               # %select.mid684
	movq	%r8, %r13
	testl	%r11d, %r11d
	je	.LBB0_5
# BB#89:                                # %select.end683
	testl	%ecx, %ecx
	je	.LBB0_5
# BB#90:                                # %if.end.1285
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movq	%r11, 24(%rsp)          # 8-byte Spill
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	cmpl	$10, (%rax)
	jne	.LBB0_92
# BB#91:                                # %if.then.1290
	movq	40(%rdi), %rdi
	movq	(%rdi), %rax
.LBB0_92:                               # %if.else.1296
	callq	*24(%rax)
	movl	%eax, %edx
	cmpl	92(%rsp), %ebp          # 4-byte Folded Reload
	setg	%cl
	andb	91(%rsp), %cl           # 1-byte Folded Reload
	cmovnel	84(%rsp), %eax          # 4-byte Folded Reload
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movzbl	576(%rbx), %eax
	cmpl	$8, %eax
	ja	.LBB0_103
# BB#93:                                # %if.then.1318
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpl	$10, (%rax)
	jne	.LBB0_95
# BB#94:                                # %if.then.1323
	movb	%cl, 19(%rsp)           # 1-byte Spill
	movl	%edx, %eax
	movl	%edx, 12(%rsp)          # 4-byte Spill
	imull	%r13d, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$255, 4(%rsp)           # 4-byte Folded Spill
	movl	$8, 8(%rsp)             # 4-byte Folded Spill
	jmp	.LBB0_104
.LBB0_103:                              # %if.else.1356
	movb	%cl, 19(%rsp)           # 1-byte Spill
	movl	%r13d, %eax
	imull	%edx, %eax
	movl	%edx, 12(%rsp)          # 4-byte Spill
	leal	7(%rax,%rax), %eax
	andl	$-8, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$16, 8(%rsp)            # 4-byte Folded Spill
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	%eax, 4(%rsp)           # 4-byte Spill
	jmp	.LBB0_104
.LBB0_95:                               # %if.else.1327
	cmpl	$0, 1264(%rbx)
	je	.LBB0_96
# BB#97:                                # %select.mid698
	movb	%cl, 19(%rsp)           # 1-byte Spill
	leaq	1124(%rbx), %rax
	jmp	.LBB0_98
.LBB0_96:
	movb	%cl, 19(%rsp)           # 1-byte Spill
	leaq	1120(%rbx), %rax
.LBB0_98:                               # %select.end697
	movl	%edx, %r13d
	movq	144(%rsp), %rcx         # 8-byte Reload
	imull	%ecx, %r13d
	xorps	%xmm0, %xmm0
	ucomiss	(%rax), %xmm0
	movl	%r13d, %eax
	ja	.LBB0_100
# BB#99:                                # %select.mid796
	xorl	%eax, %eax
.LBB0_100:                              # %select.end795
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movl	$255, 4(%rsp)           # 4-byte Folded Spill
	movl	$8, 8(%rsp)             # 4-byte Folded Spill
	cmpb	$0, 1271(%rbx)
	je	.LBB0_102
# BB#101:
	movq	144(%rsp), %r13         # 8-byte Reload
	jmp	.LBB0_104
.LBB0_102:                              # %land.lhs.true.1347
	movq	136(%rsp), %rdi         # 8-byte Reload
	callq	gs_color_space_is_CIE
	testl	%eax, %eax
	movq	56(%rsp), %rax          # 8-byte Reload
	cmovel	%r13d, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	144(%rsp), %r13         # 8-byte Reload
.LBB0_104:                              # %if.end.1373
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	callq	*128(%rax)
	movl	%eax, 32(%rsp)          # 4-byte Spill
	cmpl	%r13d, %r12d
	jge	.LBB0_108
# BB#105:                               # %land.lhs.true.1380
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ebp
	jge	.LBB0_108
# BB#106:                               # %land.lhs.true.1380
	cmpl	$-1, 32(%rsp)           # 4-byte Folded Reload
	je	.LBB0_108
# BB#107:                               # %land.lhs.true.1388
	movq	16(%rbx), %rdi
	movl	$14, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*1664(%rdi)
	movl	$s_ISpecialDownScale_template, %ecx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	jg	.LBB0_111
.LBB0_108:                              # %if.else.1396
	movq	16(%rbx), %rdi
	movl	$13, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*1664(%rdi)
	movl	%eax, %ecx
	movq	96(%rsp), %rdx          # 8-byte Reload
	imull	%edx, %ecx
	movl	$s_IScale_template, %edx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	cmpl	%ecx, %ebp
	jge	.LBB0_111
# BB#109:                               # %if.else.1396
	testl	%eax, %eax
	jle	.LBB0_111
# BB#110:                               # %if.else.1396
	imull	%r13d, %eax
	cmpl	%eax, %r12d
	jl	.LBB0_5
.LBB0_111:                              # %if.end.1419
	movl	%ebp, (%rsp)            # 4-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rax), %eax
	cmpl	$8, %eax
	movl	$8, %ecx
	cmoval	%eax, %ecx
	imull	%r12d, %ecx
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	8(%rcx,%rax), %esi
	movl	$.L.str, %edx
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, %r13
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movl	$.L.str.1, %edx
	movq	%rbp, %rdi
	callq	s_alloc_state
	movq	%rax, %rbp
	testq	%r13, %r13
	je	.LBB0_114
# BB#112:                               # %if.end.1419
	testq	%rbp, %rbp
	je	.LBB0_114
# BB#113:                               # %lor.lhs.false.1452
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %ecx
	cmpl	$1, 32(%rsp)            # 4-byte Folded Reload
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 108(%rbp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, 112(%rbp)
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, 116(%rbp)
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	%eax, 120(%rbp)
	movl	%r15d, 124(%rbp)
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 128(%rbp)
	movl	8(%rsp), %eax           # 4-byte Reload
	movl	%eax, 132(%rbp)
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 136(%rbp)
	movl	$16, 140(%rbp)
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	%eax, 144(%rbp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, 148(%rbp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	%eax, 152(%rbp)
	movl	%r12d, 156(%rbp)
	movl	(%rsp), %eax            # 4-byte Reload
	movl	%eax, 160(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 164(%rbp)
	movl	%edx, 168(%rbp)
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 172(%rbp)
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, 176(%rbp)
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, 180(%rbp)
	movq	160(%rsp), %rax         # 8-byte Reload
	movl	%eax, 184(%rbp)
	movzbl	19(%rsp), %eax          # 1-byte Folded Reload
	movl	%eax, 188(%rbp)
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, 192(%rbp)
	movl	%r14d, 196(%rbp)
	movl	%ecx, 200(%rbp)
	movl	$1, 204(%rbp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rbp)
	movq	%rbp, %rdi
	callq	*8(%rax)
	testl	%eax, %eax
	js	.LBB0_114
# BB#115:                               # %if.end.1463
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1248(%rbx)
	movq	%rbp, 1336(%rbx)
	movl	$0, 1492(%rbx)
	movl	1264(%rbx), %r9d
	testl	%r9d, %r9d
	je	.LBB0_116
# BB#125:                               # %if.else.1568
	movl	1160(%rbx), %eax
	xorps	%xmm0, %xmm0
	ucomiss	1124(%rbx), %xmm0
	jbe	.LBB0_127
# BB#126:                               # %if.then.1576
	addl	1168(%rbx), %eax
.LBB0_127:                              # %if.end.1580
	movslq	1452(%rbx), %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	movl	%ecx, 1500(%rbx)
	movl	1508(%rbx), %esi
	movslq	%eax, %rcx
	movslq	1176(%rbx), %rax
	imulq	%rcx, %rax
	movslq	568(%rbx), %rcx
	jmp	.LBB0_122
.LBB0_114:                              # %if.then.1458
	movl	$.L.str.1, %edx
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*24(%r14)
	movl	$.L.str, %edx
	movq	%r14, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*24(%r14)
.LBB0_5:                                # %if.then.12
	movb	$0, 1119(%rbx)
	xorl	%eax, %eax
.LBB0_153:                              # %cleanup.1753
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_116:                              # %if.then.1468
	movl	1452(%rbx), %eax
	xorps	%xmm0, %xmm0
	ucomiss	1120(%rbx), %xmm0
	jbe	.LBB0_121
# BB#117:                               # %do.body
	movl	1464(%rbx), %edx
	movl	1468(%rbx), %r8d
	movl	1152(%rbx), %edi
	movl	1456(%rbx), %esi
	movl	1460(%rbx), %ecx
	imull	%edi, %ecx
	addl	%ecx, %eax
	jmp	.LBB0_118
.LBB0_120:                              # %if.then.1489
                                        #   in Loop: Header=BB0_118 Depth=1
	incl	%eax
	addl	%r8d, %esi
.LBB0_118:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	testl	%edi, %edi
	je	.LBB0_121
# BB#119:                               # %while.body
                                        #   in Loop: Header=BB0_118 Depth=1
	decl	%edi
	subl	%edx, %esi
	jns	.LBB0_118
	jmp	.LBB0_120
.LBB0_121:                              # %if.end.1497
	cltq
	addq	$127, %rax
	shrq	$8, %rax
	addl	196(%rbp), %eax
	movl	%eax, 1500(%rbx)
	movl	1508(%rbx), %esi
	movslq	1148(%rbx), %rcx
	movslq	1176(%rbx), %rax
	imulq	%rcx, %rax
	movslq	572(%rbx), %rcx
.LBB0_122:                              # %if.end.1497
	cqto
	idivq	%rcx
	movzbl	%al, %edx
	testl	%eax, %eax
	jns	.LBB0_128
# BB#123:                               # %if.end.1497
	cmpq	$128, %rdx
	jne	.LBB0_128
# BB#124:                               # %cond.true.1535
	sarl	$8, %eax
	incl	%eax
	jmp	.LBB0_129
.LBB0_128:                              # %cond.false.1627
	cltq
	addq	$127, %rax
	shrq	$8, %rax
.LBB0_129:                              # %cond.end.1640
	addl	%esi, %eax
	movl	%eax, 1504(%rbx)
	testb	$1, 91(%rsp)            # 1-byte Folded Reload
	je	.LBB0_152
# BB#130:                               # %if.then.1650
	movq	1224(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	movl	$0, 24792(%rbx)
	testl	%eax, %eax
	jle	.LBB0_135
# BB#131:                               # %for.body.lr.ph
	cltq
	leaq	1852(%rbx), %rcx
	xorl	%edx, %edx
.LBB0_133:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rcx)
	jne	.LBB0_134
# BB#132:                               # %for.cond
                                        #   in Loop: Header=BB0_133 Depth=1
	incq	%rdx
	addq	$332, %rcx              # imm = 0x14C
	cmpq	%rax, %rdx
	jl	.LBB0_133
	jmp	.LBB0_135
.LBB0_152:                              # %if.else.1748
	testl	%r9d, %r9d
	movl	$image_render_interpolate, %ecx
	movl	$image_render_interpolate_landscape, %eax
	cmoveq	%rcx, %rax
	jmp	.LBB0_153
.LBB0_134:                              # %if.then.1661
	movl	$1, 24792(%rbx)
.LBB0_135:                              # %for.end
	movq	1216(%rbx), %rax
	movl	328(%rax), %ecx
	movl	%ecx, 172(%rsp)
	movl	324(%rax), %eax
	movl	%eax, 168(%rsp)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [8,2,0,0]
	movups	%xmm0, 176(%rsp)
	movq	1224(%rbx), %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	movq	1224(%rbx), %rax
	je	.LBB0_137
# BB#136:                               # %land.lhs.true.1671
	movq	48(%rax), %rbp
	testq	%rbp, %rbp
	jne	.LBB0_140
.LBB0_137:                              # %if.else.1678
	movq	(%rax), %rcx
	cmpl	$10, (%rcx)
	jne	.LBB0_138
# BB#139:                               # %if.then.1684
	movq	40(%rax), %rbp
	jmp	.LBB0_140
.LBB0_138:
	movq	%rax, %rbp
.LBB0_140:                              # %if.end.1690
	movq	64(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, 24796(%rbx)
	testl	%eax, %eax
	je	.LBB0_142
# BB#141:                               # %if.then.1696
	movl	$0, 24792(%rbx)
.LBB0_142:                              # %if.end.1699
	movq	16(%rbx), %rax
	cmpl	$1, 100(%rax)
	jg	.LBB0_144
# BB#143:                               # %lor.lhs.false.1705
	movzbl	110(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB0_144
# BB#145:                               # %cond.false.1714
	addq	$112, %rax
	jmp	.LBB0_146
.LBB0_144:                              # %cond.true.1711
	addq	$116, %rax
.LBB0_146:                              # %cond.end.1717
	cmpl	$31, (%rax)
	sbbl	%eax, %eax
	andl	$1, %eax
	movl	%eax, 24800(%rbx)
	movq	1216(%rbx), %rdi
	movl	84(%rsp), %esi          # 4-byte Reload
	callq	gx_has_transfer
	movl	%eax, 24804(%rbx)
	cmpq	$0, 24448(%rbx)
	jne	.LBB0_148
# BB#147:                               # %if.then.1727
	movq	1216(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	24(%rbx), %r9
	leaq	168(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	callq	gsicc_get_link
	movq	%rax, 24448(%rbx)
.LBB0_148:                              # %if.end.1733
	movzbl	576(%rbx), %eax
	cmpl	$16, %eax
	jne	.LBB0_150
# BB#149:                               # %if.then.1738
	movq	sample_unpackicc_16_proc(%rip), %rax
	movq	%rax, 1200(%rbx)
.LBB0_150:                              # %if.end.1739
	movl	$image_render_interpolate_icc, %eax
	cmpl	$0, 1264(%rbx)
	je	.LBB0_153
# BB#151:                               # %select.mid787
	movl	$image_render_interpolate_landscape_icc, %eax
	jmp	.LBB0_153
.Lfunc_end0:
	.size	gs_image_class_0_interpolate, .Lfunc_end0-gs_image_class_0_interpolate
	.cfi_endproc

	.align	16, 0x90
	.type	image_render_interpolate_icc,@function
image_render_interpolate_icc:           # @image_render_interpolate_icc
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
	subq	$1080, %rsp             # imm = 0x438
.Ltmp19:
	.cfi_def_cfa_offset 1136
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
	movq	%r9, %r12
	movl	%r8d, %r13d
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	cmpq	$0, 24448(%rbx)
	je	.LBB1_1
# BB#2:                                 # %if.end
	movq	1336(%rbx), %rbp
	movq	1216(%rbx), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	1224(%rbx), %rdi
	movl	1304(%rbx), %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movq	1248(%rbx), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movl	24800(%rbx), %eax
	movl	%eax, 228(%rsp)         # 4-byte Spill
	movl	24804(%rbx), %eax
	movl	%eax, 224(%rsp)         # 4-byte Spill
	cmpb	$0, 1271(%rbx)
	jne	.LBB1_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, 24796(%rbx)
	je	.LBB1_5
.LBB1_4:                                # %land.lhs.true
	movb	$1, %al
	cmpl	$0, 24792(%rbx)
	je	.LBB1_6
.LBB1_5:                                # %lor.rhs
	callq	gs_color_space_is_CIE
	testl	%eax, %eax
	setne	%al
.LBB1_6:                                # %lor.end
	movzbl	%al, %r8d
	xorl	$1, %r8d
	movl	$1, (%rsp)
	leaq	1056(%rsp), %r9
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	movl	%r13d, %ecx
	callq	initial_decode
	movl	1500(%rbx), %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movl	1504(%rbx), %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	movslq	156(%rbp), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	148(%rbp), %eax
	movl	%eax, 232(%rsp)         # 4-byte Spill
	movl	140(%rbp), %r15d
	movl	%r13d, 276(%rsp)        # 4-byte Spill
	movzwl	108(%r12), %eax
	movl	%eax, 260(%rsp)         # 4-byte Spill
	movl	108(%rbp), %eax
	movl	%eax, 212(%rsp)         # 4-byte Spill
	movl	112(%rbp), %r13d
	movl	132(%rbp), %r14d
	leaq	944(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	testl	%eax, %eax
	jne	.LBB1_152
# BB#7:                                 # %if.end.27
	movl	%r14d, 200(%rsp)        # 4-byte Spill
	movl	%r13d, 196(%rsp)        # 4-byte Spill
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movl	%r15d, %r12d
	sarl	$31, %r12d
	shrl	$29, %r12d
	addl	%r15d, %r12d
	sarl	$3, %r12d
	movq	944(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, 184(%rsp)         # 4-byte Spill
	movss	1132(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$1, %eax
	movl	$-1, %ecx
	cmoval	%eax, %ecx
	movl	%ecx, 148(%rsp)         # 4-byte Spill
	setbe	180(%rsp)               # 1-byte Folded Spill
	cmpl	$0, 188(%rbp)
	movq	24448(%rbx), %rax
	movl	116(%rax), %eax
	movq	%rbp, %r14
	movq	%r14, 168(%rsp)         # 8-byte Spill
	movq	%rbx, 280(%rsp)         # 8-byte Spill
	je	.LBB1_11
# BB#8:                                 # %land.lhs.true.35
	xorl	%ecx, %ecx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movq	248(%rsp), %rbx         # 8-byte Reload
	movl	276(%rsp), %r13d        # 4-byte Reload
	movl	196(%rsp), %edx         # 4-byte Reload
	jne	.LBB1_13
# BB#9:                                 # %land.lhs.true.38
	movq	1056(%rsp), %rax
	cmpq	1064(%rsp), %rax
	je	.LBB1_12
# BB#10:                                # %if.then.41
	movq	%r14, 168(%rsp)         # 8-byte Spill
	movl	200(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r14d
	sarl	$31, %r14d
	shrl	$29, %r14d
	addl	%eax, %r14d
	sarl	$3, %r14d
	movq	216(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movl	%r14d, %r15d
	movl	232(%rsp), %r13d        # 4-byte Reload
	imull	%r13d, %r15d
	movl	184(%rsp), %ebp         # 4-byte Reload
	imull	%ebp, %r15d
	movl	$.L__func__.image_render_interpolate_icc, %edx
	movl	%r15d, %esi
	callq	*64(%rdi)
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	212(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	imull	%r13d, %eax
	movl	%r13d, 24(%rsp)
	movl	%eax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movzbl	%cl, %esi
	movzbl	%r14b, %edx
	movl	%edx, 200(%rsp)         # 4-byte Spill
	movq	168(%rsp), %r14         # 8-byte Reload
	leaq	992(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	gsicc_init_buffer
	movl	%ebp, %eax
	imull	%r13d, %eax
	movl	%r13d, 24(%rsp)
	movl	%eax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movzbl	%bpl, %esi
	movl	276(%rsp), %r13d        # 4-byte Reload
	leaq	952(%rsp), %rbp
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movl	200(%rsp), %edx         # 4-byte Reload
	callq	gsicc_init_buffer
	movq	1056(%rsp), %r8
	incq	%r8
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	24448(%rax), %rsi
	movq	160(%rsp), %rdi         # 8-byte Reload
	leaq	992(%rsp), %rdx
	movq	%rbp, %rcx
	movq	152(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %r9
	callq	*8(%rsi)
	movl	196(%rsp), %edx         # 4-byte Reload
	leaq	-1(%rbp), %rax
	movq	%rax, 1056(%rsp)
	movslq	%r15d, %rax
	leaq	-1(%rbp,%rax), %rax
	movq	%rax, 1064(%rsp)
	jmp	.LBB1_13
.LBB1_1:                                # %if.then
	movl	$.L__func__.image_render_interpolate_icc, %edi
	movl	$.L.str.2, %esi
	movl	$913, %edx              # imm = 0x391
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB1_152
.LBB1_11:                               # %if.else.64
	xorl	%ecx, %ecx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movq	248(%rsp), %rbx         # 8-byte Reload
	movl	276(%rsp), %r13d        # 4-byte Reload
	movl	196(%rsp), %edx         # 4-byte Reload
	jne	.LBB1_13
.LBB1_12:                               # %if.then.68
	movl	%edx, 196(%rsp)         # 4-byte Spill
	movq	216(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movl	%ebx, %ebp
	movl	184(%rsp), %r15d        # 4-byte Reload
	imull	%r15d, %ebp
	leal	(%rbp,%rbp), %esi
	movl	$.L__func__.image_render_interpolate_icc, %edx
	callq	*64(%rdi)
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	212(%rsp), %edx         # 4-byte Reload
	movl	%edx, %eax
	imull	%ebx, %eax
	movl	124(%r14), %ecx
	movl	%ecx, 24(%rsp)
	movl	%eax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movzbl	%dl, %esi
	leaq	992(%rsp), %rdi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	gsicc_init_buffer
	movl	124(%r14), %eax
	movl	%eax, 24(%rsp)
	movl	%ebp, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movzbl	%r15b, %esi
	leaq	952(%rsp), %rdi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	gsicc_init_buffer
	movl	196(%rsp), %edx         # 4-byte Reload
.LBB1_13:                               # %for.cond.preheader
	movl	%edx, %eax
	imull	%r12d, %eax
	cmpl	$8, %eax
	cltq
	movl	$8, %ecx
	cmovaq	%rax, %rcx
	imulq	%rbx, %rcx
	movq	240(%rsp), %rax         # 8-byte Reload
	leaq	-1(%rax,%rcx), %rsi
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	movq	%rbx, %r15
	imull	%r12d, %eax
	imull	%edx, %eax
	cltq
	movq	%rsi, %rdx
	subq	%rax, %rdx
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	testl	%r13d, %r13d
	sete	%al
	movzbl	%al, %ecx
	movl	%ecx, 196(%rsp)         # 4-byte Spill
	movl	260(%rsp), %eax         # 4-byte Reload
	shrl	$3, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	280(%rsp), %rax         # 8-byte Reload
	movl	1492(%rax), %ebx
	movq	%rsi, 1048(%rsp)
	movq	%rdx, 1040(%rsp)
	movq	(%r14), %rax
	leaq	1056(%rsp), %rsi
	leaq	1032(%rsp), %rdx
	movq	%r14, %rdi
	callq	*16(%rax)
	movl	%eax, %r12d
	cmpl	$-2, %r12d
	movq	264(%rsp), %rdx         # 8-byte Reload
	jle	.LBB1_150
# BB#14:
	movl	260(%rsp), %ecx         # 4-byte Reload
	imull	%ecx, %r15d
	addl	$63, %r15d
	sarl	$6, %r15d
	movzbl	180(%rsp), %eax         # 1-byte Folded Reload
	shll	$3, %r15d
	movq	%r15, 248(%rsp)         # 8-byte Spill
	subl	%eax, %edx
	movq	%rdx, 264(%rsp)         # 8-byte Spill
	movq	232(%rsp), %rax         # 8-byte Reload
	leaq	1(%rax), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	224(%rsp), %eax         # 4-byte Reload
	orl	228(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	shrl	$2, %eax
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movslq	184(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movzwl	%cx, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	leaq	1056(%rsp), %r15
	leaq	1032(%rsp), %rbp
                                        # implicit-def: EAX
	movl	%eax, 88(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB1_15:                               # %if.end.129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
                                        #       Child Loop BB1_24 Depth 3
                                        #         Child Loop BB1_35 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_38 Depth 4
	movq	1040(%rsp), %rax
	cmpq	1048(%rsp), %rax
	jne	.LBB1_143
# BB#16:                                # %if.then.134
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	%r13d, 276(%rsp)        # 4-byte Spill
	cmpl	$0, 204(%r14)
	je	.LBB1_142
# BB#17:                                # %do.end
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	124(%r14), %r13d
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	24448(%rax), %rsi
	cmpl	$0, 116(%rsi)
	jne	.LBB1_19
# BB#18:                                # %lor.lhs.false.145
                                        #   in Loop: Header=BB1_15 Depth=1
	cmpl	$0, 188(%r14)
	je	.LBB1_20
.LBB1_19:                               # %if.then.149
                                        #   in Loop: Header=BB1_15 Depth=1
	movslq	196(%r14), %rax
	imulq	120(%rsp), %rax         # 8-byte Folded Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,2), %r15
.LBB1_21:                               # %for.cond.170.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	testl	%r13d, %r13d
	jle	.LBB1_142
# BB#22:                                #   in Loop: Header=BB1_15 Depth=1
	imull	148(%rsp), %ebx         # 4-byte Folded Reload
	movq	264(%rsp), %rax         # 8-byte Reload
	leal	(%rbx,%rax), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	192(%rsp), %eax         # 4-byte Reload
	addl	%eax, %r13d
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	movq	240(%rsp), %rbx         # 8-byte Reload
.LBB1_23:                               # %for.body.lr.ph
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
                                        #         Child Loop BB1_35 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_38 Depth 4
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movq	%rax, 136(%rsp)         # 8-byte Spill
	jmp	.LBB1_24
.LBB1_109:                              # %if.else.559
                                        #   in Loop: Header=BB1_24 Depth=3
	movl	$8, %ecx
	subl	%edx, %ecx
	movl	%edx, 128(%rsp)         # 4-byte Spill
	shlq	%cl, %rax
	movl	92(%rsp), %ecx          # 4-byte Reload
	orb	%cl, %al
	movl	%eax, 92(%rsp)          # 4-byte Spill
	jmp	.LBB1_124
.LBB1_114:                              # %if.then.586
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	%dl, (%rbx)
	incq	%rbx
.LBB1_111:                              # %if.then.572
                                        #   in Loop: Header=BB1_24 Depth=3
	shlq	$4, %rax
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	movl	%eax, 92(%rsp)          # 4-byte Spill
	jmp	.LBB1_124
.LBB1_24:                               # %for.body
                                        #   Parent Loop BB1_15 Depth=1
                                        #     Parent Loop BB1_23 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_35 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_38 Depth 4
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	je	.LBB1_29
# BB#25:                                # %if.then.176
                                        #   in Loop: Header=BB1_24 Depth=3
	movl	$1, (%rsp)
	movq	%r15, %rdi
	leaq	288(%rsp), %rsi
	movq	216(%rsp), %rdx         # 8-byte Reload
	movq	160(%rsp), %rcx         # 8-byte Reload
	movl	224(%rsp), %r8d         # 4-byte Reload
	movl	228(%rsp), %r9d         # 4-byte Reload
	callq	cmap_transfer_halftone
	jmp	.LBB1_26
.LBB1_29:                               # %if.else.177
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	*1552(%rdi)
	cmpq	$-1, %rax
	je	.LBB1_26
# BB#30:                                # %if.end.184.thread
                                        #   in Loop: Header=BB1_24 Depth=3
	movl	%r13d, %r14d
	movq	%rax, 296(%rsp)
	movq	$gx_dc_type_data_pure, 288(%rsp)
	jmp	.LBB1_31
.LBB1_26:                               # %if.end.184
                                        #   in Loop: Header=BB1_24 Depth=3
	movl	%r13d, %r14d
	movq	288(%rsp), %rbp
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, %rbp
	jne	.LBB1_27
.LBB1_31:                               # %if.then.188
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	296(%rsp), %rax
	movl	184(%rsp), %ecx         # 4-byte Reload
	cmpl	$1, %ecx
	je	.LBB1_37
# BB#32:                                # %if.then.188
                                        #   in Loop: Header=BB1_24 Depth=3
	cmpl	$3, %ecx
	movq	136(%rsp), %rbp         # 8-byte Reload
	jne	.LBB1_33
# BB#59:                                # %do.body.293.preheader
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, %rsi
	shrq	$8, %rsi
	movq	%rax, %rcx
	shrq	$4, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	shrq	$56, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	shrq	$48, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rax, %r13
	shrq	$40, %r13
	movq	%rax, %rdi
	shrq	$32, %rdi
	movq	%rax, %r8
	shrq	$24, %r8
	movq	%rax, %r9
	shrq	$16, %r9
	incl	%ebp
	addq	$6, %r15
	movq	%r15, %rcx
	movl	%ebp, %r11d
	jmp	.LBB1_60
.LBB1_37:                               # %do.body.193.preheader
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rax, %rsi
	shrq	$8, %rsi
	movq	%rax, %rcx
	shrq	$4, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	shrq	$56, %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	shrq	$48, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rax, %r13
	shrq	$40, %r13
	movq	%rax, %rdi
	shrq	$32, %rdi
	movq	%rax, %r8
	shrq	$24, %r8
	movq	%rax, %r9
	shrq	$16, %r9
	movq	136(%rsp), %rdx         # 8-byte Reload
	incl	%edx
	addq	$2, %r15
	movq	%r15, %rcx
	movl	%edx, %r11d
	jmp	.LBB1_38
.LBB1_33:                               # %if.then.188
                                        #   in Loop: Header=BB1_24 Depth=3
	cmpl	$4, %ecx
	jne	.LBB1_105
# BB#34:                                # %do.body.418.preheader
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, %rsi
	shrq	$8, %rsi
	movq	%rax, %rcx
	shrq	$4, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	shrq	$56, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	shrq	$48, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rax, %r13
	shrq	$40, %r13
	movq	%rax, %rdi
	shrq	$32, %rdi
	movq	%rax, %r8
	shrq	$24, %r8
	movq	%rax, %r9
	shrq	$16, %r9
	incl	%ebp
	addq	$8, %r15
	movq	%r15, %rcx
	movl	%ebp, %r11d
	jmp	.LBB1_35
.LBB1_105:                              # %do.body.546
                                        #   in Loop: Header=BB1_24 Depth=3
	movl	180(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	cmpl	$16, %edx
	ja	.LBB1_151
# BB#106:                               # %do.body.546
                                        #   in Loop: Header=BB1_24 Depth=3
	jmpq	*.LJTI1_3(,%rcx,8)
.LBB1_107:                              # %sw.bb.548
                                        #   in Loop: Header=BB1_24 Depth=3
	movl	260(%rsp), %ecx         # 4-byte Reload
	movl	128(%rsp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$8, %edx
	jne	.LBB1_109
# BB#108:                               # %if.then.552
                                        #   in Loop: Header=BB1_24 Depth=3
	movl	92(%rsp), %ecx          # 4-byte Reload
	orb	%cl, %al
	movb	%al, (%rbx)
	incq	%rbx
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_124
.LBB1_42:                               # %if.else.204
                                        #   in Loop: Header=BB1_38 Depth=4
	movl	$8, %ecx
	subl	%edx, %ecx
	movl	%edx, 128(%rsp)         # 4-byte Spill
	movq	%rbp, %rdx
	movq	%rax, %rbp
	shlq	%cl, %rbp
	movl	92(%rsp), %ecx          # 4-byte Reload
	orb	%cl, %bpl
	movb	%bpl, %cl
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movq	%rdx, %rbp
	jmp	.LBB1_57
.LBB1_47:                               # %if.then.228
                                        #   in Loop: Header=BB1_38 Depth=4
	movq	40(%rsp), %rdx          # 8-byte Reload
	movb	%dl, (%rbx)
	incq	%rbx
.LBB1_44:                               #   in Loop: Header=BB1_38 Depth=4
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	jmp	.LBB1_57
.LBB1_38:                               # %do.body.193
                                        #   Parent Loop BB1_15 Depth=1
                                        #     Parent Loop BB1_23 Depth=2
                                        #       Parent Loop BB1_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r11d, %ebp
	movq	%rcx, %r15
	movl	180(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	cmpl	$16, %edx
	ja	.LBB1_151
# BB#39:                                # %do.body.193
                                        #   in Loop: Header=BB1_38 Depth=4
	jmpq	*.LJTI1_2(,%rcx,8)
.LBB1_40:                               # %sw.bb.195
                                        #   in Loop: Header=BB1_38 Depth=4
	movl	260(%rsp), %ecx         # 4-byte Reload
	movl	128(%rsp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$8, %edx
	jne	.LBB1_42
# BB#41:                                # %if.then.199
                                        #   in Loop: Header=BB1_38 Depth=4
	movl	92(%rsp), %ecx          # 4-byte Reload
	orb	%al, %cl
	movb	%cl, (%rbx)
	incq	%rbx
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_57
.LBB1_43:                               # %sw.bb.212
                                        #   in Loop: Header=BB1_38 Depth=4
	movl	128(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB1_44
# BB#45:                                # %if.else.217
                                        #   in Loop: Header=BB1_38 Depth=4
	movl	92(%rsp), %edx          # 4-byte Reload
	orb	%al, %dl
	movb	%dl, (%rbx)
	incq	%rbx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	jmp	.LBB1_57
.LBB1_46:                               # %sw.bb.225
                                        #   in Loop: Header=BB1_38 Depth=4
	movl	128(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB1_47
# BB#48:                                # %if.else.234
                                        #   in Loop: Header=BB1_38 Depth=4
	movl	92(%rsp), %edx          # 4-byte Reload
	orb	%sil, %dl
	movb	%dl, (%rbx)
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	jmp	.LBB1_57
.LBB1_49:                               # %sw.bb.244
                                        #   in Loop: Header=BB1_38 Depth=4
	movq	48(%rsp), %rcx          # 8-byte Reload
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_50:                               # %sw.bb.248
                                        #   in Loop: Header=BB1_38 Depth=4
	movq	64(%rsp), %rcx          # 8-byte Reload
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_51:                               # %sw.bb.252
                                        #   in Loop: Header=BB1_38 Depth=4
	movb	%r13b, (%rbx)
	incq	%rbx
.LBB1_52:                               # %sw.bb.256
                                        #   in Loop: Header=BB1_38 Depth=4
	movb	%dil, (%rbx)
	incq	%rbx
.LBB1_53:                               # %sw.bb.260
                                        #   in Loop: Header=BB1_38 Depth=4
	movb	%r8b, (%rbx)
	incq	%rbx
.LBB1_54:                               # %sw.bb.264
                                        #   in Loop: Header=BB1_38 Depth=4
	movb	%r9b, (%rbx)
	incq	%rbx
.LBB1_55:                               # %sw.bb.268
                                        #   in Loop: Header=BB1_38 Depth=4
	movb	%sil, (%rbx)
	incq	%rbx
.LBB1_56:                               # %sw.bb.272
                                        #   in Loop: Header=BB1_38 Depth=4
	movb	%al, (%rbx)
	incq	%rbx
.LBB1_57:                               # %do.end.279
                                        #   in Loop: Header=BB1_38 Depth=4
	cmpl	%r14d, %ebp
	jge	.LBB1_125
# BB#58:                                # %land.rhs
                                        #   in Loop: Header=BB1_38 Depth=4
	movzwl	(%r15), %edx
	movzwl	-2(%r15), %r10d
	leal	1(%rbp), %r11d
	leaq	2(%r15), %rcx
	cmpl	%edx, %r10d
	je	.LBB1_38
	jmp	.LBB1_125
.LBB1_64:                               # %if.else.306
                                        #   in Loop: Header=BB1_60 Depth=4
	movl	$8, %ecx
	subl	%edx, %ecx
	movl	%edx, 128(%rsp)         # 4-byte Spill
	movq	%rbp, %rdx
	movq	%rax, %rbp
	shlq	%cl, %rbp
	movl	92(%rsp), %ecx          # 4-byte Reload
	orb	%cl, %bpl
	movb	%bpl, %cl
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movq	%rdx, %rbp
	jmp	.LBB1_79
.LBB1_69:                               # %if.then.333
                                        #   in Loop: Header=BB1_60 Depth=4
	movq	40(%rsp), %rdx          # 8-byte Reload
	movb	%dl, (%rbx)
	incq	%rbx
.LBB1_66:                               #   in Loop: Header=BB1_60 Depth=4
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	jmp	.LBB1_79
.LBB1_60:                               # %do.body.293
                                        #   Parent Loop BB1_15 Depth=1
                                        #     Parent Loop BB1_23 Depth=2
                                        #       Parent Loop BB1_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r11d, %ebp
	movq	%rcx, %r15
	movl	180(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	cmpl	$16, %edx
	ja	.LBB1_151
# BB#61:                                # %do.body.293
                                        #   in Loop: Header=BB1_60 Depth=4
	jmpq	*.LJTI1_1(,%rcx,8)
.LBB1_62:                               # %sw.bb.295
                                        #   in Loop: Header=BB1_60 Depth=4
	movl	260(%rsp), %ecx         # 4-byte Reload
	movl	128(%rsp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$8, %edx
	jne	.LBB1_64
# BB#63:                                # %if.then.299
                                        #   in Loop: Header=BB1_60 Depth=4
	movl	92(%rsp), %ecx          # 4-byte Reload
	orb	%al, %cl
	movb	%cl, (%rbx)
	incq	%rbx
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_79
.LBB1_65:                               # %sw.bb.316
                                        #   in Loop: Header=BB1_60 Depth=4
	movl	128(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB1_66
# BB#67:                                # %if.else.322
                                        #   in Loop: Header=BB1_60 Depth=4
	movl	92(%rsp), %edx          # 4-byte Reload
	orb	%al, %dl
	movb	%dl, (%rbx)
	incq	%rbx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	jmp	.LBB1_79
.LBB1_68:                               # %sw.bb.330
                                        #   in Loop: Header=BB1_60 Depth=4
	movl	128(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB1_69
# BB#70:                                # %if.else.339
                                        #   in Loop: Header=BB1_60 Depth=4
	movl	92(%rsp), %edx          # 4-byte Reload
	orb	%sil, %dl
	movb	%dl, (%rbx)
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	jmp	.LBB1_79
.LBB1_71:                               # %sw.bb.350
                                        #   in Loop: Header=BB1_60 Depth=4
	movq	56(%rsp), %rcx          # 8-byte Reload
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_72:                               # %sw.bb.354
                                        #   in Loop: Header=BB1_60 Depth=4
	movq	64(%rsp), %rcx          # 8-byte Reload
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_73:                               # %sw.bb.358
                                        #   in Loop: Header=BB1_60 Depth=4
	movb	%r13b, (%rbx)
	incq	%rbx
.LBB1_74:                               # %sw.bb.362
                                        #   in Loop: Header=BB1_60 Depth=4
	movb	%dil, (%rbx)
	incq	%rbx
.LBB1_75:                               # %sw.bb.366
                                        #   in Loop: Header=BB1_60 Depth=4
	movb	%r8b, (%rbx)
	incq	%rbx
.LBB1_76:                               # %sw.bb.370
                                        #   in Loop: Header=BB1_60 Depth=4
	movb	%r9b, (%rbx)
	incq	%rbx
.LBB1_77:                               # %sw.bb.374
                                        #   in Loop: Header=BB1_60 Depth=4
	movb	%sil, (%rbx)
	incq	%rbx
.LBB1_78:                               # %sw.bb.378
                                        #   in Loop: Header=BB1_60 Depth=4
	movb	%al, (%rbx)
	incq	%rbx
.LBB1_79:                               # %do.end.387
                                        #   in Loop: Header=BB1_60 Depth=4
	cmpl	%r14d, %ebp
	jge	.LBB1_125
# BB#80:                                # %land.lhs.true.393
                                        #   in Loop: Header=BB1_60 Depth=4
	movzwl	(%r15), %ecx
	movzwl	-6(%r15), %edx
	cmpl	%ecx, %edx
	jne	.LBB1_125
# BB#81:                                # %land.lhs.true.400
                                        #   in Loop: Header=BB1_60 Depth=4
	movzwl	2(%r15), %ecx
	movzwl	-4(%r15), %edx
	cmpl	%ecx, %edx
	jne	.LBB1_125
# BB#82:                                # %land.rhs.407
                                        #   in Loop: Header=BB1_60 Depth=4
	movzwl	4(%r15), %edx
	movzwl	-2(%r15), %r10d
	leal	1(%rbp), %r11d
	leaq	6(%r15), %rcx
	cmpl	%edx, %r10d
	je	.LBB1_60
	jmp	.LBB1_125
.LBB1_85:                               # %if.else.431
                                        #   in Loop: Header=BB1_35 Depth=4
	movl	$8, %ecx
	subl	%edx, %ecx
	movl	%edx, 128(%rsp)         # 4-byte Spill
	movq	%rbp, %rdx
	movq	%rax, %rbp
	shlq	%cl, %rbp
	movl	92(%rsp), %ecx          # 4-byte Reload
	orb	%cl, %bpl
	movb	%bpl, %cl
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movq	%rdx, %rbp
	jmp	.LBB1_100
.LBB1_90:                               # %if.then.458
                                        #   in Loop: Header=BB1_35 Depth=4
	movq	40(%rsp), %rdx          # 8-byte Reload
	movb	%dl, (%rbx)
	incq	%rbx
.LBB1_87:                               #   in Loop: Header=BB1_35 Depth=4
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	jmp	.LBB1_100
.LBB1_35:                               # %do.body.418
                                        #   Parent Loop BB1_15 Depth=1
                                        #     Parent Loop BB1_23 Depth=2
                                        #       Parent Loop BB1_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r11d, %ebp
	movq	%rcx, %r15
	movl	180(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	cmpl	$16, %edx
	ja	.LBB1_151
# BB#36:                                # %do.body.418
                                        #   in Loop: Header=BB1_35 Depth=4
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_83:                               # %sw.bb.420
                                        #   in Loop: Header=BB1_35 Depth=4
	movl	260(%rsp), %ecx         # 4-byte Reload
	movl	128(%rsp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$8, %edx
	jne	.LBB1_85
# BB#84:                                # %if.then.424
                                        #   in Loop: Header=BB1_35 Depth=4
	movl	92(%rsp), %ecx          # 4-byte Reload
	orb	%al, %cl
	movb	%cl, (%rbx)
	incq	%rbx
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_100
.LBB1_86:                               # %sw.bb.441
                                        #   in Loop: Header=BB1_35 Depth=4
	movl	128(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB1_87
# BB#88:                                # %if.else.447
                                        #   in Loop: Header=BB1_35 Depth=4
	movl	92(%rsp), %edx          # 4-byte Reload
	orb	%al, %dl
	movb	%dl, (%rbx)
	incq	%rbx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	jmp	.LBB1_100
.LBB1_89:                               # %sw.bb.455
                                        #   in Loop: Header=BB1_35 Depth=4
	movl	128(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB1_90
# BB#91:                                # %if.else.464
                                        #   in Loop: Header=BB1_35 Depth=4
	movl	92(%rsp), %edx          # 4-byte Reload
	orb	%sil, %dl
	movb	%dl, (%rbx)
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	jmp	.LBB1_100
.LBB1_92:                               # %sw.bb.475
                                        #   in Loop: Header=BB1_35 Depth=4
	movq	56(%rsp), %rcx          # 8-byte Reload
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_93:                               # %sw.bb.479
                                        #   in Loop: Header=BB1_35 Depth=4
	movq	64(%rsp), %rcx          # 8-byte Reload
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_94:                               # %sw.bb.483
                                        #   in Loop: Header=BB1_35 Depth=4
	movb	%r13b, (%rbx)
	incq	%rbx
.LBB1_95:                               # %sw.bb.487
                                        #   in Loop: Header=BB1_35 Depth=4
	movb	%dil, (%rbx)
	incq	%rbx
.LBB1_96:                               # %sw.bb.491
                                        #   in Loop: Header=BB1_35 Depth=4
	movb	%r8b, (%rbx)
	incq	%rbx
.LBB1_97:                               # %sw.bb.495
                                        #   in Loop: Header=BB1_35 Depth=4
	movb	%r9b, (%rbx)
	incq	%rbx
.LBB1_98:                               # %sw.bb.499
                                        #   in Loop: Header=BB1_35 Depth=4
	movb	%sil, (%rbx)
	incq	%rbx
.LBB1_99:                               # %sw.bb.503
                                        #   in Loop: Header=BB1_35 Depth=4
	movb	%al, (%rbx)
	incq	%rbx
.LBB1_100:                              # %do.end.509
                                        #   in Loop: Header=BB1_35 Depth=4
	cmpl	%r14d, %ebp
	jge	.LBB1_125
# BB#101:                               # %land.lhs.true.515
                                        #   in Loop: Header=BB1_35 Depth=4
	movzwl	(%r15), %ecx
	movzwl	-8(%r15), %edx
	cmpl	%ecx, %edx
	jne	.LBB1_125
# BB#102:                               # %land.lhs.true.522
                                        #   in Loop: Header=BB1_35 Depth=4
	movzwl	2(%r15), %ecx
	movzwl	-6(%r15), %edx
	cmpl	%ecx, %edx
	jne	.LBB1_125
# BB#103:                               # %land.lhs.true.529
                                        #   in Loop: Header=BB1_35 Depth=4
	movzwl	4(%r15), %ecx
	movzwl	-4(%r15), %edx
	cmpl	%ecx, %edx
	jne	.LBB1_125
# BB#104:                               # %land.rhs.536
                                        #   in Loop: Header=BB1_35 Depth=4
	movzwl	6(%r15), %edx
	movzwl	-2(%r15), %r10d
	leal	1(%rbp), %r11d
	leaq	8(%r15), %rcx
	cmpl	%edx, %r10d
	je	.LBB1_35
	jmp	.LBB1_125
.LBB1_110:                              # %sw.bb.569
                                        #   in Loop: Header=BB1_24 Depth=3
	movl	128(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB1_111
# BB#112:                               # %if.else.575
                                        #   in Loop: Header=BB1_24 Depth=3
	movl	92(%rsp), %edx          # 4-byte Reload
	orb	%dl, %al
	movb	%al, (%rbx)
	incq	%rbx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	jmp	.LBB1_124
.LBB1_113:                              # %sw.bb.583
                                        #   in Loop: Header=BB1_24 Depth=3
	movl	128(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB1_114
# BB#115:                               # %if.else.592
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rax, %rdx
	shrq	$8, %rdx
	movl	92(%rsp), %esi          # 4-byte Reload
	orb	%sil, %dl
	movb	%dl, (%rbx)
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	jmp	.LBB1_124
.LBB1_116:                              # %sw.bb.603
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rax, %rcx
	shrq	$56, %rcx
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_117:                              # %sw.bb.607
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rax, %rcx
	shrq	$48, %rcx
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_118:                              # %sw.bb.611
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rax, %rcx
	shrq	$40, %rcx
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_119:                              # %sw.bb.615
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rax, %rcx
	shrq	$32, %rcx
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_120:                              # %sw.bb.619
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_121:                              # %sw.bb.623
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rbx)
	incq	%rbx
.LBB1_122:                              # %sw.bb.627
                                        #   in Loop: Header=BB1_24 Depth=3
	movb	%ah, (%rbx)  # NOREX
	incq	%rbx
.LBB1_123:                              # %sw.bb.631
                                        #   in Loop: Header=BB1_24 Depth=3
	movb	%al, (%rbx)
	incq	%rbx
.LBB1_124:                              # %do.end.637
                                        #   in Loop: Header=BB1_24 Depth=3
	incl	%ebp
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	(%r15,%rax,2), %r15
.LBB1_125:                              # %for.cond.170.backedge
                                        #   in Loop: Header=BB1_24 Depth=3
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movl	%r14d, %r13d
	cmpl	%r13d, %ebp
	jl	.LBB1_24
	jmp	.LBB1_126
.LBB1_27:                               # %if.else.642
                                        #   in Loop: Header=BB1_23 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	subl	80(%rsp), %eax          # 4-byte Folded Reload
	jle	.LBB1_28
# BB#131:                               # %if.then.645
                                        #   in Loop: Header=BB1_23 Depth=2
	movl	128(%rsp), %r13d        # 4-byte Reload
	testl	%r13d, %r13d
	je	.LBB1_133
# BB#132:                               # %if.then.649
                                        #   in Loop: Header=BB1_23 Depth=2
	movl	92(%rsp), %ecx          # 4-byte Reload
	movzbl	%cl, %edx
	movzbl	(%rbx), %esi
	movl	$255, %edi
	movb	%r13b, %cl
	shrl	%cl, %edi
	andl	%esi, %edi
	orl	%edx, %edi
	movb	%dil, (%rbx)
.LBB1_133:                              # %if.end.656
                                        #   in Loop: Header=BB1_23 Depth=2
	movl	80(%rsp), %r9d          # 4-byte Reload
	movl	%r9d, %edx
	subl	192(%rsp), %edx         # 4-byte Folded Reload
	movl	%eax, 8(%rsp)
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	240(%rsp), %rsi         # 8-byte Reload
	movq	248(%rsp), %rcx         # 8-byte Reload
	callq	*1224(%rdi)
	testl	%eax, %eax
	movl	88(%rsp), %ecx          # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	js	.LBB1_130
# BB#134:                               # %if.end.656.if.end.668_crit_edge
                                        #   in Loop: Header=BB1_23 Depth=2
	movq	288(%rsp), %rbp
	jmp	.LBB1_135
.LBB1_28:                               #   in Loop: Header=BB1_23 Depth=2
	movl	128(%rsp), %r13d        # 4-byte Reload
.LBB1_135:                              # %if.end.668
                                        #   in Loop: Header=BB1_23 Depth=2
	movl	%r13d, 128(%rsp)        # 4-byte Spill
	movl	188(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	leaq	288(%rsp), %rdi
	movq	136(%rsp), %rsi         # 8-byte Reload
	movl	76(%rsp), %edx          # 4-byte Reload
	movq	160(%rsp), %r9          # 8-byte Reload
	callq	*40(%rbp)
	testl	%eax, %eax
	js	.LBB1_152
# BB#136:                               # %if.end.674
                                        #   in Loop: Header=BB1_23 Depth=2
	cmpl	$7, 84(%rsp)            # 4-byte Folded Reload
	movl	%r14d, %r13d
	ja	.LBB1_137
# BB#138:                               # %if.then.677
                                        #   in Loop: Header=BB1_23 Depth=2
	movl	128(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	movl	92(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %eax
	je	.LBB1_140
# BB#139:                               # %if.then.680
                                        #   in Loop: Header=BB1_23 Depth=2
	movzbl	(%rbx), %edx
	movl	$255, %esi
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movb	%sil, (%rbx)
.LBB1_140:                              # %do.body.688
                                        #   in Loop: Header=BB1_23 Depth=2
	addl	260(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	andl	$7, %ecx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	movl	$255, %esi
	shll	%cl, %esi
	notl	%esi
	andl	%eax, %esi
	movl	%esi, 92(%rsp)          # 4-byte Spill
	jmp	.LBB1_141
.LBB1_137:                              #   in Loop: Header=BB1_23 Depth=2
	movq	96(%rsp), %rdx          # 8-byte Reload
.LBB1_141:                              # %cleanup.709
                                        #   in Loop: Header=BB1_23 Depth=2
	addq	%rdx, %rbx
	movq	136(%rsp), %rcx         # 8-byte Reload
	incl	%ecx
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	(%r15,%rax,2), %r15
	cmpl	%r13d, %ecx
	movl	%ecx, %eax
	jl	.LBB1_23
	jmp	.LBB1_142
.LBB1_20:                               # %if.else.154
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	196(%r14), %eax
	movl	%eax, %ecx
	imull	212(%rsp), %ecx         # 4-byte Folded Reload
	movslq	%ecx, %rcx
	movq	112(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,2), %r8
	imull	184(%rsp), %eax         # 4-byte Folded Reload
	cltq
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,2), %r15
	movq	160(%rsp), %rdi         # 8-byte Reload
	leaq	992(%rsp), %rdx
	leaq	952(%rsp), %rcx
	movq	%r15, %r9
	callq	*8(%rsi)
	jmp	.LBB1_21
.LBB1_126:                              # %for.end
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	136(%rsp), %rbp         # 8-byte Reload
	movl	80(%rsp), %eax          # 4-byte Reload
	subl	%eax, %ebp
	jle	.LBB1_142
# BB#127:                               # %if.then.715
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	128(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	movq	160(%rsp), %rdi         # 8-byte Reload
	je	.LBB1_129
# BB#128:                               # %if.then.719
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	%eax, %r8d
	movl	92(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %eax
	movzbl	(%rbx), %edx
	movl	$255, %esi
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movl	%r8d, %eax
	movb	%sil, (%rbx)
.LBB1_129:                              # %if.end.726
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	%eax, %edx
	subl	192(%rsp), %edx         # 4-byte Folded Reload
	movl	%ebp, 8(%rsp)
	movl	%eax, %r9d
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	240(%rsp), %rsi         # 8-byte Reload
	movq	248(%rsp), %rcx         # 8-byte Reload
	callq	*1224(%rdi)
	testl	%eax, %eax
	movl	88(%rsp), %ecx          # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	js	.LBB1_130
.LBB1_142:                              # %cleanup.745
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	280(%rsp), %rax         # 8-byte Reload
	incl	1492(%rax)
	movq	168(%rsp), %r14         # 8-byte Reload
	leaq	1056(%rsp), %rbp
	movq	%rbp, %r15
	leaq	1032(%rsp), %rbp
	movl	276(%rsp), %r13d        # 4-byte Reload
.LBB1_143:                              # %if.end.748
                                        #   in Loop: Header=BB1_15 Depth=1
	testl	%r12d, %r12d
	jne	.LBB1_144
# BB#148:                               # %land.lhs.true.751
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	1056(%rsp), %rax
	cmpq	1064(%rsp), %rax
	je	.LBB1_145
.LBB1_149:                              # %cleanup.761.thread429
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	280(%rsp), %rax         # 8-byte Reload
	movl	1492(%rax), %ebx
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1048(%rsp)
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1040(%rsp)
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movl	196(%rsp), %ecx         # 4-byte Reload
	callq	*16(%rax)
	movl	%eax, %r12d
	cmpl	$-1, %r12d
	jge	.LBB1_15
	jmp	.LBB1_150
.LBB1_144:                              # %if.end.748
                                        #   in Loop: Header=BB1_15 Depth=1
	cmpl	$-1, %r12d
	jne	.LBB1_149
.LBB1_145:                              # %cleanup.761.thread
	movq	152(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB1_147
# BB#146:                               # %if.then.775
	movq	216(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L__func__.image_render_interpolate_icc, %edx
	callq	*24(%rdi)
.LBB1_147:                              # %cleanup.cont.801
	testl	%r13d, %r13d
	setne	%al
	movzbl	%al, %eax
	jmp	.LBB1_152
.LBB1_150:                              # %cleanup.761.thread428
	movl	$-12, %eax
	jmp	.LBB1_152
.LBB1_151:                              # %cleanup.761.thread430
	movl	$-15, %eax
.LBB1_152:                              # %cleanup.805
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_130:                              # %cleanup.761
	movl	88(%rsp), %eax          # 4-byte Reload
	jmp	.LBB1_152
.Lfunc_end1:
	.size	image_render_interpolate_icc, .Lfunc_end1-image_render_interpolate_icc
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_83
	.quad	.LBB1_86
	.quad	.LBB1_99
	.quad	.LBB1_89
	.quad	.LBB1_98
	.quad	.LBB1_151
	.quad	.LBB1_97
	.quad	.LBB1_151
	.quad	.LBB1_96
	.quad	.LBB1_151
	.quad	.LBB1_95
	.quad	.LBB1_151
	.quad	.LBB1_94
	.quad	.LBB1_151
	.quad	.LBB1_93
	.quad	.LBB1_151
	.quad	.LBB1_92
.LJTI1_1:
	.quad	.LBB1_62
	.quad	.LBB1_65
	.quad	.LBB1_78
	.quad	.LBB1_68
	.quad	.LBB1_77
	.quad	.LBB1_151
	.quad	.LBB1_76
	.quad	.LBB1_151
	.quad	.LBB1_75
	.quad	.LBB1_151
	.quad	.LBB1_74
	.quad	.LBB1_151
	.quad	.LBB1_73
	.quad	.LBB1_151
	.quad	.LBB1_72
	.quad	.LBB1_151
	.quad	.LBB1_71
.LJTI1_2:
	.quad	.LBB1_40
	.quad	.LBB1_43
	.quad	.LBB1_56
	.quad	.LBB1_46
	.quad	.LBB1_55
	.quad	.LBB1_151
	.quad	.LBB1_54
	.quad	.LBB1_151
	.quad	.LBB1_53
	.quad	.LBB1_151
	.quad	.LBB1_52
	.quad	.LBB1_151
	.quad	.LBB1_51
	.quad	.LBB1_151
	.quad	.LBB1_50
	.quad	.LBB1_151
	.quad	.LBB1_49
.LJTI1_3:
	.quad	.LBB1_107
	.quad	.LBB1_110
	.quad	.LBB1_123
	.quad	.LBB1_113
	.quad	.LBB1_122
	.quad	.LBB1_151
	.quad	.LBB1_121
	.quad	.LBB1_151
	.quad	.LBB1_120
	.quad	.LBB1_151
	.quad	.LBB1_119
	.quad	.LBB1_151
	.quad	.LBB1_118
	.quad	.LBB1_151
	.quad	.LBB1_117
	.quad	.LBB1_151
	.quad	.LBB1_116

	.text
	.align	16, 0x90
	.type	image_render_interpolate_landscape_icc,@function
image_render_interpolate_landscape_icc: # @image_render_interpolate_landscape_icc
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
	subq	$968, %rsp              # imm = 0x3C8
.Ltmp32:
	.cfi_def_cfa_offset 1024
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
	movq	%r9, 168(%rsp)          # 8-byte Spill
	movl	%r8d, %ebx
	movl	%edx, %r14d
	movq	%rsi, %r12
	movq	%rdi, %rbp
	cmpq	$0, 24448(%rbp)
	je	.LBB2_1
# BB#2:                                 # %if.end
	movq	1336(%rbp), %r15
	movq	1216(%rbp), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	1224(%rbp), %rdi
	movl	1304(%rbp), %eax
	movl	%eax, 164(%rsp)         # 4-byte Spill
	movq	1248(%rbp), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movl	24800(%rbp), %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movl	24804(%rbp), %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	cmpb	$0, 1271(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, 24796(%rbp)
	je	.LBB2_5
.LBB2_4:                                # %land.lhs.true
	movb	$1, %al
	cmpl	$0, 24792(%rbp)
	je	.LBB2_6
.LBB2_5:                                # %lor.rhs
	callq	gs_color_space_is_CIE
	testl	%eax, %eax
	setne	%al
.LBB2_6:                                # %lor.end
	movzbl	%al, %r8d
	xorl	$1, %r8d
	movl	$1, (%rsp)
	leaq	944(%rsp), %r9
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	movl	%ebx, %ecx
	callq	initial_decode
	movl	1500(%rbp), %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	1504(%rbp), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movslq	156(%r15), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	%ebx, 108(%rsp)         # 4-byte Spill
	movl	148(%r15), %eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	140(%r15), %r14d
	movl	108(%r15), %r13d
	movl	112(%r15), %ebx
	movl	132(%r15), %r12d
	leaq	832(%rsp), %rsi
	movq	168(%rsp), %rdi         # 8-byte Reload
	callq	*1680(%rdi)
	testl	%eax, %eax
	je	.LBB2_8
# BB#7:                                 # %if.then.25
	movb	$0, 1119(%rbp)
	xorl	%eax, %eax
	jmp	.LBB2_40
.LBB2_1:                                # %if.then
	movl	$.L__func__.image_render_interpolate_landscape_icc, %edi
	movl	$.L.str.2, %esi
	movl	$1316, %edx             # imm = 0x524
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB2_40
.LBB2_8:                                # %if.end.26
	movl	%r12d, 72(%rsp)         # 4-byte Spill
	movl	%r13d, 96(%rsp)         # 4-byte Spill
	movl	%ebx, 112(%rsp)         # 4-byte Spill
	movl	%r14d, %ebx
	sarl	$31, %ebx
	shrl	$29, %ebx
	addl	%r14d, %ebx
	sarl	$3, %ebx
	movq	832(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movss	1128(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$1, %eax
	movl	$-1, %ecx
	cmoval	%eax, %ecx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	setbe	%cl
	cmpl	$0, 188(%r15)
	movq	24448(%rbp), %rax
	movl	116(%rax), %eax
	movq	%r15, %r13
	movq	%r13, 80(%rsp)          # 8-byte Spill
	je	.LBB2_12
# BB#9:                                 # %land.lhs.true.34
	movb	%cl, 56(%rsp)           # 1-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jne	.LBB2_14
# BB#10:                                # %land.lhs.true.37
	movq	944(%rsp), %rax
	cmpq	952(%rsp), %rax
	je	.LBB2_13
# BB#11:                                # %if.then.40
	movl	72(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r15d
	sarl	$31, %r15d
	shrl	$29, %r15d
	addl	%eax, %r15d
	sarl	$3, %r15d
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movq	8(%rax), %rdi
	movl	%r15d, %esi
	movl	136(%rsp), %r13d        # 4-byte Reload
	imull	%r13d, %esi
	movl	68(%rsp), %r14d         # 4-byte Reload
	imull	%r14d, %esi
	movl	%esi, 72(%rsp)          # 4-byte Spill
	movl	$.L__func__.image_render_interpolate_icc, %edx
	callq	*64(%rdi)
	movq	%rax, %r12
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movl	96(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	imull	%r13d, %eax
	movl	%r13d, 24(%rsp)
	movl	%eax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movzbl	%cl, %esi
	movzbl	%r15b, %r15d
	leaq	880(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r15d, %edx
	callq	gsicc_init_buffer
	movl	%r14d, %eax
	imull	%r13d, %eax
	movl	%r13d, 24(%rsp)
	movl	%eax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movzbl	%r14b, %esi
	leaq	840(%rsp), %r14
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movl	%r15d, %edx
	callq	gsicc_init_buffer
	movq	944(%rsp), %r8
	incq	%r8
	movq	24448(%rbp), %rsi
	movq	168(%rsp), %rdi         # 8-byte Reload
	leaq	880(%rsp), %rdx
	movq	%r14, %rcx
	movq	%r12, %r9
	callq	*8(%rsi)
	movq	80(%rsp), %r13          # 8-byte Reload
	leaq	-1(%r12), %rax
	movq	%rax, 944(%rsp)
	movslq	72(%rsp), %rax          # 4-byte Folded Reload
	leaq	-1(%r12,%rax), %rax
	movq	%rax, 952(%rsp)
	jmp	.LBB2_14
.LBB2_12:                               # %if.else.62
	movb	%cl, 56(%rsp)           # 1-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jne	.LBB2_14
.LBB2_13:                               # %if.then.66
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%r13, %r12
	movq	8(%rax), %rdi
	movq	152(%rsp), %r15         # 8-byte Reload
	movl	%r15d, %r14d
	movl	68(%rsp), %r13d         # 4-byte Reload
	imull	%r13d, %r14d
	leal	(%r14,%r14), %esi
	movl	$.L__func__.image_render_interpolate_icc, %edx
	callq	*64(%rdi)
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	96(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	imull	%r15d, %eax
	movl	%r15d, 24(%rsp)
	movl	%eax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movzbl	%cl, %esi
	leaq	880(%rsp), %rdi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	gsicc_init_buffer
	movl	%r15d, 24(%rsp)
	movl	%r14d, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movzbl	%r13b, %esi
	leaq	840(%rsp), %rdi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	gsicc_init_buffer
	movq	%r12, %r13
.LBB2_14:                               # %for.cond.preheader
	movl	112(%rsp), %esi         # 4-byte Reload
	movl	%esi, %eax
	imull	%ebx, %eax
	cmpl	$8, %eax
	cltq
	movl	$8, %ecx
	cmovaq	%rax, %rcx
	movq	152(%rsp), %rdx         # 8-byte Reload
	imulq	%rdx, %rcx
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	-1(%rax,%rcx), %rdi
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	imull	%ebx, %edx
	imull	%esi, %edx
	movslq	%edx, %rax
	movq	%rdi, %r15
	subq	%rax, %r15
	movl	108(%rsp), %r12d        # 4-byte Reload
	testl	%r12d, %r12d
	sete	%al
	movzbl	%al, %ecx
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	movl	1492(%rbp), %ebx
	movq	%rdi, 936(%rsp)
	movq	%r15, 928(%rsp)
	movq	(%r13), %rax
	leaq	944(%rsp), %rsi
	leaq	920(%rsp), %rdx
	movq	%r13, %rdi
	callq	*16(%rax)
	movl	%eax, %r14d
	cmpl	$-1, %r14d
	jge	.LBB2_16
# BB#15:
	movl	$-12, %eax
	jmp	.LBB2_40
.LBB2_16:                               # %if.end.113.preheader
	movzbl	56(%rsp), %eax          # 1-byte Folded Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	subl	%eax, %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	leaq	1(%r15), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%r15, 112(%rsp)         # 8-byte Spill
	movl	128(%rsp), %eax         # 4-byte Reload
	orl	132(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movslq	68(%rsp), %rax          # 4-byte Folded Reload
	addq	%rax, %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	72(%rsp), %r15d         # 4-byte Reload
	jmp	.LBB2_17
.LBB2_32:                               # %if.end.174
                                        #   in Loop: Header=BB2_17 Depth=1
	cmpl	$-1, %r14d
	jmp	.LBB2_33
	.align	16, 0x90
.LBB2_17:                               # %if.end.113
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_24 Depth 2
	movq	928(%rsp), %rax
	cmpq	936(%rsp), %rax
	jne	.LBB2_31
# BB#18:                                # %if.then.118
                                        #   in Loop: Header=BB2_17 Depth=1
	cmpl	$0, 204(%r13)
	je	.LBB2_30
# BB#19:                                # %do.end
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	movl	124(%rcx), %eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	movq	24448(%rbp), %rsi
	cmpl	$0, 116(%rsi)
	movq	56(%rsp), %rax          # 8-byte Reload
	jne	.LBB2_22
# BB#20:                                # %lor.lhs.false.128
                                        #   in Loop: Header=BB2_17 Depth=1
	cmpl	$0, 188(%rcx)
	movq	56(%rsp), %rax          # 8-byte Reload
	jne	.LBB2_22
# BB#21:                                # %if.else.133
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	168(%rsp), %rdi         # 8-byte Reload
	leaq	880(%rsp), %rdx
	leaq	840(%rsp), %rcx
	movq	56(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	%r15, %r9
	callq	*8(%rsi)
	movq	%r15, %rax
	.align	16, 0x90
.LBB2_22:                               # %if.end.138
                                        #   in Loop: Header=BB2_17 Depth=1
	cmpl	$0, 152(%rsp)           # 4-byte Folded Reload
	jle	.LBB2_30
# BB#23:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB2_17 Depth=1
	imull	44(%rsp), %ebx          # 4-byte Folded Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	leal	(%rbx,%rcx), %r15d
	movl	76(%rsp), %r12d         # 4-byte Reload
	addl	%r12d, 152(%rsp)        # 4-byte Folded Spill
	movq	80(%rsp), %rcx          # 8-byte Reload
	movl	196(%rcx), %ecx
	imull	68(%rsp), %ecx          # 4-byte Folded Reload
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,2), %r13
	.align	16, 0x90
.LBB2_24:                               # %for.body
                                        #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 144(%rsp)           # 4-byte Folded Reload
	je	.LBB2_26
# BB#25:                                # %if.then.149
                                        #   in Loop: Header=BB2_24 Depth=2
	movl	$1, (%rsp)
	movq	%r13, %rdi
	leaq	176(%rsp), %rsi
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	168(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rcx
	movl	128(%rsp), %r8d         # 4-byte Reload
	movl	132(%rsp), %r9d         # 4-byte Reload
	callq	cmap_transfer_halftone
	jmp	.LBB2_28
	.align	16, 0x90
.LBB2_26:                               # %if.else.150
                                        #   in Loop: Header=BB2_24 Depth=2
	movq	168(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*1552(%rbx)
	cmpq	$-1, %rax
	je	.LBB2_28
# BB#27:                                # %if.then.155
                                        #   in Loop: Header=BB2_24 Depth=2
	movq	%rax, 184(%rsp)
	movq	$gx_dc_type_data_pure, 176(%rsp)
.LBB2_28:                               # %if.end.157
                                        #   in Loop: Header=BB2_24 Depth=2
	movq	176(%rsp), %rax
	movl	164(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	leaq	176(%rsp), %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movq	%rbx, %r9
	callq	*40(%rax)
	testl	%eax, %eax
	js	.LBB2_40
# BB#29:                                # %cleanup.thread
                                        #   in Loop: Header=BB2_24 Depth=2
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	incl	%r12d
	addq	136(%rsp), %r13         # 8-byte Folded Reload
	cmpl	152(%rsp), %r12d        # 4-byte Folded Reload
	jl	.LBB2_24
.LBB2_30:                               # %cleanup.171.thread
                                        #   in Loop: Header=BB2_17 Depth=1
	incl	1492(%rbp)
	movl	108(%rsp), %r12d        # 4-byte Reload
	movq	80(%rsp), %r13          # 8-byte Reload
	movl	72(%rsp), %r15d         # 4-byte Reload
.LBB2_31:                               # %if.end.174
                                        #   in Loop: Header=BB2_17 Depth=1
	testl	%r14d, %r14d
	jne	.LBB2_32
# BB#36:                                # %land.lhs.true.177
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	944(%rsp), %rax
	cmpq	952(%rsp), %rax
.LBB2_33:                               # %if.end.174
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	je	.LBB2_37
# BB#34:                                # %cleanup.187
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	1492(%rbp), %ebx
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 936(%rsp)
	movq	%rax, 928(%rsp)
	movq	(%r13), %rax
	movq	%r13, %rdi
	leaq	944(%rsp), %rsi
	leaq	920(%rsp), %rdx
	movl	%r15d, %ecx
	callq	*16(%rax)
	movl	%eax, %r14d
	cmpl	$-1, %r14d
	jge	.LBB2_17
# BB#35:
	movl	$-12, %eax
	jmp	.LBB2_40
.LBB2_37:                               # %for.end.194
	movq	48(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB2_39
# BB#38:                                # %if.then.197
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L__func__.image_render_interpolate_icc, %edx
	callq	*24(%rdi)
.LBB2_39:                               # %cleanup.cont.221
	testl	%r12d, %r12d
	setne	%al
	movzbl	%al, %eax
.LBB2_40:                               # %cleanup.225
	addq	$968, %rsp              # imm = 0x3C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_render_interpolate_landscape_icc, .Lfunc_end2-image_render_interpolate_landscape_icc
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1191178240              # float 32760
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	image_render_interpolate,@function
image_render_interpolate:               # @image_render_interpolate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$1224, %rsp             # imm = 0x4C8
.Ltmp45:
	.cfi_def_cfa_offset 1280
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%r9, 216(%rsp)          # 8-byte Spill
	movl	%r8d, %r13d
	movl	%edx, %ebx
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movq	1336(%r14), %r15
	movq	1216(%r14), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	1224(%r14), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movl	1304(%r14), %ecx
	movl	%ecx, 140(%rsp)         # 4-byte Spill
	movslq	108(%r15), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	movq	1248(%r14), %rcx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movq	64(%rax), %rax
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	4(%rax), %ecx
.LBB3_2:                                # %if.end
	movl	%ecx, 248(%rsp)         # 4-byte Spill
	movb	$1, %al
	cmpb	$0, 1271(%r14)
	jne	.LBB3_4
# BB#3:                                 # %lor.lhs.false
	movq	240(%rsp), %rdi         # 8-byte Reload
	callq	gs_color_space_is_CIE
	orl	248(%rsp), %eax         # 4-byte Folded Reload
	setne	%al
.LBB3_4:                                # %lor.end
	movzbl	%al, %r8d
	xorl	$1, %r8d
	movl	$0, (%rsp)
	leaq	1200(%rsp), %r9
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	%ebx, %edx
	movl	%r13d, %ecx
	callq	initial_decode
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpl	$10, (%rax)
	sete	196(%rsp)               # 1-byte Folded Spill
	movl	1500(%r14), %eax
	movl	%eax, 172(%rsp)         # 4-byte Spill
	movq	%r15, 160(%rsp)         # 8-byte Spill
	movslq	156(%r15), %rdi
	movq	%rdi, 176(%rsp)         # 8-byte Spill
	movl	140(%r15), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%ecx, %eax
	sarl	$3, %eax
	movq	216(%rsp), %rcx         # 8-byte Reload
	movzwl	108(%rcx), %ecx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movss	1132(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%edx, %edx
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$1, %esi
	movl	$-1, %ecx
	cmovbel	%ecx, %esi
	movl	%esi, 152(%rsp)         # 4-byte Spill
	cmovbel	%ecx, %edx
	addl	1504(%r14), %edx
	movl	%edx, 156(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	movq	232(%rsp), %rsi         # 8-byte Reload
	imull	%esi, %ecx
	cmpl	$8, %ecx
	movslq	%ecx, %rcx
	movl	$8, %edx
	cmovaq	%rcx, %rdx
	imulq	%rdi, %rdx
	movq	208(%rsp), %rcx         # 8-byte Reload
	leaq	-1(%rcx,%rdx), %rdx
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	movl	%edi, %ecx
	imull	%esi, %ecx
	imull	%eax, %ecx
	movslq	%ecx, %rax
	movq	%rdx, %r12
	subq	%rax, %r12
	testl	%r13d, %r13d
	sete	%al
	movzbl	%al, %ebp
	cmpl	$0, 248(%rsp)           # 4-byte Folded Reload
	movq	%r15, %rbx
	setne	195(%rsp)               # 1-byte Folded Spill
	movl	1492(%r14), %r13d
	movq	%rdx, 1192(%rsp)
	movq	%r12, 1184(%rsp)
	movq	(%rbx), %rax
	leaq	1176(%rsp), %rdx
	movq	%rbx, %rdi
	leaq	1200(%rsp), %rsi
	movl	%ebp, %ecx
	callq	*16(%rax)
	movl	%eax, %edx
	cmpl	$-1, %edx
	movq	%r14, 248(%rsp)         # 8-byte Spill
	jl	.LBB3_154
# BB#5:                                 # %if.end.55.preheader
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movq	176(%rsp), %rsi         # 8-byte Reload
	imull	%esi, %ecx
	addl	$63, %ecx
	sarl	$6, %ecx
	shll	$3, %ecx
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	leaq	1(%r12), %r14
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movb	196(%rsp), %cl          # 1-byte Reload
	orb	%cl, 195(%rsp)          # 1-byte Folded Spill
	movl	%eax, %ecx
	shrl	$2, %ecx
	movl	%ecx, 196(%rsp)         # 4-byte Spill
	shrq	$3, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	248(%rsp), %rax         # 8-byte Reload
	leaq	1784(%rax), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leaq	1200(%rsp), %r15
                                        # implicit-def: EAX
	movl	%eax, 116(%rsp)         # 4-byte Spill
.LBB3_6:                                # %if.end.55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_17 Depth 4
                                        #         Child Loop BB3_37 Depth 4
                                        #         Child Loop BB3_62 Depth 4
                                        #         Child Loop BB3_40 Depth 4
	movq	1184(%rsp), %rax
	cmpq	1192(%rsp), %rax
	jne	.LBB3_149
# BB#7:                                 # %if.then.60
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%ebp, 176(%rsp)         # 4-byte Spill
	cmpl	$0, 204(%rbx)
	je	.LBB3_148
# BB#8:                                 # %if.then.60
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	124(%rbx), %r15d
	testl	%r15d, %r15d
	jle	.LBB3_148
# BB#9:                                 # %for.body.lr.ph.lr.ph
                                        #   in Loop: Header=BB3_6 Depth=1
	imull	152(%rsp), %r13d        # 4-byte Folded Reload
	addl	156(%rsp), %r13d        # 4-byte Folded Reload
	movl	%r13d, 68(%rsp)         # 4-byte Spill
	movl	172(%rsp), %ecx         # 4-byte Reload
	addl	%ecx, %r15d
	movslq	196(%rbx), %rax
	imulq	232(%rsp), %rax         # 8-byte Folded Reload
	leaq	(%r14,%rax,2), %r13
	movl	$0, 136(%rsp)           # 4-byte Folded Spill
	movl	%ecx, %eax
	movl	$0, 144(%rsp)           # 4-byte Folded Spill
	movq	208(%rsp), %rbp         # 8-byte Reload
.LBB3_10:                               # %for.body.lr.ph
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_17 Depth 4
                                        #         Child Loop BB3_37 Depth 4
                                        #         Child Loop BB3_62 Depth 4
                                        #         Child Loop BB3_40 Depth 4
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movq	%r12, 72(%rsp)          # 8-byte Spill
	movl	%eax, %r14d
	jmp	.LBB3_11
.LBB3_111:                              # %if.else.508
                                        #   in Loop: Header=BB3_11 Depth=3
	movl	%ecx, %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movl	$8, %ecx
	subl	%eax, %ecx
	shlq	%cl, %rdx
	movl	136(%rsp), %eax         # 4-byte Reload
	orb	%al, %dl
	jmp	.LBB3_114
.LBB3_118:                              # %if.then.535
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rdx, %rcx
	shrq	$4, %rcx
	movb	%cl, (%rbp)
	incq	%rbp
.LBB3_113:                              # %if.then.521
                                        #   in Loop: Header=BB3_11 Depth=3
	shlq	$4, %rdx
	movl	%eax, 144(%rsp)         # 4-byte Spill
.LBB3_114:                              # %do.end.586
                                        #   in Loop: Header=BB3_11 Depth=3
	movb	%dl, %al
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB3_128
	.align	16, 0x90
.LBB3_11:                               # %for.body
                                        #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_17 Depth 4
                                        #         Child Loop BB3_37 Depth 4
                                        #         Child Loop BB3_62 Depth 4
                                        #         Child Loop BB3_40 Depth 4
	movl	%edx, 132(%rsp)         # 4-byte Spill
	movq	240(%rsp), %r12         # 8-byte Reload
	movq	(%r12), %rcx
	cmpl	$10, (%rcx)
	jne	.LBB3_13
# BB#12:                                # %if.then.78
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	40(%rax), %r12
	movq	(%r12), %rcx
.LBB3_13:                               # %if.end.80
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%r12, %rdi
	movq	200(%rsp), %rsi         # 8-byte Reload
	callq	*48(%rcx)
	cmpq	%r12, %rax
	jne	.LBB3_16
# BB#14:                                # %if.end.80
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.LBB3_16
# BB#15:                                # %if.then.92
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	(%r12), %rax
	movl	$1, %r9d
	movq	%r13, %rdi
	movq	%r12, %rsi
	leaq	520(%rsp), %rdx
	movq	200(%rsp), %rcx         # 8-byte Reload
	movq	216(%rsp), %r8          # 8-byte Reload
	callq	*64(%rax)
	jmp	.LBB3_31
	.align	16, 0x90
.LBB3_16:                               # %if.else.95
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%r12, %rdi
	callq	gs_color_space_num_components
	testl	%eax, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	264(%rsp), %rdx
	movq	%r13, %rsi
	movb	195(%rsp), %r8b         # 1-byte Reload
	movss	.LCPI3_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movsd	.LCPI3_1(%rip), %xmm4   # xmm4 = mem[0],zero
	jle	.LBB3_26
	.align	16, 0x90
.LBB3_17:                               # %for.body.100
                                        #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movswl	(%rsi), %edi
	testb	%r8b, %r8b
	jne	.LBB3_18
# BB#19:                                # %if.else.110
                                        #   in Loop: Header=BB3_17 Depth=4
	movq	%rbp, %rbx
	movl	68(%rcx), %ebp
	cmpl	$2, %ebp
	je	.LBB3_23
# BB#20:                                # %if.else.110
                                        #   in Loop: Header=BB3_17 Depth=4
	cmpl	$1, %ebp
	jne	.LBB3_21
# BB#22:                                # %sw.bb.4.i
                                        #   in Loop: Header=BB3_17 Depth=4
	movl	%edi, %ebp
	shrl	$12, %ebp
	addl	%edi, %ebp
	shrl	$11, %ebp
	andl	$15, %ebp
	movl	(%rcx,%rbp,4), %edi
	movl	%edi, (%rdx)
	jmp	.LBB3_24
.LBB3_23:                               # %sw.bb.20.i
                                        #   in Loop: Header=BB3_17 Depth=4
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	64(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm2
	divss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm4, %xmm2
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rdx)
.LBB3_24:                               # %for.inc
                                        #   in Loop: Header=BB3_17 Depth=4
	movq	%rbx, %rbp
	jmp	.LBB3_25
.LBB3_21:                               # %if.else.110
                                        #   in Loop: Header=BB3_17 Depth=4
	testl	%ebp, %ebp
	movq	%rbx, %rbp
	jne	.LBB3_25
	.align	16, 0x90
.LBB3_18:                               # %if.then.104
                                        #   in Loop: Header=BB3_17 Depth=4
	cvtsi2ssl	%edi, %xmm0
	divss	%xmm3, %xmm0
	movss	%xmm0, (%rdx)
.LBB3_25:                               # %for.inc
                                        #   in Loop: Header=BB3_17 Depth=4
	addq	$2, %rsi
	addq	$4, %rdx
	addq	$332, %rcx              # imm = 0x14C
	decl	%eax
	jne	.LBB3_17
.LBB3_26:                               # %for.end
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%r12, %rdi
	callq	gs_color_space_is_ICC
	testl	%eax, %eax
	je	.LBB3_30
# BB#27:                                # %land.lhs.true.116
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	64(%r12), %rax
	testq	%rax, %rax
	je	.LBB3_30
# BB#28:                                # %land.lhs.true.120
                                        #   in Loop: Header=BB3_11 Depth=3
	cmpl	$0, 4(%rax)
	je	.LBB3_30
# BB#29:                                # %if.then.124
                                        #   in Loop: Header=BB3_11 Depth=3
	movl	$1, %r9d
	leaq	256(%rsp), %rdi
	movq	%r12, %rsi
	leaq	520(%rsp), %rdx
	movq	200(%rsp), %rcx         # 8-byte Reload
	movq	216(%rsp), %r8          # 8-byte Reload
	callq	gx_remap_ICC_imagelab
	jmp	.LBB3_31
	.align	16, 0x90
.LBB3_30:                               # %if.else.126
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	(%r12), %rax
	movl	$1, %r9d
	leaq	256(%rsp), %rdi
	movq	%r12, %rsi
	leaq	520(%rsp), %rdx
	movq	200(%rsp), %rcx         # 8-byte Reload
	movq	216(%rsp), %r8          # 8-byte Reload
	callq	*72(%rax)
.LBB3_31:                               # %if.end.130
                                        #   in Loop: Header=BB3_11 Depth=3
	testl	%eax, %eax
	js	.LBB3_138
# BB#32:                                # %if.end.134
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rbp, %rbx
	movq	520(%rsp), %rbp
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, %rbp
	jne	.LBB3_132
# BB#33:                                # %if.then.138
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	528(%rsp), %rdx
	movq	232(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	movq	%rbx, %rbp
	je	.LBB3_39
# BB#34:                                # %if.then.138
                                        #   in Loop: Header=BB3_11 Depth=3
	cmpl	$3, %eax
	jne	.LBB3_35
# BB#61:                                # %do.body.242.preheader
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rdx, %rax
	shlq	$4, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %rdi
	shrq	$8, %rdi
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	shrq	$56, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %r11
	shrq	$48, %r11
	movq	%rdx, %r12
	shrq	$40, %r12
	movq	%rdx, %rsi
	shrq	$32, %rsi
	movq	%rdx, %r8
	shrq	$24, %r8
	movq	%rdx, %r9
	shrq	$16, %r9
	addq	$6, %r13
	incl	%r14d
	movl	%r14d, %eax
	movq	%r13, %rcx
	jmp	.LBB3_62
.LBB3_39:                               # %do.body.140.preheader
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rdx, %rax
	shlq	$4, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %rdi
	shrq	$8, %rdi
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	shrq	$56, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %r11
	shrq	$48, %r11
	movq	%rdx, %r12
	shrq	$40, %r12
	movq	%rdx, %rsi
	shrq	$32, %rsi
	movq	%rdx, %r8
	shrq	$24, %r8
	movq	%rdx, %r9
	shrq	$16, %r9
	addq	$2, %r13
	incl	%r14d
	movl	%r14d, %eax
	movq	%r13, %rcx
	jmp	.LBB3_40
.LBB3_35:                               # %if.then.138
                                        #   in Loop: Header=BB3_11 Depth=3
	cmpl	$4, %eax
	jne	.LBB3_107
# BB#36:                                # %do.body.367.preheader
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rdx, %rax
	shlq	$4, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %rdi
	shrq	$8, %rdi
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	shrq	$56, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %r11
	shrq	$48, %r11
	movq	%rdx, %r12
	shrq	$40, %r12
	movq	%rdx, %rsi
	shrq	$32, %rsi
	movq	%rdx, %r8
	shrq	$24, %r8
	movq	%rdx, %r9
	shrq	$16, %r9
	addq	$8, %r13
	incl	%r14d
	movl	%r14d, %eax
	movq	%r13, %rcx
	jmp	.LBB3_37
.LBB3_107:                              # %do.body.495
                                        #   in Loop: Header=BB3_11 Depth=3
	movl	$-15, %eax
	movl	196(%rsp), %esi         # 4-byte Reload
	movl	%esi, %ecx
	cmpl	$16, %esi
	ja	.LBB3_138
# BB#108:                               # %do.body.495
                                        #   in Loop: Header=BB3_11 Depth=3
	jmpq	*.LJTI3_3(,%rcx,8)
.LBB3_109:                              # %sw.bb.497
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	144(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	cmpl	$8, %ecx
	jne	.LBB3_111
# BB#110:                               # %if.then.501
                                        #   in Loop: Header=BB3_11 Depth=3
	movl	136(%rsp), %eax         # 4-byte Reload
	orb	%al, %dl
	movb	%dl, (%rbp)
	incq	%rbp
	movl	$0, 144(%rsp)           # 4-byte Folded Spill
	movl	$0, 136(%rsp)           # 4-byte Folded Spill
	jmp	.LBB3_128
.LBB3_44:                               # %if.else.151
                                        #   in Loop: Header=BB3_40 Depth=4
	movl	%ecx, %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movl	$8, %ecx
	subl	%eax, %ecx
	movq	%rdx, %rax
	shlq	%cl, %rax
	movl	136(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %al
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB3_59
.LBB3_49:                               # %if.then.175
                                        #   in Loop: Header=BB3_40 Depth=4
	movq	40(%rsp), %rcx          # 8-byte Reload
	movb	%cl, (%rbp)
	incq	%rbp
.LBB3_46:                               #   in Loop: Header=BB3_40 Depth=4
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB3_59
	.align	16, 0x90
.LBB3_40:                               # %do.body.140
                                        #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, %r13
	movl	%eax, %r14d
	movl	$-15, %eax
	movl	196(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %ecx
	cmpl	$16, %ebx
	ja	.LBB3_138
# BB#41:                                # %do.body.140
                                        #   in Loop: Header=BB3_40 Depth=4
	jmpq	*.LJTI3_2(,%rcx,8)
.LBB3_42:                               # %sw.bb.142
                                        #   in Loop: Header=BB3_40 Depth=4
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	144(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	cmpl	$8, %ecx
	jne	.LBB3_44
# BB#43:                                # %if.then.146
                                        #   in Loop: Header=BB3_40 Depth=4
	movl	136(%rsp), %eax         # 4-byte Reload
	orb	%dl, %al
	movb	%al, (%rbp)
	incq	%rbp
	movl	$0, 144(%rsp)           # 4-byte Folded Spill
	movl	$0, 136(%rsp)           # 4-byte Folded Spill
	jmp	.LBB3_59
.LBB3_45:                               # %sw.bb.159
                                        #   in Loop: Header=BB3_40 Depth=4
	movl	144(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB3_46
# BB#47:                                # %if.else.164
                                        #   in Loop: Header=BB3_40 Depth=4
	movl	136(%rsp), %ecx         # 4-byte Reload
	orb	%dl, %cl
	movb	%cl, (%rbp)
	incq	%rbp
	movl	%eax, 144(%rsp)         # 4-byte Spill
	jmp	.LBB3_59
.LBB3_48:                               # %sw.bb.172
                                        #   in Loop: Header=BB3_40 Depth=4
	movl	144(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB3_49
# BB#50:                                # %if.else.181
                                        #   in Loop: Header=BB3_40 Depth=4
	movl	136(%rsp), %ecx         # 4-byte Reload
	orb	%dil, %cl
	movb	%cl, (%rbp)
	movb	%dl, 1(%rbp)
	addq	$2, %rbp
	movl	%eax, 144(%rsp)         # 4-byte Spill
	jmp	.LBB3_59
.LBB3_51:                               # %sw.bb.192
                                        #   in Loop: Header=BB3_40 Depth=4
	movq	56(%rsp), %rax          # 8-byte Reload
	movb	%al, (%rbp)
	incq	%rbp
.LBB3_52:                               # %sw.bb.196
                                        #   in Loop: Header=BB3_40 Depth=4
	movb	%r11b, (%rbp)
	incq	%rbp
.LBB3_53:                               # %sw.bb.200
                                        #   in Loop: Header=BB3_40 Depth=4
	movb	%r12b, (%rbp)
	incq	%rbp
.LBB3_54:                               # %sw.bb.204
                                        #   in Loop: Header=BB3_40 Depth=4
	movb	%sil, (%rbp)
	incq	%rbp
.LBB3_55:                               # %sw.bb.208
                                        #   in Loop: Header=BB3_40 Depth=4
	movb	%r8b, (%rbp)
	incq	%rbp
.LBB3_56:                               # %sw.bb.212
                                        #   in Loop: Header=BB3_40 Depth=4
	movb	%r9b, (%rbp)
	incq	%rbp
.LBB3_57:                               # %sw.bb.216
                                        #   in Loop: Header=BB3_40 Depth=4
	movb	%dil, (%rbp)
	incq	%rbp
.LBB3_58:                               # %sw.bb.220
                                        #   in Loop: Header=BB3_40 Depth=4
	movb	%dl, (%rbp)
	incq	%rbp
.LBB3_59:                               # %do.end.227
                                        #   in Loop: Header=BB3_40 Depth=4
	cmpl	%r15d, %r14d
	jge	.LBB3_129
# BB#60:                                # %land.rhs
                                        #   in Loop: Header=BB3_40 Depth=4
	movq	%rbp, %rbx
	movzwl	(%r13), %ebp
	movzwl	-2(%r13), %r10d
	leaq	2(%r13), %rcx
	leal	1(%r14), %eax
	cmpl	%ebp, %r10d
	movq	%rbx, %rbp
	je	.LBB3_40
	jmp	.LBB3_129
.LBB3_66:                               # %if.else.255
                                        #   in Loop: Header=BB3_62 Depth=4
	movl	%ecx, %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movl	$8, %ecx
	subl	%eax, %ecx
	movq	%rdx, %rax
	shlq	%cl, %rax
	movl	136(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %al
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB3_81
.LBB3_71:                               # %if.then.282
                                        #   in Loop: Header=BB3_62 Depth=4
	movq	40(%rsp), %rcx          # 8-byte Reload
	movb	%cl, (%rbp)
	incq	%rbp
.LBB3_68:                               #   in Loop: Header=BB3_62 Depth=4
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB3_81
	.align	16, 0x90
.LBB3_62:                               # %do.body.242
                                        #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, %r13
	movl	%eax, %r14d
	movl	$-15, %eax
	movl	196(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %ecx
	cmpl	$16, %ebx
	ja	.LBB3_138
# BB#63:                                # %do.body.242
                                        #   in Loop: Header=BB3_62 Depth=4
	jmpq	*.LJTI3_1(,%rcx,8)
.LBB3_64:                               # %sw.bb.244
                                        #   in Loop: Header=BB3_62 Depth=4
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	144(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	cmpl	$8, %ecx
	jne	.LBB3_66
# BB#65:                                # %if.then.248
                                        #   in Loop: Header=BB3_62 Depth=4
	movl	136(%rsp), %eax         # 4-byte Reload
	orb	%dl, %al
	movb	%al, (%rbp)
	incq	%rbp
	movl	$0, 144(%rsp)           # 4-byte Folded Spill
	movl	$0, 136(%rsp)           # 4-byte Folded Spill
	jmp	.LBB3_81
.LBB3_67:                               # %sw.bb.265
                                        #   in Loop: Header=BB3_62 Depth=4
	movl	144(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB3_68
# BB#69:                                # %if.else.271
                                        #   in Loop: Header=BB3_62 Depth=4
	movl	136(%rsp), %ecx         # 4-byte Reload
	orb	%dl, %cl
	movb	%cl, (%rbp)
	incq	%rbp
	movl	%eax, 144(%rsp)         # 4-byte Spill
	jmp	.LBB3_81
.LBB3_70:                               # %sw.bb.279
                                        #   in Loop: Header=BB3_62 Depth=4
	movl	144(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB3_71
# BB#72:                                # %if.else.288
                                        #   in Loop: Header=BB3_62 Depth=4
	movl	136(%rsp), %ecx         # 4-byte Reload
	orb	%dil, %cl
	movb	%cl, (%rbp)
	movb	%dl, 1(%rbp)
	addq	$2, %rbp
	movl	%eax, 144(%rsp)         # 4-byte Spill
	jmp	.LBB3_81
.LBB3_73:                               # %sw.bb.299
                                        #   in Loop: Header=BB3_62 Depth=4
	movq	56(%rsp), %rax          # 8-byte Reload
	movb	%al, (%rbp)
	incq	%rbp
.LBB3_74:                               # %sw.bb.303
                                        #   in Loop: Header=BB3_62 Depth=4
	movb	%r11b, (%rbp)
	incq	%rbp
.LBB3_75:                               # %sw.bb.307
                                        #   in Loop: Header=BB3_62 Depth=4
	movb	%r12b, (%rbp)
	incq	%rbp
.LBB3_76:                               # %sw.bb.311
                                        #   in Loop: Header=BB3_62 Depth=4
	movb	%sil, (%rbp)
	incq	%rbp
.LBB3_77:                               # %sw.bb.315
                                        #   in Loop: Header=BB3_62 Depth=4
	movb	%r8b, (%rbp)
	incq	%rbp
.LBB3_78:                               # %sw.bb.319
                                        #   in Loop: Header=BB3_62 Depth=4
	movb	%r9b, (%rbp)
	incq	%rbp
.LBB3_79:                               # %sw.bb.323
                                        #   in Loop: Header=BB3_62 Depth=4
	movb	%dil, (%rbp)
	incq	%rbp
.LBB3_80:                               # %sw.bb.327
                                        #   in Loop: Header=BB3_62 Depth=4
	movb	%dl, (%rbp)
	incq	%rbp
.LBB3_81:                               # %do.end.336
                                        #   in Loop: Header=BB3_62 Depth=4
	cmpl	%r15d, %r14d
	jge	.LBB3_129
# BB#82:                                # %land.lhs.true.342
                                        #   in Loop: Header=BB3_62 Depth=4
	movzwl	(%r13), %eax
	movzwl	-6(%r13), %ecx
	cmpl	%eax, %ecx
	jne	.LBB3_129
# BB#83:                                # %land.lhs.true.349
                                        #   in Loop: Header=BB3_62 Depth=4
	movzwl	2(%r13), %eax
	movzwl	-4(%r13), %ecx
	cmpl	%eax, %ecx
	jne	.LBB3_129
# BB#84:                                # %land.rhs.356
                                        #   in Loop: Header=BB3_62 Depth=4
	movq	%rbp, %rbx
	movzwl	4(%r13), %ebp
	movzwl	-2(%r13), %r10d
	leaq	6(%r13), %rcx
	leal	1(%r14), %eax
	cmpl	%ebp, %r10d
	movq	%rbx, %rbp
	je	.LBB3_62
	jmp	.LBB3_129
.LBB3_87:                               # %if.else.380
                                        #   in Loop: Header=BB3_37 Depth=4
	movl	%ecx, %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movl	$8, %ecx
	subl	%eax, %ecx
	movq	%rdx, %rax
	shlq	%cl, %rax
	movl	136(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %al
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB3_102
.LBB3_92:                               # %if.then.407
                                        #   in Loop: Header=BB3_37 Depth=4
	movq	40(%rsp), %rcx          # 8-byte Reload
	movb	%cl, (%rbp)
	incq	%rbp
.LBB3_89:                               #   in Loop: Header=BB3_37 Depth=4
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB3_102
	.align	16, 0x90
.LBB3_37:                               # %do.body.367
                                        #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, %r13
	movl	%eax, %r14d
	movl	$-15, %eax
	movl	196(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %ecx
	cmpl	$16, %ebx
	ja	.LBB3_138
# BB#38:                                # %do.body.367
                                        #   in Loop: Header=BB3_37 Depth=4
	jmpq	*.LJTI3_0(,%rcx,8)
.LBB3_85:                               # %sw.bb.369
                                        #   in Loop: Header=BB3_37 Depth=4
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	144(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	cmpl	$8, %ecx
	jne	.LBB3_87
# BB#86:                                # %if.then.373
                                        #   in Loop: Header=BB3_37 Depth=4
	movl	136(%rsp), %eax         # 4-byte Reload
	orb	%dl, %al
	movb	%al, (%rbp)
	incq	%rbp
	movl	$0, 144(%rsp)           # 4-byte Folded Spill
	movl	$0, 136(%rsp)           # 4-byte Folded Spill
	jmp	.LBB3_102
.LBB3_88:                               # %sw.bb.390
                                        #   in Loop: Header=BB3_37 Depth=4
	movl	144(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB3_89
# BB#90:                                # %if.else.396
                                        #   in Loop: Header=BB3_37 Depth=4
	movl	136(%rsp), %ecx         # 4-byte Reload
	orb	%dl, %cl
	movb	%cl, (%rbp)
	incq	%rbp
	movl	%eax, 144(%rsp)         # 4-byte Spill
	jmp	.LBB3_102
.LBB3_91:                               # %sw.bb.404
                                        #   in Loop: Header=BB3_37 Depth=4
	movl	144(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB3_92
# BB#93:                                # %if.else.413
                                        #   in Loop: Header=BB3_37 Depth=4
	movl	136(%rsp), %ecx         # 4-byte Reload
	orb	%dil, %cl
	movb	%cl, (%rbp)
	movb	%dl, 1(%rbp)
	addq	$2, %rbp
	movl	%eax, 144(%rsp)         # 4-byte Spill
	jmp	.LBB3_102
.LBB3_94:                               # %sw.bb.424
                                        #   in Loop: Header=BB3_37 Depth=4
	movq	56(%rsp), %rax          # 8-byte Reload
	movb	%al, (%rbp)
	incq	%rbp
.LBB3_95:                               # %sw.bb.428
                                        #   in Loop: Header=BB3_37 Depth=4
	movb	%r11b, (%rbp)
	incq	%rbp
.LBB3_96:                               # %sw.bb.432
                                        #   in Loop: Header=BB3_37 Depth=4
	movb	%r12b, (%rbp)
	incq	%rbp
.LBB3_97:                               # %sw.bb.436
                                        #   in Loop: Header=BB3_37 Depth=4
	movb	%sil, (%rbp)
	incq	%rbp
.LBB3_98:                               # %sw.bb.440
                                        #   in Loop: Header=BB3_37 Depth=4
	movb	%r8b, (%rbp)
	incq	%rbp
.LBB3_99:                               # %sw.bb.444
                                        #   in Loop: Header=BB3_37 Depth=4
	movb	%r9b, (%rbp)
	incq	%rbp
.LBB3_100:                              # %sw.bb.448
                                        #   in Loop: Header=BB3_37 Depth=4
	movb	%dil, (%rbp)
	incq	%rbp
.LBB3_101:                              # %sw.bb.452
                                        #   in Loop: Header=BB3_37 Depth=4
	movb	%dl, (%rbp)
	incq	%rbp
.LBB3_102:                              # %do.end.458
                                        #   in Loop: Header=BB3_37 Depth=4
	cmpl	%r15d, %r14d
	jge	.LBB3_129
# BB#103:                               # %land.lhs.true.464
                                        #   in Loop: Header=BB3_37 Depth=4
	movzwl	(%r13), %eax
	movzwl	-8(%r13), %ecx
	cmpl	%eax, %ecx
	jne	.LBB3_129
# BB#104:                               # %land.lhs.true.471
                                        #   in Loop: Header=BB3_37 Depth=4
	movzwl	2(%r13), %eax
	movzwl	-6(%r13), %ecx
	cmpl	%eax, %ecx
	jne	.LBB3_129
# BB#105:                               # %land.lhs.true.478
                                        #   in Loop: Header=BB3_37 Depth=4
	movzwl	4(%r13), %eax
	movzwl	-4(%r13), %ecx
	cmpl	%eax, %ecx
	jne	.LBB3_129
# BB#106:                               # %land.rhs.485
                                        #   in Loop: Header=BB3_37 Depth=4
	movq	%rbp, %rbx
	movzwl	6(%r13), %ebp
	movzwl	-2(%r13), %r10d
	leaq	8(%r13), %rcx
	leal	1(%r14), %eax
	cmpl	%ebp, %r10d
	movq	%rbx, %rbp
	je	.LBB3_37
	jmp	.LBB3_129
.LBB3_112:                              # %sw.bb.518
                                        #   in Loop: Header=BB3_11 Depth=3
	movl	144(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB3_113
# BB#115:                               # %if.else.524
                                        #   in Loop: Header=BB3_11 Depth=3
	movl	136(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %dl
	movb	%dl, (%rbp)
	incq	%rbp
	movl	%eax, 144(%rsp)         # 4-byte Spill
	jmp	.LBB3_128
.LBB3_117:                              # %sw.bb.532
                                        #   in Loop: Header=BB3_11 Depth=3
	movl	144(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB3_118
# BB#119:                               # %if.else.541
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movl	136(%rsp), %esi         # 4-byte Reload
	orb	%sil, %cl
	movb	%cl, (%rbp)
	movb	%dl, 1(%rbp)
	addq	$2, %rbp
	movl	%eax, 144(%rsp)         # 4-byte Spill
	jmp	.LBB3_128
.LBB3_120:                              # %sw.bb.552
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rdx, %rax
	shrq	$56, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB3_121:                              # %sw.bb.556
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rdx, %rax
	shrq	$48, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB3_122:                              # %sw.bb.560
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rdx, %rax
	shrq	$40, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB3_123:                              # %sw.bb.564
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rdx, %rax
	shrq	$32, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB3_124:                              # %sw.bb.568
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rdx, %rax
	shrq	$24, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB3_125:                              # %sw.bb.572
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB3_126:                              # %sw.bb.576
                                        #   in Loop: Header=BB3_11 Depth=3
	movb	%dh, (%rbp)  # NOREX
	incq	%rbp
.LBB3_127:                              # %sw.bb.580
                                        #   in Loop: Header=BB3_11 Depth=3
	movb	%dl, (%rbp)
	incq	%rbp
.LBB3_128:                              # %do.end.586
                                        #   in Loop: Header=BB3_11 Depth=3
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	%rax, 232(%rsp)         # 8-byte Spill
	incl	%r14d
	leaq	(%r13,%rax,2), %r13
.LBB3_129:                              # %for.cond.71.backedge
                                        #   in Loop: Header=BB3_11 Depth=3
	cmpl	%r15d, %r14d
	movl	132(%rsp), %edx         # 4-byte Reload
	jl	.LBB3_11
	jmp	.LBB3_130
.LBB3_132:                              # %if.else.591
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	%r14d, %eax
	subl	84(%rsp), %eax          # 4-byte Folded Reload
	jle	.LBB3_137
# BB#133:                               # %if.then.594
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	144(%rsp), %ebp         # 4-byte Reload
	testl	%ebp, %ebp
	je	.LBB3_135
# BB#134:                               # %if.then.598
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	136(%rsp), %ecx         # 4-byte Reload
	movzbl	%cl, %edx
	movzbl	(%rbx), %esi
	movl	$255, %edi
	movb	%bpl, %cl
	shrl	%cl, %edi
	andl	%esi, %edi
	orl	%edx, %edi
	movb	%dil, (%rbx)
.LBB3_135:                              # %if.end.605
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	84(%rsp), %r9d          # 4-byte Reload
	movl	%r9d, %edx
	subl	172(%rsp), %edx         # 4-byte Folded Reload
	movl	%eax, 8(%rsp)
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	216(%rsp), %rdi         # 8-byte Reload
	movq	208(%rsp), %rsi         # 8-byte Reload
	movl	100(%rsp), %ecx         # 4-byte Reload
	callq	*1224(%rdi)
	testl	%eax, %eax
	movl	116(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	js	.LBB3_155
# BB#136:                               # %if.end.605.if.end.616_crit_edge
                                        #   in Loop: Header=BB3_10 Depth=2
	movq	520(%rsp), %rbp
.LBB3_137:                              # %if.end.616
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	leaq	520(%rsp), %rdi
	movl	%r14d, %esi
	movl	68(%rsp), %edx          # 4-byte Reload
	movq	216(%rsp), %r9          # 8-byte Reload
	callq	*40(%rbp)
	testl	%eax, %eax
	js	.LBB3_138
# BB#139:                               # %if.end.622
                                        #   in Loop: Header=BB3_10 Depth=2
	movq	184(%rsp), %rax         # 8-byte Reload
	cmpl	$7, %eax
	ja	.LBB3_140
# BB#141:                               # %if.then.625
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	144(%rsp), %edi         # 4-byte Reload
	testl	%edi, %edi
	movl	136(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %eax
	movq	%rbx, %rbp
	je	.LBB3_143
# BB#142:                               # %if.then.628
                                        #   in Loop: Header=BB3_10 Depth=2
	movzbl	(%rbp), %edx
	movl	$255, %esi
	movb	%dil, %cl
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movb	%sil, (%rbp)
.LBB3_143:                              # %do.body.636
                                        #   in Loop: Header=BB3_10 Depth=2
	movq	184(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %edi
	movl	%edi, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rdx
	andl	$7, %edi
	movl	%edi, 144(%rsp)         # 4-byte Spill
	movl	$255, %esi
	movb	%dil, %cl
	shll	%cl, %esi
	notl	%esi
	andl	%eax, %esi
	movl	%esi, 136(%rsp)         # 4-byte Spill
	movq	232(%rsp), %rax         # 8-byte Reload
	jmp	.LBB3_144
.LBB3_140:                              #   in Loop: Header=BB3_10 Depth=2
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	%rbx, %rbp
.LBB3_144:                              # %cleanup.657
                                        #   in Loop: Header=BB3_10 Depth=2
	movq	%rax, 232(%rsp)         # 8-byte Spill
	addq	%rdx, %rbp
	incl	%r14d
	leaq	(%r13,%rax,2), %r13
	cmpl	%r15d, %r14d
	movl	%r14d, %eax
	movq	72(%rsp), %r12          # 8-byte Reload
	movq	104(%rsp), %r14         # 8-byte Reload
	movl	132(%rsp), %edx         # 4-byte Reload
	jl	.LBB3_10
	jmp	.LBB3_148
.LBB3_130:                              # %for.end.661
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	84(%rsp), %eax          # 4-byte Reload
	subl	%eax, %r14d
	jle	.LBB3_131
# BB#145:                               # %if.then.664
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	%rbp, %rsi
	movl	%edx, %ebp
	movl	144(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB3_147
# BB#146:                               # %if.then.668
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%eax, %ebx
	movl	136(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %eax
	movq	%rsi, %rdi
	movzbl	(%rdi), %edx
	movl	$255, %esi
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movl	%ebx, %eax
	movb	%sil, (%rdi)
.LBB3_147:                              # %if.end.675
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%eax, %edx
	subl	172(%rsp), %edx         # 4-byte Folded Reload
	movl	%r14d, 8(%rsp)
	movl	%eax, %r9d
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	216(%rsp), %rdi         # 8-byte Reload
	movq	208(%rsp), %rsi         # 8-byte Reload
	movl	100(%rsp), %ecx         # 4-byte Reload
	callq	*1224(%rdi)
	testl	%eax, %eax
	movl	116(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	movq	72(%rsp), %r12          # 8-byte Reload
	movq	104(%rsp), %r14         # 8-byte Reload
	movl	%ebp, %edx
	jns	.LBB3_148
	jmp	.LBB3_155
.LBB3_131:                              #   in Loop: Header=BB3_6 Depth=1
	movq	72(%rsp), %r12          # 8-byte Reload
	movq	104(%rsp), %r14         # 8-byte Reload
.LBB3_148:                              # %cleanup.694
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	248(%rsp), %rax         # 8-byte Reload
	incl	1492(%rax)
	movq	160(%rsp), %rbx         # 8-byte Reload
	leaq	1200(%rsp), %rbp
	movq	%rbp, %r15
	movl	176(%rsp), %ebp         # 4-byte Reload
.LBB3_149:                              # %if.end.697
                                        #   in Loop: Header=BB3_6 Depth=1
	testl	%edx, %edx
	jne	.LBB3_150
# BB#152:                               # %land.lhs.true.700
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	1200(%rsp), %rax
	cmpq	1208(%rsp), %rax
	je	.LBB3_151
.LBB3_153:                              # %cleanup.710.thread391
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	248(%rsp), %rax         # 8-byte Reload
	movl	1492(%rax), %r13d
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1192(%rsp)
	movq	%r12, 1184(%rsp)
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	1176(%rsp), %rdx
	movl	%ebp, %ecx
	callq	*16(%rax)
	movl	%eax, %edx
	cmpl	$-1, %edx
	jge	.LBB3_6
	jmp	.LBB3_154
.LBB3_150:                              # %if.end.697
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpl	$-1, %edx
	jne	.LBB3_153
.LBB3_151:                              # %cleanup.710.thread
	movb	$1, %cl
	movl	116(%rsp), %eax         # 4-byte Reload
	jmp	.LBB3_157
.LBB3_154:                              # %cleanup.710.thread390
	movl	$-12, %eax
	xorl	%ecx, %ecx
	jmp	.LBB3_157
.LBB3_138:                              # %cleanup.710.thread394
	xorl	%ecx, %ecx
.LBB3_156:                              # %cleanup.723
	movl	176(%rsp), %ebp         # 4-byte Reload
.LBB3_157:                              # %cleanup.723
	xorl	$1, %ebp
	testb	%cl, %cl
	cmovel	%eax, %ebp
	movl	%ebp, %eax
	addq	$1224, %rsp             # imm = 0x4C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_155:                              # %cleanup.710
	xorl	%ecx, %ecx
	movl	116(%rsp), %eax         # 4-byte Reload
	jmp	.LBB3_156
.Lfunc_end3:
	.size	image_render_interpolate, .Lfunc_end3-image_render_interpolate
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_85
	.quad	.LBB3_88
	.quad	.LBB3_101
	.quad	.LBB3_91
	.quad	.LBB3_100
	.quad	.LBB3_138
	.quad	.LBB3_99
	.quad	.LBB3_138
	.quad	.LBB3_98
	.quad	.LBB3_138
	.quad	.LBB3_97
	.quad	.LBB3_138
	.quad	.LBB3_96
	.quad	.LBB3_138
	.quad	.LBB3_95
	.quad	.LBB3_138
	.quad	.LBB3_94
.LJTI3_1:
	.quad	.LBB3_64
	.quad	.LBB3_67
	.quad	.LBB3_80
	.quad	.LBB3_70
	.quad	.LBB3_79
	.quad	.LBB3_138
	.quad	.LBB3_78
	.quad	.LBB3_138
	.quad	.LBB3_77
	.quad	.LBB3_138
	.quad	.LBB3_76
	.quad	.LBB3_138
	.quad	.LBB3_75
	.quad	.LBB3_138
	.quad	.LBB3_74
	.quad	.LBB3_138
	.quad	.LBB3_73
.LJTI3_2:
	.quad	.LBB3_42
	.quad	.LBB3_45
	.quad	.LBB3_58
	.quad	.LBB3_48
	.quad	.LBB3_57
	.quad	.LBB3_138
	.quad	.LBB3_56
	.quad	.LBB3_138
	.quad	.LBB3_55
	.quad	.LBB3_138
	.quad	.LBB3_54
	.quad	.LBB3_138
	.quad	.LBB3_53
	.quad	.LBB3_138
	.quad	.LBB3_52
	.quad	.LBB3_138
	.quad	.LBB3_51
.LJTI3_3:
	.quad	.LBB3_109
	.quad	.LBB3_112
	.quad	.LBB3_127
	.quad	.LBB3_117
	.quad	.LBB3_126
	.quad	.LBB3_138
	.quad	.LBB3_125
	.quad	.LBB3_138
	.quad	.LBB3_124
	.quad	.LBB3_138
	.quad	.LBB3_123
	.quad	.LBB3_138
	.quad	.LBB3_122
	.quad	.LBB3_138
	.quad	.LBB3_121
	.quad	.LBB3_138
	.quad	.LBB3_120

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1191178240              # float 32760
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	image_render_interpolate_landscape,@function
image_render_interpolate_landscape:     # @image_render_interpolate_landscape
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$1144, %rsp             # imm = 0x478
.Ltmp58:
	.cfi_def_cfa_offset 1200
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movl	%r8d, %r14d
	movl	%edx, %r12d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	1336(%rbx), %r15
	movq	1216(%rbx), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	1224(%rbx), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	1304(%rbx), %ecx
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	movslq	108(%r15), %r13
	movq	1248(%rbx), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	64(%rax), %rax
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	4(%rax), %ecx
.LBB4_2:                                # %if.end
	movl	%ecx, 156(%rsp)         # 4-byte Spill
	movb	$1, %al
	cmpb	$0, 1271(%rbx)
	jne	.LBB4_4
# BB#3:                                 # %lor.lhs.false
	movq	160(%rsp), %rdi         # 8-byte Reload
	callq	gs_color_space_is_CIE
	orl	156(%rsp), %eax         # 4-byte Folded Reload
	setne	%al
.LBB4_4:                                # %lor.end
	movzbl	%al, %r8d
	xorl	$1, %r8d
	movl	$0, (%rsp)
	leaq	1120(%rsp), %r9
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r12d, %edx
	movl	%r14d, %ecx
	callq	initial_decode
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpl	$10, (%rax)
	sete	148(%rsp)               # 1-byte Folded Spill
	movl	1504(%rbx), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	%r15, %rdi
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movslq	156(%rdi), %r15
	movl	140(%rdi), %eax
	movl	%eax, %ebp
	sarl	$31, %ebp
	shrl	$29, %ebp
	addl	%eax, %ebp
	sarl	$3, %ebp
	movss	1128(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$1, %edx
	movl	$-1, %eax
	cmovbel	%eax, %edx
	movl	%edx, 64(%rsp)          # 4-byte Spill
	cmovbel	%eax, %ecx
	addl	1500(%rbx), %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%ebp, %eax
	imull	%r13d, %eax
	cmpl	$8, %eax
	cltq
	movq	%r13, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	$8, %r13d
	cmovaq	%rax, %r13
	imulq	%r15, %r13
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	-1(%rax,%r13), %rdx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movl	%r15d, %eax
	imull	%ecx, %eax
	imull	%ebp, %eax
	cltq
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	sete	%al
	movzbl	%al, %ecx
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	cmpl	$0, 156(%rsp)           # 4-byte Folded Reload
	setne	%r14b
	movl	1492(%rbx), %r12d
	movq	%rdx, 1112(%rsp)
	movq	%rsi, 1104(%rsp)
	movq	(%rdi), %rax
	leaq	1096(%rsp), %rdx
	leaq	1120(%rsp), %rsi
	callq	*16(%rax)
	movl	%eax, %ecx
	cmpl	$-1, %ecx
	jl	.LBB4_5
# BB#7:                                 # %if.end.42.preheader
	orb	148(%rsp), %r14b        # 1-byte Folded Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	imull	%edx, %r15d
	imull	%ebp, %r15d
	movslq	%r15d, %rax
	subq	%rax, %r13
	addq	%r13, 104(%rsp)         # 8-byte Folded Spill
	leaq	(%rdx,%rdx), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	%rbx, %rdx
	leaq	1784(%rdx), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rdx, %r15
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movl	116(%rsp), %ebp         # 4-byte Reload
	movq	88(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB4_8:                                # %if.end.42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_19 Depth 3
	movq	1104(%rsp), %rax
	cmpq	1112(%rsp), %rax
	jne	.LBB4_37
# BB#9:                                 # %if.then.47
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 204(%rax)
	je	.LBB4_36
# BB#10:                                # %if.then.47
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	124(%rax), %eax
	movl	%eax, 156(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	jle	.LBB4_36
# BB#11:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB4_8 Depth=1
	imull	64(%rsp), %r12d         # 4-byte Folded Reload
	addl	68(%rsp), %r12d         # 4-byte Folded Reload
	movl	%r12d, 148(%rsp)        # 4-byte Spill
	movl	72(%rsp), %r15d         # 4-byte Reload
	addl	%r15d, 156(%rsp)        # 4-byte Folded Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	196(%rax), %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	imull	%ecx, %eax
	cltq
	movq	104(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,2), %r12
	.align	16, 0x90
.LBB4_12:                               # %for.body
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_19 Depth 3
	movq	160(%rsp), %r13         # 8-byte Reload
	movq	(%r13), %rcx
	cmpl	$10, (%rcx)
	jne	.LBB4_14
# BB#13:                                # %if.then.65
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	40(%rax), %r13
	movq	(%r13), %rcx
.LBB4_14:                               # %if.end.67
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	%r13, %rdi
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*48(%rcx)
	cmpq	%r13, %rax
	jne	.LBB4_17
# BB#15:                                # %if.end.67
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.LBB4_17
# BB#16:                                # %if.then.79
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	(%r13), %rax
	movl	$1, %r9d
	movq	%r12, %rdi
	movq	%r13, %rsi
	leaq	440(%rsp), %rbp
	movq	%rbp, %rdx
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	%rbx, %r8
	callq	*64(%rax)
	jmp	.LBB4_33
	.align	16, 0x90
.LBB4_17:                               # %if.else.82
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	%r13, %rdi
	callq	gs_color_space_num_components
	testl	%eax, %eax
	movss	.LCPI4_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movsd	.LCPI4_1(%rip), %xmm4   # xmm4 = mem[0],zero
	jle	.LBB4_28
# BB#18:                                # %for.body.87.preheader
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	%eax, %eax
	movq	96(%rsp), %rcx          # 8-byte Reload
	xorl	%edx, %edx
	.align	16, 0x90
.LBB4_19:                               # %for.body.87
                                        #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movswl	(%r12,%rdx,2), %esi
	testb	%r14b, %r14b
	jne	.LBB4_20
# BB#21:                                # %if.else.97
                                        #   in Loop: Header=BB4_19 Depth=3
	movl	68(%rcx), %edi
	cmpl	$2, %edi
	je	.LBB4_25
# BB#22:                                # %if.else.97
                                        #   in Loop: Header=BB4_19 Depth=3
	cmpl	$1, %edi
	jne	.LBB4_23
# BB#24:                                # %sw.bb.4.i
                                        #   in Loop: Header=BB4_19 Depth=3
	movl	%esi, %edi
	shrl	$12, %edi
	addl	%esi, %edi
	shrl	$11, %edi
	andl	$15, %edi
	movl	(%rcx,%rdi,4), %esi
	movl	%esi, 184(%rsp,%rdx,4)
	jmp	.LBB4_27
.LBB4_25:                               # %sw.bb.20.i
                                        #   in Loop: Header=BB4_19 Depth=3
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	64(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm2
	divss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm4, %xmm2
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	jmp	.LBB4_26
.LBB4_23:                               # %if.else.97
                                        #   in Loop: Header=BB4_19 Depth=3
	testl	%edi, %edi
	jne	.LBB4_27
	.align	16, 0x90
.LBB4_20:                               # %if.then.91
                                        #   in Loop: Header=BB4_19 Depth=3
	cvtsi2ssl	%esi, %xmm0
	divss	%xmm3, %xmm0
.LBB4_26:                               # %for.inc
                                        #   in Loop: Header=BB4_19 Depth=3
	movss	%xmm0, 184(%rsp,%rdx,4)
.LBB4_27:                               # %for.inc
                                        #   in Loop: Header=BB4_19 Depth=3
	incq	%rdx
	addq	$332, %rcx              # imm = 0x14C
	cmpl	%edx, %eax
	jne	.LBB4_19
.LBB4_28:                               # %for.end
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	%r13, %rdi
	callq	gs_color_space_is_ICC
	testl	%eax, %eax
	je	.LBB4_32
# BB#29:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	64(%r13), %rax
	testq	%rax, %rax
	je	.LBB4_32
# BB#30:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB4_12 Depth=2
	cmpl	$0, 4(%rax)
	je	.LBB4_32
# BB#31:                                # %if.then.111
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	$1, %r9d
	leaq	176(%rsp), %rdi
	movq	%r13, %rsi
	leaq	440(%rsp), %rbp
	movq	%rbp, %rdx
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	%rbx, %r8
	callq	gx_remap_ICC_imagelab
	jmp	.LBB4_33
	.align	16, 0x90
.LBB4_32:                               # %if.else.113
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	(%r13), %rax
	movl	$1, %r9d
	leaq	176(%rsp), %rdi
	movq	%r13, %rsi
	leaq	440(%rsp), %rbp
	movq	%rbp, %rdx
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	%rbx, %r8
	callq	*72(%rax)
.LBB4_33:                               # %if.end.117
                                        #   in Loop: Header=BB4_12 Depth=2
	testl	%eax, %eax
	js	.LBB4_6
# BB#34:                                # %if.end.121
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	440(%rsp), %rax
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbp, %rdi
	movl	148(%rsp), %esi         # 4-byte Reload
	movl	%r15d, %edx
	movq	%rbx, %r9
	callq	*40(%rax)
	testl	%eax, %eax
	js	.LBB4_6
# BB#35:                                # %cleanup.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	incl	%r15d
	addq	136(%rsp), %r12         # 8-byte Folded Reload
	cmpl	156(%rsp), %r15d        # 4-byte Folded Reload
	jl	.LBB4_12
.LBB4_36:                               # %cleanup.137
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	48(%rsp), %r15          # 8-byte Reload
	incl	1492(%r15)
	movl	116(%rsp), %ebp         # 4-byte Reload
	movq	88(%rsp), %r13          # 8-byte Reload
	movl	76(%rsp), %ecx          # 4-byte Reload
.LBB4_37:                               # %if.end.140
                                        #   in Loop: Header=BB4_8 Depth=1
	testl	%ecx, %ecx
	jne	.LBB4_38
# BB#41:                                # %land.lhs.true.143
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	1120(%rsp), %rax
	cmpq	1128(%rsp), %rax
	je	.LBB4_42
.LBB4_39:                               # %cleanup.153
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	1492(%r15), %r12d
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1112(%rsp)
	movq	%r13, 1104(%rsp)
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	leaq	1120(%rsp), %rsi
	leaq	1096(%rsp), %rdx
	movl	%ebp, %ecx
	callq	*16(%rax)
	movl	%eax, %ecx
	cmpl	$-1, %ecx
	jge	.LBB4_8
	jmp	.LBB4_40
.LBB4_38:                               # %if.end.140
                                        #   in Loop: Header=BB4_8 Depth=1
	cmpl	$-1, %ecx
	jne	.LBB4_39
.LBB4_42:                               # %for.end.161
	movb	$1, %cl
                                        # implicit-def: EAX
	jmp	.LBB4_43
.LBB4_40:
	movl	%ebp, 116(%rsp)         # 4-byte Spill
.LBB4_5:
	movl	$-12, %eax
.LBB4_6:                                # %cleanup.153.thread
	xorl	%ecx, %ecx
	movl	116(%rsp), %ebp         # 4-byte Reload
.LBB4_43:                               # %cleanup.162
	xorl	$1, %ebp
	testb	%cl, %cl
	cmovel	%eax, %ebp
	movl	%ebp, %eax
	addq	$1144, %rsp             # imm = 0x478
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	image_render_interpolate_landscape, .Lfunc_end4-image_render_interpolate_landscape
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4643176031446892544     # double 255
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_1:
	.long	1132396544              # float 255
.LCPI5_2:
	.long	998277249               # float 0.00392156886
.LCPI5_3:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	initial_decode,@function
initial_decode:                         # @initial_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
.Ltmp71:
	.cfi_def_cfa_offset 368
.Ltmp72:
	.cfi_offset %rbx, -56
.Ltmp73:
	.cfi_offset %r12, -48
.Ltmp74:
	.cfi_offset %r13, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	1336(%rdi), %r14
	movq	1224(%rdi), %rbx
	movq	1248(%rdi), %r12
	movslq	108(%r14), %rsi
	cmpl	$0, 1264(%rdi)
	je	.LBB5_1
# BB#2:                                 # %select.mid
	movq	%r9, 16(%rsp)           # 8-byte Spill
	leaq	1124(%rdi), %rax
	jmp	.LBB5_3
.LBB5_1:
	movq	%r9, 16(%rsp)           # 8-byte Spill
	leaq	1120(%rdi), %rax
.LBB5_3:                                # %select.end
	testl	%ecx, %ecx
	je	.LBB5_77
# BB#4:                                 # %if.then
	movq	%rdi, %r9
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movl	132(%r14), %ebp
	movl	148(%r14), %r11d
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rbp), %edi
	sarl	$3, %edi
	movl	%edi, %eax
	imull	%esi, %eax
	imull	%r11d, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	(%rbx), %rax
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	(%rax), %r10d
	cmpl	$10, %r10d
	movl	$1, %eax
	cmovel	%eax, %esi
	movl	%edi, %ecx
	imull	%edx, %ecx
	imull	%esi, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r13), %r15
	andl	$-8, %ebp
	cmpl	$8, %ebp
	jne	.LBB5_52
# BB#5:                                 # %if.then.20
	cmpl	$10, %r10d
	je	.LBB5_37
# BB#6:                                 # %if.then.25
	testl	%r8d, %r8d
	je	.LBB5_7
# BB#13:                                # %if.else.51
	movzbl	579(%r9), %ecx
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB5_14
# BB#15:                                # %if.then.56
	leal	-1(%r11), %eax
	imull	%ecx, %eax
	cltq
	addq	%rax, %r15
	movl	%ecx, %eax
	negl	%eax
	jmp	.LBB5_16
.LBB5_77:                               # %if.else.463
	xorps	%xmm0, %xmm0
	movq	16(%rsp), %rax          # 8-byte Reload
	movups	%xmm0, (%rax)
	jmp	.LBB5_78
.LBB5_52:                               # %if.else.279
	movzbl	579(%r9), %ebx
	movl	%ebx, %ebp
	movzbl	576(%r9), %edx
	cmpl	$9, %edx
	jb	.LBB5_54
# BB#53:                                # %select.mid351
	movl	$2, %eax
.LBB5_54:                               # %select.end350
	imull	%eax, %ebx
	cmpl	$10, %r10d
	je	.LBB5_70
# BB#55:                                # %if.then.284
	movl	368(%rsp), %eax
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movq	32(%rsp), %rsi          # 8-byte Reload
	jbe	.LBB5_57
# BB#56:                                # %if.then.304
	leal	-1(%r11), %edx
	imull	%ebx, %edx
	movslq	%edx, %rdx
	addq	%rdx, %r15
	negl	%ebx
.LBB5_57:                               # %if.end.312
	movq	%r9, %r13
	movq	16(%rsp), %rdi          # 8-byte Reload
	leaq	-1(%r12), %rdx
	movq	%rdx, (%rdi)
	testl	%eax, %eax
	je	.LBB5_58
# BB#65:                                # %if.then.316
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB5_69
# BB#66:                                # %if.then.318
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	testl	%r11d, %r11d
	jle	.LBB5_76
# BB#67:                                # %for.body.325.lr.ph
	movslq	%ebx, %r14
	negl	%ebx
	movslq	%ebx, %rbx
	movq	%r14, %r13
	negq	%r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_68:                               # %for.body.325
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%r13, %r12
	addq	%r14, %r15
	incl	%ebp
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpl	148(%rax), %ebp
	jl	.LBB5_68
	jmp	.LBB5_76
.LBB5_37:                               # %if.else.170
	movzbl	579(%r9), %ecx
	movzbl	576(%r9), %eax
	movl	$1, %edx
	cmpl	$9, %eax
	jb	.LBB5_39
# BB#38:                                # %select.mid336
	movl	$2, %edx
.LBB5_39:                               # %select.end335
	movss	1784(%r9), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	1848(%r9), %xmm3        # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm3, %xmm2
	cvtss2sd	%xmm1, %xmm1
	ja	.LBB5_41
# BB#40:                                # %cond.false.198
	cvtss2sd	%xmm3, %xmm3
	mulsd	.LCPI5_0(%rip), %xmm3
	addsd	%xmm3, %xmm1
.LBB5_41:                               # %cond.end.210
	imull	%edx, %ecx
	ucomiss	%xmm0, %xmm2
	movq	%r9, %r13
	movq	16(%rsp), %rbp          # 8-byte Reload
	jbe	.LBB5_43
# BB#42:                                # %if.then.214
	leal	-1(%r11), %eax
	imull	%ecx, %eax
	cltq
	addq	%rax, %r15
	negl	%ecx
.LBB5_43:                               # %if.end.222
	leaq	-1(%r12), %rax
	movq	%rax, (%rbp)
	testl	%r11d, %r11d
	movq	(%rsp), %rbx            # 8-byte Reload
	jle	.LBB5_76
# BB#44:                                # %for.body.230.lr.ph
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 24(%rsp)         # 4-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_45:                               # %for.body.230
                                        # =>This Inner Loop Header: Depth=1
	movl	1852(%r13), %eax
	cmpl	$2, %eax
	je	.LBB5_50
# BB#46:                                # %for.body.230
                                        #   in Loop: Header=BB5_45 Depth=1
	cmpl	$1, %eax
	jne	.LBB5_47
# BB#49:                                # %sw.bb.241
                                        #   in Loop: Header=BB5_45 Depth=1
	movzbl	(%r15), %eax
	shrq	$2, %rax
	andl	$60, %eax
	movss	1784(%r13,%rax), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB5_51
	.align	16, 0x90
.LBB5_50:                               # %sw.bb.250
                                        #   in Loop: Header=BB5_45 Depth=1
	movzbl	(%r15), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	1848(%r13), %xmm0
	addss	1784(%r13), %xmm0
	jmp	.LBB5_51
	.align	16, 0x90
.LBB5_47:                               # %for.body.230
                                        #   in Loop: Header=BB5_45 Depth=1
	xorps	%xmm0, %xmm0
	testl	%eax, %eax
	jne	.LBB5_51
# BB#48:                                # %sw.bb.234
                                        #   in Loop: Header=BB5_45 Depth=1
	movzbl	(%r15), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	24(%rsp), %xmm0         # 4-byte Folded Reload
	divss	.LCPI5_1(%rip), %xmm0
	.align	16, 0x90
.LBB5_51:                               # %sw.epilog.262
                                        #   in Loop: Header=BB5_45 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	gs_cspace_indexed_lookup_bytes
	addq	40(%rsp), %r15          # 8-byte Folded Reload
	incl	%ebp
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r12
	cmpl	148(%r14), %ebp
	jl	.LBB5_45
	jmp	.LBB5_76
.LBB5_70:                               # %if.else.392
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movq	32(%rsp), %rdx          # 8-byte Reload
	jbe	.LBB5_71
# BB#72:                                # %if.then.412
	movq	%r14, 40(%rsp)          # 8-byte Spill
	leal	-1(%r11), %eax
	imull	%ebx, %eax
	cltq
	addq	%rax, %r15
	negl	%ebx
	jmp	.LBB5_73
.LBB5_71:
	movq	%r14, 40(%rsp)          # 8-byte Spill
.LBB5_73:                               # %if.end.420
	movq	%r9, %r13
	movq	16(%rsp), %rsi          # 8-byte Reload
	leaq	-1(%r12), %rax
	movq	%rax, (%rsi)
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	testl	%r11d, %r11d
	movq	(%rsp), %r14            # 8-byte Reload
	jle	.LBB5_76
# BB#74:                                # %for.body.428.lr.ph
	movslq	%ebx, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	addq	$1848, %r13             # imm = 0x738
	addq	%rdx, %rdx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_75:                               # %for.body.428
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%r15), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	(%r13), %xmm0
	addss	-64(%r13), %xmm0
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rdx, %rbx
	callq	gs_cspace_indexed_lookup_frac
	movq	%rbx, %rdx
	addq	24(%rsp), %r15          # 8-byte Folded Reload
	incq	%rbp
	movq	40(%rsp), %rax          # 8-byte Reload
	movslq	148(%rax), %rax
	addq	$332, %r13              # imm = 0x14C
	addq	%rdx, %r12
	cmpq	%rax, %rbp
	jl	.LBB5_75
	jmp	.LBB5_76
.LBB5_7:                                # %if.then.26
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB5_8
# BB#9:                                 # %if.else
	testl	%r11d, %r11d
	movq	32(%rsp), %r15          # 8-byte Reload
	jle	.LBB5_12
# BB#10:                                # %for.body.lr.ph
	imull	%edi, %esi
	imull	%edx, %esi
	movslq	%esi, %rdx
	imull	%r15d, %r11d
	imull	%edi, %r11d
	addq	%rdx, %r11
	subq	%r15, %r11
	addq	%r11, %r13
	movq	%r15, %rdx
	negq	%rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	movq	%r12, %rbx
	.align	16, 0x90
.LBB5_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, %rbx
	incl	%ebp
	addq	40(%rsp), %r13          # 8-byte Folded Reload
	cmpl	148(%r14), %ebp
	jl	.LBB5_11
.LBB5_12:                               # %for.end
	decq	%r12
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r12, (%rax)
	jmp	.LBB5_76
.LBB5_58:                               # %for.cond.342.preheader
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	testl	%r11d, %r11d
	jle	.LBB5_76
# BB#59:                                # %for.cond.348.preheader.lr.ph
	movslq	%ebx, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	addq	%rsi, %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	addq	$1848, %r13             # imm = 0x738
	movq	%r13, (%rsp)            # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_60:                               # %for.cond.348.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_62 Depth 2
	testb	%bpl, %bpl
	je	.LBB5_64
# BB#61:                                # %for.body.351.lr.ph
                                        #   in Loop: Header=BB5_60 Depth=1
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB5_62:                               # %for.body.351
                                        #   Parent Loop BB5_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	(%r15,%r14,2), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	(%r13), %xmm0
	addss	-64(%r13), %xmm0
	callq	gx_unit_frac
	movw	%ax, (%r12,%r14,2)
	incq	%r14
	addq	$332, %r13              # imm = 0x14C
	cmpl	%r14d, %ebp
	jne	.LBB5_62
# BB#63:                                # %for.cond.348.for.end.372_crit_edge
                                        #   in Loop: Header=BB5_60 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	148(%rax), %r11d
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	(%rsp), %r13            # 8-byte Reload
.LBB5_64:                               # %for.end.372
                                        #   in Loop: Header=BB5_60 Depth=1
	addq	24(%rsp), %r15          # 8-byte Folded Reload
	incl	%ebx
	addq	%rsi, %r12
	cmpl	%r11d, %ebx
	jl	.LBB5_60
	jmp	.LBB5_76
.LBB5_14:
	movl	%ecx, %eax
.LBB5_16:                               # %if.end.63
	movq	32(%rsp), %r10          # 8-byte Reload
	leaq	-1(%r12), %rdx
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rdx, (%rsi)
	testl	%r11d, %r11d
	jle	.LBB5_76
# BB#17:                                # %for.cond.72.preheader.lr.ph
	movslq	%eax, %r8
	addq	$1784, %r9              # imm = 0x6F8
	xorl	%esi, %esi
	movss	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm1, %xmm1
	movss	.LCPI5_3(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movsd	.LCPI5_0(%rip), %xmm3   # xmm3 = mem[0],zero
	.align	16, 0x90
.LBB5_18:                               # %for.cond.72.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_19 Depth 2
	testb	%cl, %cl
	movq	%r9, %rdi
	movl	$0, %ebp
	je	.LBB5_36
	.align	16, 0x90
.LBB5_19:                               # %for.body.75
                                        #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	68(%rdi), %eax
	testl	%eax, %eax
	je	.LBB5_23
# BB#20:                                # %for.body.75
                                        #   in Loop: Header=BB5_19 Depth=2
	cmpl	$1, %eax
	jne	.LBB5_21
# BB#24:                                # %sw.bb.83
                                        #   in Loop: Header=BB5_19 Depth=2
	movzbl	(%r15,%rbp), %eax
	shrq	$2, %rax
	andl	$60, %eax
	movl	(%rdi,%rax), %eax
	movl	%eax, 56(%rsp,%rbp,4)
	movd	%eax, %xmm4
	jmp	.LBB5_27
	.align	16, 0x90
.LBB5_23:                               # %sw.bb
                                        #   in Loop: Header=BB5_19 Depth=2
	movzbl	(%r15,%rbp), %eax
	cvtsi2ssl	%eax, %xmm4
	mulss	%xmm0, %xmm4
	jmp	.LBB5_26
	.align	16, 0x90
.LBB5_21:                               # %for.body.75
                                        #   in Loop: Header=BB5_19 Depth=2
	cmpl	$2, %eax
	jne	.LBB5_22
# BB#25:                                # %sw.bb.96
                                        #   in Loop: Header=BB5_19 Depth=2
	movzbl	(%r15,%rbp), %eax
	cvtsi2ssl	%eax, %xmm4
	mulss	64(%rdi), %xmm4
	addss	(%rdi), %xmm4
.LBB5_26:                               # %sw.epilog
                                        #   in Loop: Header=BB5_19 Depth=2
	movss	%xmm4, 56(%rsp,%rbp,4)
	jmp	.LBB5_27
.LBB5_22:                               # %for.body.75.sw.epilog_crit_edge
                                        #   in Loop: Header=BB5_19 Depth=2
	movss	56(%rsp,%rbp,4), %xmm4  # xmm4 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB5_27:                               # %sw.epilog
                                        #   in Loop: Header=BB5_19 Depth=2
	ucomiss	%xmm4, %xmm1
	movb	$-1, %dl
	jb	.LBB5_29
# BB#28:                                # %sw.epilog
                                        #   in Loop: Header=BB5_19 Depth=2
	xorl	%edx, %edx
.LBB5_29:                               # %sw.epilog
                                        #   in Loop: Header=BB5_19 Depth=2
	ucomiss	%xmm4, %xmm2
	ja	.LBB5_30
# BB#31:                                # %sw.epilog
                                        #   in Loop: Header=BB5_19 Depth=2
	movb	%dl, %al
	jmp	.LBB5_32
	.align	16, 0x90
.LBB5_30:                               #   in Loop: Header=BB5_19 Depth=2
	cvtss2sd	%xmm4, %xmm5
	mulsd	%xmm3, %xmm5
	cvttsd2si	%xmm5, %eax
.LBB5_32:                               # %sw.epilog
                                        #   in Loop: Header=BB5_19 Depth=2
	ucomiss	%xmm1, %xmm4
	ja	.LBB5_34
# BB#33:                                # %sw.epilog
                                        #   in Loop: Header=BB5_19 Depth=2
	movb	%dl, %al
.LBB5_34:                               # %sw.epilog
                                        #   in Loop: Header=BB5_19 Depth=2
	movb	%al, (%r12,%rbp)
	incq	%rbp
	addq	$332, %rdi              # imm = 0x14C
	cmpl	%ebp, %ecx
	jne	.LBB5_19
# BB#35:                                # %for.cond.72.for.end.154_crit_edge
                                        #   in Loop: Header=BB5_18 Depth=1
	movl	148(%r14), %r11d
.LBB5_36:                               # %for.end.154
                                        #   in Loop: Header=BB5_18 Depth=1
	addq	%r8, %r15
	incl	%esi
	addq	%r10, %r12
	cmpl	%r11d, %esi
	jl	.LBB5_18
	jmp	.LBB5_76
.LBB5_69:                               # %if.else.337
	decq	%r15
	movq	%r15, (%rdi)
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	jmp	.LBB5_76
.LBB5_8:                                # %if.then.28
	decq	%r15
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r15, (%rax)
.LBB5_76:                               # %if.end.459
	movl	12(%rsp), %eax          # 4-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	addq	(%rcx), %rax
	movq	%rax, 8(%rcx)
.LBB5_78:                               # %if.end.466
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	initial_decode, .Lfunc_end5-initial_decode
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image scale src+dst line"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"image scale state"
	.size	.L.str.1, 18

	.type	.L__func__.image_render_interpolate_icc,@object # @__func__.image_render_interpolate_icc
.L__func__.image_render_interpolate_icc:
	.asciz	"image_render_interpolate_icc"
	.size	.L__func__.image_render_interpolate_icc, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"./base/gxiscale.c"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ICC Link not created during gs_image_class_0_interpolate"
	.size	.L.str.3, 57

	.type	.L__func__.image_render_interpolate_landscape_icc,@object # @__func__.image_render_interpolate_landscape_icc
.L__func__.image_render_interpolate_landscape_icc:
	.asciz	"image_render_interpolate_landscape_icc"
	.size	.L__func__.image_render_interpolate_landscape_icc, 39


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
