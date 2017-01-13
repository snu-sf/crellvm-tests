	.text
	.file	"getnum.bc"
	.globl	get_integer_in_range
	.align	16, 0x90
	.type	get_integer_in_range,@function
get_integer_in_range:                   # @get_integer_in_range
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movabsq	$.L.str, %rax
	leaq	-292(%rbp), %r9
	leaq	-288(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movq	%r9, %rdx
	movq	%r10, %rcx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-8(%rbp), %r8
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB0_2:                                # %if.end
	movb	$0, -288(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$8, %rdx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	ja	.LBB0_32
# BB#36:                                # %if.end
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_3:                                # %sw.bb
	movl	-292(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_5
# BB#4:                                 # %if.then.4
	movabsq	$.L.str.2, %rsi
	leaq	-288(%rbp), %rdi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB0_5:                                # %if.end.7
	jmp	.LBB0_33
.LBB0_6:                                # %sw.bb.8
	movl	-292(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB0_8
# BB#7:                                 # %if.then.10
	movabsq	$.L.str.3, %rsi
	leaq	-288(%rbp), %rdi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB0_8:                                # %if.end.13
	jmp	.LBB0_33
.LBB0_9:                                # %sw.bb.14
	movl	-292(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB0_11
# BB#10:                                # %if.then.16
	movabsq	$.L.str.4, %rsi
	leaq	-288(%rbp), %rdi
	movl	-24(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB0_11:                               # %if.end.19
	jmp	.LBB0_33
.LBB0_12:                               # %sw.bb.20
	movl	-292(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB0_14
# BB#13:                                # %if.then.22
	movabsq	$.L.str.4, %rsi
	leaq	-288(%rbp), %rdi
	movl	-24(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB0_14:                               # %if.end.25
	jmp	.LBB0_33
.LBB0_15:                               # %sw.bb.26
	movl	-292(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB0_17
# BB#16:                                # %lor.lhs.false
	movl	-292(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB0_18
.LBB0_17:                               # %if.then.29
	movabsq	$.L.str.5, %rsi
	leaq	-288(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB0_18:                               # %if.end.32
	jmp	.LBB0_33
.LBB0_19:                               # %sw.bb.33
	movl	-292(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB0_21
# BB#20:                                # %lor.lhs.false.35
	movl	-292(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB0_22
.LBB0_21:                               # %if.then.37
	movabsq	$.L.str.6, %rsi
	leaq	-288(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB0_22:                               # %if.end.40
	jmp	.LBB0_33
.LBB0_23:                               # %sw.bb.41
	movl	-292(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB0_25
# BB#24:                                # %lor.lhs.false.43
	movl	-292(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB0_26
.LBB0_25:                               # %if.then.45
	movabsq	$.L.str.7, %rsi
	leaq	-288(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB0_26:                               # %if.end.48
	jmp	.LBB0_33
.LBB0_27:                               # %sw.bb.49
	movl	-292(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB0_29
# BB#28:                                # %lor.lhs.false.51
	movl	-292(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB0_30
.LBB0_29:                               # %if.then.53
	movabsq	$.L.str.8, %rsi
	leaq	-288(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB0_30:                               # %if.end.56
	jmp	.LBB0_33
.LBB0_31:                               # %sw.bb.57
	jmp	.LBB0_33
.LBB0_32:                               # %sw.default
	callq	abort
.LBB0_33:                               # %sw.epilog
	cmpb	$0, -288(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.59
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%ecx, %ecx
	movq	-8(%rbp), %r8
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	-360(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	movabsq	$.L.str.9, %rdi
	movq	stderr, %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	gettext
	leaq	-288(%rbp), %rdx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	exit
.LBB0_35:                               # %if.end.65
	movl	-292(%rbp), %eax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end0:
	.size	get_integer_in_range, .Lfunc_end0-get_integer_in_range
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_31
	.quad	.LBB0_3
	.quad	.LBB0_6
	.quad	.LBB0_9
	.quad	.LBB0_12
	.quad	.LBB0_15
	.quad	.LBB0_19
	.quad	.LBB0_23
	.quad	.LBB0_27

	.text
	.globl	get_length
	.align	16, 0x90
	.type	get_length,@function
get_length:                             # @get_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$length_args, %rax
	movabsq	$length_types, %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %r9d
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%r8, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	get_float_in_range
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	get_length, .Lfunc_end1-get_length
	.cfi_endproc

	.align	16, 0x90
	.type	get_float_in_range,@function
get_float_in_range:                     # @get_float_in_range
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	movss	%xmm1, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.10, %r9d
	movl	%r9d, %esi
	xorl	%r9d, %r9d
	movb	%r9b, %al
	leaq	-56(%rbp), %rdx
	leaq	-320(%rbp), %rcx
	callq	__isoc99_sscanf
	movl	%eax, %r9d
	subl	$1, %eax
	movl	%r9d, -324(%rbp)        # 4-byte Spill
	movl	%eax, -328(%rbp)        # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_38
.LBB2_38:                               # %entry
	movl	-324(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jne	.LBB2_3
	jmp	.LBB2_1
.LBB2_1:                                # %sw.bb
	movl	$4, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	leaq	-320(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	argmatch_die, %r10
	movq	%r10, (%rsp)
	callq	__xargmatch_internal
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	jmp	.LBB2_4
.LBB2_2:                                # %sw.bb.3
	jmp	.LBB2_4
.LBB2_3:                                # %sw.default
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-8(%rbp), %r8
	movq	-344(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB2_4:                                # %sw.epilog
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rsp, %rax
	movq	$abort, (%rax)
	movl	$.L.str.11, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	$4, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$1, %r9d
	callq	__xargmatch_internal
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -56(%rbp)
	movb	$0, -320(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$8, %rdx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	ja	.LBB2_34
# BB#39:                                # %sw.epilog
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	.LJTI2_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_5:                                # %sw.bb.10
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB2_7
# BB#6:                                 # %if.then
	movabsq	$.L.str.12, %rsi
	leaq	-320(%rbp), %rdi
	cvtss2sd	-36(%rbp), %xmm0
	movq	-48(%rbp), %rdx
	movb	$1, %al
	callq	sprintf
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB2_7:                                # %if.end
	jmp	.LBB2_35
.LBB2_8:                                # %sw.bb.13
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB2_10
# BB#9:                                 # %if.then.16
	movabsq	$.L.str.13, %rsi
	leaq	-320(%rbp), %rdi
	cvtss2sd	-36(%rbp), %xmm0
	movq	-48(%rbp), %rdx
	movb	$1, %al
	callq	sprintf
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB2_10:                               # %if.end.20
	jmp	.LBB2_35
.LBB2_11:                               # %sw.bb.21
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-40(%rbp), %xmm0
	jbe	.LBB2_13
# BB#12:                                # %if.then.24
	movabsq	$.L.str.14, %rsi
	leaq	-320(%rbp), %rdi
	cvtss2sd	-40(%rbp), %xmm0
	movq	-48(%rbp), %rdx
	movb	$1, %al
	callq	sprintf
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB2_13:                               # %if.end.28
	jmp	.LBB2_35
.LBB2_14:                               # %sw.bb.29
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-40(%rbp), %xmm0
	jb	.LBB2_16
# BB#15:                                # %if.then.32
	movabsq	$.L.str.14, %rsi
	leaq	-320(%rbp), %rdi
	cvtss2sd	-40(%rbp), %xmm0
	movq	-48(%rbp), %rdx
	movb	$1, %al
	callq	sprintf
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB2_16:                               # %if.end.36
	jmp	.LBB2_35
.LBB2_17:                               # %sw.bb.37
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB2_19
# BB#18:                                # %lor.lhs.false
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-40(%rbp), %xmm0
	jbe	.LBB2_20
.LBB2_19:                               # %if.then.42
	movabsq	$.L.str.15, %rsi
	leaq	-320(%rbp), %rdi
	cvtss2sd	-36(%rbp), %xmm0
	movq	-48(%rbp), %rdx
	cvtss2sd	-40(%rbp), %xmm1
	movq	-48(%rbp), %rcx
	movb	$2, %al
	callq	sprintf
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB2_20:                               # %if.end.47
	jmp	.LBB2_35
.LBB2_21:                               # %sw.bb.48
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB2_23
# BB#22:                                # %lor.lhs.false.51
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-40(%rbp), %xmm0
	jbe	.LBB2_24
.LBB2_23:                               # %if.then.54
	movabsq	$.L.str.16, %rsi
	leaq	-320(%rbp), %rdi
	cvtss2sd	-36(%rbp), %xmm0
	movq	-48(%rbp), %rdx
	cvtss2sd	-40(%rbp), %xmm1
	movq	-48(%rbp), %rcx
	movb	$2, %al
	callq	sprintf
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB2_24:                               # %if.end.59
	jmp	.LBB2_35
.LBB2_25:                               # %sw.bb.60
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB2_27
# BB#26:                                # %lor.lhs.false.63
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-40(%rbp), %xmm0
	jb	.LBB2_28
.LBB2_27:                               # %if.then.66
	movabsq	$.L.str.17, %rsi
	leaq	-320(%rbp), %rdi
	cvtss2sd	-36(%rbp), %xmm0
	movq	-48(%rbp), %rdx
	cvtss2sd	-40(%rbp), %xmm1
	movq	-48(%rbp), %rcx
	movb	$2, %al
	callq	sprintf
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB2_28:                               # %if.end.71
	jmp	.LBB2_35
.LBB2_29:                               # %sw.bb.72
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB2_31
# BB#30:                                # %lor.lhs.false.75
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-40(%rbp), %xmm0
	jb	.LBB2_32
.LBB2_31:                               # %if.then.78
	movabsq	$.L.str.18, %rsi
	leaq	-320(%rbp), %rdi
	cvtss2sd	-36(%rbp), %xmm0
	movq	-48(%rbp), %rdx
	cvtss2sd	-40(%rbp), %xmm1
	movq	-48(%rbp), %rcx
	movb	$2, %al
	callq	sprintf
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB2_32:                               # %if.end.83
	jmp	.LBB2_35
.LBB2_33:                               # %sw.bb.84
	jmp	.LBB2_35
.LBB2_34:                               # %sw.default.85
	callq	abort
.LBB2_35:                               # %sw.epilog.86
	cmpb	$0, -320(%rbp)
	je	.LBB2_37
# BB#36:                                # %if.then.88
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%ecx, %ecx
	movq	-8(%rbp), %r8
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	movabsq	$.L.str.19, %rdi
	movq	stderr, %rcx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	gettext
	leaq	-320(%rbp), %rdx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	exit
.LBB2_37:                               # %if.end.94
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	get_float_in_range, .Lfunc_end2-get_float_in_range
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_33
	.quad	.LBB2_5
	.quad	.LBB2_8
	.quad	.LBB2_11
	.quad	.LBB2_14
	.quad	.LBB2_17
	.quad	.LBB2_21
	.quad	.LBB2_25
	.quad	.LBB2_29

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d%255s"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"invalid argument `%s' for `%s'"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%d <= n"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d < n"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"n <= %d"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%d <= n <= %d"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%d < n <= %d"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%d <= n < %d"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%d < n < %d"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Valid arguments are integers n such that: %s\n"
	.size	.L.str.9, 46

	.type	length_args,@object     # @length_args
	.section	.rodata,"a",@progbits
	.align	16
length_args:
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	0
	.size	length_args, 48

	.type	length_types,@object    # @length_types
	.data
	.align	16
length_types:
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1116733440              # float 7.200000e+01
	.long	1105380747              # float 2.834646e+01
	.long	1105380747              # float 2.834646e+01
	.size	length_types, 20

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"%f%255s"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"internal conversion"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%.1f%s <= f"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%.1f%s < f"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"f <= %.1f%s"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%.1f%s <= f <= %.1f%s"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%.1f%s < f <= %.1f%s"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%.1f%s <= f < %.1f%s"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%.1f%s < f < %.1f%s"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Valid arguments are floats f such that: %s\n"
	.size	.L.str.19, 44

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"points"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"pts"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"inchs"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"cm"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"centimeters"
	.size	.L.str.24, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
