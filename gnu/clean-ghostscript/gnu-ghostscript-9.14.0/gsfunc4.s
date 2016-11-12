	.text
	.file	"gsfunc4.bc"
	.globl	gs_function_PtCr_free_params
	.align	16, 0x90
	.type	gs_function_PtCr_free_params,@function
gs_function_PtCr_free_params:           # @gs_function_PtCr_free_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	32(%rbx), %rsi
	movl	40(%rbx), %edx
	movl	$.L.str, %ecx
	movq	%r14, %rdi
	callq	gs_free_const_string
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	fn_common_free_params   # TAILCALL
.Lfunc_end0:
	.size	gs_function_PtCr_free_params, .Lfunc_end0-gs_function_PtCr_free_params
	.cfi_endproc

	.globl	gs_function_PtCr_init
	.align	16, 0x90
	.type	gs_function_PtCr_init,@function
gs_function_PtCr_init:                  # @gs_function_PtCr_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	$0, (%r14)
	movl	(%rbx), %esi
	movl	16(%rbx), %edx
	movq	%rbx, %rdi
	callq	fn_check_mnDR
	testl	%eax, %eax
	js	.LBB1_15
# BB#1:                                 # %if.end
	movl	$-13, %eax
	cmpl	$256, (%rbx)            # imm = 0x100
	jg	.LBB1_15
# BB#2:                                 # %lor.lhs.false
	cmpl	$256, 16(%rbx)          # imm = 0x100
	jg	.LBB1_15
# BB#3:                                 # %if.end.6
	movq	32(%rbx), %rcx
	movzbl	(%rcx), %eax
	cmpl	$45, %eax
	movq	%rcx, %rdx
	je	.LBB1_12
# BB#4:
	movq	%rcx, %rdx
	jmp	.LBB1_5
.LBB1_8:                                # %sw.bb.11
                                        #   in Loop: Header=BB1_5 Depth=1
	addq	$4, %rdx
	jmp	.LBB1_11
.LBB1_7:                                # %sw.bb
                                        #   in Loop: Header=BB1_5 Depth=1
	incq	%rdx
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	%al, %esi
	leal	-38(%rsi), %eax
	cmpl	$9, %eax
	ja	.LBB1_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB1_5 Depth=1
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_9:                                # %sw.bb.13
                                        #   in Loop: Header=BB1_5 Depth=1
	addq	$2, %rdx
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_10:                               # %sw.default
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$-15, %eax
	cmpl	$37, %esi
	ja	.LBB1_15
.LBB1_11:                               # %for.inc
                                        #   in Loop: Header=BB1_5 Depth=1
	movzbl	1(%rdx), %eax
	incq	%rdx
	cmpl	$45, %eax
	jne	.LBB1_5
.LBB1_12:                               # %for.end
	movl	40(%rbx), %eax
	leaq	-1(%rcx,%rax), %rcx
	movl	$-15, %eax
	cmpq	%rcx, %rdx
	jne	.LBB1_15
# BB#13:                                # %cleanup.cont
	movl	$st_function_PtCr, %esi
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB1_15
# BB#14:                                # %if.end.35
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	%xmm2, 104(%rcx)
	movups	%xmm1, 88(%rcx)
	movups	%xmm0, 72(%rcx)
	movl	$0, 128(%rcx)
	movq	$0, 136(%rcx)
	movl	$0, 144(%rcx)
	movq	$calc_access, 120(%rcx)
	movq	gs_function_PtCr_init.function_PtCr_head+64(%rip), %rax
	movq	%rax, 64(%rcx)
	movups	gs_function_PtCr_init.function_PtCr_head+48(%rip), %xmm0
	movups	%xmm0, 48(%rcx)
	movups	gs_function_PtCr_init.function_PtCr_head+32(%rip), %xmm0
	movups	%xmm0, 32(%rcx)
	movups	gs_function_PtCr_init.function_PtCr_head+16(%rip), %xmm0
	movups	%xmm0, 16(%rcx)
	movups	gs_function_PtCr_init.function_PtCr_head(%rip), %xmm0
	movups	%xmm0, (%rcx)
	movq	%rcx, (%r14)
	xorl	%eax, %eax
.LBB1_15:                               # %cleanup.47
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gs_function_PtCr_init, .Lfunc_end1-gs_function_PtCr_init
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_7
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_9
	.quad	.LBB1_9
	.quad	.LBB1_10
	.quad	.LBB1_9
	.quad	.LBB1_11

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
.LCPI2_2:
	.quad	-4476578029606273024    # double -2147483648
.LCPI2_3:
	.quad	4746794007244308480     # double 2147483647
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	fn_PtCr_evaluate,@function
fn_PtCr_evaluate:                       # @fn_PtCr_evaluate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	subq	$2232, %rsp             # imm = 0x8B8
.Ltmp17:
	.cfi_def_cfa_offset 2288
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movslq	72(%r14), %rax
	testq	%rax, %rax
	movq	104(%r14), %rbp
	movl	$0, 160(%rsp)
	movl	$0, 168(%rsp)
	jle	.LBB2_4
# BB#1:                                 # %for.body.preheader
	xorl	%ecx, %ecx
	testb	$1, %al
	je	.LBB2_3
# BB#2:                                 # %for.body.prol
	movl	(%rsi), %ecx
	movl	%ecx, 180(%rsp)
	movl	$3, 176(%rsp)
	movl	$1, %ecx
.LBB2_3:                                # %for.body.preheader.split
	cmpl	$1, %eax
	je	.LBB2_4
	.align	16, 0x90
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rcx,4), %edx
	movl	%edx, 180(%rsp,%rcx,8)
	movl	$3, 176(%rsp,%rcx,8)
	movl	4(%rsi,%rcx,4), %edx
	movl	%edx, 188(%rsp,%rcx,8)
	movl	$3, 184(%rsp,%rcx,8)
	leaq	2(%rcx), %rcx
	cmpq	%rax, %rcx
	jl	.LBB2_5
.LBB2_4:                                # %for.cond.10.preheader
	leaq	168(%rsp), %r12
	leaq	168(%rsp,%rax,8), %rbx
	movl	$-1, %r13d
                                        # implicit-def: EAX
	movl	%eax, 44(%rsp)          # 4-byte Spill
	jmp	.LBB2_7
.LBB2_6:                                # %for.cond.10.loopexit
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	.align	16, 0x90
.LBB2_7:                                # %for.cond.10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
                                        #       Child Loop BB2_9 Depth 3
                                        #     Child Loop BB2_112 Depth 2
                                        #     Child Loop BB2_109 Depth 2
	leaq	-8(%rbx), %r15
	movl	-8(%rbx), %edx
	movl	(%rbx), %ecx
	jmp	.LBB2_8
.LBB2_13:                               # %sw.bb.29
                                        #   in Loop: Header=BB2_8 Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-4(%rbx), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbx)
	movl	$3, -8(%rbx)
	movl	$3, %edx
	.align	16, 0x90
.LBB2_8:                                # %sw.outer
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_9 Depth 3
	shll	$2, %edx
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_11:                               # %sw.bb.21
                                        #   in Loop: Header=BB2_9 Depth=3
	cvtsi2sdl	4(%rbx), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rbx)
	movl	$3, (%rbx)
	movl	$3, %ecx
.LBB2_9:                                # %sw
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rdx,%rcx), %eax
	movzbl	(%rbp), %esi
	shlq	$4, %rsi
	movzbl	fn_PtCr_evaluate.op_defn_table(%rsi,%rax), %esi
	cmpq	$65, %rsi
	ja	.LBB2_6
# BB#10:                                # %sw
                                        #   in Loop: Header=BB2_9 Depth=3
	movl	$-20, %eax
	jmpq	*.LJTI2_0(,%rsi,8)
.LBB2_12:                               # %sw.bb.25
                                        #   in Loop: Header=BB2_8 Depth=2
	cvtsi2sdl	4(%rbx), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rbx)
	movl	$3, (%rbx)
	movl	$3, %ecx
	jmp	.LBB2_13
.LBB2_15:                               # %sw.bb.41
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	jmp	.LBB2_67
.LBB2_19:                               # %sw.bb.70
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	-4(%rbx), %xmm0
	jmp	.LBB2_20
.LBB2_21:                               # %sw.bb.78
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	4(%rbx), %eax
	andl	%eax, -4(%rbx)
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_22:                               # %sw.bb.85
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	-4(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	4(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	leaq	56(%rsp), %rdi
	callq	gs_atan2_degrees
	testl	%eax, %eax
	js	.LBB2_23
# BB#24:                                # %if.end.97
                                        #   in Loop: Header=BB2_7 Depth=1
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbx)
	movl	$6, %ecx
	movq	%r15, %rbx
	incq	%rbp
	jmp	.LBB2_120
.LBB2_26:                               # %sw.bb.103
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	4(%rbx), %ecx
	leal	31(%rcx), %eax
	cmpl	$63, %eax
	jb	.LBB2_28
# BB#27:                                # %if.then.112
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$0, -4(%rbx)
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_32:                               # %sw.bb.136
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	ceil
	jmp	.LBB2_67
.LBB2_33:                               # %sw.bb.144
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	gs_cos_degrees
	jmp	.LBB2_67
.LBB2_34:                               # %sw.bb.152
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	cvttss2si	4(%rbx), %eax
	movl	%eax, 4(%rbx)
	movl	$2, (%rbx)
	jmp	.LBB2_7
.LBB2_35:                               # %sw.bb.160
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movl	$-23, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB2_36
	jnp	.LBB2_139
.LBB2_36:                               # %if.end.166
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	-4(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -4(%rbx)
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_37:                               # %sw.bb.173
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	-4(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	4(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	callq	pow
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB2_20
.LBB2_38:                               # %sw.bb.187
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	jmp	.LBB2_67
.LBB2_40:                               # %sw.bb.195
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	4(%rbx), %ecx
	movl	$-23, %eax
	testl	%ecx, %ecx
	je	.LBB2_139
# BB#41:                                # %if.end.201
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	-4(%rbx), %eax
	cltd
	idivl	%ecx
	movl	%eax, -4(%rbx)
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movq	%r15, %rbx
	jne	.LBB2_7
# BB#42:                                # %if.end.201
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$-15, %eax
	cmpl	$-1, %ecx
	movq	%r15, %rbx
	jne	.LBB2_7
	jmp	.LBB2_139
.LBB2_43:                               # %sw.bb.218
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	log
	jmp	.LBB2_67
.LBB2_44:                               # %sw.bb.226
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	log10
	jmp	.LBB2_67
.LBB2_45:                               # %sw.bb.234
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	4(%rbx), %ecx
	movl	$-23, %eax
	testl	%ecx, %ecx
	je	.LBB2_139
# BB#46:                                # %if.end.240
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	-4(%rbx), %eax
	cltd
	idivl	%ecx
	jmp	.LBB2_47
.LBB2_53:                               # %sw.bb.270
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	-4(%rbx), %xmm0
	jmp	.LBB2_20
.LBB2_58:                               # %sw.bb.294
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI2_1(%rip), %xmm0
	movss	%xmm0, 4(%rbx)
	jmp	.LBB2_7
.LBB2_60:                               # %sw.bb.305
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	notl	4(%rbx)
	jmp	.LBB2_7
.LBB2_61:                               # %sw.bb.310
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	4(%rbx), %eax
	orl	%eax, -4(%rbx)
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_62:                               # %sw.bb.317
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI2_0(%rip), %xmm0
	callq	floor
	jmp	.LBB2_67
.LBB2_63:                               # %sw.bb.326
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	gs_sin_degrees
	jmp	.LBB2_67
.LBB2_64:                               # %sw.bb.334
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB2_66
# BB#65:                                # %call.sqrt
                                        #   in Loop: Header=BB2_7 Depth=1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
	jmp	.LBB2_66
.LBB2_71:                               # %sw.bb.372
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movss	-4(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	4(%rbx), %xmm0
.LBB2_20:                               # %for.cond.10
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	%xmm0, -4(%rbx)
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_72:                               # %sw.bb.380
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	4(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm0
	xorps	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	jbe	.LBB2_74
# BB#73:                                # %cond.true
                                        #   in Loop: Header=BB2_7 Depth=1
	callq	ceil
	jmp	.LBB2_66
.LBB2_75:                               # %sw.bb.396
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	4(%rbx), %eax
	xorl	%eax, -4(%rbx)
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_77:                               # %sw.bb.415
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	-4(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cmpeqss	4(%rbx), %xmm0
	jmp	.LBB2_78
.LBB2_81:                               # %sw.bb.440
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	-4(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	4(%rbx), %xmm0
	jmp	.LBB2_82
.LBB2_85:                               # %sw.bb.462
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	-4(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	4(%rbx), %xmm0
	jmp	.LBB2_86
.LBB2_88:                               # %sw.bb.484
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	-4(%rbx), %xmm0
.LBB2_82:                               # %rel
                                        #   in Loop: Header=BB2_7 Depth=1
	setae	%al
	movzbl	%al, %eax
	jmp	.LBB2_79
.LBB2_90:                               # %sw.bb.506
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	-4(%rbx), %xmm0
.LBB2_86:                               # %rel
                                        #   in Loop: Header=BB2_7 Depth=1
	seta	%al
	movzbl	%al, %eax
	jmp	.LBB2_79
.LBB2_92:                               # %sw.bb.528
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	-4(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cmpneqss	4(%rbx), %xmm0
.LBB2_78:                               # %rel
                                        #   in Loop: Header=BB2_7 Depth=1
	movd	%xmm0, %eax
	andl	$1, %eax
	jmp	.LBB2_79
.LBB2_93:                               # %sw.bb.539
                                        #   in Loop: Header=BB2_7 Depth=1
	movslq	4(%rbx), %r15
	testq	%r15, %r15
	movl	$-15, %eax
	js	.LBB2_139
# BB#94:                                # %sw.bb.539
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	%rbx, %rcx
	subq	%r12, %rcx
	shrq	$3, %rcx
	cmpl	%ecx, %r15d
	jge	.LBB2_139
# BB#95:                                # %if.end.549
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$257, %edx              # imm = 0x101
	subl	%ecx, %edx
	movl	$-13, %eax
	cmpl	%edx, %r15d
	jg	.LBB2_139
# BB#96:                                # %if.end.555
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movq	%r15, %rdx
	shlq	$3, %rdx
	movq	%rbx, %rsi
	subq	%rdx, %rsi
	movq	%rbx, %rdi
	callq	memcpy
	leal	-1(%r15), %eax
	cltq
	leaq	(%rbx,%rax,8), %rbx
	jmp	.LBB2_7
.LBB2_97:                               # %sw.bb.564
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movq	(%rbx), %rax
	movq	%rax, 8(%rbx)
	jmp	.LBB2_119
.LBB2_98:                               # %sw.bb.566
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movq	(%rbx), %rax
	movq	%rax, 2216(%rsp)
	movq	-8(%rbx), %rax
	movq	%rax, (%rbx)
	movq	2216(%rsp), %rax
	movq	%rax, -8(%rbx)
	jmp	.LBB2_7
.LBB2_99:                               # %sw.bb.571
                                        #   in Loop: Header=BB2_7 Depth=1
	movslq	4(%rbx), %rcx
	testq	%rcx, %rcx
	movl	$-15, %eax
	js	.LBB2_139
# BB#100:                               # %lor.lhs.false.576
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	%rbx, %rdx
	subq	%r12, %rdx
	sarq	$3, %rdx
	decq	%rdx
	cmpq	%rdx, %rcx
	jge	.LBB2_139
# BB#101:                               # %if.end.586
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	notl	%ecx
	movslq	%ecx, %rax
	movq	(%rbx,%rax,8), %rax
	movq	%rax, (%rbx)
	jmp	.LBB2_7
.LBB2_102:                              # %sw.bb.591
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_103:                              # %sw.bb.593
                                        #   in Loop: Header=BB2_7 Depth=1
	movslq	-4(%rbx), %rdx
	testq	%rdx, %rdx
	movl	$-15, %eax
	js	.LBB2_139
# BB#104:                               # %lor.lhs.false.601
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	%rbx, %rcx
	subq	%r12, %rcx
	sarq	$3, %rcx
	addq	$-2, %rcx
	cmpq	%rcx, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	jg	.LBB2_139
# BB#105:                               # %for.cond.612.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%r13d, 4(%rsp)          # 4-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movl	4(%rbx), %r15d
	testl	%r15d, %r15d
	jle	.LBB2_106
# BB#111:                               # %for.body.615.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	(,%rcx,8), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rbx, %rbp
	subq	%rax, %rbp
	leaq	8(,%rcx,8), %rax
	movq	%rbx, %r14
	subq	%rax, %r14
	movl	%ecx, %eax
	notl	%eax
	movslq	%eax, %r13
	.align	16, 0x90
.LBB2_112:                              # %for.body.615
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	memmove
	movq	-8(%rbx), %rax
	movq	%rax, (%rbx,%r13,8)
	leal	-1(%r15), %r12d
	cmpl	$1, %r15d
	movl	%r12d, %r15d
	jg	.LBB2_112
	jmp	.LBB2_107
.LBB2_113:                              # %sw.bb.656
                                        #   in Loop: Header=BB2_7 Depth=1
	movzbl	1(%rbp), %eax
	addq	$2, %rbp
	movl	%eax, 12(%rbx)
	movl	$2, 8(%rbx)
	jmp	.LBB2_119
.LBB2_114:                              # %sw.bb.664
                                        #   in Loop: Header=BB2_7 Depth=1
	leaq	1(%rbp), %rsi
	leaq	12(%rbx), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	$2, 8(%rbx)
	addq	$5, %rbp
	jmp	.LBB2_119
.LBB2_115:                              # %sw.bb.672
                                        #   in Loop: Header=BB2_7 Depth=1
	leaq	1(%rbp), %rsi
	leaq	12(%rbx), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	$3, 8(%rbx)
	addq	$5, %rbp
	jmp	.LBB2_119
.LBB2_116:                              # %sw.bb.680
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	$1, 12(%rbx)
	jmp	.LBB2_118
.LBB2_117:                              # %sw.bb.686
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	$0, 12(%rbx)
.LBB2_118:                              # %push
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$1, 8(%rbx)
.LBB2_119:                              # %push
                                        #   in Loop: Header=BB2_7 Depth=1
	leaq	8(%rbx), %rax
	leaq	2216(%rsp), %rcx
	cmpq	%rcx, %rbx
	setne	%cl
	movzbl	%cl, %ecx
	leal	1(%rcx,%rcx,4), %ecx
	cmovneq	%rax, %rbx
	movl	$-13, %eax
	movl	44(%rsp), %edx          # 4-byte Reload
	cmovel	%eax, %edx
	movl	%edx, 44(%rsp)          # 4-byte Spill
.LBB2_120:                              # %cleanup.757
                                        #   in Loop: Header=BB2_7 Depth=1
	testl	%ecx, %ecx
	je	.LBB2_7
# BB#121:                               # %cleanup.757
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	$6, %ecx
	je	.LBB2_7
	jmp	.LBB2_122
.LBB2_129:                              # %sw.bb.698
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	$0, 4(%rbx)
	je	.LBB2_130
# BB#140:                               # %if.then.703
                                        #   in Loop: Header=BB2_7 Depth=1
	addq	$3, %rbp
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_132:                              # %sw.bb.717
                                        #   in Loop: Header=BB2_7 Depth=1
	incl	%r13d
	movl	4(%rbx), %eax
	movslq	%r13d, %rcx
	movl	%eax, 112(%rsp,%rcx,4)
	movzbl	1(%rbp), %edx
	shll	$8, %edx
	movzbl	2(%rbp), %esi
	leal	1(%rdx,%rsi), %edx
	movl	%edx, 64(%rsp,%rcx,4)
	movzbl	1(%rbp), %ecx
	shlq	$8, %rcx
	movzbl	2(%rbp), %edx
	leaq	3(%rcx,%rdx), %rcx
	leaq	1(%rbp,%rcx), %rbp
	jmp	.LBB2_134
.LBB2_133:                              # %sw.bb.742.loopexit
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movslq	%r13d, %rax
	movl	112(%rsp,%rax,4), %eax
	movq	%rbx, %r15
.LBB2_134:                              # %sw.bb.742
                                        #   in Loop: Header=BB2_7 Depth=1
	movslq	%r13d, %rcx
	leal	-1(%rax), %edx
	movl	%edx, 112(%rsp,%rcx,4)
	testl	%eax, %eax
	jle	.LBB2_135
# BB#136:                               # %if.else.750
                                        #   in Loop: Header=BB2_7 Depth=1
	movslq	64(%rsp,%rcx,4), %rax
	subq	%rax, %rbp
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_14:                               # %sw.bb.36
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	4(%rbx), %eax
	testl	%eax, %eax
	jns	.LBB2_7
	jmp	.LBB2_55
.LBB2_16:                               # %sw.bb.47
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	-4(%rbx), %ecx
	movl	4(%rbx), %eax
	leal	(%rax,%rcx), %edx
	movl	%eax, %esi
	xorl	%ecx, %esi
	js	.LBB2_47
# BB#17:                                # %sw.bb.47
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%edx, %esi
	xorl	%ecx, %esi
	jns	.LBB2_47
# BB#18:                                # %if.then.59
                                        #   in Loop: Header=BB2_7 Depth=1
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	jmp	.LBB2_51
.LBB2_48:                               # %sw.bb.247
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	cvtsi2sdl	-4(%rbx), %xmm1
	cvtsi2sdl	4(%rbx), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB2_50
# BB#49:                                # %sw.bb.247
                                        #   in Loop: Header=BB2_7 Depth=1
	ucomisd	.LCPI2_3(%rip), %xmm0
	ja	.LBB2_50
# BB#52:                                # %if.else.262
                                        #   in Loop: Header=BB2_7 Depth=1
	cvttsd2si	%xmm0, %eax
	jmp	.LBB2_31
.LBB2_54:                               # %neg_int.loopexit
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	4(%rbx), %eax
.LBB2_55:                               # %neg_int
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jne	.LBB2_57
# BB#56:                                # %if.then.283
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$-3530822107858468861, %rax # imm = 0xCF00000000000003
	movq	%rax, (%rbx)
	jmp	.LBB2_7
.LBB2_59:                               # %sw.bb.300
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	cmpl	$0, 4(%rbx)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 4(%rbx)
	jmp	.LBB2_7
.LBB2_68:                               # %sw.bb.342
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
	movl	-4(%rbx), %eax
	movl	4(%rbx), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%ecx, %esi
	xorl	%eax, %esi
	jns	.LBB2_47
# BB#69:                                # %sw.bb.342
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%edx, %esi
	xorl	%eax, %esi
	js	.LBB2_47
# BB#70:                                # %if.then.358
                                        #   in Loop: Header=BB2_7 Depth=1
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
.LBB2_50:                               # %if.then.260
                                        #   in Loop: Header=BB2_7 Depth=1
	cvtsd2ss	%xmm0, %xmm0
.LBB2_51:                               # %for.cond.10
                                        #   in Loop: Header=BB2_7 Depth=1
	movss	%xmm0, -4(%rbx)
	movl	$3, -8(%rbx)
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_47:                               # %if.else
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%edx, -4(%rbx)
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_76:                               # %sw.bb.404
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-4(%rbx), %eax
	cmpl	4(%rbx), %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.LBB2_79
.LBB2_80:                               # %sw.bb.429
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-4(%rbx), %eax
	cmpl	4(%rbx), %eax
	setge	%al
	movzbl	%al, %eax
	jmp	.LBB2_79
.LBB2_84:                               # %sw.bb.451
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-4(%rbx), %eax
	cmpl	4(%rbx), %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.LBB2_79
.LBB2_87:                               # %sw.bb.473
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-4(%rbx), %eax
	cmpl	4(%rbx), %eax
	setle	%al
	movzbl	%al, %eax
	jmp	.LBB2_79
.LBB2_89:                               # %sw.bb.495
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-4(%rbx), %eax
	cmpl	4(%rbx), %eax
	setl	%al
	movzbl	%al, %eax
	jmp	.LBB2_79
.LBB2_91:                               # %sw.bb.517
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-4(%rbx), %eax
	cmpl	4(%rbx), %eax
	setne	%al
	movzbl	%al, %eax
.LBB2_79:                               # %rel
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%eax, -4(%rbx)
	incq	%rbp
	movl	$1, (%r15)
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_135:                              # %if.then.748
                                        #   in Loop: Header=BB2_7 Depth=1
	decl	%r13d
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_57:                               # %if.else.287
                                        #   in Loop: Header=BB2_7 Depth=1
	negl	%eax
	movl	%eax, 4(%rbx)
	jmp	.LBB2_7
.LBB2_28:                               # %if.else.116
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-4(%rbx), %eax
	testl	%ecx, %ecx
	js	.LBB2_29
# BB#30:                                # %if.else.128
                                        #   in Loop: Header=BB2_7 Depth=1
	shll	%cl, %eax
	jmp	.LBB2_31
.LBB2_74:                               # %cond.false
                                        #   in Loop: Header=BB2_7 Depth=1
	callq	floor
.LBB2_66:                               # %sw.bb.334.split
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%rbp
.LBB2_67:                               # %for.cond.10
                                        #   in Loop: Header=BB2_7 Depth=1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rbx)
	jmp	.LBB2_7
.LBB2_23:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$1, %ecx
	movl	%eax, 44(%rsp)          # 4-byte Spill
	incq	%rbp
	jmp	.LBB2_120
.LBB2_130:                              #   in Loop: Header=BB2_7 Depth=1
	movq	%r15, %rbx
.LBB2_131:                              # %sw.bb.706
                                        #   in Loop: Header=BB2_7 Depth=1
	movzbl	1(%rbp), %eax
	shlq	$8, %rax
	movzbl	2(%rbp), %ecx
	leaq	2(%rax,%rcx), %rax
	leaq	1(%rbp,%rax), %rbp
	jmp	.LBB2_7
.LBB2_106:                              #   in Loop: Header=BB2_7 Depth=1
	movl	%r15d, %r12d
.LBB2_107:                              # %for.cond.633.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	testl	%r12d, %r12d
	movq	24(%rsp), %r13          # 8-byte Reload
	jns	.LBB2_110
# BB#108:                               # %for.body.636.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%r13d, %eax
	notl	%eax
	movslq	%eax, %r15
	leaq	8(,%r13,8), %rax
	movq	%rbx, %r14
	subq	%rax, %r14
	shlq	$3, %r13
	movq	%rbx, %rbp
	subq	%r13, %rbp
	decl	%r12d
	.align	16, 0x90
.LBB2_109:                              # %for.body.636
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%r15,8), %rax
	movq	%rax, -8(%rbx)
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memmove
	incl	%r12d
	cmpl	$-1, %r12d
	jl	.LBB2_109
.LBB2_110:                              # %for.end.654
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	8(%rsp), %rbp           # 8-byte Reload
	incq	%rbp
	addq	$-16, %rbx
	movq	16(%rsp), %r14          # 8-byte Reload
	leaq	168(%rsp), %r12
	movl	4(%rsp), %r13d          # 4-byte Reload
	jmp	.LBB2_7
.LBB2_29:                               # %if.then.121
                                        #   in Loop: Header=BB2_7 Depth=1
	negl	%ecx
	shrl	%cl, %eax
.LBB2_31:                               # %for.cond.10
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%eax, -4(%rbx)
	movq	%r15, %rbx
	jmp	.LBB2_7
.LBB2_122:                              # %cleanup.757
	cmpl	$18, %ecx
	movl	44(%rsp), %eax          # 4-byte Reload
	jne	.LBB2_139
.LBB2_123:                              # %fin
	movslq	88(%r14), %rcx
	leaq	(%r12,%rcx,8), %rdx
	movl	$-15, %eax
	cmpq	%rdx, %rbx
	jne	.LBB2_139
# BB#124:                               # %for.cond.767.preheader
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB2_139
# BB#125:                               # %for.body.772.preheader
	xorl	%edx, %edx
	movq	32(%rsp), %rsi          # 8-byte Reload
	.align	16, 0x90
.LBB2_126:                              # %for.body.772
                                        # =>This Inner Loop Header: Depth=1
	movl	176(%rsp,%rdx,8), %eax
	cmpl	$3, %eax
	jne	.LBB2_127
# BB#141:                               # %sw.bb.786
                                        #   in Loop: Header=BB2_126 Depth=1
	movl	180(%rsp,%rdx,8), %eax
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB2_138
	.align	16, 0x90
.LBB2_127:                              # %for.body.772
                                        #   in Loop: Header=BB2_126 Depth=1
	cmpl	$2, %eax
	jne	.LBB2_128
# BB#137:                               # %sw.bb.777
                                        #   in Loop: Header=BB2_126 Depth=1
	cvtsi2ssl	180(%rsp,%rdx,8), %xmm0
	movq	32(%rsp), %rax          # 8-byte Reload
	movss	%xmm0, (%rax,%rdx,4)
.LBB2_138:                              # %for.cond.767.backedge
                                        #   in Loop: Header=BB2_126 Depth=1
	incq	%rdx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jl	.LBB2_126
	jmp	.LBB2_139
.LBB2_128:
	movl	$-20, %eax
.LBB2_139:                              # %cleanup.798
	addq	$2232, %rsp             # imm = 0x8B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fn_PtCr_evaluate, .Lfunc_end2-fn_PtCr_evaluate
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_15
	.quad	.LBB2_19
	.quad	.LBB2_21
	.quad	.LBB2_22
	.quad	.LBB2_26
	.quad	.LBB2_32
	.quad	.LBB2_33
	.quad	.LBB2_34
	.quad	.LBB2_6
	.quad	.LBB2_35
	.quad	.LBB2_37
	.quad	.LBB2_38
	.quad	.LBB2_40
	.quad	.LBB2_43
	.quad	.LBB2_44
	.quad	.LBB2_45
	.quad	.LBB2_53
	.quad	.LBB2_58
	.quad	.LBB2_60
	.quad	.LBB2_61
	.quad	.LBB2_62
	.quad	.LBB2_63
	.quad	.LBB2_64
	.quad	.LBB2_71
	.quad	.LBB2_72
	.quad	.LBB2_75
	.quad	.LBB2_77
	.quad	.LBB2_81
	.quad	.LBB2_85
	.quad	.LBB2_88
	.quad	.LBB2_90
	.quad	.LBB2_92
	.quad	.LBB2_93
	.quad	.LBB2_97
	.quad	.LBB2_98
	.quad	.LBB2_99
	.quad	.LBB2_102
	.quad	.LBB2_103
	.quad	.LBB2_113
	.quad	.LBB2_114
	.quad	.LBB2_115
	.quad	.LBB2_116
	.quad	.LBB2_117
	.quad	.LBB2_129
	.quad	.LBB2_131
	.quad	.LBB2_123
	.quad	.LBB2_132
	.quad	.LBB2_133
	.quad	.LBB2_6
	.quad	.LBB2_14
	.quad	.LBB2_16
	.quad	.LBB2_48
	.quad	.LBB2_54
	.quad	.LBB2_59
	.quad	.LBB2_68
	.quad	.LBB2_76
	.quad	.LBB2_80
	.quad	.LBB2_84
	.quad	.LBB2_87
	.quad	.LBB2_89
	.quad	.LBB2_91
	.quad	.LBB2_11
	.quad	.LBB2_13
	.quad	.LBB2_12
	.quad	.LBB2_6
	.quad	.LBB2_139

	.text
	.align	16, 0x90
	.type	fn_PtCr_is_monotonic,@function
fn_PtCr_is_monotonic:                   # @fn_PtCr_is_monotonic
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1227133513, (%rcx)     # imm = 0x49249249
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	fn_PtCr_is_monotonic, .Lfunc_end3-fn_PtCr_is_monotonic
	.cfi_endproc

	.align	16, 0x90
	.type	fn_PtCr_get_info,@function
fn_PtCr_get_info:                       # @fn_PtCr_get_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 32
	subq	$352, %rsp              # imm = 0x160
.Ltmp27:
	.cfi_def_cfa_offset 384
.Ltmp28:
	.cfi_offset %rbx, -32
.Ltmp29:
	.cfi_offset %r14, -24
.Ltmp30:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gs_function_get_info_default
	leaq	120(%rbx), %rax
	movq	%rax, (%r14)
	leaq	(%rsp), %r15
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	s_init
	movq	%r15, %rdi
	callq	swrite_position_only
	movq	104(%rbx), %rsi
	movl	112(%rbx), %edx
	decl	%edx
	movq	%r15, %rdi
	callq	calc_put_ops
	movq	%r15, %rdi
	callq	stell
	movq	%rax, 8(%r14)
	addq	$352, %rsp              # imm = 0x160
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	fn_PtCr_get_info, .Lfunc_end4-fn_PtCr_get_info
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1065353216              # float 1
.LCPI5_1:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	fn_PtCr_make_scaled,@function
fn_PtCr_make_scaled:                    # @fn_PtCr_make_scaled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 96
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %rbp
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$st_function_PtCr, %esi
	movl	$.L.str.47, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %r14
	movslq	88(%rbx), %r13
	imull	$17, %r13d, %esi
	addl	112(%rbx), %esi
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	$.L.str.48, %edx
	movq	%r15, %rdi
	callq	*136(%r15)
	testq	%r14, %r14
	je	.LBB5_2
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB5_2
# BB#3:                                 # %if.end
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movups	72(%rbx), %xmm0
	movups	88(%rbx), %xmm1
	movups	104(%rbx), %xmm2
	movups	%xmm2, 104(%r14)
	movups	%xmm1, 88(%r14)
	movups	%xmm0, 72(%r14)
	movq	%rax, 104(%r14)
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 112(%r14)
	movups	120(%rbx), %xmm0
	movups	136(%rbx), %xmm1
	movups	%xmm1, 136(%r14)
	movups	%xmm0, 120(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	fn_common_scale
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB5_4
# BB#5:                                 # %if.end.26
	movq	104(%rbx), %rsi
	movl	112(%rbx), %edx
	decl	%edx
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	callq	memcpy
	movl	112(%rbx), %eax
	leaq	-1(%r12,%rax), %rbx
	testl	%r13d, %r13d
	jle	.LBB5_14
# BB#6:                                 # %for.body.lr.ph
	leaq	1(%r13), %r12
	.align	16, 0x90
.LBB5_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp,%r12,8), %eax
	movl	%eax, 36(%rsp)
	movss	-12(%rbp,%r12,8), %xmm1 # xmm1 = mem[0],zero,zero,zero
	movd	%eax, %xmm0
	subss	%xmm0, %xmm1
	movss	%xmm1, 32(%rsp)
	ucomiss	.LCPI5_0(%rip), %xmm1
	jne	.LBB5_8
	jnp	.LBB5_9
.LBB5_8:                                # %if.then.46
                                        #   in Loop: Header=BB5_7 Depth=1
	movb	$40, (%rbx)
	leaq	1(%rbx), %rdi
	movl	$4, %edx
	leaq	32(%rsp), %rsi
	callq	memcpy
	movb	$16, 5(%rbx)
	addq	$6, %rbx
	movss	36(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB5_9:                                # %if.end.51
                                        #   in Loop: Header=BB5_7 Depth=1
	ucomiss	.LCPI5_1, %xmm0
	jne	.LBB5_10
	jnp	.LBB5_11
.LBB5_10:                               # %if.then.54
                                        #   in Loop: Header=BB5_7 Depth=1
	movb	$40, (%rbx)
	leaq	1(%rbx), %rdi
	movl	$4, %edx
	leaq	36(%rsp), %rsi
	callq	memcpy
	movb	$1, 5(%rbx)
	addq	$6, %rbx
.LBB5_11:                               # %if.end.60
                                        #   in Loop: Header=BB5_7 Depth=1
	cmpl	$1, %r13d
	je	.LBB5_13
# BB#12:                                # %if.then.63
                                        #   in Loop: Header=BB5_7 Depth=1
	movb	$38, (%rbx)
	movb	%r13b, 1(%rbx)
	movb	$38, 2(%rbx)
	movb	$1, 3(%rbx)
	movb	$37, 4(%rbx)
	addq	$5, %rbx
.LBB5_13:                               # %if.end.71
                                        #   in Loop: Header=BB5_7 Depth=1
	decq	%r12
	cmpq	$1, %r12
	jg	.LBB5_7
.LBB5_14:                               # %for.end
	leal	1(%rbx), %ecx
	movb	$45, (%rbx)
	movq	16(%rsp), %rsi          # 8-byte Reload
	subl	%esi, %ecx
	movl	%ecx, 112(%r14)
	movl	$.L.str.47, %r8d
	movq	%r15, %rdi
	movl	28(%rsp), %edx          # 4-byte Reload
	callq	*152(%r15)
	movq	%rax, 104(%r14)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%r14, (%rax)
	xorl	%r12d, %r12d
	jmp	.LBB5_15
.LBB5_2:                                # %if.then
	movl	$.L.str.48, %ecx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	28(%rsp), %edx          # 4-byte Reload
	callq	*160(%r15)
	movl	$.L.str.47, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*24(%r15)
	movl	$-25, %r12d
	jmp	.LBB5_15
.LBB5_4:                                # %if.then.24
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	*56(%r14)
.LBB5_15:                               # %cleanup
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fn_PtCr_make_scaled, .Lfunc_end5-fn_PtCr_make_scaled
	.cfi_endproc

	.align	16, 0x90
	.type	gs_function_PtCr_serialize,@function
gs_function_PtCr_serialize:             # @gs_function_PtCr_serialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp46:
	.cfi_def_cfa_offset 32
.Ltmp47:
	.cfi_offset %rbx, -24
.Ltmp48:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	fn_common_serialize
	testl	%eax, %eax
	js	.LBB6_3
# BB#1:                                 # %if.end
	leaq	112(%rbx), %rsi
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB6_3
# BB#2:                                 # %if.end.4
	addq	$72, %rbx
	movq	32(%rbx), %rsi
	movl	40(%rbx), %edx
	leaq	4(%rsp), %rcx
	movq	%r14, %rdi
	callq	sputs
.LBB6_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	gs_function_PtCr_serialize, .Lfunc_end6-gs_function_PtCr_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	calc_access,@function
calc_access:                            # @calc_access
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
	subq	$1080, %rsp             # imm = 0x438
.Ltmp55:
	.cfi_def_cfa_offset 1136
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rcx, %r15
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	216(%rsp), %r13
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	s_init
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	swrite_string
	leaq	568(%rsp), %r12
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	s_init
	leaq	920(%rsp), %rbp
	movl	$s_SFD_template, %esi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	s_init_state
	movq	%rbp, %rdi
	callq	*s_SFD_template+40(%rip)
	movq	%r14, 1056(%rsp)
	leaq	16(%rsp), %rdx
	movl	$200, %ecx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%r13, %r8
	callq	s_init_filter
	movq	-16(%rbx), %rsi
	movl	-8(%rbx), %edx
	decl	%edx
	movq	%r12, %rdi
	callq	calc_put_ops
	movq	%r12, %rdi
	callq	sclose
	movq	8(%rsp), %rax           # 8-byte Reload
	testq	%rax, %rax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	%r15, (%rax)
.LBB7_2:                                # %if.end
	xorl	%eax, %eax
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	calc_access, .Lfunc_end7-calc_access
	.cfi_endproc

	.align	16, 0x90
	.type	calc_put_ops,@function
calc_put_ops:                           # @calc_put_ops
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp68:
	.cfi_def_cfa_offset 64
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	$123, %esi
	callq	spputc
	movl	%ebp, %eax
	testl	%ebp, %ebp
	je	.LBB8_20
# BB#1:                                 # %for.body.lr.ph
	leaq	4(%rsp), %r14
	leaq	(%rsp), %r15
	leaq	(%rax,%rbx), %rbp
	.align	16, 0x90
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	1(%rbx), %r13
	movzbl	(%rbx), %ecx
	movl	%ecx, %edx
	addl	$-38, %edx
	cmpl	$9, %edx
	ja	.LBB8_18
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$-15, %eax
	jmpq	*.LJTI8_0(,%rdx,8)
.LBB8_4:                                # %sw.bb
                                        #   in Loop: Header=BB8_2 Depth=1
	movzbl	1(%rbx), %edx
	addq	$2, %rbx
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	callq	pprintd1
	movq	%rbx, %r13
	jmp	.LBB8_19
	.align	16, 0x90
.LBB8_18:                               # %sw.default
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	calc_put_ops.op_names(,%rcx,8), %rdx
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	callq	pprints1
	jmp	.LBB8_19
.LBB8_5:                                # %sw.bb.4
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movl	4(%rsp), %edx
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	callq	pprintd1
	jmp	.LBB8_6
.LBB8_7:                                # %sw.bb.8
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movss	(%rsp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	pprintg1
.LBB8_6:                                # %for.cond.backedge
                                        #   in Loop: Header=BB8_2 Depth=1
	addq	$5, %rbx
	movq	%rbx, %r13
	jmp	.LBB8_19
.LBB8_8:                                # %sw.bb.13
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$.L.str.4, %esi
	jmp	.LBB8_9
.LBB8_10:                               # %sw.bb.15
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$.L.str.5, %esi
	jmp	.LBB8_9
.LBB8_11:                               # %sw.bb.17
                                        #   in Loop: Header=BB8_2 Depth=1
	movzbl	1(%rbx), %eax
	shll	$8, %eax
	movzbl	2(%rbx), %r13d
	orl	%eax, %r13d
	leaq	3(%rbx), %rsi
	movq	%r12, %rdi
	movl	%r13d, %edx
	callq	calc_put_ops
	testl	%eax, %eax
	js	.LBB8_21
# BB#12:                                # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	3(%rbx,%r13), %r13
	jle	.LBB8_15
# BB#13:                                # %if.then.29
                                        #   in Loop: Header=BB8_2 Depth=1
	movzbl	-2(%r13), %eax
	shll	$8, %eax
	movzbl	-1(%r13), %ebx
	orl	%eax, %ebx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	%ebx, %edx
	callq	calc_put_ops
	testl	%eax, %eax
	js	.LBB8_21
# BB#14:                                # %if.end.42
                                        #   in Loop: Header=BB8_2 Depth=1
	addq	%rbx, %r13
	movl	$.L.str.6, %esi
	jmp	.LBB8_9
.LBB8_15:                               # %if.else
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$.L.str.7, %esi
.LBB8_9:                                # %for.cond.backedge
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	%r12, %rdi
	callq	stream_puts
.LBB8_19:                               # %for.cond.backedge
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpq	%rbp, %r13
	movq	%r13, %rbx
	jb	.LBB8_2
.LBB8_20:                               # %for.end
	movl	$125, %esi
	movq	%r12, %rdi
	callq	spputc
	xorl	%eax, %eax
.LBB8_21:                               # %cleanup.61
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_16:                               # %sw.bb.47
	addq	$-2, %rbp
	cmpq	%rbp, %r13
	jne	.LBB8_21
# BB#17:                                # %if.end.54
	movl	$125, %esi
	movq	%r12, %rdi
	callq	spputc
	movl	$1, %eax
	jmp	.LBB8_21
.Lfunc_end8:
	.size	calc_put_ops, .Lfunc_end8-calc_put_ops
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_4
	.quad	.LBB8_5
	.quad	.LBB8_7
	.quad	.LBB8_8
	.quad	.LBB8_10
	.quad	.LBB8_11
	.quad	.LBB8_16
	.quad	.LBB8_18
	.quad	.LBB8_21
	.quad	.LBB8_21

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ops"
	.size	.L.str, 4

	.type	gs_function_PtCr_init.function_PtCr_head,@object # @gs_function_PtCr_init.function_PtCr_head
	.section	.rodata,"a",@progbits
	.align	8
gs_function_PtCr_init.function_PtCr_head:
	.long	4                       # 0x4
	.zero	4
	.quad	fn_PtCr_evaluate
	.quad	fn_PtCr_is_monotonic
	.quad	fn_PtCr_get_info
	.quad	fn_common_get_params
	.quad	fn_PtCr_make_scaled
	.quad	gs_function_PtCr_free_params
	.quad	fn_common_free
	.quad	gs_function_PtCr_serialize
	.size	gs_function_PtCr_init.function_PtCr_head, 72

	.type	st_function_PtCr,@object # @st_function_PtCr
	.align	8
st_function_PtCr:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.49
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	function_PtCr_reloc_ptrs
	.size	st_function_PtCr, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_function_PtCr_init"
	.size	.L.str.1, 22

	.type	fn_PtCr_evaluate.op_defn_table,@object # @fn_PtCr_evaluate.op_defn_table
	.section	.rodata,"a",@progbits
	.align	16
fn_PtCr_evaluate.op_defn_table:
	.asciz	"AA1\000AA1\000AA1\000AA1"
	.ascii	"AAAAAAAAAA2>AA=\001"
	.ascii	"AAAAA\002\002AA\002\002AAAAA"
	.ascii	"AAAAAAAAAA?>AA=\003"
	.ascii	"AAAAAAAAAA\004AAAAA"
	.ascii	"AA@\005AA@\005AA@\005AA@\005"
	.ascii	"AA=\006AA=\006AA=\006AA=\006"
	.ascii	"AA@\007AA@\007AA@\007AA@\007"
	.ascii	"AA=@AA=@AA=@AA=@"
	.ascii	"AAAAAAAAAA?>AA=\t"
	.ascii	"AAAAAAAAAA?>AA=\n"
	.ascii	"AA@\013AA@\013AA@\013AA@\013"
	.ascii	"AAAAAAAAAA\fAAAAA"
	.ascii	"AA=\rAA=\rAA=\rAA=\r"
	.ascii	"AA=\016AA=\016AA=\016AA=\016"
	.ascii	"AAAAAAAAAA\017AAAAA"
	.ascii	"AAAAAAAAAA3>AA=\020"
	.ascii	"AA4\021AA4\021AA4\021AA4\021"
	.ascii	"A\022\022AA\022\022AA\022\022AA\022\022A"
	.ascii	"AAAAA\023\023AA\023\023AAAAA"
	.ascii	"AA@\024AA@\024AA@\024AA@\024"
	.ascii	"AA=\025AA=\025AA=\025AA=\025"
	.ascii	"AA=\026AA=\026AA=\026AA=\026"
	.ascii	"AAAAAAAAAA6>AA=\027"
	.ascii	"AA@\030AA@\030AA@\030AA@\030"
	.ascii	"AAAAA\031\031AA\031\031AAAAA"
	.ascii	"AAAAA7AAAA7>AA=\032"
	.ascii	"AAAAAAAAAA8>AA=\033"
	.ascii	"AAAAAAAAAA9>AA=\034"
	.ascii	"AAAAAAAAAA:>AA=\035"
	.ascii	"AAAAAAAAAA;>AA=\036"
	.ascii	"AAAAA<AAAA<>AA=\037"
	.ascii	"AA AAA AAA AAA A"
	.ascii	"A!!!A!!!A!!!A!!!"
	.ascii	"AAAAA\"\"\"A\"\"\"A\"\"\""
	.ascii	"AA#AAA#AAA#AAA#A"
	.ascii	"A$$$A$$$A$$$A$$$"
	.ascii	"AAAAAAAAAA%AAAAA"
	.zero	16,38
	.zero	16,39
	.zero	16,40
	.zero	16,41
	.zero	16,42
	.ascii	"A+AAA+AAA+AAA+AA"
	.zero	16,44
	.zero	16,45
	.ascii	"AA.AAA.AAA.AAA.A"
	.zero	16,47
	.size	fn_PtCr_evaluate.op_defn_table, 768

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%d "
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%g "
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"true "
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"false "
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	" ifelse "
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" if "
	.size	.L.str.7, 5

	.type	calc_put_ops.op_names,@object # @calc_put_ops.op_names
	.section	.rodata,"a",@progbits
	.align	16
calc_put_ops.op_names:
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.size	calc_put_ops.op_names, 304

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"abs"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"add"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"and"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"atan"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"bitshift"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"ceiling"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"cos"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"cvi"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"cvr"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"div"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"exp"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"floor"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"idiv"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"ln"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"log"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"mod"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"mul"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"neg"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"not"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"or"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"round"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"sin"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"sqrt"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"sub"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"truncate"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"xor"
	.size	.L.str.33, 4

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"eq"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"ge"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gt"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"le"
	.size	.L.str.37, 3

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"lt"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"ne"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"copy"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"dup"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"exch"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"index"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"pop"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"roll"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%s "
	.size	.L.str.46, 4

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"fn_PtCr_make_scaled"
	.size	.L.str.47, 20

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"fn_PtCr_make_scaled(ops)"
	.size	.L.str.48, 25

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gs_function_PtCr_t"
	.size	.L.str.49, 19

	.type	function_PtCr_reloc_ptrs,@object # @function_PtCr_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
function_PtCr_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_function
	.quad	function_PtCr_enum_ptrs
	.size	function_PtCr_reloc_ptrs, 24

	.type	function_PtCr_enum_ptrs,@object # @function_PtCr_enum_ptrs
	.align	2
function_PtCr_enum_ptrs:
	.short	1                       # 0x1
	.short	104                     # 0x68
	.size	function_PtCr_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
