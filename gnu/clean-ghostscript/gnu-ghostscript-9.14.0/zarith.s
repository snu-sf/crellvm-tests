	.text
	.file	"zarith.bc"
	.globl	zop_add
	.align	16, 0x90
	.type	zop_add,@function
zop_add:                                # @zop_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB0_1
# BB#8:                                 # %sw.bb.27
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB0_9
# BB#11:                                # %sw.bb.46
	movq	8(%rdi), %rdi
	callq	gs_currentcpsimode
	testl	%eax, %eax
	je	.LBB0_16
# BB#12:                                # %if.then
	movq	-8(%rbx), %rcx
	movq	8(%rbx), %rax
	leal	(%rax,%rcx), %edx
	movl	%edx, %esi
	xorl	%eax, %esi
	jns	.LBB0_15
# BB#13:                                # %land.lhs.true
	movl	%eax, %esi
	xorl	%ecx, %esi
	js	.LBB0_15
# BB#14:                                # %if.then.60
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	%eax, %xmm1
	jmp	.LBB0_19
.LBB0_1:                                # %entry
	cmpl	$16, %eax
	jne	.LBB0_5
# BB#2:                                 # %sw.bb
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB0_3
# BB#7:                                 # %sw.bb.12
	cvtsi2sdq	-8(%rbx), %xmm0
	movss	8(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	jmp	.LBB0_19
.LBB0_9:                                # %sw.bb.27
	cmpl	$16, %eax
	jne	.LBB0_4
# BB#10:                                # %sw.bb.36
	cvtsi2sdq	8(%rbx), %xmm0
	movss	-8(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbx)
	jmp	.LBB0_20
.LBB0_3:                                # %sw.bb
	cmpl	$16, %eax
	jne	.LBB0_4
# BB#6:                                 # %sw.bb.8
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	-8(%rbx), %xmm0
	movss	%xmm0, -8(%rbx)
	jmp	.LBB0_20
.LBB0_4:                                # %sw.default.5
	addq	$-16, %rbx
.LBB0_5:                                # %sw.default
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB0_15:                               # %if.else
	movslq	%edx, %rax
	movq	%rax, -8(%rbx)
	jmp	.LBB0_20
.LBB0_16:                               # %if.else.76
	movq	-8(%rbx), %rcx
	movq	8(%rbx), %rax
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, -8(%rbx)
	movq	%rcx, %rsi
	xorq	%rax, %rsi
	js	.LBB0_20
# BB#17:                                # %if.else.76
	xorq	%rax, %rdx
	jns	.LBB0_20
# BB#18:                                # %if.then.95
	cvtsi2sdq	%rcx, %xmm0
	cvtsi2sdq	%rax, %xmm1
.LBB0_19:                               # %cleanup
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
.LBB0_20:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	zop_add, .Lfunc_end0-zop_add
	.cfi_endproc

	.globl	zadd
	.align	16, 0x90
	.type	zadd,@function
zadd:                                   # @zadd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	zop_add
	testl	%eax, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	addq	$-16, 624(%rbx)
.LBB1_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end1:
	.size	zadd, .Lfunc_end1-zadd
	.cfi_endproc

	.globl	zdiv
	.align	16, 0x90
	.type	zdiv,@function
zdiv:                                   # @zdiv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rdx
	movq	624(%rdx), %rcx
	leaq	-16(%rcx), %rdi
	movzbl	1(%rcx), %eax
	cmpl	$11, %eax
	jne	.LBB2_1
# BB#7:                                 # %sw.bb.25
	movq	8(%rcx), %rsi
	movl	$-23, %eax
	testq	%rsi, %rsi
	je	.LBB2_14
# BB#8:                                 # %if.end.31
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB2_9
# BB#11:                                # %sw.bb.47
	cvtsi2sdq	-8(%rcx), %xmm0
	cvtsi2sdq	%rsi, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB2_12
.LBB2_1:                                # %entry
	cmpl	$16, %eax
	jne	.LBB2_15
# BB#2:                                 # %sw.bb
	movss	8(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movl	$-23, %eax
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB2_3
	jnp	.LBB2_14
.LBB2_3:                                # %if.end
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB2_4
# BB#6:                                 # %sw.bb.13
	xorps	%xmm1, %xmm1
	cvtsi2sdq	-8(%rcx), %xmm1
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
.LBB2_12:                               # %sw.epilog.61
	movss	%xmm0, -8(%rcx)
	movw	$4096, -16(%rcx)        # imm = 0x1000
	jmp	.LBB2_13
.LBB2_15:                               # %sw.default
	movq	%rcx, %rdi
	jmp	.LBB2_16
.LBB2_9:                                # %if.end.31
	cmpl	$16, %eax
	jne	.LBB2_16
# BB#10:                                # %sw.bb.38
	cvtsi2sdq	%rsi, %xmm0
	movss	-8(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -8(%rcx)
	jmp	.LBB2_13
.LBB2_4:                                # %if.end
	cmpl	$16, %eax
	jne	.LBB2_16
# BB#5:                                 # %sw.bb.8
	movss	-8(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -8(%rcx)
.LBB2_13:                               # %sw.epilog.61
	movq	%rdi, 624(%rdx)
	xorl	%eax, %eax
.LBB2_14:                               # %cleanup
	retq
.LBB2_16:                               # %sw.default.36
	jmp	check_type_failed       # TAILCALL
.Lfunc_end2:
	.size	zdiv, .Lfunc_end2-zdiv
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI3_1:
	.quad	-4476578029606273024    # double -2147483648
.LCPI3_2:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI3_3:
	.quad	-4332462841530417152    # double -9.2233720368547758E+18
	.text
	.globl	zmul
	.align	16, 0x90
	.type	zmul,@function
zmul:                                   # @zmul
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -24
.Ltmp8:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB3_1
# BB#8:                                 # %sw.bb.27
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB3_9
# BB#11:                                # %sw.bb.46
	movq	8(%r14), %rdi
	callq	gs_currentcpsimode
	testl	%eax, %eax
	cvtsi2sdq	-8(%rbx), %xmm1
	cvtsi2sdq	8(%rbx), %xmm0
	mulsd	%xmm1, %xmm0
	je	.LBB3_19
# BB#12:                                # %if.then
	ucomisd	.LCPI3_0(%rip), %xmm0
	ja	.LBB3_13
# BB#15:                                # %if.else
	movsd	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB3_16
.LBB3_1:                                # %entry
	cmpl	$16, %eax
	jne	.LBB3_5
# BB#2:                                 # %sw.bb
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB3_3
# BB#7:                                 # %sw.bb.12
	cvtsi2sdq	-8(%rbx), %xmm0
	movss	8(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	jmp	.LBB3_14
.LBB3_9:                                # %sw.bb.27
	cmpl	$16, %eax
	jne	.LBB3_4
# BB#10:                                # %sw.bb.36
	cvtsi2sdq	8(%rbx), %xmm0
	movss	-8(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbx)
	jmp	.LBB3_18
.LBB3_3:                                # %sw.bb
	cmpl	$16, %eax
	jne	.LBB3_4
# BB#6:                                 # %sw.bb.8
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	-8(%rbx), %xmm0
	movss	%xmm0, -8(%rbx)
	jmp	.LBB3_18
.LBB3_4:                                # %sw.default.5
	addq	$-16, %rbx
.LBB3_5:                                # %sw.default
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.LBB3_19:                               # %if.else.81
	ucomisd	.LCPI3_2(%rip), %xmm0
	ja	.LBB3_13
# BB#20:                                # %if.else.101
	movsd	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB3_16:                               # %if.else
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_17
.LBB3_13:                               # %if.then.57
	cvtsd2ss	%xmm0, %xmm0
.LBB3_14:                               # %cleanup
	movss	%xmm0, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
	jmp	.LBB3_18
.LBB3_17:                               # %if.else.112
	cvttsd2si	%xmm0, %rax
	movq	%rax, -8(%rbx)
.LBB3_18:                               # %cleanup
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	zmul, .Lfunc_end3-zmul
	.cfi_endproc

	.globl	zop_sub
	.align	16, 0x90
	.type	zop_sub,@function
zop_sub:                                # @zop_sub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB4_1
# BB#8:                                 # %sw.bb.27
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB4_9
# BB#11:                                # %sw.bb.46
	movq	8(%rdi), %rdi
	callq	gs_currentcpsimode
	testl	%eax, %eax
	movq	-8(%rbx), %rax
	je	.LBB4_16
# BB#12:                                # %if.then
	movq	8(%rbx), %rcx
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %esi
	xorl	%eax, %esi
	jns	.LBB4_15
# BB#13:                                # %land.lhs.true
	movl	%eax, %esi
	xorl	%ecx, %esi
	js	.LBB4_14
.LBB4_15:                               # %if.else
	movslq	%edx, %rax
	movq	%rax, -8(%rbx)
	jmp	.LBB4_20
.LBB4_1:                                # %entry
	cmpl	$16, %eax
	jne	.LBB4_5
# BB#2:                                 # %sw.bb
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB4_3
# BB#7:                                 # %sw.bb.12
	cvtsi2sdq	-8(%rbx), %xmm0
	movss	8(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB4_19
.LBB4_9:                                # %sw.bb.27
	cmpl	$16, %eax
	jne	.LBB4_4
# BB#10:                                # %sw.bb.36
	cvtsi2sdq	8(%rbx), %xmm0
	movss	-8(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbx)
	jmp	.LBB4_20
.LBB4_3:                                # %sw.bb
	cmpl	$16, %eax
	jne	.LBB4_4
# BB#6:                                 # %sw.bb.8
	movss	-8(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	8(%rbx), %xmm0
	movss	%xmm0, -8(%rbx)
	jmp	.LBB4_20
.LBB4_4:                                # %sw.default.5
	addq	$-16, %rbx
.LBB4_5:                                # %sw.default
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB4_16:                               # %if.else.76
	movq	8(%rbx), %rcx
	movq	%rax, %rdx
	subq	%rcx, %rdx
	movq	%rdx, -8(%rbx)
	xorq	%rax, %rdx
	movq	%rcx, %rsi
	xorq	%rax, %rsi
	testq	%rsi, %rdx
	jns	.LBB4_20
# BB#17:                                # %if.then.96
	cvtsi2ssq	%rax, %xmm0
	jmp	.LBB4_18
.LBB4_14:                               # %if.then.60
	cvtsi2ssl	%eax, %xmm0
.LBB4_18:                               # %cleanup
	cvtsi2ssq	%rcx, %xmm1
	subss	%xmm1, %xmm0
.LBB4_19:                               # %cleanup
	movss	%xmm0, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
.LBB4_20:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	zop_sub, .Lfunc_end4-zop_sub
	.cfi_endproc

	.globl	zsub
	.align	16, 0x90
	.type	zsub,@function
zsub:                                   # @zsub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	zop_sub
	testl	%eax, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	addq	$-16, 624(%rbx)
.LBB5_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end5:
	.size	zsub, .Lfunc_end5-zsub
	.cfi_endproc

	.globl	zidiv
	.align	16, 0x90
	.type	zidiv,@function
zidiv:                                  # @zidiv
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
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB6_3
# BB#1:                                 # %if.end
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB6_2
# BB#4:                                 # %if.end.12
	movq	8(%r14), %rdi
	callq	gs_currentcpsimode
	testl	%eax, %eax
	movq	8(%rbx), %rsi
	movl	$-23, %eax
	je	.LBB6_9
# BB#5:                                 # %if.then.14
	testq	%rsi, %rsi
	je	.LBB6_14
# BB#6:                                 # %lor.lhs.false
	movq	-8(%rbx), %rcx
	cmpq	$-1, %rsi
	jne	.LBB6_8
# BB#7:                                 # %lor.lhs.false
	cmpq	$-2147483648, %rcx      # imm = 0xFFFFFFFF80000000
	je	.LBB6_14
.LBB6_8:                                # %if.end.27
	movslq	%ecx, %rax
	cqto
	idivq	%rsi
	cltq
	jmp	.LBB6_13
.LBB6_2:                                # %if.then.9
	addq	$-16, %rbx
.LBB6_3:                                # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.LBB6_9:                                # %if.else
	testq	%rsi, %rsi
	je	.LBB6_14
# BB#10:                                # %lor.lhs.false.44
	movq	-8(%rbx), %rcx
	cmpq	$-1, %rsi
	jne	.LBB6_12
# BB#11:                                # %lor.lhs.false.44
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	cmpq	%rdx, %rcx
	je	.LBB6_14
.LBB6_12:                               # %if.end.56
	movq	%rcx, %rax
	cqto
	idivq	%rsi
.LBB6_13:                               # %if.end.63
	movq	%rax, -8(%rbx)
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB6_14:                               # %cleanup.67
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	zidiv, .Lfunc_end6-zidiv
	.cfi_endproc

	.globl	zmod
	.align	16, 0x90
	.type	zmod,@function
zmod:                                   # @zmod
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	movzbl	1(%rcx), %eax
	cmpl	$11, %eax
	jne	.LBB7_5
# BB#1:                                 # %if.end
	leaq	-16(%rcx), %rsi
	movzbl	-15(%rcx), %eax
	cmpl	$11, %eax
	jne	.LBB7_6
# BB#2:                                 # %if.end.12
	movq	8(%rcx), %r8
	movl	$-23, %eax
	testq	%r8, %r8
	je	.LBB7_4
# BB#3:                                 # %if.end.16
	movq	-8(%rcx), %rax
	cqto
	idivq	%r8
	movq	%rdx, -8(%rcx)
	movq	%rsi, 624(%rdi)
	xorl	%eax, %eax
.LBB7_4:                                # %cleanup
	retq
.LBB7_5:                                # %if.then
	movq	%rcx, %rdi
	jmp	check_type_failed       # TAILCALL
.LBB7_6:                                # %if.then.9
	movq	%rsi, %rdi
	jmp	check_type_failed       # TAILCALL
.Lfunc_end7:
	.size	zmod, .Lfunc_end7-zmod
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	zneg
	.align	16, 0x90
	.type	zneg,@function
zneg:                                   # @zneg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB8_1
# BB#3:                                 # %sw.bb.3
	movq	8(%rdi), %rdi
	callq	gs_currentcpsimode
	testl	%eax, %eax
	movq	8(%rbx), %rax
	je	.LBB8_6
# BB#4:                                 # %if.then
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jne	.LBB8_8
# BB#5:                                 # %if.then.8
	movl	$-822083584, 8(%rbx)    # imm = 0xFFFFFFFFCF000000
	movw	$4096, (%rbx)           # imm = 0x1000
	jmp	.LBB8_9
.LBB8_1:                                # %entry
	cmpl	$16, %eax
	jne	.LBB8_10
# BB#2:                                 # %sw.bb
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI8_0(%rip), %xmm0
	movss	%xmm0, 8(%rbx)
	jmp	.LBB8_9
.LBB8_10:                               # %sw.default
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB8_6:                                # %if.else.18
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	cmpq	%rcx, %rax
	jne	.LBB8_8
# BB#7:                                 # %if.then.23
	movl	$1593835520, 8(%rbx)    # imm = 0x5F000000
	movw	$4096, (%rbx)           # imm = 0x1000
	jmp	.LBB8_9
.LBB8_8:                                # %if.else.28
	negq	%rax
	movq	%rax, 8(%rbx)
.LBB8_9:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end8:
	.size	zneg, .Lfunc_end8-zneg
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	zabs
	.align	16, 0x90
	.type	zabs,@function
zabs:                                   # @zabs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB9_1
# BB#4:                                 # %sw.bb.2
	cmpq	$0, 8(%rbx)
	jns	.LBB9_11
# BB#5:                                 # %sw.bb.3.i
	movq	8(%rdi), %rdi
	callq	gs_currentcpsimode
	testl	%eax, %eax
	movq	8(%rbx), %rax
	je	.LBB9_8
# BB#6:                                 # %if.then.i
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jne	.LBB9_10
# BB#7:                                 # %if.then.8.i
	movl	$-822083584, 8(%rbx)    # imm = 0xFFFFFFFFCF000000
	movw	$4096, (%rbx)           # imm = 0x1000
	jmp	.LBB9_11
.LBB9_1:                                # %entry
	cmpl	$16, %eax
	jne	.LBB9_12
# BB#2:                                 # %sw.bb
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jae	.LBB9_11
# BB#3:                                 # %sw.bb.i
	xorps	.LCPI9_0(%rip), %xmm0
	movss	%xmm0, 8(%rbx)
	jmp	.LBB9_11
.LBB9_12:                               # %sw.default
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB9_8:                                # %if.else.18.i
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	cmpq	%rcx, %rax
	jne	.LBB9_10
# BB#9:                                 # %if.then.23.i
	movl	$1593835520, 8(%rbx)    # imm = 0x5F000000
	movw	$4096, (%rbx)           # imm = 0x1000
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.28.i
	negq	%rax
	movq	%rax, 8(%rbx)
.LBB9_11:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end9:
	.size	zabs, .Lfunc_end9-zabs
	.cfi_endproc

	.globl	zceiling
	.align	16, 0x90
	.type	zceiling,@function
zceiling:                               # @zceiling
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	je	.LBB10_3
# BB#1:                                 # %entry
	cmpl	$16, %eax
	jne	.LBB10_4
# BB#2:                                 # %sw.bb
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	ceil
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
.LBB10_3:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB10_4:                               # %sw.default
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end10:
	.size	zceiling, .Lfunc_end10-zceiling
	.cfi_endproc

	.globl	zfloor
	.align	16, 0x90
	.type	zfloor,@function
zfloor:                                 # @zfloor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	je	.LBB11_3
# BB#1:                                 # %entry
	cmpl	$16, %eax
	jne	.LBB11_4
# BB#2:                                 # %sw.bb
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
.LBB11_3:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB11_4:                               # %sw.default
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end11:
	.size	zfloor, .Lfunc_end11-zfloor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	zround
	.align	16, 0x90
	.type	zround,@function
zround:                                 # @zround
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	je	.LBB12_3
# BB#1:                                 # %entry
	cmpl	$16, %eax
	jne	.LBB12_4
# BB#2:                                 # %sw.bb
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI12_0(%rip), %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
.LBB12_3:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB12_4:                               # %sw.default
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end12:
	.size	zround, .Lfunc_end12-zround
	.cfi_endproc

	.globl	ztruncate
	.align	16, 0x90
	.type	ztruncate,@function
ztruncate:                              # @ztruncate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	je	.LBB13_6
# BB#1:                                 # %entry
	cmpl	$16, %eax
	jne	.LBB13_7
# BB#2:                                 # %sw.bb
	movss	8(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm0
	xorps	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	jbe	.LBB13_4
# BB#3:                                 # %cond.true
	callq	ceil
	jmp	.LBB13_5
.LBB13_7:                               # %sw.default
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB13_4:                               # %cond.false
	callq	floor
.LBB13_5:                               # %cond.end
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
.LBB13_6:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end13:
	.size	ztruncate, .Lfunc_end13-ztruncate
	.cfi_endproc

	.align	16, 0x90
	.type	zbitadd,@function
zbitadd:                                # @zbitadd
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB14_3
# BB#1:                                 # %if.end
	leaq	-16(%rax), %rcx
	movzbl	-15(%rax), %edx
	cmpl	$11, %edx
	jne	.LBB14_4
# BB#2:                                 # %cleanup
	movq	8(%rax), %rdx
	addq	%rdx, -8(%rax)
	movq	%rcx, 624(%rdi)
	xorl	%eax, %eax
	retq
.LBB14_3:                               # %if.then
	movq	%rax, %rdi
	jmp	check_type_failed       # TAILCALL
.LBB14_4:                               # %if.then.9
	movq	%rcx, %rdi
	jmp	check_type_failed       # TAILCALL
.Lfunc_end14:
	.size	zbitadd, .Lfunc_end14-zbitadd
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1abs"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2add"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2.bitadd"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1ceiling"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2div"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2idiv"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1floor"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2mod"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"2mul"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1neg"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1round"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"2sub"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1truncate"
	.size	.L.str.12, 10

	.type	zarith_op_defs,@object  # @zarith_op_defs
	.section	.rodata,"a",@progbits
	.globl	zarith_op_defs
	.align	16
zarith_op_defs:
	.quad	.L.str
	.quad	zabs
	.quad	.L.str.1
	.quad	zadd
	.quad	.L.str.2
	.quad	zbitadd
	.quad	.L.str.3
	.quad	zceiling
	.quad	.L.str.4
	.quad	zdiv
	.quad	.L.str.5
	.quad	zidiv
	.quad	.L.str.6
	.quad	zfloor
	.quad	.L.str.7
	.quad	zmod
	.quad	.L.str.8
	.quad	zmul
	.quad	.L.str.9
	.quad	zneg
	.quad	.L.str.10
	.quad	zround
	.quad	.L.str.11
	.quad	zsub
	.quad	.L.str.12
	.quad	ztruncate
	.zero	16
	.size	zarith_op_defs, 224


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
