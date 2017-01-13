	.text
	.file	"gxhintn.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	0                       # 0x0
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	10                      # 0xa
.LCPI0_1:
	.long	0                       # 0x0
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	110                     # 0x6e
	.text
	.globl	t1_hinter__init
	.align	16, 0x90
	.type	t1_hinter__init,@function
t1_hinter__init:                        # @t1_hinter__init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$16777216, 56(%rdi)     # imm = 0x1000000
	movl	$0, 9636(%rdi)
	movl	$0, 9632(%rdi)
	movl	$0, 9648(%rdi)
	movl	$0, 9688(%rdi)
	movl	$0, 9696(%rdi)
	movl	$0, 9716(%rdi)
	movl	$0, 9724(%rdi)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0,10,0,10]
	movups	%xmm0, 9656(%rdi)
	movaps	.LCPI0_1(%rip), %xmm0   # xmm0 = [0,6,0,110]
	movups	%xmm0, 9672(%rdi)
	movl	$30, 9692(%rdi)
	movl	$30, 9700(%rdi)
	movl	$120, 9708(%rdi)
	movl	$13, 9640(%rdi)
	movl	$13, 9644(%rdi)
	movl	$13, 9652(%rdi)
	leaq	188(%rdi), %rax
	movq	%rax, 5472(%rdi)
	leaq	5480(%rdi), %rax
	movq	%rax, 7520(%rdi)
	leaq	7528(%rdi), %rax
	movq	%rax, 7648(%rdi)
	leaq	7656(%rdi), %rax
	movq	%rax, 7696(%rdi)
	leaq	7704(%rdi), %rax
	movq	%rax, 7744(%rdi)
	leaq	7936(%rdi), %rax
	movq	%rax, 8176(%rdi)
	leaq	8184(%rdi), %rax
	movq	%rax, 9624(%rdi)
	leaq	7752(%rdi), %rax
	movq	%rax, 7856(%rdi)
	leaq	7804(%rdi), %rax
	movq	%rax, 7864(%rdi)
	leaq	7872(%rdi), %rax
	movq	%rax, 7928(%rdi)
	movl	$1, 9720(%rdi)
	movl	$0, 9728(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 9776(%rdi)
	movups	%xmm0, 9760(%rdi)
	movups	%xmm0, 9792(%rdi)
	movl	$0, 112(%rdi)
	movl	$0, 108(%rdi)
	movl	$0, 7656(%rdi)
	movl	$0, 7704(%rdi)
	movl	$0, 9732(%rdi)
	movl	$0, 164(%rdi)
	movl	$1, 160(%rdi)
	movl	$1, 156(%rdi)
	movq	%rsi, 9840(%rdi)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB0_2
# BB#1:                                 # %cond.false
	movq	40(%rsi), %rax
.LBB0_2:                                # %cond.end
	movq	%rax, 9848(%rdi)
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 148(%rdi)
	movl	%eax, 152(%rdi)
	movl	$0, 172(%rdi)
	movl	$0, 176(%rdi)
	movl	$100, 7804(%rdi)
	movl	$100, 7752(%rdi)
	retq
.Lfunc_end0:
	.size	t1_hinter__init, .Lfunc_end0-t1_hinter__init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
.LCPI1_4:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI1_8:
	.quad	4666723172467343360     # double 1.000000e+04
	.quad	4711630319722168320     # double 1.000000e+07
.LCPI1_9:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI1_10:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_1:
	.long	981467136               # float 9.765625E-4
.LCPI1_2:
	.long	1082130432              # float 4
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_3:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI1_5:
	.quad	4602678819172646912     # double 0.5
.LCPI1_6:
	.quad	4613937818241073152     # double 3
.LCPI1_7:
	.quad	4607182418800017408     # double 1
	.text
	.globl	t1_hinter__set_mapping
	.align	16, 0x90
	.type	t1_hinter__set_mapping,@function
t1_hinter__set_mapping:                 # @t1_hinter__set_mapping
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
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	264(%rsp), %eax
	movq	(%r14), %xmm0           # xmm0 = mem[0],zero
	cvtps2pd	%xmm0, %xmm1
	andps	.LCPI1_0(%rip), %xmm0
	movaps	%xmm0, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	addss	%xmm0, %xmm2
	movss	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm0
	seta	%cl
	ucomiss	.LCPI1_2(%rip), %xmm2
	seta	%dl
	orb	%cl, %dl
	movzbl	%dl, %ecx
	orl	148(%r15), %ecx
	movl	%ecx, 148(%r15)
	orl	%ecx, 152(%r15)
	movl	256(%rsp), %ecx
	movl	%r8d, 124(%r15)
	movl	%r9d, 128(%r15)
	movl	%ecx, 132(%r15)
	movl	%eax, 136(%r15)
	movapd	%xmm1, 128(%rsp)
	cvtps2pd	8(%r14), %xmm0
	movapd	%xmm0, 144(%rsp)
	leaq	128(%rsp), %rsi
	callq	fraction_matrix__set
	movl	20(%r15), %ecx
	leal	-4(%rcx), %eax
	movl	%eax, 48(%r15)
	cmpl	$24, %eax
	jbe	.LBB1_1
# BB#2:                                 # %if.then
	leal	-28(%rcx), %eax
	movl	(%r15), %edx
	addl	$-29, %ecx
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	movl	%edx, (%r15)
	movl	4(%r15), %edx
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	movl	%edx, 4(%r15)
	movl	8(%r15), %edx
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	movl	%edx, 8(%r15)
	movl	12(%r15), %edx
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	movl	%edx, 12(%r15)
	leaq	16(%r15), %rbp
	movl	16(%r15), %edx
	movb	%al, %cl
	sarl	%cl, %edx
	movl	%edx, 16(%r15)
	movl	$28, 20(%r15)
	movl	$24, 48(%r15)
	jmp	.LBB1_3
.LBB1_1:                                # %entry.if.end_crit_edge
	leaq	16(%r15), %rbp
	movl	16(%r15), %edx
.LBB1_3:                                # %if.end
	testl	%edx, %edx
	je	.LBB1_8
# BB#4:                                 # %if.end.i.203
	cvtsi2sdl	(%r15), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, 80(%rsp)         # 16-byte Spill
	movapd	%xmm1, %xmm4
	xorps	%xmm1, %xmm1
	cvtsi2sdl	4(%r15), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, 48(%rsp)         # 16-byte Spill
	movapd	%xmm1, %xmm3
	cvtsi2sdl	8(%r15), %xmm2
	divsd	%xmm0, %xmm2
	movapd	%xmm2, 64(%rsp)         # 16-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2sdl	12(%r15), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, 32(%rsp)         # 16-byte Spill
	movapd	%xmm4, %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, (%rsp)           # 16-byte Spill
	callq	fabs
	mulsd	.LCPI1_3(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movapd	80(%rsp), %xmm0         # 16-byte Reload
	callq	fabs
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movapd	48(%rsp), %xmm0         # 16-byte Reload
	callq	fabs
	addsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	callq	fabs
	addsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movapd	32(%rsp), %xmm0         # 16-byte Reload
	callq	fabs
	addsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	ucomisd	24(%rsp), %xmm0         # 8-byte Folded Reload
	jae	.LBB1_5
# BB#6:                                 # %if.end.53
	leaq	24(%r15), %rdi
	movapd	.LCPI1_4(%rip), %xmm0   # xmm0 = [9223372036854775808,9223372036854775808]
	movapd	48(%rsp), %xmm1         # 16-byte Reload
	xorpd	%xmm0, %xmm1
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	unpcklpd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0]
	movaps	(%rsp), %xmm2           # 16-byte Reload
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	divpd	%xmm2, %xmm3
	movapd	%xmm3, 160(%rsp)
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	xorpd	%xmm0, %xmm1
	unpcklpd	80(%rsp), %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[0],mem[0]
	divpd	%xmm2, %xmm1
	movapd	%xmm1, 176(%rsp)
	leaq	160(%rsp), %rsi
	callq	fraction_matrix__set
	movl	16(%r15), %edx
	testl	%edx, %edx
	je	.LBB1_8
# BB#7:                                 # %lor.lhs.false
	movb	48(%r15), %cl
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 64(%r15)
	cmpl	$0, 40(%r15)
	jne	.LBB1_9
	jmp	.LBB1_8
.LBB1_5:                                # %if.then.45
	movl	$0, (%rbp)
.LBB1_8:                                # %if.then.74
	movl	$1, 148(%r15)
	movl	$1, 152(%r15)
	movl	$1, 16(%r15)
	movl	$1, %edx
.LBB1_9:                                # %if.end.79
	movl	(%r15), %esi
	movl	4(%r15), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	addl	%eax, %eax
	leal	(%rax,%rax,4), %eax
	movl	%esi, %edi
	negl	%edi
	cmovll	%esi, %edi
	cmpl	%edi, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, 140(%r15)
	movl	$-15, %eax
	testl	%edx, %edx
	je	.LBB1_36
# BB#10:                                # %if.end.113
	cvtsi2sdl	%esi, %xmm1
	cvtsi2sdl	%edx, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm0, %xmm2
	movapd	%xmm2, 80(%rsp)         # 16-byte Spill
	xorps	%xmm2, %xmm2
	cvtsi2sdl	8(%r15), %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	cvtsi2sdl	12(%r15), %xmm3
	divsd	%xmm0, %xmm3
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	mulsd	%xmm1, %xmm1
	movapd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB1_12
# BB#11:                                # %call.sqrt
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB1_12:                               # %if.end.113.split
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movapd	80(%rsp), %xmm0         # 16-byte Reload
	movapd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB1_14
# BB#13:                                # %call.sqrt241
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB1_14:                               # %if.end.113.split.split
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movapd	80(%rsp), %xmm5         # 16-byte Reload
	movsd	48(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	32(%rsp), %xmm8         # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	24(%rsp), %xmm7         # 8-byte Reload
                                        # xmm7 = mem[0],zero
	movsd	64(%rsp), %xmm9         # 8-byte Reload
                                        # xmm9 = mem[0],zero
	jne	.LBB1_15
	jnp	.LBB1_22
.LBB1_15:                               # %if.end.113.split.split
	ucomisd	%xmm1, %xmm8
	jne	.LBB1_16
	jnp	.LBB1_22
.LBB1_16:                               # %if.end.113.split.split
	movapd	%xmm6, %xmm2
	mulsd	%xmm9, %xmm2
	movapd	%xmm5, %xmm1
	mulsd	%xmm7, %xmm1
	subsd	%xmm1, %xmm2
	xorpd	%xmm3, %xmm3
	movapd	.LCPI1_4(%rip), %xmm4   # xmm4 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm2, %xmm4
	movapd	%xmm2, %xmm1
	cmpltsd	%xmm3, %xmm1
	movapd	%xmm1, %xmm3
	andnpd	%xmm2, %xmm3
	andpd	%xmm4, %xmm1
	orpd	%xmm3, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB1_17
	jnp	.LBB1_22
.LBB1_17:                               # %if.then.191
	mulsd	%xmm7, %xmm6
	mulsd	%xmm9, %xmm5
	addsd	%xmm6, %xmm5
	movapd	.LCPI1_4(%rip), %xmm3   # xmm3 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm5, %xmm3
	movapd	%xmm5, %xmm4
	cmpltsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm2
	andnpd	%xmm5, %xmm2
	andpd	%xmm3, %xmm4
	cmpl	$0, 140(%r15)
	movapd	%xmm8, %xmm3
	je	.LBB1_19
# BB#18:                                # %if.then.191
	movapd	%xmm0, %xmm3
.LBB1_19:                               # %if.then.191
	orpd	%xmm4, %xmm2
	je	.LBB1_21
# BB#20:                                # %if.then.191
	movapd	%xmm8, %xmm0
.LBB1_21:                               # %if.then.191
	movapd	%xmm1, %xmm4
	divsd	%xmm0, %xmm4
	movapd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, 9768(%r15)
	movsd	%xmm4, 9776(%r15)
	xorps	%xmm3, %xmm3
	cvtsi2sdl	16(%r15), %xmm3
	movapd	%xmm0, %xmm5
	mulsd	%xmm3, %xmm5
	movsd	.LCPI1_5(%rip), %xmm6   # xmm6 = mem[0],zero
	addsd	%xmm6, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, 9796(%r15)
	mulsd	%xmm4, %xmm3
	addsd	%xmm6, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, 9792(%r15)
	xorps	%xmm3, %xmm3
	cvtsi2sdl	40(%r15), %xmm3
	movapd	%xmm3, %xmm5
	divsd	%xmm0, %xmm5
	addsd	%xmm6, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, 9804(%r15)
	divsd	%xmm4, %xmm3
	addsd	%xmm6, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, 9800(%r15)
	divsd	.LCPI1_6(%rip), %xmm1
	ucomisd	%xmm2, %xmm1
	setae	%al
	movzbl	%al, %eax
	movl	%eax, 9732(%r15)
.LBB1_22:                               # %cleanup
	movsd	.LCPI1_7(%rip), %xmm1   # xmm1 = mem[0],zero
	leaq	160(%rsp), %rsi
	xorpd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	gs_distance_transform
	leaq	112(%rsp), %rsi
	xorpd	%xmm0, %xmm0
	movsd	.LCPI1_7(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	%rbx, %rdi
	callq	gs_distance_transform
	leaq	96(%rsp), %rsi
	xorpd	%xmm0, %xmm0
	movsd	.LCPI1_7(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	%r14, %rdi
	callq	gs_distance_transform
	movsd	160(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	168(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB1_24
# BB#23:                                # %call.sqrt242
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB1_24:                               # %cleanup.split
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movsd	112(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB1_26
# BB#25:                                # %call.sqrt243
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB1_26:                               # %cleanup.split.split
	movapd	%xmm0, 80(%rsp)         # 16-byte Spill
	leaq	124(%r15), %r13
	movq	%r15, %r14
	subq	$-128, %r14
	leaq	132(%r15), %r12
	leaq	136(%r15), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movsd	96(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB1_28
# BB#27:                                # %call.sqrt244
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB1_28:                               # %cleanup.split.split.split
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	movsd	%xmm1, 9784(%r15)
	movapd	80(%rsp), %xmm2         # 16-byte Reload
	unpcklpd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0]
	unpcklpd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0]
	divpd	%xmm1, %xmm2
	mulpd	.LCPI1_8(%rip), %xmm2
	addpd	.LCPI1_9(%rip), %xmm2
	movapd	%xmm2, 80(%rsp)         # 16-byte Spill
	movapd	%xmm2, %xmm0
	callq	floor
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	movapd	80(%rsp), %xmm0         # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	floor
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	divpd	.LCPI1_8(%rip), %xmm1
	movupd	%xmm1, 9752(%r15)
	movl	(%r15), %esi
	movl	4(%r15), %edx
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	leal	(%rax,%rax), %ecx
	leal	(%rcx,%rcx,4), %ecx
	movl	%esi, %edi
	negl	%edi
	cmovll	%esi, %edi
	cmpl	%edi, %ecx
	setl	%cl
	addl	%edi, %edi
	leal	(%rdi,%rdi,4), %edi
	cmpl	%eax, %edi
	setl	%al
	orb	%cl, %al
	movzbl	%al, %eax
	movl	%eax, 160(%r15)
	movl	8(%r15), %ebx
	movl	12(%r15), %edi
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	leal	(%rax,%rax), %ecx
	leal	(%rcx,%rcx,4), %ecx
	movl	%edi, %ebp
	negl	%ebp
	cmovll	%edi, %ebp
	cmpl	%ebp, %ecx
	setl	%cl
	addl	%ebp, %ebp
	leal	(%rbp,%rbp,4), %ebp
	cmpl	%eax, %ebp
	setl	%al
	orb	%cl, %al
	movzbl	%al, %eax
	movl	%eax, 156(%r15)
	movl	288(%rsp), %eax
	movl	%eax, 144(%r15)
	testl	%eax, %eax
	cmoveq	%r12, %r13
	movl	(%r13), %eax
	cmoveq	48(%rsp), %r14          # 8-byte Folded Reload
	movq	%r14, 80(%rsp)          # 8-byte Spill
	movl	$256, %r8d              # imm = 0x100
	movl	$256, %ebp              # imm = 0x100
	movb	%al, %cl
	shlq	%cl, %rbp
	movl	%eax, %ecx
	negl	%ecx
	movl	$256, %r9d              # imm = 0x100
	shrq	%cl, %r9
	testl	%eax, %eax
	cmovgl	%ebp, %r9d
	movl	(%r14), %eax
	movl	$256, %ebp              # imm = 0x100
	movb	%al, %cl
	shlq	%cl, %rbp
	movl	%eax, %ecx
	negl	%ecx
	shrq	%cl, %r8
	testl	%eax, %eax
	cmovgl	%ebp, %r8d
	movl	%r9d, %eax
	shrl	$31, %eax
	leal	(%rax,%r9), %eax
	sarl	%eax
	addl	272(%rsp), %eax
	negl	%r9d
	andl	%eax, %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovll	%r9d, %eax
	movl	%r9d, 84(%r15)
	movl	%r8d, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%r8), %ecx
	sarl	%ecx
	addl	280(%rsp), %ecx
	negl	%r8d
	andl	%ecx, %r8d
	movl	%r8d, %ecx
	negl	%ecx
	cmovll	%r8d, %ecx
	movl	%r8d, 88(%r15)
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movslq	%ecx, %r14
	movq	56(%r15), %rbp
	cmpq	%rbp, %r14
	jae	.LBB1_30
# BB#29:                                # %entry.while.end_crit_edge.i.i
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r10d
	jmp	.LBB1_33
.LBB1_30:                               # %while.body.lr.ph.i.i
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movsd	9768(%r15), %xmm1       # xmm1 = mem[0],zero
	movsd	9776(%r15), %xmm0       # xmm0 = mem[0],zero
	movl	16(%r15), %r10d
	movl	20(%r15), %r13d
	movdqu	24(%r15), %xmm2
	movl	40(%r15), %eax
	movl	44(%r15), %ecx
	movl	48(%r15), %r12d
	movl	64(%r15), %r11d
	movdqa	.LCPI1_10(%rip), %xmm3  # xmm3 = [1,1,1,1]
	.align	16, 0x90
.LBB1_31:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%rbp, %rbp
	incl	%esi
	sarl	%esi
	incl	%edx
	sarl	%edx
	incl	%ebx
	sarl	%ebx
	incl	%edi
	sarl	%edi
	sarl	%r10d
	decl	%r13d
	paddd	%xmm3, %xmm2
	psrad	$1, %xmm2
	sarl	%eax
	decl	%ecx
	decl	%r12d
	sarl	%r11d
	cmpq	%rbp, %r14
	jae	.LBB1_31
# BB#32:                                # %while.end.i.loopexit.i
	movq	%rbp, 56(%r15)
	movl	%esi, (%r15)
	movl	%edx, 4(%r15)
	movl	%ebx, 8(%r15)
	movl	%edi, 12(%r15)
	movl	%r10d, 16(%r15)
	movl	%r13d, 20(%r15)
	cvtsi2sdl	%eax, %xmm3
	movdqu	%xmm2, 24(%r15)
	movl	%eax, 40(%r15)
	movl	%ecx, 44(%r15)
	movl	%r12d, 48(%r15)
	cvtsi2sdl	%r10d, %xmm2
	movapd	%xmm3, %xmm4
	divsd	%xmm1, %xmm4
	mulsd	%xmm2, %xmm1
	movsd	.LCPI1_5(%rip), %xmm5   # xmm5 = mem[0],zero
	addsd	%xmm5, %xmm1
	movl	%r11d, 64(%r15)
	cvttsd2si	%xmm1, %eax
	mulsd	%xmm0, %xmm2
	addsd	%xmm5, %xmm2
	movl	%eax, 9796(%r15)
	cvttsd2si	%xmm2, %eax
	addsd	%xmm5, %xmm4
	movl	%eax, 9792(%r15)
	cvttsd2si	%xmm4, %eax
	divsd	%xmm0, %xmm3
	addsd	%xmm5, %xmm3
	movl	%eax, 9804(%r15)
	cvttsd2si	%xmm3, %eax
	movl	%eax, 9800(%r15)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	48(%rsp), %r13          # 8-byte Reload
.LBB1_33:                               # %while.end.i.i
	testl	%r10d, %r10d
	movq	80(%rsp), %rbx          # 8-byte Reload
	jne	.LBB1_35
# BB#34:                                # %if.then.i.i
	movl	$1, (%rax)
.LBB1_35:                               # %t1_hinter__set_origin.exit
	movl	48(%r15), %esi
	leal	-8(%rsi), %eax
	movl	%r9d, %edi
	movb	%al, %cl
	shll	%cl, %edi
	movl	$8, %edx
	subl	%esi, %edx
	movb	%dl, %cl
	sarl	%cl, %r9d
	movl	%r8d, %ebp
	movb	%al, %cl
	shll	%cl, %ebp
	movb	%dl, %cl
	sarl	%cl, %r8d
	testl	%eax, %eax
	cmovnsl	%edi, %r9d
	movl	%r9d, 92(%r15)
	cmovnsl	%ebp, %r8d
	movl	%r8d, 96(%r15)
	movslq	64(%r15), %rax
	movl	(%r13), %ebp
	movq	%rax, %rdi
	movb	%bpl, %cl
	shlq	%cl, %rdi
	movl	%ebp, %ecx
	negl	%ecx
	movq	%rax, %rdx
	sarq	%cl, %rdx
	testl	%ebp, %ebp
	movq	%rdx, %rbp
	cmovgq	%rdi, %rbp
	cmovgl	%edi, %edx
	movl	%edx, 9808(%r15)
	movl	(%rbx), %edx
	movq	%rax, %rdi
	movb	%dl, %cl
	shlq	%cl, %rdi
	movl	%edx, %ecx
	negl	%ecx
	sarq	%cl, %rax
	testl	%edx, %edx
	movq	%rax, %rdx
	cmovgq	%rdi, %rdx
	cmovgl	%edi, %eax
	movl	%eax, 9812(%r15)
	movslq	%ebp, %rax
	movslq	9804(%r15), %rdi
	imulq	%rax, %rdi
	shrq	$12, %rdi
	movl	44(%r15), %eax
	leal	-21(%rsi,%rax), %ecx
	sarl	%cl, %edi
	incl	%edi
	movl	%edi, %eax
	sarl	$31, %eax
	sarl	%edi
	addl	%eax, %edi
	xorl	%eax, %edi
	movl	%edi, 9820(%r15)
	movslq	%edx, %rax
	movslq	9800(%r15), %rdx
	imulq	%rax, %rdx
	shrq	$12, %rdx
	sarl	%cl, %edx
	incl	%edx
	movl	%edx, %eax
	sarl	$31, %eax
	sarl	%edx
	addl	%eax, %edx
	xorl	%eax, %edx
	movl	%edx, 9816(%r15)
	xorl	%eax, %eax
.LBB1_36:                               # %cleanup.421
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	t1_hinter__set_mapping, .Lfunc_end1-t1_hinter__set_mapping
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	fraction_matrix__set,@function
fraction_matrix__set:                   # @fraction_matrix__set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movhpd	16(%rbx), %xmm1
	movapd	.LCPI2_0(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	movhpd	24(%rbx), %xmm0
	andpd	%xmm2, %xmm0
	addpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	maxsd	%xmm1, %xmm0
	leaq	4(%rsp), %rdi
	callq	frexp
	movl	$19, %ecx
	subl	4(%rsp), %ecx
	movl	%ecx, 20(%r14)
	cmpl	$32, %ecx
	jb	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, 16(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%r14)
	jmp	.LBB2_4
.LBB2_2:                                # %if.else
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 16(%r14)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	(%rbx), %xmm2           # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	movl	%ecx, (%r14)
	movsd	8(%rbx), %xmm2          # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	movl	%edx, 4(%r14)
	movsd	16(%rbx), %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movl	%edx, 8(%r14)
	mulsd	24(%rbx), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, %edi
	negl	%edi
	cmovll	%edx, %edi
	movl	%edx, 12(%r14)
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	cmpl	%edi, %esi
	cmovgel	%esi, %edi
	cmpl	%edi, %ecx
	cmovgel	%ecx, %edi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	leaq	4(%rsp), %rdi
	callq	frexp
	movl	4(%rsp), %ecx
	cmpl	$20, %ecx
	jb	.LBB2_4
# BB#3:                                 # %if.then.91
	leal	-19(%rcx), %eax
	movl	(%r14), %edx
	addl	$-20, %ecx
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	movl	%edx, (%r14)
	movl	4(%r14), %edx
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	movl	%edx, 4(%r14)
	movl	8(%r14), %edx
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	movl	%edx, 8(%r14)
	movl	12(%r14), %edx
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	movl	%edx, 12(%r14)
	movb	%al, %cl
	sarl	%cl, 16(%r14)
	subl	%eax, 20(%r14)
.LBB2_4:                                # %if.end.93
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	fraction_matrix__set, .Lfunc_end2-fraction_matrix__set
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1132462080              # float 256
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	-4671707469362886786    # double -2.0416999999999999E-4
	.text
	.globl	t1_hinter__set_font_data
	.align	16, 0x90
	.type	t1_hinter__set_font_data,@function
t1_hinter__set_font_data:               # @t1_hinter__set_font_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movl	%ecx, %eax
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$0, 9664(%rbx)
	movl	$0, 9680(%rbx)
	movq	7696(%rbx), %rcx
	movl	$0, (%rcx)
	movl	$0, 9688(%rbx)
	movl	$-1, 9712(%rbx)
	movl	$0, 168(%rbx)
	movl	%esi, 9720(%rbx)
	movss	100(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 9744(%rbx)
	movss	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	104(%r14), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	cvttss2si	%xmm2, %ecx
	movl	%ecx, 180(%rbx)
	xorps	%xmm2, %xmm2
	cvtsi2ssl	96(%r14), %xmm2
	mulss	%xmm0, %xmm2
	cvttss2si	%xmm2, %ecx
	movl	%ecx, 184(%rbx)
	movsd	9768(%rbx), %xmm0       # xmm0 = mem[0],zero
	movb	128(%rbx), %cl
	movl	$1, %edx
	shll	%cl, %edx
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm2
	movapd	%xmm0, %xmm3
	divsd	%xmm2, %xmm3
	addsd	.LCPI3_1(%rip), %xmm3
	ucomisd	%xmm3, %xmm1
	seta	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 9736(%rbx)
	xorl	%ecx, %ecx
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB3_1
	jnp	.LBB3_2
.LBB3_1:                                # %cond.true
	movslq	%edx, %rcx
	shlq	$7, %rcx
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
.LBB3_2:                                # %cond.end
	movl	%ecx, 9824(%rbx)
	movl	172(%r14), %ecx
	movl	%ecx, 9728(%rbx)
	orl	%eax, 148(%rbx)
	movl	152(%rbx), %ecx
	orl	%eax, %ecx
	movl	%ecx, 152(%rbx)
	movl	%eax, 164(%rbx)
	testl	%r8d, %r8d
	je	.LBB3_5
# BB#3:                                 # %land.end.thread
	movl	$0, 176(%rbx)
	jmp	.LBB3_4
.LBB3_5:                                # %land.end
	cmpq	$0, 9848(%rbx)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 176(%rbx)
	je	.LBB3_4
# BB#6:                                 # %if.end.31.thread
	movl	$0, 152(%rbx)
	jmp	.LBB3_7
.LBB3_4:                                # %if.end.31
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB3_16
.LBB3_7:                                # %if.end.35
	leaq	288(%r14), %rsi
	movl	284(%r14), %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	t1_hinter__set_alignment_zones
	testl	%eax, %eax
	js	.LBB3_16
# BB#8:                                 # %if.end.53
	leaq	112(%r14), %rsi
	movl	108(%r14), %eax
	cmpl	$2, %eax
	movl	$2, %edx
	cmovlel	%eax, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	t1_hinter__set_alignment_zones
	testl	%eax, %eax
	js	.LBB3_16
# BB#9:                                 # %if.end.64
	leaq	120(%r14), %rsi
	movl	108(%r14), %edx
	addl	$-2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	t1_hinter__set_alignment_zones
	testl	%eax, %eax
	js	.LBB3_16
# BB#10:                                # %if.end.73
	leaq	240(%r14), %rsi
	movl	236(%r14), %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	t1_hinter__set_alignment_zones
	testl	%eax, %eax
	js	.LBB3_16
# BB#11:                                # %if.end.90
	leaq	180(%r14), %rsi
	movl	176(%r14), %eax
	cmpl	$2, %eax
	movl	$2, %edx
	cmovlel	%eax, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	t1_hinter__set_alignment_zones
	testl	%eax, %eax
	js	.LBB3_16
# BB#12:                                # %if.end.102
	leaq	188(%r14), %rsi
	movl	176(%r14), %edx
	addl	$-2, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	t1_hinter__set_alignment_zones
	testl	%eax, %eax
	js	.LBB3_16
# BB#13:                                # %if.end.111
	leaq	336(%r14), %rsi
	movl	332(%r14), %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	t1_hinter__set_stem_snap
	testl	%eax, %eax
	js	.LBB3_16
# BB#14:                                # %if.end.120
	leaq	344(%r14), %rsi
	movl	340(%r14), %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	t1_hinter__set_stem_snap
	testl	%eax, %eax
	js	.LBB3_16
# BB#15:                                # %if.end.129
	leaq	352(%r14), %rsi
	movl	348(%r14), %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	t1_hinter__set_stem_snap
	testl	%eax, %eax
	js	.LBB3_16
# BB#17:                                # %if.then.132
	movl	400(%r14), %edx
	addq	$404, %r14              # imm = 0x194
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	t1_hinter__set_stem_snap # TAILCALL
.LBB3_16:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	t1_hinter__set_font_data, .Lfunc_end3-t1_hinter__set_font_data
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1132462080              # float 256
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_2:
	.quad	4602678819172646912     # double 0.5
.LCPI4_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	t1_hinter__set_alignment_zones,@function
t1_hinter__set_alignment_zones:         # @t1_hinter__set_alignment_zones
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 112
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movl	%r13d, 28(%rsp)         # 4-byte Spill
	movl	%edx, %r15d
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movl	%r15d, %eax
	shrl	$31, %eax
	leal	(%rax,%r15), %ecx
	sarl	%ecx
	testl	%r8d, %r8d
	je	.LBB4_6
# BB#1:                                 # %for.cond.16.preheader
	xorl	%eax, %eax
	cmpl	$2, %r15d
	jl	.LBB4_41
# BB#2:                                 # %for.body.18.lr.ph
	movslq	%ecx, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	xorl	%r9d, %r9d
	xorps	%xmm8, %xmm8
	movss	.LCPI4_0(%rip), %xmm9   # xmm9 = mem[0],zero,zero,zero
	movsd	.LCPI4_3(%rip), %xmm2   # xmm2 = mem[0],zero
	movdqa	.LCPI4_1(%rip), %xmm3   # xmm3 = [1,1,1,1]
	movsd	.LCPI4_2(%rip), %xmm10  # xmm10 = mem[0],zero
	.align	16, 0x90
.LBB4_3:                                # %for.body.18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_31 Depth 2
                                        #     Child Loop BB4_36 Depth 2
	movl	184(%r14), %ecx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movss	(%rdx,%r9,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	addss	%xmm8, %xmm0
	mulss	%xmm9, %xmm0
	cvttss2si	%xmm0, %eax
	movss	4(%rdx,%r9,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	addss	%xmm8, %xmm0
	mulss	%xmm9, %xmm0
	cvttss2si	%xmm0, %r12d
	cmpl	%r12d, %eax
	movl	%r12d, %r10d
	cmovlel	%eax, %r10d
	movl	%r12d, %r11d
	cmovgel	%eax, %r11d
	subl	%ecx, %r10d
	addl	%ecx, %r11d
	cmpl	$1, %r13d
	jne	.LBB4_26
# BB#4:                                 # %cond.true.26.i.76
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	%r12d, %eax
	jge	.LBB4_27
	jmp	.LBB4_5
	.align	16, 0x90
.LBB4_26:                               # %cond.false.31.i.77
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	%r12d, %eax
	jle	.LBB4_27
.LBB4_5:                                # %if.then.i.78
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	%eax, %r15d
	jmp	.LBB4_28
	.align	16, 0x90
.LBB4_27:                               #   in Loop: Header=BB4_3 Depth=1
	movl	%r12d, %r15d
	movl	%eax, %r12d
.LBB4_28:                               # %t1_hinter__make_zone.exit80
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	%r10d, %eax
	negl	%eax
	cmovll	%r10d, %eax
	movl	%r11d, %ecx
	negl	%ecx
	cmovll	%r11d, %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movslq	%ecx, %r8
	movq	56(%r14), %rdx
	cmpq	%rdx, %r8
	jae	.LBB4_30
# BB#29:                                # %entry.while.end_crit_edge.i.93
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	%r13d, %esi
	movl	16(%r14), %r13d
	jmp	.LBB4_33
	.align	16, 0x90
.LBB4_30:                               # %while.body.lr.ph.i.103
                                        #   in Loop: Header=BB4_3 Depth=1
	movsd	9768(%r14), %xmm0       # xmm0 = mem[0],zero
	movsd	9776(%r14), %xmm11      # xmm11 = mem[0],zero
	movdqu	(%r14), %xmm5
	movl	16(%r14), %r13d
	movl	20(%r14), %esi
	movdqu	24(%r14), %xmm6
	movl	40(%r14), %ebx
	movl	44(%r14), %ecx
	movl	48(%r14), %edi
	movl	64(%r14), %eax
	.align	16, 0x90
.LBB4_31:                               # %while.body.i.118
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	%rdx, %rdx
	paddd	%xmm3, %xmm5
	psrad	$1, %xmm5
	sarl	%r13d
	decl	%esi
	paddd	%xmm3, %xmm6
	psrad	$1, %xmm6
	sarl	%ebx
	decl	%ecx
	decl	%edi
	sarl	%eax
	cmpq	%rdx, %r8
	jae	.LBB4_31
# BB#32:                                # %while.end.i.121.loopexit
                                        #   in Loop: Header=BB4_3 Depth=1
	cvtsi2sdl	%r13d, %xmm1
	cvtsi2sdl	%ebx, %xmm4
	movapd	%xmm4, %xmm7
	divsd	%xmm0, %xmm7
	mulsd	%xmm1, %xmm0
	addsd	%xmm10, %xmm0
	cvttsd2si	%xmm0, %ebp
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	mulsd	%xmm11, %xmm1
	addsd	%xmm10, %xmm1
	cvttsd2si	%xmm1, %ebp
	movl	%ebp, 32(%rsp)          # 4-byte Spill
	addsd	%xmm10, %xmm7
	cvttsd2si	%xmm7, %ebp
	divsd	%xmm11, %xmm4
	addsd	%xmm10, %xmm4
	cvttsd2si	%xmm4, %r8d
	movq	%rdx, 56(%r14)
	movdqu	%xmm5, (%r14)
	movl	%r13d, 16(%r14)
	movl	%esi, 20(%r14)
	movdqu	%xmm6, 24(%r14)
	movl	%ebx, 40(%r14)
	movl	%ecx, 44(%r14)
	movl	%edi, 48(%r14)
	movl	%eax, 64(%r14)
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 9796(%r14)
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 9792(%r14)
	movl	%ebp, 9804(%r14)
	movl	%r8d, 9800(%r14)
	movl	28(%rsp), %esi          # 4-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
.LBB4_33:                               # %while.end.i.121
                                        #   in Loop: Header=BB4_3 Depth=1
	testl	%r13d, %r13d
	jne	.LBB4_35
# BB#34:                                # %if.then.i.122
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$1, 16(%r14)
.LBB4_35:                               # %for.cond.22.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	9672(%r14), %edx
	testl	%edx, %edx
	movl	$16, %eax
	movl	$0, %ecx
	movl	%esi, %r13d
	jle	.LBB4_40
	.align	16, 0x90
.LBB4_36:                               # %for.body.25
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	7648(%r14), %rsi
	movl	%r12d, %ebp
	subl	-12(%rsi,%rax), %ebp
	movl	%ebp, %edi
	negl	%edi
	cmovll	%ebp, %edi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	movsd	9768(%r14), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm2
	jb	.LBB4_39
# BB#37:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_36 Depth=2
	movl	%r15d, %ebp
	subl	-8(%rsi,%rax), %ebp
	movl	%ebp, %edi
	negl	%edi
	cmovll	%ebp, %edi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	mulsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jb	.LBB4_39
# BB#38:                                # %if.then.64
                                        #   in Loop: Header=BB4_36 Depth=2
	movl	%r13d, -16(%rsi,%rax)
	movl	%r12d, -12(%rsi,%rax)
	movl	%r15d, -8(%rsi,%rax)
	movl	%r10d, -4(%rsi,%rax)
	movl	%r11d, (%rsi,%rax)
	movl	9672(%r14), %edx
.LBB4_39:                               # %if.end.65
                                        #   in Loop: Header=BB4_36 Depth=2
	incq	%rcx
	movslq	%edx, %rsi
	addq	$20, %rax
	cmpq	%rsi, %rcx
	jl	.LBB4_36
.LBB4_40:                               # %for.inc.69
                                        #   in Loop: Header=BB4_3 Depth=1
	incq	%r9
	xorl	%eax, %eax
	cmpq	%rbx, %r9
	jl	.LBB4_3
	jmp	.LBB4_41
.LBB4_6:                                # %if.then
	movl	9672(%r14), %r8d
	movl	9676(%r14), %eax
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leal	(%r8,%rcx), %ecx
	cmpl	%eax, %ecx
	jl	.LBB4_11
# BB#7:                                 # %if.then.1
	movq	9848(%r14), %rbp
	cmpl	$6, %r15d
	movl	$6, %ebx
	cmovgel	%r15d, %ebx
	leal	(%rax,%rbx,2), %eax
	shll	$2, %eax
	leal	(%rax,%rax,4), %esi
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, %r12
	movl	$-25, %eax
	testq	%r12, %r12
	je	.LBB4_41
# BB#8:                                 # %if.end.i
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	addl	%ebx, %ebx
	leaq	7528(%r14), %rbp
	movq	7648(%r14), %rsi
	movslq	9676(%r14), %rax
	shlq	$2, %rax
	leaq	(%rax,%rax,4), %rdx
	movq	%r12, %rdi
	callq	memcpy
	movq	7648(%r14), %rsi
	cmpq	%rbp, %rsi
	je	.LBB4_10
# BB#9:                                 # %if.then.6.i
	movl	$.L.str, %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	*24(%rdi)
.LBB4_10:                               # %t1_hinter__realloc_array.exit.thread
	movq	%r12, 7648(%r14)
	addl	%ebx, 9676(%r14)
	movl	9672(%r14), %r8d
.LBB4_11:                               # %for.cond.preheader
	movq	%r8, 40(%rsp)           # 8-byte Spill
	cmpl	$2, %r15d
	jl	.LBB4_25
# BB#12:                                # %for.body.lr.ph
	movq	8(%rsp), %rax           # 8-byte Reload
	movslq	%eax, %r9
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movq	7648(%r14), %r11
	movl	184(%r14), %r10d
	movl	%r10d, 16(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	xorps	%xmm8, %xmm8
	movss	.LCPI4_0(%rip), %xmm9   # xmm9 = mem[0],zero,zero,zero
	movdqa	.LCPI4_1(%rip), %xmm2   # xmm2 = [1,1,1,1]
	movsd	.LCPI4_2(%rip), %xmm10  # xmm10 = mem[0],zero
	.align	16, 0x90
.LBB4_13:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
	leal	(%r8,%r15), %eax
	cltq
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%r15,4), %rdx
	leaq	(%rax,%rax,4), %rax
	movl	%r13d, (%r11,%rax,4)
	movss	(%rdx,%r15,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	addss	%xmm8, %xmm4
	mulss	%xmm9, %xmm4
	cvttss2si	%xmm4, %ecx
	movl	%ecx, 4(%r11,%rax,4)
	movss	4(%rdx,%r15,4), %xmm4   # xmm4 = mem[0],zero,zero,zero
	addss	%xmm8, %xmm4
	mulss	%xmm9, %xmm4
	cvttss2si	%xmm4, %edi
	movl	%edi, 8(%r11,%rax,4)
	cmpl	%edi, %ecx
	movl	%edi, %esi
	cmovlel	%ecx, %esi
	movl	%edi, %edx
	cmovgel	%ecx, %edx
	subl	%r10d, %esi
	movl	%esi, 12(%r11,%rax,4)
	addl	%r10d, %edx
	movl	%edx, 16(%r11,%rax,4)
	cmpl	$1, %r13d
	jne	.LBB4_15
# BB#14:                                # %cond.true.26.i
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpl	%edi, %ecx
	jl	.LBB4_16
	jmp	.LBB4_17
	.align	16, 0x90
.LBB4_15:                               # %cond.false.31.i
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpl	%edi, %ecx
	jle	.LBB4_17
.LBB4_16:                               # %if.then.i
                                        #   in Loop: Header=BB4_13 Depth=1
	leaq	4(%r11,%rax,4), %rbx
	leaq	8(%r11,%rax,4), %rax
	movl	%ecx, (%rax)
	movl	%edi, (%rbx)
.LBB4_17:                               # %t1_hinter__make_zone.exit
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	%esi, %eax
	negl	%eax
	cmovll	%esi, %eax
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movslq	%ecx, %rbx
	movq	56(%r14), %rbp
	cmpq	%rbp, %rbx
	jae	.LBB4_19
# BB#18:                                # %entry.while.end_crit_edge.i
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	16(%r14), %ecx
	jmp	.LBB4_22
	.align	16, 0x90
.LBB4_19:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB4_13 Depth=1
	movsd	9768(%r14), %xmm7       # xmm7 = mem[0],zero
	movsd	9776(%r14), %xmm6       # xmm6 = mem[0],zero
	movdqu	(%r14), %xmm4
	movl	16(%r14), %ecx
	movl	20(%r14), %r12d
	movdqu	24(%r14), %xmm5
	movl	40(%r14), %edi
	movl	44(%r14), %edx
	movl	48(%r14), %esi
	movl	64(%r14), %eax
	.align	16, 0x90
.LBB4_20:                               # %while.body.i
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	%rbp, %rbp
	paddd	%xmm2, %xmm4
	psrad	$1, %xmm4
	sarl	%ecx
	decl	%r12d
	paddd	%xmm2, %xmm5
	psrad	$1, %xmm5
	sarl	%edi
	decl	%edx
	decl	%esi
	sarl	%eax
	cmpq	%rbp, %rbx
	jae	.LBB4_20
# BB#21:                                # %while.end.i.loopexit
                                        #   in Loop: Header=BB4_13 Depth=1
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	%edi, %xmm1
	movapd	%xmm1, %xmm3
	divsd	%xmm7, %xmm3
	mulsd	%xmm0, %xmm7
	addsd	%xmm10, %xmm7
	cvttsd2si	%xmm7, %ebx
	mulsd	%xmm6, %xmm0
	addsd	%xmm10, %xmm0
	cvttsd2si	%xmm0, %r8d
	addsd	%xmm10, %xmm3
	cvttsd2si	%xmm3, %r9d
	divsd	%xmm6, %xmm1
	addsd	%xmm10, %xmm1
	cvttsd2si	%xmm1, %r10d
	movq	%rbp, 56(%r14)
	movdqu	%xmm4, (%r14)
	movl	%ecx, 16(%r14)
	movl	%r12d, 20(%r14)
	movdqu	%xmm5, 24(%r14)
	movl	%edi, 40(%r14)
	movl	%edx, 44(%r14)
	movl	%esi, 48(%r14)
	movl	%eax, 64(%r14)
	movl	%ebx, 9796(%r14)
	movl	%r8d, 9792(%r14)
	movl	%r9d, 9804(%r14)
	movl	%r10d, 9800(%r14)
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	32(%rsp), %r9           # 8-byte Reload
	movl	16(%rsp), %r10d         # 4-byte Reload
.LBB4_22:                               # %while.end.i
                                        #   in Loop: Header=BB4_13 Depth=1
	testl	%ecx, %ecx
	jne	.LBB4_24
# BB#23:                                # %if.then.i.48
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	$1, 16(%r14)
.LBB4_24:                               # %t1_hinter__adjust_matrix_precision.exit
                                        #   in Loop: Header=BB4_13 Depth=1
	incq	%r15
	cmpq	%r9, %r15
	jl	.LBB4_13
.LBB4_25:                               # %for.end
	movq	8(%rsp), %rax           # 8-byte Reload
	addl	%eax, %r8d
	movl	%r8d, 9672(%r14)
	xorl	%eax, %eax
.LBB4_41:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	t1_hinter__set_alignment_zones, .Lfunc_end4-t1_hinter__set_alignment_zones
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1132462080              # float 256
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_1:
	.long	1132462080              # float 2.560000e+02
	.long	1132462080              # float 2.560000e+02
	.long	1132462080              # float 2.560000e+02
	.long	1132462080              # float 2.560000e+02
	.text
	.align	16, 0x90
	.type	t1_hinter__set_stem_snap,@function
t1_hinter__set_stem_snap:               # @t1_hinter__set_stem_snap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 96
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movl	%edx, %r14d
	movq	%rdi, %r15
	leaq	9820(%r15), %rax
	leaq	9816(%r15), %rdx
	testw	%bx, %bx
	cmoveq	%rax, %rdx
	movl	(%rdx), %eax
	testl	%eax, %eax
	je	.LBB5_1
# BB#2:                                 # %if.end
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	9632(%r15,%rbx,4), %r12d
	addl	%r14d, %r12d
	movl	9640(%r15,%rbx,4), %eax
	cmpl	%eax, %r12d
	jl	.LBB5_7
# BB#3:                                 # %if.then.4
	movq	9848(%r15), %rdi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	cmpl	$12, %r14d
	movl	$12, %r13d
	cmovgel	%r14d, %r13d
	leal	(%rax,%r13,2), %esi
	shll	$2, %esi
	movl	$.L.str.1, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB5_42
# BB#4:                                 # %if.end.i
	addl	%r13d, %r13d
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	imulq	$52, %rbx, %rax
	leaq	7752(%r15,%rax), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	7856(%r15,%rbx,8), %rsi
	movslq	9640(%r15,%rbx,4), %rdx
	shlq	$2, %rdx
	movq	%rbp, %rdi
	callq	memcpy
	movq	7856(%r15,%rbx,8), %rsi
	cmpq	(%rsp), %rsi            # 8-byte Folded Reload
	je	.LBB5_6
# BB#5:                                 # %if.then.6.i
	movl	$.L.str.1, %edx
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	*24(%rdi)
.LBB5_6:                                # %t1_hinter__realloc_array.exit.thread
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbp, 7856(%r15,%rbx,8)
	addl	%r13d, 9640(%r15,%rbx,4)
.LBB5_7:                                # %if.end.20
	movl	9652(%r15), %eax
	cmpl	%eax, %r12d
	jl	.LBB5_12
# BB#8:                                 # %if.then.23
	movq	9848(%r15), %r13
	cmpl	$12, %r14d
	movl	$12, %ebp
	cmovgel	%r14d, %ebp
	leal	(%rax,%rbp,2), %esi
	shll	$2, %esi
	movl	$.L.str.2, %edx
	movq	%r13, %rdi
	callq	*64(%r13)
	movq	%rax, %r12
	movl	$-25, %eax
	testq	%r12, %r12
	je	.LBB5_42
# BB#9:                                 # %if.end.i.94
	addl	%ebp, %ebp
	leaq	7872(%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	7928(%r15), %rsi
	movslq	9652(%r15), %rdx
	shlq	$2, %rdx
	movq	%r12, %rdi
	callq	memcpy
	movq	7928(%r15), %rsi
	cmpq	16(%rsp), %rsi          # 8-byte Folded Reload
	je	.LBB5_11
# BB#10:                                # %if.then.6.i.96
	movl	$.L.str.2, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
.LBB5_11:                               # %t1_hinter__realloc_array.exit100.thread
	movq	%r12, 7928(%r15)
	addl	%ebp, 9652(%r15)
.LBB5_12:                               # %if.end.36
	cmpl	$1, %r14d
	je	.LBB5_16
# BB#13:                                # %lor.lhs.false
	testl	%r14d, %r14d
	jle	.LBB5_14
# BB#15:                                # %land.lhs.true
	leal	-1(%r14), %eax
	cltq
	movq	32(%rsp), %rcx          # 8-byte Reload
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	subss	(%rcx), %xmm0
	mulss	.LCPI5_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	cmpl	28(%rsp), %eax          # 4-byte Folded Reload
	movl	$0, %eax
	jle	.LBB5_42
.LBB5_16:                               # %for.body.lr.ph
	movabsq	$8589934584, %rdi       # imm = 0x1FFFFFFF8
	movq	%rbx, %r12
	movq	7856(%r15,%r12,8), %r8
	leal	-1(%r14), %edx
	leaq	1(%rdx), %rax
	xorl	%esi, %esi
	movq	%rax, %rcx
	andq	%rdi, %rcx
	movq	32(%rsp), %r9           # 8-byte Reload
	je	.LBB5_23
# BB#17:                                # %vector.body.preheader
	leaq	1(%rdx), %rsi
	andq	%rdi, %rsi
	addq	$-8, %rsi
	movq	%rsi, %rbp
	shrq	$3, %rbp
	xorl	%ebx, %ebx
	btq	$3, %rsi
	jb	.LBB5_19
# BB#18:                                # %vector.body.prol
	movups	(%r9), %xmm0
	movups	16(%r9), %xmm1
	movaps	.LCPI5_1(%rip), %xmm2   # xmm2 = [2.560000e+02,2.560000e+02,2.560000e+02,2.560000e+02]
	mulps	%xmm2, %xmm0
	mulps	%xmm2, %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movups	%xmm0, (%r8)
	movups	%xmm1, 16(%r8)
	movl	$8, %ebx
.LBB5_19:                               # %vector.body.preheader.split
	testq	%rbp, %rbp
	je	.LBB5_22
# BB#20:                                # %vector.body.preheader.split.split
	incq	%rdx
	andq	%rdi, %rdx
	subq	%rbx, %rdx
	leaq	48(%r9,%rbx,4), %rdi
	leaq	48(%r8,%rbx,4), %rbp
	movaps	.LCPI5_1(%rip), %xmm0   # xmm0 = [2.560000e+02,2.560000e+02,2.560000e+02,2.560000e+02]
	.align	16, 0x90
.LBB5_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdi), %xmm1
	movups	-32(%rdi), %xmm2
	mulps	%xmm0, %xmm1
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm1, %xmm1
	cvttps2dq	%xmm2, %xmm2
	movups	%xmm1, -48(%rbp)
	movups	%xmm2, -32(%rbp)
	movups	-16(%rdi), %xmm1
	movups	(%rdi), %xmm2
	mulps	%xmm0, %xmm1
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm1, %xmm1
	cvttps2dq	%xmm2, %xmm2
	movups	%xmm1, -16(%rbp)
	movups	%xmm2, (%rbp)
	addq	$64, %rdi
	addq	$64, %rbp
	addq	$-16, %rdx
	jne	.LBB5_21
.LBB5_22:
	movq	%rcx, %rsi
.LBB5_23:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB5_26
# BB#24:                                # %for.body.preheader
	leaq	(%r9,%rsi,4), %rcx
	leaq	(%r8,%rsi,4), %rax
	movl	%r14d, %edx
	subl	%esi, %edx
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB5_25:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movl	%esi, (%rax)
	addq	$4, %rcx
	addq	$4, %rax
	decl	%edx
	jne	.LBB5_25
.LBB5_26:                               # %for.body.63.lr.ph
	movl	%r14d, 9632(%r15,%r12,4)
	movslq	%r14d, %r10
	leal	1(%r14), %r8d
	leal	-2(%r14), %r9d
	movl	$1, %esi
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB5_27:                               # %for.body.63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_49 Depth 2
	movq	%r11, %rdi
	leaq	1(%rdi), %r11
	cmpq	%r10, %r11
	jge	.LBB5_28
# BB#43:                                # %for.body.68.lr.ph
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	%r9d, %edx
	subl	%edi, %edx
	movl	%r8d, %eax
	subl	%edi, %eax
	movq	7856(%r15,%r12,8), %rcx
	testb	$1, %al
	movq	%rsi, %rbx
	je	.LBB5_47
# BB#44:                                # %for.body.68.prol
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	(%rcx,%rdi,4), %ebx
	movl	(%rcx,%rsi,4), %eax
	cmpl	%eax, %ebx
	jle	.LBB5_46
# BB#45:                                # %if.then.81.prol
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	%eax, (%rcx,%rdi,4)
	movl	%ebx, (%rcx,%rsi,4)
.LBB5_46:                               # %for.inc.103.prol
                                        #   in Loop: Header=BB5_27 Depth=1
	leaq	1(%rsi), %rbx
.LBB5_47:                               # %for.body.68.lr.ph.split
                                        #   in Loop: Header=BB5_27 Depth=1
	testl	%edx, %edx
	je	.LBB5_28
# BB#48:                                # %for.body.68.lr.ph.split.split
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	%r14d, %edx
	subl	%ebx, %edx
	leaq	4(%rcx,%rbx,4), %rbx
	.align	16, 0x90
.LBB5_49:                               # %for.body.68
                                        #   Parent Loop BB5_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx,%rdi,4), %eax
	movl	-4(%rbx), %ebp
	cmpl	%ebp, %eax
	jle	.LBB5_51
# BB#50:                                # %if.then.81
                                        #   in Loop: Header=BB5_49 Depth=2
	movl	%ebp, (%rcx,%rdi,4)
	movl	%eax, -4(%rbx)
.LBB5_51:                               # %for.inc.103
                                        #   in Loop: Header=BB5_49 Depth=2
	movl	(%rcx,%rdi,4), %eax
	movl	(%rbx), %ebp
	cmpl	%ebp, %eax
	jle	.LBB5_53
# BB#52:                                # %if.then.81.1
                                        #   in Loop: Header=BB5_49 Depth=2
	movl	%ebp, (%rcx,%rdi,4)
	movl	%eax, (%rbx)
.LBB5_53:                               # %for.inc.103.1
                                        #   in Loop: Header=BB5_49 Depth=2
	addq	$8, %rbx
	addl	$-2, %edx
	jne	.LBB5_49
.LBB5_28:                               # %for.cond.60.loopexit
                                        #   in Loop: Header=BB5_27 Depth=1
	incq	%rsi
	cmpl	%r14d, %r11d
	jne	.LBB5_27
# BB#29:                                # %for.cond.109.preheader
	xorl	%eax, %eax
	cmpl	$2, %r14d
	movl	$0, %edx
	jl	.LBB5_41
# BB#30:                                # %for.body.112.lr.ph
	movq	7856(%r15,%r12,8), %rcx
	movl	$1, %esi
	testb	$1, %r14b
	jne	.LBB5_31
# BB#32:                                # %for.body.112.prol
	movl	4(%rcx), %edi
	xorl	%edx, %edx
	movl	$2, %esi
	cmpl	%edi, (%rcx)
	je	.LBB5_34
# BB#33:                                # %if.then.125.prol
	movl	%edi, 4(%rcx)
	movl	$1, %edx
	movl	$2, %esi
	jmp	.LBB5_34
.LBB5_1:
	xorl	%eax, %eax
	jmp	.LBB5_42
.LBB5_14:
	xorl	%eax, %eax
	jmp	.LBB5_42
.LBB5_31:
	xorl	%edx, %edx
.LBB5_34:                               # %for.body.112.lr.ph.split
	cmpl	$2, %r14d
	je	.LBB5_41
# BB#35:                                # %for.body.112.lr.ph.split.split
	subl	%esi, %r14d
	leaq	4(%rcx,%rsi,4), %rsi
	.align	16, 0x90
.LBB5_36:                               # %for.body.112
                                        # =>This Inner Loop Header: Depth=1
	movslq	%edx, %rbp
	movl	-4(%rsi), %edi
	cmpl	%edi, (%rcx,%rbp,4)
	je	.LBB5_38
# BB#37:                                # %if.then.125
                                        #   in Loop: Header=BB5_36 Depth=1
	incl	%edx
	movslq	%edx, %rbp
	movl	%edi, (%rcx,%rbp,4)
.LBB5_38:                               # %for.inc.138
                                        #   in Loop: Header=BB5_36 Depth=1
	movslq	%edx, %rbp
	movl	(%rsi), %edi
	cmpl	%edi, (%rcx,%rbp,4)
	je	.LBB5_40
# BB#39:                                # %if.then.125.1
                                        #   in Loop: Header=BB5_36 Depth=1
	incl	%edx
	movslq	%edx, %rbp
	movl	%edi, (%rcx,%rbp,4)
.LBB5_40:                               # %for.inc.138.1
                                        #   in Loop: Header=BB5_36 Depth=1
	addq	$8, %rsi
	addl	$-2, %r14d
	jne	.LBB5_36
.LBB5_41:                               # %for.end.140
	incl	%edx
	movl	%edx, 9632(%r15,%r12,4)
.LBB5_42:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	t1_hinter__set_stem_snap, .Lfunc_end5-t1_hinter__set_stem_snap
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	-4671707469362886786    # double -2.0416999999999999E-4
.LCPI6_1:
	.quad	4585871385363300221     # double 0.039625
	.text
	.globl	t1_hinter__set_font42_data
	.align	16, 0x90
	.type	t1_hinter__set_font42_data,@function
t1_hinter__set_font42_data:             # @t1_hinter__set_font42_data
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %eax
	movl	$0, 9664(%rdi)
	movl	$0, 9680(%rdi)
	movq	7696(%rdi), %rcx
	movl	$0, (%rcx)
	movl	$0, 9688(%rdi)
	movl	$-1, 9712(%rdi)
	movl	$0, 168(%rdi)
	movl	%esi, 9720(%rdi)
	movabsq	$4585871385363300221, %rcx # imm = 0x3FA449BA5E353F7D
	movq	%rcx, 9744(%rdi)
	movabsq	$4294967303, %rcx       # imm = 0x100000007
	movq	%rcx, 180(%rdi)
	movsd	9768(%rdi), %xmm0       # xmm0 = mem[0],zero
	movb	128(%rdi), %cl
	movl	$1, %edx
	shll	%cl, %edx
	cvtsi2sdl	%edx, %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	addsd	.LCPI6_0(%rip), %xmm2
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	seta	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 9736(%rdi)
	xorl	%ecx, %ecx
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_1
	jnp	.LBB6_2
.LBB6_1:                                # %cond.true
	movslq	%edx, %rcx
	shlq	$7, %rcx
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
.LBB6_2:                                # %cond.end
	movl	%ecx, 9824(%rdi)
	movl	$0, 9728(%rdi)
	orl	%eax, 152(%rdi)
	movl	%eax, 164(%rdi)
	movl	$1, 172(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	t1_hinter__set_font42_data, .Lfunc_end6-t1_hinter__set_font42_data
	.cfi_endproc

	.globl	t1_hinter__sbw
	.align	16, 0x90
	.type	t1_hinter__sbw,@function
t1_hinter__sbw:                         # @t1_hinter__sbw
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 76(%rdi)
	movl	%esi, 68(%rdi)
	movl	%esi, 108(%rdi)
	movl	%edx, 80(%rdi)
	movl	%edx, 72(%rdi)
	movl	%edx, 112(%rdi)
	movl	%ecx, 100(%rdi)
	movl	%r8d, 104(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	t1_hinter__sbw, .Lfunc_end7-t1_hinter__sbw
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	t1_hinter__sbw_seac
	.align	16, 0x90
	.type	t1_hinter__sbw_seac,@function
t1_hinter__sbw_seac:                    # @t1_hinter__sbw_seac
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	movl	%esi, %ecx
	negl	%ecx
	cmovll	%esi, %ecx
	cmpl	%eax, %ecx
	cmovll	%eax, %ecx
	movslq	%ecx, %r14
	movq	56(%rdi), %rax
	leaq	16(%rdi), %r8
	cmpq	%rax, %r14
	jae	.LBB8_2
# BB#1:                                 # %entry.while.end_crit_edge.i
	movl	16(%rdi), %r9d
	jmp	.LBB8_5
.LBB8_2:                                # %while.body.lr.ph.i
	movsd	9768(%rdi), %xmm3       # xmm3 = mem[0],zero
	movsd	9776(%rdi), %xmm2       # xmm2 = mem[0],zero
	movdqu	(%rdi), %xmm0
	movl	16(%rdi), %r9d
	movl	20(%rdi), %ebp
	movdqu	24(%rdi), %xmm1
	movl	40(%rdi), %ebx
	movl	44(%rdi), %r11d
	movl	48(%rdi), %r10d
	movl	64(%rdi), %ecx
	movdqa	.LCPI8_0(%rip), %xmm4   # xmm4 = [1,1,1,1]
	.align	16, 0x90
.LBB8_3:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%rax, %rax
	paddd	%xmm4, %xmm0
	psrad	$1, %xmm0
	sarl	%r9d
	decl	%ebp
	paddd	%xmm4, %xmm1
	psrad	$1, %xmm1
	sarl	%ebx
	decl	%r11d
	decl	%r10d
	sarl	%ecx
	cmpq	%rax, %r14
	jae	.LBB8_3
# BB#4:                                 # %while.end.i.loopexit
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%r9d, %xmm4
	cvtsi2sdl	%ebx, %xmm5
	movapd	%xmm5, %xmm6
	divsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm3
	movsd	.LCPI8_1(%rip), %xmm7   # xmm7 = mem[0],zero
	addsd	%xmm7, %xmm3
	cvttsd2si	%xmm3, %r14d
	mulsd	%xmm2, %xmm4
	addsd	%xmm7, %xmm4
	cvttsd2si	%xmm4, %r15d
	addsd	%xmm7, %xmm6
	cvttsd2si	%xmm6, %r12d
	divsd	%xmm2, %xmm5
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %r13d
	movq	%rax, 56(%rdi)
	movdqu	%xmm0, (%rdi)
	movl	%r9d, 16(%rdi)
	movl	%ebp, 20(%rdi)
	movdqu	%xmm1, 24(%rdi)
	movl	%ebx, 40(%rdi)
	movl	%r11d, 44(%rdi)
	movl	%r10d, 48(%rdi)
	movl	%ecx, 64(%rdi)
	movl	%r14d, 9796(%rdi)
	movl	%r15d, 9792(%rdi)
	movl	%r12d, 9804(%rdi)
	movl	%r13d, 9800(%rdi)
.LBB8_5:                                # %while.end.i
	testl	%r9d, %r9d
	jne	.LBB8_7
# BB#6:                                 # %if.then.i
	movl	$1, (%r8)
.LBB8_7:                                # %t1_hinter__adjust_matrix_precision.exit
	addl	68(%rdi), %esi
	movl	%esi, 76(%rdi)
	movl	%esi, 108(%rdi)
	addl	72(%rdi), %edx
	movl	%edx, 80(%rdi)
	movl	%edx, 112(%rdi)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	t1_hinter__sbw_seac, .Lfunc_end8-t1_hinter__sbw_seac
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI9_2:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI9_3:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4604930618986332160     # double 7.500000e-01
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	t1_hinter__rmoveto
	.align	16, 0x90
	.type	t1_hinter__rmoveto,@function
t1_hinter__rmoveto:                     # @t1_hinter__rmoveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp67:
	.cfi_def_cfa_offset 256
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movl	%edx, 44(%rsp)          # 4-byte Spill
	movl	%esi, 40(%rsp)          # 4-byte Spill
	movq	%rdi, %r12
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	movl	%esi, %ecx
	negl	%ecx
	cmovll	%esi, %ecx
	cmpl	%eax, %ecx
	cmovll	%eax, %ecx
	movslq	%ecx, %r9
	movq	56(%r12), %rdx
	leaq	16(%r12), %r8
	cmpq	%rdx, %r9
	jae	.LBB9_2
# BB#1:                                 # %entry.while.end_crit_edge.i
	movl	16(%r12), %ecx
	jmp	.LBB9_5
.LBB9_2:                                # %while.body.lr.ph.i
	movsd	9768(%r12), %xmm3       # xmm3 = mem[0],zero
	movsd	9776(%r12), %xmm2       # xmm2 = mem[0],zero
	movdqu	(%r12), %xmm0
	movl	16(%r12), %ecx
	movl	20(%r12), %eax
	movdqu	24(%r12), %xmm1
	movl	40(%r12), %ebx
	movl	44(%r12), %ebp
	movl	48(%r12), %edi
	movl	64(%r12), %esi
	movdqa	.LCPI9_0(%rip), %xmm4   # xmm4 = [1,1,1,1]
	.align	16, 0x90
.LBB9_3:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%rdx, %rdx
	paddd	%xmm4, %xmm0
	psrad	$1, %xmm0
	sarl	%ecx
	decl	%eax
	paddd	%xmm4, %xmm1
	psrad	$1, %xmm1
	sarl	%ebx
	decl	%ebp
	decl	%edi
	sarl	%esi
	cmpq	%rdx, %r9
	jae	.LBB9_3
# BB#4:                                 # %while.end.i.loopexit
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ecx, %xmm4
	cvtsi2sdl	%ebx, %xmm5
	movapd	%xmm5, %xmm6
	divsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm3
	movsd	.LCPI9_1(%rip), %xmm7   # xmm7 = mem[0],zero
	addsd	%xmm7, %xmm3
	cvttsd2si	%xmm3, %r9d
	mulsd	%xmm2, %xmm4
	addsd	%xmm7, %xmm4
	cvttsd2si	%xmm4, %r10d
	addsd	%xmm7, %xmm6
	cvttsd2si	%xmm6, %r11d
	divsd	%xmm2, %xmm5
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %r14d
	movq	%rdx, 56(%r12)
	movdqu	%xmm0, (%r12)
	movl	%ecx, 16(%r12)
	movl	%eax, 20(%r12)
	movdqu	%xmm1, 24(%r12)
	movl	%ebx, 40(%r12)
	movl	%ebp, 44(%r12)
	movl	%edi, 48(%r12)
	movl	%esi, 64(%r12)
	movl	%r9d, 9796(%r12)
	movl	%r10d, 9792(%r12)
	movl	%r11d, 9804(%r12)
	movl	%r14d, 9800(%r12)
.LBB9_5:                                # %while.end.i
	testl	%ecx, %ecx
	jne	.LBB9_7
# BB#6:                                 # %if.then.i
	movl	$1, (%r8)
.LBB9_7:                                # %t1_hinter__adjust_matrix_precision.exit
	cmpl	$0, 9716(%r12)
	jne	.LBB9_90
# BB#8:                                 # %if.then
	cmpl	$0, 152(%r12)
	je	.LBB9_16
# BB#9:                                 # %if.then.1
	movslq	108(%r12), %rax
	movslq	40(%rsp), %rbp          # 4-byte Folded Reload
	addq	%rax, %rbp
	movl	%ebp, 108(%r12)
	movslq	112(%r12), %rax
	movslq	44(%rsp), %rbx          # 4-byte Folded Reload
	addq	%rax, %rbx
	movl	%ebx, 112(%r12)
	cmpl	$0, 168(%r12)
	je	.LBB9_12
# BB#10:                                # %if.then.4
	movq	9840(%r12), %rdi
	xorl	%esi, %esi
	callq	gx_path_close_subpath_notes
	testl	%eax, %eax
	js	.LBB9_93
# BB#11:                                # %if.end
	movl	$0, 168(%r12)
.LBB9_12:                               # %if.end.8
	movslq	(%r12), %rax
	imulq	%rbp, %rax
	shrq	$11, %rax
	incq	%rax
	shrq	%rax
	movslq	8(%r12), %rsi
	imulq	%rbx, %rsi
	shrq	$11, %rsi
	incq	%rsi
	shrq	%rsi
	addl	%eax, %esi
	movslq	4(%r12), %rax
	imulq	%rbp, %rax
	shrq	$11, %rax
	incq	%rax
	shrq	%rax
	movslq	12(%r12), %rdx
	imulq	%rbx, %rdx
	shrq	$11, %rdx
	incq	%rdx
	shrq	%rdx
	addl	%eax, %edx
	movl	48(%r12), %ecx
	leal	-8(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB9_13
# BB#94:                                # %if.then.i.i
	addl	$-9, %ecx
	sarl	%cl, %esi
	incl	%esi
	sarl	%esi
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	jmp	.LBB9_15
.LBB9_16:                               # %if.end.23
	movslq	9680(%r12), %rax
	testq	%rax, %rax
	jle	.LBB9_21
# BB#17:                                # %land.lhs.true
	movq	%rax, %rdx
	decq	%rdx
	movq	5472(%r12), %rcx
	leaq	(%rdx,%rdx,2), %rsi
	shlq	$4, %rsi
	cmpl	$3, 24(%rcx,%rsi)
	jne	.LBB9_19
# BB#18:                                # %if.end.29
	movl	%edx, 9680(%r12)
	cmpl	$2, %eax
	movl	%edx, %eax
	jl	.LBB9_21
.LBB9_19:                               # %land.lhs.true.32
	decl	%eax
	cltq
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	cmpl	$2, 24(%rcx,%rax)
	je	.LBB9_21
# BB#20:                                # %if.then.40
	movq	%r12, %rdi
	callq	t1_hinter__closepath
	testl	%eax, %eax
	js	.LBB9_93
.LBB9_21:                               # %if.end.45
	cmpl	$0, 9724(%r12)
	jne	.LBB9_90
# BB#22:                                # %if.then.47
	movslq	9664(%r12), %rax
	testq	%rax, %rax
	je	.LBB9_90
# BB#23:                                # %if.end.i
	movq	7696(%r12), %rcx
	movl	-4(%rcx,%rax,4), %r10d
	movl	9680(%r12), %r11d
	decl	%r11d
	leal	8(%r10), %eax
	cmpl	%r11d, %eax
	jge	.LBB9_90
# BB#24:                                # %for.cond.preheader.i
	movslq	%r10d, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	9816(%r12), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	9820(%r12), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorpd	%xmm4, %xmm4
	movapd	.LCPI9_2(%rip), %xmm5   # xmm5 = [9223372036854775808,9223372036854775808]
	movapd	.LCPI9_3(%rip), %xmm6   # xmm6 = [5.000000e-01,7.500000e-01]
	.align	16, 0x90
.LBB9_25:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_27 Depth 2
                                        #     Child Loop BB9_33 Depth 2
                                        #       Child Loop BB9_38 Depth 3
                                        #       Child Loop BB9_50 Depth 3
                                        #       Child Loop BB9_52 Depth 3
                                        #         Child Loop BB9_56 Depth 4
                                        #       Child Loop BB9_78 Depth 3
	movl	%r14d, 84(%rsp)         # 4-byte Spill
	movq	5472(%r12), %rdx
	leaq	4(%rdx), %rax
	testl	%r14d, %r14d
	movq	%rdx, %rbp
	cmovneq	%rax, %rbp
	cmovel	%edx, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmovneq	24(%rsp), %rcx          # 8-byte Folded Reload
	subl	%edx, %eax
	movl	(%rcx), %r13d
	movl	%r13d, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%r13), %ecx
	sarl	%ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rdx,%rcx), %rcx
	movslq	%eax, %r9
	movq	%r9, 120(%rsp)          # 8-byte Spill
	movl	(%r9,%rcx), %eax
	movl	%r11d, 196(%rsp)
	cmpl	%r10d, %r11d
	movl	%r10d, %edi
	movl	$1, %ecx
	jle	.LBB9_32
# BB#26:                                # %for.body.42.i.preheader
                                        #   in Loop: Header=BB9_25 Depth=1
	movq	%r10, %rbx
	movl	%eax, %esi
	movq	104(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %esi
	addl	%ecx, %eax
	movslq	%r11d, %rcx
	subl	%edx, %ebp
	movslq	%ebp, %rdi
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$4, %rbp
	addq	%rdx, %rbp
	.align	16, 0x90
.LBB9_27:                               # %for.body.42.i
                                        #   Parent Loop BB9_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 24(%rbp)
	je	.LBB9_30
# BB#28:                                # %if.end.54.i
                                        #   in Loop: Header=BB9_27 Depth=2
	movl	(%rdi,%rbp), %edx
	cmpl	%esi, %edx
	jl	.LBB9_31
# BB#29:                                # %if.end.54.i
                                        #   in Loop: Header=BB9_27 Depth=2
	cmpl	%eax, %edx
	jg	.LBB9_31
.LBB9_30:                               # %for.inc.i
                                        #   in Loop: Header=BB9_27 Depth=2
	decq	%rcx
	movl	%ecx, 196(%rsp)
	addq	$-48, %rbp
	cmpq	72(%rsp), %rcx          # 8-byte Folded Reload
	jg	.LBB9_27
.LBB9_31:                               # %for.end.i
                                        #   in Loop: Header=BB9_25 Depth=1
	leal	1(%rcx), %edi
	cmpl	%r11d, %ecx
	sete	%al
	movq	%rbx, %r10
	cmovel	%r10d, %edi
	movzbl	%al, %ecx
.LBB9_32:                               # %for.cond.65.preheader.i
                                        #   in Loop: Header=BB9_25 Depth=1
	movl	%edi, 196(%rsp)
	shll	$2, %r13d
	movq	%r13, 88(%rsp)          # 8-byte Spill
	jmp	.LBB9_33
	.align	16, 0x90
.LBB9_88:                               # %for.inc.141.i
                                        #   in Loop: Header=BB9_33 Depth=2
	incl	%edi
	movl	%edi, 196(%rsp)
.LBB9_33:                               # %for.cond.65.i
                                        #   Parent Loop BB9_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_38 Depth 3
                                        #       Child Loop BB9_50 Depth 3
                                        #       Child Loop BB9_52 Depth 3
                                        #         Child Loop BB9_56 Depth 4
                                        #       Child Loop BB9_78 Depth 3
	cmpl	%r11d, %edi
	jne	.LBB9_36
# BB#34:                                # %if.then.68.i
                                        #   in Loop: Header=BB9_33 Depth=2
	testl	%ecx, %ecx
	jne	.LBB9_89
# BB#35:                                # %if.end.71.i
                                        #   in Loop: Header=BB9_33 Depth=2
	movl	%r10d, 196(%rsp)
	movl	$1, %ecx
	movl	%r10d, %edi
.LBB9_36:                               # %if.end.72.i
                                        #   in Loop: Header=BB9_33 Depth=2
	leal	1(%rdi), %ebp
	cmpl	%r11d, %ebp
	cmovel	%r10d, %ebp
	cmpl	%edi, %ebp
	je	.LBB9_88
# BB#37:                                #   in Loop: Header=BB9_33 Depth=2
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	movslq	%edi, %rax
	movq	5472(%r12), %rsi
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	(%rax,%rsi), %rax
	movl	(%r9,%rax), %r15d
	movl	%r15d, %eax
	movq	104(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	leal	(%r15,%rcx), %ecx
	xorl	%edx, %edx
	movl	%edi, %ebx
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	.align	16, 0x90
.LBB9_38:                               # %if.end.94.i
                                        #   Parent Loop BB9_25 Depth=1
                                        #     Parent Loop BB9_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebp, %r8d
	movslq	%r8d, %rbp
	leaq	(%rbp,%rbp,2), %rbp
	shlq	$4, %rbp
	cmpl	$0, 24(%rsi,%rbp)
	je	.LBB9_45
# BB#39:                                # %if.end.102.i
                                        #   in Loop: Header=BB9_38 Depth=3
	testl	%edx, %edx
	jg	.LBB9_40
# BB#41:                                # %if.end.102.i
                                        #   in Loop: Header=BB9_38 Depth=3
	leaq	(%rbp,%rsi), %rdx
	movl	(%r9,%rdx), %ebp
	cmpl	%eax, %ebp
	jl	.LBB9_42
# BB#43:                                # %if.end.102.i
                                        #   in Loop: Header=BB9_38 Depth=3
	movl	$-1, %edx
	cmpl	%ecx, %ebp
	jg	.LBB9_44
.LBB9_45:                               # %for.inc.128.i
                                        #   in Loop: Header=BB9_38 Depth=3
	incl	%edi
	leal	1(%r8), %ebp
	cmpl	%r11d, %ebp
	cmovel	%r10d, %ebp
	movq	136(%rsp), %rbx         # 8-byte Reload
	cmpl	%ebx, %ebp
	movl	%r8d, %ebx
	jne	.LBB9_38
	jmp	.LBB9_46
.LBB9_40:                               #   in Loop: Header=BB9_33 Depth=2
	movl	%ebx, %r8d
	jmp	.LBB9_46
.LBB9_42:                               #   in Loop: Header=BB9_33 Depth=2
	movl	%ebx, %r8d
	jmp	.LBB9_46
.LBB9_44:                               #   in Loop: Header=BB9_33 Depth=2
	movl	%ebx, %r8d
	.align	16, 0x90
.LBB9_46:                               # %for.end.131.i
                                        #   in Loop: Header=BB9_33 Depth=2
	cmpl	$6, %edi
	jl	.LBB9_47
# BB#48:                                # %if.end.135.i
                                        #   in Loop: Header=BB9_33 Depth=2
	leaq	4(%rsi), %rcx
	testl	%r14d, %r14d
	movq	%rsi, %rax
	cmovneq	%rcx, %rax
	cmovneq	%rsi, %rcx
	addl	$-5, %edi
	je	.LBB9_47
# BB#49:                                #   in Loop: Header=BB9_33 Depth=2
	movq	%r10, %r14
	subq	%rsi, %rax
	subq	%rsi, %rcx
	movq	136(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %r10d
	.align	16, 0x90
.LBB9_50:                               # %for.body.i.i
                                        #   Parent Loop BB9_25 Depth=1
                                        #     Parent Loop BB9_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%r11d, %r10d
	cmovel	%r14d, %r10d
	movslq	%r10d, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	cmpl	$0, 24(%rsi,%rdx)
	jne	.LBB9_51
# BB#74:                                # %for.inc.242.i.i
                                        #   in Loop: Header=BB9_50 Depth=3
	incl	%r10d
	decl	%edi
	jne	.LBB9_50
	jmp	.LBB9_75
	.align	16, 0x90
.LBB9_47:                               #   in Loop: Header=BB9_33 Depth=2
	movl	116(%rsp), %ecx         # 4-byte Reload
	movq	136(%rsp), %rdi         # 8-byte Reload
	jmp	.LBB9_88
.LBB9_51:                               # %for.body.40.lr.ph.i.i
                                        #   in Loop: Header=BB9_33 Depth=2
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movq	%rsi, 176(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rsi), %rdx
	cltq
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	(%rax,%rdx), %ebp
	movslq	%ecx, %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	(%rax,%rdx), %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	leal	-1(%r11), %ebx
	movl	%ebx, 96(%rsp)          # 4-byte Spill
	cmpl	%r14d, %r10d
	movl	%r11d, %ecx
	movq	%r11, 144(%rsp)         # 8-byte Spill
	cmovgl	%r10d, %ecx
	decl	%ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rsi), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$0, 156(%rsp)           # 4-byte Folded Spill
	movl	$0, 188(%rsp)           # 4-byte Folded Spill
	movl	$0, 192(%rsp)           # 4-byte Folded Spill
	.align	16, 0x90
.LBB9_52:                               # %for.body.40.i.i
                                        #   Parent Loop BB9_25 Depth=1
                                        #     Parent Loop BB9_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_56 Depth 4
	cmpl	%r14d, %r8d
	cmovll	%ebx, %r8d
	movslq	%r8d, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movq	176(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 24(%rax,%rcx)
	je	.LBB9_72
# BB#53:                                # %if.end.53.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	leaq	(%rcx,%rax), %rcx
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	(%rax,%rcx), %esi
	subl	132(%rsp), %esi         # 4-byte Folded Reload
	movl	%esi, %edx
	negl	%edx
	cmovll	%esi, %edx
	cmpl	%r13d, %edx
	jl	.LBB9_72
# BB#54:                                # %if.end.77.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	movq	160(%rsp), %rax         # 8-byte Reload
	cmpl	(%rcx,%rax), %ebp
	jne	.LBB9_72
# BB#55:                                #   in Loop: Header=BB9_52 Depth=3
	movl	%esi, 100(%rsp)         # 4-byte Spill
	pxor	%xmm0, %xmm0
	xorl	%r11d, %r11d
	movl	%ebp, 152(%rsp)         # 4-byte Spill
	movl	%r10d, %ecx
	xorl	%r9d, %r9d
	xorl	%edx, %edx
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	jmp	.LBB9_56
	.align	16, 0x90
.LBB9_59:                               # %if.end.143.i.i
                                        #   in Loop: Header=BB9_56 Depth=4
	cmpl	%ebp, %r12d
	movl	$1, %eax
	cmovll	%eax, %r9d
	cmovgl	%eax, %r11d
	incl	%ecx
	movl	%r12d, 192(%rsp)        # 4-byte Spill
	movl	%r13d, 188(%rsp)        # 4-byte Spill
.LBB9_56:                               # %for.cond.81.i.i
                                        #   Parent Loop BB9_25 Depth=1
                                        #     Parent Loop BB9_33 Depth=2
                                        #       Parent Loop BB9_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	144(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ecx
	cmovel	%r14d, %ecx
	movslq	%ecx, %r15
	leaq	(%r15,%r15,2), %rax
	shlq	$4, %rax
	movq	176(%rsp), %rsi         # 8-byte Reload
	leaq	(%rax,%rsi), %rax
	movq	160(%rsp), %rbx         # 8-byte Reload
	movl	(%rbx,%rax), %r12d
	movq	168(%rsp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax), %r13d
	cmpl	%r10d, %r15d
	je	.LBB9_58
# BB#57:                                # %if.then.98.i.i
                                        #   in Loop: Header=BB9_56 Depth=4
	movl	192(%rsp), %r15d        # 4-byte Reload
	movl	%r15d, %eax
	subl	%ebp, %eax
	cvtsi2sdl	%eax, %xmm1
	movl	%r13d, %eax
	movl	188(%rsp), %esi         # 4-byte Reload
	subl	%esi, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	movl	%esi, %eax
	subl	132(%rsp), %eax         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movl	%r12d, %esi
	subl	%ebp, %esi
	movl	%esi, %eax
	negl	%eax
	cmovll	%esi, %eax
	movl	156(%rsp), %esi         # 4-byte Reload
	cmpl	%eax, %esi
	movl	152(%rsp), %ebx         # 4-byte Reload
	cmovll	%r12d, %ebx
	movl	%ebx, 152(%rsp)         # 4-byte Spill
	cmovll	%eax, %esi
	movl	%esi, 156(%rsp)         # 4-byte Spill
	movl	%r12d, %eax
	subl	%r15d, %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	movl	%edx, %eax
	movl	$-1, %ebx
	cmovll	%ebx, %eax
	movl	$1, %ebx
	cmovgl	%ebx, %eax
	imull	%eax, %edx
	shrl	$31, %edx
	addl	%edx, 128(%rsp)         # 4-byte Folded Spill
	movl	%eax, %edx
.LBB9_58:                               # %if.end.139.i.i
                                        #   in Loop: Header=BB9_56 Depth=4
	cmpl	%r8d, %ecx
	jne	.LBB9_59
# BB#60:                                # %for.end.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	movq	104(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, 156(%rsp)         # 4-byte Folded Reload
	jg	.LBB9_61
# BB#62:                                # %for.end.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	cmpl	$1, 128(%rsp)           # 4-byte Folded Reload
	jg	.LBB9_61
# BB#63:                                # %if.end.160.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	movl	100(%rsp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm1
	movl	156(%rsp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	unpcklpd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	movapd	%xmm0, %xmm1
	cmpltpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm2
	andnpd	%xmm0, %xmm2
	xorpd	%xmm5, %xmm0
	andpd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
	mulpd	%xmm6, %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	ucomisd	%xmm1, %xmm0
	movq	88(%rsp), %r13          # 8-byte Reload
	movl	96(%rsp), %ebx          # 4-byte Reload
	ja	.LBB9_72
# BB#64:                                # %if.end.183.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	testl	%r11d, %r11d
	je	.LBB9_66
# BB#65:                                # %if.end.183.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	testl	%r9d, %r9d
	jne	.LBB9_72
.LBB9_66:                               # %if.then.186.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	leal	1(%r8), %eax
	movq	144(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	cmovel	%r14d, %eax
	movq	160(%rsp), %rdx         # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx,%rdx), %ecx
	cltq
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movq	176(%rsp), %rsi         # 8-byte Reload
	leaq	(%rax,%rsi), %rax
	movl	(%rdx,%rax), %edx
	testl	%r9d, %r9d
	sete	%al
	cmpl	%ebp, %ecx
	jg	.LBB9_69
# BB#67:                                # %if.then.186.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	testb	%al, %al
	jne	.LBB9_69
# BB#68:                                # %if.then.186.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	cmpl	%ebp, %edx
	jle	.LBB9_76
.LBB9_69:                               # %lor.lhs.false.214.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	testl	%r11d, %r11d
	sete	%al
	cmpl	%ebp, %ecx
	jl	.LBB9_72
# BB#70:                                # %lor.lhs.false.214.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	testb	%al, %al
	jne	.LBB9_72
# BB#71:                                # %lor.lhs.false.214.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	cmpl	%ebp, %edx
	jl	.LBB9_72
	jmp	.LBB9_76
.LBB9_61:                               #   in Loop: Header=BB9_52 Depth=3
	movq	88(%rsp), %r13          # 8-byte Reload
	movl	96(%rsp), %ebx          # 4-byte Reload
	.align	16, 0x90
.LBB9_72:                               # %for.inc.239.i.i
                                        #   in Loop: Header=BB9_52 Depth=3
	decl	%r8d
	decl	%edi
	movq	120(%rsp), %r9          # 8-byte Reload
	jne	.LBB9_52
# BB#73:                                #   in Loop: Header=BB9_33 Depth=2
	movq	56(%rsp), %r12          # 8-byte Reload
	movq	144(%rsp), %r11         # 8-byte Reload
.LBB9_75:                               #   in Loop: Header=BB9_33 Depth=2
	movl	116(%rsp), %ecx         # 4-byte Reload
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %r10
.LBB9_87:                               # %for.inc.141.i
                                        #   in Loop: Header=BB9_33 Depth=2
	movl	84(%rsp), %r14d         # 4-byte Reload
	jmp	.LBB9_88
.LBB9_76:                               # %if.then.137.i
                                        #   in Loop: Header=BB9_33 Depth=2
	movq	56(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	144(%rsp), %rdx         # 8-byte Reload
	movl	%r10d, %ecx
	leaq	196(%rsp), %r9
	callq	t1_hinter__compact_flex
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	152(%rsp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	movl	%edi, %r8d
	cmovll	%eax, %r8d
	cmovgl	%eax, %edi
	movq	%rax, %rbp
	movslq	9688(%r12), %rcx
	testq	%rcx, %rcx
	jle	.LBB9_86
# BB#77:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB9_33 Depth=2
	movq	7520(%r12), %rdx
	addq	$16, %rdx
	.align	16, 0x90
.LBB9_78:                               # %for.body.i.92.i
                                        #   Parent Loop BB9_25 Depth=1
                                        #     Parent Loop BB9_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, 84(%rsp)            # 4-byte Folded Reload
	sete	%bl
	cmpl	$0, -16(%rdx)
	setne	%al
	xorb	%bl, %al
	jne	.LBB9_85
# BB#79:                                # %if.then.7.i.i
                                        #   in Loop: Header=BB9_78 Depth=3
	movl	-12(%rdx), %esi
	cmpl	%esi, %edi
	jg	.LBB9_82
# BB#80:                                # %if.then.7.i.i
                                        #   in Loop: Header=BB9_78 Depth=3
	cmpl	%r8d, %esi
	jg	.LBB9_82
# BB#81:                                # %if.then.18.i.i
                                        #   in Loop: Header=BB9_78 Depth=3
	movl	%ebp, -4(%rdx)
	movl	%ebp, -12(%rdx)
.LBB9_82:                               # %if.end.20.i.i
                                        #   in Loop: Header=BB9_78 Depth=3
	movl	-8(%rdx), %esi
	cmpl	%esi, %edi
	jg	.LBB9_85
# BB#83:                                # %if.end.20.i.i
                                        #   in Loop: Header=BB9_78 Depth=3
	cmpl	%r8d, %esi
	jg	.LBB9_85
# BB#84:                                # %if.then.27.i.i
                                        #   in Loop: Header=BB9_78 Depth=3
	movl	%ebp, (%rdx)
	movl	%ebp, -8(%rdx)
.LBB9_85:                               # %for.inc.i.i
                                        #   in Loop: Header=BB9_78 Depth=3
	addq	$68, %rdx
	decq	%rcx
	jne	.LBB9_78
.LBB9_86:                               # %t1_hinter__adjust_stem_hints_by_missed_flex.exit.i
                                        #   in Loop: Header=BB9_33 Depth=2
	movl	9680(%r12), %r11d
	decl	%r11d
	movl	196(%rsp), %edi
	movq	%r14, %r10
	xorpd	%xmm4, %xmm4
	movapd	.LCPI9_2(%rip), %xmm5   # xmm5 = [9223372036854775808,9223372036854775808]
	movapd	.LCPI9_3(%rip), %xmm6   # xmm6 = [5.000000e-01,7.500000e-01]
	movq	120(%rsp), %r9          # 8-byte Reload
	movl	116(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB9_87
	.align	16, 0x90
.LBB9_89:                               # %for.end.143.i
                                        #   in Loop: Header=BB9_25 Depth=1
	incl	%r14d
	cmpl	$2, %r14d
	movl	%edi, %r11d
	jne	.LBB9_25
.LBB9_90:                               # %if.end.49
	movl	$3, %ecx
	movq	%r12, %rdi
	movl	40(%rsp), %esi          # 4-byte Reload
	movl	44(%rsp), %edx          # 4-byte Reload
	callq	t1_hinter__add_pole
	jmp	.LBB9_91
.LBB9_13:                               # %if.else.i.24.i
	je	.LBB9_15
# BB#14:                                # %if.else.7.i.i
	movl	$8, %eax
	subl	%ecx, %eax
	movb	%al, %cl
	shll	%cl, %esi
	movb	%al, %cl
	shll	%cl, %edx
.LBB9_15:                               # %g2d.exit
	addl	84(%r12), %esi
	addl	88(%r12), %edx
	movq	9840(%r12), %rdi
	callq	gx_path_add_point
.LBB9_91:                               # %if.end.49
	cmpl	$0, 9716(%r12)
	jne	.LBB9_93
# BB#92:                                # %if.then.53
	movl	108(%r12), %ecx
	movl	%ecx, 116(%r12)
	movl	112(%r12), %ecx
	movl	%ecx, 120(%r12)
.LBB9_93:                               # %cleanup.65
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	t1_hinter__rmoveto, .Lfunc_end9-t1_hinter__rmoveto
	.cfi_endproc

	.globl	t1_hinter__closepath
	.align	16, 0x90
	.type	t1_hinter__closepath,@function
t1_hinter__closepath:                   # @t1_hinter__closepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp78:
	.cfi_def_cfa_offset 48
.Ltmp79:
	.cfi_offset %rbx, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$0, 152(%rbx)
	je	.LBB10_1
# BB#16:                                # %do.end
	movl	$0, 168(%rbx)
	movq	9840(%rbx), %rdi
	xorl	%esi, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_path_close_subpath_notes # TAILCALL
.LBB10_1:                               # %if.else
	movslq	9664(%rbx), %rcx
	movq	7696(%rbx), %rsi
	movslq	9680(%rbx), %rdx
	xorl	%eax, %eax
	cmpl	%edx, (%rsi,%rcx,4)
	je	.LBB10_15
# BB#2:                                 # %if.end
	movl	108(%rbx), %ebp
	movl	116(%rbx), %eax
	cmpl	%ebp, %eax
	jne	.LBB10_3
# BB#6:                                 # %land.lhs.true
	movl	112(%rbx), %r14d
	movl	120(%rbx), %esi
	cmpl	%r14d, %esi
	jne	.LBB10_4
# BB#7:                                 # %if.then.4
	leaq	(%rdx,%rdx,2), %rax
	shlq	$4, %rax
	movq	5472(%rbx), %rdx
	movl	$2, -24(%rax,%rdx)
	jmp	.LBB10_8
.LBB10_3:                               # %if.end.if.else.8_crit_edge
	movl	112(%rbx), %r14d
	movl	120(%rbx), %esi
.LBB10_4:                               # %if.else.8
	movl	%eax, 108(%rbx)
	movl	%esi, 112(%rbx)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	movq	%rbx, %rdi
	callq	t1_hinter__add_pole
	testl	%eax, %eax
	js	.LBB10_15
# BB#5:                                 # %if.end.20
	movl	%ebp, 108(%rbx)
	movl	%r14d, 112(%rbx)
	movl	9664(%rbx), %ecx
.LBB10_8:                               # %if.end.24
	incl	%ecx
	movl	%ecx, 9664(%rbx)
	movl	9668(%rbx), %eax
	cmpl	%eax, %ecx
	jge	.LBB10_10
# BB#9:                                 # %if.end.24.if.end.35_crit_edge
	movq	7696(%rbx), %r14
	jmp	.LBB10_14
.LBB10_10:                              # %if.then.28
	movq	9848(%rbx), %r15
	leal	80(,%rax,4), %esi
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	callq	*64(%r15)
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB10_15
# BB#11:                                # %if.end.i
	leaq	7656(%rbx), %rbp
	movq	7696(%rbx), %rsi
	movslq	9668(%rbx), %rdx
	shlq	$2, %rdx
	movq	%r14, %rdi
	callq	memcpy
	movq	7696(%rbx), %rsi
	cmpq	%rbp, %rsi
	je	.LBB10_13
# BB#12:                                # %if.then.6.i
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB10_13:                              # %t1_hinter__realloc_array.exit.thread
	movq	%r14, 7696(%rbx)
	addl	$20, 9668(%rbx)
	movl	9664(%rbx), %ecx
.LBB10_14:                              # %if.end.35
	movl	9680(%rbx), %eax
	movslq	%ecx, %rcx
	movl	%eax, (%r14,%rcx,4)
	xorl	%eax, %eax
.LBB10_15:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	t1_hinter__closepath, .Lfunc_end10-t1_hinter__closepath
	.cfi_endproc

	.align	16, 0x90
	.type	t1_hinter__add_pole,@function
t1_hinter__add_pole:                    # @t1_hinter__add_pole
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
	pushq	%rax
.Ltmp89:
	.cfi_def_cfa_offset 64
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
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movl	9680(%rbx), %eax
	movl	9684(%rbx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_2
# BB#1:                                 # %entry.if.end.4_crit_edge.i
	movq	5472(%rbx), %rbp
	jmp	.LBB11_6
.LBB11_2:                               # %if.then.i
	movq	9848(%rbx), %r13
	leal	(%rcx,%rcx,2), %esi
	shll	$4, %esi
	addl	$10560, %esi            # imm = 0x2940
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	callq	*64(%r13)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB11_7
# BB#3:                                 # %if.end.i.i
	leaq	188(%rbx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	5472(%rbx), %rsi
	movslq	9684(%rbx), %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%rbp, %rdi
	callq	memcpy
	movq	5472(%rbx), %rsi
	cmpq	(%rsp), %rsi            # 8-byte Folded Reload
	je	.LBB11_5
# BB#4:                                 # %if.then.6.i.i
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
.LBB11_5:                               # %t1_hinter__realloc_array.exit.thread.i
	movq	%rbp, 5472(%rbx)
	addl	$220, 9684(%rbx)
	movl	9680(%rbx), %eax
.LBB11_6:                               # %if.end
	cltq
	addl	108(%rbx), %r12d
	movl	%r12d, 108(%rbx)
	leaq	(%rax,%rax,2), %rcx
	shlq	$4, %rcx
	movl	%r12d, 8(%rbp,%rcx)
	movl	%r12d, (%rbp,%rcx)
	addl	112(%rbx), %r15d
	movl	%r15d, 112(%rbx)
	movl	%r15d, 12(%rbp,%rcx)
	movl	%r15d, 4(%rbp,%rcx)
	movl	$0, 20(%rbp,%rcx)
	movl	$0, 16(%rbp,%rcx)
	movl	%r14d, 24(%rbp,%rcx)
	movl	9664(%rbx), %edx
	movl	%edx, 28(%rbp,%rcx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rbp,%rcx)
	incl	%eax
	movl	%eax, 9680(%rbx)
	xorl	%eax, %eax
.LBB11_7:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	t1_hinter__add_pole, .Lfunc_end11-t1_hinter__add_pole
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	t1_hinter__rlineto
	.align	16, 0x90
	.type	t1_hinter__rlineto,@function
t1_hinter__rlineto:                     # @t1_hinter__rlineto
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
	pushq	%rax
.Ltmp102:
	.cfi_def_cfa_offset 64
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
	movq	%rdi, %r14
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	movl	%esi, %ecx
	negl	%ecx
	cmovll	%esi, %ecx
	cmpl	%eax, %ecx
	cmovll	%eax, %ecx
	movslq	%ecx, %r15
	movq	56(%r14), %rdi
	leaq	16(%r14), %r8
	cmpq	%rdi, %r15
	jae	.LBB12_2
# BB#1:                                 # %entry.while.end_crit_edge.i
	movl	16(%r14), %r9d
	jmp	.LBB12_5
.LBB12_2:                               # %while.body.lr.ph.i
	movsd	9768(%r14), %xmm3       # xmm3 = mem[0],zero
	movsd	9776(%r14), %xmm2       # xmm2 = mem[0],zero
	movdqu	(%r14), %xmm0
	movl	16(%r14), %r9d
	movl	20(%r14), %r11d
	movdqu	24(%r14), %xmm1
	movl	40(%r14), %eax
	movl	44(%r14), %ecx
	movl	48(%r14), %ebx
	movl	64(%r14), %r10d
	movdqa	.LCPI12_0(%rip), %xmm4  # xmm4 = [1,1,1,1]
	.align	16, 0x90
.LBB12_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%rdi, %rdi
	paddd	%xmm4, %xmm0
	psrad	$1, %xmm0
	sarl	%r9d
	decl	%r11d
	paddd	%xmm4, %xmm1
	psrad	$1, %xmm1
	sarl	%eax
	decl	%ecx
	decl	%ebx
	sarl	%r10d
	cmpq	%rdi, %r15
	jae	.LBB12_3
# BB#4:                                 # %while.end.i.loopexit
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%r9d, %xmm4
	cvtsi2sdl	%eax, %xmm5
	movapd	%xmm5, %xmm6
	divsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm3
	movsd	.LCPI12_1(%rip), %xmm7  # xmm7 = mem[0],zero
	addsd	%xmm7, %xmm3
	cvttsd2si	%xmm3, %r15d
	mulsd	%xmm2, %xmm4
	addsd	%xmm7, %xmm4
	cvttsd2si	%xmm4, %r12d
	addsd	%xmm7, %xmm6
	cvttsd2si	%xmm6, %r13d
	divsd	%xmm2, %xmm5
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %ebp
	movq	%rdi, 56(%r14)
	movdqu	%xmm0, (%r14)
	movl	%r9d, 16(%r14)
	movl	%r11d, 20(%r14)
	movdqu	%xmm1, 24(%r14)
	movl	%eax, 40(%r14)
	movl	%ecx, 44(%r14)
	movl	%ebx, 48(%r14)
	movl	%r10d, 64(%r14)
	movl	%r15d, 9796(%r14)
	movl	%r12d, 9792(%r14)
	movl	%r13d, 9804(%r14)
	movl	%ebp, 9800(%r14)
.LBB12_5:                               # %while.end.i
	testl	%r9d, %r9d
	jne	.LBB12_7
# BB#6:                                 # %if.then.i
	movl	$1, (%r8)
.LBB12_7:                               # %t1_hinter__adjust_matrix_precision.exit
	cmpl	$0, 152(%r14)
	je	.LBB12_12
# BB#8:                                 # %if.then
	movslq	108(%r14), %rax
	movslq	%esi, %rcx
	addq	%rax, %rcx
	movl	%ecx, 108(%r14)
	movslq	112(%r14), %rsi
	movslq	%edx, %rax
	addq	%rsi, %rax
	movl	%eax, 112(%r14)
	movl	$1, 168(%r14)
	movslq	(%r14), %rdx
	imulq	%rcx, %rdx
	shrq	$11, %rdx
	incq	%rdx
	shrq	%rdx
	movslq	8(%r14), %rsi
	imulq	%rax, %rsi
	shrq	$11, %rsi
	incq	%rsi
	shrq	%rsi
	addl	%edx, %esi
	movslq	4(%r14), %rdi
	imulq	%rcx, %rdi
	shrq	$11, %rdi
	incq	%rdi
	shrq	%rdi
	movslq	12(%r14), %rdx
	imulq	%rax, %rdx
	shrq	$11, %rdx
	incq	%rdx
	shrq	%rdx
	addl	%edi, %edx
	movl	48(%r14), %ecx
	leal	-8(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB12_9
# BB#18:                                # %if.then.i.i
	addl	$-9, %ecx
	sarl	%cl, %esi
	incl	%esi
	sarl	%esi
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	jmp	.LBB12_11
.LBB12_12:                              # %if.else
	movl	$1, %ecx
	movq	%r14, %rdi
	callq	t1_hinter__add_pole
	testl	%eax, %eax
	js	.LBB12_17
# BB#13:                                # %do.end.6
	movslq	9664(%r14), %rsi
	movq	7696(%r14), %rdi
	movl	9680(%r14), %edx
	leal	-1(%rdx), %ecx
	xorl	%eax, %eax
	cmpl	%ecx, (%rdi,%rsi,4)
	jge	.LBB12_17
# BB#14:                                # %for.body.lr.ph.i
	addl	$-2, %edx
	movq	5472(%r14), %rsi
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	movl	8(%rsi,%rdx), %edi
	cmpl	108(%r14), %edi
	jne	.LBB12_17
# BB#15:                                # %lor.lhs.false.i
	movl	12(%rsi,%rdx), %edx
	cmpl	112(%r14), %edx
	jne	.LBB12_17
# BB#16:                                # %for.end.i
	movl	%ecx, 9680(%r14)
.LBB12_17:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_9:                               # %if.else.i.24.i
	je	.LBB12_11
# BB#10:                                # %if.else.7.i.i
	movl	$8, %eax
	subl	%ecx, %eax
	movb	%al, %cl
	shll	%cl, %esi
	movb	%al, %cl
	shll	%cl, %edx
.LBB12_11:                              # %g2d.exit
	addl	84(%r14), %esi
	addl	88(%r14), %edx
	movq	9840(%r14), %rdi
	xorl	%ecx, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_path_add_line_notes  # TAILCALL
.Lfunc_end12:
	.size	t1_hinter__rlineto, .Lfunc_end12-t1_hinter__rlineto
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	t1_hinter__rcurveto
	.align	16, 0x90
	.type	t1_hinter__rcurveto,@function
t1_hinter__rcurveto:                    # @t1_hinter__rcurveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 96
.Ltmp116:
	.cfi_offset %rbx, -56
.Ltmp117:
	.cfi_offset %r12, -48
.Ltmp118:
	.cfi_offset %r13, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	movl	%esi, %ecx
	negl	%ecx
	cmovll	%esi, %ecx
	cmpl	%eax, %ecx
	cmovll	%eax, %ecx
	movslq	%ecx, %r10
	movq	56(%r13), %rax
	cmpq	%rax, %r10
	jae	.LBB13_2
# BB#1:                                 # %entry.while.end_crit_edge.i
	movl	16(%r13), %r8d
	jmp	.LBB13_5
.LBB13_2:                               # %while.body.lr.ph.i
	movsd	9768(%r13), %xmm3       # xmm3 = mem[0],zero
	movsd	9776(%r13), %xmm2       # xmm2 = mem[0],zero
	movdqu	(%r13), %xmm0
	movl	16(%r13), %r8d
	movl	20(%r13), %r9d
	movdqu	24(%r13), %xmm1
	movl	40(%r13), %ecx
	movl	44(%r13), %ebx
	movl	48(%r13), %ebp
	movl	64(%r13), %edi
	movdqa	.LCPI13_0(%rip), %xmm4  # xmm4 = [1,1,1,1]
	.align	16, 0x90
.LBB13_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%rax, %rax
	paddd	%xmm4, %xmm0
	psrad	$1, %xmm0
	sarl	%r8d
	decl	%r9d
	paddd	%xmm4, %xmm1
	psrad	$1, %xmm1
	sarl	%ecx
	decl	%ebx
	decl	%ebp
	sarl	%edi
	cmpq	%rax, %r10
	jae	.LBB13_3
# BB#4:                                 # %while.end.i.loopexit
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%r8d, %xmm4
	cvtsi2sdl	%ecx, %xmm5
	movapd	%xmm5, %xmm6
	divsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm3
	movsd	.LCPI13_1(%rip), %xmm7  # xmm7 = mem[0],zero
	addsd	%xmm7, %xmm3
	cvttsd2si	%xmm3, %r10d
	mulsd	%xmm2, %xmm4
	addsd	%xmm7, %xmm4
	cvttsd2si	%xmm4, %r11d
	addsd	%xmm7, %xmm6
	cvttsd2si	%xmm6, %r14d
	divsd	%xmm2, %xmm5
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %r15d
	movq	%rax, 56(%r13)
	movdqu	%xmm0, (%r13)
	movl	%r8d, 16(%r13)
	movl	%r9d, 20(%r13)
	movdqu	%xmm1, 24(%r13)
	movl	%ecx, 40(%r13)
	movl	%ebx, 44(%r13)
	movl	%ebp, 48(%r13)
	movl	%edi, 64(%r13)
	movl	%r10d, 9796(%r13)
	movl	%r11d, 9792(%r13)
	movl	%r14d, 9804(%r13)
	movl	%r15d, 9800(%r13)
.LBB13_5:                               # %while.end.i
	testl	%r8d, %r8d
	jne	.LBB13_7
# BB#6:                                 # %if.then.i
	movl	$1, 16(%r13)
	movq	56(%r13), %rax
.LBB13_7:                               # %t1_hinter__adjust_matrix_precision.exit
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	movq	32(%rsp), %rbp          # 8-byte Reload
	movl	%ebp, %edi
	negl	%edi
	cmovll	%ebp, %edi
	cmpl	%edi, %ecx
	cmovgel	%ecx, %edi
	movslq	%edi, %r10
	cmpq	%rax, %r10
	jae	.LBB13_9
# BB#8:                                 # %entry.while.end_crit_edge.i.62
	movl	16(%r13), %r8d
	jmp	.LBB13_12
.LBB13_9:                               # %while.body.lr.ph.i.72
	movsd	9768(%r13), %xmm3       # xmm3 = mem[0],zero
	movsd	9776(%r13), %xmm2       # xmm2 = mem[0],zero
	movdqu	(%r13), %xmm0
	movl	16(%r13), %r8d
	movl	20(%r13), %r9d
	movdqu	24(%r13), %xmm1
	movl	40(%r13), %ecx
	movl	44(%r13), %ebx
	movl	48(%r13), %ebp
	movl	64(%r13), %edi
	movdqa	.LCPI13_0(%rip), %xmm4  # xmm4 = [1,1,1,1]
	.align	16, 0x90
.LBB13_10:                              # %while.body.i.87
                                        # =>This Inner Loop Header: Depth=1
	addq	%rax, %rax
	paddd	%xmm4, %xmm0
	psrad	$1, %xmm0
	sarl	%r8d
	decl	%r9d
	paddd	%xmm4, %xmm1
	psrad	$1, %xmm1
	sarl	%ecx
	decl	%ebx
	decl	%ebp
	sarl	%edi
	cmpq	%rax, %r10
	jae	.LBB13_10
# BB#11:                                # %while.end.i.90.loopexit
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%r8d, %xmm4
	cvtsi2sdl	%ecx, %xmm5
	movapd	%xmm5, %xmm6
	divsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm3
	movsd	.LCPI13_1(%rip), %xmm7  # xmm7 = mem[0],zero
	addsd	%xmm7, %xmm3
	cvttsd2si	%xmm3, %r10d
	mulsd	%xmm2, %xmm4
	addsd	%xmm7, %xmm4
	cvttsd2si	%xmm4, %r11d
	addsd	%xmm7, %xmm6
	cvttsd2si	%xmm6, %r14d
	divsd	%xmm2, %xmm5
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %r15d
	movq	%rax, 56(%r13)
	movdqu	%xmm0, (%r13)
	movl	%r8d, 16(%r13)
	movl	%r9d, 20(%r13)
	movdqu	%xmm1, 24(%r13)
	movl	%ecx, 40(%r13)
	movl	%ebx, 44(%r13)
	movl	%ebp, 48(%r13)
	movl	%edi, 64(%r13)
	movl	%r10d, 9796(%r13)
	movl	%r11d, 9792(%r13)
	movl	%r14d, 9804(%r13)
	movl	%r15d, 9800(%r13)
.LBB13_12:                              # %while.end.i.90
	movl	96(%rsp), %ebx
	testl	%r8d, %r8d
	jne	.LBB13_14
# BB#13:                                # %if.then.i.91
	movl	$1, 16(%r13)
	movq	56(%r13), %rax
.LBB13_14:                              # %t1_hinter__adjust_matrix_precision.exit93
	movl	%r12d, %ecx
	negl	%ecx
	cmovll	%r12d, %ecx
	movl	%ebx, %edi
	negl	%edi
	cmovll	%ebx, %edi
	cmpl	%edi, %ecx
	cmovgel	%ecx, %edi
	movslq	%edi, %r11
	cmpq	%rax, %r11
	jae	.LBB13_16
# BB#15:                                # %entry.while.end_crit_edge.i.144
	leaq	16(%r13), %r8
	movl	16(%r13), %r9d
	jmp	.LBB13_19
.LBB13_16:                              # %while.body.lr.ph.i.154
	movq	%r12, 16(%rsp)          # 8-byte Spill
	leaq	16(%r13), %r8
	movsd	9768(%r13), %xmm3       # xmm3 = mem[0],zero
	movsd	9776(%r13), %xmm2       # xmm2 = mem[0],zero
	movdqu	(%r13), %xmm0
	movl	16(%r13), %r9d
	movl	20(%r13), %r10d
	movdqu	24(%r13), %xmm1
	movl	40(%r13), %edi
	movl	44(%r13), %ecx
	movl	48(%r13), %ebx
	movl	64(%r13), %ebp
	movdqa	.LCPI13_0(%rip), %xmm4  # xmm4 = [1,1,1,1]
	.align	16, 0x90
.LBB13_17:                              # %while.body.i.169
                                        # =>This Inner Loop Header: Depth=1
	addq	%rax, %rax
	paddd	%xmm4, %xmm0
	psrad	$1, %xmm0
	sarl	%r9d
	decl	%r10d
	paddd	%xmm4, %xmm1
	psrad	$1, %xmm1
	sarl	%edi
	decl	%ecx
	decl	%ebx
	sarl	%ebp
	cmpq	%rax, %r11
	jae	.LBB13_17
# BB#18:                                # %while.end.i.172.loopexit
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%r9d, %xmm4
	cvtsi2sdl	%edi, %xmm5
	movapd	%xmm5, %xmm6
	divsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm3
	movsd	.LCPI13_1(%rip), %xmm7  # xmm7 = mem[0],zero
	addsd	%xmm7, %xmm3
	cvttsd2si	%xmm3, %r11d
	mulsd	%xmm2, %xmm4
	addsd	%xmm7, %xmm4
	cvttsd2si	%xmm4, %r15d
	addsd	%xmm7, %xmm6
	cvttsd2si	%xmm6, %r14d
	divsd	%xmm2, %xmm5
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %r12d
	movq	%rax, 56(%r13)
	movdqu	%xmm0, (%r13)
	movl	%r9d, 16(%r13)
	movl	%r10d, 20(%r13)
	movdqu	%xmm1, 24(%r13)
	movl	%edi, 40(%r13)
	movl	%ecx, 44(%r13)
	movl	%ebx, 48(%r13)
	movl	%ebp, 64(%r13)
	movl	%r11d, 9796(%r13)
	movl	%r15d, 9792(%r13)
	movl	%r14d, 9804(%r13)
	movl	%r12d, 9800(%r13)
	movq	16(%rsp), %r12          # 8-byte Reload
	movl	96(%rsp), %ebx
.LBB13_19:                              # %while.end.i.172
	testl	%r9d, %r9d
	jne	.LBB13_21
# BB#20:                                # %if.then.i.173
	movl	$1, (%r8)
.LBB13_21:                              # %t1_hinter__adjust_matrix_precision.exit175
	cmpl	$0, 152(%r13)
	je	.LBB13_32
# BB#22:                                # %if.then
	movslq	108(%r13), %rax
	movslq	%esi, %rcx
	addq	%rax, %rcx
	movslq	112(%r13), %rax
	movslq	%edx, %rdx
	addq	%rax, %rdx
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rcx), %edi
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rdx), %r8d
	leal	(%r12,%rdi), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	%eax, 108(%r13)
	leal	(%rbx,%r8), %ebp
	movl	%ebp, 112(%r13)
	movl	$1, 168(%r13)
	movslq	(%r13), %r14
	movq	%r14, %rax
	imulq	%rcx, %rax
	shrq	$11, %rax
	incq	%rax
	shrq	%rax
	movslq	8(%r13), %r10
	movq	%r10, %rsi
	imulq	%rdx, %rsi
	shrq	$11, %rsi
	incq	%rsi
	shrq	%rsi
	addl	%eax, %esi
	movslq	4(%r13), %r15
	imulq	%r15, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	movslq	12(%r13), %rax
	imulq	%rax, %rdx
	shrq	$11, %rdx
	incq	%rdx
	shrq	%rdx
	addl	%ecx, %edx
	movl	48(%r13), %r11d
	leal	-8(%r11), %ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	testl	%ecx, %ecx
	jle	.LBB13_23
# BB#43:                                # %if.then.i.i
	movl	%ebp, 24(%rsp)          # 4-byte Spill
	leal	-9(%r11), %ecx
	sarl	%cl, %esi
	incl	%esi
	sarl	%esi
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	jmp	.LBB13_25
.LBB13_32:                              # %if.else
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	callq	t1_hinter__add_pole
	testl	%eax, %eax
	js	.LBB13_42
# BB#33:                                # %if.end
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	t1_hinter__add_pole
	testl	%eax, %eax
	js	.LBB13_42
# BB#34:                                # %if.end.15
	movl	$1, %ecx
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebx, %edx
	callq	t1_hinter__add_pole
	testl	%eax, %eax
	js	.LBB13_42
# BB#35:                                # %do.end.22
	movslq	9664(%r13), %rsi
	movq	7696(%r13), %rdi
	movl	9680(%r13), %ecx
	leal	-3(%rcx), %edx
	xorl	%eax, %eax
	cmpl	%edx, (%rdi,%rsi,4)
	jge	.LBB13_42
# BB#36:                                # %if.end.i
	leal	-1(%rcx), %esi
	cmpl	%esi, %edx
	jg	.LBB13_41
# BB#37:                                # %for.body.lr.ph.i
	addl	$-4, %ecx
	movq	5472(%r13), %rbp
	movl	108(%r13), %edi
	movslq	%ecx, %rbx
	leaq	(%rbx,%rbx,2), %rbx
	shlq	$4, %rbx
	leaq	12(%rbp,%rbx), %rbp
	.align	16, 0x90
.LBB13_39:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edi, -4(%rbp)
	jne	.LBB13_42
# BB#40:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB13_39 Depth=1
	movl	(%rbp), %ebx
	cmpl	112(%r13), %ebx
	jne	.LBB13_42
# BB#38:                                # %for.cond.i
                                        #   in Loop: Header=BB13_39 Depth=1
	incl	%ecx
	addq	$48, %rbp
	cmpl	%esi, %ecx
	jl	.LBB13_39
.LBB13_41:                              # %for.end.i
	movl	%edx, 9680(%r13)
	jmp	.LBB13_42
.LBB13_23:                              # %if.else.i.24.i
	movl	%ebp, 24(%rsp)          # 4-byte Spill
	je	.LBB13_25
# BB#24:                                # %if.else.7.i.i
	movl	$8, %ecx
	subl	%r11d, %ecx
	shll	%cl, %esi
	shll	%cl, %edx
.LBB13_25:                              # %g2d.exit
	movl	84(%r13), %r9d
	movl	88(%r13), %r12d
	movslq	%edi, %rcx
	movq	%r14, %rbx
	imulq	%rcx, %rbx
	shrq	$11, %rbx
	incq	%rbx
	shrq	%rbx
	movslq	%r8d, %rbp
	movq	%r10, %rdi
	imulq	%rbp, %rdi
	shrq	$11, %rdi
	incq	%rdi
	shrq	%rdi
	addl	%ebx, %edi
	imulq	%r15, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	imulq	%rax, %rbp
	shrq	$11, %rbp
	incq	%rbp
	shrq	%rbp
	addl	%ecx, %ebp
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	jle	.LBB13_26
# BB#44:                                # %if.then.i.i.341
	leal	-9(%r11), %ecx
	sarl	%cl, %edi
	incl	%edi
	sarl	%edi
	sarl	%cl, %ebp
	incl	%ebp
	sarl	%ebp
	jmp	.LBB13_28
.LBB13_26:                              # %if.else.i.24.i.329
	je	.LBB13_28
# BB#27:                                # %if.else.7.i.i.346
	movl	$8, %ecx
	subl	%r11d, %ecx
	shll	%cl, %edi
	shll	%cl, %ebp
.LBB13_28:                              # %g2d.exit352
	movl	16(%rsp), %ecx          # 4-byte Reload
	leal	(%rsi,%r9), %esi
	leal	(%rdx,%r12), %edx
	leal	(%rdi,%r9), %ebx
	leal	(%rbp,%r12), %r8d
	movslq	%ecx, %rcx
	imulq	%rcx, %r14
	shrq	$11, %r14
	incq	%r14
	shrq	%r14
	movslq	24(%rsp), %rdi          # 4-byte Folded Reload
	imulq	%rdi, %r10
	shrq	$11, %r10
	incq	%r10
	shrq	%r10
	addl	%r14d, %r10d
	imulq	%rcx, %r15
	shrq	$11, %r15
	incq	%r15
	shrq	%r15
	imulq	%rdi, %rax
	shrq	$11, %rax
	incq	%rax
	shrq	%rax
	addl	%r15d, %eax
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	jle	.LBB13_29
# BB#45:                                # %if.then.i.i.276
	addl	$-9, %r11d
	movb	%r11b, %cl
	sarl	%cl, %r10d
	incl	%r10d
	sarl	%r10d
	movb	%r11b, %cl
	sarl	%cl, %eax
	incl	%eax
	sarl	%eax
	jmp	.LBB13_31
.LBB13_29:                              # %if.else.i.24.i.264
	je	.LBB13_31
# BB#30:                                # %if.else.7.i.i.281
	movl	$8, %ecx
	subl	%r11d, %ecx
	shll	%cl, %r10d
	shll	%cl, %eax
.LBB13_31:                              # %g2d.exit287
	addl	%r10d, %r9d
	addl	%eax, %r12d
	movq	9840(%r13), %rdi
	movl	%r12d, (%rsp)
	movl	$0, 8(%rsp)
	movl	%ebx, %ecx
	callq	gx_path_add_curve_notes
.LBB13_42:                              # %return
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	t1_hinter__rcurveto, .Lfunc_end13-t1_hinter__rcurveto
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI14_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	t1_hinter__setcurrentpoint
	.align	16, 0x90
	.type	t1_hinter__setcurrentpoint,@function
t1_hinter__setcurrentpoint:             # @t1_hinter__setcurrentpoint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp126:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 56
.Ltmp128:
	.cfi_offset %rbx, -56
.Ltmp129:
	.cfi_offset %r12, -48
.Ltmp130:
	.cfi_offset %r13, -40
.Ltmp131:
	.cfi_offset %r14, -32
.Ltmp132:
	.cfi_offset %r15, -24
.Ltmp133:
	.cfi_offset %rbp, -16
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	movl	%esi, %ecx
	negl	%ecx
	cmovll	%esi, %ecx
	cmpl	%eax, %ecx
	cmovll	%eax, %ecx
	movslq	%ecx, %r14
	movq	56(%rdi), %rax
	leaq	16(%rdi), %r8
	cmpq	%rax, %r14
	jae	.LBB14_2
# BB#1:                                 # %entry.while.end_crit_edge.i
	movl	16(%rdi), %r9d
	jmp	.LBB14_5
.LBB14_2:                               # %while.body.lr.ph.i
	movsd	9768(%rdi), %xmm3       # xmm3 = mem[0],zero
	movsd	9776(%rdi), %xmm2       # xmm2 = mem[0],zero
	movdqu	(%rdi), %xmm0
	movl	16(%rdi), %r9d
	movl	20(%rdi), %ebp
	movdqu	24(%rdi), %xmm1
	movl	40(%rdi), %ebx
	movl	44(%rdi), %r11d
	movl	48(%rdi), %r10d
	movl	64(%rdi), %ecx
	movdqa	.LCPI14_0(%rip), %xmm4  # xmm4 = [1,1,1,1]
	.align	16, 0x90
.LBB14_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%rax, %rax
	paddd	%xmm4, %xmm0
	psrad	$1, %xmm0
	sarl	%r9d
	decl	%ebp
	paddd	%xmm4, %xmm1
	psrad	$1, %xmm1
	sarl	%ebx
	decl	%r11d
	decl	%r10d
	sarl	%ecx
	cmpq	%rax, %r14
	jae	.LBB14_3
# BB#4:                                 # %while.end.i.loopexit
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%r9d, %xmm4
	cvtsi2sdl	%ebx, %xmm5
	movapd	%xmm5, %xmm6
	divsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm3
	movsd	.LCPI14_1(%rip), %xmm7  # xmm7 = mem[0],zero
	addsd	%xmm7, %xmm3
	cvttsd2si	%xmm3, %r14d
	mulsd	%xmm2, %xmm4
	addsd	%xmm7, %xmm4
	cvttsd2si	%xmm4, %r15d
	addsd	%xmm7, %xmm6
	cvttsd2si	%xmm6, %r12d
	divsd	%xmm2, %xmm5
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %r13d
	movq	%rax, 56(%rdi)
	movdqu	%xmm0, (%rdi)
	movl	%r9d, 16(%rdi)
	movl	%ebp, 20(%rdi)
	movdqu	%xmm1, 24(%rdi)
	movl	%ebx, 40(%rdi)
	movl	%r11d, 44(%rdi)
	movl	%r10d, 48(%rdi)
	movl	%ecx, 64(%rdi)
	movl	%r14d, 9796(%rdi)
	movl	%r15d, 9792(%rdi)
	movl	%r12d, 9804(%rdi)
	movl	%r13d, 9800(%rdi)
.LBB14_5:                               # %while.end.i
	testl	%r9d, %r9d
	jne	.LBB14_7
# BB#6:                                 # %if.then.i
	movl	$1, (%r8)
.LBB14_7:                               # %t1_hinter__adjust_matrix_precision.exit
	cmpl	$2, 9720(%rdi)
	jne	.LBB14_10
# BB#8:                                 # %if.else
	cmpl	%esi, 108(%rdi)
	jne	.LBB14_10
# BB#9:                                 # %lor.lhs.false
	cmpl	%edx, 112(%rdi)
	je	.LBB14_11
.LBB14_10:                              # %if.then.5
	movl	%esi, 108(%rdi)
	movl	%edx, 112(%rdi)
.LBB14_11:                              # %if.end.8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	t1_hinter__setcurrentpoint, .Lfunc_end14-t1_hinter__setcurrentpoint
	.cfi_endproc

	.globl	t1_hinter__end_subglyph
	.align	16, 0x90
	.type	t1_hinter__end_subglyph,@function
t1_hinter__end_subglyph:                # @t1_hinter__end_subglyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp134:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp135:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp136:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp137:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp138:
	.cfi_def_cfa_offset 48
.Ltmp139:
	.cfi_offset %rbx, -40
.Ltmp140:
	.cfi_offset %r12, -32
.Ltmp141:
	.cfi_offset %r14, -24
.Ltmp142:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$0, 152(%rbx)
	jne	.LBB15_8
# BB#1:                                 # %if.end
	movl	9656(%rbx), %eax
	incl	%eax
	movl	%eax, 9656(%rbx)
	movl	9660(%rbx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB15_3
# BB#2:                                 # %if.end.if.end.7_crit_edge
	movq	7744(%rbx), %r14
	jmp	.LBB15_7
.LBB15_3:                               # %if.then.2
	movq	9848(%rbx), %r15
	leal	24(,%rcx,4), %esi
	movl	$.L.str.5, %edx
	movq	%r15, %rdi
	callq	*64(%r15)
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB15_8
# BB#4:                                 # %if.end.i
	leaq	7704(%rbx), %r12
	movq	7744(%rbx), %rsi
	movslq	9660(%rbx), %rdx
	shlq	$2, %rdx
	movq	%r14, %rdi
	callq	memcpy
	movq	7744(%rbx), %rsi
	cmpq	%r12, %rsi
	je	.LBB15_6
# BB#5:                                 # %if.then.6.i
	movl	$.L.str.5, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB15_6:                               # %t1_hinter__realloc_array.exit.thread
	movq	%r14, 7744(%rbx)
	addl	$6, 9660(%rbx)
	movl	9656(%rbx), %eax
.LBB15_7:                               # %if.end.7
	movl	9664(%rbx), %ecx
	cltq
	movl	%ecx, (%r14,%rax,4)
	xorl	%eax, %eax
.LBB15_8:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	t1_hinter__end_subglyph, .Lfunc_end15-t1_hinter__end_subglyph
	.cfi_endproc

	.globl	t1_hinter__flex_beg
	.align	16, 0x90
	.type	t1_hinter__flex_beg,@function
t1_hinter__flex_beg:                    # @t1_hinter__flex_beg
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-10, %eax
	cmpl	$0, 9716(%rdi)
	jne	.LBB16_2
# BB#1:                                 # %if.end
	movl	$1, 9716(%rdi)
	movl	$1, 9724(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 152(%rdi)
	je	.LBB16_2
# BB#3:                                 # %if.then.2
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	t1_hinter__rmoveto      # TAILCALL
.LBB16_2:                               # %return
	retq
.Lfunc_end16:
	.size	t1_hinter__flex_beg, .Lfunc_end16-t1_hinter__flex_beg
	.cfi_endproc

	.globl	t1_hinter__flex_point
	.align	16, 0x90
	.type	t1_hinter__flex_point,@function
t1_hinter__flex_point:                  # @t1_hinter__flex_point
	.cfi_startproc
# BB#0:                                 # %entry
	movl	9716(%rdi), %ecx
	movl	$-10, %eax
	testl	%ecx, %ecx
	je	.LBB17_2
# BB#1:                                 # %if.end
	incl	%ecx
	movl	%ecx, 9716(%rdi)
	xorl	%eax, %eax
.LBB17_2:                               # %return
	retq
.Lfunc_end17:
	.size	t1_hinter__flex_point, .Lfunc_end17-t1_hinter__flex_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI18_1:
	.quad	4636737291354636288     # double 100
	.text
	.globl	t1_hinter__flex_end
	.align	16, 0x90
	.type	t1_hinter__flex_end,@function
t1_hinter__flex_end:                    # @t1_hinter__flex_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp144:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp145:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp146:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp147:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp149:
	.cfi_def_cfa_offset 112
.Ltmp150:
	.cfi_offset %rbx, -56
.Ltmp151:
	.cfi_offset %r12, -48
.Ltmp152:
	.cfi_offset %r13, -40
.Ltmp153:
	.cfi_offset %r14, -32
.Ltmp154:
	.cfi_offset %r15, -24
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	64(%r14), %edi
	movb	128(%r14), %cl
	movl	%edi, %r11d
	shll	%cl, %r11d
	movl	$-10, %eax
	cmpl	$8, 9716(%r14)
	jne	.LBB18_32
# BB#1:                                 # %if.end
	movb	124(%r14), %cl
	shll	%cl, %edi
	movslq	9680(%r14), %rax
	movq	5472(%r14), %r9
	leaq	(%rax,%rax,2), %r15
	shlq	$4, %r15
	leaq	-384(%r15,%r9), %r13
	movslq	-192(%r15,%r9), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movslq	-336(%r15,%r9), %rdx
	subq	%rdx, %rcx
	movslq	-188(%r15,%r9), %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movslq	-332(%r15,%r9), %rdx
	subq	%rdx, %rbx
	movslq	(%r14), %r8
	movq	%r8, %rdx
	imulq	%rcx, %rdx
	shrq	$11, %rdx
	incq	%rdx
	shrq	%rdx
	movslq	8(%r14), %r12
	movq	%r12, %rbp
	imulq	%rbx, %rbp
	shrq	$11, %rbp
	incq	%rbp
	shrq	%rbp
	addl	%edx, %ebp
	movl	%ebp, %eax
	negl	%eax
	cmovll	%ebp, %eax
	movslq	4(%r14), %r10
	movslq	12(%r14), %rdx
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	%edi, %xmm2
	cvtsi2sdl	%esi, %xmm0
	mulsd	.LCPI18_0(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	divsd	.LCPI18_1(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	ja	.LBB18_3
# BB#2:                                 # %lor.lhs.false
	imulq	%r10, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	imulq	%rdx, %rbx
	shrq	$11, %rbx
	incq	%rbx
	shrq	%rbx
	addl	%ecx, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	%r11d, %xmm2
	mulsd	%xmm2, %xmm0
	divsd	.LCPI18_1(%rip), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_25
.LBB18_3:                               # %do.end.45
	cmpl	$0, 152(%r14)
	je	.LBB18_24
# BB#4:                                 # %if.then.46
	movslq	96(%r13), %rax
	movq	%r8, %rcx
	imulq	%rax, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	movslq	100(%r13), %rbp
	movq	%r13, %rsi
	movq	%r12, %rdi
	imulq	%rbp, %rdi
	shrq	$11, %rdi
	incq	%rdi
	shrq	%rdi
	addl	%ecx, %edi
	imulq	%r10, %rax
	shrq	$11, %rax
	incq	%rax
	shrq	%rax
	imulq	%rdx, %rbp
	shrq	$11, %rbp
	incq	%rbp
	shrq	%rbp
	addl	%eax, %ebp
	movl	48(%r14), %r11d
	leal	-8(%r11), %r13d
	testl	%r13d, %r13d
	jle	.LBB18_5
# BB#33:                                # %if.then.i.i.462
	leal	-9(%r11), %ecx
	sarl	%cl, %edi
	incl	%edi
	sarl	%edi
	sarl	%cl, %ebp
	incl	%ebp
	sarl	%ebp
	jmp	.LBB18_7
.LBB18_24:                              # %if.else
	leaq	-336(%r15,%r9), %rdi
	leaq	48(%rdi), %rsi
	movl	$336, %edx              # imm = 0x150
	callq	memmove
	movl	$0, 120(%r13)
	movl	$0, 72(%r13)
	movl	$1, 168(%r13)
	movl	$0, 264(%r13)
	movl	$0, 216(%r13)
	movl	$1, 312(%r13)
	movl	9680(%r14), %eax
	decl	%eax
	jmp	.LBB18_31
.LBB18_25:                              # %do.end.105
	cmpl	$0, 152(%r14)
	je	.LBB18_30
# BB#26:                                # %if.then.108
	movslq	336(%r13), %rax
	imulq	%rax, %r8
	shrq	$11, %r8
	incq	%r8
	shrq	%r8
	movslq	340(%r13), %rcx
	imulq	%rcx, %r12
	shrq	$11, %r12
	incq	%r12
	shrq	%r12
	addl	%r8d, %r12d
	imulq	%rax, %r10
	shrq	$11, %r10
	incq	%r10
	shrq	%r10
	imulq	%rcx, %rdx
	shrq	$11, %rdx
	incq	%rdx
	shrq	%rdx
	addl	%r10d, %edx
	movl	48(%r14), %ecx
	leal	-8(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB18_27
# BB#39:                                # %if.then.i.i
	addl	$-9, %ecx
	sarl	%cl, %r12d
	incl	%r12d
	sarl	%r12d
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	jmp	.LBB18_29
.LBB18_5:                               # %if.else.i.24.i.450
	je	.LBB18_7
# BB#6:                                 # %if.else.7.i.i.467
	movl	$8, %ecx
	subl	%r11d, %ecx
	shll	%cl, %edi
	shll	%cl, %ebp
.LBB18_7:                               # %g2d.exit473
	movl	84(%r14), %r9d
	movl	88(%r14), %r15d
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movslq	144(%rsi), %rcx
	movq	%r8, %rbx
	imulq	%rcx, %rbx
	shrq	$11, %rbx
	incq	%rbx
	shrq	%rbx
	movslq	148(%rsi), %rax
	movq	%r12, %rsi
	imulq	%rax, %rsi
	shrq	$11, %rsi
	incq	%rsi
	shrq	%rsi
	addl	%ebx, %esi
	imulq	%r10, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	imulq	%rdx, %rax
	shrq	$11, %rax
	incq	%rax
	shrq	%rax
	addl	%ecx, %eax
	testl	%r13d, %r13d
	jle	.LBB18_8
# BB#34:                                # %if.then.i.i.397
	leal	-9(%r11), %ecx
	sarl	%cl, %esi
	incl	%esi
	sarl	%esi
	sarl	%cl, %eax
	incl	%eax
	sarl	%eax
	jmp	.LBB18_10
.LBB18_8:                               # %if.else.i.24.i.385
	je	.LBB18_10
# BB#9:                                 # %if.else.7.i.i.402
	movl	$8, %ecx
	subl	%r11d, %ecx
	shll	%cl, %esi
	shll	%cl, %eax
.LBB18_10:                              # %g2d.exit408
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
	leal	(%rdi,%r9), %edi
	movl	%edi, 28(%rsp)          # 4-byte Spill
	leal	(%rbp,%r15), %edi
	movl	%edi, 24(%rsp)          # 4-byte Spill
	leal	(%rsi,%r9), %edi
	leal	(%rax,%r15), %ebp
	imulq	%rbx, %r8
	shrq	$11, %r8
	incq	%r8
	shrq	%r8
	imulq	%rcx, %r12
	shrq	$11, %r12
	incq	%r12
	shrq	%r12
	addl	%r8d, %r12d
	imulq	%rbx, %r10
	shrq	$11, %r10
	incq	%r10
	shrq	%r10
	imulq	%rcx, %rdx
	shrq	$11, %rdx
	incq	%rdx
	shrq	%rdx
	addl	%r10d, %edx
	testl	%r13d, %r13d
	jle	.LBB18_11
# BB#35:                                # %if.then.i.i.332
	addl	$-9, %r11d
	movb	%r11b, %cl
	sarl	%cl, %r12d
	incl	%r12d
	sarl	%r12d
	movb	%r11b, %cl
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	jmp	.LBB18_13
.LBB18_11:                              # %if.else.i.24.i.320
	je	.LBB18_13
# BB#12:                                # %if.else.7.i.i.337
	movl	$8, %ecx
	subl	%r11d, %ecx
	shll	%cl, %r12d
	shll	%cl, %edx
.LBB18_13:                              # %g2d.exit343
	movl	28(%rsp), %esi          # 4-byte Reload
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%edi, %ecx
	movl	%ebp, %r8d
	addl	%r12d, %r9d
	addl	%edx, %r15d
	movq	9840(%r14), %rdi
	movl	%r15d, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, %edx
	callq	gx_path_add_curve_notes
	testl	%eax, %eax
	js	.LBB18_32
# BB#14:                                # %if.end.62
	movq	32(%rsp), %rsi          # 8-byte Reload
	movslq	240(%rsi), %rax
	movslq	(%r14), %r15
	movq	%r15, %rcx
	imulq	%rax, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	movslq	244(%rsi), %rdx
	movq	%rsi, %rdi
	movslq	8(%r14), %r13
	movq	%r13, %rsi
	imulq	%rdx, %rsi
	shrq	$11, %rsi
	incq	%rsi
	shrq	%rsi
	addl	%ecx, %esi
	movslq	4(%r14), %r10
	imulq	%r10, %rax
	shrq	$11, %rax
	incq	%rax
	shrq	%rax
	movslq	12(%r14), %rbp
	imulq	%rbp, %rdx
	shrq	$11, %rdx
	incq	%rdx
	shrq	%rdx
	addl	%eax, %edx
	movl	48(%r14), %r11d
	leal	-8(%r11), %r8d
	testl	%r8d, %r8d
	jle	.LBB18_15
# BB#36:                                # %if.then.i.i.267
	leal	-9(%r11), %ecx
	sarl	%cl, %esi
	incl	%esi
	sarl	%esi
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	jmp	.LBB18_17
.LBB18_15:                              # %if.else.i.24.i.255
	je	.LBB18_17
# BB#16:                                # %if.else.7.i.i.272
	movl	$8, %ecx
	subl	%r11d, %ecx
	shll	%cl, %esi
	shll	%cl, %edx
.LBB18_17:                              # %g2d.exit278
	movl	84(%r14), %r9d
	movl	88(%r14), %r12d
	movslq	288(%rdi), %rcx
	movq	%r15, %rbx
	imulq	%rcx, %rbx
	shrq	$11, %rbx
	incq	%rbx
	shrq	%rbx
	movslq	292(%rdi), %rax
	movq	%r13, %rdi
	imulq	%rax, %rdi
	shrq	$11, %rdi
	incq	%rdi
	shrq	%rdi
	addl	%ebx, %edi
	imulq	%r10, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	imulq	%rbp, %rax
	shrq	$11, %rax
	incq	%rax
	shrq	%rax
	addl	%ecx, %eax
	testl	%r8d, %r8d
	jle	.LBB18_18
# BB#37:                                # %if.then.i.i.202
	leal	-9(%r11), %ecx
	sarl	%cl, %edi
	incl	%edi
	sarl	%edi
	sarl	%cl, %eax
	incl	%eax
	sarl	%eax
	jmp	.LBB18_20
.LBB18_18:                              # %if.else.i.24.i.190
	je	.LBB18_20
# BB#19:                                # %if.else.7.i.i.207
	movl	$8, %ecx
	subl	%r11d, %ecx
	shll	%cl, %edi
	shll	%cl, %eax
.LBB18_20:                              # %g2d.exit213
	leal	(%rsi,%r9), %esi
	leal	(%rdx,%r12), %edx
	leal	(%rdi,%r9), %ebx
	leal	(%rax,%r12), %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	movslq	336(%rdi), %rcx
	imulq	%rcx, %r15
	shrq	$11, %r15
	incq	%r15
	shrq	%r15
	movslq	340(%rdi), %rdi
	imulq	%rdi, %r13
	shrq	$11, %r13
	incq	%r13
	shrq	%r13
	addl	%r15d, %r13d
	imulq	%rcx, %r10
	shrq	$11, %r10
	incq	%r10
	shrq	%r10
	imulq	%rdi, %rbp
	shrq	$11, %rbp
	incq	%rbp
	shrq	%rbp
	addl	%r10d, %ebp
	testl	%r8d, %r8d
	jle	.LBB18_21
# BB#38:                                # %if.then.i.i.137
	addl	$-9, %r11d
	movb	%r11b, %cl
	sarl	%cl, %r13d
	incl	%r13d
	sarl	%r13d
	movb	%r11b, %cl
	sarl	%cl, %ebp
	incl	%ebp
	sarl	%ebp
	jmp	.LBB18_23
.LBB18_21:                              # %if.else.i.24.i.125
	je	.LBB18_23
# BB#22:                                # %if.else.7.i.i.142
	movl	$8, %ecx
	subl	%r11d, %ecx
	shll	%cl, %r13d
	shll	%cl, %ebp
.LBB18_23:                              # %g2d.exit148
	addl	%r13d, %r9d
	addl	%ebp, %r12d
	movl	$0, 9716(%r14)
	movl	$0, 9680(%r14)
	movq	9840(%r14), %rdi
	movl	%r12d, (%rsp)
	movl	$0, 8(%rsp)
	movl	%ebx, %ecx
	movl	%eax, %r8d
	callq	gx_path_add_curve_notes
	jmp	.LBB18_32
.LBB18_30:                              # %if.else.119
	movupd	336(%r13), %xmm0
	movups	352(%r13), %xmm1
	movupd	368(%r13), %xmm2
	movupd	%xmm2, 80(%r13)
	movups	%xmm1, 64(%r13)
	movupd	%xmm0, 48(%r13)
	movl	$1, 72(%r13)
	movl	9680(%r14), %eax
	addl	$-6, %eax
.LBB18_31:                              # %if.end.127
	movl	%eax, 9680(%r14)
	movl	$0, 9716(%r14)
	xorl	%eax, %eax
.LBB18_32:                              # %cleanup.129
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_27:                              # %if.else.i.24.i
	je	.LBB18_29
# BB#28:                                # %if.else.7.i.i
	movl	$8, %eax
	subl	%ecx, %eax
	movb	%al, %cl
	shll	%cl, %r12d
	movb	%al, %cl
	shll	%cl, %edx
.LBB18_29:                              # %g2d.exit
	addl	84(%r14), %r12d
	addl	88(%r14), %edx
	movl	$0, 9716(%r14)
	movl	$0, 9680(%r14)
	movq	9840(%r14), %rdi
	xorl	%ecx, %ecx
	movl	%r12d, %esi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_path_add_line_notes  # TAILCALL
.Lfunc_end18:
	.size	t1_hinter__flex_end, .Lfunc_end18-t1_hinter__flex_end
	.cfi_endproc

	.globl	t1_hinter__hint_mask
	.align	16, 0x90
	.type	t1_hinter__hint_mask,@function
t1_hinter__hint_mask:                   # @t1_hinter__hint_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp157:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp158:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp159:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp160:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp161:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp162:
	.cfi_def_cfa_offset 80
.Ltmp163:
	.cfi_offset %rbx, -56
.Ltmp164:
	.cfi_offset %r12, -48
.Ltmp165:
	.cfi_offset %r13, -40
.Ltmp166:
	.cfi_offset %r14, -32
.Ltmp167:
	.cfi_offset %r15, -24
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$0, 148(%rbx)
	jne	.LBB19_21
# BB#1:                                 # %if.end
	movslq	9688(%rbx), %r8
	movq	%r8, 8(%rsp)            # 8-byte Spill
	testq	%r8, %r8
	jle	.LBB19_21
# BB#2:                                 # %for.body.lr.ph
	leaq	7936(%rbx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%ebp, %ebp
	movl	$48, %r13d
	.align	16, 0x90
.LBB19_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rsi, %rsi
	je	.LBB19_4
# BB#8:                                 # %land.end
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	%ebp, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%rsi,%rax), %eax
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %eax
	movq	7520(%rbx), %r14
	movl	(%r14,%r13), %eax
	je	.LBB19_5
# BB#9:                                 # %if.then.11
                                        #   in Loop: Header=BB19_3 Depth=1
	cmpl	$-1, %eax
	je	.LBB19_13
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB19_3 Depth=1
	movslq	%eax, %rcx
	movq	8176(%rbx), %rdx
	movswl	2(%rdx,%rcx,8), %edi
	cmpl	$-1, %edi
	je	.LBB19_12
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB19_3 Depth=1
	cmpl	9680(%rbx), %edi
	jne	.LBB19_13
.LBB19_12:                              # %if.then.28
                                        #   in Loop: Header=BB19_3 Depth=1
	movw	$-1, 2(%rdx,%rcx,8)
	jmp	.LBB19_20
	.align	16, 0x90
.LBB19_4:                               # %land.end.thread
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	7520(%rbx), %rax
	movl	(%rax,%r13), %eax
.LBB19_5:                               # %if.else.47
                                        #   in Loop: Header=BB19_3 Depth=1
	cmpl	$-1, %eax
	je	.LBB19_20
# BB#6:                                 # %land.lhs.true.51
                                        #   in Loop: Header=BB19_3 Depth=1
	cltq
	movq	8176(%rbx), %rcx
	movzwl	2(%rcx,%rax,8), %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	jne	.LBB19_20
# BB#7:                                 # %if.then.60
                                        #   in Loop: Header=BB19_3 Depth=1
	movw	9680(%rbx), %dx
	movw	%dx, 2(%rcx,%rax,8)
	jmp	.LBB19_20
	.align	16, 0x90
.LBB19_13:                              # %if.else
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	9696(%rbx), %ecx
	movl	9700(%rbx), %edx
	cmpl	%edx, %ecx
	jge	.LBB19_15
# BB#14:                                # %entry.if.end.4_crit_edge.i
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	8176(%rbx), %r15
	movq	16(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB19_19
.LBB19_15:                              # %if.then.i
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	9848(%rbx), %r12
	leal	480(,%rdx,8), %esi
	movl	$.L.str.6, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB19_21
# BB#16:                                # %if.end.i.i
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	8176(%rbx), %rsi
	movslq	9700(%rbx), %rdx
	shlq	$3, %rdx
	movq	%r15, %rdi
	callq	memcpy
	movq	8176(%rbx), %rsi
	cmpq	(%rsp), %rsi            # 8-byte Folded Reload
	je	.LBB19_18
# BB#17:                                # %if.then.6.i.i
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	$.L.str.6, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
.LBB19_18:                              # %t1_hinter__realloc_array.exit.thread.i
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	%r15, 8176(%rbx)
	addl	$60, 9700(%rbx)
	movl	9696(%rbx), %ecx
	movl	(%r14,%r13), %eax
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %r8            # 8-byte Reload
.LBB19_19:                              # %cleanup.thread
                                        #   in Loop: Header=BB19_3 Depth=1
	movslq	%ecx, %rcx
	movw	9680(%rbx), %dx
	movw	%dx, (%r15,%rcx,8)
	movw	$-1, 2(%r15,%rcx,8)
	movl	%eax, 4(%r15,%rcx,8)
	movl	%ecx, (%r14,%r13)
	incl	%ecx
	movl	%ecx, 9696(%rbx)
.LBB19_20:                              # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	incq	%rbp
	addq	$68, %r13
	xorl	%eax, %eax
	cmpq	%r8, %rbp
	jl	.LBB19_3
.LBB19_21:                              # %cleanup.76
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	t1_hinter__hint_mask, .Lfunc_end19-t1_hinter__hint_mask
	.cfi_endproc

	.globl	t1_hinter__drop_hints
	.align	16, 0x90
	.type	t1_hinter__drop_hints,@function
t1_hinter__drop_hints:                  # @t1_hinter__drop_hints
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 148(%rdi)
	jne	.LBB20_9
# BB#1:                                 # %if.end
	cmpl	$-1, 9712(%rdi)
	jne	.LBB20_3
# BB#2:                                 # %if.then.1
	movl	9696(%rdi), %eax
	movl	%eax, 9712(%rdi)
.LBB20_3:                               # %if.end.i
	movslq	9688(%rdi), %rax
	testq	%rax, %rax
	jle	.LBB20_9
# BB#4:                                 # %for.body.lr.ph.i
	movq	7520(%rdi), %rcx
	addq	$48, %rcx
	.align	16, 0x90
.LBB20_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rcx), %rdx
	cmpq	$-1, %rdx
	je	.LBB20_8
# BB#6:                                 # %land.lhs.true.51.i
                                        #   in Loop: Header=BB20_5 Depth=1
	movq	8176(%rdi), %r8
	movzwl	2(%r8,%rdx,8), %esi
	cmpl	$65535, %esi            # imm = 0xFFFF
	jne	.LBB20_8
# BB#7:                                 # %if.then.60.i
                                        #   in Loop: Header=BB20_5 Depth=1
	movw	9680(%rdi), %si
	movw	%si, 2(%r8,%rdx,8)
.LBB20_8:                               # %for.inc.i
                                        #   in Loop: Header=BB20_5 Depth=1
	addq	$68, %rcx
	decq	%rax
	jne	.LBB20_5
.LBB20_9:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	t1_hinter__drop_hints, .Lfunc_end20-t1_hinter__drop_hints
	.cfi_endproc

	.globl	t1_hinter__dotsection
	.align	16, 0x90
	.type	t1_hinter__dotsection,@function
t1_hinter__dotsection:                  # @t1_hinter__dotsection
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	9680(%rdi), %rax
	testq	%rax, %rax
	je	.LBB21_3
# BB#1:                                 # %lor.lhs.false
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movq	5472(%rdi), %rcx
	cmpl	$3, -24(%rax,%rcx)
	jne	.LBB21_3
# BB#2:                                 # %if.end
	cmpl	$0, 148(%rdi)
	je	.LBB21_4
.LBB21_3:                               # %return
	xorl	%eax, %eax
	retq
.LBB21_4:                               # %if.end.4
	movl	$2, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	t1_hinter__stem         # TAILCALL
.Lfunc_end21:
	.size	t1_hinter__dotsection, .Lfunc_end21-t1_hinter__dotsection
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI22_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	t1_hinter__stem,@function
t1_hinter__stem:                        # @t1_hinter__stem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp170:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp171:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp172:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp173:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp174:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp175:
	.cfi_def_cfa_offset 80
.Ltmp176:
	.cfi_offset %rbx, -56
.Ltmp177:
	.cfi_offset %r12, -48
.Ltmp178:
	.cfi_offset %r13, -40
.Ltmp179:
	.cfi_offset %r14, -32
.Ltmp180:
	.cfi_offset %r15, -24
.Ltmp181:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %r13
	leaq	80(%r13), %rax
	leaq	76(%r13), %rcx
	testl	%r14d, %r14d
	cmoveq	%rax, %rcx
	addl	(%rcx), %r12d
	leal	(%r8,%r12), %esi
	testb	$1, %r9b
	movl	%esi, %eax
	cmovnel	%r12d, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	testb	$2, %r9b
	movl	%r12d, %eax
	cmovnel	%esi, %eax
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	cmpl	%edx, %ecx
	cmovgel	%ecx, %edx
	movslq	%edx, %r10
	movq	56(%r13), %rdx
	cmpq	%rdx, %r10
	jae	.LBB22_2
# BB#1:                                 # %entry.while.end_crit_edge.i
	leaq	16(%r13), %r8
	movl	16(%r13), %ecx
	jmp	.LBB22_5
.LBB22_2:                               # %while.body.lr.ph.i
	movl	%esi, 16(%rsp)          # 4-byte Spill
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	leaq	16(%r13), %r8
	movsd	9768(%r13), %xmm3       # xmm3 = mem[0],zero
	movsd	9776(%r13), %xmm2       # xmm2 = mem[0],zero
	movdqu	(%r13), %xmm0
	movl	16(%r13), %ecx
	movl	20(%r13), %ebp
	movdqu	24(%r13), %xmm1
	movl	40(%r13), %eax
	movl	44(%r13), %ebx
	movl	48(%r13), %edi
	movl	64(%r13), %esi
	movdqa	.LCPI22_0(%rip), %xmm4  # xmm4 = [1,1,1,1]
	.align	16, 0x90
.LBB22_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%rdx, %rdx
	paddd	%xmm4, %xmm0
	psrad	$1, %xmm0
	sarl	%ecx
	decl	%ebp
	paddd	%xmm4, %xmm1
	psrad	$1, %xmm1
	sarl	%eax
	decl	%ebx
	decl	%edi
	sarl	%esi
	cmpq	%rdx, %r10
	jae	.LBB22_3
# BB#4:                                 # %while.end.i.loopexit
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ecx, %xmm4
	cvtsi2sdl	%eax, %xmm5
	movapd	%xmm5, %xmm6
	divsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm3
	movsd	.LCPI22_1(%rip), %xmm7  # xmm7 = mem[0],zero
	addsd	%xmm7, %xmm3
	cvttsd2si	%xmm3, %r9d
	mulsd	%xmm2, %xmm4
	addsd	%xmm7, %xmm4
	cvttsd2si	%xmm4, %r10d
	addsd	%xmm7, %xmm6
	cvttsd2si	%xmm6, %r11d
	divsd	%xmm2, %xmm5
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %r15d
	movq	%rdx, 56(%r13)
	movdqu	%xmm0, (%r13)
	movl	%ecx, 16(%r13)
	movl	%ebp, 20(%r13)
	movdqu	%xmm1, 24(%r13)
	movl	%eax, 40(%r13)
	movl	%ebx, 44(%r13)
	movl	%edi, 48(%r13)
	movl	%esi, 64(%r13)
	movl	%r9d, 9796(%r13)
	movl	%r10d, 9792(%r13)
	movl	%r11d, 9804(%r13)
	movl	%r15d, 9800(%r13)
	movl	12(%rsp), %r9d          # 4-byte Reload
	movl	16(%rsp), %esi          # 4-byte Reload
.LBB22_5:                               # %while.end.i
	testl	%ecx, %ecx
	jne	.LBB22_7
# BB#6:                                 # %if.then.i
	movl	$1, (%r8)
.LBB22_7:                               # %for.cond.preheader
	movslq	9688(%r13), %rax
	xorl	%r15d, %r15d
	testq	%rax, %rax
	jle	.LBB22_14
# BB#8:                                 # %for.body.lr.ph
	movq	7520(%r13), %rcx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB22_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r14d, (%rcx)
	jne	.LBB22_13
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB22_9 Depth=1
	cmpl	%r12d, 4(%rcx)
	jne	.LBB22_13
# BB#11:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB22_9 Depth=1
	cmpl	%esi, 8(%rcx)
	jne	.LBB22_13
# BB#12:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB22_9 Depth=1
	cmpl	%r9d, 52(%rcx)
	je	.LBB22_14
	.align	16, 0x90
.LBB22_13:                              # %for.inc
                                        #   in Loop: Header=BB22_9 Depth=1
	incq	%r15
	addq	$68, %rcx
	cmpq	%rax, %r15
	jl	.LBB22_9
.LBB22_14:                              # %for.end
	cmpl	%eax, %r15d
	jge	.LBB22_16
# BB#15:                                # %if.then.36
	movslq	%r15d, %rcx
	imulq	$68, %rcx, %rbp
	addq	7520(%r13), %rbp
	jmp	.LBB22_23
.LBB22_16:                              # %if.else
	movl	9692(%r13), %ecx
	cmpl	%ecx, %eax
	jge	.LBB22_18
# BB#17:                                # %entry.if.end.4_crit_edge.i.56
	movq	7520(%r13), %rbx
	movl	20(%rsp), %edx          # 4-byte Reload
	jmp	.LBB22_22
.LBB22_18:                              # %if.then.i.62
	movl	%r9d, %ebp
	movl	%esi, 16(%rsp)          # 4-byte Spill
	movq	9848(%r13), %rdi
	movq	%rdi, (%rsp)            # 8-byte Spill
	imull	$68, %ecx, %esi
	addl	$4080, %esi             # imm = 0xFF0
	movl	$.L.str.7, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB22_32
# BB#19:                                # %if.end.i.i.68
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	leaq	5480(%r13), %rbp
	movq	7520(%r13), %rsi
	movslq	9692(%r13), %rax
	imulq	$68, %rax, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movq	7520(%r13), %rsi
	cmpq	%rbp, %rsi
	je	.LBB22_21
# BB#20:                                # %if.then.6.i.i.70
	movl	$.L.str.7, %edx
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	*24(%rdi)
.LBB22_21:                              # %t1_hinter__realloc_array.exit.thread.i.73
	movq	%rbx, 7520(%r13)
	addl	$60, 9692(%r13)
	movl	9688(%r13), %eax
	movl	12(%rsp), %r9d          # 4-byte Reload
	movl	20(%rsp), %edx          # 4-byte Reload
	movl	16(%rsp), %esi          # 4-byte Reload
.LBB22_22:                              # %if.end.42
	movslq	%eax, %rcx
	imulq	$68, %rcx, %rcx
	leaq	(%rbx,%rcx), %rbp
	movl	%r14d, (%rbx,%rcx)
	movl	%r12d, 12(%rbx,%rcx)
	movl	%r12d, 4(%rbx,%rcx)
	movl	%esi, 16(%rbx,%rcx)
	movl	%esi, 8(%rbx,%rcx)
	movl	$2147483647, 40(%rbx,%rcx) # imm = 0x7FFFFFFF
	movl	$2147483647, 36(%rbx,%rcx) # imm = 0x7FFFFFFF
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 20(%rbx,%rcx)
	movzwl	%dx, %edx
	movl	%edx, 44(%rbx,%rcx)
	movl	$-1, 48(%rbx,%rcx)
	movl	%r9d, 52(%rbx,%rcx)
	movw	$0, 58(%rbx,%rcx)
	movw	$0, 56(%rbx,%rcx)
	movq	$0, 60(%rbx,%rcx)
.LBB22_23:                              # %if.end.48
	movl	9696(%r13), %ecx
	movl	9700(%r13), %edx
	cmpl	%edx, %ecx
	jge	.LBB22_25
# BB#24:                                # %entry.if.end.4_crit_edge.i
	movq	8176(%r13), %rbx
	jmp	.LBB22_29
.LBB22_25:                              # %if.then.i.52
	movq	%rbp, %r12
	movq	9848(%r13), %rbp
	leal	480(,%rdx,8), %esi
	movl	$.L.str.6, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB22_32
# BB#26:                                # %if.end.i.i
	leaq	7936(%r13), %r14
	movq	8176(%r13), %rsi
	movslq	9700(%r13), %rdx
	shlq	$3, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movq	8176(%r13), %rsi
	cmpq	%r14, %rsi
	je	.LBB22_28
# BB#27:                                # %if.then.6.i.i
	movl	$.L.str.6, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
.LBB22_28:                              # %t1_hinter__realloc_array.exit.thread.i
	movq	%rbx, 8176(%r13)
	addl	$60, 9700(%r13)
	movl	9688(%r13), %eax
	movl	9696(%r13), %ecx
	movq	%r12, %rbp
.LBB22_29:                              # %if.end.53
	movslq	%ecx, %rdx
	leaq	(%rbx,%rdx,8), %rsi
	movw	9680(%r13), %di
	movw	%di, (%rbx,%rdx,8)
	movw	$-1, 2(%rbx,%rdx,8)
	movl	48(%rbp), %edi
	movl	%edi, 4(%rbx,%rdx,8)
	subq	%rbx, %rsi
	shrq	$3, %rsi
	movl	%esi, 48(%rbp)
	cmpl	%eax, %r15d
	jl	.LBB22_31
# BB#30:                                # %if.then.61
	incl	%eax
	movl	%eax, 9688(%r13)
.LBB22_31:                              # %if.end.64
	incl	%ecx
	movl	%ecx, 9696(%r13)
	xorl	%eax, %eax
.LBB22_32:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	t1_hinter__stem, .Lfunc_end22-t1_hinter__stem
	.cfi_endproc

	.globl	t1_hinter__hstem
	.align	16, 0x90
	.type	t1_hinter__hstem,@function
t1_hinter__hstem:                       # @t1_hinter__hstem
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	movl	%esi, %ecx
	cmpl	$0, 148(%rdi)
	je	.LBB23_2
# BB#1:                                 # %return
	xorl	%eax, %eax
	retq
.LBB23_2:                               # %if.end
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %r9d
	movl	%eax, %r8d
	jmp	t1_hinter__stem         # TAILCALL
.Lfunc_end23:
	.size	t1_hinter__hstem, .Lfunc_end23-t1_hinter__hstem
	.cfi_endproc

	.globl	t1_hinter__overall_hstem
	.align	16, 0x90
	.type	t1_hinter__overall_hstem,@function
t1_hinter__overall_hstem:               # @t1_hinter__overall_hstem
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %r9d
	movl	%edx, %eax
	movl	%esi, %ecx
	cmpl	$0, 148(%rdi)
	je	.LBB24_2
# BB#1:                                 # %return
	xorl	%eax, %eax
	retq
.LBB24_2:                               # %if.end
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%eax, %r8d
	jmp	t1_hinter__stem         # TAILCALL
.Lfunc_end24:
	.size	t1_hinter__overall_hstem, .Lfunc_end24-t1_hinter__overall_hstem
	.cfi_endproc

	.globl	t1_hinter__vstem
	.align	16, 0x90
	.type	t1_hinter__vstem,@function
t1_hinter__vstem:                       # @t1_hinter__vstem
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	movl	%esi, %ecx
	cmpl	$0, 148(%rdi)
	je	.LBB25_2
# BB#1:                                 # %return
	xorl	%eax, %eax
	retq
.LBB25_2:                               # %if.end
	movl	$1, %esi
	xorl	%edx, %edx
	movl	$3, %r9d
	movl	%eax, %r8d
	jmp	t1_hinter__stem         # TAILCALL
.Lfunc_end25:
	.size	t1_hinter__vstem, .Lfunc_end25-t1_hinter__vstem
	.cfi_endproc

	.globl	t1_hinter__hstem3
	.align	16, 0x90
	.type	t1_hinter__hstem3,@function
t1_hinter__hstem3:                      # @t1_hinter__hstem3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp183:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp184:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp185:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp186:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp187:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp188:
	.cfi_def_cfa_offset 64
.Ltmp189:
	.cfi_offset %rbx, -56
.Ltmp190:
	.cfi_offset %r12, -48
.Ltmp191:
	.cfi_offset %r13, -40
.Ltmp192:
	.cfi_offset %r14, -32
.Ltmp193:
	.cfi_offset %r15, -24
.Ltmp194:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%r8d, %r12d
	movl	%ecx, %r13d
	movl	%edx, %ebp
	movl	%esi, %ecx
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$0, 148(%rbx)
	jne	.LBB26_3
# BB#1:                                 # %if.end
	movl	64(%rsp), %r14d
	movl	$0, %esi
	movl	$1, %edx
	movl	$3, %r9d
	movq	%rbx, %rdi
	movl	%ebp, %r8d
	callq	t1_hinter__stem
	testl	%eax, %eax
	js	.LBB26_3
# BB#2:                                 # %if.end.2
	movl	$0, %esi
	movl	$2, %edx
	movl	$3, %r9d
	movq	%rbx, %rdi
	movl	%r13d, %ecx
	movl	%r12d, %r8d
	callq	t1_hinter__stem
	testl	%eax, %eax
	js	.LBB26_3
# BB#4:                                 # %if.end.6
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$3, %r9d
	movq	%rbx, %rdi
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	t1_hinter__stem         # TAILCALL
.LBB26_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	t1_hinter__hstem3, .Lfunc_end26-t1_hinter__hstem3
	.cfi_endproc

	.globl	t1_hinter__vstem3
	.align	16, 0x90
	.type	t1_hinter__vstem3,@function
t1_hinter__vstem3:                      # @t1_hinter__vstem3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp196:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp197:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp198:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp199:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp200:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp201:
	.cfi_def_cfa_offset 64
.Ltmp202:
	.cfi_offset %rbx, -56
.Ltmp203:
	.cfi_offset %r12, -48
.Ltmp204:
	.cfi_offset %r13, -40
.Ltmp205:
	.cfi_offset %r14, -32
.Ltmp206:
	.cfi_offset %r15, -24
.Ltmp207:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%r8d, %r12d
	movl	%ecx, %r13d
	movl	%edx, %ebp
	movl	%esi, %ecx
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$0, 148(%rbx)
	jne	.LBB27_3
# BB#1:                                 # %if.end
	movl	64(%rsp), %r14d
	movl	$1, %esi
	movl	$1, %edx
	movl	$3, %r9d
	movq	%rbx, %rdi
	movl	%ebp, %r8d
	callq	t1_hinter__stem
	testl	%eax, %eax
	js	.LBB27_3
# BB#2:                                 # %if.end.2
	movl	$1, %esi
	movl	$2, %edx
	movl	$3, %r9d
	movq	%rbx, %rdi
	movl	%r13d, %ecx
	movl	%r12d, %r8d
	callq	t1_hinter__stem
	testl	%eax, %eax
	js	.LBB27_3
# BB#4:                                 # %if.end.6
	movl	$1, %esi
	movl	$3, %edx
	movl	$3, %r9d
	movq	%rbx, %rdi
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	t1_hinter__stem         # TAILCALL
.LBB27_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	t1_hinter__vstem3, .Lfunc_end27-t1_hinter__vstem3
	.cfi_endproc

	.globl	t1_hinter__is_x_fitting
	.align	16, 0x90
	.type	t1_hinter__is_x_fitting,@function
t1_hinter__is_x_fitting:                # @t1_hinter__is_x_fitting
	.cfi_startproc
# BB#0:                                 # %entry
	movl	156(%rdi), %eax
	retq
.Lfunc_end28:
	.size	t1_hinter__is_x_fitting, .Lfunc_end28-t1_hinter__is_x_fitting
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI29_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	t1_hinter__endglyph
	.align	16, 0x90
	.type	t1_hinter__endglyph,@function
t1_hinter__endglyph:                    # @t1_hinter__endglyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp209:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp210:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp211:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp212:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp213:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp214:
	.cfi_def_cfa_offset 336
.Ltmp215:
	.cfi_offset %rbx, -56
.Ltmp216:
	.cfi_offset %r12, -48
.Ltmp217:
	.cfi_offset %r13, -40
.Ltmp218:
	.cfi_offset %r14, -32
.Ltmp219:
	.cfi_offset %r15, -24
.Ltmp220:
	.cfi_offset %rbp, -16
	movl	100(%rdi), %esi
	movl	104(%rdi), %edx
	subl	108(%rdi), %esi
	subl	112(%rdi), %edx
	movq	%rdi, %rbx
	callq	t1_hinter__rmoveto
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB29_494
# BB#1:                                 # %if.end.14
	movq	%rbx, %r15
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movq	%r15, %rdi
	callq	t1_hinter__end_subglyph
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB29_2
# BB#3:                                 # %if.end.18
	movslq	72(%r15), %rax
	movd	%rax, %xmm0
	movslq	68(%r15), %rax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	pshufd	$237, %xmm0, %xmm0      # xmm0 = xmm0[1,3,2,3]
	movdqa	%xmm1, %xmm2
	psrlq	$31, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	paddq	%xmm2, %xmm1
	pxor	%xmm2, %xmm1
	movd	%xmm1, %eax
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movslq	%ecx, %r9
	movq	56(%r15), %rdx
	cmpq	%rdx, %r9
	jae	.LBB29_5
# BB#4:                                 # %entry.while.end_crit_edge.i
	leaq	16(%r15), %r8
	movl	16(%r15), %ecx
	jmp	.LBB29_8
.LBB29_2:
	movq	%r15, %rbx
	jmp	.LBB29_494
.LBB29_5:                               # %while.body.lr.ph.i
	movl	%esi, %r12d
	leaq	16(%r15), %r8
	movsd	9768(%r15), %xmm3       # xmm3 = mem[0],zero
	movsd	9776(%r15), %xmm2       # xmm2 = mem[0],zero
	movdqu	(%r15), %xmm0
	movl	16(%r15), %ecx
	movl	20(%r15), %eax
	movdqu	24(%r15), %xmm1
	movl	40(%r15), %ebx
	movq	%r15, %r10
	movl	44(%r10), %ebp
	movl	48(%r10), %edi
	movl	64(%r10), %esi
	movdqa	.LCPI29_0(%rip), %xmm4  # xmm4 = [1,1,1,1]
	.align	16, 0x90
.LBB29_6:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%rdx, %rdx
	paddd	%xmm4, %xmm0
	psrad	$1, %xmm0
	sarl	%ecx
	decl	%eax
	paddd	%xmm4, %xmm1
	psrad	$1, %xmm1
	sarl	%ebx
	decl	%ebp
	decl	%edi
	sarl	%esi
	cmpq	%rdx, %r9
	jae	.LBB29_6
# BB#7:                                 # %while.end.i.loopexit
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ecx, %xmm4
	cvtsi2sdl	%ebx, %xmm5
	movapd	%xmm5, %xmm6
	divsd	%xmm3, %xmm6
	mulsd	%xmm4, %xmm3
	movsd	.LCPI29_1(%rip), %xmm7  # xmm7 = mem[0],zero
	addsd	%xmm7, %xmm3
	cvttsd2si	%xmm3, %r9d
	mulsd	%xmm2, %xmm4
	addsd	%xmm7, %xmm4
	cvttsd2si	%xmm4, %r10d
	addsd	%xmm7, %xmm6
	cvttsd2si	%xmm6, %r11d
	divsd	%xmm2, %xmm5
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %r14d
	movq	%rdx, 56(%r15)
	movdqu	%xmm0, (%r15)
	movl	%ecx, 16(%r15)
	movl	%eax, 20(%r15)
	movdqu	%xmm1, 24(%r15)
	movl	%ebx, 40(%r15)
	movl	%ebp, 44(%r15)
	movl	%edi, 48(%r15)
	movl	%esi, 64(%r15)
	movl	%r9d, 9796(%r15)
	movl	%r10d, 9792(%r15)
	movl	%r11d, 9804(%r15)
	movl	%r14d, 9800(%r15)
	movl	%r12d, %esi
.LBB29_8:                               # %while.end.i
	testl	%ecx, %ecx
	jne	.LBB29_10
# BB#9:                                 # %if.then.i.35
	movl	$1, (%r8)
.LBB29_10:                              # %t1_hinter__adjust_matrix_precision.exit
	movslq	9680(%r15), %r10
	leal	-1(%r10), %r9d
	cmpl	$2, %r9d
	jl	.LBB29_28
# BB#11:                                # %if.then.i.43
	leal	-2(%r10), %ecx
	jmp	.LBB29_12
.LBB29_28:                              # %if.else.i
	testl	%r10d, %r10d
	movl	%r9d, %ecx
	jle	.LBB29_29
.LBB29_12:                              # %if.end.3.i
	movq	%r15, %rax
	movq	5472(%rax), %r11
	movl	4(%r11), %ebp
	movl	%ebp, 9832(%rax)
	movl	%ebp, 9828(%rax)
	movq	%rax, %rdx
	cmpl	$2, %ecx
	jl	.LBB29_13
# BB#51:                                # %for.body.i.preheader
	movl	$1, %r8d
	testb	$1, %cl
	jne	.LBB29_52
# BB#53:                                # %for.body.i.prol
	movl	52(%r11), %edi
	cmpl	%edi, %ebp
	movl	%ebp, %ebx
	jle	.LBB29_55
# BB#54:                                # %if.then.10.i.prol
	movl	%edi, 9828(%rdx)
	movl	%edi, %ebx
.LBB29_55:                              # %if.end.16.i.prol
	movl	%esi, %r12d
	movl	$2, %r8d
	cmpl	%edi, %ebp
	jge	.LBB29_56
# BB#57:                                # %if.then.23.i.47.prol
	movl	%edi, 9832(%rdx)
	movl	$2, %r8d
	jmp	.LBB29_58
.LBB29_13:
	movl	%esi, %r12d
	movl	%ebp, %ebx
	movl	%ebp, %edi
	jmp	.LBB29_14
.LBB29_52:
	movl	%esi, %r12d
	movl	%ebp, %edi
	movl	%ebp, %ebx
	jmp	.LBB29_58
.LBB29_29:                              # %if.end.i.54.thread
	leaq	9712(%r15), %r8
	jmp	.LBB29_30
.LBB29_56:
	movl	%ebp, %edi
.LBB29_58:                              # %for.body.i.preheader.split
	cmpl	$2, %ecx
	je	.LBB29_14
# BB#59:                                # %for.body.i.preheader.split.split
	subl	%r8d, %ecx
	leaq	(%r8,%r8,2), %rax
	shlq	$4, %rax
	leaq	52(%rax,%r11), %rbp
	.align	16, 0x90
.LBB29_60:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	%eax, %ebx
	jle	.LBB29_62
# BB#61:                                # %if.then.10.i
                                        #   in Loop: Header=BB29_60 Depth=1
	movl	%eax, 9828(%rdx)
	movl	%eax, %ebx
.LBB29_62:                              # %if.end.16.i
                                        #   in Loop: Header=BB29_60 Depth=1
	cmpl	%eax, %edi
	jge	.LBB29_64
# BB#63:                                # %if.then.23.i.47
                                        #   in Loop: Header=BB29_60 Depth=1
	movl	%eax, 9832(%rdx)
	movl	%eax, %edi
.LBB29_64:                              # %for.inc.i
                                        #   in Loop: Header=BB29_60 Depth=1
	movl	(%rbp), %eax
	cmpl	%eax, %ebx
	jle	.LBB29_66
# BB#65:                                # %if.then.10.i.1
                                        #   in Loop: Header=BB29_60 Depth=1
	movl	%eax, 9828(%rdx)
	movl	%eax, %ebx
.LBB29_66:                              # %if.end.16.i.1
                                        #   in Loop: Header=BB29_60 Depth=1
	cmpl	%eax, %edi
	jge	.LBB29_68
# BB#67:                                # %if.then.23.i.47.1
                                        #   in Loop: Header=BB29_60 Depth=1
	movl	%eax, 9832(%rdx)
	movl	%eax, %edi
.LBB29_68:                              # %for.inc.i.1
                                        #   in Loop: Header=BB29_60 Depth=1
	addq	$96, %rbp
	addl	$-2, %ecx
	jne	.LBB29_60
.LBB29_14:                              # %t1_hinter__compute_y_span.exit
	addl	%edi, %ebx
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	movq	%rdx, %r15
	movl	%eax, 9836(%r15)
	movslq	9712(%r15), %r11
	cmpl	$2, %r9d
	jl	.LBB29_17
# BB#15:                                # %land.lhs.true.i
	leaq	(%r10,%r10,2), %rax
	shlq	$4, %rax
	movq	5472(%r15), %rcx
	cmpl	$2, -72(%rax,%rcx)
	jne	.LBB29_17
# BB#16:
	leal	-3(%r10), %r9d
.LBB29_17:                              # %if.end.i.54
	leaq	9712(%r15), %r8
	cmpl	$2, %r10d
	jl	.LBB29_98
# BB#18:                                # %if.end.8.i
	cmpl	$0, 156(%r15)
	je	.LBB29_20
# BB#19:                                # %lor.lhs.false.i
	cmpl	$0, 160(%r15)
	jne	.LBB29_74
.LBB29_20:                              # %for.cond.preheader.i
	movl	9688(%r15), %ebx
	movq	%r15, %rsi
	xorl	%edx, %edx
	testl	%ebx, %ebx
	jle	.LBB29_73
# BB#21:                                # %for.body.lr.ph.i
	xorl	%edi, %edi
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	jmp	.LBB29_22
	.align	16, 0x90
.LBB29_70:                              # %if.then.28.i
                                        #   in Loop: Header=BB29_22 Depth=1
	cmpq	%r11, %rbp
	jge	.LBB29_72
# BB#71:                                # %if.then.30.i
                                        #   in Loop: Header=BB29_22 Depth=1
	decl	(%r8)
	jmp	.LBB29_72
	.align	16, 0x90
.LBB29_22:                              # %for.body.i.56
                                        # =>This Inner Loop Header: Depth=1
	movq	7520(%rsi), %rcx
	movl	(%rcx,%rdi), %eax
	testl	%eax, %eax
	jne	.LBB29_23
# BB#69:                                # %land.lhs.true.25.i
                                        #   in Loop: Header=BB29_22 Depth=1
	cmpl	$0, 160(%rsi)
	jne	.LBB29_25
	jmp	.LBB29_70
	.align	16, 0x90
.LBB29_23:                              # %for.body.i.56
                                        #   in Loop: Header=BB29_22 Depth=1
	cmpl	$1, %eax
	jne	.LBB29_25
# BB#24:                                # %land.lhs.true.16.i
                                        #   in Loop: Header=BB29_22 Depth=1
	cmpl	$0, 156(%rsi)
	je	.LBB29_70
.LBB29_25:                              # %if.else.i.58
                                        #   in Loop: Header=BB29_22 Depth=1
	cmpl	%edx, %ebp
	je	.LBB29_27
# BB#26:                                # %if.then.34.i
                                        #   in Loop: Header=BB29_22 Depth=1
	movslq	%edx, %rax
	imulq	$68, %rax, %rax
	movl	64(%rcx,%rdi), %ebx
	movl	%ebx, 64(%rcx,%rax)
	movdqu	(%rcx,%rdi), %xmm0
	movdqu	16(%rcx,%rdi), %xmm1
	movupd	32(%rcx,%rdi), %xmm2
	movupd	48(%rcx,%rdi), %xmm3
	movupd	%xmm3, 48(%rcx,%rax)
	movupd	%xmm2, 32(%rcx,%rax)
	movdqu	%xmm1, 16(%rcx,%rax)
	movdqu	%xmm0, (%rcx,%rax)
	movl	9688(%rsi), %ebx
.LBB29_27:                              # %if.end.41.i
                                        #   in Loop: Header=BB29_22 Depth=1
	incl	%edx
.LBB29_72:                              # %for.inc.i.60
                                        #   in Loop: Header=BB29_22 Depth=1
	incq	%rbp
	movslq	%ebx, %rax
	addq	$68, %rdi
	cmpq	%rax, %rbp
	jl	.LBB29_22
.LBB29_73:                              # %for.end.i.61
	movq	%rsi, %r15
	movl	%edx, 9688(%r15)
.LBB29_74:                              # %for.cond.46.preheader.i
	movslq	9696(%r15), %r10
	testq	%r10, %r10
	jle	.LBB29_79
# BB#75:                                # %for.body.48.lr.ph.i
	movq	8176(%r15), %rsi
	movq	5472(%r15), %rdi
	addq	$2, %rsi
	movq	%r10, %rdx
	.align	16, 0x90
.LBB29_76:                              # %for.body.48.i
                                        # =>This Inner Loop Header: Depth=1
	movswq	-2(%rsi), %rbx
	leaq	(%rbx,%rbx,2), %rax
	shlq	$4, %rax
	movl	24(%rdi,%rax), %eax
	testl	%eax, %eax
	jne	.LBB29_77
# BB#99:                                # %if.then.69.i
                                        #   in Loop: Header=BB29_76 Depth=1
	leal	-1(%rbx), %ebx
	movw	%bx, -2(%rsi)
	jmp	.LBB29_100
	.align	16, 0x90
.LBB29_77:                              # %for.body.48.i
                                        #   in Loop: Header=BB29_76 Depth=1
	cmpl	$2, %eax
	jne	.LBB29_100
# BB#78:                                # %if.then.58.i
                                        #   in Loop: Header=BB29_76 Depth=1
	leal	1(%rbx), %eax
	movw	%ax, -2(%rsi)
	jmp	.LBB29_102
	.align	16, 0x90
.LBB29_100:                             # %if.end.73.i
                                        #   in Loop: Header=BB29_76 Depth=1
	movslq	%ebx, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	cmpl	$0, 24(%rdi,%rax)
	jne	.LBB29_102
# BB#101:                               # %if.then.80.i
                                        #   in Loop: Header=BB29_76 Depth=1
	addl	$65535, %ebx            # imm = 0xFFFF
	movw	%bx, -2(%rsi)
.LBB29_102:                             # %if.end.85.i
                                        #   in Loop: Header=BB29_76 Depth=1
	movswl	(%rsi), %eax
	cmpl	$-1, %eax
	jne	.LBB29_104
# BB#103:                               # %if.then.89.i
                                        #   in Loop: Header=BB29_76 Depth=1
	movw	%r9w, (%rsi)
	movl	%r9d, %eax
.LBB29_104:                             # %if.end.92.i
                                        #   in Loop: Header=BB29_76 Depth=1
	movslq	%eax, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	cmpl	$0, 24(%rdi,%rcx)
	jne	.LBB29_107
# BB#105:                               # %if.end.103.i
                                        #   in Loop: Header=BB29_76 Depth=1
	leal	1(%rax), %ecx
	movw	%cx, (%rsi)
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	cmpl	$0, 24(%rdi,%rcx)
	jne	.LBB29_107
# BB#106:                               # %if.then.110.i
                                        #   in Loop: Header=BB29_76 Depth=1
	addl	$2, %eax
	movw	%ax, (%rsi)
	.align	16, 0x90
.LBB29_107:                             # %if.end.114.i
                                        #   in Loop: Header=BB29_76 Depth=1
	addq	$8, %rsi
	decq	%rdx
	jne	.LBB29_76
.LBB29_79:                              # %for.cond.118.preheader.i
	movslq	9664(%r15), %rdx
	testq	%rdx, %rdx
	js	.LBB29_90
# BB#80:                                # %for.body.121.lr.ph.i
	movq	7696(%r15), %rdi
	movq	5472(%r15), %rsi
	xorl	%eax, %eax
	testb	$1, %dl
	jne	.LBB29_83
# BB#81:                                # %for.body.121.i.prol
	movslq	(%rdi), %rax
	leaq	(%rax,%rax,2), %rcx
	shlq	$4, %rcx
	movl	$1, %eax
	cmpl	$3, 24(%rsi,%rcx)
	jne	.LBB29_83
# BB#82:                                # %if.then.130.i.prol
	leaq	24(%rsi,%rcx), %rax
	movl	$1, (%rax)
	movl	$1, %eax
.LBB29_83:                              # %for.body.121.lr.ph.i.split
	testl	%edx, %edx
	je	.LBB29_90
# BB#84:                                # %for.body.121.lr.ph.i.split.split
	incq	%rdx
	subq	%rax, %rdx
	leaq	4(%rdi,%rax,4), %rdi
	.align	16, 0x90
.LBB29_85:                              # %for.body.121.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rdi), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	cmpl	$3, 24(%rsi,%rax)
	jne	.LBB29_87
# BB#86:                                # %if.then.130.i
                                        #   in Loop: Header=BB29_85 Depth=1
	leaq	24(%rsi,%rax), %rax
	movl	$1, (%rax)
.LBB29_87:                              # %for.inc.139.i
                                        #   in Loop: Header=BB29_85 Depth=1
	movslq	(%rdi), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	cmpl	$3, 24(%rsi,%rax)
	jne	.LBB29_89
# BB#88:                                # %if.then.130.i.1
                                        #   in Loop: Header=BB29_85 Depth=1
	leaq	24(%rsi,%rax), %rax
	movl	$1, (%rax)
.LBB29_89:                              # %for.inc.139.i.1
                                        #   in Loop: Header=BB29_85 Depth=1
	addq	$8, %rdi
	addq	$-2, %rdx
	jne	.LBB29_85
.LBB29_90:                              # %for.cond.142.preheader.i
	testl	%r10d, %r10d
	jle	.LBB29_98
# BB#91:                                # %for.body.146.lr.ph.i
	movq	8176(%r15), %rdx
	movq	5472(%r15), %rsi
	movq	7696(%r15), %r11
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB29_92:                              # %for.body.146.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_95 Depth 2
	movswq	(%rdx,%rbx,8), %rdi
	cmpl	%r9d, %edi
	jge	.LBB29_97
# BB#93:                                # %for.body.146.i
                                        #   in Loop: Header=BB29_92 Depth=1
	leaq	(%rdi,%rdi,2), %rax
	shlq	$4, %rax
	movslq	28(%rsi,%rax), %rax
	movl	(%r11,%rax,4), %ecx
	cmpl	%ecx, %edi
	jle	.LBB29_97
# BB#94:                                # %if.then.165.i
                                        #   in Loop: Header=BB29_92 Depth=1
	movq	%r15, %r14
	movl	4(%r11,%rax,4), %eax
	addl	$-2, %eax
	leal	-1(%rdi), %ebp
	cmpl	%edi, %ecx
	cmovel	%eax, %ebp
	movslq	%ebp, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$4, %rdi
	cmpl	$0, 24(%rsi,%rdi)
	jne	.LBB29_96
	.align	16, 0x90
.LBB29_95:                              # %while.body.i.i
                                        #   Parent Loop BB29_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, %ebp
	leal	-1(%rbp), %edi
	cmovel	%eax, %edi
	movslq	%edi, %rbp
	leaq	(%rbp,%rbp,2), %rbp
	shlq	$4, %rbp
	cmpl	$0, 24(%rsi,%rbp)
	movl	%edi, %ebp
	je	.LBB29_95
.LBB29_96:                              # %t1_hinter__segment_beg.exit.i
                                        #   in Loop: Header=BB29_92 Depth=1
	movw	%bp, (%rdx,%rbx,8)
	movq	%r14, %r15
.LBB29_97:                              # %if.end.171.i
                                        #   in Loop: Header=BB29_92 Depth=1
	incq	%rbx
	cmpq	%r10, %rbx
	jne	.LBB29_92
.LBB29_98:
	movl	%r12d, %esi
.LBB29_30:                              # %t1_hinter__simplify_representation.exit
	cmpl	$0, 148(%r15)
	jne	.LBB29_426
# BB#31:                                # %land.lhs.true
	cmpl	$0, 156(%r15)
	jne	.LBB29_33
# BB#32:                                # %lor.lhs.false
	cmpl	$0, 160(%r15)
	je	.LBB29_426
.LBB29_33:                              # %if.then.23
	cmpl	$1, 9720(%r15)
	jne	.LBB29_108
# BB#34:                                # %if.then.25
	cmpl	$0, 9688(%r15)
	je	.LBB29_44
# BB#35:                                # %if.end.i.73
	movl	$65533, %eax            # imm = 0xFFFD
	addl	9680(%r15), %eax
	movl	(%r8), %ecx
	cmpl	$-1, %ecx
	jne	.LBB29_37
# BB#36:                                # %if.then.3.i
	movl	9696(%r15), %ecx
.LBB29_37:                              # %if.end.4.i
	testl	%ecx, %ecx
	jle	.LBB29_44
# BB#38:                                # %for.body.lr.ph.i.77
	movq	8176(%r15), %rdx
	movq	%r15, %rbx
	leal	-1(%rcx), %esi
	xorl	%edi, %edi
	testb	$3, %cl
	je	.LBB29_41
# BB#39:                                # %for.body.i.84.prol.preheader
	movl	%ecx, %ebp
	andl	$3, %ebp
	xorl	%edi, %edi
	.align	16, 0x90
.LBB29_40:                              # %for.body.i.84.prol
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rdx,%rdi,8)
	movw	%ax, 2(%rdx,%rdi,8)
	incq	%rdi
	cmpl	%edi, %ebp
	jne	.LBB29_40
.LBB29_41:                              # %for.body.lr.ph.i.77.split
	cmpl	$3, %esi
	movq	%rbx, %r15
	jb	.LBB29_44
# BB#42:                                # %for.body.lr.ph.i.77.split.split
	subl	%edi, %ecx
	leaq	26(%rdx,%rdi,8), %rdx
	.align	16, 0x90
.LBB29_43:                              # %for.body.i.84
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, -26(%rdx)
	movw	%ax, -24(%rdx)
	movw	$0, -18(%rdx)
	movw	%ax, -16(%rdx)
	movw	$0, -10(%rdx)
	movw	%ax, -8(%rdx)
	movw	$0, -2(%rdx)
	movw	%ax, (%rdx)
	addq	$32, %rdx
	addl	$-4, %ecx
	jne	.LBB29_43
	jmp	.LBB29_44
.LBB29_108:                             # %if.else
	movslq	9696(%r15), %rax
	testq	%rax, %rax
	jle	.LBB29_44
# BB#109:                               # %for.body.lr.ph.i.88
	movq	8176(%r15), %rcx
	xorl	%edx, %edx
	testb	$1, %al
	je	.LBB29_112
# BB#110:                               # %for.body.i.92.prol
	movl	$1, %edx
	movzwl	2(%rcx), %esi
	cmpl	$65535, %esi            # imm = 0xFFFF
	jne	.LBB29_112
# BB#111:                               # %if.then.i.94.prol
	movl	$65534, %edx            # imm = 0xFFFE
	addl	9680(%r15), %edx
	movw	%dx, 2(%rcx)
	movl	$1, %edx
.LBB29_112:                             # %for.body.lr.ph.i.88.split
	cmpl	$1, %eax
	je	.LBB29_44
# BB#113:                               # %for.body.lr.ph.i.88.split.split
	subq	%rdx, %rax
	leaq	10(%rcx,%rdx,8), %rcx
	movl	$65534, %edx            # imm = 0xFFFE
	.align	16, 0x90
.LBB29_114:                             # %for.body.i.92
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-8(%rcx), %esi
	cmpl	$65535, %esi            # imm = 0xFFFF
	jne	.LBB29_116
# BB#115:                               # %if.then.i.94
                                        #   in Loop: Header=BB29_114 Depth=1
	movl	9680(%r15), %esi
	addl	%edx, %esi
	movw	%si, -8(%rcx)
.LBB29_116:                             # %for.inc.i.97
                                        #   in Loop: Header=BB29_114 Depth=1
	movzwl	(%rcx), %esi
	cmpl	$65535, %esi            # imm = 0xFFFF
	jne	.LBB29_118
# BB#117:                               # %if.then.i.94.1
                                        #   in Loop: Header=BB29_114 Depth=1
	movl	9680(%r15), %esi
	addl	%edx, %esi
	movw	%si, (%rcx)
.LBB29_118:                             # %for.inc.i.97.1
                                        #   in Loop: Header=BB29_114 Depth=1
	addq	$16, %rcx
	addq	$-2, %rax
	jne	.LBB29_114
.LBB29_44:                              # %if.end.26
	movl	9688(%r15), %eax
	testl	%eax, %eax
	jle	.LBB29_135
# BB#45:                                # %for.body.lr.ph.i.103
	xorl	%esi, %esi
	leaq	276(%rsp), %r12
	.align	16, 0x90
.LBB29_46:                              # %for.body.i.106
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_49 Depth 2
                                        #       Child Loop BB29_122 Depth 3
                                        #         Child Loop BB29_128 Depth 4
	movq	7520(%r15), %rcx
	imulq	$68, %rsi, %r14
	cmpl	$1, (%rcx,%r14)
	ja	.LBB29_134
# BB#47:                                # %if.then.i.107
                                        #   in Loop: Header=BB29_46 Depth=1
	movl	48(%rcx,%r14), %edx
	cmpl	$-1, %edx
	je	.LBB29_134
# BB#48:                                # %for.body.12.lr.ph.i
                                        #   in Loop: Header=BB29_46 Depth=1
	movq	%rsi, 232(%rsp)         # 8-byte Spill
	movq	8176(%r15), %rcx
	movq	5472(%r15), %rax
	.align	16, 0x90
.LBB29_49:                              # %for.body.12.i
                                        #   Parent Loop BB29_46 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_122 Depth 3
                                        #         Child Loop BB29_128 Depth 4
	movslq	%edx, %rsi
	movswq	(%rcx,%rsi,8), %rbx
	movswl	2(%rcx,%rsi,8), %r13d
	leaq	(%rbx,%rbx,2), %rdx
	shlq	$4, %rdx
	cmpl	$2, 24(%rax,%rdx)
	jne	.LBB29_50
# BB#119:                               # %if.then.24.i
                                        #   in Loop: Header=BB29_49 Depth=2
	movq	%rsi, 240(%rsp)         # 8-byte Spill
	movswl	%bx, %edx
	cmpl	%r13d, %edx
	jge	.LBB29_132
# BB#120:                               #   in Loop: Header=BB29_49 Depth=2
	leal	1(%rbx), %ebx
	jmp	.LBB29_121
	.align	16, 0x90
.LBB29_50:                              #   in Loop: Header=BB29_49 Depth=2
	movq	%rsi, 240(%rsp)         # 8-byte Spill
.LBB29_121:                             # %for.cond.29.preheader.i
                                        #   in Loop: Header=BB29_49 Depth=2
	cmpl	%r13d, %ebx
	jg	.LBB29_132
	.align	16, 0x90
.LBB29_122:                             # %for.body.32.i
                                        #   Parent Loop BB29_46 Depth=1
                                        #     Parent Loop BB29_49 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB29_128 Depth 4
	movq	7520(%r15), %rsi
	addq	%r14, %rsi
	movq	%r15, %rdi
	movl	%ebx, %edx
	movq	%r12, %rcx
	callq	t1_hinter__is_stem_hint_applicable
	cmpl	$2, %eax
	jne	.LBB29_123
# BB#125:                               # %if.then.45.i
                                        #   in Loop: Header=BB29_122 Depth=3
	movq	7520(%r15), %rax
	movl	$1, 24(%rax,%r14)
	jmp	.LBB29_126
	.align	16, 0x90
.LBB29_123:                             # %for.body.32.i
                                        #   in Loop: Header=BB29_122 Depth=3
	cmpl	$1, %eax
	jne	.LBB29_126
# BB#124:                               # %if.then.39.i
                                        #   in Loop: Header=BB29_122 Depth=3
	movq	7520(%r15), %rax
	movl	$1, 20(%rax,%r14)
.LBB29_126:                             # %if.end.50.i
                                        #   in Loop: Header=BB29_122 Depth=3
	movslq	%ebx, %rcx
	movq	5472(%r15), %rax
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movslq	28(%rax,%rcx), %rdx
	movq	7696(%r15), %rcx
	movq	%r15, %r8
	movl	(%rcx,%rdx,4), %esi
	movl	4(%rcx,%rdx,4), %edi
	addl	$-2, %edi
	leal	1(%rbx), %edx
	cmpl	%ebx, %edi
	cmovel	%esi, %edx
	jmp	.LBB29_128
	.align	16, 0x90
.LBB29_127:                             # %while.body.i.i.130
                                        #   in Loop: Header=BB29_128 Depth=4
	cmpl	%edi, %edx
	leal	1(%rdx), %edx
	cmovel	%esi, %edx
.LBB29_128:                             # %while.body.i.i.130
                                        #   Parent Loop BB29_46 Depth=1
                                        #     Parent Loop BB29_49 Depth=2
                                        #       Parent Loop BB29_122 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%edx, %rbp
	leaq	(%rbp,%rbp,2), %rbp
	shlq	$4, %rbp
	cmpl	$0, 24(%rax,%rbp)
	je	.LBB29_127
# BB#129:                               # %t1_hinter__segment_end.exit.i
                                        #   in Loop: Header=BB29_122 Depth=3
	cmpl	%ebx, %edx
	jg	.LBB29_130
# BB#515:                               # %if.then.54.i
                                        #   in Loop: Header=BB29_122 Depth=3
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	movslq	28(%rax,%rdx), %rdx
	movl	4(%rcx,%rdx,4), %edx
.LBB29_130:                             #   in Loop: Header=BB29_122 Depth=3
	movq	%r8, %r15
	cmpl	%r13d, %edx
	movl	%edx, %ebx
	jle	.LBB29_122
# BB#131:                               # %for.cond.29.cleanup.loopexit_crit_edge.i
                                        #   in Loop: Header=BB29_49 Depth=2
	movq	8176(%r15), %rcx
.LBB29_132:                             # %cleanup.i
                                        #   in Loop: Header=BB29_49 Depth=2
	movq	240(%rsp), %rdx         # 8-byte Reload
	movl	4(%rcx,%rdx,8), %edx
	cmpl	$-1, %edx
	jne	.LBB29_49
# BB#133:                               # %for.cond.10.for.inc.68.loopexit_crit_edge.i
                                        #   in Loop: Header=BB29_46 Depth=1
	movl	9688(%r15), %eax
	movq	232(%rsp), %rsi         # 8-byte Reload
.LBB29_134:                             # %for.inc.68.i
                                        #   in Loop: Header=BB29_46 Depth=1
	incq	%rsi
	movslq	%eax, %rcx
	cmpq	%rcx, %rsi
	jl	.LBB29_46
.LBB29_135:                             # %t1_hinter__mark_existing_stems.exit
	cmpl	$2, 9632(%r15)
	jl	.LBB29_137
# BB#136:                               # %if.then.i.137
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	t1_hinter_compute_stem_snap_range_hv
.LBB29_137:                             # %if.end.i.139
	cmpl	$2, 9636(%r15)
	jl	.LBB29_139
# BB#138:                               # %if.then.4.i
	movl	$1, %esi
	movq	%r15, %rdi
	callq	t1_hinter_compute_stem_snap_range_hv
.LBB29_139:                             # %t1_hinter_compute_stem_snap_range.exit
	movl	9688(%r15), %r10d
	xorl	%r11d, %r11d
	testl	%r10d, %r10d
	jle	.LBB29_290
# BB#140:                               # %for.body.lr.ph.i.146
	leaq	9796(%r15), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	9792(%r15), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	9820(%r15), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	9816(%r15), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	4(%r15), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	12(%r15), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	8(%r15), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB29_141:                             # %for.body.i.150
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_144 Depth 2
                                        #       Child Loop BB29_149 Depth 3
                                        #         Child Loop BB29_180 Depth 4
                                        #         Child Loop BB29_197 Depth 4
                                        #         Child Loop BB29_256 Depth 4
                                        #         Child Loop BB29_259 Depth 4
                                        #           Child Loop BB29_274 Depth 5
                                        #           Child Loop BB29_278 Depth 5
                                        #         Child Loop BB29_285 Depth 4
	movq	7520(%r15), %rax
	imulq	$68, %rcx, %r14
	movq	%r14, 200(%rsp)         # 8-byte Spill
	movl	$0, 64(%rax,%r14)
	movl	$0, 60(%rax,%r14)
	movl	(%rax,%r14), %edx
	cmpl	$1, %edx
	ja	.LBB29_289
# BB#142:                               # %if.then.i.152
                                        #   in Loop: Header=BB29_141 Depth=1
	movl	48(%rax,%r14), %eax
	cmpl	$-1, %eax
	je	.LBB29_289
# BB#143:                               # %for.body.18.lr.ph.i
                                        #   in Loop: Header=BB29_141 Depth=1
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	8176(%r15), %rcx
	movq	5472(%r15), %rdi
	jmp	.LBB29_144
	.align	16, 0x90
.LBB29_153:                             # %cleanup.135.for.body.18_crit_edge.i
                                        #   in Loop: Header=BB29_144 Depth=2
	movq	7520(%r15), %rdx
	movl	(%rdx,%r14), %edx
.LBB29_144:                             # %for.body.18.i
                                        #   Parent Loop BB29_141 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_149 Depth 3
                                        #         Child Loop BB29_180 Depth 4
                                        #         Child Loop BB29_197 Depth 4
                                        #         Child Loop BB29_256 Depth 4
                                        #         Child Loop BB29_259 Depth 4
                                        #           Child Loop BB29_274 Depth 5
                                        #           Child Loop BB29_278 Depth 5
                                        #         Child Loop BB29_285 Depth 4
	movl	%edx, 232(%rsp)         # 4-byte Spill
	cltq
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movswq	(%rcx,%rax,8), %rbx
	movswl	2(%rcx,%rax,8), %r12d
	movl	%r12d, 112(%rsp)        # 4-byte Spill
	movl	$2147483647, 252(%rsp)  # imm = 0x7FFFFFFF
	leaq	(%rbx,%rbx,2), %rax
	shlq	$4, %rax
	cmpl	$2, 24(%rdi,%rax)
	jne	.LBB29_147
# BB#145:                               # %if.then.36.i
                                        #   in Loop: Header=BB29_144 Depth=2
	movswl	%bx, %eax
	cmpl	%r12d, %eax
	jge	.LBB29_152
# BB#146:                               #   in Loop: Header=BB29_144 Depth=2
	leal	1(%rbx), %ebx
.LBB29_147:                             # %for.cond.41.preheader.i
                                        #   in Loop: Header=BB29_144 Depth=2
	cmpl	%r12d, %ebx
	jg	.LBB29_152
# BB#148:                               # %for.body.44.lr.ph.i
                                        #   in Loop: Header=BB29_144 Depth=2
	testl	%edx, %edx
	sete	%al
	movzbl	%al, %eax
	orq	$-2, %rax
	incq	%rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	jmp	.LBB29_149
.LBB29_208:                             # %if.then.346.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	%r14, %r15
	cmpl	$0, 9736(%r15)
	leaq	(%rcx,%rcx,4), %rcx
	movl	4(%rdi,%rcx,4), %esi
	jne	.LBB29_209
# BB#210:                               # %if.else.i.195.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%esi, %ecx
	subl	%r9d, %ecx
	movl	%ecx, %edi
	negl	%edi
	testl	%eax, %eax
	cmovnel	%ecx, %edi
	movl	9824(%r15), %r8d
	cmpl	$0, 208(%rsp)           # 4-byte Folded Reload
	setne	%cl
	cmpl	%r8d, %edi
	jge	.LBB29_212
# BB#211:                               # %if.else.i.195.i
                                        #   in Loop: Header=BB29_149 Depth=3
	testb	%cl, %cl
	je	.LBB29_212
.LBB29_209:                             # %if.then.348.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%esi, 256(%rsp)
	movl	%esi, %ecx
	movq	200(%rsp), %r14         # 8-byte Reload
	movl	232(%rsp), %r12d        # 4-byte Reload
	movl	216(%rsp), %edx         # 4-byte Reload
	movl	184(%rsp), %ebp         # 4-byte Reload
.LBB29_215:                             # %do.end.398.thread.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	addl	$3, %eax
	movl	%eax, %r10d
	jmp	.LBB29_216
.LBB29_212:                             # %if.else.364.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%r8d, %edi
	movl	184(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %ecx
	movq	200(%rsp), %r14         # 8-byte Reload
	movl	232(%rsp), %r12d        # 4-byte Reload
	movl	216(%rsp), %edx         # 4-byte Reload
	jle	.LBB29_215
# BB#213:                               # %if.then.368.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	addl	%r8d, %r8d
	cmpl	%r8d, %edi
	movl	%ebp, %ecx
	jge	.LBB29_215
# BB#214:                               # %if.then.372.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%r8d, %ecx
	negl	%ecx
	testl	%eax, %eax
	cmovel	%r8d, %ecx
	addl	%esi, %ecx
	movl	%ecx, 256(%rsp)
	jmp	.LBB29_215
	.align	16, 0x90
.LBB29_149:                             # %for.body.44.i
                                        #   Parent Loop BB29_141 Depth=1
                                        #     Parent Loop BB29_144 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB29_180 Depth 4
                                        #         Child Loop BB29_197 Depth 4
                                        #         Child Loop BB29_256 Depth 4
                                        #         Child Loop BB29_259 Depth 4
                                        #           Child Loop BB29_274 Depth 5
                                        #           Child Loop BB29_278 Depth 5
                                        #         Child Loop BB29_285 Depth 4
	movslq	%ebx, %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$4, %rbp
	cmpl	$2, 24(%rdi,%rbp)
	jne	.LBB29_154
# BB#150:                               # %if.then.51.i
                                        #   in Loop: Header=BB29_149 Depth=3
	incl	%ebx
	movl	%ebx, %eax
	jmp	.LBB29_151
	.align	16, 0x90
.LBB29_154:                             # %if.end.53.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	7520(%r15), %rsi
	addq	%r14, %rsi
	movq	%r15, %rdi
	movl	%ebx, %edx
	leaq	252(%rsp), %rcx
	callq	t1_hinter__is_stem_hint_applicable
	movq	5472(%r15), %rdi
	testl	%eax, %eax
	je	.LBB29_155
# BB#156:                               # %if.then.57.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movslq	28(%rdi,%rbp), %rax
	movq	7696(%r15), %rcx
	movl	(%rcx,%rax,4), %r12d
	movl	4(%rcx,%rax,4), %r11d
	addl	$-2, %r11d
	leal	1(%rbx), %r13d
	cmpl	%ebx, %r11d
	movq	%rbx, 224(%rsp)         # 8-byte Spill
	movl	%r13d, %eax
	cmovel	%r12d, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	cltq
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	24(%rdi,%rax), %ecx
	movl	%ecx, 208(%rsp)         # 4-byte Spill
	movl	(%rdi,%rbp), %r8d
	movl	4(%rdi,%rbp), %r10d
	movq	%rbp, 176(%rsp)         # 8-byte Spill
	movl	(%rdi,%rax), %r9d
	movl	4(%rdi,%rax), %r14d
	movl	%r8d, %eax
	subl	%r9d, %eax
	movl	%r10d, %ecx
	subl	%r14d, %ecx
	cltq
	cmpl	$0, 232(%rsp)           # 4-byte Folded Reload
	je	.LBB29_157
# BB#161:                               # %cond.false.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	%rax, %rdx
	shrq	$8, %rdx
	movslq	%ecx, %rcx
	sarq	$8, %rax
	movq	%rcx, %rbp
	shrq	$8, %rbp
	sarq	$8, %rcx
	movq	%rax, %rbx
	negq	%rbx
	testl	%edx, %edx
	cmovnsq	%rax, %rbx
	movq	%rcx, %rsi
	negq	%rsi
	testl	%ebp, %ebp
	cmovnsq	%rcx, %rsi
	cmpl	%r9d, %r8d
	movl	%r9d, 168(%rsp)         # 4-byte Spill
	sete	%r9b
	cmpl	%r14d, %r10d
	movl	%r14d, 160(%rsp)        # 4-byte Spill
	movl	%r10d, 216(%rsp)        # 4-byte Spill
	sete	%r10b
	cmpq	%rsi, %rbx
	setge	%r14b
	movq	%rsi, %rax
	movabsq	$7378697629483820647, %rdx # imm = 0x6666666666666667
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	xorl	%ebp, %ebp
	cmpq	%rdx, %rbx
	jg	.LBB29_162
# BB#163:                               # %cond.false.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	andb	%r10b, %r9b
	orb	%r14b, %r9b
	movq	120(%rsp), %r15         # 8-byte Reload
	movq	152(%rsp), %r9          # 8-byte Reload
	jne	.LBB29_167
# BB#164:                               # %if.end.53.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	imulq	$100, %rbx, %rax
	cqto
	idivq	%rsi
	jmp	.LBB29_165
.LBB29_155:                             # %if.end.53.if.end.121_crit_edge.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	7696(%r15), %r8
	jmp	.LBB29_283
.LBB29_157:                             # %cond.true.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movslq	%ecx, %rcx
	shrq	$8, %rcx
	movl	%ecx, %edx
	negl	%edx
	movslq	%edx, %rdx
	movq	%rax, %rbp
	shrq	$8, %rbp
	sarq	$8, %rax
	movq	%rdx, %rbx
	negq	%rbx
	testl	%ecx, %ecx
	cmovleq	%rdx, %rbx
	movq	%rax, %rcx
	negq	%rcx
	testl	%ebp, %ebp
	cmovnsq	%rax, %rcx
	cmpl	%r9d, %r8d
	movl	%r9d, 168(%rsp)         # 4-byte Spill
	sete	%r9b
	cmpl	%r14d, %r10d
	movl	%r14d, 160(%rsp)        # 4-byte Spill
	movl	%r10d, 216(%rsp)        # 4-byte Spill
	sete	%r10b
	cmpq	%rcx, %rbx
	setge	%r14b
	movq	%rcx, %rax
	movabsq	$7378697629483820647, %rdx # imm = 0x6666666666666667
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	xorl	%ebp, %ebp
	cmpq	%rdx, %rbx
	jg	.LBB29_158
# BB#159:                               # %cond.true.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	andb	%r10b, %r9b
	orb	%r14b, %r9b
	movq	152(%rsp), %r9          # 8-byte Reload
	jne	.LBB29_167
# BB#160:                               # %if.end.53.i.48.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	imulq	$100, %rbx, %rax
	cqto
	idivq	%rcx
.LBB29_165:                             # %cond.end.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB29_167
# BB#166:                               # %if.then.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	$0, 208(%rsp)           # 4-byte Folded Reload
	setne	%al
	movzbl	%al, %ebp
	shll	$7, %ebp
	jmp	.LBB29_167
.LBB29_162:                             #   in Loop: Header=BB29_149 Depth=3
	movq	120(%rsp), %r15         # 8-byte Reload
	movq	152(%rsp), %r9          # 8-byte Reload
	jmp	.LBB29_167
.LBB29_158:                             #   in Loop: Header=BB29_149 Depth=3
	movq	152(%rsp), %r9          # 8-byte Reload
	.align	16, 0x90
.LBB29_167:                             # %t1_hinter__find_stem_middle.exit.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	7520(%r15), %rdx
	movq	200(%rsp), %rcx         # 8-byte Reload
	movl	52(%rdx,%rcx), %eax
	cmpl	$3, %eax
	jne	.LBB29_168
# BB#169:                               # %if.else.i.173
                                        #   in Loop: Header=BB29_149 Depth=3
	xorl	%r10d, %r10d
	cmpl	$0, 232(%rsp)           # 4-byte Folded Reload
	movl	216(%rsp), %ebx         # 4-byte Reload
	jne	.LBB29_174
# BB#170:                               # %if.else.i.173
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	172(%r15), %eax
	testl	%eax, %eax
	je	.LBB29_174
# BB#171:                               # %if.then.72.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	4(%rdx,%rcx), %ebx
	jne	.LBB29_174
# BB#172:                               # %if.then.81.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	$3, %r10d
	cmpl	8(%rdx,%rcx), %ebx
	jg	.LBB29_174
# BB#173:                               # %select.mid1126
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	$4, %r10d
	jmp	.LBB29_174
.LBB29_168:                             # %if.then.64.i
                                        #   in Loop: Header=BB29_149 Depth=3
	shrl	%eax
	andl	$1, %eax
	movl	$4, %r10d
	subl	%eax, %r10d
	movl	216(%rsp), %ebx         # 4-byte Reload
.LBB29_174:                             # %if.end.94.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	(%rdx,%rcx), %esi
	testl	%esi, %esi
	movl	%r8d, 260(%rsp)
	movl	%ebx, 256(%rsp)
	movl	%r8d, %eax
	cmovel	%ebx, %eax
	testl	%r10d, %r10d
	jne	.LBB29_175
# BB#176:                               # %land.lhs.true.i.163.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	$0, 20(%rdx,%rcx)
	je	.LBB29_175
# BB#177:                               # %land.rhs.i.164.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%eax, 144(%rsp)         # 4-byte Spill
	cmpl	$0, 24(%rdx,%rcx)
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	setne	%al
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB29_178
	.align	16, 0x90
.LBB29_175:                             #   in Loop: Header=BB29_149 Depth=3
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movl	$0, 136(%rsp)           # 4-byte Folded Spill
.LBB29_178:                             # %land.end.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	%r15, %r14
	testl	%ebp, %ebp
	movl	%ebx, %ecx
	movl	%r8d, %edx
	je	.LBB29_183
# BB#179:                               # %if.then.i.179.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	$0, 208(%rsp)           # 4-byte Folded Reload
	movl	%r9d, %edx
	movl	160(%rsp), %eax         # 4-byte Reload
	movl	168(%rsp), %ecx         # 4-byte Reload
	jne	.LBB29_182
	.align	16, 0x90
.LBB29_180:                             # %while.body.i.i.187.i
                                        #   Parent Loop BB29_141 Depth=1
                                        #     Parent Loop BB29_144 Depth=2
                                        #       Parent Loop BB29_149 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	%r11d, %edx
	leal	1(%rdx), %ecx
	cmovel	%r12d, %ecx
	movslq	%ecx, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	cmpl	$0, 24(%rdi,%rax)
	movl	%ecx, %edx
	je	.LBB29_180
# BB#181:                               # %t1_hinter__segment_end.exit.i.loopexit.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	(%rdi,%rax), %ecx
	movl	4(%rdi,%rax), %eax
.LBB29_182:                             # %t1_hinter__segment_end.exit.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	addl	%r8d, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, 260(%rsp)
	addl	%ebx, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 256(%rsp)
.LBB29_183:                             # %if.end.i.189.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%ebx, %ebp
	movl	%ecx, 184(%rsp)         # 4-byte Spill
	movl	%edx, 216(%rsp)         # 4-byte Spill
	testl	%esi, %esi
	movl	%esi, 192(%rsp)         # 4-byte Spill
	jne	.LBB29_204
# BB#184:                               # %if.then.23.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	224(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %ecx
	cmpl	%eax, %r12d
	cmovel	%r11d, %ecx
	leal	-1(%rcx), %r15d
	cmpl	%r12d, %ecx
	cmovel	%r11d, %r15d
	leal	1(%r9), %eax
	cmpl	%r11d, %r9d
	cmovel	%r12d, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %r12
	shlq	$4, %r12
	movl	4(%rdi,%r12), %ebx
	movl	%ebp, %r9d
	subl	%r9d, %ebx
	setl	104(%rsp)               # 1-byte Folded Spill
	movl	%r10d, 152(%rsp)        # 4-byte Spill
	setg	%r10b
	movl	160(%rsp), %ecx         # 4-byte Reload
	subl	%r9d, %ecx
	setl	%r11b
	setg	%sil
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	movl	168(%rsp), %edx         # 4-byte Reload
	subl	%r8d, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	movslq	%ecx, %rcx
	imulq	$1717986919, %rcx, %rcx # imm = 0x66666667
	movq	%rcx, %rbp
	shrq	$63, %rbp
	sarq	$34, %rcx
	addl	%ebp, %ecx
	movl	184(%r14), %ebp
	cmpl	%ecx, %ebp
	cmovgel	%ebp, %ecx
	cmpl	%ecx, %eax
	setle	%al
	movl	%ebx, %ecx
	negl	%ecx
	cmovll	%ebx, %ecx
	movl	(%rdi,%r12), %edx
	subl	%r8d, %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovll	%edx, %ebx
	movslq	%ebx, %rdx
	imulq	$1717986919, %rdx, %rdx # imm = 0x66666667
	movq	%rdx, %rbx
	sarq	$34, %rbx
	shrq	$63, %rdx
	addl	%ebx, %edx
	cmpl	%edx, %ebp
	cmovgel	%ebp, %edx
	cmpl	%edx, %ecx
	setle	%r8b
	andb	104(%rsp), %r11b        # 1-byte Folded Reload
	orb	%al, %r8b
	andb	%r10b, %sil
	movb	%sil, %cl
	movl	152(%rsp), %r10d        # 4-byte Reload
	jne	.LBB29_187
# BB#185:                               # %if.then.23.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	testb	%r11b, %r11b
	jne	.LBB29_187
# BB#186:                               # %if.then.23.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	testb	%r8b, %r8b
	je	.LBB29_204
.LBB29_187:                             # %if.then.256.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	208(%rsp), %eax         # 4-byte Reload
	orl	24(%rdi,%r12), %eax
	movl	%eax, 208(%rsp)         # 4-byte Spill
	je	.LBB29_189
# BB#188:                               #   in Loop: Header=BB29_149 Depth=3
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	jmp	.LBB29_195
.LBB29_189:                             # %land.lhs.true.275.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movslq	%r15d, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	4(%rdi,%rax), %esi
	cmpl	%r9d, %esi
	jle	.LBB29_191
# BB#190:                               #   in Loop: Header=BB29_149 Depth=3
	xorl	%ebx, %ebx
	jmp	.LBB29_192
.LBB29_191:                             # %land.rhs.283.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movslq	88(%rsp), %rax          # 4-byte Folded Reload
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	cmpl	%r9d, 4(%rdi,%rax)
	setle	%bl
.LBB29_192:                             # %land.lhs.true.294.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%r9d, %esi
	jge	.LBB29_194
# BB#193:                               #   in Loop: Header=BB29_149 Depth=3
	xorl	%eax, %eax
	jmp	.LBB29_195
.LBB29_194:                             # %land.rhs.302.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movslq	88(%rsp), %rax          # 4-byte Folded Reload
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	cmpl	%r9d, 4(%rdi,%rax)
	setge	%al
.LBB29_195:                             # %land.end.310.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	$0, 208(%rsp)           # 4-byte Folded Reload
	sete	%dl
	movslq	9672(%r14), %rsi
	testq	%rsi, %rsi
	jle	.LBB29_204
# BB#196:                               # %for.body.lr.ph.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	orb	%r11b, %bl
	orb	%r11b, %dl
	orb	%cl, %al
	orb	%cl, %dl
	movb	%cl, %r15b
	xorb	$1, %dl
	orb	%dl, %bl
	orb	%al, %dl
	movq	7648(%r14), %rdi
	leaq	16(%rdi), %rbp
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB29_197:                             # %for.body.i.i.i
                                        #   Parent Loop BB29_141 Depth=1
                                        #     Parent Loop BB29_144 Depth=2
                                        #       Parent Loop BB29_149 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testb	$1, %bl
	je	.LBB29_199
# BB#198:                               # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB29_197 Depth=4
	xorl	%eax, %eax
	cmpl	$0, -16(%rbp)
	je	.LBB29_201
.LBB29_199:                             # %lor.lhs.false.i.i.i
                                        #   in Loop: Header=BB29_197 Depth=4
	testb	$1, %dl
	je	.LBB29_203
# BB#200:                               # %land.lhs.true.11.i.i.i
                                        #   in Loop: Header=BB29_197 Depth=4
	movl	$1, %eax
	cmpl	$1, -16(%rbp)
	jne	.LBB29_203
.LBB29_201:                             # %if.then.i.212.i.i
                                        #   in Loop: Header=BB29_197 Depth=4
	cmpl	%r9d, -4(%rbp)
	jg	.LBB29_203
# BB#202:                               # %land.lhs.true.15.i.i.i
                                        #   in Loop: Header=BB29_197 Depth=4
	cmpl	%r9d, (%rbp)
	jge	.LBB29_206
	.align	16, 0x90
.LBB29_203:                             # %for.inc.i.i.i
                                        #   in Loop: Header=BB29_197 Depth=4
	incq	%rcx
	addq	$20, %rbp
	cmpq	%rsi, %rcx
	jl	.LBB29_197
	jmp	.LBB29_204
.LBB29_206:                             # %land.lhs.true.330.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	testl	%eax, %eax
	sete	%sil
	setne	%dl
	testb	%dl, %r15b
	jne	.LBB29_208
# BB#207:                               # %land.lhs.true.330.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	andb	%sil, %r11b
	orb	%r11b, %r8b
	jne	.LBB29_208
	.align	16, 0x90
.LBB29_204:                             # %do.end.398.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	136(%rsp), %eax         # 4-byte Reload
	testb	%al, %al
	je	.LBB29_205
# BB#220:                               # %if.then.400.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	%r14, %r15
	movl	184(%r15), %r8d
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	128(%rsp), %rbx         # 8-byte Reload
	movl	4(%rbx,%rdi), %eax
	movl	192(%rsp), %r9d         # 4-byte Reload
	testl	%r9d, %r9d
	je	.LBB29_221
# BB#224:                               # %if.else.421.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%r10d, 152(%rsp)        # 4-byte Spill
	movl	216(%rsp), %edx         # 4-byte Reload
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%eax, %ecx
	subl	%edx, %ecx
	cmovlel	%esi, %ecx
	movl	8(%rbx,%rdi), %r12d
	movl	%edx, %edi
	subl	%r12d, %edi
	movl	%r12d, %esi
	subl	%edx, %esi
	cmovlel	%edi, %esi
	cmpl	%r8d, %ecx
	movl	184(%rsp), %ebp         # 4-byte Reload
	jg	.LBB29_226
# BB#225:                               # %if.else.421.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%r8d, %esi
	movl	%ebp, %r10d
	jg	.LBB29_227
.LBB29_226:                             # %if.else.431.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%r8d, %esi
	movl	$0, %esi
	cmovgl	%esi, %eax
	cmpl	%r8d, %ecx
	cmovlel	%esi, %eax
	movl	%ebp, %r10d
	movl	%eax, %r12d
	jmp	.LBB29_227
.LBB29_205:                             #   in Loop: Header=BB29_149 Depth=3
	movl	184(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %ecx
	movq	%r14, %r15
	movq	200(%rsp), %r14         # 8-byte Reload
	movl	232(%rsp), %r12d        # 4-byte Reload
	movl	216(%rsp), %edx         # 4-byte Reload
.LBB29_216:                             # %if.then.446.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	64(%r15), %esi
	testl	%esi, %esi
	jle	.LBB29_218
# BB#217:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	%r15, %rdi
	leaq	276(%rsp), %r8
	leaq	272(%rsp), %r9
	movl	%r10d, %ebx
	callq	t1_hinter__align_to_grid__general
	movl	276(%rsp), %ecx
	movl	272(%rsp), %r8d
	movq	%r15, %rdi
	leaq	260(%rsp), %rsi
	leaq	256(%rsp), %rdx
	callq	t1_hinter__align_to_grid__final
	movl	216(%rsp), %edx         # 4-byte Reload
	movl	%ebx, %r10d
.LBB29_218:                             # %t1_hinter__compute_aligned_coord.exit.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	192(%rsp), %r9d         # 4-byte Reload
	movl	144(%rsp), %esi         # 4-byte Reload
	jmp	.LBB29_246
.LBB29_221:                             # %if.then.404.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%r10d, 152(%rsp)        # 4-byte Spill
	movl	184(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %esi
	subl	%eax, %esi
	movl	%eax, %ecx
	subl	%ebp, %ecx
	cmovlel	%esi, %ecx
	movl	8(%rbx,%rdi), %r10d
	movl	%ebp, %edi
	subl	%r10d, %edi
	movl	%r10d, %esi
	subl	%ebp, %esi
	cmovlel	%edi, %esi
	cmpl	%r8d, %ecx
	movl	216(%rsp), %edx         # 4-byte Reload
	jg	.LBB29_223
# BB#222:                               # %if.then.404.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%r8d, %esi
	movl	%edx, %r12d
	jg	.LBB29_227
.LBB29_223:                             # %if.else.413.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%r8d, %esi
	movl	$0, %esi
	cmovgl	%esi, %eax
	cmpl	%r8d, %ecx
	cmovlel	%esi, %eax
	movl	%eax, %r10d
	movl	%edx, %r12d
.LBB29_227:                             # %if.then.442.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	64(%r15), %r14d
	testl	%r14d, %r14d
	jle	.LBB29_228
# BB#229:                               # %if.then.i.199.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	%r10d, %eax
	subl	%ebp, %eax
	movl	%r12d, %ecx
	subl	%edx, %ecx
	testl	%r9d, %r9d
	cmovel	%eax, %ecx
	movl	%ecx, 208(%rsp)         # 4-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	cmoveq	80(%rsp), %rax          # 8-byte Folded Reload
	movq	%r15, %rbx
	movl	%ecx, %r15d
	negl	%r15d
	cmovll	%ecx, %r15d
	movslq	(%rax), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	%ebp, %ecx
	leaq	276(%rsp), %r8
	leaq	272(%rsp), %r9
	movl	%r10d, %ebp
	callq	t1_hinter__align_to_grid__general
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	%r12d, %edx
	movl	%ebp, %ecx
	leaq	268(%rsp), %r8
	leaq	264(%rsp), %r9
	callq	t1_hinter__align_to_grid__general
	movq	160(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmoveq	64(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %esi
	testl	%esi, %esi
	movl	%r15d, %ecx
	je	.LBB29_236
# BB#230:                               # %if.then.i.199.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	9732(%rbx), %ecx
	testl	%ecx, %ecx
	movl	%r15d, %ecx
	je	.LBB29_236
# BB#231:                               # %if.end.i.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	%rbx, %rbp
	movq	200(%rsp), %rcx         # 8-byte Reload
	movq	128(%rsp), %rdx         # 8-byte Reload
	movswq	56(%rdx,%rcx), %rdx
	testq	%rdx, %rdx
	movl	%r15d, %ecx
	js	.LBB29_235
# BB#232:                               # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	cmpl	$0, 9632(%rbp,%rax,4)
	movl	%r15d, %ecx
	jle	.LBB29_235
# BB#233:                               # %if.then.11.i.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	7856(%rbp,%rax,8), %rax
	movl	(%rax,%rdx,4), %eax
	imull	$70, %esi, %ecx
	movslq	%ecx, %rcx
	imulq	$1374389535, %rcx, %rcx # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	movl	%r15d, %edx
	subl	%ecx, %edx
	cmpl	%eax, %edx
	movl	%r15d, %ecx
	jg	.LBB29_235
# BB#234:                               # %land.lhs.true.23.i.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	imull	$35, %esi, %ecx
	movslq	%ecx, %rcx
	imulq	$1374389535, %rcx, %rcx # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	addl	%r15d, %ecx
	cmpl	%ecx, %eax
	cmovgl	%r15d, %eax
	movl	%eax, %ecx
.LBB29_235:                             # %if.end.28.i.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%esi, %eax
	shrl	$31, %eax
	leal	(%rax,%rsi), %eax
	sarl	%eax
	cmpl	%eax, %edx
	movl	%esi, %eax
	movl	$0, %edi
	cmovll	%edi, %eax
	cmpl	%esi, %ecx
	cmovll	%esi, %eax
	subl	%edx, %ecx
	addl	%eax, %ecx
	movq	%rbp, %rbx
.LBB29_236:                             # %t1_hinter__align_stem_width.exit.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	subl	%r15d, %ecx
	movslq	%ecx, %rax
	imulq	168(%rsp), %rax         # 8-byte Folded Reload
	shrq	$12, %rax
	movl	140(%rbx), %ecx
	movl	192(%rsp), %edx         # 4-byte Reload
	testl	%edx, %edx
	movq	%rbx, %r15
	je	.LBB29_237
# BB#241:                               # %cond.false.26.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	testl	%ecx, %ecx
	movq	%r15, %rcx
	cmovneq	48(%rsp), %rcx          # 8-byte Folded Reload
	cmpl	$0, (%rcx)
	movq	200(%rsp), %r14         # 8-byte Reload
	movl	232(%rsp), %r12d        # 4-byte Reload
	jns	.LBB29_243
# BB#242:                               #   in Loop: Header=BB29_149 Depth=3
	negl	%eax
.LBB29_243:                             # %select.end1156
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%edx, %ebp
	movl	%eax, %ecx
	negl	%ecx
	cmpl	$0, 208(%rsp)           # 4-byte Folded Reload
	movl	276(%rsp), %edx
	movl	%eax, %esi
	cmovnsl	%ecx, %esi
	movl	268(%rsp), %edi
	cmovnsl	%eax, %ecx
	addl	%edi, %ecx
	leal	(%rsi,%rdx,2), %eax
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	leal	(%rdi,%rcx), %eax
	movl	%eax, %esi
	negl	%esi
	cmovll	%eax, %esi
	cmpl	%esi, %edx
	jle	.LBB29_245
# BB#244:                               # %if.then.116.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%ecx, 276(%rsp)
	jmp	.LBB29_245
.LBB29_228:                             #   in Loop: Header=BB29_149 Depth=3
	movq	200(%rsp), %r14         # 8-byte Reload
	movl	232(%rsp), %r12d        # 4-byte Reload
	movl	152(%rsp), %r10d        # 4-byte Reload
	movl	144(%rsp), %esi         # 4-byte Reload
	jmp	.LBB29_246
.LBB29_237:                             # %cond.true.19.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	testl	%ecx, %ecx
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmovneq	40(%rsp), %rcx          # 8-byte Folded Reload
	cmpl	$0, (%rcx)
	movq	200(%rsp), %r14         # 8-byte Reload
	movl	232(%rsp), %r12d        # 4-byte Reload
	jns	.LBB29_239
# BB#238:                               #   in Loop: Header=BB29_149 Depth=3
	negl	%eax
.LBB29_239:                             # %select.end1154
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%edx, %ebp
	movl	%eax, %ecx
	negl	%ecx
	cmpl	$0, 208(%rsp)           # 4-byte Folded Reload
	movl	272(%rsp), %edx
	movl	%eax, %esi
	cmovnsl	%ecx, %esi
	movl	264(%rsp), %edi
	cmovnsl	%eax, %ecx
	addl	%edi, %ecx
	leal	(%rsi,%rdx,2), %eax
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	leal	(%rdi,%rcx), %eax
	movl	%eax, %esi
	negl	%esi
	cmovll	%eax, %esi
	cmpl	%esi, %edx
	jle	.LBB29_245
# BB#240:                               # %if.then.78.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%ecx, 272(%rsp)
.LBB29_245:                             # %if.end.118.i.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	276(%rsp), %ecx
	movl	272(%rsp), %r8d
	movq	%r15, %rdi
	leaq	260(%rsp), %rsi
	leaq	256(%rsp), %rdx
	callq	t1_hinter__align_to_grid__final
	movl	152(%rsp), %r10d        # 4-byte Reload
	movl	%ebp, %r9d
	movl	144(%rsp), %esi         # 4-byte Reload
	movl	216(%rsp), %edx         # 4-byte Reload
	movl	184(%rsp), %ebp         # 4-byte Reload
.LBB29_246:                             # %t1_hinter__compute_aligned_coord.exit.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	256(%rsp), %ecx
	subl	%ebp, %ecx
	movl	260(%rsp), %eax
	subl	%edx, %eax
	testl	%r9d, %r9d
	cmovel	%ecx, %eax
	addl	%esi, %eax
	testl	%r10d, %r10d
	movl	$2, %ecx
	cmovel	%ecx, %r10d
	movq	7520(%r15), %rbp
	movq	5472(%r15), %rdi
	movq	%rdi, 216(%rsp)         # 8-byte Spill
	movl	(%rbp,%r14), %ebx
	movl	%ebx, 160(%rsp)         # 4-byte Spill
	movl	4(%rbp,%r14), %esi
	movl	%esi, 184(%rsp)         # 4-byte Spill
	movq	176(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdi,%rdx), %rcx
	testl	%ebx, %ebx
	leaq	4(%rdi,%rdx), %rbx
	movq	%rdx, %r8
	cmovneq	%rcx, %rbx
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	movl	(%rbx), %ecx
	movl	%esi, %edx
	subl	%ecx, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movl	8(%rbp,%r14), %edx
	movl	%edx, 168(%rsp)         # 4-byte Spill
	subl	%ecx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	cmpl	%ecx, %esi
	movl	252(%rsp), %ecx
	jge	.LBB29_250
# BB#247:                               # %if.then.i.155.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%r10d, 28(%rbp,%r14)
	ja	.LBB29_254
# BB#248:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%ecx, 36(%rbp,%r14)
	jle	.LBB29_254
# BB#249:                               # %if.then.25.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	leaq	28(%rbp,%r14), %rdx
	leaq	36(%rbp,%r14), %rsi
	movl	%eax, 12(%rbp,%r14)
	jmp	.LBB29_253
.LBB29_250:                             # %if.else.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%r10d, 32(%rbp,%r14)
	ja	.LBB29_254
# BB#251:                               # %land.lhs.true.29.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%ecx, 40(%rbp,%r14)
	jle	.LBB29_254
# BB#252:                               # %if.then.31.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	leaq	32(%rbp,%r14), %rdx
	leaq	40(%rbp,%r14), %rsi
	movl	%eax, 16(%rbp,%r14)
.LBB29_253:                             # %t1_hint__set_aligned_coord.exit.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%r10d, (%rdx)
	movl	%ecx, (%rsi)
.LBB29_254:                             # %t1_hint__set_aligned_coord.exit.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	movslq	28(%rdi,%r8), %rax
	movq	7696(%r15), %rcx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movl	(%rcx,%rax,4), %ebx
	movl	4(%rcx,%rax,4), %r8d
	leal	-2(%r8), %ecx
	movq	224(%rsp), %rsi         # 8-byte Reload
	cmpl	%esi, %ecx
	cmovel	%ebx, %r13d
	movslq	%r13d, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	cmpl	$0, 24(%rdi,%rax)
	movl	%r13d, %r10d
	je	.LBB29_256
# BB#255:                               #   in Loop: Header=BB29_149 Depth=3
	movl	%ecx, 144(%rsp)         # 4-byte Spill
	movl	%ebx, 176(%rsp)         # 4-byte Spill
	movl	%r13d, %r10d
	jmp	.LBB29_258
	.align	16, 0x90
.LBB29_256:                             # %while.body.i.160.i.i
                                        #   Parent Loop BB29_141 Depth=1
                                        #     Parent Loop BB29_144 Depth=2
                                        #       Parent Loop BB29_149 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	%ecx, %r10d
	leal	1(%r10), %eax
	movl	%eax, %r10d
	cmovel	%ebx, %r10d
	movslq	%r10d, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	cmpl	$0, 24(%rdi,%rax)
	je	.LBB29_256
# BB#257:                               #   in Loop: Header=BB29_149 Depth=3
	movl	%ecx, 144(%rsp)         # 4-byte Spill
	movl	%ebx, 176(%rsp)         # 4-byte Spill
.LBB29_258:                             # %while.cond.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%esi, %ebp
	jmp	.LBB29_259
	.align	16, 0x90
.LBB29_279:                             #   in Loop: Header=BB29_259 Depth=4
	movl	%ecx, %r10d
.LBB29_259:                             # %while.cond.i.i
                                        #   Parent Loop BB29_141 Depth=1
                                        #     Parent Loop BB29_144 Depth=2
                                        #       Parent Loop BB29_149 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB29_274 Depth 5
                                        #           Child Loop BB29_278 Depth 5
	movslq	%r13d, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movslq	%ebp, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	(%rdi,%rax), %edx
	movl	4(%rdi,%rax), %esi
	movl	(%rdi,%rcx), %r9d
	movl	4(%rdi,%rcx), %r14d
	subl	%r14d, %esi
	sete	%r13b
	subl	%r9d, %edx
	movslq	%edx, %rax
	movslq	%esi, %rdi
	sete	%r15b
	movq	%rax, %rsi
	movq	240(%rsp), %r11         # 8-byte Reload
	andq	%r11, %rsi
	shrq	$8, %rsi
	movq	%rdi, %rdx
	shrq	$8, %rdx
	shrq	$8, %rax
	testl	%r12d, %r12d
	movl	$0, %ecx
	cmovnel	%ecx, %edx
	cmovnel	%ecx, %eax
	movl	%esi, %ecx
	subl	%edx, %ecx
	movslq	%ecx, %r12
	movq	%r12, %rcx
	negq	%rcx
	cmpl	%edx, %esi
	cmovnsq	%r12, %rcx
	andq	%r11, %rdi
	shrq	$8, %rdi
	addl	%eax, %edi
	movslq	%edi, %rdx
	movq	%rdx, %rax
	negq	%rax
	testl	%edx, %edx
	cmovnsq	%rdx, %rax
	cmpq	%rax, %rcx
	setge	%r12b
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB29_260
# BB#267:                               # %while.cond.i.i
                                        #   in Loop: Header=BB29_259 Depth=4
	andb	%r13b, %r15b
	orb	%r12b, %r15b
	jne	.LBB29_260
# BB#268:                               # %land.rhs.i.i
                                        #   in Loop: Header=BB29_259 Depth=4
	movslq	%r10d, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movq	216(%rsp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax), %ecx
	movl	4(%rsi,%rax), %edx
	movq	%rsi, %r15
	subl	%r14d, %edx
	sete	%r10b
	subl	%r9d, %ecx
	movslq	%ecx, %rax
	movslq	%edx, %rdx
	sete	%r9b
	movq	%rax, %rcx
	movq	240(%rsp), %r11         # 8-byte Reload
	andq	%r11, %rcx
	shrq	$8, %rcx
	movq	%rdx, %rsi
	shrq	$8, %rsi
	shrq	$8, %rax
	movl	232(%rsp), %r12d        # 4-byte Reload
	testl	%r12d, %r12d
	movl	$0, %edi
	cmovnel	%edi, %esi
	cmovnel	%edi, %eax
	movl	%ecx, %edi
	subl	%esi, %edi
	movslq	%edi, %r14
	movq	%r14, %rdi
	negq	%rdi
	cmpl	%esi, %ecx
	cmovnsq	%r14, %rdi
	andq	%r11, %rdx
	shrq	$8, %rdx
	addl	%eax, %edx
	movslq	%edx, %rcx
	movq	%rcx, %rax
	negq	%rax
	testl	%ecx, %ecx
	cmovnsq	%rcx, %rax
	cmpq	%rax, %rdi
	setge	%cl
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	cmpq	%rdx, %rdi
	jg	.LBB29_269
# BB#270:                               # %land.rhs.i.i
                                        #   in Loop: Header=BB29_259 Depth=4
	andb	%r10b, %r9b
	orb	%cl, %r9b
	movq	224(%rsp), %r9          # 8-byte Reload
	jne	.LBB29_271
# BB#272:                               # %while.body.i.143.i
                                        #   in Loop: Header=BB29_259 Depth=4
	addl	$-2, %r8d
	cmpl	%ebp, %r8d
	leal	1(%rbp), %eax
	cmovel	%ebx, %eax
	movslq	%eax, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movq	%r15, %rdi
	jmp	.LBB29_274
	.align	16, 0x90
.LBB29_273:                             # %while.body.i.74.i.i
                                        #   in Loop: Header=BB29_274 Depth=5
	cmpl	%r8d, %ebp
	leal	1(%rbp), %eax
	cmovel	%ebx, %eax
	movslq	%eax, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
.LBB29_274:                             # %while.body.i.74.i.i
                                        #   Parent Loop BB29_141 Depth=1
                                        #     Parent Loop BB29_144 Depth=2
                                        #       Parent Loop BB29_149 Depth=3
                                        #         Parent Loop BB29_259 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	cmpl	$0, 24(%rdi,%rcx)
	movl	%eax, %ebp
	je	.LBB29_273
# BB#275:                               # %t1_hinter__segment_end.exit76.i.i
                                        #   in Loop: Header=BB29_259 Depth=4
	cmpl	%r9d, %ebp
	je	.LBB29_276
# BB#277:                               # %if.end.i.i
                                        #   in Loop: Header=BB29_259 Depth=4
	movslq	%ebp, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movslq	28(%rdi,%rax), %rax
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %ebx
	movl	4(%rcx,%rax,4), %r8d
	leal	-2(%r8), %eax
	leal	1(%rbp), %r13d
	cmpl	%ebp, %eax
	cmovel	%ebx, %r13d
	movslq	%r13d, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	cmpl	$0, 24(%rdi,%rcx)
	movl	%r13d, %r10d
	movl	%r13d, %ecx
	jne	.LBB29_259
	.align	16, 0x90
.LBB29_278:                             # %while.body.i.i.i
                                        #   Parent Loop BB29_141 Depth=1
                                        #     Parent Loop BB29_144 Depth=2
                                        #       Parent Loop BB29_149 Depth=3
                                        #         Parent Loop BB29_259 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	cmpl	%eax, %ecx
	leal	1(%rcx), %ecx
	cmovel	%ebx, %ecx
	movslq	%ecx, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	cmpl	$0, 24(%rdi,%rdx)
	je	.LBB29_278
	jmp	.LBB29_279
.LBB29_260:                             #   in Loop: Header=BB29_149 Depth=3
	movq	224(%rsp), %r9          # 8-byte Reload
	movq	216(%rsp), %rdi         # 8-byte Reload
	jmp	.LBB29_261
.LBB29_276:                             #   in Loop: Header=BB29_149 Depth=3
	movl	%r9d, %ebp
	jmp	.LBB29_261
.LBB29_269:                             #   in Loop: Header=BB29_149 Depth=3
	movq	224(%rsp), %r9          # 8-byte Reload
	movq	%r15, %rdi
	jmp	.LBB29_261
.LBB29_271:                             #   in Loop: Header=BB29_149 Depth=3
	movq	%r15, %rdi
	.align	16, 0x90
.LBB29_261:                             # %t1_hinter__skip_stem.exit.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movq	208(%rsp), %r8          # 8-byte Reload
	leal	-1(%r9), %edx
	movl	176(%rsp), %eax         # 4-byte Reload
	cmpl	%r9d, %eax
	movl	144(%rsp), %esi         # 4-byte Reload
	cmovel	%esi, %edx
	leal	1(%rbp), %ecx
	cmpl	%ebp, %esi
	cmovel	%eax, %ecx
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movslq	%edx, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	shlq	$4, %rsi
	cmpl	$1, 24(%rdi,%rsi)
	movl	%r9d, %esi
	movq	200(%rsp), %r14         # 8-byte Reload
	movl	112(%rsp), %r12d        # 4-byte Reload
	je	.LBB29_263
# BB#262:                               # %select.mid1175
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%edx, %esi
.LBB29_263:                             # %select.end1174
                                        #   in Loop: Header=BB29_149 Depth=3
	movslq	%ecx, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	cmpl	$1, 24(%rdi,%rdx)
	movl	%ebp, %edx
	je	.LBB29_265
# BB#264:                               # %select.mid1414
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%ecx, %edx
.LBB29_265:                             # %select.end1413
                                        #   in Loop: Header=BB29_149 Depth=3
	movslq	%esi, %rcx
	cmpl	$0, 160(%rsp)           # 4-byte Folded Reload
	je	.LBB29_266
# BB#280:                               # %cond.false.57.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	4(%rdi,%rcx), %esi
	movslq	%edx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	subl	4(%rdi,%rcx), %esi
	jmp	.LBB29_281
.LBB29_266:                             # %cond.true.23.i.i
                                        #   in Loop: Header=BB29_149 Depth=3
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	(%rdi,%rcx), %esi
	movslq	%edx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	subl	(%rdi,%rcx), %esi
.LBB29_281:                             # %t1_hinter__add_boundary_length.exit.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movl	%esi, %ecx
	negl	%ecx
	cmovll	%esi, %ecx
	movl	184(%rsp), %esi         # 4-byte Reload
	subl	%eax, %esi
	movl	%esi, %edx
	negl	%edx
	cmovll	%esi, %edx
	movl	168(%rsp), %esi         # 4-byte Reload
	subl	%eax, %esi
	movl	%esi, %eax
	negl	%eax
	cmovll	%esi, %eax
	cmpl	%eax, %edx
	movq	192(%rsp), %rdx         # 8-byte Reload
	leaq	60(%rdx,%r14), %rax
	leaq	64(%rdx,%r14), %rdx
	cmovlq	%rax, %rdx
	addl	%ecx, (%rdx)
	cmpl	%r9d, %ebp
	jge	.LBB29_282
# BB#516:                               # %cleanup.i.176
                                        #   in Loop: Header=BB29_149 Depth=3
	movslq	%ebp, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movslq	28(%rdi,%rax), %rax
	movl	4(%r8,%rax,4), %eax
	movq	120(%rsp), %r15         # 8-byte Reload
	jmp	.LBB29_151
.LBB29_282:                             #   in Loop: Header=BB29_149 Depth=3
	movl	%ebp, %ebx
	movq	120(%rsp), %r15         # 8-byte Reload
.LBB29_283:                             # %if.end.121.i
                                        #   in Loop: Header=BB29_149 Depth=3
	movslq	%ebx, %rsi
	leaq	(%rsi,%rsi,2), %rax
	shlq	$4, %rax
	movslq	28(%rdi,%rax), %rax
	movl	(%r8,%rax,4), %ecx
	movl	4(%r8,%rax,4), %edx
	addl	$-2, %edx
	leal	1(%rsi), %eax
	cmpl	%esi, %edx
	cmovel	%ecx, %eax
	jmp	.LBB29_285
	.align	16, 0x90
.LBB29_284:                             # %while.body.i.i.194
                                        #   in Loop: Header=BB29_285 Depth=4
	cmpl	%edx, %eax
	leal	1(%rax), %eax
	cmovel	%ecx, %eax
.LBB29_285:                             # %while.body.i.i.194
                                        #   Parent Loop BB29_141 Depth=1
                                        #     Parent Loop BB29_144 Depth=2
                                        #       Parent Loop BB29_149 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%eax, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	shlq	$4, %rsi
	cmpl	$0, 24(%rdi,%rsi)
	je	.LBB29_284
# BB#286:                               # %t1_hinter__segment_end.exit.i.196
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%ebx, %eax
	jg	.LBB29_151
# BB#287:                               # %if.then.125.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cltq
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movslq	28(%rdi,%rax), %rax
	movl	4(%r8,%rax,4), %eax
	.align	16, 0x90
.LBB29_151:                             # %for.cond.41.backedge.i
                                        #   in Loop: Header=BB29_149 Depth=3
	cmpl	%r12d, %eax
	movl	%eax, %ebx
	jle	.LBB29_149
.LBB29_152:                             # %cleanup.135.i
                                        #   in Loop: Header=BB29_144 Depth=2
	movq	8176(%r15), %rcx
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	4(%rcx,%rax,8), %eax
	cmpl	$-1, %eax
	jne	.LBB29_153
# BB#288:                               # %for.inc.146.i.loopexit
                                        #   in Loop: Header=BB29_141 Depth=1
	movl	9688(%r15), %r10d
	movq	24(%rsp), %rcx          # 8-byte Reload
.LBB29_289:                             # %for.inc.146.i
                                        #   in Loop: Header=BB29_141 Depth=1
	incq	%rcx
	movslq	%r10d, %rax
	xorl	%r11d, %r11d
	cmpq	%rax, %rcx
	jl	.LBB29_141
	.align	16, 0x90
.LBB29_290:                             # %for.cond.1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_292 Depth 2
                                        #       Child Loop BB29_297 Depth 3
                                        #       Child Loop BB29_304 Depth 3
	testl	%r10d, %r10d
	jle	.LBB29_311
# BB#291:                               # %for.body.3.lr.ph.i
                                        #   in Loop: Header=BB29_290 Depth=1
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB29_292:                             # %for.body.3.i
                                        #   Parent Loop BB29_290 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_297 Depth 3
                                        #       Child Loop BB29_304 Depth 3
	movq	7520(%r15), %rdi
	imulq	$68, %r13, %rdx
	movl	(%rdi,%rdx), %r12d
	cmpl	$1, %r12d
	ja	.LBB29_310
# BB#293:                               # %if.then.i.210
                                        #   in Loop: Header=BB29_292 Depth=2
	testl	%r11d, %r11d
	leaq	28(%rdi,%rdx), %rbx
	leaq	32(%rdi,%rdx), %rbp
	movq	%rbx, %rax
	cmovneq	%rbp, %rax
	movl	(%rax), %r9d
	cmpl	$2, %r9d
	jb	.LBB29_310
# BB#294:                               # %land.lhs.true.i.212
                                        #   in Loop: Header=BB29_292 Depth=2
	testl	%r11d, %r11d
	cmovneq	%rbx, %rbp
	cmpl	(%rbp), %r9d
	jne	.LBB29_310
# BB#295:                               # %if.then.31.i
                                        #   in Loop: Header=BB29_292 Depth=2
	testl	%r11d, %r11d
	leaq	4(%rdi,%rdx), %rax
	leaq	8(%rdi,%rdx), %r14
	cmoveq	%rax, %r14
	testl	%r10d, %r10d
	jle	.LBB29_310
# BB#296:                               # %for.body.89.lr.ph.i
                                        #   in Loop: Header=BB29_292 Depth=2
	testl	%r11d, %r11d
	leaq	16(%rdi,%rdx), %rax
	leaq	12(%rdi,%rdx), %rdx
	cmovneq	%rax, %rdx
	movl	(%rdx), %r8d
	movslq	%r10d, %rbx
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB29_297:                             # %for.body.89.i
                                        #   Parent Loop BB29_290 Depth=1
                                        #     Parent Loop BB29_292 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%ebp, %r13d
	je	.LBB29_302
# BB#298:                               # %land.lhs.true.91.i
                                        #   in Loop: Header=BB29_297 Depth=3
	cmpl	(%rdi,%rdx), %r12d
	jne	.LBB29_302
# BB#299:                               # %if.then.101.i
                                        #   in Loop: Header=BB29_297 Depth=3
	testl	%r11d, %r11d
	leaq	8(%rdi,%rdx), %rax
	leaq	4(%rdi,%rdx), %rsi
	cmovneq	%rax, %rsi
	movl	(%r14), %eax
	cmpl	(%rsi), %eax
	jne	.LBB29_302
# BB#300:                               # %if.then.116.i
                                        #   in Loop: Header=BB29_297 Depth=3
	incl	%ecx
	testl	%r11d, %r11d
	leaq	32(%rdi,%rdx), %rax
	leaq	28(%rdi,%rdx), %rsi
	cmovneq	%rax, %rsi
	movl	(%rsi), %eax
	cmpl	%eax, %r9d
	jae	.LBB29_302
# BB#301:                               # %if.then.164.i
                                        #   in Loop: Header=BB29_297 Depth=3
	testl	%r11d, %r11d
	leaq	16(%rdi,%rdx), %r8
	leaq	12(%rdi,%rdx), %rsi
	cmovneq	%r8, %rsi
	movl	(%rsi), %r8d
	movl	%eax, %r9d
	.align	16, 0x90
.LBB29_302:                             # %for.inc.i.219
                                        #   in Loop: Header=BB29_297 Depth=3
	incq	%rbp
	addq	$68, %rdx
	cmpq	%rbp, %rbx
	jne	.LBB29_297
# BB#303:                               # %for.end.i.220
                                        #   in Loop: Header=BB29_292 Depth=2
	testl	%ecx, %ecx
	movl	$16, %edx
	movl	$0, %esi
	jne	.LBB29_304
	jmp	.LBB29_310
	.align	16, 0x90
.LBB29_309:                             # %for.inc.248.for.body.189_crit_edge.i
                                        #   in Loop: Header=BB29_304 Depth=3
	addq	$68, %rdx
	movq	7520(%r15), %rdi
.LBB29_304:                             # %for.body.189.i
                                        #   Parent Loop BB29_290 Depth=1
                                        #     Parent Loop BB29_292 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r15, %rcx
	testl	%r11d, %r11d
	leaq	-8(%rdi,%rdx), %rax
	leaq	-12(%rdi,%rdx), %rbp
	cmovneq	%rax, %rbp
	movl	(%r14), %eax
	cmpl	(%rbp), %eax
	jne	.LBB29_308
# BB#305:                               # %if.then.204.i
                                        #   in Loop: Header=BB29_304 Depth=3
	testl	%r11d, %r11d
	leaq	16(%rdi,%rdx), %rax
	leaq	12(%rdi,%rdx), %rbp
	movq	%rbp, %rbx
	cmovneq	%rax, %rbx
	cmoveq	%rax, %rbp
	leaq	-4(%rdi,%rdx), %r10
	leaq	(%rdi,%rdx), %rax
	cmoveq	%r10, %rax
	movl	%r9d, (%rbx)
	cmpl	$2, (%rbp)
	jne	.LBB29_307
# BB#306:                               # %if.then.245.i
                                        #   in Loop: Header=BB29_304 Depth=3
	movl	$1, (%rbp)
.LBB29_307:                             # %if.end.246.i
                                        #   in Loop: Header=BB29_304 Depth=3
	movl	%r8d, (%rax)
	movl	9688(%rcx), %r10d
.LBB29_308:                             # %for.inc.248.i
                                        #   in Loop: Header=BB29_304 Depth=3
	incq	%rsi
	movslq	%r10d, %rax
	cmpq	%rax, %rsi
	movq	%rcx, %r15
	jl	.LBB29_309
	.align	16, 0x90
.LBB29_310:                             # %for.inc.254.i
                                        #   in Loop: Header=BB29_292 Depth=2
	incq	%r13
	movslq	%r10d, %rax
	cmpq	%rax, %r13
	jl	.LBB29_292
.LBB29_311:                             # %for.inc.257.i
                                        #   in Loop: Header=BB29_290 Depth=1
	incl	%r11d
	cmpl	$2, %r11d
	jne	.LBB29_290
# BB#312:                               # %t1_hinter__unfix_opposite_to_common.exit
	testl	%r10d, %r10d
	jle	.LBB29_422
# BB#313:                               # %for.body.lr.ph.i.229
	leaq	9820(%r15), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	leaq	9816(%r15), %rax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movq	7520(%r15), %rdi
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movslq	%r10d, %rbx
	.align	16, 0x90
.LBB29_314:                             # %for.body.i.233
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdi), %ebp
	cmpl	$1, %ebp
	ja	.LBB29_337
# BB#315:                               # %if.then.i.242
                                        #   in Loop: Header=BB29_314 Depth=1
	movl	12(%rdi), %r14d
	movl	16(%rdi), %r11d
	movl	28(%rdi), %r8d
	movl	32(%rdi), %r13d
	movl	4(%rdi), %r15d
	movl	8(%rdi), %r12d
	movl	%r12d, %eax
	subl	%r15d, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	testl	%ebp, %ebp
	movq	232(%rsp), %rax         # 8-byte Reload
	cmoveq	240(%rsp), %rax         # 8-byte Folded Reload
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	je	.LBB29_322
# BB#316:                               # %if.then.i.242
                                        #   in Loop: Header=BB29_314 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	9732(%rax), %eax
	testl	%eax, %eax
	je	.LBB29_322
# BB#317:                               # %if.end.i.i.243
                                        #   in Loop: Header=BB29_314 Depth=1
	movswq	56(%rdi), %rax
	testq	%rax, %rax
	js	.LBB29_321
# BB#318:                               # %land.lhs.true.i.i.244
                                        #   in Loop: Header=BB29_314 Depth=1
	testl	%ebp, %ebp
	setne	%dl
	movzbl	%dl, %edx
	movq	120(%rsp), %rsi         # 8-byte Reload
	cmpl	$0, 9632(%rsi,%rdx,4)
	jle	.LBB29_321
# BB#319:                               # %if.then.11.i.i
                                        #   in Loop: Header=BB29_314 Depth=1
	movq	7856(%rsi,%rdx,8), %rdx
	movl	(%rdx,%rax,4), %eax
	imull	$70, %r9d, %edx
	movslq	%edx, %rdx
	imulq	$1374389535, %rdx, %rdx # imm = 0x51EB851F
	movq	%rdx, %rsi
	shrq	$63, %rsi
	sarq	$37, %rdx
	addl	%esi, %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	cmpl	%eax, %esi
	jg	.LBB29_321
# BB#320:                               # %land.lhs.true.23.i.i
                                        #   in Loop: Header=BB29_314 Depth=1
	imull	$35, %r9d, %edx
	movslq	%edx, %rdx
	imulq	$1374389535, %rdx, %rdx # imm = 0x51EB851F
	movq	%rdx, %rsi
	shrq	$63, %rsi
	sarq	$37, %rdx
	addl	%esi, %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	cmovlel	%eax, %ecx
	.align	16, 0x90
.LBB29_321:                             # %if.end.28.i.i
                                        #   in Loop: Header=BB29_314 Depth=1
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	movl	%r9d, %eax
	shrl	$31, %eax
	leal	(%rax,%r9), %eax
	sarl	%eax
	cmpl	%eax, %edx
	movl	%r9d, %eax
	movl	$0, %esi
	cmovll	%esi, %eax
	cmpl	%r9d, %ecx
	cmovll	%r9d, %eax
	subl	%edx, %ecx
	addl	%eax, %ecx
.LBB29_322:                             # %t1_hinter__align_stem_width.exit.i
                                        #   in Loop: Header=BB29_314 Depth=1
	movl	%ecx, %eax
	negl	%eax
	cmpl	%r15d, %r12d
	cmovgel	%ecx, %eax
	cmpl	%r13d, %r8d
	ja	.LBB29_323
# BB#324:                               # %if.else.i.253
                                        #   in Loop: Header=BB29_314 Depth=1
	jb	.LBB29_335
# BB#325:                               # %if.else.69.i
                                        #   in Loop: Header=BB29_314 Depth=1
	movl	%r14d, %edx
	subl	%r15d, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	movl	%r11d, %esi
	subl	%r12d, %esi
	movl	%esi, %edx
	negl	%edx
	cmovll	%esi, %edx
	cmpl	$3, %r8d
	je	.LBB29_327
# BB#326:                               # %if.else.69.i
                                        #   in Loop: Header=BB29_314 Depth=1
	cmpl	$3, %r13d
	je	.LBB29_327
# BB#328:                               # %if.else.122.i
                                        #   in Loop: Header=BB29_314 Depth=1
	cmpl	$4, %r8d
	je	.LBB29_330
# BB#329:                               # %if.else.122.i
                                        #   in Loop: Header=BB29_314 Depth=1
	cmpl	$4, %r13d
	je	.LBB29_330
# BB#331:                               # %if.else.133.i
                                        #   in Loop: Header=BB29_314 Depth=1
	testl	%ebp, %ebp
	jne	.LBB29_334
# BB#332:                               # %land.lhs.true.i.258
                                        #   in Loop: Header=BB29_314 Depth=1
	movq	120(%rsp), %r9          # 8-byte Reload
	movl	9832(%r9), %esi
	movl	%esi, 224(%rsp)         # 4-byte Spill
	movl	9836(%r9), %r8d
	movl	%r8d, 216(%rsp)         # 4-byte Spill
	movl	%r15d, %esi
	subl	%r8d, %esi
	movl	%esi, %ebp
	negl	%ebp
	cmovll	%esi, %ebp
	movl	%r12d, %r13d
	subl	%r8d, %r13d
	movl	%r13d, %esi
	negl	%esi
	cmovll	%r13d, %esi
	cmpl	%esi, %ebp
	cmovlel	%ebp, %esi
	movl	224(%rsp), %ebp         # 4-byte Reload
	subl	9828(%r9), %ebp
	movslq	%ebp, %rbp
	imulq	$1717986919, %rbp, %rbp # imm = 0x66666667
	movq	%rbp, %r9
	shrq	$63, %r9
	sarq	$33, %rbp
	addl	%r9d, %ebp
	cmpl	%ebp, %esi
	jle	.LBB29_334
# BB#333:                               # %if.then.241.i
                                        #   in Loop: Header=BB29_314 Depth=1
	addl	%r12d, %r15d
	movl	%r15d, %ecx
	shrl	$31, %ecx
	addl	%r15d, %ecx
	sarl	%ecx
	cmpl	216(%rsp), %ecx         # 4-byte Folded Reload
	jle	.LBB29_323
	jmp	.LBB29_335
.LBB29_327:                             # %if.then.115.i
                                        #   in Loop: Header=BB29_314 Depth=1
	testl	%eax, %eax
	jg	.LBB29_335
	jmp	.LBB29_323
.LBB29_330:                             # %if.then.126.i
                                        #   in Loop: Header=BB29_314 Depth=1
	testl	%eax, %eax
	jns	.LBB29_323
	jmp	.LBB29_335
.LBB29_334:                             # %if.else.259.i
                                        #   in Loop: Header=BB29_314 Depth=1
	cmpl	%edx, %ecx
	jge	.LBB29_335
	.align	16, 0x90
.LBB29_323:                             # %if.then.65.i
                                        #   in Loop: Header=BB29_314 Depth=1
	addl	%r14d, %eax
	movl	%eax, %r11d
	jmp	.LBB29_336
.LBB29_335:                             # %if.else.263.i
                                        #   in Loop: Header=BB29_314 Depth=1
	movl	%r11d, %r14d
	subl	%eax, %r14d
.LBB29_336:                             # %if.end.270.i
                                        #   in Loop: Header=BB29_314 Depth=1
	movl	%r14d, 12(%rdi)
	movl	%r11d, 16(%rdi)
.LBB29_337:                             # %for.inc.i.261
                                        #   in Loop: Header=BB29_314 Depth=1
	addq	$68, %rdi
	decq	%rbx
	jne	.LBB29_314
# BB#338:                               # %for.body.lr.ph.i.266
	movq	120(%rsp), %r15         # 8-byte Reload
	movl	184(%r15), %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	168(%rsp), %rax         # 8-byte Reload
	jmp	.LBB29_339
.LBB29_378:                             # %for.inc.386.i.for.body.i.269_crit_edge
                                        #   in Loop: Header=BB29_339 Depth=1
	movq	7520(%r15), %rax
.LBB29_339:                             # %for.body.i.269
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_342 Depth 2
                                        #       Child Loop BB29_360 Depth 3
                                        #     Child Loop BB29_346 Depth 2
                                        #       Child Loop BB29_347 Depth 3
                                        #     Child Loop BB29_354 Depth 2
	imulq	$68, %rdx, %rdi
	movl	(%rax,%rdi), %r14d
	movl	%r14d, 208(%rsp)        # 4-byte Spill
	cmpl	$1, %r14d
	ja	.LBB29_377
# BB#340:                               # %if.then.i.271
                                        #   in Loop: Header=BB29_339 Depth=1
	movl	12(%rax,%rdi), %ecx
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	movl	16(%rax,%rdi), %ecx
	movl	%ecx, 184(%rsp)         # 4-byte Spill
	movl	$0, 9704(%r15)
	movl	48(%rax,%rdi), %ecx
	cmpl	$-1, %ecx
	je	.LBB29_376
# BB#341:                               # %for.body.21.lr.ph.i
                                        #   in Loop: Header=BB29_339 Depth=1
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	leaq	4(%rax,%rdi), %rdx
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	leaq	8(%rax,%rdi), %rdx
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	8176(%r15), %rax
	.align	16, 0x90
.LBB29_342:                             # %for.body.21.i
                                        #   Parent Loop BB29_339 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_360 Depth 3
	movq	%r15, %rbx
	movslq	%ecx, %rdx
	movswl	(%rax,%rdx,8), %ebp
	movswl	2(%rax,%rdx,8), %ecx
	cmpl	%ecx, %ebp
	jle	.LBB29_359
# BB#343:                               #   in Loop: Header=BB29_342 Depth=2
	movq	%rbx, %r15
	jmp	.LBB29_370
	.align	16, 0x90
.LBB29_359:                             # %for.body.32.lr.ph.i
                                        #   in Loop: Header=BB29_342 Depth=2
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	movslq	%ecx, %r13
	movslq	%ebp, %r12
	movq	%r12, %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %r14
	decq	%r12
	movl	176(%rsp), %r15d        # 4-byte Reload
	.align	16, 0x90
.LBB29_360:                             # %for.body.32.i.279
                                        #   Parent Loop BB29_339 Depth=1
                                        #     Parent Loop BB29_342 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	5472(%rbx), %rax
	cmpl	$1, 24(%rax,%r14)
	jne	.LBB29_368
# BB#361:                               # %if.end.i.280
                                        #   in Loop: Header=BB29_360 Depth=3
	cmpl	$0, 208(%rsp)           # 4-byte Folded Reload
	je	.LBB29_363
# BB#362:                               # %land.lhs.true.i.285
                                        #   in Loop: Header=BB29_360 Depth=3
	movl	(%rax,%r14), %eax
	jmp	.LBB29_364
.LBB29_363:                             # %land.lhs.true.75.i
                                        #   in Loop: Header=BB29_360 Depth=3
	movl	4(%rax,%r14), %eax
.LBB29_364:                             # %land.lhs.true.75.i
                                        #   in Loop: Header=BB29_360 Depth=3
	movl	%eax, %ecx
	movq	240(%rsp), %rdx         # 8-byte Reload
	subl	(%rdx), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovll	%ecx, %edx
	cmpl	%r15d, %edx
	jle	.LBB29_366
# BB#365:                               # %land.lhs.true.97.i
                                        #   in Loop: Header=BB29_360 Depth=3
	movq	232(%rsp), %rcx         # 8-byte Reload
	subl	(%rcx), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	cmpl	%r15d, %ecx
	jg	.LBB29_367
.LBB29_366:                             # %if.then.116.i.292
                                        #   in Loop: Header=BB29_360 Depth=3
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	t1_hinter__store_hint_applying
	movl	%eax, %esi
.LBB29_367:                             # %cleanup.i.293
                                        #   in Loop: Header=BB29_360 Depth=3
	testl	%esi, %esi
	js	.LBB29_494
.LBB29_368:                             # %for.inc.i.296
                                        #   in Loop: Header=BB29_360 Depth=3
	incl	%ebp
	addq	$48, %r14
	incq	%r12
	cmpq	%r13, %r12
	jl	.LBB29_360
# BB#369:                               # %for.inc.130.i.loopexit
                                        #   in Loop: Header=BB29_342 Depth=2
	movq	%rbx, %r15
	movq	8176(%r15), %rax
	movl	208(%rsp), %r14d        # 4-byte Reload
	movq	224(%rsp), %rdx         # 8-byte Reload
.LBB29_370:                             # %for.inc.130.i
                                        #   in Loop: Header=BB29_342 Depth=2
	movl	4(%rax,%rdx,8), %ecx
	cmpl	$-1, %ecx
	jne	.LBB29_342
# BB#344:                               # %for.cond.135.preheader.i
                                        #   in Loop: Header=BB29_339 Depth=1
	movslq	9704(%r15), %r11
	testq	%r11, %r11
	jle	.LBB29_375
# BB#345:                               # %for.body.139.lr.ph.i
                                        #   in Loop: Header=BB29_339 Depth=1
	movl	%esi, 128(%rsp)         # 4-byte Spill
	movq	9624(%r15), %rbx
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movq	5472(%r15), %r13
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movq	240(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 240(%rsp)         # 4-byte Spill
	movq	232(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %ecx
	movl	%ecx, 232(%rsp)         # 4-byte Spill
	subl	%eax, %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovll	%ecx, %esi
	leal	(%rsi,%rsi,4), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%ecx, %eax
	sarl	$2, %eax
	movl	%eax, 216(%rsp)         # 4-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB29_346:                             # %for.body.209.lr.ph.i
                                        #   Parent Loop BB29_339 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_347 Depth 3
	movq	%rax, 200(%rsp)         # 8-byte Spill
	leaq	(%rax,%rax,2), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movslq	(%rbx,%rax,4), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	leaq	(%r13,%rcx), %rsi
	testl	%r14d, %r14d
	leaq	4(%r13,%rcx), %rcx
	movq	%rsi, %rdi
	cmoveq	%rcx, %rdi
	movl	(%rdi), %edi
	cmovneq	%rcx, %rsi
	movl	(%rsi), %eax
	movl	%eax, 224(%rsp)         # 4-byte Spill
	movl	240(%rsp), %ecx         # 4-byte Reload
	subl	%edi, %ecx
	movl	%ecx, %ebp
	negl	%ebp
	cmovll	%ecx, %ebp
	movl	232(%rsp), %ecx         # 4-byte Reload
	subl	%edi, %ecx
	movl	%ecx, %edi
	negl	%edi
	cmovll	%ecx, %edi
	movl	$-1, %esi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB29_347:                             # %for.body.209.i
                                        #   Parent Loop BB29_339 Depth=1
                                        #     Parent Loop BB29_346 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%edi, %ebp
	setg	%r10b
	movslq	(%rbx), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	(%r13,%rax), %r9
	testl	%r14d, %r14d
	leaq	4(%r13,%rax), %r8
	movq	%r9, %rax
	cmoveq	%r8, %rax
	movl	(%rax), %eax
	movl	240(%rsp), %r12d        # 4-byte Reload
	subl	%eax, %r12d
	movl	%r14d, %r15d
	movl	%r12d, %r14d
	negl	%r14d
	cmovll	%r12d, %r14d
	movl	232(%rsp), %edx         # 4-byte Reload
	subl	%eax, %edx
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	cmpl	%eax, %r14d
	setg	%al
	movzbl	%al, %eax
	movzbl	%r10b, %edx
	cmpl	%eax, %edx
	je	.LBB29_349
# BB#348:                               # %if.then.262.i
                                        #   in Loop: Header=BB29_347 Depth=3
	testl	%r15d, %r15d
	cmoveq	%r9, %r8
	movl	(%r8), %eax
	subl	224(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	cmpl	%edx, 216(%rsp)         # 4-byte Folded Reload
	cmovgl	%ecx, %esi
.LBB29_349:                             # %if.end.277.i
                                        #   in Loop: Header=BB29_347 Depth=3
	movl	%r15d, %r14d
	incq	%rcx
	addq	$12, %rbx
	cmpq	%rcx, %r11
	jne	.LBB29_347
# BB#350:                               # %for.end.280.i
                                        #   in Loop: Header=BB29_346 Depth=2
	cmpl	$-1, %esi
	movq	160(%rsp), %rbx         # 8-byte Reload
	je	.LBB29_352
# BB#351:                               # %if.then.283.i
                                        #   in Loop: Header=BB29_346 Depth=2
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%esi, 4(%rbx,%rax,4)
	movslq	%esi, %rax
	leaq	(%rax,%rax,2), %rax
	movl	%r11d, 4(%rbx,%rax,4)
.LBB29_352:                             # %if.end.288.i
                                        #   in Loop: Header=BB29_346 Depth=2
	movq	200(%rsp), %rax         # 8-byte Reload
	incq	%rax
	cmpq	%r11, %rax
	jne	.LBB29_346
# BB#353:                               # %for.body.296.lr.ph.i
                                        #   in Loop: Header=BB29_339 Depth=1
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	28(%rcx,%rax), %r10
	leaq	32(%rcx,%rax), %r9
	leaq	64(%rcx,%rax), %r15
	leaq	60(%rcx,%rax), %r8
	addq	$4, %rbx
	movl	152(%rsp), %r12d        # 4-byte Reload
	.align	16, 0x90
.LBB29_354:                             # %for.body.296.i
                                        #   Parent Loop BB29_339 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbx), %rcx
	leaq	(%rcx,%rcx,2), %rsi
	shlq	$4, %rsi
	leaq	(%r13,%rsi), %rcx
	testl	%r14d, %r14d
	leaq	4(%r13,%rsi), %rdx
	cmovneq	%rcx, %rdx
	movl	(%rdx), %ecx
	movl	240(%rsp), %edx         # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, %edi
	negl	%edi
	cmovll	%edx, %edi
	movl	232(%rsp), %edx         # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	cmpl	%ecx, %edi
	movq	%r10, %rbp
	cmovgq	%r9, %rbp
	movl	%r12d, %edi
	cmovgl	184(%rsp), %edi         # 4-byte Folded Reload
	movq	%r15, %rcx
	cmovgq	%r8, %rcx
	movl	(%rcx), %eax
	movl	$1, %ecx
	cmpl	$-1, (%rbx)
	je	.LBB29_356
# BB#355:                               # %select.mid1247
                                        #   in Loop: Header=BB29_354 Depth=2
	movl	(%rbp), %ecx
.LBB29_356:                             # %select.end1246
                                        #   in Loop: Header=BB29_354 Depth=2
	testl	%r14d, %r14d
	je	.LBB29_371
# BB#357:                               # %if.then.363.i
                                        #   in Loop: Header=BB29_354 Depth=2
	cmpl	%ecx, 32(%r13,%rsi)
	jae	.LBB29_373
# BB#358:                               # %if.then.366.i
                                        #   in Loop: Header=BB29_354 Depth=2
	leaq	32(%r13,%rsi), %rdx
	movl	%edi, 8(%r13,%rsi)
	movl	%ecx, (%rdx)
	movl	%eax, 40(%r13,%rsi)
	jmp	.LBB29_373
.LBB29_371:                             # %if.else.369.i
                                        #   in Loop: Header=BB29_354 Depth=2
	cmpl	%ecx, 36(%r13,%rsi)
	jae	.LBB29_373
# BB#372:                               # %if.then.372.i
                                        #   in Loop: Header=BB29_354 Depth=2
	leaq	36(%r13,%rsi), %rdx
	movl	%edi, 12(%r13,%rsi)
	movl	%ecx, (%rdx)
	movl	%eax, 44(%r13,%rsi)
	.align	16, 0x90
.LBB29_373:                             # %if.end.375.i
                                        #   in Loop: Header=BB29_354 Depth=2
	addq	$12, %rbx
	decq	%r11
	jne	.LBB29_354
# BB#374:                               #   in Loop: Header=BB29_339 Depth=1
	movq	120(%rsp), %r15         # 8-byte Reload
	movl	128(%rsp), %esi         # 4-byte Reload
.LBB29_375:                             # %for.inc.386.loopexit.i
                                        #   in Loop: Header=BB29_339 Depth=1
	movq	144(%rsp), %rdx         # 8-byte Reload
.LBB29_376:                             # %for.inc.386.loopexit.i
                                        #   in Loop: Header=BB29_339 Depth=1
	movl	9688(%r15), %r10d
.LBB29_377:                             # %for.inc.386.i
                                        #   in Loop: Header=BB29_339 Depth=1
	incq	%rdx
	movslq	%r10d, %rax
	cmpq	%rax, %rdx
	jl	.LBB29_378
# BB#379:                               # %if.end.30
	testl	%r10d, %r10d
	jle	.LBB29_422
# BB#380:                               # %for.body.lr.ph.i.315
	xorl	%edx, %edx
.LBB29_381:                             # %for.body.i.319
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_401 Depth 2
                                        #     Child Loop BB29_386 Depth 2
                                        #     Child Loop BB29_409 Depth 2
                                        #     Child Loop BB29_419 Depth 2
	movq	7520(%r15), %r9
	imulq	$68, %rdx, %rax
	cmpl	$2, (%r9,%rax)
	jne	.LBB29_421
# BB#382:                               # %if.then.i.326
                                        #   in Loop: Header=BB29_381 Depth=1
	movslq	48(%r9,%rax), %rax
	movq	8176(%r15), %rcx
	movswq	(%rcx,%rax,8), %rax
	movq	5472(%r15), %rsi
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movslq	28(%rsi,%rax), %rax
	movq	7696(%r15), %rcx
	movslq	(%rcx,%rax,4), %r13
	movslq	4(%rcx,%rax,4), %r11
	leaq	-2(%r11), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	leaq	(%r13,%r13,2), %r12
	shlq	$4, %r12
	movl	(%rsi,%r12), %r15d
	movl	4(%rsi,%r12), %r8d
	cmpl	%eax, %r13d
	jge	.LBB29_383
# BB#396:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB29_381 Depth=1
	movl	%r11d, %eax
	subl	%r13d, %eax
	leal	-3(%r11), %r14d
	testb	$1, %al
	jne	.LBB29_398
# BB#397:                               #   in Loop: Header=BB29_381 Depth=1
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	movq	%rdx, 224(%rsp)         # 8-byte Spill
                                        # implicit-def: EDI
                                        # implicit-def: EBP
                                        # implicit-def: EDX
	movq	%r13, %rax
	movl	%r15d, %ecx
	movl	%r15d, %esi
	movl	%r8d, %ebx
	jmp	.LBB29_399
.LBB29_383:                             #   in Loop: Header=BB29_381 Depth=1
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	movq	%r13, 232(%rsp)         # 8-byte Spill
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	movl	%r15d, %ecx
	movl	%r8d, %edx
	movl	%r15d, %ebp
	movl	%r8d, %edi
	jmp	.LBB29_384
.LBB29_398:                             # %for.body.i.i.prol
                                        #   in Loop: Header=BB29_381 Depth=1
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	leaq	1(%r13), %rax
	leaq	(%rax,%rax,2), %rcx
	shlq	$4, %rcx
	movl	(%rsi,%rcx), %ebp
	movl	4(%rsi,%rcx), %edi
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	cmpl	%ebp, %r15d
	movl	%ebp, %ecx
	cmovlel	%r15d, %ecx
	cmovgel	%r15d, %ebp
	cmpl	%edi, %r8d
	movl	%edi, %edx
	cmovlel	%r8d, %edx
	cmovgel	%r8d, %edi
	movl	%edx, %r8d
	movl	%ebp, %esi
	movl	%edi, %ebx
.LBB29_399:                             # %for.body.i.i.preheader.split
                                        #   in Loop: Header=BB29_381 Depth=1
	cmpl	%r13d, %r14d
	movq	%r13, 232(%rsp)         # 8-byte Spill
	je	.LBB29_384
# BB#400:                               # %for.body.i.i.preheader.split.split
                                        #   in Loop: Header=BB29_381 Depth=1
	addl	$-2, %r11d
	subl	%eax, %r11d
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rax
	movq	216(%rsp), %rdx         # 8-byte Reload
	leaq	100(%rdx,%rax,4), %rax
	movl	%r8d, %edx
	.align	16, 0x90
.LBB29_401:                             # %for.body.i.i
                                        #   Parent Loop BB29_381 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rax), %ebp
	movl	-48(%rax), %edi
	cmpl	%ebp, %ecx
	cmovgl	%ebp, %ecx
	cmpl	%edi, %edx
	cmovgl	%edi, %edx
	cmpl	%ebp, %esi
	cmovgel	%esi, %ebp
	cmpl	%edi, %ebx
	cmovgel	%ebx, %edi
	movl	-4(%rax), %esi
	movl	(%rax), %ebx
	cmpl	%esi, %ecx
	cmovgl	%esi, %ecx
	cmpl	%ebx, %edx
	cmovgl	%ebx, %edx
	cmpl	%esi, %ebp
	cmovll	%esi, %ebp
	cmpl	%ebx, %edi
	cmovll	%ebx, %edi
	addq	$96, %rax
	addl	$-2, %r11d
	movl	%ebp, %esi
	movl	%edi, %ebx
	jne	.LBB29_401
.LBB29_384:                             # %for.cond.30.preheader.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	xorl	%r14d, %r14d
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	240(%rsp), %rsi         # 8-byte Reload
	cmpl	%esi, %eax
	movl	$0, %r11d
	movl	$0, %r8d
	movl	$0, %r13d
	jg	.LBB29_402
# BB#385:                               # %for.body.32.lr.ph.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	movq	216(%rsp), %rax         # 8-byte Reload
	leaq	48(%rax,%r12), %rax
	movq	232(%rsp), %rsi         # 8-byte Reload
	leaq	-1(%rsi), %rsi
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	xorl	%r8d, %r8d
	xorl	%r13d, %r13d
	jmp	.LBB29_386
	.align	16, 0x90
.LBB29_395:                             # %for.inc.78.for.body.32_crit_edge.i.i
                                        #   in Loop: Header=BB29_386 Depth=2
	movl	(%rax), %r15d
	addq	$48, %rax
.LBB29_386:                             # %for.body.32.i.i
                                        #   Parent Loop BB29_381 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, %r15d
	jne	.LBB29_388
# BB#387:                               # %if.then.i.i.328
                                        #   in Loop: Header=BB29_386 Depth=2
	orl	-16(%rax), %r13d
.LBB29_388:                             # %if.end.i.i.329
                                        #   in Loop: Header=BB29_386 Depth=2
	movl	-44(%rax), %ebx
	cmpl	%edx, %ebx
	jne	.LBB29_390
# BB#389:                               # %if.then.47.i.i
                                        #   in Loop: Header=BB29_386 Depth=2
	orl	-12(%rax), %r8d
.LBB29_390:                             # %if.end.53.i.i
                                        #   in Loop: Header=BB29_386 Depth=2
	cmpl	%ebp, %r15d
	jne	.LBB29_392
# BB#391:                               # %if.then.59.i.i
                                        #   in Loop: Header=BB29_386 Depth=2
	orl	-16(%rax), %r11d
.LBB29_392:                             # %if.end.65.i.i
                                        #   in Loop: Header=BB29_386 Depth=2
	cmpl	%edi, %ebx
	jne	.LBB29_394
# BB#393:                               # %if.then.71.i.i
                                        #   in Loop: Header=BB29_386 Depth=2
	orl	-12(%rax), %r14d
.LBB29_394:                             # %for.inc.78.i.i
                                        #   in Loop: Header=BB29_386 Depth=2
	incq	%rsi
	cmpq	240(%rsp), %rsi         # 8-byte Folded Reload
	jl	.LBB29_395
.LBB29_402:                             # %for.end.80.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	testl	%r13d, %r13d
	setne	%bl
	testl	%r11d, %r11d
	setne	%al
	andb	%bl, %al
	testl	%r8d, %r8d
	setne	%sil
	testl	%r14d, %r14d
	setne	%bl
	andb	%sil, %bl
	movzbl	%bl, %r15d
	cmpl	$1, %r15d
	jne	.LBB29_404
# BB#403:                               # %for.end.80.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	testb	%al, %al
	jne	.LBB29_420
.LBB29_404:                             # %if.end.90.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	movb	%bl, 216(%rsp)          # 1-byte Spill
	movzbl	%al, %r14d
	testl	%r11d, %r11d
	sete	%al
	testl	%r13d, %r13d
	sete	%sil
	addl	%ecx, %ebp
	movl	%ebp, %r13d
	shrl	$31, %r13d
	addl	%ebp, %r13d
	sarl	%r13d
	movl	%r13d, 268(%rsp)
	addl	%edx, %edi
	movl	%edi, %ebx
	shrl	$31, %ebx
	addl	%edi, %ebx
	sarl	%ebx
	movl	%ebx, 264(%rsp)
	testl	%r10d, %r10d
	jle	.LBB29_405
# BB#406:                               # %if.end.90.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	orb	%sil, %al
	je	.LBB29_407
# BB#408:                               # %for.body.lr.ph.i.i.i.335
                                        #   in Loop: Header=BB29_381 Depth=1
	movslq	%r10d, %rcx
	movl	$256, %edx              # imm = 0x100
	xorl	%eax, %eax
	.align	16, 0x90
.LBB29_409:                             # %for.body.i.i.i.339
                                        #   Parent Loop BB29_381 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, (%r9)
	jne	.LBB29_411
# BB#410:                               # %if.then.i.i.i.345
                                        #   in Loop: Header=BB29_409 Depth=2
	movl	16(%r9), %esi
	addl	12(%r9), %esi
	movl	%esi, %edi
	shrl	$31, %edi
	addl	%esi, %edi
	sarl	%edi
	movl	%r13d, %esi
	subl	%edi, %esi
	movl	%esi, %edi
	negl	%edi
	cmovll	%esi, %edi
	cmpl	%edi, %edx
	cmovgq	%r9, %rax
	cmovgl	%edi, %edx
.LBB29_411:                             # %for.inc.i.i.i.347
                                        #   in Loop: Header=BB29_409 Depth=2
	addq	$68, %r9
	decq	%rcx
	jne	.LBB29_409
# BB#412:                               # %t1_hinter__find_vstem_by_center.exit.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	testq	%rax, %rax
	movl	%r13d, %edx
	je	.LBB29_414
# BB#413:                               # %if.then.97.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	movl	16(%rax), %ecx
	addl	12(%rax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, 268(%rsp)
	movl	$1, %r14d
	jmp	.LBB29_414
.LBB29_405:                             #   in Loop: Header=BB29_381 Depth=1
	movl	%r13d, %edx
	jmp	.LBB29_414
.LBB29_407:                             #   in Loop: Header=BB29_381 Depth=1
	movl	%r13d, %edx
.LBB29_414:                             # %do.end.104.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	movq	120(%rsp), %rbp         # 8-byte Reload
	movl	64(%rbp), %eax
	cmpl	$2, %eax
	jl	.LBB29_415
# BB#416:                               # %if.then.i.99.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	movq	%rbp, %rdi
	movl	%ebx, %ecx
	leaq	276(%rsp), %r8
	leaq	272(%rsp), %r9
	callq	t1_hinter__align_to_grid__general
	movl	276(%rsp), %ecx
	movl	272(%rsp), %r8d
	movq	%rbp, %rdi
	leaq	268(%rsp), %rsi
	leaq	264(%rsp), %rdx
	callq	t1_hinter__align_to_grid__final
	movl	268(%rsp), %edx
	movl	264(%rsp), %eax
	jmp	.LBB29_417
.LBB29_415:                             #   in Loop: Header=BB29_381 Depth=1
	movl	%ebx, %eax
.LBB29_417:                             # %t1_hinter__align_to_grid.exit.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	movq	232(%rsp), %rdi         # 8-byte Reload
	movb	216(%rsp), %cl          # 1-byte Reload
	subl	%r13d, %edx
	subl	%ebx, %eax
	testl	%r14d, %r14d
	movl	$0, %esi
	cmovnel	%esi, %edx
	testb	%cl, %cl
	cmovnel	%esi, %eax
	movq	240(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %edi
	jg	.LBB29_420
# BB#418:                               # %for.body.118.lr.ph.i.i
                                        #   in Loop: Header=BB29_381 Depth=1
	xorl	$1, %r14d
	xorl	$1, %r15d
	movq	240(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	decq	%rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	addq	5472(%rsi), %r12
	.align	16, 0x90
.LBB29_419:                             # %for.body.118.i.i
                                        #   Parent Loop BB29_381 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12), %esi
	addl	%edx, %esi
	movl	%esi, 8(%r12)
	movl	4(%r12), %esi
	addl	%eax, %esi
	movl	%esi, 12(%r12)
	orl	%r14d, 32(%r12)
	orl	%r15d, 36(%r12)
	incq	%rdi
	addq	$48, %r12
	cmpq	%rcx, %rdi
	jl	.LBB29_419
.LBB29_420:                             # %t1_hinter__process_dotsection.exit.i
                                        #   in Loop: Header=BB29_381 Depth=1
	movq	120(%rsp), %r15         # 8-byte Reload
	movl	9688(%r15), %r10d
	movq	224(%rsp), %rdx         # 8-byte Reload
.LBB29_421:                             # %for.inc.i.355
                                        #   in Loop: Header=BB29_381 Depth=1
	incq	%rdx
	movslq	%r10d, %rax
	cmpq	%rax, %rdx
	jl	.LBB29_381
.LBB29_422:                             # %t1_hinter__process_dotsections.exit
	movq	5472(%r15), %r13
	movq	%r13, 208(%rsp)         # 8-byte Spill
	movl	9664(%r15), %eax
	leaq	4(%r13), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	leaq	36(%r13), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	leaq	32(%r13), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leaq	44(%r13), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leaq	40(%r13), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	12(%r13), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	8(%r13), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%r13, %rcx
	negq	%rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB29_423:                             # %for.body.i.369
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_436 Depth 2
                                        #       Child Loop BB29_438 Depth 3
                                        #       Child Loop BB29_440 Depth 3
                                        #         Child Loop BB29_441 Depth 4
                                        #           Child Loop BB29_442 Depth 5
                                        #         Child Loop BB29_459 Depth 4
                                        #         Child Loop BB29_470 Depth 4
	testl	%eax, %eax
	jle	.LBB29_424
# BB#433:                               # %for.body.70.lr.ph.i
                                        #   in Loop: Header=BB29_423 Depth=1
	testl	%ecx, %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %r9d
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmovnel	%ecx, %r9d
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %edx
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmovnel	%ecx, %edx
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %esi
	cmovnel	%r13d, %esi
	movl	%r13d, %edi
	cmovnel	%ebx, %edi
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	cmovnel	%ecx, %ebx
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rbx), %r8d
	subl	%r13d, %ebx
	subl	%r13d, %r9d
	subl	%r13d, %edx
	subl	%r13d, %esi
	subl	%r13d, %edi
	movslq	%ebx, %rcx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movslq	%edi, %rcx
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	movslq	%esi, %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movslq	%edx, %r10
	movq	%r10, 152(%rsp)         # 8-byte Spill
	movslq	%r9d, %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	7696(%r15), %rsi
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movslq	%r8d, %rcx
	leaq	(%rcx,%r13), %rdi
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB29_436:                             # %for.body.70.i
                                        #   Parent Loop BB29_423 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_438 Depth 3
                                        #       Child Loop BB29_440 Depth 3
                                        #         Child Loop BB29_441 Depth 4
                                        #           Child Loop BB29_442 Depth 5
                                        #         Child Loop BB29_459 Depth 4
                                        #         Child Loop BB29_470 Depth 4
	movslq	(%rsi,%rbx,4), %r12
	movq	%r12, 192(%rsp)         # 8-byte Spill
	movslq	4(%rsi,%rbx,4), %rcx
	incq	%rbx
	addq	$-2, %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	cmpl	%ecx, %r12d
	jg	.LBB29_435
# BB#437:                               # %for.body.78.lr.ph.i
                                        #   in Loop: Header=BB29_436 Depth=2
	movq	%r15, %rbp
	leaq	(%r12,%r12,2), %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rdi), %rcx
	movq	%r12, %rdx
	.align	16, 0x90
.LBB29_438:                             # %for.body.78.i
                                        #   Parent Loop BB29_423 Depth=1
                                        #     Parent Loop BB29_436 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, (%rcx)
	jne	.LBB29_439
# BB#446:                               # %for.inc.i.374
                                        #   in Loop: Header=BB29_438 Depth=3
	addq	$48, %rcx
	cmpq	232(%rsp), %rdx         # 8-byte Folded Reload
	leaq	1(%rdx), %rdx
	jl	.LBB29_438
# BB#447:                               #   in Loop: Header=BB29_436 Depth=2
	movq	%rbp, %r15
	jmp	.LBB29_435
	.align	16, 0x90
.LBB29_439:                             # %do.body.preheader.i
                                        #   in Loop: Header=BB29_436 Depth=2
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movl	%edx, %r14d
	.align	16, 0x90
.LBB29_440:                             # %do.body.i
                                        #   Parent Loop BB29_423 Depth=1
                                        #     Parent Loop BB29_436 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB29_441 Depth 4
                                        #           Child Loop BB29_442 Depth 5
                                        #         Child Loop BB29_459 Depth 4
                                        #         Child Loop BB29_470 Depth 4
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movl	%r14d, %ebx
	movslq	%ebx, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$4, %rdx
	leaq	(%rdx,%r13), %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	240(%rsp), %rax         # 8-byte Reload
	movl	(%rax,%rdx), %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	216(%rsp), %rax         # 8-byte Reload
	movl	(%rax,%rdx), %eax
	movl	%eax, 160(%rsp)         # 4-byte Spill
	movl	(%r10,%rdx), %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	leal	1(%rcx), %edx
	movq	232(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ecx
	cmovel	%r12d, %edx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movl	$-1, 224(%rsp)          # 4-byte Folded Spill
	movl	%ebx, %r10d
	movl	%ebx, %r9d
	.align	16, 0x90
.LBB29_441:                             # %do.body.87.i
                                        #   Parent Loop BB29_423 Depth=1
                                        #     Parent Loop BB29_436 Depth=2
                                        #       Parent Loop BB29_440 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB29_442 Depth 5
	movl	$1, %edx
	xorl	%ebp, %ebp
	movq	168(%rsp), %rax         # 8-byte Reload
	cmpl	%ebx, %eax
	movl	%eax, %r14d
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	movl	%eax, %r15d
	movl	160(%rsp), %esi         # 4-byte Reload
	movl	%esi, %edi
	movl	$0, %r12d
	movl	176(%rsp), %r13d        # 4-byte Reload
	movl	%eax, %r11d
	movl	%ebx, %eax
	je	.LBB29_451
	.align	16, 0x90
.LBB29_442:                             # %for.body.106.i
                                        #   Parent Loop BB29_423 Depth=1
                                        #     Parent Loop BB29_436 Depth=2
                                        #       Parent Loop BB29_440 Depth=3
                                        #         Parent Loop BB29_441 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%rbx, %r13
	movslq	%r14d, %rax
	leaq	(%rax,%rax,2), %rcx
	shlq	$4, %rcx
	movq	208(%rsp), %rbx         # 8-byte Reload
	leaq	(%rcx,%rbx), %rcx
	movq	240(%rsp), %rbx         # 8-byte Reload
	movl	(%rbx,%rcx), %r11d
	movq	216(%rsp), %rbx         # 8-byte Reload
	movl	(%rbx,%rcx), %ebx
	cmpl	%r11d, %r8d
	cmovgl	%edx, %ebp
	cmovgl	%r14d, %r9d
	cmovgl	%r11d, %r8d
	cmpl	%r11d, %r15d
	cmovll	%edx, %r12d
	cmovll	%r14d, %r10d
	cmovll	%r11d, %r15d
	cmpl	%ebx, %esi
	cmovgl	%ebx, %esi
	cmpl	%ebx, %edi
	cmovll	%ebx, %edi
	cmpl	224(%rsp), %eax         # 4-byte Folded Reload
	je	.LBB29_448
# BB#443:                               # %for.body.106.i
                                        #   in Loop: Header=BB29_442 Depth=5
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	(%rax,%rcx), %eax
	testl	%eax, %eax
	jne	.LBB29_448
# BB#444:                               # %for.inc.146.i.380
                                        #   in Loop: Header=BB29_442 Depth=5
	movq	232(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r14d
	leal	1(%r14), %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	cmovel	%ecx, %eax
	incl	%edx
	movq	%r13, %rbx
	cmpl	%ebx, %eax
	movl	%eax, %r14d
	jne	.LBB29_442
# BB#445:                               #   in Loop: Header=BB29_441 Depth=4
	movl	176(%rsp), %r13d        # 4-byte Reload
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r11d
	movl	%ebx, %eax
	jmp	.LBB29_451
	.align	16, 0x90
.LBB29_448:                             # %if.then.162.i
                                        #   in Loop: Header=BB29_441 Depth=4
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	(%rcx,%rax), %ebx
	movl	%ebx, 224(%rsp)         # 4-byte Spill
	movq	184(%rsp), %rax         # 8-byte Reload
	subl	%r11d, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movl	176(%rsp), %eax         # 4-byte Reload
	subl	%ebx, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	movslq	%ebx, %rax
	imulq	$1717986919, %rax, %rax # imm = 0x66666667
	movq	%rax, %rbx
	shrq	$63, %rbx
	sarq	$34, %rax
	addl	%ebx, %eax
	cmpl	%eax, %ecx
	jge	.LBB29_450
# BB#449:                               #   in Loop: Header=BB29_441 Depth=4
	movl	%r14d, %eax
	movq	%r13, %rbx
	movl	224(%rsp), %r13d        # 4-byte Reload
	jmp	.LBB29_451
.LBB29_450:                             # %if.then.185.i
                                        #   in Loop: Header=BB29_441 Depth=4
	movl	%r15d, %eax
	subl	%r8d, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	subl	%esi, %edi
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$30, %esi
	addl	%eax, %esi
	sarl	$2, %esi
	cmpl	%esi, %ecx
	movl	%r14d, %eax
	movq	%r13, %rbx
	movl	224(%rsp), %r13d        # 4-byte Reload
	jle	.LBB29_452
	.align	16, 0x90
.LBB29_451:                             # %cleanup.238.i
                                        #   in Loop: Header=BB29_441 Depth=4
	cmpl	%ebx, %r9d
	movl	%eax, %edi
	sete	%al
	cmpl	%edx, %ebp
	setge	%cl
	orb	%al, %cl
	movq	184(%rsp), %rsi         # 8-byte Reload
	cmpl	%esi, %r8d
	sete	%al
	orb	%cl, %al
	cmpl	%r11d, %r8d
	sete	%cl
	orb	%al, %cl
	cmovnel	%edx, %ebp
	cmovel	%r9d, %edi
	cmpl	%ebx, %r10d
	sete	%al
	cmpl	%ebp, %r12d
	setge	%cl
	orb	%al, %cl
	cmpl	%esi, %r15d
	sete	%al
	orb	%cl, %al
	cmpl	%r11d, %r15d
	sete	%cl
	orb	%al, %cl
	cmovel	%r12d, %ebp
	cmovel	%r10d, %edi
	cmpl	%edx, %ebp
	movl	%edi, 224(%rsp)         # 4-byte Spill
	movl	%edi, %r14d
	jl	.LBB29_441
.LBB29_452:                             # %do.end.i
                                        #   in Loop: Header=BB29_440 Depth=3
	movq	184(%rsp), %rax         # 8-byte Reload
	cmpl	%r11d, %eax
	movl	%eax, %r9d
	cmovll	%r11d, %r9d
	cmovlel	%eax, %r11d
	movl	176(%rsp), %eax         # 4-byte Reload
	movl	%eax, %edx
	cmovll	%r13d, %edx
	movl	%r13d, %ecx
	cmovll	%eax, %ecx
	movl	%eax, %r8d
	cmpl	%r11d, %r9d
	jne	.LBB29_453
# BB#454:                               # %do.end.i
                                        #   in Loop: Header=BB29_440 Depth=3
	movl	%r13d, %edi
	movq	%rbx, %r15
	cmpl	%edx, %ecx
	movq	208(%rsp), %r13         # 8-byte Reload
	movq	152(%rsp), %r10         # 8-byte Reload
	movq	192(%rsp), %r12         # 8-byte Reload
	movq	168(%rsp), %rbp         # 8-byte Reload
	je	.LBB29_458
# BB#455:                               # %if.then.257.i
                                        #   in Loop: Header=BB29_440 Depth=3
	movq	128(%rsp), %rdx         # 8-byte Reload
	movq	136(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx,%rdx), %esi
	movslq	%r14d, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%r13), %rcx
	cmpl	(%rdx,%rcx), %esi
	jl	.LBB29_457
# BB#456:                               # %select.mid1287
                                        #   in Loop: Header=BB29_440 Depth=3
	movl	%r8d, %edi
.LBB29_457:                             # %select.end1286
                                        #   in Loop: Header=BB29_440 Depth=3
	movl	%edi, %edx
	movl	%edi, %ecx
	jmp	.LBB29_458
	.align	16, 0x90
.LBB29_453:                             #   in Loop: Header=BB29_440 Depth=3
	movq	%rbx, %r15
	movq	208(%rsp), %r13         # 8-byte Reload
	movq	152(%rsp), %r10         # 8-byte Reload
	movq	192(%rsp), %r12         # 8-byte Reload
	movq	168(%rsp), %rbp         # 8-byte Reload
.LBB29_458:                             # %if.end.273.i
                                        #   in Loop: Header=BB29_440 Depth=3
	movl	%ecx, 224(%rsp)         # 4-byte Spill
	movl	%edx, %esi
	subl	%r9d, %esi
	movl	%ecx, %edi
	subl	%r11d, %edi
	xorl	%ebx, %ebx
	movq	184(%rsp), %r8          # 8-byte Reload
	jmp	.LBB29_459
	.align	16, 0x90
.LBB29_466:                             # %for.inc.323.i
                                        #   in Loop: Header=BB29_459 Depth=4
	movq	232(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r15d
	leal	1(%r15), %eax
	cmovel	%r12d, %eax
	movslq	%eax, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%r13), %rcx
	movq	240(%rsp), %rbx         # 8-byte Reload
	movl	(%rbx,%rcx), %r8d
	movl	$1, %ebx
	movl	%eax, %r15d
.LBB29_459:                             # %for.cond.274.i
                                        #   Parent Loop BB29_423 Depth=1
                                        #     Parent Loop BB29_436 Depth=2
                                        #       Parent Loop BB29_440 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%r15d, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	(%rax,%r13), %rcx
	cmpl	%r11d, %r8d
	jle	.LBB29_460
# BB#461:                               # %if.else.296.i
                                        #   in Loop: Header=BB29_459 Depth=4
	cmpl	%r9d, %r8d
	jl	.LBB29_464
# BB#462:                               # %if.then.299.i
                                        #   in Loop: Header=BB29_459 Depth=4
	leal	(%r8,%rsi), %eax
	jmp	.LBB29_463
	.align	16, 0x90
.LBB29_460:                             # %if.then.283.i.389
                                        #   in Loop: Header=BB29_459 Depth=4
	leal	(%r8,%rdi), %eax
.LBB29_463:                             # %if.end.313.i
                                        #   in Loop: Header=BB29_459 Depth=4
	movl	%eax, (%rcx,%r10)
.LBB29_464:                             # %if.end.313.i
                                        #   in Loop: Header=BB29_459 Depth=4
	testl	%ebx, %ebx
	je	.LBB29_466
# BB#465:                               # %if.end.313.i
                                        #   in Loop: Header=BB29_459 Depth=4
	cmpl	%r14d, %r15d
	jne	.LBB29_466
# BB#467:                               # %for.end.325.i
                                        #   in Loop: Header=BB29_440 Depth=3
	movl	%r9d, %ecx
	subl	%r11d, %ecx
	movl	224(%rsp), %edi         # 4-byte Reload
	jle	.LBB29_474
# BB#468:                               # %if.then.328.i
                                        #   in Loop: Header=BB29_440 Depth=3
	subl	%edi, %edx
	cmpl	$524287, %edx           # imm = 0x7FFFF
	setg	%r8b
	cmpl	$524287, %ecx           # imm = 0x7FFFF
	setg	%bl
	movl	%edx, %eax
	sarl	$5, %eax
	movl	%ecx, %esi
	sarl	$5, %esi
	orb	%r8b, %bl
	cmovel	%edx, %eax
	cmovel	%ecx, %esi
	cmpl	%r14d, %ebp
	je	.LBB29_474
# BB#469:                               # %for.body.347.lr.ph.i
                                        #   in Loop: Header=BB29_440 Depth=3
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$12, %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	shll	$12, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	.align	16, 0x90
.LBB29_470:                             # %for.body.347.i
                                        #   Parent Loop BB29_423 Depth=1
                                        #     Parent Loop BB29_436 Depth=2
                                        #       Parent Loop BB29_440 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%ebp, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%r13), %rcx
	movq	240(%rsp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx), %esi
	movl	%esi, %edx
	subl	%r11d, %edx
	jle	.LBB29_473
# BB#471:                               # %for.body.347.i
                                        #   in Loop: Header=BB29_470 Depth=4
	cmpl	%r9d, %esi
	jge	.LBB29_473
# BB#472:                               # %if.then.359.i
                                        #   in Loop: Header=BB29_470 Depth=4
	movslq	%edx, %rdx
	imulq	%rax, %rdx
	shrq	$12, %rdx
	addl	%edi, %edx
	movl	%edx, (%rcx,%r10)
.LBB29_473:                             # %if.end.368.i
                                        #   in Loop: Header=BB29_470 Depth=4
	movq	232(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %ebp
	leal	1(%rbp), %ecx
	cmovel	%r12d, %ecx
	cmpl	%r14d, %ecx
	movl	%ecx, %ebp
	jne	.LBB29_470
.LBB29_474:                             # %if.end.372.i
                                        #   in Loop: Header=BB29_440 Depth=3
	movq	144(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %r14d
	jne	.LBB29_440
# BB#434:                               # %for.cond.67.loopexit.i
                                        #   in Loop: Header=BB29_436 Depth=2
	movq	120(%rsp), %r15         # 8-byte Reload
	movl	9664(%r15), %eax
	movq	104(%rsp), %rsi         # 8-byte Reload
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	112(%rsp), %rbx         # 8-byte Reload
.LBB29_435:                             # %for.cond.67.backedge.i
                                        #   in Loop: Header=BB29_436 Depth=2
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jl	.LBB29_436
	jmp	.LBB29_425
	.align	16, 0x90
.LBB29_424:                             #   in Loop: Header=BB29_423 Depth=1
	movq	%rcx, 88(%rsp)          # 8-byte Spill
.LBB29_425:                             # %for.end.384.i
                                        #   in Loop: Header=BB29_423 Depth=1
	movq	88(%rsp), %rcx          # 8-byte Reload
	incl	%ecx
	xorl	%esi, %esi
	cmpl	$2, %ecx
	jne	.LBB29_423
.LBB29_426:                             # %if.end.31
	movq	%r15, 120(%rsp)         # 8-byte Spill
	cmpl	$0, 9680(%r15)
	movq	%r15, %rbx
	je	.LBB29_494
# BB#427:                               # %if.then.33
	cmpl	$0, 176(%rbx)
	je	.LBB29_429
# BB#428:                               # %if.then.35
	movq	%rbx, %rdi
	callq	t1_hinter__fix_contour_signs
.LBB29_429:                             # %if.end.36
	xorl	%eax, %eax
	movq	%rax, 224(%rsp)         # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 216(%rsp)         # 4-byte Spill
.LBB29_430:                             # %for.cond.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_479 Depth 2
                                        #       Child Loop BB29_480 Depth 3
	movq	7696(%rbx), %rax
	movq	224(%rsp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rcx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movq	5472(%rbx), %rax
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movslq	8(%rax,%rcx), %rdx
	movslq	(%rbx), %rdi
	imulq	%rdx, %rdi
	shrq	$11, %rdi
	incq	%rdi
	shrq	%rdi
	movslq	12(%rax,%rcx), %rax
	movslq	8(%rbx), %rsi
	imulq	%rax, %rsi
	shrq	$11, %rsi
	incq	%rsi
	shrq	%rsi
	addl	%edi, %esi
	movslq	4(%rbx), %rcx
	imulq	%rdx, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	movslq	12(%rbx), %rdx
	imulq	%rax, %rdx
	shrq	$11, %rdx
	incq	%rdx
	shrq	%rdx
	addl	%ecx, %edx
	movl	48(%rbx), %ecx
	leal	-8(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB29_431
# BB#475:                               # %if.then.i.i.i.412
                                        #   in Loop: Header=BB29_430 Depth=1
	addl	$-9, %ecx
	sarl	%cl, %esi
	incl	%esi
	sarl	%esi
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	jmp	.LBB29_476
.LBB29_431:                             # %if.else.i.24.i.i
                                        #   in Loop: Header=BB29_430 Depth=1
	je	.LBB29_476
# BB#432:                               # %if.else.7.i.i.i
                                        #   in Loop: Header=BB29_430 Depth=1
	movl	$8, %eax
	subl	%ecx, %eax
	movb	%al, %cl
	shll	%cl, %esi
	movb	%al, %cl
	shll	%cl, %edx
.LBB29_476:                             # %g2d.exit.i
                                        #   in Loop: Header=BB29_430 Depth=1
	addl	84(%rbx), %esi
	addl	88(%rbx), %edx
	movq	9840(%rbx), %rdi
	callq	gx_path_add_point
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB29_494
# BB#477:                               # %if.end.i.417
                                        #   in Loop: Header=BB29_430 Depth=1
	movslq	9664(%rbx), %rax
	xorl	%esi, %esi
	cmpq	%rax, 224(%rsp)         # 8-byte Folded Reload
	jge	.LBB29_494
# BB#478:                               # %do.end.9.i
                                        #   in Loop: Header=BB29_430 Depth=1
	movq	7696(%rbx), %rax
	movq	224(%rsp), %rcx         # 8-byte Reload
	movslq	4(%rax,%rcx,4), %rax
	incq	%rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	addq	$-2, %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r13d
.LBB29_479:                             # %for.cond.14.outer.i
                                        #   Parent Loop BB29_430 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_480 Depth 3
	movslq	%r13d, %rdi
	leal	1(%rdi), %eax
	cltq
	leaq	(%rax,%rax,2), %r13
	shlq	$4, %r13
	addq	$24, %r13
	.align	16, 0x90
.LBB29_480:                             # %for.cond.14.i
                                        #   Parent Loop BB29_430 Depth=1
                                        #     Parent Loop BB29_479 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	240(%rsp), %rdi         # 8-byte Folded Reload
	jge	.LBB29_493
# BB#481:                               # %for.body.i.421
                                        #   in Loop: Header=BB29_480 Depth=3
	movq	5472(%rbx), %r8
	movslq	-16(%r8,%r13), %rax
	movslq	(%rbx), %r15
	movq	%r15, %rcx
	imulq	%rax, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	movslq	-12(%r8,%r13), %rdx
	movslq	8(%rbx), %rsi
	movq	%rsi, 232(%rsp)         # 8-byte Spill
	imulq	%rdx, %rsi
	shrq	$11, %rsi
	incq	%rsi
	shrq	%rsi
	addl	%ecx, %esi
	movslq	4(%rbx), %rbp
	imulq	%rbp, %rax
	shrq	$11, %rax
	incq	%rax
	shrq	%rax
	movslq	12(%rbx), %r9
	imulq	%r9, %rdx
	shrq	$11, %rdx
	incq	%rdx
	shrq	%rdx
	addl	%eax, %edx
	movl	48(%rbx), %eax
	leal	-8(%rax), %r11d
	testl	%r11d, %r11d
	jle	.LBB29_482
# BB#517:                               # %if.then.i.i.236.i
                                        #   in Loop: Header=BB29_480 Depth=3
	leal	-9(%rax), %ecx
	sarl	%cl, %esi
	incl	%esi
	sarl	%esi
	sarl	%cl, %edx
	incl	%edx
	sarl	%edx
	jmp	.LBB29_484
	.align	16, 0x90
.LBB29_482:                             # %if.else.i.24.i.224.i
                                        #   in Loop: Header=BB29_480 Depth=3
	je	.LBB29_484
# BB#483:                               # %if.else.7.i.i.241.i
                                        #   in Loop: Header=BB29_480 Depth=3
	movl	$8, %ecx
	subl	%eax, %ecx
	shll	%cl, %esi
	shll	%cl, %edx
.LBB29_484:                             # %g2d.exit247.i
                                        #   in Loop: Header=BB29_480 Depth=3
	leaq	1(%rdi), %r14
	movl	84(%rbx), %r10d
	movl	88(%rbx), %r12d
	leal	(%rsi,%r10), %esi
	leal	(%rdx,%r12), %edx
	cmpl	$1, (%r8,%r13)
	jne	.LBB29_486
# BB#485:                               # %if.then.22.i
                                        #   in Loop: Header=BB29_480 Depth=3
	movq	9840(%rbx), %rdi
	xorl	%ecx, %ecx
	callq	gx_path_add_line_notes
	movl	%eax, %esi
	addq	$48, %r13
	testl	%esi, %esi
	movq	%r14, %rdi
	jns	.LBB29_480
	jmp	.LBB29_494
.LBB29_486:                             # %if.else.i.427
                                        #   in Loop: Header=BB29_479 Depth=2
	leal	3(%rdi), %ebx
	movl	%ebx, 184(%rsp)         # 4-byte Spill
	movq	240(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %ebx
	movq	208(%rsp), %rcx         # 8-byte Reload
	cmovgl	%ecx, %ebx
	movl	%ebx, 176(%rsp)         # 4-byte Spill
	shlq	$32, %rdi
	movabsq	$8589934592, %rcx       # imm = 0x200000000
	addq	%rcx, %rdi
	sarq	$32, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$4, %rdi
	movslq	8(%r8,%rdi), %r13
	movq	%r13, %rcx
	imulq	%r15, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	movslq	12(%r8,%rdi), %rdi
	movq	%rdi, %rbx
	imulq	232(%rsp), %rbx         # 8-byte Folded Reload
	shrq	$11, %rbx
	incq	%rbx
	shrq	%rbx
	addl	%ecx, %ebx
	imulq	%rbp, %r13
	shrq	$11, %r13
	incq	%r13
	shrq	%r13
	imulq	%r9, %rdi
	shrq	$11, %rdi
	incq	%rdi
	shrq	%rdi
	addl	%r13d, %edi
	testl	%r11d, %r11d
	jle	.LBB29_487
# BB#518:                               # %if.then.i.i.171.i
                                        #   in Loop: Header=BB29_479 Depth=2
	leal	-9(%rax), %ecx
	sarl	%cl, %ebx
	incl	%ebx
	sarl	%ebx
	sarl	%cl, %edi
	incl	%edi
	sarl	%edi
	jmp	.LBB29_489
.LBB29_487:                             # %if.else.i.24.i.159.i
                                        #   in Loop: Header=BB29_479 Depth=2
	je	.LBB29_489
# BB#488:                               # %if.else.7.i.i.176.i
                                        #   in Loop: Header=BB29_479 Depth=2
	movl	$8, %ecx
	subl	%eax, %ecx
	shll	%cl, %ebx
	shll	%cl, %edi
.LBB29_489:                             # %g2d.exit182.i
                                        #   in Loop: Header=BB29_479 Depth=2
	movl	184(%rsp), %r13d        # 4-byte Reload
	movl	176(%rsp), %ecx         # 4-byte Reload
	addl	%r10d, %ebx
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	addl	%r12d, %edi
	movq	%rdi, 200(%rsp)         # 8-byte Spill
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movslq	8(%r8,%rcx), %rdi
	imulq	%rdi, %r15
	shrq	$11, %r15
	incq	%r15
	shrq	%r15
	movslq	12(%r8,%rcx), %rcx
	movq	232(%rsp), %rbx         # 8-byte Reload
	imulq	%rcx, %rbx
	shrq	$11, %rbx
	incq	%rbx
	shrq	%rbx
	addl	%r15d, %ebx
	imulq	%rdi, %rbp
	shrq	$11, %rbp
	incq	%rbp
	shrq	%rbp
	imulq	%rcx, %r9
	shrq	$11, %r9
	incq	%r9
	shrq	%r9
	addl	%ebp, %r9d
	testl	%r11d, %r11d
	jle	.LBB29_490
# BB#519:                               # %if.then.i.i.106.i
                                        #   in Loop: Header=BB29_479 Depth=2
	addl	$-9, %eax
	movb	%al, %cl
	sarl	%cl, %ebx
	incl	%ebx
	sarl	%ebx
	movb	%al, %cl
	sarl	%cl, %r9d
	incl	%r9d
	sarl	%r9d
	movq	120(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB29_492
.LBB29_490:                             # %if.else.i.24.i.94.i
                                        #   in Loop: Header=BB29_479 Depth=2
	movq	120(%rsp), %rbp         # 8-byte Reload
	je	.LBB29_492
# BB#491:                               # %if.else.7.i.i.111.i
                                        #   in Loop: Header=BB29_479 Depth=2
	movl	$8, %ecx
	subl	%eax, %ecx
	shll	%cl, %ebx
	shll	%cl, %r9d
.LBB29_492:                             # %g2d.exit117.i
                                        #   in Loop: Header=BB29_479 Depth=2
	addl	%r10d, %ebx
	addl	%r12d, %r9d
	movq	9840(%rbp), %rax
	movq	%r9, %rcx
	movq	%rbx, %r9
	movq	%rbp, %rbx
	movl	%ecx, (%rsp)
	movl	$0, 8(%rsp)
	movq	%rax, %rdi
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	200(%rsp), %r8          # 8-byte Reload
	callq	gx_path_add_curve_notes
	testl	%eax, %eax
	cmovsl	%r14d, %r13d
	movl	216(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 216(%rsp)         # 4-byte Spill
	movl	%ecx, %esi
	jns	.LBB29_479
	jmp	.LBB29_494
.LBB29_493:                             # %cleanup.77.i
                                        #   in Loop: Header=BB29_430 Depth=1
	movq	9840(%rbx), %rdi
	xorl	%esi, %esi
	callq	gx_path_close_subpath_notes
	testl	%eax, %eax
	movl	216(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 216(%rsp)         # 4-byte Spill
	movl	%ecx, %esi
	jns	.LBB29_430
.LBB29_494:                             # %exit
	movl	%esi, %ebp
	movq	5472(%rbx), %rsi
	leaq	188(%rbx), %rax
	cmpq	%rax, %rsi
	je	.LBB29_496
# BB#495:                               # %if.then.i
	movq	9848(%rbx), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB29_496:                             # %if.end.i
	movq	7520(%rbx), %rsi
	leaq	5480(%rbx), %rax
	cmpq	%rax, %rsi
	je	.LBB29_498
# BB#497:                               # %if.then.5.i
	movq	9848(%rbx), %rdi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
.LBB29_498:                             # %if.end.11.i
	movq	7648(%rbx), %rsi
	leaq	7528(%rbx), %rax
	cmpq	%rax, %rsi
	je	.LBB29_500
# BB#499:                               # %if.then.14.i
	movq	9848(%rbx), %rdi
	movl	$.L.str, %edx
	callq	*24(%rdi)
.LBB29_500:                             # %if.end.20.i
	movq	7696(%rbx), %rsi
	leaq	7656(%rbx), %rax
	cmpq	%rax, %rsi
	je	.LBB29_502
# BB#501:                               # %if.then.23.i
	movq	9848(%rbx), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
.LBB29_502:                             # %if.end.29.i
	movq	7744(%rbx), %rsi
	leaq	7704(%rbx), %rax
	cmpq	%rax, %rsi
	je	.LBB29_504
# BB#503:                               # %if.then.32.i
	movq	9848(%rbx), %rdi
	movl	$.L.str.5, %edx
	callq	*24(%rdi)
.LBB29_504:                             # %if.end.38.i
	movq	8176(%rbx), %rsi
	leaq	7936(%rbx), %rax
	cmpq	%rax, %rsi
	je	.LBB29_506
# BB#505:                               # %if.then.41.i
	movq	9848(%rbx), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
.LBB29_506:                             # %if.end.47.i
	movq	9624(%rbx), %rsi
	leaq	8184(%rbx), %rax
	cmpq	%rax, %rsi
	je	.LBB29_508
# BB#507:                               # %if.then.50.i
	movq	9848(%rbx), %rdi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
.LBB29_508:                             # %if.end.56.i
	movq	7856(%rbx), %rsi
	leaq	7752(%rbx), %rax
	cmpq	%rax, %rsi
	je	.LBB29_510
# BB#509:                               # %if.then.60.i
	movq	9848(%rbx), %rdi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
.LBB29_510:                             # %if.end.67.i
	movq	7864(%rbx), %rsi
	leaq	7804(%rbx), %rax
	cmpq	%rax, %rsi
	je	.LBB29_512
# BB#511:                               # %if.then.74.i
	movq	9848(%rbx), %rdi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
.LBB29_512:                             # %if.end.81.i
	movq	7928(%rbx), %rsi
	leaq	7872(%rbx), %rax
	cmpq	%rax, %rsi
	je	.LBB29_514
# BB#513:                               # %if.then.84.i
	movq	9848(%rbx), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
.LBB29_514:                             # %t1_hinter__free_arrays.exit
	movq	$0, 5472(%rbx)
	movq	$0, 7520(%rbx)
	movq	$0, 7648(%rbx)
	movq	$0, 7696(%rbx)
	movq	$0, 8176(%rbx)
	movq	$0, 9624(%rbx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 7856(%rbx)
	movq	$0, 7928(%rbx)
	movl	%ebp, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	t1_hinter__endglyph, .Lfunc_end29-t1_hinter__endglyph
	.cfi_endproc

	.align	16, 0x90
	.type	t1_hinter__compact_flex,@function
t1_hinter__compact_flex:                # @t1_hinter__compact_flex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp221:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp222:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp223:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp224:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp225:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp226:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp227:
	.cfi_def_cfa_offset 64
.Ltmp228:
	.cfi_offset %rbx, -56
.Ltmp229:
	.cfi_offset %r12, -48
.Ltmp230:
	.cfi_offset %r13, -40
.Ltmp231:
	.cfi_offset %r14, -32
.Ltmp232:
	.cfi_offset %r15, -24
.Ltmp233:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %r12d
	movl	%ecx, %r13d
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r15
	cmpl	%r13d, %r12d
	jge	.LBB30_3
	.align	16, 0x90
.LBB30_1:                               # %if.then
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	movl	%r13d, %ecx
	movl	%ebx, %r8d
	movq	%r14, %r9
	callq	t1_hinter__compact_flex
	cmpl	%ebp, %r12d
	movl	%ebp, %r13d
	jl	.LBB30_1
# BB#2:
	movl	%ebp, %r13d
.LBB30_3:                               # %if.else
	cmpl	%r12d, %r13d
	jge	.LBB30_19
# BB#4:                                 # %if.then.2
	movl	%r12d, %ebx
	subl	%r13d, %ebx
	decl	%ebx
	movslq	9696(%r15), %rax
	testq	%rax, %rax
	jle	.LBB30_15
# BB#5:                                 # %for.body.lr.ph
	movq	8176(%r15), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB30_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(,%rdx,4), %rsi
	movswl	(%rcx,%rdx,8), %edi
	cmpl	%r12d, %edi
	jge	.LBB30_7
# BB#8:                                 # %if.else.15
                                        #   in Loop: Header=BB30_6 Depth=1
	cmpl	%r13d, %edi
	jle	.LBB30_10
# BB#9:                                 # %if.then.23
                                        #   in Loop: Header=BB30_6 Depth=1
	movw	%r13w, (%rcx,%rsi,2)
	jmp	.LBB30_10
	.align	16, 0x90
.LBB30_7:                               # %if.then.7
                                        #   in Loop: Header=BB30_6 Depth=1
	subl	%ebx, %edi
	movw	%di, (%rcx,%rsi,2)
.LBB30_10:                              # %if.end.29
                                        #   in Loop: Header=BB30_6 Depth=1
	movswl	2(%rcx,%rdx,8), %edi
	cmpl	%r12d, %edi
	jge	.LBB30_11
# BB#12:                                # %if.else.44
                                        #   in Loop: Header=BB30_6 Depth=1
	cmpl	%r13d, %edi
	jle	.LBB30_14
# BB#13:                                # %if.then.52
                                        #   in Loop: Header=BB30_6 Depth=1
	movw	%r13w, 2(%rcx,%rsi,2)
	jmp	.LBB30_14
	.align	16, 0x90
.LBB30_11:                              # %if.then.36
                                        #   in Loop: Header=BB30_6 Depth=1
	subl	%ebx, %edi
	movw	%di, 2(%rcx,%rsi,2)
.LBB30_14:                              # %for.inc
                                        #   in Loop: Header=BB30_6 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB30_6
.LBB30_15:                              # %for.end
	leal	1(%r13), %eax
	cltq
	movq	5472(%r15), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movslq	%r12d, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	shlq	$4, %rsi
	leaq	(%rax,%rcx), %rdi
	leaq	(%rsi,%rcx), %rsi
	movslq	9680(%r15), %rax
	subq	%rdx, %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rdx
	callq	memmove
	movslq	9664(%r15), %rax
	movq	7696(%r15), %rcx
	subl	%ebx, (%rcx,%rax,4)
	subl	%ebx, 9680(%r15)
	movl	(%r14), %eax
	cmpl	%r12d, %eax
	jge	.LBB30_16
# BB#17:                                # %if.else.76
	cmpl	%r13d, %eax
	jl	.LBB30_19
# BB#18:                                # %if.then.79
	movl	%r13d, (%r14)
	jmp	.LBB30_19
.LBB30_16:                              # %if.then.74
	subl	%ebx, %eax
	movl	%eax, (%r14)
.LBB30_19:                              # %if.end.83
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	t1_hinter__compact_flex, .Lfunc_end30-t1_hinter__compact_flex
	.cfi_endproc

	.align	16, 0x90
	.type	t1_hinter__is_stem_hint_applicable,@function
t1_hinter__is_stem_hint_applicable:     # @t1_hinter__is_stem_hint_applicable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp235:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp236:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp237:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp238:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp239:
	.cfi_def_cfa_offset 56
.Ltmp240:
	.cfi_offset %rbx, -56
.Ltmp241:
	.cfi_offset %r12, -48
.Ltmp242:
	.cfi_offset %r13, -40
.Ltmp243:
	.cfi_offset %r14, -32
.Ltmp244:
	.cfi_offset %r15, -24
.Ltmp245:
	.cfi_offset %rbp, -16
	movl	%edx, %r8d
	movl	(%rsi), %r13d
	cmpl	$1, %r13d
	je	.LBB31_16
# BB#1:                                 # %entry
	testl	%r13d, %r13d
	jne	.LBB31_29
# BB#2:                                 # %land.lhs.true
	movslq	%r8d, %rax
	movq	5472(%rdi), %r15
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	4(%r15,%rax), %r9d
	movl	184(%rdi), %ebx
	movl	4(%rsi), %edx
	movl	%r9d, %ebp
	subl	%edx, %ebp
	subl	%r9d, %edx
	cmovlel	%ebp, %edx
	movl	$1, %ebp
	cmpl	%ebx, %edx
	jle	.LBB31_4
# BB#3:                                 # %lor.lhs.false
	movl	8(%rsi), %edx
	movl	%r9d, %ebp
	subl	%edx, %ebp
	subl	%r9d, %edx
	cmovlel	%ebp, %edx
	movl	$2, %ebp
	cmpl	%ebx, %edx
	jg	.LBB31_29
.LBB31_4:                               # %land.lhs.true.7
	movl	%ebp, -12(%rsp)         # 4-byte Spill
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movslq	28(%r15,%rax), %rcx
	movq	7696(%rdi), %rdx
	movl	(%rdx,%rcx,4), %ebp
	movl	%ebp, -20(%rsp)         # 4-byte Spill
	movl	4(%rdx,%rcx,4), %r12d
	addl	$-2, %r12d
	leal	-1(%r8), %edx
	cmpl	%r8d, %ebp
	cmovel	%r12d, %edx
	movl	(%r15,%rax), %ebp
	movl	%ebp, -16(%rsp)         # 4-byte Spill
	movslq	%edx, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	%r9d, %edx
	subl	4(%r15,%rax), %edx
	movslq	%edx, %rdx
	setne	%r11b
	shrq	$8, %rdx
	movl	%edx, %ebx
	negl	%ebx
	subl	(%r15,%rax), %ebp
	movslq	%ebp, %rax
	movslq	%ebx, %rbp
	setne	%cl
	movq	%rax, %r10
	shrq	$8, %r10
	sarq	$8, %rax
	movq	%rbp, %r14
	negq	%r14
	testl	%edx, %edx
	cmovleq	%rbp, %r14
	movq	%rax, %rbx
	negq	%rbx
	testl	%r10d, %r10d
	cmovnsq	%rax, %rbx
	orb	%r11b, %cl
	movl	$2147483647, %r10d      # imm = 0x7FFFFFFF
	movzbl	%cl, %eax
	cmpl	$1, %eax
	movl	$0, %eax
	movl	$2147483647, %r11d      # imm = 0x7FFFFFFF
	jne	.LBB31_9
# BB#5:                                 # %land.lhs.true.7
	cmpq	%rbx, %r14
	movl	$0, %eax
	movl	$2147483647, %r11d      # imm = 0x7FFFFFFF
	jge	.LBB31_9
# BB#6:                                 # %if.end.46.i.150
	movabsq	$7378697629483820647, %rcx # imm = 0x6666666666666667
	movq	%r14, %rax
	imulq	%rcx
	movq	%rdx, %r11
	movq	%r11, %rax
	shrq	$63, %rax
	sarq	$2, %r11
	addq	%rax, %r11
	movabsq	$2049638230412172402, %rcx # imm = 0x1C71C71C71C71C72
	movq	%rbx, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	cmpq	%rax, %r11
	movl	$0, %eax
	movl	$2147483647, %r11d      # imm = 0x7FFFFFFF
	jg	.LBB31_9
# BB#7:                                 # %t1_hinter__is_small_angle.exit157
	imulq	$100, %r14, %rax
	cqto
	idivq	%rbx
	movq	%rax, %r11
	movl	$1, %eax
	testl	%r11d, %r11d
	je	.LBB31_8
.LBB31_9:                               # %if.end.i.118
	movl	%eax, -24(%rsp)         # 4-byte Spill
	leal	1(%r8), %eax
	cmpl	%r8d, %r12d
	cmovel	-20(%rsp), %eax         # 4-byte Folded Reload
	cltq
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	subl	4(%r15,%rax), %r9d
	movslq	%r9d, %rcx
	setne	%r9b
	shrq	$8, %rcx
	movl	%ecx, %ebx
	negl	%ebx
	movl	-16(%rsp), %edx         # 4-byte Reload
	subl	(%r15,%rax), %edx
	movslq	%edx, %rax
	movslq	%ebx, %rbx
	setne	%dl
	movq	%rax, %rbp
	shrq	$8, %rbp
	sarq	$8, %rax
	movq	%rbx, %r14
	negq	%r14
	testl	%ecx, %ecx
	cmovleq	%rbx, %r14
	movq	%rax, %rbx
	negq	%rbx
	testl	%ebp, %ebp
	cmovnsq	%rax, %rbx
	orb	%r9b, %dl
	movzbl	%dl, %eax
	cmpl	$1, %eax
	jne	.LBB31_10
# BB#11:                                # %if.end.i.118
	cmpq	%rbx, %r14
	movl	$0, %ebp
	jge	.LBB31_14
# BB#12:                                # %if.end.46.i.192
	movabsq	$7378697629483820647, %rcx # imm = 0x6666666666666667
	movq	%r14, %rax
	imulq	%rcx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$63, %rax
	sarq	$2, %r15
	addq	%rax, %r15
	movabsq	$2049638230412172402, %rcx # imm = 0x1C71C71C71C71C72
	movq	%rbx, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	cmpq	%rax, %r15
	jg	.LBB31_14
# BB#13:                                # %if.end.53.i.197
	imulq	$100, %r14, %rax
	cqto
	idivq	%rbx
	movq	%rax, %r10
	movl	$1, %ebp
	jmp	.LBB31_14
.LBB31_10:
	xorl	%ebp, %ebp
.LBB31_14:                              # %t1_hinter__is_good_tangent.exit120
	cmpl	%r10d, %r11d
	cmovlel	%r11d, %r10d
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	%r10d, (%rax)
	movq	%rax, %rcx
	orl	-24(%rsp), %ebp         # 4-byte Folded Reload
	movl	-12(%rsp), %eax         # 4-byte Reload
	jne	.LBB31_30
# BB#15:                                # %if.end
	cmpl	$1, %r13d
	jne	.LBB31_29
.LBB31_16:                              # %land.lhs.true.12
	movslq	%r8d, %rax
	movq	5472(%rdi), %r14
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	(%r14,%rax), %r15d
	movl	184(%rdi), %ebx
	movl	4(%rsi), %edx
	movl	%r15d, %ebp
	subl	%edx, %ebp
	subl	%r15d, %edx
	cmovlel	%ebp, %edx
	movl	$1, %ebp
	cmpl	%ebx, %edx
	jle	.LBB31_18
# BB#17:                                # %lor.lhs.false.18
	movl	8(%rsi), %edx
	movl	%r15d, %esi
	subl	%edx, %esi
	subl	%r15d, %edx
	cmovlel	%esi, %edx
	movl	$2, %ebp
	cmpl	%ebx, %edx
	jg	.LBB31_29
.LBB31_18:                              # %land.lhs.true.25
	movl	%ebp, -12(%rsp)         # 4-byte Spill
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movslq	28(%r14,%rax), %rcx
	movq	7696(%rdi), %rdx
	movl	(%rdx,%rcx,4), %esi
	movl	%esi, -16(%rsp)         # 4-byte Spill
	movl	4(%rdx,%rcx,4), %r9d
	addl	$-2, %r9d
	leal	-1(%r8), %ecx
	cmpl	%r8d, %esi
	cmovel	%r9d, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$4, %rdx
	movl	4(%r14,%rax), %r13d
	movl	%r13d, %eax
	subl	4(%r14,%rdx), %eax
	setne	%dil
	movl	%r15d, %esi
	subl	(%r14,%rdx), %esi
	movslq	%esi, %rdx
	setne	%cl
	movq	%rdx, %rsi
	shrq	$8, %rsi
	cltq
	sarq	$8, %rdx
	movq	%rax, %rbp
	shrq	$8, %rbp
	sarq	$8, %rax
	movq	%rdx, %rbx
	negq	%rbx
	testl	%esi, %esi
	cmovnsq	%rdx, %rbx
	movq	%rax, %rsi
	negq	%rsi
	testl	%ebp, %ebp
	cmovnsq	%rax, %rsi
	orb	%dil, %cl
	movl	$2147483647, %r10d      # imm = 0x7FFFFFFF
	movzbl	%cl, %eax
	cmpl	$1, %eax
	movl	$0, %r12d
	movl	$2147483647, %r11d      # imm = 0x7FFFFFFF
	jne	.LBB31_22
# BB#19:                                # %land.lhs.true.25
	cmpq	%rsi, %rbx
	movl	$0, %r12d
	movl	$2147483647, %r11d      # imm = 0x7FFFFFFF
	jge	.LBB31_22
# BB#20:                                # %if.end.46.i
	movabsq	$7378697629483820647, %rcx # imm = 0x6666666666666667
	movq	%rbx, %rax
	imulq	%rcx
	movq	%rdx, %rdi
	movq	%rdi, %rax
	shrq	$63, %rax
	sarq	$2, %rdi
	addq	%rax, %rdi
	movabsq	$2049638230412172402, %rcx # imm = 0x1C71C71C71C71C72
	movq	%rsi, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	cmpq	%rax, %rdi
	movl	$0, %r12d
	movl	$2147483647, %r11d      # imm = 0x7FFFFFFF
	jg	.LBB31_22
# BB#21:                                # %t1_hinter__is_small_angle.exit
	imulq	$100, %rbx, %rax
	cqto
	idivq	%rsi
	movq	%rax, %r11
	movl	$1, %r12d
	testl	%r11d, %r11d
	je	.LBB31_8
.LBB31_22:                              # %if.end.i
	leal	1(%r8), %eax
	cmpl	%r8d, %r9d
	cmovel	-16(%rsp), %eax         # 4-byte Folded Reload
	cltq
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	subl	4(%r14,%rax), %r13d
	setne	%r8b
	subl	(%r14,%rax), %r15d
	movslq	%r15d, %rax
	setne	%dl
	movq	%rax, %rdi
	shrq	$8, %rdi
	movslq	%r13d, %rbx
	sarq	$8, %rax
	movq	%rbx, %rcx
	shrq	$8, %rcx
	sarq	$8, %rbx
	movq	%rax, %rsi
	negq	%rsi
	testl	%edi, %edi
	cmovnsq	%rax, %rsi
	movq	%rbx, %rbp
	negq	%rbp
	testl	%ecx, %ecx
	cmovnsq	%rbx, %rbp
	orb	%r8b, %dl
	movzbl	%dl, %eax
	cmpl	$1, %eax
	jne	.LBB31_23
# BB#24:                                # %if.end.i
	cmpq	%rbp, %rsi
	jge	.LBB31_25
# BB#26:                                # %if.end.46.i.67
	movabsq	$7378697629483820647, %rcx # imm = 0x6666666666666667
	movq	%rsi, %rax
	imulq	%rcx
	movq	%rdx, %rdi
	movq	%rdi, %rax
	shrq	$63, %rax
	sarq	$2, %rdi
	addq	%rax, %rdi
	movabsq	$2049638230412172402, %rcx # imm = 0x1C71C71C71C71C72
	movq	%rbp, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	cmpq	%rax, %rdi
	movl	$0, %ecx
	jg	.LBB31_28
# BB#27:                                # %if.end.53.i.72
	imulq	$100, %rsi, %rax
	cqto
	idivq	%rbp
	movq	%rax, %r10
	movl	$1, %ecx
	jmp	.LBB31_28
.LBB31_23:
	xorl	%ecx, %ecx
	jmp	.LBB31_28
.LBB31_25:
	xorl	%ecx, %ecx
.LBB31_28:                              # %t1_hinter__is_good_tangent.exit
	cmpl	%r10d, %r11d
	cmovlel	%r11d, %r10d
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	%r10d, (%rax)
	orl	%r12d, %ecx
	movl	-12(%rsp), %eax         # 4-byte Reload
	jne	.LBB31_30
.LBB31_29:                              # %if.end.29
	xorl	%eax, %eax
.LBB31_30:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB31_8:                               # %t1_hinter__is_good_tangent.exit120.thread
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	movl	-12(%rsp), %eax         # 4-byte Reload
	jmp	.LBB31_30
.Lfunc_end31:
	.size	t1_hinter__is_stem_hint_applicable, .Lfunc_end31-t1_hinter__is_stem_hint_applicable
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI32_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.align	16, 0x90
	.type	t1_hinter_compute_stem_snap_range_hv,@function
t1_hinter_compute_stem_snap_range_hv:   # @t1_hinter_compute_stem_snap_range_hv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp247:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp248:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp249:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp250:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp251:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp252:
	.cfi_def_cfa_offset 112
.Ltmp253:
	.cfi_offset %rbx, -56
.Ltmp254:
	.cfi_offset %r12, -48
.Ltmp255:
	.cfi_offset %r13, -40
.Ltmp256:
	.cfi_offset %r14, -32
.Ltmp257:
	.cfi_offset %r15, -24
.Ltmp258:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movslq	%esi, %rbx
	leaq	9820(%r14), %rax
	leaq	9816(%r14), %rcx
	testl	%ebx, %ebx
	cmoveq	%rax, %rcx
	movl	(%rcx), %ebp
	movq	7928(%r14), %rdi
	movslq	9632(%r14,%rbx,4), %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	9688(%r14), %r12d
	testl	%r12d, %r12d
	jle	.LBB32_36
# BB#1:                                 # %for.body.lr.ph
	movq	%rbx, (%rsp)            # 8-byte Spill
	movl	t1_hinter_compute_stem_snap_range_hv.T(,%rbx,4), %r8d
	movl	%r8d, 52(%rsp)          # 4-byte Spill
	movl	$1, %eax
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	subl	%ebp, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	-1(%rbp), %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	setne	%al
	movzbl	%al, %r13d
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movq	7520(%r14), %r11
	xorl	%edx, %edx
	movdqa	.LCPI32_0(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movq	%r14, %rbx
	.align	16, 0x90
.LBB32_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_5 Depth 2
                                        #     Child Loop BB32_18 Depth 2
                                        #     Child Loop BB32_22 Depth 2
	imulq	$68, %rdx, %rbp
	cmpl	%r8d, (%r11,%rbp)
	jne	.LBB32_24
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	8(%r11,%rbp), %eax
	subl	4(%r11,%rbp), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movl	$-65536, 56(%r11,%rbp)  # imm = 0xFFFFFFFFFFFF0000
	movslq	9632(%rbx,%r13,4), %rax
	testq	%rax, %rax
	jle	.LBB32_24
# BB#4:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB32_2 Depth=1
	movq	40(%rsp), %rsi          # 8-byte Reload
	leal	(%rsi,%rcx), %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	leal	(%rcx,%rdi), %ecx
	leaq	56(%r11,%rbp), %r15
	leaq	58(%r11,%rbp), %r14
	movq	7856(%rbx,%r13,8), %r8
	movq	%rbx, %r13
	xorl	%r9d, %r9d
	movw	$-1, %bp
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB32_5:                               # %for.body.i
                                        #   Parent Loop BB32_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r8,%rbx,4), %edi
	cmpl	%esi, %edi
	jl	.LBB32_10
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB32_5 Depth=2
	testl	%r10d, %r10d
	jne	.LBB32_8
# BB#7:                                 # %if.then.7.i
                                        #   in Loop: Header=BB32_5 Depth=2
	movw	%bx, (%r15)
	movl	$1, %r10d
	movw	%bx, %r9w
.LBB32_8:                               # %if.end.8.i
                                        #   in Loop: Header=BB32_5 Depth=2
	cmpl	%ecx, %edi
	jg	.LBB32_11
# BB#9:                                 # %if.end.17.i
                                        #   in Loop: Header=BB32_5 Depth=2
	movw	%bx, (%r14)
	movw	%bx, %bp
.LBB32_10:                              # %for.inc.i
                                        #   in Loop: Header=BB32_5 Depth=2
	incq	%rbx
	cmpq	%rax, %rbx
	jl	.LBB32_5
.LBB32_11:                              # %t1_hinter__hint_stem_snap_range.exit
                                        #   in Loop: Header=BB32_2 Depth=1
	movswl	%bp, %eax
	movswl	%r9w, %ecx
	cmpl	%eax, %ecx
	movl	52(%rsp), %r8d          # 4-byte Reload
	movq	%r13, %rbx
	movq	24(%rsp), %r13          # 8-byte Reload
	jg	.LBB32_24
# BB#12:                                # %for.body.64.lr.ph
                                        #   in Loop: Header=BB32_2 Depth=1
	movq	7928(%rbx), %r10
	movswq	%r9w, %rsi
	movswq	%bp, %rcx
	cmpq	%rcx, %rsi
	movq	%rcx, %rax
	cmovgeq	%rsi, %rax
	movq	%rax, %rdi
	subq	%rsi, %rdi
	cmpq	$-1, %rdi
	je	.LBB32_21
# BB#13:                                # %overflow.checked
                                        #   in Loop: Header=BB32_2 Depth=1
	incq	%rax
	subq	%rsi, %rax
	movq	%rax, %rbp
	andq	$-8, %rbp
	leaq	(%rax,%rsi), %r12
	andq	$-8, %rax
	je	.LBB32_20
# BB#14:                                # %vector.body.preheader
                                        #   in Loop: Header=BB32_2 Depth=1
	movq	%rbx, %r14
	movl	%r8d, %edi
	movswq	%r9w, %rbx
	cmpq	%rbx, %rcx
	movq	%rbx, %rax
	cmovgeq	%rcx, %rax
	incq	%rax
	subq	%rbx, %rax
	addq	$-8, %rax
	movq	%rax, %r9
	shrq	$3, %r9
	btq	$3, %rax
	movq	%rsi, %r8
	jb	.LBB32_16
# BB#15:                                # %vector.body.prol
                                        #   in Loop: Header=BB32_2 Depth=1
	movdqu	(%r10,%rsi,4), %xmm1
	movdqu	16(%r10,%rsi,4), %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm2
	movdqu	%xmm1, (%r10,%rsi,4)
	movdqu	%xmm2, 16(%r10,%rsi,4)
	leaq	8(%rsi), %r8
.LBB32_16:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB32_2 Depth=1
	addq	%rbp, %rsi
	testq	%r9, %r9
	je	.LBB32_19
# BB#17:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpq	%rbx, %rcx
	movq	%rbx, %rbp
	cmovgeq	%rcx, %rbp
	incq	%rbp
	subq	%rbx, %rbp
	andq	$-8, %rbp
	addq	%rbx, %rbp
	subq	%r8, %rbp
	leaq	48(%r10,%r8,4), %rbx
	.align	16, 0x90
.LBB32_18:                              # %vector.body
                                        #   Parent Loop BB32_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rbx), %xmm1
	movdqu	-32(%rbx), %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rbx)
	movdqu	%xmm2, -32(%rbx)
	movdqu	-16(%rbx), %xmm1
	movdqu	(%rbx), %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rbx)
	movdqu	%xmm2, (%rbx)
	addq	$64, %rbx
	addq	$-16, %rbp
	jne	.LBB32_18
.LBB32_19:                              #   in Loop: Header=BB32_2 Depth=1
	movl	%edi, %r8d
	movq	%r14, %rbx
.LBB32_20:                              # %middle.block
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpq	%rsi, %r12
	je	.LBB32_23
.LBB32_21:                              # %for.body.64.preheader
                                        #   in Loop: Header=BB32_2 Depth=1
	decq	%rsi
	.align	16, 0x90
.LBB32_22:                              # %for.body.64
                                        #   Parent Loop BB32_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	4(%r10,%rsi,4)
	incq	%rsi
	cmpq	%rcx, %rsi
	jl	.LBB32_22
.LBB32_23:                              # %for.cond.56.for.inc.69.loopexit_crit_edge
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	9688(%rbx), %r12d
	.align	16, 0x90
.LBB32_24:                              # %for.inc.69
                                        #   in Loop: Header=BB32_2 Depth=1
	incq	%rdx
	movslq	%r12d, %r14
	cmpq	%r14, %rdx
	jl	.LBB32_2
# BB#25:                                # %for.cond.72.preheader
	testl	%r12d, %r12d
	jle	.LBB32_36
# BB#26:                                # %for.body.76.lr.ph
	movq	7520(%rbx), %r10
	movq	16(%rsp), %rcx          # 8-byte Reload
	movslq	%ecx, %rax
	addl	%ecx, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rax
	shrq	$63, %rax
	sarq	$33, %rcx
	addl	%eax, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB32_27:                              # %for.body.76
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_30 Depth 2
	imulq	$68, %r15, %rcx
	cmpl	%r8d, (%r10,%rcx)
	jne	.LBB32_35
# BB#28:                                # %if.then.83
                                        #   in Loop: Header=BB32_27 Depth=1
	leaq	56(%r10,%rcx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movswl	56(%r10,%rcx), %ebx
	movswl	58(%r10,%rcx), %edx
	movl	$-1, %eax
	cmpl	%edx, %ebx
	jg	.LBB32_34
# BB#29:                                # %for.body.133.lr.ph
                                        #   in Loop: Header=BB32_27 Depth=1
	movl	8(%r10,%rcx), %eax
	subl	4(%r10,%rcx), %eax
	movslq	%ebx, %rbp
	movslq	%edx, %r12
	movl	%eax, %r9d
	negl	%r9d
	cmovll	%eax, %r9d
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	7928(%rax), %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %r9d
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	7856(%rax,%rdx,8), %rsi
	decq	%rbp
	xorl	%r13d, %r13d
	movl	$-1, %eax
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %r11d
	.align	16, 0x90
.LBB32_30:                              # %for.body.133
                                        #   Parent Loop BB32_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%rcx,%rbp,4), %edx
	movl	%r9d, %edi
	subl	4(%rsi,%rbp,4), %edi
	movl	%edi, %r8d
	negl	%r8d
	cmovll	%edi, %r8d
	cmpl	%edx, %r13d
	jge	.LBB32_32
# BB#31:                                #   in Loop: Header=BB32_30 Depth=2
	movl	%edx, %r13d
	movl	%ebx, %eax
	jmp	.LBB32_33
	.align	16, 0x90
.LBB32_32:                              # %if.else
                                        #   in Loop: Header=BB32_30 Depth=2
	cmpl	%r8d, %r11d
	cmovgl	%ebx, %eax
	cmovlel	%r11d, %r8d
.LBB32_33:                              # %for.inc.208
                                        #   in Loop: Header=BB32_30 Depth=2
	incq	%rbp
	incl	%ebx
	cmpq	%r12, %rbp
	movl	%r8d, %r11d
	jl	.LBB32_30
.LBB32_34:                              # %for.end.210
                                        #   in Loop: Header=BB32_27 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	movw	%ax, (%rcx)
	movl	52(%rsp), %r8d          # 4-byte Reload
.LBB32_35:                              # %for.inc.217
                                        #   in Loop: Header=BB32_27 Depth=1
	incq	%r15
	cmpq	%r14, %r15
	jl	.LBB32_27
.LBB32_36:                              # %for.end.219
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	t1_hinter_compute_stem_snap_range_hv, .Lfunc_end32-t1_hinter_compute_stem_snap_range_hv
	.cfi_endproc

	.align	16, 0x90
	.type	t1_hinter__align_to_grid__general,@function
t1_hinter__align_to_grid__general:      # @t1_hinter__align_to_grid__general
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp259:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp260:
	.cfi_def_cfa_offset 24
.Ltmp261:
	.cfi_offset %rbx, -24
.Ltmp262:
	.cfi_offset %r14, -16
	movl	%ecx, %r10d
	movslq	%esi, %r11
	movl	124(%rdi), %esi
	movl	128(%rdi), %eax
	movq	%r11, %rbx
	movb	%sil, %cl
	shlq	%cl, %rbx
	movl	%esi, %ecx
	negl	%ecx
	movq	%r11, %r14
	sarq	%cl, %r14
	testl	%esi, %esi
	cmovgq	%rbx, %r14
	movq	%r11, %rsi
	movb	%al, %cl
	shlq	%cl, %rsi
	movl	%eax, %ecx
	negl	%ecx
	sarq	%cl, %r11
	testl	%eax, %eax
	cmovgq	%rsi, %r11
	movslq	%edx, %rdx
	movslq	(%rdi), %rax
	imulq	%rdx, %rax
	shrq	$11, %rax
	incq	%rax
	shrq	%rax
	movslq	%r10d, %rbx
	movslq	8(%rdi), %rcx
	imulq	%rbx, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	movslq	4(%rdi), %rsi
	imulq	%rdx, %rsi
	shrq	$11, %rsi
	incq	%rsi
	shrq	%rsi
	movslq	12(%rdi), %rdx
	imulq	%rbx, %rdx
	shrq	$11, %rdx
	incq	%rdx
	shrq	%rdx
	addl	92(%rdi), %eax
	addl	%ecx, %eax
	addl	96(%rdi), %esi
	addl	%edx, %esi
	cltq
	cqto
	idivq	%r14
	movq	%rdx, %rcx
	movslq	%esi, %rax
	cqto
	idivq	%r11
	movslq	%ecx, %rax
	movq	%r14, %rsi
	shrq	$63, %rsi
	leaq	(%rsi,%r14), %rsi
	sarq	%rsi
	cmpq	%rsi, %rax
	jle	.LBB33_2
# BB#1:                                 # %if.then.17
	subq	%r14, %rax
	jmp	.LBB33_3
.LBB33_2:                               # %if.else
	negq	%rsi
	cmpq	%rsi, %rax
	leaq	(%r14,%rax), %rax
	cmovlq	%rax, %rcx
	movq	%rcx, %rax
.LBB33_3:                               # %if.end.31
	movslq	%edx, %rcx
	movq	%r11, %rsi
	shrq	$63, %rsi
	leaq	(%rsi,%r11), %rsi
	sarq	%rsi
	cmpq	%rsi, %rcx
	jle	.LBB33_5
# BB#4:                                 # %if.then.36
	subq	%r11, %rcx
	jmp	.LBB33_6
.LBB33_5:                               # %if.else.41
	negq	%rsi
	cmpq	%rsi, %rcx
	leaq	(%r11,%rcx), %rcx
	cmovlq	%rcx, %rdx
	movq	%rdx, %rcx
.LBB33_6:                               # %if.end.52
	movl	%eax, (%r8)
	movl	%ecx, (%r9)
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end33:
	.size	t1_hinter__align_to_grid__general, .Lfunc_end33-t1_hinter__align_to_grid__general
	.cfi_endproc

	.align	16, 0x90
	.type	t1_hinter__align_to_grid__final,@function
t1_hinter__align_to_grid__final:        # @t1_hinter__align_to_grid__final
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%ecx, %r9
	movslq	%r8d, %r8
	movslq	28(%rdi), %rcx
	imulq	%r9, %rcx
	shrq	$11, %rcx
	incq	%rcx
	shrq	%rcx
	movslq	36(%rdi), %r11
	imulq	%r8, %r11
	shrq	$11, %r11
	incq	%r11
	shrq	%r11
	addl	%ecx, %r11d
	movl	44(%rdi), %r10d
	movl	48(%rdi), %ecx
	leal	-21(%rcx,%r10), %ecx
	sarl	%cl, %r11d
	cmpl	$0, 156(%rdi)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movslq	32(%rdi), %r10
	imulq	%r8, %r10
	shrq	$11, %r10
	incq	%r10
	shrq	%r10
	movslq	24(%rdi), %rax
	imulq	%r9, %rax
	shrq	$11, %rax
	incq	%rax
	shrq	%rax
	addl	%r10d, %eax
	sarl	%cl, %eax
	incl	%eax
	sarl	%eax
	movl	(%rsi), %ecx
	negl	%eax
	leal	7(%rcx,%rax), %eax
	andl	$-16, %eax
	movl	%eax, (%rsi)
.LBB34_2:                               # %if.end
	cmpl	$0, 160(%rdi)
	je	.LBB34_4
# BB#3:                                 # %if.then.2
	incl	%r11d
	sarl	%r11d
	movl	$7, %eax
	subl	%r11d, %eax
	addl	(%rdx), %eax
	andl	$-16, %eax
	movl	%eax, (%rdx)
.LBB34_4:                               # %if.end.6
	retq
.Lfunc_end34:
	.size	t1_hinter__align_to_grid__final, .Lfunc_end34-t1_hinter__align_to_grid__final
	.cfi_endproc

	.align	16, 0x90
	.type	t1_hinter__store_hint_applying,@function
t1_hinter__store_hint_applying:         # @t1_hinter__store_hint_applying
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp263:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp264:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp265:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp266:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp267:
	.cfi_def_cfa_offset 48
.Ltmp268:
	.cfi_offset %rbx, -48
.Ltmp269:
	.cfi_offset %r12, -40
.Ltmp270:
	.cfi_offset %r14, -32
.Ltmp271:
	.cfi_offset %r15, -24
.Ltmp272:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	9704(%rbx), %eax
	movl	9708(%rbx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB35_2
# BB#1:                                 # %entry.if.end.4_crit_edge.i
	movq	9624(%rbx), %rbp
	jmp	.LBB35_6
.LBB35_2:                               # %if.then.i
	movq	9848(%rbx), %r15
	leal	(%rcx,%rcx,2), %eax
	leal	720(,%rax,4), %esi
	movl	$.L.str.8, %edx
	movq	%r15, %rdi
	callq	*64(%r15)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB35_7
# BB#3:                                 # %if.end.i.i
	leaq	8184(%rbx), %r12
	movq	9624(%rbx), %rsi
	movslq	9708(%rbx), %rax
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%rbp, %rdi
	callq	memcpy
	movq	9624(%rbx), %rsi
	cmpq	%r12, %rsi
	je	.LBB35_5
# BB#4:                                 # %if.then.6.i.i
	movl	$.L.str.8, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB35_5:                               # %t1_hinter__realloc_array.exit.thread.i
	movq	%rbp, 9624(%rbx)
	addl	$60, 9708(%rbx)
	movl	9704(%rbx), %eax
.LBB35_6:                               # %if.end
	cltq
	leaq	(%rax,%rax,2), %rcx
	movl	%r14d, (%rbp,%rcx,4)
	movl	$-1, 4(%rbp,%rcx,4)
	incl	%eax
	movl	%eax, 9704(%rbx)
	xorl	%eax, %eax
.LBB35_7:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	t1_hinter__store_hint_applying, .Lfunc_end35-t1_hinter__store_hint_applying
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"t1_hinter zone array"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"t1_hinter stem_snap array"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"t1_hinter stem_snap_vote array"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"t1_hinter pole array"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"t1_hinter contour array"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"t1_hinter subglyph array"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"t1_hinter hint_range array"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"t1_hinter hint array"
	.size	.L.str.7, 21

	.type	t1_hinter_compute_stem_snap_range_hv.T,@object # @t1_hinter_compute_stem_snap_range_hv.T
	.section	.rodata.cst8,"aM",@progbits,8
	.align	4
t1_hinter_compute_stem_snap_range_hv.T:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	t1_hinter_compute_stem_snap_range_hv.T, 8

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"t1_hinter hint_applying array"
	.size	.L.str.8, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
