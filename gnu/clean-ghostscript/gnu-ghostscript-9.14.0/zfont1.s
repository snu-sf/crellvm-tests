	.text
	.file	"zfont1.bc"
	.globl	charstring_font_get_refs
	.align	16, 0x90
	.type	charstring_font_get_refs,@function
charstring_font_get_refs:               # @charstring_font_get_refs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB0_11
# BB#1:                                 # %if.end
	movl	$.L.str, %esi
	movq	%rbx, %rdx
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-10, %eax
	testl	%ecx, %ecx
	jle	.LBB0_10
# BB#2:                                 # %lor.lhs.false
	movq	(%rbx), %rdi
	movzbl	1(%rdi), %ecx
	cmpl	$2, %ecx
	jne	.LBB0_10
# BB#3:                                 # %if.end.13
	leaq	8(%rbx), %r15
	movq	$0, 16(%rbx)
	movw	$1024, 8(%rbx)          # imm = 0x400
	movl	$0, 12(%rbx)
	leaq	24(%rbx), %r14
	movl	$.L.str.1, %esi
	movq	%r14, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_5
# BB#4:                                 # %if.then.23
	movq	(%r14), %rax
	movzwl	(%rax), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	je	.LBB0_6
	jmp	.LBB0_10
.LBB0_11:                               # %if.then
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB0_5:                                # %if.else
	movq	%r15, (%r14)
.LBB0_6:                                # %if.end.34
	movq	(%rbx), %rdi
	leaq	32(%rbx), %r14
	movl	$.L.str.2, %esi
	movq	%r14, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_8
# BB#7:                                 # %if.then.39
	movq	(%r14), %rax
	movzwl	(%rax), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	je	.LBB0_9
	jmp	.LBB0_10
.LBB0_8:                                # %if.else.49
	movq	%r15, (%r14)
.LBB0_9:                                # %if.end.52
	movq	%r15, 40(%rbx)
	xorl	%eax, %eax
.LBB0_10:                               # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	charstring_font_get_refs, .Lfunc_end0-charstring_font_get_refs
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4585871385363300221     # double 0.039625
.LCPI1_1:
	.quad	4619567317775286272     # double 7
.LCPI1_2:
	.quad	4588807732320345784     # double 0.059999999999999998
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_3:
	.long	1065353216              # float 1
	.text
	.globl	charstring_font_params
	.align	16, 0x90
	.type	charstring_font_params,@function
charstring_font_params:                 # @charstring_font_params
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
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 80
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	(%rdx), %rbp
	leaq	64(%rbx), %r9
	movl	64(%rbx), %r8d
	movl	$.L.str.3, %esi
	movl	$-1, %edx
	movl	$255, %ecx
	movq	%rbp, %rdi
	callq	dict_int_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#1:                                 # %if.end
	leaq	68(%rbx), %r9
	movl	68(%rbx), %r8d
	movl	$.L.str.4, %esi
	xorl	%edx, %edx
	movl	$-1, %ecx
	movq	%rbp, %rdi
	callq	dict_uint_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#2:                                 # %if.end.6
	leaq	96(%rbx), %r9
	movl	$.L.str.5, %esi
	xorl	%edx, %edx
	movl	$1999, %ecx             # imm = 0x7CF
	movl	$1, %r8d
	movq	%rbp, %rdi
	callq	dict_int_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#3:                                 # %if.end.10
	leaq	100(%rbx), %r14
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$.L.str.6, %esi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	dict_float_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#4:                                 # %if.end.14
	leaq	104(%rbx), %rdx
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$.L.str.7, %esi
	movq	%rbp, %rdi
	callq	dict_float_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#5:                                 # %if.end.18
	leaq	112(%rbx), %r8
	movl	$.L.str.8, %edx
	movl	$14, %ecx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	dict_float_array_param
	movl	%eax, %r15d
	movl	%r15d, 108(%rbx)
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#6:                                 # %if.end.23
	leaq	168(%rbx), %rdx
	movsd	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$.L.str.9, %esi
	movq	%rbp, %rdi
	callq	dict_float_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#7:                                 # %if.end.27
	leaq	180(%rbx), %r8
	movl	$.L.str.10, %edx
	movl	$14, %ecx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	dict_float_array_param
	movl	%eax, %r15d
	movl	%r15d, 176(%rbx)
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#8:                                 # %if.end.35
	leaq	240(%rbx), %r8
	movl	$.L.str.11, %edx
	movl	$10, %ecx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	dict_float_array_param
	movl	%eax, %r15d
	movl	%r15d, 236(%rbx)
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#9:                                 # %if.end.43
	leaq	172(%rbx), %rcx
	movl	$.L.str.12, %esi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	dict_bool_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#10:                                # %if.end.47
	leaq	280(%rbx), %r9
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movl	$.L.str.13, %esi
	movl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	callq	dict_int_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#11:                                # %if.end.51
	leaq	288(%rbx), %r8
	movl	$.L.str.14, %edx
	movl	$10, %ecx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	dict_float_array_param
	movl	%eax, %r15d
	movl	%r15d, 284(%rbx)
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#12:                                # %if.end.59
	leaq	328(%rbx), %rcx
	movl	$.L.str.15, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	dict_bool_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#13:                                # %if.end.63
	leaq	336(%rbx), %r8
	movl	$-15, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.16, %edx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	dict_float_array_check_param
	movl	%eax, %r15d
	movl	%r15d, 332(%rbx)
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#14:                                # %if.end.71
	leaq	344(%rbx), %r8
	movl	$-15, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.17, %edx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	dict_float_array_check_param
	movl	%eax, %r15d
	movl	%r15d, 340(%rbx)
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#15:                                # %if.end.79
	leaq	352(%rbx), %r8
	movl	$.L.str.18, %edx
	movl	$12, %ecx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	dict_float_array_param
	movl	%eax, %r15d
	movl	%r15d, 348(%rbx)
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#16:                                # %if.end.87
	leaq	404(%rbx), %r8
	movl	$.L.str.19, %edx
	movl	$12, %ecx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	dict_float_array_param
	movl	%eax, %r15d
	movl	%r15d, 400(%rbx)
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#17:                                # %if.end.95
	leaq	456(%rbx), %r8
	movl	$.L.str.20, %edx
	movl	$16, %ecx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	dict_float_array_param
	movl	%eax, %r15d
	movl	%r15d, 452(%rbx)
	testl	%r15d, %r15d
	js	.LBB1_52
# BB#18:                                # %if.end.102
	movslq	108(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB1_19
# BB#20:                                # %for.body.lr.ph.i
	leaq	-1(%rax), %rsi
	movq	%rsi, %rdx
	shrq	%rdx
	xorl	%ecx, %ecx
	btq	$1, %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	jb	.LBB1_21
# BB#22:                                # %for.body.i.prol
	movss	116(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	112(%rbx), %xmm0
	maxss	.LCPI1_3(%rip), %xmm0
	movl	$2, %ecx
	movaps	%xmm0, %xmm1
	jmp	.LBB1_23
.LBB1_19:
	movss	.LCPI1_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	16(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB1_26
.LBB1_21:
	movss	.LCPI1_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
                                        # implicit-def: XMM1
.LBB1_23:                               # %for.body.lr.ph.i.split
	testq	%rdx, %rdx
	je	.LBB1_26
# BB#24:                                # %for.body.lr.ph.i.split.split
	movaps	%xmm0, %xmm1
.LBB1_25:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	116(%rbx,%rcx,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	112(%rbx,%rcx,4), %xmm2
	movaps	%xmm0, %xmm3
	cmpltss	%xmm2, %xmm3
	movaps	%xmm3, %xmm4
	andps	%xmm2, %xmm4
	andnps	%xmm1, %xmm3
	orps	%xmm4, %xmm3
	maxss	%xmm0, %xmm2
	movss	124(%rbx,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	subss	120(%rbx,%rcx,4), %xmm0
	movaps	%xmm2, %xmm1
	cmpltss	%xmm0, %xmm1
	movaps	%xmm1, %xmm4
	andnps	%xmm3, %xmm4
	andps	%xmm0, %xmm1
	orps	%xmm4, %xmm1
	maxss	%xmm2, %xmm0
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_25
.LBB1_26:                               # %find_zone_height.exit
	movslq	284(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB1_27
# BB#28:                                # %for.body.lr.ph.i.116
	leaq	-1(%rax), %rsi
	movq	%rsi, %rdx
	shrq	%rdx
	xorl	%ecx, %ecx
	btq	$1, %rsi
	jb	.LBB1_30
# BB#29:                                # %for.body.i.122.prol
	movss	292(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	288(%rbx), %xmm0
	maxss	%xmm1, %xmm0
	movl	$2, %ecx
	movaps	%xmm0, %xmm1
.LBB1_30:                               # %for.body.lr.ph.i.116.split
	testq	%rdx, %rdx
	je	.LBB1_33
# BB#31:                                # %for.body.lr.ph.i.116.split.split
	movaps	%xmm1, %xmm0
.LBB1_32:                               # %for.body.i.122
                                        # =>This Inner Loop Header: Depth=1
	movss	292(%rbx,%rcx,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	288(%rbx,%rcx,4), %xmm2
	movaps	%xmm1, %xmm3
	cmpltss	%xmm2, %xmm3
	movaps	%xmm3, %xmm4
	andps	%xmm2, %xmm4
	andnps	%xmm0, %xmm3
	orps	%xmm4, %xmm3
	maxss	%xmm1, %xmm2
	movss	300(%rbx,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	subss	296(%rbx,%rcx,4), %xmm1
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	movaps	%xmm0, %xmm4
	andnps	%xmm3, %xmm4
	andps	%xmm1, %xmm0
	orps	%xmm4, %xmm0
	maxss	%xmm2, %xmm1
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_32
	jmp	.LBB1_33
.LBB1_27:
	movaps	%xmm1, %xmm0
.LBB1_33:                               # %find_zone_height.exit127
	movslq	176(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB1_34
# BB#35:                                # %for.body.lr.ph.i.102
	leaq	-1(%rax), %rsi
	movq	%rsi, %rdx
	shrq	%rdx
	xorl	%ecx, %ecx
	btq	$1, %rsi
	jb	.LBB1_37
# BB#36:                                # %for.body.i.108.prol
	movss	184(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	180(%rbx), %xmm1
	maxss	%xmm0, %xmm1
	movl	$2, %ecx
	movaps	%xmm1, %xmm0
.LBB1_37:                               # %for.body.lr.ph.i.102.split
	testq	%rdx, %rdx
	je	.LBB1_40
# BB#38:                                # %for.body.lr.ph.i.102.split.split
	movaps	%xmm0, %xmm1
.LBB1_39:                               # %for.body.i.108
                                        # =>This Inner Loop Header: Depth=1
	movss	184(%rbx,%rcx,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	180(%rbx,%rcx,4), %xmm2
	movaps	%xmm0, %xmm3
	cmpltss	%xmm2, %xmm3
	movaps	%xmm3, %xmm4
	andps	%xmm2, %xmm4
	andnps	%xmm1, %xmm3
	orps	%xmm4, %xmm3
	maxss	%xmm0, %xmm2
	movss	192(%rbx,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	subss	188(%rbx,%rcx,4), %xmm0
	movaps	%xmm2, %xmm1
	cmpltss	%xmm0, %xmm1
	movaps	%xmm1, %xmm4
	andnps	%xmm3, %xmm4
	andps	%xmm0, %xmm1
	orps	%xmm4, %xmm1
	maxss	%xmm2, %xmm0
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_39
	jmp	.LBB1_40
.LBB1_34:
	movaps	%xmm0, %xmm1
.LBB1_40:                               # %find_zone_height.exit113
	movslq	236(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB1_41
# BB#42:                                # %for.body.lr.ph.i.88
	leaq	-1(%rax), %rsi
	movq	%rsi, %rdx
	shrq	%rdx
	xorl	%ecx, %ecx
	btq	$1, %rsi
	jb	.LBB1_44
# BB#43:                                # %for.body.i.94.prol
	movss	244(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	240(%rbx), %xmm0
	maxss	%xmm1, %xmm0
	movl	$2, %ecx
	movaps	%xmm0, %xmm1
.LBB1_44:                               # %for.body.lr.ph.i.88.split
	testq	%rdx, %rdx
	je	.LBB1_47
# BB#45:                                # %for.body.lr.ph.i.88.split.split
	movaps	%xmm1, %xmm0
.LBB1_46:                               # %for.body.i.94
                                        # =>This Inner Loop Header: Depth=1
	movss	244(%rbx,%rcx,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	240(%rbx,%rcx,4), %xmm2
	movaps	%xmm1, %xmm3
	cmpltss	%xmm2, %xmm3
	movaps	%xmm3, %xmm4
	andps	%xmm2, %xmm4
	andnps	%xmm0, %xmm3
	orps	%xmm4, %xmm3
	maxss	%xmm1, %xmm2
	movss	252(%rbx,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	subss	248(%rbx,%rcx,4), %xmm1
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	movaps	%xmm0, %xmm4
	andnps	%xmm3, %xmm4
	andps	%xmm1, %xmm0
	orps	%xmm4, %xmm0
	maxss	%xmm2, %xmm1
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_46
	jmp	.LBB1_47
.LBB1_41:
	movaps	%xmm1, %xmm0
.LBB1_47:                               # %find_zone_height.exit99
	movss	(%r14), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	ucomiss	.LCPI1_3(%rip), %xmm1
	jbe	.LBB1_49
# BB#48:                                # %if.then.126
	movss	.LCPI1_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, (%r14)
.LBB1_49:                               # %if.end.130
	cmpl	$2, (%rdi)
	jb	.LBB1_51
# BB#50:                                # %if.then.137
	movl	$0, (%rdi)
.LBB1_51:                               # %if.end.139
	addq	$520, %rbx              # imm = 0x208
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	memset
.LBB1_52:                               # %cleanup
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	charstring_font_params, .Lfunc_end1-charstring_font_params
	.cfi_endproc

	.globl	charstring_font_init
	.align	16, 0x90
	.type	charstring_font_init,@function
charstring_font_init:                   # @charstring_font_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 32
.Ltmp22:
	.cfi_offset %rbx, -32
.Ltmp23:
	.cfi_offset %r14, -24
.Ltmp24:
	.cfi_offset %r15, -16
	movq	%rdx, %rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	72(%rbx), %r15
	leaq	448(%rbx), %rdi
	movl	$544, %edx              # imm = 0x220
	movq	%rax, %rsi
	callq	memcpy
	movq	$0, 504(%rbx)
	movq	24(%r14), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 96(%r15)
	movq	32(%r14), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 112(%r15)
	movq	40(%r14), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 128(%r15)
	movq	z1_data_procs+32(%rip), %rax
	movq	%rax, 480(%rbx)
	movups	z1_data_procs+16(%rip), %xmm0
	movups	%xmm0, 464(%rbx)
	movups	z1_data_procs(%rip), %xmm0
	movups	%xmm0, 448(%rbx)
	movq	%r15, 496(%rbx)
	movq	$z1_same_font, 192(%rbx)
	movq	$z1_glyph_info, 224(%rbx)
	movq	$z1_enumerate_glyph, 216(%rbx)
	movq	$zchar1_glyph_outline, 232(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	charstring_font_init, .Lfunc_end2-charstring_font_init
	.cfi_endproc

	.align	16, 0x90
	.type	z1_same_font,@function
z1_same_font:                           # @z1_same_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 96
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	128(%rsi), %eax
	xorl	%r15d, %r15d
	cmpl	128(%rdi), %eax
	jne	.LBB3_33
	.align	16, 0x90
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rbx
	movq	64(%rbx), %rdi
	cmpq	%rbx, %rdi
	jne	.LBB3_1
	.align	16, 0x90
.LBB3_2:                                # %while.cond.4
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rbp
	movq	64(%rbp), %rsi
	cmpq	%rbp, %rsi
	jne	.LBB3_2
# BB#3:                                 # %while.end.9
	cmpq	%rbx, %rbp
	je	.LBB3_4
# BB#5:                                 # %if.end.12
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %edx
	callq	gs_base_same_font
	movl	%eax, %r15d
	movl	%r15d, %r13d
	notl	%r13d
	andl	%r14d, %r13d
	movq	72(%rbx), %r12
	movq	72(%rbp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testb	$3, %r13b
	je	.LBB3_13
# BB#6:                                 # %land.lhs.true
	leaq	448(%rbp), %rdi
	movl	$z1_data_procs, %esi
	movl	$40, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB3_13
# BB#7:                                 # %land.lhs.true.17
	movq	16(%rbx), %rdi
	leaq	64(%r12), %rsi
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	64(%rax), %rdx
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB3_13
# BB#8:                                 # %land.lhs.true.21
	leaq	32(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%r12, %rdi
	movq	%r12, 8(%rsp)           # 8-byte Spill
	callq	dict_find_string
	movl	%eax, %r12d
	leaq	24(%rsp), %rdx
	movl	$.L.str, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	dict_find_string
	testl	%eax, %eax
	setg	%dl
	testl	%r12d, %r12d
	setg	%cl
	setle	%sil
	movb	%cl, %al
	xorb	%dl, %al
	xorb	$1, %al
	xorb	%dl, %cl
	jne	.LBB3_9
# BB#10:                                # %land.lhs.true.21
	testb	%sil, %sil
	movq	8(%rsp), %r12           # 8-byte Reload
	jne	.LBB3_12
# BB#11:                                # %lor.rhs.i
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	72(%rax), %rdi
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdx
	callq	obj_eq
	testl	%eax, %eax
	setne	%al
	jmp	.LBB3_12
.LBB3_4:
	movl	%r14d, %r15d
	jmp	.LBB3_33
.LBB3_9:
	movq	8(%rsp), %r12           # 8-byte Reload
.LBB3_12:                               # %same_font_dict.exit
	movzbl	%al, %eax
	andl	$1, %eax
	orl	%eax, %r15d
.LBB3_13:                               # %if.end.25
	testb	$2, %r13b
	je	.LBB3_29
# BB#14:                                # %if.end.25
	movl	%r15d, %eax
	andl	$1, %eax
	je	.LBB3_29
# BB#15:                                # %land.lhs.true.31
	leaq	448(%rbp), %rdi
	movl	$z1_data_procs, %esi
	movl	$40, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB3_29
# BB#16:                                # %land.lhs.true.36
	leaq	32(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%r12, %rdi
	movq	%r12, 8(%rsp)           # 8-byte Spill
	callq	dict_find_string
	movl	%eax, %r12d
	leaq	24(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	dict_find_string
	testl	%eax, %eax
	setg	%dl
	testl	%r12d, %r12d
	setg	%al
	setle	%cl
	xorb	%dl, %al
	jne	.LBB3_19
# BB#17:                                # %land.lhs.true.36
	testb	%cl, %cl
	jne	.LBB3_19
# BB#18:                                # %lor.rhs.i.60
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	72(%rax), %rdi
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdx
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB3_20
	jmp	.LBB3_28
.LBB3_19:                               # %same_font_dict.exit62
	testb	$1, %al
	jne	.LBB3_28
.LBB3_20:                               # %land.lhs.true.39
	leaq	32(%rsp), %rdx
	movl	$.L.str.26, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	dict_find_string
	movl	%eax, %r12d
	leaq	24(%rsp), %rdx
	movl	$.L.str.26, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	dict_find_string
	testl	%eax, %eax
	setg	%dl
	testl	%r12d, %r12d
	setg	%al
	setle	%cl
	xorb	%dl, %al
	jne	.LBB3_23
# BB#21:                                # %land.lhs.true.39
	testb	%cl, %cl
	jne	.LBB3_23
# BB#22:                                # %lor.rhs.i.80
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	72(%rax), %rdi
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdx
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB3_24
	jmp	.LBB3_28
.LBB3_23:                               # %same_font_dict.exit82
	testb	$1, %al
	jne	.LBB3_28
.LBB3_24:                               # %land.lhs.true.42
	leaq	32(%rsp), %rdx
	movl	$.L.str.27, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	dict_find_string
	movl	%eax, %r12d
	leaq	24(%rsp), %rdx
	movl	$.L.str.27, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	dict_find_string
	testl	%eax, %eax
	setg	%dl
	testl	%r12d, %r12d
	setg	%cl
	setle	%sil
	movb	%cl, %al
	xorb	%dl, %al
	xorb	$1, %al
	xorb	%dl, %cl
	jne	.LBB3_27
# BB#25:                                # %land.lhs.true.42
	testb	%sil, %sil
	jne	.LBB3_27
# BB#26:                                # %lor.rhs.i.100
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	72(%rax), %rdi
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdx
	callq	obj_eq
	testl	%eax, %eax
	setne	%al
.LBB3_27:                               # %same_font_dict.exit102
	movl	%r15d, %ecx
	orl	$2, %ecx
	testb	$1, %al
	cmovnel	%ecx, %r15d
.LBB3_28:                               # %if.end.47
	movq	8(%rsp), %r12           # 8-byte Reload
.LBB3_29:                               # %if.end.47
	testb	$4, %r13b
	je	.LBB3_32
# BB#30:                                # %land.lhs.true.50
	movl	$z1_same_font, %eax
	cmpq	%rax, 192(%rbp)
	jne	.LBB3_32
# BB#31:                                # %land.lhs.true.53
	movq	16(%rbx), %rdi
	addq	$48, %r12
	movq	16(%rsp), %rdx          # 8-byte Reload
	addq	$48, %rdx
	movq	%r12, %rsi
	callq	obj_eq
	movl	%r15d, %ecx
	orl	$4, %ecx
	testl	%eax, %eax
	cmovnel	%ecx, %r15d
.LBB3_32:                               # %if.end.60
	andl	%r14d, %r15d
.LBB3_33:                               # %return
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	z1_same_font, .Lfunc_end3-z1_same_font
	.cfi_endproc

	.align	16, 0x90
	.type	z1_enumerate_glyph,@function
z1_enumerate_glyph:                     # @z1_enumerate_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	16(%rdi), %rdx
	movq	72(%rdi), %rsi
	addq	$64, %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	jmp	zchar_enumerate_glyph   # TAILCALL
.Lfunc_end4:
	.size	z1_enumerate_glyph, .Lfunc_end4-z1_enumerate_glyph
	.cfi_endproc

	.globl	build_charstring_font
	.align	16, 0x90
	.type	build_charstring_font,@function
build_charstring_font:                  # @build_charstring_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 80
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, %rbx
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movq	8(%r14), %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	charstring_font_params
	testl	%eax, %eax
	js	.LBB5_3
# BB#1:                                 # %if.end
	movl	80(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	16(%rsp), %rdx
	movl	$st_gs_font_type1, %r8d
	movq	%rbp, %rsi
	movq	%r14, %rdi
	movl	%r12d, %ecx
	movq	%r13, %r9
	callq	build_gs_primitive_font
	testl	%eax, %eax
	jne	.LBB5_3
# BB#2:                                 # %if.end.4
	movq	16(%rsp), %rbp
	movq	72(%rbp), %r12
	leaq	448(%rbp), %rdi
	movl	$544, %edx              # imm = 0x220
	movq	%r15, %rsi
	callq	memcpy
	movq	$0, 504(%rbp)
	movq	24(%rbx), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 96(%r12)
	movq	32(%rbx), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 112(%r12)
	movq	40(%rbx), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 128(%r12)
	movq	z1_data_procs+32(%rip), %rax
	movq	%rax, 480(%rbp)
	movups	z1_data_procs+16(%rip), %xmm0
	movups	%xmm0, 464(%rbp)
	movups	z1_data_procs(%rip), %xmm0
	movups	%xmm0, 448(%rbp)
	movq	%r12, 496(%rbp)
	movq	$z1_same_font, 192(%rbp)
	movq	$z1_glyph_info, 224(%rbp)
	movq	$z1_enumerate_glyph, 216(%rbp)
	movq	$zchar1_glyph_outline, 232(%rbp)
	movq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	define_gs_font
.LBB5_3:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	build_charstring_font, .Lfunc_end5-build_charstring_font
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildfont1,@function
zbuildfont1:                            # @zbuildfont1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 24
	subq	$632, %rsp              # imm = 0x278
.Ltmp53:
	.cfi_def_cfa_offset 656
.Ltmp54:
	.cfi_offset %rbx, -24
.Ltmp55:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rsi
	movl	$.L.str.23, %edx
	movl	$.L.str.24, %ecx
	callq	build_proc_name_refs
	testl	%eax, %eax
	js	.LBB6_3
# BB#1:                                 # %if.end
	leaq	584(%rsp), %rsi
	movq	%r14, %rdi
	callq	charstring_font_get_refs
	testl	%eax, %eax
	js	.LBB6_3
# BB#2:                                 # %if.end.i
	movq	$gs_type1_interpret, 80(%rsp)
	movq	$4, 104(%rsp)
	movl	$16, (%rsp)
	leaq	8(%rsp), %rdx
	leaq	584(%rsp), %r8
	leaq	40(%rsp), %r9
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	build_charstring_font
.LBB6_3:                                # %cleanup
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	zbuildfont1, .Lfunc_end6-zbuildfont1
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildfont4,@function
zbuildfont4:                            # @zbuildfont4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 24
	subq	$632, %rsp              # imm = 0x278
.Ltmp58:
	.cfi_def_cfa_offset 656
.Ltmp59:
	.cfi_offset %rbx, -24
.Ltmp60:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	build_gs_font_procs
	testl	%eax, %eax
	js	.LBB7_3
# BB#1:                                 # %if.end
	leaq	584(%rsp), %rsi
	movq	%rbx, %rdi
	callq	charstring_font_get_refs
	testl	%eax, %eax
	js	.LBB7_3
# BB#2:                                 # %if.end.i
	movq	$gs_type1_interpret, 80(%rsp)
	movq	$4, 104(%rsp)
	movl	$0, (%rsp)
	leaq	8(%rsp), %rdx
	leaq	584(%rsp), %r8
	leaq	40(%rsp), %r9
	movl	$4, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	build_charstring_font
.LBB7_3:                                # %cleanup
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	zbuildfont4, .Lfunc_end7-zbuildfont4
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Private"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"OtherSubrs"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Subrs"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"lenIV"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"subroutineNumberBias"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"BlueFuzz"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"BlueScale"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"BlueShift"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"BlueValues"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ExpansionFactor"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"FamilyBlues"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"FamilyOtherBlues"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ForceBold"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"LanguageGroup"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"OtherBlues"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"RndStemUp"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"StdHW"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"StdVW"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"StemSnapH"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"StemSnapV"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"WeightVector"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"2.buildfont1"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"2.buildfont4"
	.size	.L.str.22, 13

	.type	zfont1_op_defs,@object  # @zfont1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfont1_op_defs
	.align	16
zfont1_op_defs:
	.quad	.L.str.21
	.quad	zbuildfont1
	.quad	.L.str.22
	.quad	zbuildfont4
	.zero	16
	.size	zfont1_op_defs, 48

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"%Type1BuildChar"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%Type1BuildGlyph"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Metrics"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Metrics2"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"CDevProc"
	.size	.L.str.27, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
