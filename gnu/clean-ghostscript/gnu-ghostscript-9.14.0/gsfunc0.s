	.text
	.file	"gsfunc0.bc"
	.globl	gs_function_Sd_free_params
	.align	16, 0x90
	.type	gs_function_Sd_free_params,@function
gs_function_Sd_free_params:             # @gs_function_Sd_free_params
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	96(%r14), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	gs_free_const_object
	movq	88(%r14), %rsi
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	callq	gs_free_const_object
	movq	80(%r14), %rsi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	gs_free_const_object
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	fn_common_free_params
	movq	104(%r14), %rsi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	112(%r14), %rsi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	24(%rbx), %rax
	movq	120(%r14), %rsi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end0:
	.size	gs_function_Sd_free_params, .Lfunc_end0-gs_function_Sd_free_params
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.quad	5953594944729471431     # double 1.000000e+90
	.quad	5953594944729471431     # double 1.000000e+90
	.text
	.globl	gs_function_Sd_init
	.align	16, 0x90
	.type	gs_function_Sd_init,@function
gs_function_Sd_init:                    # @gs_function_Sd_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 64
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	$0, (%r12)
	movl	(%rbx), %esi
	movl	16(%rbx), %edx
	movq	%rbx, %rdi
	callq	fn_check_mnDR
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_36
# BB#1:                                 # %if.end
	movslq	(%rbx), %rax
	cmpq	$64, %rax
	movl	$-13, %ebp
	jg	.LBB1_36
# BB#2:                                 # %if.end.4
	movl	32(%rbx), %ecx
	movl	$-15, %ebp
	cmpl	$3, %ecx
	ja	.LBB1_36
# BB#3:                                 # %if.end.4
	cmpl	$2, %ecx
	je	.LBB1_36
# BB#4:                                 # %sw.epilog
	movl	72(%rbx), %ecx
	cmpq	$32, %rcx
	ja	.LBB1_36
# BB#5:                                 # %sw.epilog
	movabsq	$4311814422, %rdx       # imm = 0x101011116
	btq	%rcx, %rdx
	jae	.LBB1_36
# BB#6:                                 # %for.cond.preheader
	testl	%eax, %eax
	jle	.LBB1_10
# BB#7:                                 # %for.body.lr.ph
	movq	96(%rbx), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rcx,%rdx,4)
	jle	.LBB1_36
# BB#8:                                 # %for.cond
                                        #   in Loop: Header=BB1_9 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB1_9
.LBB1_10:                               # %for.end
	movl	$st_function_Sd, %esi
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %r14
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB1_36
# BB#11:                                # %if.end.17
	movq	%r14, %r13
	addq	$72, %r13
	movl	$136, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	cmpl	$0, 32(%rbx)
	jne	.LBB1_13
# BB#12:                                # %if.then.21
	movl	$1, 104(%r14)
.LBB1_13:                               # %if.end.24
	movq	$0, 176(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 184(%r14)
	movq	gs_function_Sd_init.function_Sd_head+64(%rip), %rax
	movq	%rax, 64(%r14)
	movups	gs_function_Sd_init.function_Sd_head+48(%rip), %xmm0
	movups	%xmm0, 48(%r14)
	movups	gs_function_Sd_init.function_Sd_head+32(%rip), %xmm0
	movups	%xmm0, 32(%r14)
	movups	gs_function_Sd_init.function_Sd_head+16(%rip), %xmm0
	movups	%xmm0, 16(%r14)
	movups	gs_function_Sd_init.function_Sd_head(%rip), %xmm0
	movups	%xmm0, (%r14)
	movl	$0, 200(%r14)
	cmpl	$1, 72(%r14)
	jne	.LBB1_16
# BB#14:                                # %land.lhs.true
	cmpl	$1, 104(%r14)
	jne	.LBB1_16
# BB#15:                                # %land.lhs.true.35
	cmpl	$9, 88(%r14)
	jl	.LBB1_35
.LBB1_16:                               # %if.else
	movl	$64, %esi
	movl	$4, %edx
	movl	$.L.str.4, %ecx
	movq	%r15, %rdi
	callq	*88(%r15)
	movq	%rax, 184(%r14)
	movl	$64, %esi
	movl	$4, %edx
	movl	$.L.str.4, %ecx
	movq	%r15, %rdi
	callq	*88(%r15)
	movq	%rax, 192(%r14)
	testq	%rax, %rax
	je	.LBB1_36
# BB#17:                                # %if.else
	movq	184(%r14), %r8
	testq	%r8, %r8
	je	.LBB1_36
# BB#18:                                # %if.end.56
	movl	88(%r14), %ebx
	cmpl	$0, 72(%r14)
	jle	.LBB1_21
# BB#19:                                # %for.body.69.lr.ph
	movl	104(%r14), %r10d
	movl	144(%r14), %esi
	imull	%ebx, %esi
	movq	168(%r14), %rdi
	movl	$1, %r9d
	subl	%r10d, %r9d
	xorl	%ecx, %ecx
.LBB1_20:                               # %for.body.69
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edx
	imull	%r10d, %edx
	movl	%edx, (%r8,%rcx,4)
	movl	(%rdi,%rcx,4), %edx
	imull	%r10d, %edx
	leal	(%rdx,%r9), %edx
	imull	%edx, %ebx
	movl	%esi, (%rax,%rcx,4)
	imull	(%rdi,%rcx,4), %esi
	incq	%rcx
	movslq	(%r13), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB1_20
.LBB1_21:                               # %for.end.93
	movl	$8, %edx
	movl	$.L.str.4, %ecx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	*88(%r15)
	movq	%rax, 176(%r14)
	testq	%rax, %rax
	je	.LBB1_36
# BB#22:                                # %for.cond.104.preheader
	testl	%ebx, %ebx
	jle	.LBB1_34
# BB#23:                                # %for.body.106.preheader
	movabsq	$8589934588, %r8        # imm = 0x1FFFFFFFC
	leal	-1(%rbx), %edx
	leaq	1(%rdx), %r9
	xorl	%ecx, %ecx
	movq	%r9, %rsi
	andq	%r8, %rsi
	je	.LBB1_31
# BB#24:                                # %vector.body.preheader
	leaq	1(%rdx), %rbp
	andq	%r8, %rbp
	addq	$-4, %rbp
	movl	%ebp, %ecx
	shrl	$2, %ecx
	incl	%ecx
	xorl	%edi, %edi
	testb	$3, %cl
	je	.LBB1_27
# BB#25:                                # %vector.body.prol.preheader
	movl	%ebx, %ecx
	andl	$12, %ecx
	addl	$-4, %ecx
	shrl	$2, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%edi, %edi
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1.000000e+90,1.000000e+90]
.LBB1_26:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax,%rdi,8)
	movups	%xmm0, 16(%rax,%rdi,8)
	addq	$4, %rdi
	incq	%rcx
	jne	.LBB1_26
.LBB1_27:                               # %vector.body.preheader.split
	cmpq	$12, %rbp
	jb	.LBB1_30
# BB#28:                                # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	subq	%rdi, %rdx
	leaq	112(%rax,%rdi,8), %rcx
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1.000000e+90,1.000000e+90]
.LBB1_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rcx)
	movups	%xmm0, -96(%rcx)
	movups	%xmm0, -80(%rcx)
	movups	%xmm0, -64(%rcx)
	movups	%xmm0, -48(%rcx)
	movups	%xmm0, -32(%rcx)
	movups	%xmm0, -16(%rcx)
	movups	%xmm0, (%rcx)
	subq	$-128, %rcx
	addq	$-16, %rdx
	jne	.LBB1_29
.LBB1_30:
	movq	%rsi, %rcx
.LBB1_31:                               # %middle.block
	cmpq	%rcx, %r9
	je	.LBB1_34
# BB#32:                                # %for.body.106.preheader87
	leaq	(%rax,%rcx,8), %rax
	movl	%ebx, %edx
	subl	%ecx, %edx
	movabsq	$5953594944729471431, %rcx # imm = 0x529F6B0F092959C7
.LBB1_33:                               # %for.body.106
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, (%rax)
	addq	$8, %rax
	decl	%edx
	jne	.LBB1_33
.LBB1_34:                               # %for.end.113
	movl	%ebx, 200(%r14)
.LBB1_35:                               # %if.end.116
	movq	%r14, (%r12)
	xorl	%ebp, %ebp
.LBB1_36:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_function_Sd_init, .Lfunc_end1-gs_function_Sd_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	3212836864              # float -1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_1:
	.quad	4751297606873776128     # double 4294967295
	.text
	.align	16, 0x90
	.type	fn_Sd_evaluate,@function
fn_Sd_evaluate:                         # @fn_Sd_evaluate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$1576, %rsp             # imm = 0x628
.Ltmp24:
	.cfi_def_cfa_offset 1632
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
	cmpl	$3, 104(%r15)
	jne	.LBB2_8
# BB#1:                                 # %if.then
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movslq	72(%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	jle	.LBB2_4
# BB#2:                                 # %for.body.lr.ph.i.i
	movq	80(%r15), %rbx
	movq	168(%r15), %rbp
	xorl	%r12d, %r12d
	movq	16(%rsp), %r14          # 8-byte Reload
	.align	16, 0x90
.LBB2_3:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r12d, %rax
	movss	(%rbx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	incl	%eax
	cltq
	movss	(%rbx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm2
	maxss	(%r13,%r12,2), %xmm2
	movaps	%xmm1, %xmm3
	minss	%xmm2, %xmm3
	subss	%xmm0, %xmm3
	movl	(%rbp,%r12,2), %eax
	decl	%eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm3, %xmm2
	subss	%xmm0, %xmm1
	divss	%xmm1, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 32(%rsp,%r12,2)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 1056(%rsp,%r12,4)
	addq	$2, %r12
	decq	%r14
	jne	.LBB2_3
.LBB2_4:                                # %decode_argument.exit.i
	movq	16(%rsp), %r9           # 8-byte Reload
	decl	%r9d
	leaq	32(%rsp), %rsi
	leaq	1056(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	make_interpolation_tensor
	testl	%eax, %eax
	js	.LBB2_38
# BB#5:                                 # %if.end.i
	movl	72(%r15), %r8d
	decl	%r8d
	leaq	32(%rsp), %rsi
	leaq	1056(%rsp), %rdx
	leaq	288(%rsp), %r9
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	evaluate_from_tenzor
	movslq	88(%r15), %rcx
	testq	%rcx, %rcx
	movl	$0, %eax
	jle	.LBB2_38
# BB#6:                                 # %for.body.lr.ph.i
	movq	96(%r15), %rdx
	xorl	%eax, %eax
	xorl	%esi, %esi
	movq	8(%rsp), %rbp           # 8-byte Reload
	.align	16, 0x90
.LBB2_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	%esi, %rdi
	movss	(%rdx,%rdi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	maxsd	288(%rsp,%rsi,4), %xmm0
	incl	%edi
	movslq	%edi, %rdi
	movss	(%rdx,%rdi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	minsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rbp,%rsi,2)
	addq	$2, %rsi
	decq	%rcx
	jne	.LBB2_7
	jmp	.LBB2_38
.LBB2_8:                                # %if.else
	movslq	72(%r15), %r9
	testq	%r9, %r9
	jle	.LBB2_9
# BB#10:                                # %for.body.lr.ph.i.7
	movslq	144(%r15), %rax
	movq	80(%r15), %rcx
	movq	152(%r15), %rdx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%r9, %rdi
	.align	16, 0x90
.LBB2_11:                               # %for.body.i.10
                                        # =>This Inner Loop Header: Depth=1
	movslq	%esi, %rbp
	movss	(%rcx,%rbp,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	leal	1(%rbp), %ebx
	movslq	%ebx, %rbx
	movss	(%rcx,%rbx,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	movss	(%r13,%rsi,2), %xmm5    # xmm5 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm2
	movaps	%xmm2, %xmm4
	ja	.LBB2_14
# BB#12:                                # %if.else.i
                                        #   in Loop: Header=BB2_11 Depth=1
	ucomiss	%xmm3, %xmm5
	movaps	%xmm5, %xmm4
	jbe	.LBB2_14
# BB#13:                                # %if.then.12.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movaps	%xmm3, %xmm4
.LBB2_14:                               # %if.end.13.i
                                        #   in Loop: Header=BB2_11 Depth=1
	testq	%rdx, %rdx
	je	.LBB2_19
# BB#15:                                # %if.then.15.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movss	(%rdx,%rbp,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
	movss	(%rdx,%rbx,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm4
	subss	%xmm6, %xmm5
	mulss	%xmm4, %xmm5
	subss	%xmm2, %xmm3
	divss	%xmm3, %xmm5
	addss	%xmm6, %xmm5
	ucomiss	%xmm5, %xmm0
	jbe	.LBB2_17
# BB#16:                                # %if.then.32.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movl	$0, 288(%rsp,%rsi,2)
	jmp	.LBB2_21
	.align	16, 0x90
.LBB2_19:                               # %if.else.56.i
                                        #   in Loop: Header=BB2_11 Depth=1
	subss	%xmm2, %xmm4
	movq	168(%r15), %rbp
	movl	(%rbp,%rsi,2), %ebp
	decl	%ebp
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ebp, %xmm5
	mulss	%xmm4, %xmm5
	subss	%xmm2, %xmm3
	divss	%xmm3, %xmm5
	jmp	.LBB2_20
	.align	16, 0x90
.LBB2_17:                               # %if.else.35.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	168(%r15), %rbp
	movl	(%rbp,%rsi,2), %ebp
	leal	-1(%rbp), %ebx
	cvtsi2ssl	%ebx, %xmm2
	ucomiss	%xmm2, %xmm5
	jae	.LBB2_18
.LBB2_20:                               # %if.end.69.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movss	%xmm5, 288(%rsp,%rsi,2)
	jmp	.LBB2_21
.LBB2_18:                               # %if.then.42.i
                                        #   in Loop: Header=BB2_11 Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ebp, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, 288(%rsp,%rsi,2)
	.align	16, 0x90
.LBB2_21:                               # %if.end.69.i
                                        #   in Loop: Header=BB2_11 Depth=1
	addq	$2, %rsi
	decq	%rdi
	jne	.LBB2_11
# BB#22:                                # %for.body.78.lr.ph.i
	movslq	88(%r15), %rcx
	imulq	%rax, %rcx
	movq	168(%r15), %rax
	leaq	32(%rsp), %rdx
	leaq	1056(%rsp), %rsi
	leaq	288(%rsp), %rdi
	xorl	%r8d, %r8d
	movq	%r9, %rbp
	.align	16, 0x90
.LBB2_23:                               # %for.body.78.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %ebx
	movq	%rcx, (%rsi)
	movslq	%ebx, %rbx
	movl	%ebx, (%rdx)
	cvtsi2ssl	%ebx, %xmm1
	imulq	%rcx, %rbx
	addq	%rbx, %r8
	subss	%xmm1, %xmm0
	movss	%xmm0, (%rdi)
	movslq	(%rax), %rbx
	imulq	%rbx, %rcx
	addq	$4, %rax
	addq	$4, %rdx
	addq	$8, %rsi
	addq	$4, %rdi
	decq	%rbp
	jne	.LBB2_23
	jmp	.LBB2_24
.LBB2_9:                                # %for.end.thread.i
	xorl	%r8d, %r8d
.LBB2_24:                               # %for.cond.118.preheader.i
	leaq	288(%rsp), %rsi
	leaq	1056(%rsp), %rdx
	leaq	800(%rsp), %rcx
	movq	%r15, %rdi
	callq	fn_interpolate_linear
	movslq	88(%r15), %rax
	testq	%rax, %rax
	jle	.LBB2_37
# BB#25:                                # %for.body.123.lr.ph.i
	movl	144(%r15), %ecx
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	cmpl	$32, %ecx
	movq	96(%r15), %rcx
	movq	160(%r15), %rdx
	jb	.LBB2_26
# BB#27:                                # %for.body.123.lr.ph.i
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB2_28
.LBB2_26:
	cvtsi2sdq	%rsi, %xmm0
.LBB2_28:                               # %for.body.123.lr.ph.i
	cvtsi2ssl	%esi, %xmm1
	xorl	%esi, %esi
	.align	16, 0x90
.LBB2_29:                               # %for.body.123.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	movss	800(%rsp,%rsi,2), %xmm4 # xmm4 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	movaps	%xmm1, %xmm3
	je	.LBB2_31
# BB#30:                                # %if.then.i.i
                                        #   in Loop: Header=BB2_29 Depth=1
	movslq	%esi, %rdi
	movss	(%rcx,%rdi,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	incl	%edi
	movslq	%edi, %rdi
	movss	(%rcx,%rdi,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
.LBB2_31:                               # %if.end.i.i
                                        #   in Loop: Header=BB2_29 Depth=1
	cvtss2sd	%xmm4, %xmm4
	testq	%rdx, %rdx
	movaps	%xmm3, %xmm6
	movaps	%xmm2, %xmm5
	je	.LBB2_33
# BB#32:                                # %if.then.15.i.i
                                        #   in Loop: Header=BB2_29 Depth=1
	movslq	%esi, %rdi
	movss	(%rdx,%rdi,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	incl	%edi
	movslq	%edi, %rdi
	movss	(%rdx,%rdi,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
.LBB2_33:                               # %if.end.28.i.i
                                        #   in Loop: Header=BB2_29 Depth=1
	subss	%xmm5, %xmm6
	cvtss2sd	%xmm6, %xmm6
	mulsd	%xmm6, %xmm4
	divsd	%xmm0, %xmm4
	cvtss2sd	%xmm5, %xmm5
	addsd	%xmm4, %xmm5
	cvtss2sd	%xmm2, %xmm2
	ucomisd	%xmm5, %xmm2
	ja	.LBB2_36
# BB#34:                                # %if.else.40.i.i
                                        #   in Loop: Header=BB2_29 Depth=1
	cvtss2sd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm5
	movapd	%xmm5, %xmm2
	jbe	.LBB2_36
# BB#35:                                # %if.then.44.i.i
                                        #   in Loop: Header=BB2_29 Depth=1
	movapd	%xmm3, %xmm2
.LBB2_36:                               # %fn_Sd_encode.exit.i
                                        #   in Loop: Header=BB2_29 Depth=1
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, (%r14,%rsi,2)
	addq	$2, %rsi
	decq	%rax
	jne	.LBB2_29
.LBB2_37:                               # %fn_Sd_evaluate_general.exit
	xorl	%eax, %eax
.LBB2_38:                               # %if.end
	addq	$1576, %rsp             # imm = 0x628
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fn_Sd_evaluate, .Lfunc_end2-fn_Sd_evaluate
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	3212836864              # float -1
.LCPI3_1:
	.long	1065353216              # float 1
.LCPI3_3:
	.long	897988541               # float 9.99999997E-7
.LCPI3_6:
	.long	0                       # float 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_2:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_4:
	.quad	4607182418800017408     # double 1
.LCPI3_5:
	.quad	4751297606873776128     # double 4294967295
	.text
	.align	16, 0x90
	.type	fn_Sd_is_monotonic,@function
fn_Sd_is_monotonic:                     # @fn_Sd_is_monotonic
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
	subq	$632, %rsp              # imm = 0x278
.Ltmp37:
	.cfi_def_cfa_offset 688
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
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movslq	72(%rbx), %rcx
	leaq	-1(%rcx), %r13
	movl	$-13, %eax
	cmpl	$3, %r13d
	jg	.LBB3_69
# BB#1:                                 # %for.cond.preheader.i
	testl	%ecx, %ecx
	jle	.LBB3_56
# BB#2:                                 # %for.body.lr.ph.i
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	80(%rbx), %rbp
	movq	$-1, %r15
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB3_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r12d, %rcx
	movss	(%rbp,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	(%r14,%r12,2), %xmm4    # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm0
	movl	$-15, %eax
	ja	.LBB3_69
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB3_3 Depth=1
	leal	1(%r12), %edx
	movslq	%edx, %rdx
	movss	(%rbp,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm4
	ja	.LBB3_69
# BB#5:                                 # %if.end.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movss	(%rax,%r12,2), %xmm3    # xmm3 = mem[0],zero,zero,zero
	movq	152(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_7
# BB#6:                                 # %if.then.13.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movss	(%rax,%rcx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movss	(%rax,%rdx,4), %xmm7    # xmm7 = mem[0],zero,zero,zero
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_7:                                # %if.else.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	168(%rbx), %rax
	cvtsi2ssl	(%rax,%r12,2), %xmm7
	addss	.LCPI3_0(%rip), %xmm7
	xorps	%xmm2, %xmm2
.LBB3_8:                                # %if.end.29.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	subss	%xmm0, %xmm4
	subss	%xmm2, %xmm7
	mulss	%xmm7, %xmm4
	subss	%xmm0, %xmm1
	divss	%xmm1, %xmm4
	addss	%xmm2, %xmm4
	xorps	%xmm5, %xmm5
	ucomiss	%xmm4, %xmm5
	xorps	%xmm6, %xmm6
	ja	.LBB3_11
# BB#9:                                 # %if.else.38.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	168(%rbx), %rax
	movl	(%rax,%r12,2), %eax
	leal	-1(%rax), %ecx
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	ucomiss	%xmm6, %xmm4
	movaps	%xmm4, %xmm6
	jb	.LBB3_11
# BB#10:                                # %if.then.47.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%eax, %xmm6
	addss	.LCPI3_0(%rip), %xmm6
.LBB3_11:                               # %if.end.55.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	subss	%xmm0, %xmm3
	mulss	%xmm7, %xmm3
	movaps	%xmm7, 64(%rsp)         # 16-byte Spill
	divss	%xmm1, %xmm3
	addss	%xmm3, %xmm2
	ucomiss	%xmm2, %xmm5
	ja	.LBB3_14
# BB#12:                                # %if.else.65.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	168(%rbx), %rax
	movl	(%rax,%r12,2), %eax
	leal	-1(%rax), %ecx
	cvtsi2ssl	%ecx, %xmm0
	ucomiss	%xmm0, %xmm2
	movaps	%xmm2, %xmm5
	jb	.LBB3_14
# BB#13:                                # %if.then.74.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%eax, %xmm5
	addss	.LCPI3_0(%rip), %xmm5
.LBB3_14:                               # %if.end.82.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movaps	%xmm5, %xmm0
	minss	%xmm6, %xmm0
	movss	%xmm0, 88(%rsp)         # 4-byte Spill
	maxss	%xmm5, %xmm6
	movss	%xmm6, 84(%rsp)         # 4-byte Spill
	addss	.LCPI3_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	movss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movaps	64(%rsp), %xmm5         # 16-byte Reload
	movaps	%xmm5, %xmm2
	xorps	.LCPI3_2(%rip), %xmm2
	movaps	%xmm5, %xmm3
	cmpltss	.LCPI3_6, %xmm3
	movaps	%xmm3, %xmm4
	andnps	%xmm5, %xmm4
	andps	%xmm2, %xmm3
	orps	%xmm4, %xmm3
	mulss	.LCPI3_3(%rip), %xmm3
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	ucomisd	%xmm1, %xmm2
	jbe	.LBB3_16
# BB#15:                                # %if.then.101.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	callq	floor
	addsd	.LCPI3_4(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 88(%rsp)         # 4-byte Spill
.LBB3_16:                               # %for.inc.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movss	84(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	callq	floor
	movsd	56(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	ja	.LBB3_17
# BB#18:                                # %for.inc.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movss	84(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB3_19
	.align	16, 0x90
.LBB3_17:                               #   in Loop: Header=BB3_3 Depth=1
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
.LBB3_19:                               # %for.inc.i
                                        #   in Loop: Header=BB3_3 Depth=1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	minss	88(%rsp), %xmm1         # 4-byte Folded Reload
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 192(%rsp,%r12,4)
	movsd	%xmm0, 160(%rsp,%r12,4)
	addq	$2, %r12
	incq	%r15
	cmpq	%r13, %r15
	jl	.LBB3_3
# BB#20:                                # %for.end.i
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmpl	$1, %ecx
	jne	.LBB3_56
# BB#21:                                # %land.lhs.true.i
	cmpl	$1, 104(%rbx)
	jne	.LBB3_56
# BB#22:                                # %land.lhs.true.19.i
	movl	88(%rbx), %ebp
	cmpl	$8, %ebp
	jg	.LBB3_56
# BB#23:                                # %if.then.23.i
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	160(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %r14d
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r15d
	movl	%r15d, %eax
	subl	%r14d, %eax
	cmpl	$2, %eax
	jl	.LBB3_55
# BB#24:                                # %if.then.i.i
	imull	%r14d, %ebp
	movslq	144(%rbx), %rax
	movslq	%ebp, %rsi
	imulq	%rax, %rsi
	leaq	368(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*fn_get_samples(,%rax,8)
	testl	%eax, %eax
	js	.LBB3_69
# BB#25:                                # %for.cond.preheader.i.i.i
	movslq	88(%rbx), %r8
	testq	%r8, %r8
	movslq	144(%rbx), %rcx
	jle	.LBB3_38
# BB#26:                                # %for.body.lr.ph.i.i.i
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	cmpl	$32, %ecx
	movq	96(%rbx), %r9
	movq	160(%rbx), %rsi
	jb	.LBB3_27
# BB#28:                                # %for.body.lr.ph.i.i.i
	movsd	.LCPI3_5(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB3_29
.LBB3_56:                               # %if.end.27.i
	movl	$1, %ebp
	shll	%cl, %ebp
	movl	%r13d, 8(%rsp)
	movl	$0, (%rsp)
	leaq	192(%rsp), %rsi
	leaq	160(%rsp), %rdx
	leaq	224(%rsp), %rcx
	leaq	128(%rsp), %r8
	xorl	%r12d, %r12d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	callq	make_interpolation_nodes
	testl	%eax, %eax
	js	.LBB3_69
# BB#57:                                # %for.cond.39.preheader.i
	cmpl	$0, 88(%rbx)
	jle	.LBB3_68
# BB#58:                                # %for.body.44.lr.ph.i
	decl	%ebp
	movl	%ebp, 88(%rsp)          # 4-byte Spill
	movl	72(%rbx), %eax
	xorl	%r12d, %r12d
	leaq	96(%rsp), %r14
	xorl	%r13d, %r13d
.LBB3_60:                               # %for.body.44.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_61 Depth 2
	testl	%eax, %eax
	movl	$0, %r15d
	movl	$0, %ebp
	jle	.LBB3_66
	.align	16, 0x90
.LBB3_61:                               # %for.body.i.i
                                        #   Parent Loop BB3_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	192(%rsp,%r15,8), %xmm0 # xmm0 = mem[0],zero
	ucomisd	160(%rsp,%r15,8), %xmm0
	jne	.LBB3_62
	jnp	.LBB3_65
.LBB3_62:                               # %if.then.i.45.i
                                        #   in Loop: Header=BB3_61 Depth=2
	decl	%eax
	leaq	368(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movl	%r13d, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	leaq	192(%rsp), %rsi
	leaq	160(%rsp), %rdx
	leaq	224(%rsp), %rcx
	leaq	128(%rsp), %r8
	movq	%r14, %r9
	callq	is_lattice_monotonic_by_dimension
	testl	%eax, %eax
	js	.LBB3_69
# BB#63:                                # %if.end.i.47.i
                                        #   in Loop: Header=BB3_61 Depth=2
	cmpl	$0, 368(%rsp)
	je	.LBB3_65
# BB#64:                                # %if.then.9.i.i
                                        #   in Loop: Header=BB3_61 Depth=2
	movl	$1, %eax
	movb	%r15b, %cl
	shll	%cl, %eax
	orl	%eax, %ebp
.LBB3_65:                               # %for.inc.i.i
                                        #   in Loop: Header=BB3_61 Depth=2
	incq	%r15
	movslq	72(%rbx), %rax
	cmpq	%rax, %r15
	jl	.LBB3_61
.LBB3_66:                               # %if.end.54.i
                                        #   in Loop: Header=BB3_60 Depth=1
	orl	%ebp, %r12d
	movl	88(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %r12d
	je	.LBB3_67
# BB#59:                                # %for.cond.39.i
                                        #   in Loop: Header=BB3_60 Depth=1
	incl	%r13d
	cmpl	88(%rbx), %r13d
	jl	.LBB3_60
	jmp	.LBB3_68
.LBB3_67:
	movl	%ecx, %r12d
.LBB3_68:                               # %for.end.61.i
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%r12d, (%rax)
	testl	%r12d, %r12d
	sete	%al
	movzbl	%al, %eax
.LBB3_69:                               # %fn_Sd_is_monotonic_aux.exit
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_27:
	cvtsi2sdq	%rax, %xmm0
.LBB3_29:                               # %for.body.lr.ph.i.i.i
	cvtsi2ssl	%eax, %xmm1
	xorl	%edi, %edi
	movq	%r8, %rax
.LBB3_30:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%r9, %r9
	movl	368(%rsp,%rdi,2), %ebp
	xorpd	%xmm2, %xmm2
	movaps	%xmm1, %xmm3
	je	.LBB3_32
# BB#31:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB3_30 Depth=1
	movslq	%edi, %rdx
	movss	(%r9,%rdx,4), %xmm2     # xmm2 = mem[0],zero,zero,zero
	incl	%edx
	movslq	%edx, %rdx
	movss	(%r9,%rdx,4), %xmm3     # xmm3 = mem[0],zero,zero,zero
.LBB3_32:                               # %if.end.i.i.i.i
                                        #   in Loop: Header=BB3_30 Depth=1
	cvtsi2sdq	%rbp, %xmm4
	testq	%rsi, %rsi
	movaps	%xmm3, %xmm6
	movapd	%xmm2, %xmm5
	je	.LBB3_34
# BB#33:                                # %if.then.15.i.i.i.i
                                        #   in Loop: Header=BB3_30 Depth=1
	movslq	%edi, %rdx
	movss	(%rsi,%rdx,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	incl	%edx
	movslq	%edx, %rdx
	movss	(%rsi,%rdx,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
.LBB3_34:                               # %if.end.28.i.i.i.i
                                        #   in Loop: Header=BB3_30 Depth=1
	subss	%xmm5, %xmm6
	cvtss2sd	%xmm6, %xmm6
	mulsd	%xmm6, %xmm4
	divsd	%xmm0, %xmm4
	cvtss2sd	%xmm5, %xmm5
	addsd	%xmm4, %xmm5
	cvtss2sd	%xmm2, %xmm2
	ucomisd	%xmm5, %xmm2
	ja	.LBB3_37
# BB#35:                                # %if.else.40.i.i.i.i
                                        #   in Loop: Header=BB3_30 Depth=1
	cvtss2sd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm5
	movapd	%xmm5, %xmm2
	jbe	.LBB3_37
# BB#36:                                # %if.then.44.i.i.i.i
                                        #   in Loop: Header=BB3_30 Depth=1
	movapd	%xmm3, %xmm2
.LBB3_37:                               # %fn_Sd_encode.exit.i.i.i
                                        #   in Loop: Header=BB3_30 Depth=1
	movsd	%xmm2, 304(%rsp,%rdi,4)
	addq	$2, %rdi
	decq	%rax
	jne	.LBB3_30
.LBB3_38:                               # %if.end.i.39.i
	imull	%r15d, %r8d
	imull	%ecx, %r8d
	movslq	%r8d, %rsi
	leaq	368(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*fn_get_samples(,%rcx,8)
	testl	%eax, %eax
	js	.LBB3_69
# BB#39:                                # %for.cond.preheader.i.31.i.i
	movslq	88(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB3_52
# BB#40:                                # %for.body.lr.ph.i.41.i.i
	movl	144(%rbx), %ecx
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	cmpl	$32, %ecx
	movq	96(%rbx), %rcx
	movq	160(%rbx), %rdx
	jb	.LBB3_41
# BB#42:                                # %for.body.lr.ph.i.41.i.i
	movsd	.LCPI3_5(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB3_43
.LBB3_41:
	cvtsi2sdq	%rsi, %xmm0
.LBB3_43:                               # %for.body.lr.ph.i.41.i.i
	cvtsi2ssl	%esi, %xmm1
	xorl	%esi, %esi
.LBB3_44:                               # %for.body.i.46.i.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	movl	368(%rsp,%rsi,2), %edi
	xorpd	%xmm2, %xmm2
	movaps	%xmm1, %xmm3
	je	.LBB3_46
# BB#45:                                # %if.then.i.i.53.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movslq	%esi, %rbp
	movss	(%rcx,%rbp,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	incl	%ebp
	movslq	%ebp, %rbp
	movss	(%rcx,%rbp,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
.LBB3_46:                               # %if.end.i.i.56.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	cvtsi2sdq	%rdi, %xmm4
	testq	%rdx, %rdx
	movaps	%xmm3, %xmm6
	movapd	%xmm2, %xmm5
	je	.LBB3_48
# BB#47:                                # %if.then.15.i.i.63.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movslq	%esi, %rdi
	movss	(%rdx,%rdi,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	incl	%edi
	movslq	%edi, %rdi
	movss	(%rdx,%rdi,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
.LBB3_48:                               # %if.end.28.i.i.74.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	subss	%xmm5, %xmm6
	cvtss2sd	%xmm6, %xmm6
	mulsd	%xmm6, %xmm4
	divsd	%xmm0, %xmm4
	cvtss2sd	%xmm5, %xmm5
	addsd	%xmm4, %xmm5
	cvtss2sd	%xmm2, %xmm2
	ucomisd	%xmm5, %xmm2
	ja	.LBB3_51
# BB#49:                                # %if.else.40.i.i.77.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	cvtss2sd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm5
	movapd	%xmm5, %xmm2
	jbe	.LBB3_51
# BB#50:                                # %if.then.44.i.i.78.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movapd	%xmm3, %xmm2
.LBB3_51:                               # %fn_Sd_encode.exit.i.83.i.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movsd	%xmm2, 240(%rsp,%rsi,4)
	addq	$2, %rsi
	decq	%rax
	jne	.LBB3_44
.LBB3_52:                               # %if.end.21.i.i
	leaq	304(%rsp), %rcx
	leaq	240(%rsp), %r8
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	fn_Sd_1arg_linear_monotonic_rec
	testl	%eax, %eax
	js	.LBB3_69
# BB#53:                                # %if.end.28.i.i
	movl	%eax, %ecx
	sarl	%ecx
	testl	%eax, %ecx
	je	.LBB3_55
# BB#54:                                # %if.then.29.i.i
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$1, (%rax)
	xorl	%eax, %eax
	jmp	.LBB3_69
.LBB3_55:                               # %if.end.31.i.i
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	movl	$1, %eax
	jmp	.LBB3_69
.Lfunc_end3:
	.size	fn_Sd_is_monotonic, .Lfunc_end3-fn_Sd_is_monotonic
	.cfi_endproc

	.align	16, 0x90
	.type	fn_Sd_get_info,@function
fn_Sd_get_info:                         # @fn_Sd_get_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 32
.Ltmp47:
	.cfi_offset %rbx, -32
.Ltmp48:
	.cfi_offset %r14, -24
.Ltmp49:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	gs_function_get_info_default
	leaq	112(%r15), %rax
	movq	%rax, (%r14)
	movslq	72(%r15), %rdi
	testq	%rdi, %rdi
	movl	$1, %edx
	jle	.LBB4_6
# BB#1:                                 # %for.body.lr.ph
	leaq	72(%r15), %rax
	movq	96(%rax), %rcx
	leaq	-1(%rdi), %r8
	movl	$1, %edx
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB4_4
# BB#2:                                 # %for.body.prol.preheader
	movl	%edi, %eax
	andl	$3, %eax
	movl	$1, %edx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB4_3:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rcx,%rsi,4), %rbx
	imulq	%rbx, %rdx
	incq	%rsi
	cmpq	%rsi, %rax
	jne	.LBB4_3
.LBB4_4:                                # %for.body.lr.ph.split
	cmpq	$3, %r8
	jb	.LBB4_6
	.align	16, 0x90
.LBB4_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rcx,%rsi,4), %rax
	imulq	%rdx, %rax
	movslq	4(%rcx,%rsi,4), %rdx
	imulq	%rax, %rdx
	movslq	8(%rcx,%rsi,4), %rax
	imulq	%rdx, %rax
	movslq	12(%rcx,%rsi,4), %rdx
	imulq	%rax, %rdx
	addq	$4, %rsi
	cmpq	%rdi, %rsi
	jl	.LBB4_5
.LBB4_6:                                # %for.end
	movslq	88(%r15), %rax
	imulq	%rdx, %rax
	movslq	144(%r15), %rcx
	imulq	%rax, %rcx
	addq	$7, %rcx
	sarq	$3, %rcx
	movq	%rcx, 8(%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	fn_Sd_get_info, .Lfunc_end4-fn_Sd_get_info
	.cfi_endproc

	.align	16, 0x90
	.type	fn_Sd_get_params,@function
fn_Sd_get_params:                       # @fn_Sd_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 48
.Ltmp55:
	.cfi_offset %rbx, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	fn_common_get_params
	movl	%eax, %ebp
	leaq	72(%r15), %rbx
	cmpl	$1, 104(%r15)
	je	.LBB5_2
# BB#1:                                 # %if.then
	leaq	104(%r15), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB5_2:                                # %if.end.6
	leaq	72(%rbx), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	movq	80(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB5_4
# BB#3:                                 # %if.then.13
	movl	(%rbx), %ecx
	addl	%ecx, %ecx
	movl	$.L.str.2, %esi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	param_write_float_values
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB5_4:                                # %if.end.21
	movq	88(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB5_6
# BB#5:                                 # %if.then.24
	movl	88(%r15), %ecx
	addl	%ecx, %ecx
	movl	$.L.str.1, %esi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	param_write_float_values
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB5_6:                                # %if.end.33
	movq	96(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB5_8
# BB#7:                                 # %if.then.36
	movl	(%rbx), %ecx
	movl	$.L.str, %esi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	param_write_int_values
	testl	%eax, %eax
	cmovnsl	%ebp, %eax
	jmp	.LBB5_9
.LBB5_8:                                # %if.end.45
	movl	%ebp, %eax
.LBB5_9:                                # %if.end.45
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fn_Sd_get_params, .Lfunc_end5-fn_Sd_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	fn_Sd_make_scaled,@function
fn_Sd_make_scaled:                      # @fn_Sd_make_scaled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp65:
	.cfi_def_cfa_offset 64
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	$st_function_Sd, %esi
	movl	$.L.str.7, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB6_7
# BB#1:                                 # %if.end
	leaq	72(%rbx), %rdi
	leaq	72(%r13), %rsi
	movl	$136, %edx
	callq	memcpy
	xorps	%xmm0, %xmm0
	movups	%xmm0, 152(%rbx)
	movq	168(%r13), %rdi
	movl	72(%r13), %esi
	movl	$4, %edx
	movq	%r15, %rcx
	callq	fn_copy_values
	movq	%rax, 168(%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB6_5
# BB#2:                                 # %lor.lhs.false
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	fn_common_scale
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_5
# BB#3:                                 # %lor.lhs.false.15
	leaq	152(%rbx), %rdi
	movq	152(%r13), %rsi
	movl	72(%r13), %edx
	xorl	%ecx, %ecx
	movq	%r15, %r8
	callq	fn_scale_pairs
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_5
# BB#4:                                 # %lor.lhs.false.24
	movq	%rbx, %rdi
	addq	$160, %rdi
	movq	160(%r13), %rsi
	movl	88(%r13), %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	fn_scale_pairs
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_5
# BB#6:                                 # %if.else
	movq	%rbx, (%r14)
	jmp	.LBB6_7
.LBB6_5:                                # %if.then.32
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	*56(%rbx)
.LBB6_7:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	fn_Sd_make_scaled, .Lfunc_end6-fn_Sd_make_scaled
	.cfi_endproc

	.align	16, 0x90
	.type	gs_function_Sd_serialize,@function
gs_function_Sd_serialize:               # @gs_function_Sd_serialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp78:
	.cfi_def_cfa_offset 224
.Ltmp79:
	.cfi_offset %rbx, -56
.Ltmp80:
	.cfi_offset %r12, -48
.Ltmp81:
	.cfi_offset %r13, -40
.Ltmp82:
	.cfi_offset %r14, -32
.Ltmp83:
	.cfi_offset %r15, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	fn_common_serialize
	testl	%eax, %eax
	js	.LBB7_20
# BB#1:                                 # %if.end
	leaq	72(%r14), %rbx
	leaq	32(%rbx), %rsi
	leaq	160(%rsp), %rcx
	movl	$4, %edx
	movq	%r15, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB7_20
# BB#2:                                 # %if.end.4
	leaq	72(%rbx), %rsi
	leaq	160(%rsp), %rcx
	movl	$4, %edx
	movq	%r15, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB7_20
# BB#3:                                 # %if.end.8
	movq	80(%rbx), %rsi
	movl	(%rbx), %ebx
	testq	%rsi, %rsi
	je	.LBB7_4
# BB#8:                                 # %serialize_array.exit
	shll	$3, %ebx
	leaq	164(%rsp), %rcx
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	sputs
	testl	%eax, %eax
	jns	.LBB7_9
	jmp	.LBB7_20
.LBB7_4:                                # %for.cond.preheader.i
	testl	%ebx, %ebx
	jle	.LBB7_9
# BB#5:
	xorl	%ebp, %ebp
	leaq	164(%rsp), %r12
	.align	16, 0x90
.LBB7_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$serialize_array.dummy, %esi
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	sputs
	testl	%eax, %eax
	js	.LBB7_20
# BB#6:                                 # %for.cond.i
                                        #   in Loop: Header=BB7_7 Depth=1
	incl	%ebp
	cmpl	%ebx, %ebp
	jl	.LBB7_7
.LBB7_9:                                # %if.end.12
	movq	160(%r14), %rsi
	movl	88(%r14), %ebx
	testq	%rsi, %rsi
	je	.LBB7_10
# BB#14:                                # %serialize_array.exit53
	shll	$3, %ebx
	leaq	164(%rsp), %rcx
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	sputs
	testl	%eax, %eax
	jns	.LBB7_15
	jmp	.LBB7_20
.LBB7_10:                               # %for.cond.preheader.i.41
	testl	%ebx, %ebx
	jle	.LBB7_15
# BB#11:
	xorl	%ebp, %ebp
	leaq	164(%rsp), %r12
	.align	16, 0x90
.LBB7_13:                               # %for.body.i.51
                                        # =>This Inner Loop Header: Depth=1
	movl	$serialize_array.dummy, %esi
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	sputs
	testl	%eax, %eax
	js	.LBB7_20
# BB#12:                                # %for.cond.i.46
                                        #   in Loop: Header=BB7_13 Depth=1
	incl	%ebp
	cmpl	%ebx, %ebp
	jl	.LBB7_13
.LBB7_15:                               # %if.end.17
	leaq	128(%rsp), %rsi
	movq	%r14, %rdi
	callq	*24(%r14)
	leaq	136(%rsp), %rsi
	leaq	160(%rsp), %rcx
	movl	$8, %edx
	movq	%r15, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB7_20
# BB#16:                                # %for.cond.preheader
	movq	136(%rsp), %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB7_20
# BB#17:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r12
	leaq	160(%rsp), %r13
	.align	16, 0x90
.LBB7_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	subq	%rbx, %r14
	cmpq	$100, %r14
	movq	%r14, %rbp
	movl	$100, %eax
	cmovaq	%rax, %rbp
	movl	$100, %eax
	cmoval	%eax, %r14d
	movq	128(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	leaq	16(%rsp), %rcx
	movq	%r12, %r8
	callq	*(%rdi)
	movq	8(%rsp), %rsi
	movq	%r15, %rdi
	movl	%r14d, %edx
	movq	%r13, %rcx
	callq	sputs
	testl	%eax, %eax
	js	.LBB7_20
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	%ebp, %eax
	addq	%rax, %rbx
	movq	136(%rsp), %r14
	xorl	%eax, %eax
	cmpq	%rbx, %r14
	ja	.LBB7_18
.LBB7_20:                               # %cleanup
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_function_Sd_serialize, .Lfunc_end7-gs_function_Sd_serialize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	5953594944729471431     # double 9.9999999999999997E+89
.LCPI8_1:
	.quad	4751297606873776128     # double 4294967295
	.text
	.align	16, 0x90
	.type	make_interpolation_tensor,@function
make_interpolation_tensor:              # @make_interpolation_tensor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp88:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp89:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 56
	subq	$344, %rsp              # imm = 0x158
.Ltmp91:
	.cfi_def_cfa_offset 400
.Ltmp92:
	.cfi_offset %rbx, -56
.Ltmp93:
	.cfi_offset %r12, -48
.Ltmp94:
	.cfi_offset %r13, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r13
	testl	%r9d, %r9d
	js	.LBB8_1
# BB#16:                                # %if.else
	movslq	%r9d, %r10
	movq	184(%rdi), %rax
	movq	192(%rdi), %rsi
	movl	(%rax,%r10,4), %edx
	movl	(%rsi,%r10,4), %esi
	movl	%esi, 60(%rsp)          # 4-byte Spill
	movl	(%r13,%r10,4), %ebx
	movsd	(%r12,%r10,8), %xmm0    # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_17
	jnp	.LBB8_18
.LBB8_17:                               # %if.then.i.50
	leal	-1(%rbx), %esi
	xorl	%r11d, %r11d
	cmpl	$1, %ebx
	cmovgl	%esi, %r11d
	movq	168(%rdi), %rsi
	movl	(%rsi,%r10,4), %esi
	leal	3(%rbx), %ebp
	cmpl	%ebp, %esi
	cmovlel	%esi, %ebp
	movl	%ebp, 76(%rsp)          # 4-byte Spill
	jmp	.LBB8_19
.LBB8_1:                                # %if.then
	movq	176(%rdi), %rax
	movslq	%ecx, %r14
	movsd	(%rax,%r14,8), %xmm0    # xmm0 = mem[0],zero
	xorl	%ebp, %ebp
	ucomisd	.LCPI8_0(%rip), %xmm0
	jne	.LBB8_34
	jp	.LBB8_34
# BB#2:                                 # %if.then.i
	movq	%rdi, %rbx
	movslq	144(%rbx), %rax
	movslq	%r8d, %rsi
	leaq	80(%rsp), %rdx
	callq	*fn_get_samples(,%rax,8)
	testl	%eax, %eax
	js	.LBB8_35
# BB#3:                                 # %for.cond.preheader.i
	movslq	88(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB8_34
# BB#4:                                 # %for.body.lr.ph.i
	movl	144(%rbx), %ecx
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	cmpl	$32, %ecx
	movq	96(%rbx), %rcx
	movq	160(%rbx), %rdx
	jb	.LBB8_5
# BB#6:                                 # %for.body.lr.ph.i
	movsd	.LCPI8_1(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB8_7
.LBB8_18:                               # %if.else.i.51
	leal	1(%rbx), %esi
	movl	%esi, 76(%rsp)          # 4-byte Spill
	movl	%ebx, %r11d
.LBB8_19:                               # %for.body.lr.ph.i.53
	movl	%edx, 72(%rsp)          # 4-byte Spill
	movl	%edx, %ebp
	imull	%ebx, %ebp
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rdx
	addl	%esi, %edx
	xorl	%esi, %esi
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	cmovnel	%edx, %esi
	cmovpl	%edx, %esi
	addl	%ebp, %esi
	testl	%r9d, %r9d
	jle	.LBB8_20
# BB#21:                                # %for.body.i.62.for.body.i.62_crit_edge.preheader
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%r9, 40(%rsp)           # 8-byte Spill
	leaq	1(%r10), %rbx
	.align	16, 0x90
.LBB8_22:                               # %for.body.i.62.for.body.i.62_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movslq	-8(%rax,%rbx,4), %rbp
	movsd	-16(%r12,%rbx,8), %xmm2 # xmm2 = mem[0],zero
	movl	-8(%r13,%rbx,4), %edx
	imull	%ebp, %edx
	addl	%esi, %edx
	imulq	$1431655766, %rbp, %rsi # imm = 0x55555556
	movq	%rsi, %rbp
	shrq	$63, %rbp
	shrq	$32, %rsi
	addl	%ebp, %esi
	ucomisd	%xmm1, %xmm2
	jne	.LBB8_24
	jp	.LBB8_24
# BB#23:                                # %select.mid
                                        #   in Loop: Header=BB8_22 Depth=1
	xorl	%esi, %esi
.LBB8_24:                               # %select.end
                                        #   in Loop: Header=BB8_22 Depth=1
	addl	%esi, %edx
	decq	%rbx
	cmpq	$1, %rbx
	movl	%edx, %esi
	jg	.LBB8_22
	jmp	.LBB8_25
.LBB8_20:
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movl	%esi, %edx
.LBB8_25:                               # %is_tensor_done.exit
	movq	%r10, 24(%rsp)          # 8-byte Spill
	movslq	%edx, %rax
	movslq	%ecx, %rdx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	shlq	$3, %rdx
	addq	176(%rdi), %rdx
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movsd	(%rdx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	.LCPI8_0(%rip), %xmm1
	movl	$0, %ebp
	movl	%r8d, %ebx
	jne	.LBB8_34
	jp	.LBB8_34
# BB#26:                                # %for.cond.preheader
	cmpl	76(%rsp), %r11d         # 4-byte Folded Reload
	jge	.LBB8_31
# BB#27:                                # %for.body.lr.ph
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	%r11d, %eax
	imull	72(%rsp), %eax          # 4-byte Folded Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %r14d
	movl	%r11d, %eax
	imull	60(%rsp), %eax          # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%r11d, %r15d
	movl	%r15d, 20(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB8_29:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	movl	%ebx, %r8d
	movl	56(%rsp), %r9d          # 4-byte Reload
	callq	make_interpolation_tensor
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_34
# BB#28:                                # %for.cond
                                        #   in Loop: Header=BB8_29 Depth=1
	incl	%r15d
	addl	72(%rsp), %r14d         # 4-byte Folded Reload
	addl	60(%rsp), %ebx          # 4-byte Folded Reload
	cmpl	76(%rsp), %r15d         # 4-byte Folded Reload
	jl	.LBB8_29
# BB#30:                                # %for.cond.for.end_crit_edge
	movq	24(%rsp), %rax          # 8-byte Reload
	movsd	(%r12,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movl	20(%rsp), %r11d         # 4-byte Reload
.LBB8_31:                               # %for.end
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	jne	.LBB8_32
	jnp	.LBB8_33
.LBB8_32:                               # %if.then.22
	movl	%r11d, %ecx
	movl	72(%rsp), %r8d          # 4-byte Reload
	imull	%r8d, %ecx
	addl	%edx, %ecx
	movq	32(%rsp), %rdx          # 8-byte Reload
	subl	%r11d, %edx
	notl	%r11d
	movl	76(%rsp), %r9d          # 4-byte Reload
	addl	%r11d, %r9d
	decl	%eax
	movl	%eax, 8(%rsp)
	movl	%edx, (%rsp)
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	interpolate_tensors
.LBB8_33:                               # %cleanup.37
	xorl	%ebp, %ebp
	jmp	.LBB8_34
.LBB8_35:                               # %load_vector.exit.thread
	movl	%eax, %ebp
	jmp	.LBB8_34
.LBB8_5:
	cvtsi2sdq	%rsi, %xmm0
.LBB8_7:                                # %for.body.lr.ph.i
	cvtsi2ssl	%esi, %xmm1
	shlq	$3, %r14
	addq	176(%rbx), %r14
	xorl	%esi, %esi
	.align	16, 0x90
.LBB8_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	movl	80(%rsp,%rsi,2), %edi
	xorps	%xmm2, %xmm2
	movaps	%xmm1, %xmm3
	je	.LBB8_10
# BB#9:                                 # %if.then.i.44
                                        #   in Loop: Header=BB8_8 Depth=1
	movslq	%esi, %rbx
	movss	(%rcx,%rbx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	incl	%ebx
	movslq	%ebx, %rbx
	movss	(%rcx,%rbx,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
.LBB8_10:                               # %if.end.i
                                        #   in Loop: Header=BB8_8 Depth=1
	cvtsi2sdq	%rdi, %xmm4
	testq	%rdx, %rdx
	movaps	%xmm3, %xmm6
	movaps	%xmm2, %xmm5
	je	.LBB8_12
# BB#11:                                # %if.then.15.i
                                        #   in Loop: Header=BB8_8 Depth=1
	movslq	%esi, %rdi
	movss	(%rdx,%rdi,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	incl	%edi
	movslq	%edi, %rdi
	movss	(%rdx,%rdi,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
.LBB8_12:                               # %if.end.28.i
                                        #   in Loop: Header=BB8_8 Depth=1
	subss	%xmm5, %xmm6
	cvtss2sd	%xmm6, %xmm6
	mulsd	%xmm6, %xmm4
	divsd	%xmm0, %xmm4
	cvtss2sd	%xmm5, %xmm5
	addsd	%xmm4, %xmm5
	cvtss2sd	%xmm2, %xmm2
	ucomisd	%xmm5, %xmm2
	ja	.LBB8_15
# BB#13:                                # %if.else.40.i
                                        #   in Loop: Header=BB8_8 Depth=1
	cvtss2sd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm5
	movapd	%xmm5, %xmm2
	jbe	.LBB8_15
# BB#14:                                # %if.then.44.i
                                        #   in Loop: Header=BB8_8 Depth=1
	movapd	%xmm3, %xmm2
.LBB8_15:                               # %fn_Sd_encode.exit
                                        #   in Loop: Header=BB8_8 Depth=1
	movsd	%xmm2, (%r14,%rsi,4)
	addq	$2, %rsi
	decq	%rax
	jne	.LBB8_8
.LBB8_34:                               # %cleanup.37
	movl	%ebp, %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	make_interpolation_tensor, .Lfunc_end8-make_interpolation_tensor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_2:
	.quad	4613937818241073152     # double 3
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_1:
	.quad	4613937818241073152     # double 3.000000e+00
	.quad	4613937818241073152     # double 3.000000e+00
	.text
	.align	16, 0x90
	.type	evaluate_from_tenzor,@function
evaluate_from_tenzor:                   # @evaluate_from_tenzor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp101:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp102:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 56
	subq	$2104, %rsp             # imm = 0x838
.Ltmp104:
	.cfi_def_cfa_offset 2160
.Ltmp105:
	.cfi_offset %rbx, -56
.Ltmp106:
	.cfi_offset %r12, -48
.Ltmp107:
	.cfi_offset %r13, -40
.Ltmp108:
	.cfi_offset %r14, -32
.Ltmp109:
	.cfi_offset %r15, -24
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movl	%r8d, %r14d
	movl	%ecx, %r9d
	movq	%rsi, %r13
	movq	%rdi, %r15
	testl	%r14d, %r14d
	js	.LBB9_1
# BB#8:                                 # %if.else
	movslq	%r14d, %rbp
	movq	184(%r15), %rax
	movl	(%rax,%rbp,4), %ecx
	movsd	(%rdx,%rbp,8), %xmm1    # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_10
	jp	.LBB9_10
# BB#9:                                 # %if.then.11
	imull	(%r13,%rbp,4), %ecx
	addl	%r9d, %ecx
	decl	%r14d
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%r14d, %r8d
	movq	%rbx, %r9
	addq	$2104, %rsp             # imm = 0x838
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	evaluate_from_tenzor    # TAILCALL
.LBB9_1:                                # %for.cond.preheader
	movslq	88(%r15), %rbp
	testq	%rbp, %rbp
	jle	.LBB9_19
# BB#2:                                 # %for.body.lr.ph
	movq	176(%r15), %r8
	leaq	-1(%rbp), %rsi
	xorl	%ecx, %ecx
	testb	$3, %bpl
	je	.LBB9_5
# BB#3:                                 # %for.body.prol.preheader
	movslq	%r9d, %rax
	leaq	(%r8,%rax,8), %rdi
	movl	%ebp, %eax
	andl	$3, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB9_4:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rcx,8), %rdx
	movq	%rdx, (%rbx,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB9_4
.LBB9_5:                                # %for.body.lr.ph.split
	cmpq	$3, %rsi
	jb	.LBB9_19
# BB#6:                                 # %for.body.lr.ph.split.split
	movslq	%r9d, %rax
	leaq	24(%r8,%rax,8), %rdx
	.align	16, 0x90
.LBB9_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rdx,%rcx,8), %rax
	movq	%rax, (%rbx,%rcx,8)
	movq	-16(%rdx,%rcx,8), %rax
	movq	%rax, 8(%rbx,%rcx,8)
	movq	-8(%rdx,%rcx,8), %rax
	movq	%rax, 16(%rbx,%rcx,8)
	movq	(%rdx,%rcx,8), %rax
	movq	%rax, 24(%rbx,%rcx,8)
	addq	$4, %rcx
	cmpq	%rbp, %rcx
	jl	.LBB9_7
	jmp	.LBB9_19
.LBB9_10:                               # %if.else.14
	movslq	%ecx, %r12
	imulq	$1431655766, %r12, %rcx # imm = 0x55555556
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$32, %rcx
	addl	%eax, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	decl	%r14d
	movl	(%r13,%rbp,4), %ecx
	imull	%r12d, %ecx
	addl	%r9d, %ecx
	movl	%r9d, 28(%rsp)          # 4-byte Spill
	leaq	48(%rsp), %r9
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movl	%r14d, %r8d
	movapd	%xmm1, (%rsp)           # 16-byte Spill
	callq	evaluate_from_tenzor
	movl	(%r13,%rbp,4), %ecx
	imull	%r12d, %ecx
	addl	28(%rsp), %ecx          # 4-byte Folded Reload
	movq	40(%rsp), %rax          # 8-byte Reload
	addl	%eax, %ecx
	leaq	560(%rsp), %r9
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %r8d
	callq	evaluate_from_tenzor
	movl	(%r13,%rbp,4), %eax
	imull	%r12d, %eax
	addl	28(%rsp), %eax          # 4-byte Folded Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx,2), %ecx
	leaq	1072(%rsp), %r9
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %r8d
	callq	evaluate_from_tenzor
	imull	(%r13,%rbp,4), %r12d
	addl	28(%rsp), %r12d         # 4-byte Folded Reload
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,2), %ecx
	addl	%r12d, %ecx
	leaq	1584(%rsp), %rbp
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %r8d
	movq	%rbp, %r9
	callq	evaluate_from_tenzor
	movapd	(%rsp), %xmm6           # 16-byte Reload
	movslq	88(%r15), %rax
	testq	%rax, %rax
	jle	.LBB9_19
# BB#11:                                # %for.body.40.lr.ph
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm6, %xmm0
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB9_17
# BB#12:                                # %overflow.checked
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-2, %rcx
	je	.LBB9_16
# BB#13:                                # %vector.ph
	movapd	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movapd	%xmm6, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movq	%rax, %rdx
	andq	$-2, %rdx
	movapd	.LCPI9_1(%rip), %xmm3   # xmm3 = [3.000000e+00,3.000000e+00]
	movq	%rbx, %rsi
	.align	16, 0x90
.LBB9_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movapd	-1536(%rbp), %xmm4
	mulpd	%xmm1, %xmm4
	mulpd	%xmm1, %xmm4
	mulpd	%xmm1, %xmm4
	movapd	-1024(%rbp), %xmm5
	mulpd	%xmm1, %xmm5
	mulpd	%xmm1, %xmm5
	mulpd	%xmm2, %xmm5
	mulpd	%xmm3, %xmm5
	addpd	%xmm4, %xmm5
	movapd	-512(%rbp), %xmm4
	mulpd	%xmm1, %xmm4
	mulpd	%xmm2, %xmm4
	mulpd	%xmm2, %xmm4
	mulpd	%xmm3, %xmm4
	addpd	%xmm5, %xmm4
	movapd	(%rbp), %xmm5
	mulpd	%xmm2, %xmm5
	mulpd	%xmm2, %xmm5
	mulpd	%xmm2, %xmm5
	addpd	%xmm4, %xmm5
	movupd	%xmm5, (%rsi)
	addq	$16, %rbp
	addq	$16, %rsi
	addq	$-2, %rdx
	jne	.LBB9_14
# BB#15:
	movq	%rcx, %rdx
.LBB9_16:                               # %middle.block
	cmpq	%rdx, %rax
	je	.LBB9_19
.LBB9_17:                               # %for.body.40.preheader
	movsd	.LCPI9_2(%rip), %xmm1   # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB9_18:                               # %for.body.40
                                        # =>This Inner Loop Header: Depth=1
	movsd	48(%rsp,%rdx,8), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	560(%rsp,%rdx,8), %xmm3 # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm6, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	movsd	1072(%rsp,%rdx,8), %xmm2 # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	%xmm6, %xmm2
	mulsd	%xmm6, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm3, %xmm2
	movsd	1584(%rsp,%rdx,8), %xmm3 # xmm3 = mem[0],zero
	mulsd	%xmm6, %xmm3
	mulsd	%xmm6, %xmm3
	mulsd	%xmm6, %xmm3
	addsd	%xmm2, %xmm3
	movsd	%xmm3, (%rbx,%rdx,8)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB9_18
.LBB9_19:                               # %cleanup.79
	addq	$2104, %rsp             # imm = 0x838
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	evaluate_from_tenzor, .Lfunc_end9-evaluate_from_tenzor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
.LCPI10_1:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	interpolate_tensors,@function
interpolate_tensors:                    # @interpolate_tensors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp114:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp117:
	.cfi_def_cfa_offset 96
.Ltmp118:
	.cfi_offset %rbx, -56
.Ltmp119:
	.cfi_offset %r12, -48
.Ltmp120:
	.cfi_offset %r13, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%rdx, %r12
	movq	%rsi, %r13
	movl	104(%rsp), %edx
	movl	96(%rsp), %r10d
	testl	%edx, %edx
	js	.LBB10_1
# BB#12:                                # %if.else.lr.ph
	movq	184(%rdi), %rax
	movslq	%edx, %r15
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB10_13:                              # %if.else
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax,%r15,4), %r14d
	movl	(%r13,%r15,4), %ebp
	movsd	(%r12,%r15,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_14
	jnp	.LBB10_16
.LBB10_14:                              # %for.cond.preheader
	imull	%r14d, %ebp
	addl	%ecx, %ebp
	decl	%r15d
	movl	%r10d, (%rsp)
	movl	%r15d, 8(%rsp)
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%r13, %rsi
	movq	%r12, %rdx
	movl	%ebp, %ecx
	movl	%ebx, %r9d
	movq	%r8, 32(%rsp)           # 8-byte Spill
	callq	interpolate_tensors
	movslq	%r14d, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	leal	(%rax,%rbp), %ecx
	movl	%r15d, 8(%rsp)
	movl	96(%rsp), %r14d
	movl	%r14d, (%rsp)
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	32(%rsp), %r8           # 8-byte Reload
	movl	%ebx, %r9d
	callq	interpolate_tensors
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	leal	(%rax,%rbp), %ecx
	movl	%r15d, 8(%rsp)
	movl	%r14d, (%rsp)
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	32(%rsp), %r8           # 8-byte Reload
	movl	%ebx, %r9d
	callq	interpolate_tensors
	movq	24(%rsp), %rcx          # 8-byte Reload
	addl	%ebp, %ecx
	movl	%r15d, 8(%rsp)
	movl	96(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	32(%rsp), %r8           # 8-byte Reload
	movl	%ebx, %r9d
	callq	interpolate_tensors
	jmp	.LBB10_15
	.align	16, 0x90
.LBB10_16:                              # %if.then.6
                                        #   in Loop: Header=BB10_13 Depth=1
	imull	%r14d, %ebp
	addl	%ecx, %ebp
	testq	%r15, %r15
	leaq	-1(%r15), %r15
	movl	%ebp, %ecx
	jg	.LBB10_13
	jmp	.LBB10_2
.LBB10_1:
	movl	%ecx, %ebp
.LBB10_2:                               # %if.then
	movslq	88(%rdi), %rax
	testq	%rax, %rax
	jle	.LBB10_15
# BB#3:                                 # %for.body.lr.ph.i
	movslq	%ebp, %rcx
	shlq	$3, %rcx
	addq	176(%rdi), %rcx
	movslq	%r8d, %r9
	imulq	$1431655766, %r9, %rdx  # imm = 0x55555556
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rdx
	addl	%esi, %edx
	movslq	%edx, %r15
	leal	(%r15,%r15), %edx
	movslq	%edx, %r14
	movl	%r10d, %edx
	imull	%r8d, %edx
	movslq	%edx, %rbp
	incl	%r10d
	imull	%r8d, %r10d
	movslq	%r10d, %r12
	leal	(%r8,%r8), %edx
	movslq	%edx, %r11
	leal	(%r8,%r8,2), %edx
	movslq	%edx, %r10
	xorl	%edx, %edx
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB10_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%rdx,8), %rsi
	cmpl	$3, %ebx
	je	.LBB10_9
# BB#5:                                 # %for.body.i
                                        #   in Loop: Header=BB10_4 Depth=1
	cmpl	$2, %ebx
	jne	.LBB10_6
# BB#8:                                 # %sw.bb.23.i.i
                                        #   in Loop: Header=BB10_4 Depth=1
	leaq	(%rsi,%rbp,8), %rdi
	movsd	(%rsi,%rbp,8), %xmm2    # xmm2 = mem[0],zero
	movsd	(%rsi,%r12,8), %xmm3    # xmm3 = mem[0],zero
	movsd	(%rsi), %xmm4           # xmm4 = mem[0],zero
	mulsd	%xmm0, %xmm4
	movapd	%xmm2, %xmm5
	mulsd	%xmm1, %xmm5
	subsd	%xmm4, %xmm5
	movapd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm5, %xmm4
	divsd	%xmm1, %xmm4
	movsd	(%rsi,%r11,8), %xmm5    # xmm5 = mem[0],zero
	jmp	.LBB10_10
	.align	16, 0x90
.LBB10_9:                               # %sw.bb.38.i.i
                                        #   in Loop: Header=BB10_4 Depth=1
	leaq	(%rsi,%rbp,8), %rdi
	movsd	(%rsi,%r9,8), %xmm2     # xmm2 = mem[0],zero
	movsd	(%rsi,%r11,8), %xmm3    # xmm3 = mem[0],zero
	movsd	(%rsi), %xmm4           # xmm4 = mem[0],zero
	mulsd	%xmm0, %xmm4
	movapd	%xmm2, %xmm5
	mulsd	%xmm1, %xmm5
	subsd	%xmm4, %xmm5
	movapd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm5, %xmm4
	divsd	%xmm1, %xmm4
	movsd	(%rsi,%r10,8), %xmm5    # xmm5 = mem[0],zero
.LBB10_10:                              # %fn_make_poles.exit.i
                                        #   in Loop: Header=BB10_4 Depth=1
	mulsd	%xmm0, %xmm5
	movsd	%xmm4, (%rdi,%r15,8)
	mulsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	subsd	%xmm5, %xmm3
	divsd	%xmm1, %xmm3
	movsd	%xmm3, (%rdi,%r14,8)
	jmp	.LBB10_11
	.align	16, 0x90
.LBB10_6:                               # %for.body.i
                                        #   in Loop: Header=BB10_4 Depth=1
	cmpl	$1, %ebx
	jne	.LBB10_11
# BB#7:                                 # %sw.bb.i.i
                                        #   in Loop: Header=BB10_4 Depth=1
	movsd	(%rsi), %xmm2           # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm2
	addsd	(%rsi,%r9,8), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, (%rsi,%r15,8)
	movsd	(%rsi,%r9,8), %xmm2     # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm2
	addsd	(%rsi), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, (%rsi,%r14,8)
	.align	16, 0x90
.LBB10_11:                              # %fn_make_poles.exit.i
                                        #   in Loop: Header=BB10_4 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jne	.LBB10_4
.LBB10_15:                              # %if.end.14
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	interpolate_tensors, .Lfunc_end10-interpolate_tensors
	.cfi_endproc

	.align	16, 0x90
	.type	fn_gets_1,@function
fn_gets_1:                              # @fn_gets_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp127:
	.cfi_def_cfa_offset 112
.Ltmp128:
	.cfi_offset %rbx, -32
.Ltmp129:
	.cfi_offset %r14, -24
.Ltmp130:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %rax
	movslq	88(%rax), %r15
	leaq	112(%rax), %rdi
	shrq	$3, %rsi
	movl	%r14d, %ecx
	andl	$7, %ecx
	leaq	7(%rcx,%r15), %rdx
	shrq	$3, %rdx
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %r8
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB11_6
# BB#1:                                 # %for.cond.preheader
	xorl	%eax, %eax
	testl	%r15d, %r15d
	jle	.LBB11_6
# BB#2:                                 # %for.body.lr.ph
	movq	8(%rsp), %rdx
	.align	16, 0x90
.LBB11_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %esi
	movl	%r14d, %ecx
	notl	%ecx
	andb	$7, %cl
	shrl	%cl, %esi
	andl	$1, %esi
	movl	%esi, (%rbx)
	incq	%r14
	testb	$7, %r14b
	jne	.LBB11_5
# BB#4:                                 # %if.then.16
                                        #   in Loop: Header=BB11_3 Depth=1
	incq	%rdx
	movq	%rdx, 8(%rsp)
.LBB11_5:                               # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	addq	$4, %rbx
	decl	%r15d
	jne	.LBB11_3
.LBB11_6:                               # %cleanup.19
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	fn_gets_1, .Lfunc_end11-fn_gets_1
	.cfi_endproc

	.align	16, 0x90
	.type	fn_gets_2,@function
fn_gets_2:                              # @fn_gets_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp131:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp132:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp134:
	.cfi_def_cfa_offset 112
.Ltmp135:
	.cfi_offset %rbx, -32
.Ltmp136:
	.cfi_offset %r14, -24
.Ltmp137:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %rax
	movslq	88(%rax), %r15
	leaq	112(%rax), %rdi
	shrq	$3, %rsi
	movq	%r14, %rcx
	shrq	%rcx
	andl	$3, %ecx
	leaq	3(%rcx,%r15), %rdx
	shrq	$2, %rdx
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %r8
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB12_6
# BB#1:                                 # %for.cond.preheader
	xorl	%eax, %eax
	testl	%r15d, %r15d
	jle	.LBB12_6
# BB#2:                                 # %for.body.lr.ph
	movq	8(%rsp), %rdx
	.align	16, 0x90
.LBB12_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %esi
	movl	%r14d, %edi
	andl	$7, %edi
	movl	$6, %ecx
	subl	%edi, %ecx
	shrl	%cl, %esi
	andl	$3, %esi
	movl	%esi, (%rbx)
	addq	$2, %r14
	testb	$7, %r14b
	jne	.LBB12_5
# BB#4:                                 # %if.then.18
                                        #   in Loop: Header=BB12_3 Depth=1
	incq	%rdx
	movq	%rdx, 8(%rsp)
.LBB12_5:                               # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=1
	addq	$4, %rbx
	decl	%r15d
	jne	.LBB12_3
.LBB12_6:                               # %cleanup.20
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	fn_gets_2, .Lfunc_end12-fn_gets_2
	.cfi_endproc

	.align	16, 0x90
	.type	fn_gets_4,@function
fn_gets_4:                              # @fn_gets_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp141:
	.cfi_def_cfa_offset 112
.Ltmp142:
	.cfi_offset %rbx, -32
.Ltmp143:
	.cfi_offset %r14, -24
.Ltmp144:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %rax
	movslq	88(%rax), %r15
	leaq	112(%rax), %rdi
	shrq	$3, %rsi
	movq	%r14, %rcx
	shrq	$2, %rcx
	andl	$1, %ecx
	leaq	1(%rcx,%r15), %rdx
	shrq	%rdx
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %r8
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB13_7
# BB#1:                                 # %for.cond.preheader
	xorl	%eax, %eax
	testl	%r15d, %r15d
	jle	.LBB13_7
# BB#2:                                 # %for.body.lr.ph
	movq	8(%rsp), %rcx
	.align	16, 0x90
.LBB13_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorq	$4, %r14
	testb	$4, %r14b
	jne	.LBB13_4
# BB#5:                                 # %cond.false
                                        #   in Loop: Header=BB13_3 Depth=1
	leaq	1(%rcx), %rsi
	movq	%rsi, 8(%rsp)
	movzbl	(%rcx), %edx
	andl	$15, %edx
	movq	%rsi, %rcx
	jmp	.LBB13_6
	.align	16, 0x90
.LBB13_4:                               # %cond.true
                                        #   in Loop: Header=BB13_3 Depth=1
	movzbl	(%rcx), %edx
	shrl	$4, %edx
.LBB13_6:                               # %cond.end
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	%edx, (%rbx)
	addq	$4, %rbx
	decl	%r15d
	jne	.LBB13_3
.LBB13_7:                               # %cleanup.17
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	fn_gets_4, .Lfunc_end13-fn_gets_4
	.cfi_endproc

	.align	16, 0x90
	.type	fn_gets_8,@function
fn_gets_8:                              # @fn_gets_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp147:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp148:
	.cfi_def_cfa_offset 112
.Ltmp149:
	.cfi_offset %rbx, -32
.Ltmp150:
	.cfi_offset %r14, -24
.Ltmp151:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rdi, %rax
	movl	88(%rax), %r14d
	leaq	112(%rax), %rdi
	shrq	$3, %rsi
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %r8
	movl	%r14d, %edx
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB14_9
# BB#1:                                 # %for.cond.preheader
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB14_9
# BB#2:                                 # %for.body.lr.ph
	movq	8(%rsp), %rsi
	leal	-1(%r14), %r8d
	xorl	%eax, %eax
	testb	$3, %r14b
	je	.LBB14_3
# BB#4:                                 # %for.body.prol.preheader
	movl	%r14d, %edx
	andl	$3, %edx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB14_5:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	leaq	1(%rsi,%rdi), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	(%rsi,%rdi), %ebx
	movl	%ebx, (%r15,%rdi,4)
	incq	%rdi
	cmpl	%edi, %edx
	jne	.LBB14_5
	jmp	.LBB14_6
.LBB14_3:
	movq	%rsi, %rcx
	xorl	%edi, %edi
.LBB14_6:                               # %for.body.lr.ph.split
	cmpl	$3, %r8d
	jb	.LBB14_9
# BB#7:                                 # %for.body.lr.ph.split.split
	subl	%edi, %r14d
	leaq	12(%r15,%rdi,4), %rdx
	xorl	%eax, %eax
	xorl	%esi, %esi
	.align	16, 0x90
.LBB14_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	1(%rcx,%rsi), %rdi
	movq	%rdi, 8(%rsp)
	movzbl	(%rcx,%rsi), %edi
	movl	%edi, -12(%rdx,%rsi,4)
	leaq	2(%rcx,%rsi), %rdi
	movq	%rdi, 8(%rsp)
	movzbl	1(%rcx,%rsi), %edi
	movl	%edi, -8(%rdx,%rsi,4)
	leaq	3(%rcx,%rsi), %rdi
	movq	%rdi, 8(%rsp)
	movzbl	2(%rcx,%rsi), %edi
	movl	%edi, -4(%rdx,%rsi,4)
	leaq	4(%rcx,%rsi), %rdi
	movq	%rdi, 8(%rsp)
	movzbl	3(%rcx,%rsi), %edi
	movl	%edi, (%rdx,%rsi,4)
	addq	$4, %rsi
	cmpl	%esi, %r14d
	jne	.LBB14_8
.LBB14_9:                               # %cleanup.6
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	fn_gets_8, .Lfunc_end14-fn_gets_8
	.cfi_endproc

	.align	16, 0x90
	.type	fn_gets_12,@function
fn_gets_12:                             # @fn_gets_12
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp152:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp153:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp154:
	.cfi_def_cfa_offset 32
	subq	$144, %rsp
.Ltmp155:
	.cfi_def_cfa_offset 176
.Ltmp156:
	.cfi_offset %rbx, -32
.Ltmp157:
	.cfi_offset %r14, -24
.Ltmp158:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rax
	movslq	88(%rax), %r15
	leaq	112(%rax), %rdi
	shrq	$3, %rsi
	movq	%rbx, %rcx
	shrq	$2, %rcx
	andl	$1, %ecx
	leaq	(%r15,%r15,2), %rdx
	leaq	1(%rcx,%rdx), %rdx
	shrq	%rdx
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %r8
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB15_7
# BB#1:                                 # %for.cond.preheader
	xorl	%eax, %eax
	testl	%r15d, %r15d
	jle	.LBB15_7
# BB#2:                                 # %for.body.lr.ph
	movq	8(%rsp), %rcx
	.align	16, 0x90
.LBB15_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testb	$4, %bl
	movzbl	(%rcx), %esi
	movzbl	1(%rcx), %edx
	jne	.LBB15_4
# BB#5:                                 # %if.else
                                        #   in Loop: Header=BB15_3 Depth=1
	incq	%rcx
	shll	$4, %esi
	shrl	$4, %edx
	orl	%esi, %edx
	jmp	.LBB15_6
	.align	16, 0x90
.LBB15_4:                               # %if.then.13
                                        #   in Loop: Header=BB15_3 Depth=1
	andl	$15, %esi
	shll	$8, %esi
	orl	%esi, %edx
	addq	$2, %rcx
.LBB15_6:                               # %if.end.27
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	%edx, (%r14)
	movq	%rcx, 8(%rsp)
	xorq	$4, %rbx
	addq	$4, %r14
	decl	%r15d
	jne	.LBB15_3
.LBB15_7:                               # %cleanup.28
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	fn_gets_12, .Lfunc_end15-fn_gets_12
	.cfi_endproc

	.align	16, 0x90
	.type	fn_gets_16,@function
fn_gets_16:                             # @fn_gets_16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp159:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp160:
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
.Ltmp161:
	.cfi_def_cfa_offset 176
.Ltmp162:
	.cfi_offset %rbx, -24
.Ltmp163:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rax
	movl	88(%rax), %ebx
	leaq	112(%rax), %rdi
	shrq	$3, %rsi
	leal	(%rbx,%rbx), %edx
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %r8
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB16_8
# BB#1:                                 # %for.cond.preheader
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB16_8
# BB#2:                                 # %for.body.lr.ph
	movq	8(%rsp), %rcx
	xorl	%eax, %eax
	testb	$1, %bl
	jne	.LBB16_4
# BB#3:
	xorl	%edx, %edx
	jmp	.LBB16_5
.LBB16_4:                               # %for.body.prol
	movzbl	(%rcx), %edx
	shll	$8, %edx
	movzbl	1(%rcx), %esi
	orl	%edx, %esi
	movl	%esi, (%r14)
	addq	$2, %rcx
	movq	%rcx, 8(%rsp)
	movl	$1, %edx
.LBB16_5:                               # %for.body.lr.ph.split
	cmpl	$1, %ebx
	je	.LBB16_8
# BB#6:                                 # %for.body.lr.ph.split.split
	subl	%edx, %ebx
	leaq	4(%r14,%rdx,4), %rdx
	.align	16, 0x90
.LBB16_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %esi
	shll	$8, %esi
	movzbl	1(%rcx), %edi
	orl	%esi, %edi
	movl	%edi, -4(%rdx)
	leaq	2(%rcx), %rsi
	movq	%rsi, 8(%rsp)
	movzbl	2(%rcx), %esi
	shll	$8, %esi
	movzbl	3(%rcx), %edi
	orl	%esi, %edi
	movl	%edi, (%rdx)
	addq	$4, %rcx
	movq	%rcx, 8(%rsp)
	addq	$8, %rdx
	addl	$-2, %ebx
	jne	.LBB16_7
.LBB16_8:                               # %cleanup.8
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	fn_gets_16, .Lfunc_end16-fn_gets_16
	.cfi_endproc

	.align	16, 0x90
	.type	fn_gets_24,@function
fn_gets_24:                             # @fn_gets_24
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp165:
	.cfi_def_cfa_offset 24
	subq	$216, %rsp
.Ltmp166:
	.cfi_def_cfa_offset 240
.Ltmp167:
	.cfi_offset %rbx, -24
.Ltmp168:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %rax
	movl	88(%rax), %r14d
	leaq	112(%rax), %rdi
	shrq	$3, %rsi
	leal	(%r14,%r14,2), %edx
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %r8
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB17_4
# BB#1:                                 # %for.cond.preheader
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB17_4
# BB#2:                                 # %for.body.lr.ph
	movq	8(%rsp), %rcx
	.align	16, 0x90
.LBB17_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %edx
	shll	$16, %edx
	movzbl	1(%rcx), %esi
	shll	$8, %esi
	orl	%edx, %esi
	movzbl	2(%rcx), %edx
	orl	%esi, %edx
	movl	%edx, (%rbx)
	addq	$3, %rcx
	movq	%rcx, 8(%rsp)
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB17_3
.LBB17_4:                               # %cleanup.12
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end17:
	.size	fn_gets_24, .Lfunc_end17-fn_gets_24
	.cfi_endproc

	.align	16, 0x90
	.type	fn_gets_32,@function
fn_gets_32:                             # @fn_gets_32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp169:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp170:
	.cfi_def_cfa_offset 24
	subq	$280, %rsp              # imm = 0x118
.Ltmp171:
	.cfi_def_cfa_offset 304
.Ltmp172:
	.cfi_offset %rbx, -24
.Ltmp173:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %rax
	movl	88(%rax), %r14d
	leaq	112(%rax), %rdi
	shrq	$3, %rsi
	leal	(,%r14,4), %edx
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %r8
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB18_4
# BB#1:                                 # %for.cond.preheader
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB18_4
# BB#2:                                 # %for.body.lr.ph
	movq	8(%rsp), %rcx
	.align	16, 0x90
.LBB18_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %edx
	shll	$24, %edx
	movzbl	1(%rcx), %esi
	shll	$16, %esi
	orl	%edx, %esi
	movzbl	2(%rcx), %edx
	shll	$8, %edx
	orl	%esi, %edx
	movzbl	3(%rcx), %esi
	orl	%edx, %esi
	movl	%esi, (%rbx)
	addq	$4, %rcx
	movq	%rcx, 8(%rsp)
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB18_3
.LBB18_4:                               # %cleanup.16
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end18:
	.size	fn_gets_32, .Lfunc_end18-fn_gets_32
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI19_0:
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
.LCPI19_1:
	.long	1258291200              # 0x4b000000
	.long	1258291200              # 0x4b000000
	.long	1258291200              # 0x4b000000
	.long	1258291200              # 0x4b000000
.LCPI19_2:
	.long	1392508928              # 0x53000000
	.long	1392508928              # 0x53000000
	.long	1392508928              # 0x53000000
	.long	1392508928              # 0x53000000
.LCPI19_3:
	.long	3539992704              # float -5.497642e+11
	.long	3539992704              # float -5.497642e+11
	.long	3539992704              # float -5.497642e+11
	.long	3539992704              # float -5.497642e+11
	.text
	.align	16, 0x90
	.type	fn_interpolate_linear,@function
fn_interpolate_linear:                  # @fn_interpolate_linear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp175:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp177:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp178:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp179:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp180:
	.cfi_def_cfa_offset 352
.Ltmp181:
	.cfi_offset %rbx, -56
.Ltmp182:
	.cfi_offset %r12, -48
.Ltmp183:
	.cfi_offset %r13, -40
.Ltmp184:
	.cfi_offset %r14, -32
.Ltmp185:
	.cfi_offset %r15, -24
.Ltmp186:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testl	%ebp, %ebp
	je	.LBB19_4
# BB#1:                                 # %if.else.lr.ph
	addq	$4, %rbx
	decl	%ebp
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB19_2:                               # %if.else
                                        # =>This Inner Loop Header: Depth=1
	movss	-4(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	leaq	8(%r13), %r15
	ucomiss	%xmm0, %xmm1
	jne	.LBB19_13
	jp	.LBB19_13
# BB#3:                                 # %cleanup
                                        #   in Loop: Header=BB19_2 Depth=1
	addq	$4, %rbx
	decl	%ebp
	cmpl	$-1, %ebp
	movq	%r15, %r13
	jne	.LBB19_2
.LBB19_4:                               # %if.then
	movslq	144(%r14), %rax
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r8, %rsi
	callq	*fn_get_samples(,%rax,8)
	movslq	88(%r14), %rsi
	testq	%rsi, %rsi
	jle	.LBB19_22
# BB#5:                                 # %for.body.lr.ph
	cmpq	$2, %rsi
	movl	$1, %eax
	cmovlq	%rsi, %rax
	notq	%rax
	leaq	(%rax,%rsi), %rax
	cmpq	$-2, %rax
	je	.LBB19_11
# BB#6:                                 # %overflow.checked76
	addq	$2, %rax
	movq	%rax, %rdi
	andq	$-8, %rdi
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-8, %rcx
	je	.LBB19_10
# BB#7:                                 # %vector.body72.preheader
	movq	%rsi, %r8
	subq	%rdi, %r8
	leaq	16(%rsp,%rsi,4), %rdi
	leaq	-16(%r12,%rsi,4), %rbp
	movq	%rsi, %rbx
	notq	%rbx
	cmpq	$-3, %rbx
	movq	$-2, %rdx
	cmovgq	%rbx, %rdx
	leaq	2(%rdx,%rsi), %rsi
	andq	$-8, %rsi
	movdqa	.LCPI19_0(%rip), %xmm0  # xmm0 = [65535,65535,65535,65535]
	movdqa	.LCPI19_1(%rip), %xmm1  # xmm1 = [1258291200,1258291200,1258291200,1258291200]
	movdqa	.LCPI19_2(%rip), %xmm2  # xmm2 = [1392508928,1392508928,1392508928,1392508928]
	movaps	.LCPI19_3(%rip), %xmm3  # xmm3 = [-5.497642e+11,-5.497642e+11,-5.497642e+11,-5.497642e+11]
	.align	16, 0x90
.LBB19_8:                               # %vector.body72
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rdi), %xmm4
	movdqu	(%rdi), %xmm5
	pshufd	$27, %xmm5, %xmm5       # xmm5 = xmm5[3,2,1,0]
	pshufd	$27, %xmm4, %xmm4       # xmm4 = xmm4[3,2,1,0]
	movdqa	%xmm5, %xmm6
	pand	%xmm0, %xmm6
	por	%xmm1, %xmm6
	psrld	$16, %xmm5
	por	%xmm2, %xmm5
	addps	%xmm3, %xmm5
	addps	%xmm6, %xmm5
	movdqa	%xmm4, %xmm6
	pand	%xmm0, %xmm6
	por	%xmm1, %xmm6
	psrld	$16, %xmm4
	por	%xmm2, %xmm4
	addps	%xmm3, %xmm4
	addps	%xmm6, %xmm4
	shufps	$27, %xmm5, %xmm5       # xmm5 = xmm5[3,2,1,0]
	movups	%xmm5, (%rbp)
	shufps	$27, %xmm4, %xmm4       # xmm4 = xmm4[3,2,1,0]
	movups	%xmm4, -16(%rbp)
	addq	$-32, %rdi
	addq	$-32, %rbp
	addq	$-8, %rsi
	jne	.LBB19_8
# BB#9:
	movq	%r8, %rsi
	movq	%rcx, %rdx
.LBB19_10:                              # %middle.block73
	cmpq	%rdx, %rax
	je	.LBB19_22
.LBB19_11:                              # %for.body.preheader
	incq	%rsi
	.align	16, 0x90
.LBB19_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	24(%rsp,%rsi,4), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -8(%r12,%rsi,4)
	decq	%rsi
	cmpq	$1, %rsi
	jg	.LBB19_12
	jmp	.LBB19_22
.LBB19_13:                              # %if.end
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movl	%ebp, %r9d
	movaps	%xmm1, 16(%rsp)         # 16-byte Spill
	callq	fn_interpolate_linear
	movq	8(%rsp), %r8            # 8-byte Reload
	addq	(%r13), %r8
	leaq	32(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	%ebp, %r9d
	callq	fn_interpolate_linear
	movaps	16(%rsp), %xmm5         # 16-byte Reload
	movslq	88(%r14), %rcx
	testq	%rcx, %rcx
	jle	.LBB19_22
# BB#14:                                # %for.body.23.lr.ph
	cmpq	$2, %rcx
	movl	$1, %eax
	cmovlq	%rcx, %rax
	notq	%rax
	leaq	(%rax,%rcx), %rax
	cmpq	$-2, %rax
	je	.LBB19_15
# BB#17:                                # %overflow.checked
	addq	$2, %rax
	movq	%rax, %rdi
	andq	$-8, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	$-8, %rdx
	je	.LBB19_21
# BB#18:                                # %vector.ph
	movq	%rcx, %r8
	subq	%rdi, %r8
	movaps	%xmm5, %xmm0
	shufps	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	16(%rsp,%rcx,4), %rdi
	leaq	-16(%r12,%rcx,4), %rbp
	movq	%rcx, %rbx
	notq	%rbx
	cmpq	$-3, %rbx
	movq	$-2, %rsi
	cmovgq	%rbx, %rsi
	leaq	2(%rsi,%rcx), %rcx
	andq	$-8, %rcx
	.align	16, 0x90
.LBB19_19:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-16(%rdi), %xmm1
	movups	(%rdi), %xmm2
	movups	-16(%rbp), %xmm3
	movups	(%rbp), %xmm4
	subps	%xmm4, %xmm2
	shufps	$27, %xmm4, %xmm4       # xmm4 = xmm4[3,2,1,0]
	shufps	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0]
	subps	%xmm3, %xmm1
	shufps	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0]
	shufps	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0]
	mulps	%xmm0, %xmm2
	mulps	%xmm0, %xmm1
	addps	%xmm4, %xmm2
	addps	%xmm3, %xmm1
	shufps	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0]
	movups	%xmm2, (%rbp)
	shufps	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0]
	movups	%xmm1, -16(%rbp)
	addq	$-32, %rdi
	addq	$-32, %rbp
	addq	$-8, %rcx
	jne	.LBB19_19
# BB#20:
	movq	%r8, %rcx
	movq	%rdx, %rsi
.LBB19_21:                              # %middle.block
	cmpq	%rsi, %rax
	je	.LBB19_22
.LBB19_15:                              # %for.body.23.preheader
	incq	%rcx
	.align	16, 0x90
.LBB19_16:                              # %for.body.23
                                        # =>This Inner Loop Header: Depth=1
	movss	24(%rsp,%rcx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	-8(%r12,%rcx,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	mulss	%xmm5, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%r12,%rcx,4)
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB19_16
.LBB19_22:                              # %if.end.36
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	fn_interpolate_linear, .Lfunc_end19-fn_interpolate_linear
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4607182418800017408     # double 1
.LCPI20_1:
	.quad	5953594944729471431     # double 9.9999999999999997E+89
.LCPI20_2:
	.quad	4751297606873776128     # double 4294967295
	.text
	.align	16, 0x90
	.type	make_interpolation_nodes,@function
make_interpolation_nodes:               # @make_interpolation_nodes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp188:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp189:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp190:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp191:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp192:
	.cfi_def_cfa_offset 56
	subq	$328, %rsp              # imm = 0x148
.Ltmp193:
	.cfi_def_cfa_offset 384
.Ltmp194:
	.cfi_offset %rbx, -56
.Ltmp195:
	.cfi_offset %r12, -48
.Ltmp196:
	.cfi_offset %r13, -40
.Ltmp197:
	.cfi_offset %r14, -32
.Ltmp198:
	.cfi_offset %r15, -24
.Ltmp199:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rdi, %r12
	movl	392(%rsp), %eax
	movl	384(%rsp), %r15d
	testl	%eax, %eax
	js	.LBB20_1
# BB#18:                                # %if.else
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movslq	%eax, %r12
	movsd	(%rsi,%r12,8), %xmm0    # xmm0 = mem[0],zero
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movsd	(%rbx,%r12,8), %xmm0    # xmm0 = mem[0],zero
	callq	ceil
	movl	$-28, %r14d
	testl	%ebp, %ebp
	js	.LBB20_31
# BB#19:                                # %lor.lhs.false
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	168(%rax), %rax
	movl	(%rax,%r12,4), %eax
	cmpl	%eax, %ebp
	jge	.LBB20_31
# BB#20:                                # %if.end.31
	cvttsd2si	%xmm0, %esi
	testl	%esi, %esi
	js	.LBB20_31
# BB#21:                                # %if.end.31
	cmpl	%eax, %esi
	jge	.LBB20_31
# BB#22:                                # %if.end.42
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	184(%rcx), %rax
	movq	192(%rcx), %rcx
	movl	(%rax,%r12,4), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	(%rcx,%r12,4), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%ebp, (%rax,%r12,4)
	cmpl	%ebp, %esi
	jg	.LBB20_23
# BB#24:                                # %if.end.42
	xorpd	%xmm0, %xmm0
	jmp	.LBB20_25
.LBB20_1:                               # %if.then
	movq	176(%r12), %rax
	movslq	%r13d, %rbx
	movsd	(%rax,%rbx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	.LCPI20_1(%rip), %xmm0
	jne	.LBB20_16
	jp	.LBB20_16
# BB#2:                                 # %if.then.i
	movslq	144(%r12), %rax
	movslq	%r15d, %rsi
	leaq	64(%rsp), %rdx
	movq	%r12, %rdi
	callq	*fn_get_samples(,%rax,8)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB20_31
# BB#3:                                 # %for.cond.preheader.i
	movslq	88(%r12), %rax
	testq	%rax, %rax
	jle	.LBB20_16
# BB#4:                                 # %for.body.lr.ph.i
	movl	144(%r12), %ecx
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	cmpl	$32, %ecx
	movq	96(%r12), %rcx
	movq	160(%r12), %rdx
	jb	.LBB20_5
# BB#6:                                 # %for.body.lr.ph.i
	movsd	.LCPI20_2(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB20_7
.LBB20_23:
	movsd	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB20_25:                              # %if.end.42
	movq	%rbx, %rdx
	movl	392(%rsp), %ecx
	movq	56(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax,%r12,8)
	cmpl	%esi, %ebp
	jle	.LBB20_29
# BB#26:
	xorl	%r14d, %r14d
	jmp	.LBB20_31
.LBB20_29:                              # %for.body.lr.ph
	decl	%ecx
	leal	-1(%rbp), %ebx
	movl	%ebp, %eax
	imull	28(%rsp), %eax          # 4-byte Folded Reload
	addl	%eax, %r13d
	imull	24(%rsp), %ebp          # 4-byte Folded Reload
	addl	%ebp, %r15d
	.align	16, 0x90
.LBB20_30:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, 8(%rsp)
	movl	%ecx, %r12d
	movl	%r15d, (%rsp)
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%esi, %r14d
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rdx, %rbp
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	56(%rsp), %r8           # 8-byte Reload
	movl	%r13d, %r9d
	callq	make_interpolation_nodes
	movl	%r14d, %esi
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB20_31
# BB#27:                                # %for.cond
                                        #   in Loop: Header=BB20_30 Depth=1
	incl	%ebx
	addl	28(%rsp), %r13d         # 4-byte Folded Reload
	addl	24(%rsp), %r15d         # 4-byte Folded Reload
	cmpl	%esi, %ebx
	movq	%rbp, %rdx
	movl	%r12d, %ecx
	jl	.LBB20_30
# BB#28:
	xorl	%r14d, %r14d
	jmp	.LBB20_31
.LBB20_5:
	cvtsi2sdq	%rsi, %xmm0
.LBB20_7:                               # %for.body.lr.ph.i
	cvtsi2ssl	%esi, %xmm1
	shlq	$3, %rbx
	addq	176(%r12), %rbx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB20_8:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	movl	64(%rsp,%rsi,2), %edi
	xorps	%xmm2, %xmm2
	movaps	%xmm1, %xmm3
	je	.LBB20_10
# BB#9:                                 # %if.then.i.53
                                        #   in Loop: Header=BB20_8 Depth=1
	movslq	%esi, %rbp
	movss	(%rcx,%rbp,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	incl	%ebp
	movslq	%ebp, %rbp
	movss	(%rcx,%rbp,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
.LBB20_10:                              # %if.end.i
                                        #   in Loop: Header=BB20_8 Depth=1
	cvtsi2sdq	%rdi, %xmm4
	testq	%rdx, %rdx
	movaps	%xmm3, %xmm6
	movaps	%xmm2, %xmm5
	je	.LBB20_12
# BB#11:                                # %if.then.15.i
                                        #   in Loop: Header=BB20_8 Depth=1
	movslq	%esi, %rdi
	movss	(%rdx,%rdi,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	incl	%edi
	movslq	%edi, %rdi
	movss	(%rdx,%rdi,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
.LBB20_12:                              # %if.end.28.i
                                        #   in Loop: Header=BB20_8 Depth=1
	subss	%xmm5, %xmm6
	cvtss2sd	%xmm6, %xmm6
	mulsd	%xmm6, %xmm4
	divsd	%xmm0, %xmm4
	cvtss2sd	%xmm5, %xmm5
	addsd	%xmm4, %xmm5
	cvtss2sd	%xmm2, %xmm2
	ucomisd	%xmm5, %xmm2
	ja	.LBB20_15
# BB#13:                                # %if.else.40.i
                                        #   in Loop: Header=BB20_8 Depth=1
	cvtss2sd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm5
	movapd	%xmm5, %xmm2
	jbe	.LBB20_15
# BB#14:                                # %if.then.44.i
                                        #   in Loop: Header=BB20_8 Depth=1
	movapd	%xmm3, %xmm2
.LBB20_15:                              # %fn_Sd_encode.exit
                                        #   in Loop: Header=BB20_8 Depth=1
	movsd	%xmm2, (%rbx,%rsi,4)
	addq	$2, %rsi
	decq	%rax
	jne	.LBB20_8
.LBB20_16:                              # %if.end.5
	xorl	%r14d, %r14d
	cmpl	$3, 104(%r12)
	movq	%r12, %r13
	jne	.LBB20_31
# BB#17:                                # %if.then.8
	movq	%r13, %rdi
	movl	72(%rdi), %r9d
	decl	%r9d
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	make_interpolation_tensor
.LBB20_31:                              # %cleanup.65
	movl	%r14d, %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	make_interpolation_nodes, .Lfunc_end20-make_interpolation_nodes
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4751297606873776128     # double 4294967295
	.text
	.align	16, 0x90
	.type	fn_Sd_1arg_linear_monotonic_rec,@function
fn_Sd_1arg_linear_monotonic_rec:        # @fn_Sd_1arg_linear_monotonic_rec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp201:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp202:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp203:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp204:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp205:
	.cfi_def_cfa_offset 56
	subq	$344, %rsp              # imm = 0x158
.Ltmp206:
	.cfi_def_cfa_offset 400
.Ltmp207:
	.cfi_offset %rbx, -56
.Ltmp208:
	.cfi_offset %r12, -48
.Ltmp209:
	.cfi_offset %r13, -40
.Ltmp210:
	.cfi_offset %r14, -32
.Ltmp211:
	.cfi_offset %r15, -24
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rdi, %r12
	movl	%edx, %eax
	subl	%esi, %eax
	cmpl	$1, %eax
	jg	.LBB21_9
# BB#1:                                 # %for.cond.preheader
	movslq	88(%r12), %rax
	xorl	%r15d, %r15d
	testq	%rax, %rax
	jle	.LBB21_25
# BB#2:                                 # %for.body.lr.ph
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB21_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	(%rbx,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	(%r14,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_5
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	$1, %esi
	jmp	.LBB21_7
	.align	16, 0x90
.LBB21_5:                               # %if.else
                                        #   in Loop: Header=BB21_3 Depth=1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB21_8
# BB#6:                                 # %if.then.11
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	$2, %esi
.LBB21_7:                               # %for.inc
                                        #   in Loop: Header=BB21_3 Depth=1
	shll	%cl, %esi
	orl	%esi, %r15d
.LBB21_8:                               # %for.inc
                                        #   in Loop: Header=BB21_3 Depth=1
	incq	%rdx
	addl	$3, %ecx
	cmpq	%rax, %rdx
	jl	.LBB21_3
	jmp	.LBB21_25
.LBB21_9:                               # %if.else.16
	leal	(%rdx,%rsi), %eax
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdx, (%rsp)            # 8-byte Spill
	movl	%eax, %r13d
	shrl	$31, %r13d
	addl	%eax, %r13d
	sarl	%r13d
	movslq	88(%r12), %rax
	movslq	%r13d, %rsi
	imulq	%rax, %rsi
	movslq	144(%r12), %rax
	imulq	%rax, %rsi
	leaq	80(%rsp), %rdx
	movq	%r12, %rdi
	callq	*fn_get_samples(,%rax,8)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB21_25
# BB#10:                                # %for.cond.preheader.i
	movslq	88(%r12), %rax
	testq	%rax, %rax
	jle	.LBB21_23
# BB#11:                                # %for.body.lr.ph.i
	movl	144(%r12), %ecx
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	cmpl	$32, %ecx
	movq	96(%r12), %rcx
	movq	160(%r12), %rdx
	jb	.LBB21_12
# BB#13:                                # %for.body.lr.ph.i
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB21_14
.LBB21_12:
	cvtsi2sdq	%rsi, %xmm0
.LBB21_14:                              # %for.body.lr.ph.i
	cvtsi2ssl	%esi, %xmm1
	xorl	%esi, %esi
	.align	16, 0x90
.LBB21_15:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	movl	80(%rsp,%rsi,2), %edi
	xorps	%xmm2, %xmm2
	movaps	%xmm1, %xmm3
	je	.LBB21_17
# BB#16:                                # %if.then.i.i
                                        #   in Loop: Header=BB21_15 Depth=1
	movslq	%esi, %rbp
	movss	(%rcx,%rbp,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	incl	%ebp
	movslq	%ebp, %rbp
	movss	(%rcx,%rbp,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
.LBB21_17:                              # %if.end.i.i
                                        #   in Loop: Header=BB21_15 Depth=1
	cvtsi2sdq	%rdi, %xmm4
	testq	%rdx, %rdx
	movaps	%xmm3, %xmm6
	movaps	%xmm2, %xmm5
	je	.LBB21_19
# BB#18:                                # %if.then.15.i.i
                                        #   in Loop: Header=BB21_15 Depth=1
	movslq	%esi, %rdi
	movss	(%rdx,%rdi,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	incl	%edi
	movslq	%edi, %rdi
	movss	(%rdx,%rdi,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
.LBB21_19:                              # %if.end.28.i.i
                                        #   in Loop: Header=BB21_15 Depth=1
	subss	%xmm5, %xmm6
	cvtss2sd	%xmm6, %xmm6
	mulsd	%xmm6, %xmm4
	divsd	%xmm0, %xmm4
	cvtss2sd	%xmm5, %xmm5
	addsd	%xmm4, %xmm5
	cvtss2sd	%xmm2, %xmm2
	ucomisd	%xmm5, %xmm2
	ja	.LBB21_22
# BB#20:                                # %if.else.40.i.i
                                        #   in Loop: Header=BB21_15 Depth=1
	cvtss2sd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm5
	movapd	%xmm5, %xmm2
	jbe	.LBB21_22
# BB#21:                                # %if.then.44.i.i
                                        #   in Loop: Header=BB21_15 Depth=1
	movapd	%xmm3, %xmm2
.LBB21_22:                              # %fn_Sd_encode.exit.i
                                        #   in Loop: Header=BB21_15 Depth=1
	movsd	%xmm2, 16(%rsp,%rsi,4)
	addq	$2, %rsi
	decq	%rax
	jne	.LBB21_15
.LBB21_23:                              # %if.end.25
	leaq	16(%rsp), %r8
	movq	%r12, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	%r13d, %edx
	movq	%rbx, %rcx
	callq	fn_Sd_1arg_linear_monotonic_rec
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB21_25
# BB#24:                                # %if.end.32
	leaq	16(%rsp), %rcx
	movq	%r12, %rdi
	movl	%r13d, %esi
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	%r14, %r8
	callq	fn_Sd_1arg_linear_monotonic_rec
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovsl	%ecx, %r15d
	orl	%eax, %r15d
.LBB21_25:                              # %return
	movl	%r15d, %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	fn_Sd_1arg_linear_monotonic_rec, .Lfunc_end21-fn_Sd_1arg_linear_monotonic_rec
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4607182418800017408     # double 1
.LCPI22_1:
	.quad	0                       # double 0
	.text
	.align	16, 0x90
	.type	is_lattice_monotonic_by_dimension,@function
is_lattice_monotonic_by_dimension:      # @is_lattice_monotonic_by_dimension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp214:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp215:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp216:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp217:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp218:
	.cfi_def_cfa_offset 56
	subq	$696, %rsp              # imm = 0x2B8
.Ltmp219:
	.cfi_def_cfa_offset 752
.Ltmp220:
	.cfi_offset %rbx, -56
.Ltmp221:
	.cfi_offset %r12, -48
.Ltmp222:
	.cfi_offset %r13, -40
.Ltmp223:
	.cfi_offset %r14, -32
.Ltmp224:
	.cfi_offset %r15, -24
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%r8, 96(%rsp)           # 8-byte Spill
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	776(%rsp), %r14
	movl	760(%rsp), %r15d
	movl	752(%rsp), %ecx
	cmpl	$-1, %ecx
	je	.LBB22_1
# BB#13:                                # %if.else
	cmpl	%r15d, %ecx
	movl	%ecx, %eax
	jg	.LBB22_15
# BB#14:                                # %cond.false
	leal	-1(%rcx), %eax
	testl	%ecx, %ecx
	cmovel	%r15d, %eax
.LBB22_15:                              # %cond.end.5
	movslq	%eax, %r12
	movsd	(%rsi,%r12,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movq	88(%rsp), %rax          # 8-byte Reload
	movsd	(%rax,%r12,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %edx
	movl	104(%rbx), %eax
	leal	3(%rax,%rax,2), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cmpeqsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	movd	%xmm0, %rcx
	andl	$1, %ecx
	subl	%ecx, %edx
	movl	%edx, 64(%rsp)          # 4-byte Spill
	cmpl	%edx, %ebp
	movl	$0, %edx
	jg	.LBB22_23
# BB#16:                                # %for.body.lr.ph
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	addl	$2147483647, %eax       # imm = 0x7FFFFFFF
	andl	$1227133513, %eax       # imm = 0x49249249
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	752(%rsp), %eax
	leal	-1(%rax), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movq	48(%rsp), %rsi          # 8-byte Reload
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB22_20
	.align	16, 0x90
.LBB22_19:                              # %for.cond.for.body_crit_edge
                                        #   in Loop: Header=BB22_20 Depth=1
	incl	%ebp
	movq	%r13, %rsi
	movsd	(%rsi,%r12,8), %xmm1    # xmm1 = mem[0],zero
	movl	%r14d, %r15d
.LBB22_20:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	%ebp, (%rcx,%r12,4)
	cvtsi2sdl	%ebp, %xmm0
	subsd	%xmm0, %xmm1
	maxsd	.LCPI22_1, %xmm1
	movq	96(%rsp), %r8           # 8-byte Reload
	movsd	%xmm1, (%r8,%r12,8)
	movq	88(%rsp), %rdx          # 8-byte Reload
	movsd	(%rdx,%r12,8), %xmm1    # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	minsd	.LCPI22_0(%rip), %xmm1
	movq	104(%rsp), %r9          # 8-byte Reload
	movsd	%xmm1, (%r9,%r12,8)
	leaq	176(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	768(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%r15d, %r14d
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	%rsi, %r13
	callq	is_lattice_monotonic_by_dimension
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB22_24
# BB#21:                                # %if.end.62
                                        #   in Loop: Header=BB22_20 Depth=1
	orl	176(%rsp), %ebx
	movl	56(%rsp), %edx          # 4-byte Reload
	cmpl	%edx, %ebx
	je	.LBB22_22
# BB#17:                                # %for.cond
                                        #   in Loop: Header=BB22_20 Depth=1
	cmpl	64(%rsp), %ebp          # 4-byte Folded Reload
	jl	.LBB22_19
# BB#18:
	movl	%ebx, %edx
.LBB22_22:
	movq	776(%rsp), %r14
.LBB22_23:                              # %for.end
	movl	%edx, %eax
	shrl	%eax
	movl	752(%rsp), %ecx
	cmpl	$1, %ecx
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%eax, %ecx
	andl	%edx, %ecx
	movl	%ecx, (%r14)
	xorl	%r15d, %r15d
	jmp	.LBB22_24
.LBB22_1:                               # %if.then
	movslq	72(%rbx), %r12
	leal	-1(%r12), %ebp
	movl	$0, (%r14)
	movl	$-13, %r15d
	cmpl	$2, %ebp
	jg	.LBB22_24
# BB#2:                                 # %if.end.i
	leaq	176(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$16, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	%rbx, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	768(%rsp), %r8d
	movl	%ebp, %r9d
	callq	copy_poles
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB22_24
# BB#3:                                 # %for.cond.preheader.i
	movl	%ebp, 88(%rsp)          # 4-byte Spill
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB22_12
# BB#4:                                 # %for.body.lr.ph.i
	leal	-1(%r12), %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	104(%rsp,%r12,8), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	-8(%rax,%r12,8), %rbx
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	-8(%rax,%r12,8), %r15
	leaq	136(%rsp,%r12,8), %r8
	leaq	1(%r12), %r13
	xorl	%r14d, %r14d
	xorps	%xmm2, %xmm2
	movabsq	$4607182418800017408, %rbp # imm = 0x3FF0000000000000
	.align	16, 0x90
.LBB22_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%r8,%r14,8)
	movsd	(%r15,%r14,8), %xmm1    # xmm1 = mem[0],zero
	movsd	(%rbx,%r14,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB22_6
	jnp	.LBB22_10
.LBB22_6:                               # %if.then.10.i
                                        #   in Loop: Header=BB22_5 Depth=1
	ucomisd	%xmm2, %xmm1
	jne	.LBB22_8
	jp	.LBB22_8
# BB#7:                                 # %if.then.10.i
                                        #   in Loop: Header=BB22_5 Depth=1
	ucomisd	.LCPI22_0(%rip), %xmm0
	jne	.LBB22_8
	jnp	.LBB22_9
.LBB22_8:                               # %if.then.17.i
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	104(%rax), %eax
	movq	72(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%r14), %ecx
	movl	%eax, 16(%rsp)
	movl	$-1, 8(%rsp)
	movl	$16, (%rsp)
	xorl	%r9d, %r9d
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	104(%rsp), %rsi         # 8-byte Reload
	movl	88(%rsp), %edx          # 4-byte Reload
	movq	%r8, %r12
	leaq	176(%rsp), %r8
	callq	clamp_poles
	movq	%r12, %r8
	xorps	%xmm2, %xmm2
	movq	64(%rsp), %rcx          # 8-byte Reload
.LBB22_9:                               # %if.end.20.i
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	%rbp, (%rcx,%r14,8)
	jmp	.LBB22_11
	.align	16, 0x90
.LBB22_10:                              # %if.else.i
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	$0, (%rcx,%r14,8)
.LBB22_11:                              # %for.inc.i
                                        #   in Loop: Header=BB22_5 Depth=1
	leaq	-1(%r13,%r14), %rax
	decq	%r14
	cmpq	$1, %rax
	jg	.LBB22_5
.LBB22_12:                              # %for.end.i
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	104(%rax), %eax
	movl	%eax, 16(%rsp)
	movl	$-1, 8(%rsp)
	movl	$16, (%rsp)
	leaq	144(%rsp), %rdi
	leaq	112(%rsp), %rsi
	leaq	176(%rsp), %r8
	xorl	%r15d, %r15d
	xorl	%r9d, %r9d
	movl	88(%rsp), %edx          # 4-byte Reload
	movl	760(%rsp), %ecx
	callq	tensor_dimension_monotonity
	movq	776(%rsp), %rcx
	movl	%eax, (%rcx)
.LBB22_24:                              # %return
	movl	%r15d, %eax
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	is_lattice_monotonic_by_dimension, .Lfunc_end22-is_lattice_monotonic_by_dimension
	.cfi_endproc

	.align	16, 0x90
	.type	copy_poles,@function
copy_poles:                             # @copy_poles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp227:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp228:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp229:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp230:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp231:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp232:
	.cfi_def_cfa_offset 128
.Ltmp233:
	.cfi_offset %rbx, -56
.Ltmp234:
	.cfi_offset %r12, -48
.Ltmp235:
	.cfi_offset %r13, -40
.Ltmp236:
	.cfi_offset %r14, -32
.Ltmp237:
	.cfi_offset %r15, -24
.Ltmp238:
	.cfi_offset %rbp, -16
	movl	%r9d, 68(%rsp)          # 4-byte Spill
	movl	%r8d, %ebx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	144(%rsp), %edi
	movl	$-13, %eax
	testl	%edi, %edi
	jle	.LBB23_14
# BB#1:                                 # %if.end
	movl	104(%r13), %esi
	movslq	68(%rsp), %r14          # 4-byte Folded Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	(%rax,%r14,8), %xmm0    # xmm0 = mem[0],zero
	movl	$1, %edx
	movq	56(%rsp), %rax          # 8-byte Reload
	ucomisd	(%rax,%r14,8), %xmm0
	jne	.LBB23_2
	jnp	.LBB23_3
.LBB23_2:                               # %select.mid
	leal	1(%rsi), %edx
.LBB23_3:                               # %select.end
	movl	136(%rsp), %r15d
	movq	184(%r13), %rax
	movl	(%rax,%r14,4), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	testl	%r14d, %r14d
	je	.LBB23_6
# BB#4:                                 # %for.cond.24.preheader
	testl	%edx, %edx
	movl	%edx, 40(%rsp)          # 4-byte Spill
	jle	.LBB23_14
# BB#5:                                 # %for.body.26.lr.ph
	movl	44(%rsp), %eax          # 4-byte Reload
	cltd
	idivl	%esi
	movl	%eax, 32(%rsp)          # 4-byte Spill
	decl	68(%rsp)                # 4-byte Folded Spill
	movl	%edi, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	(%rax,%rdi), %eax
	sarl	$2, %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB23_13:                              # %for.body.26
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r12,%r14,4), %eax
	imull	44(%rsp), %eax          # 4-byte Folded Reload
	leal	(%rax,%rbx), %r8d
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	68(%rsp), %r9d          # 4-byte Reload
	callq	copy_poles
	testl	%eax, %eax
	js	.LBB23_14
# BB#12:                                # %for.cond.24
                                        #   in Loop: Header=BB23_13 Depth=1
	incl	%ebp
	addl	32(%rsp), %ebx          # 4-byte Folded Reload
	movl	144(%rsp), %eax
	addl	%eax, %r15d
	xorl	%eax, %eax
	cmpl	40(%rsp), %ebp          # 4-byte Folded Reload
	jl	.LBB23_13
	jmp	.LBB23_14
.LBB23_6:                               # %for.cond.preheader
	testl	%edx, %edx
	movl	%edx, %ebp
	jle	.LBB23_14
# BB#7:                                 # %for.body.lr.ph
	movq	176(%r13), %r8
	movslq	%ebx, %r9
	movl	(%r12,%r14,4), %ecx
	movl	44(%rsp), %eax          # 4-byte Reload
	imull	%eax, %ecx
	movslq	%ecx, %r14
	cltd
	idivl	%esi
	movl	%eax, %ecx
	movslq	%r15d, %r10
	xorl	%eax, %eax
	testb	$1, %bpl
	movl	$0, %r11d
	je	.LBB23_9
# BB#8:                                 # %for.body.prol
	leaq	(%r8,%r9,8), %rdx
	movq	(%rdx,%r14,8), %rdx
	movq	128(%rsp), %rsi
	movq	%rdx, (%rsi,%r10,8)
	movl	$1, %r11d
.LBB23_9:                               # %for.body.lr.ph.split
	cmpl	$1, %ebp
	je	.LBB23_14
# BB#10:                                # %for.body.lr.ph.split.split
	subl	%r11d, %ebp
	shlq	$3, %r14
	movslq	%ecx, %rcx
	movq	%r11, %rax
	imulq	%rcx, %rax
	movq	%r11, %rdx
	incq	%r11
	movq	%r11, %rsi
	imulq	%rcx, %r11
	shlq	$4, %rcx
	addq	%r9, %rax
	leaq	(%r8,%rax,8), %r15
	movslq	%edi, %r12
	imulq	%r12, %rdx
	addq	%r10, %rdx
	movq	128(%rsp), %rax
	leaq	(%rax,%rdx,8), %r13
	imulq	%r12, %rsi
	shlq	$4, %r12
	addq	%r10, %rsi
	leaq	(%rax,%rsi,8), %r10
	addq	%r9, %r11
	leaq	(%r8,%r11,8), %r8
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB23_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r14,%rdx), %rbx
	movq	(%r15,%rbx), %rsi
	movq	%rsi, (%r13,%rdi)
	movq	(%r8,%rbx), %rsi
	movq	%rsi, (%r10,%rdi)
	addq	%rcx, %rdx
	addq	%r12, %rdi
	addl	$-2, %ebp
	jne	.LBB23_11
.LBB23_14:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	copy_poles, .Lfunc_end23-copy_poles
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4607182418800017408     # double 1
.LCPI24_1:
	.quad	-4616189618054758400    # double -1
.LCPI24_2:
	.quad	4613937818241073152     # double 3
.LCPI24_3:
	.quad	-4611686018427387904    # double -2
.LCPI24_5:
	.quad	4412443251819771522     # double 1.0E-13
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI24_4:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	clamp_poles,@function
clamp_poles:                            # @clamp_poles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp239:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp240:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp241:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp242:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp243:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp244:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp245:
	.cfi_def_cfa_offset 112
.Ltmp246:
	.cfi_offset %rbx, -56
.Ltmp247:
	.cfi_offset %r12, -48
.Ltmp248:
	.cfi_offset %r13, -40
.Ltmp249:
	.cfi_offset %r14, -32
.Ltmp250:
	.cfi_offset %r15, -24
.Ltmp251:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%r8, %r13
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r10
	movl	128(%rsp), %edi
	movl	120(%rsp), %r11d
	testl	%ebx, %ebx
	js	.LBB24_1
# BB#8:                                 # %if.else.11.preheader
	movl	112(%rsp), %r14d
	leal	-1(%rcx), %eax
	.align	16, 0x90
.LBB24_9:                               # %if.else.11
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %ebx
	jne	.LBB24_11
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB24_9 Depth=1
	movl	%r14d, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	movl	%r14d, %ebp
	movl	%r14d, %r11d
	leal	(%rdx,%r14), %edx
	sarl	$2, %edx
	testl	%ecx, %ecx
	movl	%edx, %r14d
	movl	%eax, %ebx
	jg	.LBB24_9
	jmp	.LBB24_2
.LBB24_1:
	movl	%r11d, %ebp
.LBB24_2:                               # %if.then
	movslq	%r15d, %rdx
	leaq	(%r13,%rdx,8), %rax
	movslq	%ecx, %rcx
	movsd	(%r10,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	movsd	(%rsi,%rcx,8), %xmm8    # xmm8 = mem[0],zero
	movsd	(%r13,%rdx,8), %xmm11   # xmm11 = mem[0],zero
	movslq	%ebp, %rcx
	movsd	(%rax,%rcx,8), %xmm2    # xmm2 = mem[0],zero
	cmpl	$3, %edi
	jne	.LBB24_7
# BB#3:                                 # %if.then.2
	leal	(%rcx,%rcx), %edx
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm7    # xmm7 = mem[0],zero
	leal	(%rcx,%rcx,2), %esi
	movslq	%esi, %rsi
	movsd	(%rax,%rsi,8), %xmm9    # xmm9 = mem[0],zero
	movsd	.LCPI24_1(%rip), %xmm13 # xmm13 = mem[0],zero
	movapd	%xmm3, %xmm5
	addsd	%xmm13, %xmm5
	movapd	%xmm3, %xmm12
	mulsd	%xmm9, %xmm12
	movsd	.LCPI24_2(%rip), %xmm14 # xmm14 = mem[0],zero
	movapd	%xmm7, %xmm10
	mulsd	%xmm14, %xmm10
	movapd	%xmm2, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	mulsd	%xmm14, %xmm2
	movapd	%xmm5, %xmm4
	mulsd	%xmm2, %xmm4
	mulsd	%xmm5, %xmm4
	movapd	%xmm5, %xmm15
	movapd	%xmm5, %xmm6
	mulsd	%xmm10, %xmm6
	movapd	%xmm12, %xmm1
	subsd	%xmm6, %xmm1
	movapd	%xmm5, %xmm6
	mulsd	%xmm11, %xmm15
	mulsd	%xmm15, %xmm6
	mulsd	%xmm5, %xmm6
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm4
	movapd	%xmm5, %xmm1
	addsd	%xmm8, %xmm13
	mulsd	%xmm13, %xmm11
	mulsd	%xmm11, %xmm1
	mulsd	%xmm5, %xmm1
	mulsd	%xmm3, %xmm4
	subsd	%xmm6, %xmm4
	movsd	%xmm4, (%rax)
	mulsd	%xmm0, %xmm5
	movsd	.LCPI24_3(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm3, %xmm4
	subsd	%xmm8, %xmm4
	mulsd	%xmm3, %xmm14
	mulsd	%xmm8, %xmm14
	addsd	%xmm14, %xmm4
	mulsd	%xmm5, %xmm4
	movapd	%xmm3, %xmm5
	mulsd	%xmm7, %xmm5
	movapd	%xmm7, %xmm6
	addsd	%xmm6, %xmm6
	movapd	%xmm8, %xmm0
	mulsd	%xmm6, %xmm0
	addsd	%xmm5, %xmm0
	movapd	%xmm3, %xmm5
	mulsd	%xmm10, %xmm5
	mulsd	%xmm8, %xmm5
	subsd	%xmm5, %xmm0
	mulsd	%xmm8, %xmm12
	addsd	%xmm12, %xmm0
	mulsd	%xmm3, %xmm0
	addsd	%xmm4, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
	mulsd	%xmm3, %xmm6
	mulsd	%xmm8, %xmm7
	addsd	%xmm6, %xmm7
	subsd	%xmm5, %xmm7
	addsd	%xmm12, %xmm7
	movapd	.LCPI24_4(%rip), %xmm4  # xmm4 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm4, %xmm3
	movapd	%xmm8, %xmm0
	addsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm3
	addsd	%xmm14, %xmm3
	mulsd	48(%rsp), %xmm3         # 8-byte Folded Reload
	mulsd	%xmm8, %xmm7
	mulsd	%xmm13, %xmm3
	addsd	%xmm7, %xmm3
	mulsd	%xmm13, %xmm15
	mulsd	%xmm13, %xmm15
	subsd	%xmm15, %xmm3
	movsd	%xmm3, (%rax,%rdx,8)
	movapd	%xmm8, %xmm0
	mulsd	%xmm10, %xmm0
	subsd	%xmm0, %xmm10
	mulsd	%xmm8, %xmm9
	addsd	%xmm10, %xmm9
	mulsd	%xmm8, %xmm9
	mulsd	%xmm13, %xmm2
	mulsd	%xmm13, %xmm2
	addsd	%xmm9, %xmm2
	mulsd	%xmm8, %xmm2
	mulsd	%xmm13, %xmm11
	mulsd	%xmm13, %xmm11
	subsd	%xmm11, %xmm2
	movsd	%xmm2, (%rax,%rsi,8)
	movsd	(%rax,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	movsd	(%rax), %xmm3           # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm1
	xorpd	%xmm1, %xmm4
	xorpd	%xmm0, %xmm0
	movapd	%xmm1, %xmm5
	cmpltsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm6
	andnpd	%xmm1, %xmm6
	andpd	%xmm4, %xmm5
	orpd	%xmm6, %xmm5
	movsd	.LCPI24_5(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm5, %xmm1
	jbe	.LBB24_5
# BB#4:                                 # %if.then.i
	movsd	%xmm3, (%rax,%rcx,8)
	movsd	(%rax,%rsi,8), %xmm2    # xmm2 = mem[0],zero
.LBB24_5:                               # %if.end.i
	movsd	(%rax,%rdx,8), %xmm3    # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	movapd	.LCPI24_4(%rip), %xmm4  # xmm4 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm3, %xmm4
	movapd	%xmm3, %xmm5
	cmpltsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	andnpd	%xmm3, %xmm0
	andpd	%xmm4, %xmm5
	orpd	%xmm0, %xmm5
	ucomisd	%xmm5, %xmm1
	jbe	.LBB24_16
# BB#6:                                 # %if.then.158.i
	movsd	%xmm2, (%rax,%rdx,8)
	jmp	.LBB24_16
.LBB24_7:                               # %if.else
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
	mulsd	%xmm11, %xmm1
	mulsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, (%rax)
	subsd	%xmm8, %xmm0
	mulsd	%xmm11, %xmm0
	mulsd	%xmm2, %xmm8
	addsd	%xmm0, %xmm8
	movsd	%xmm8, (%rax,%rcx,8)
	jmp	.LBB24_16
.LBB24_11:                              # %if.else.14
	movslq	%ebx, %rax
	movsd	(%r10,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movl	$1, %r12d
	ucomisd	(%rsi,%rax,8), %xmm0
	jne	.LBB24_12
	jnp	.LBB24_13
.LBB24_12:                              # %select.mid
	leal	1(%rdi), %r12d
.LBB24_13:                              # %select.end
	testl	%r12d, %r12d
	jle	.LBB24_16
# BB#14:                                # %for.body.lr.ph
	decl	%ebx
	movl	%r14d, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	(%rax,%r14), %eax
	sarl	$2, %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB24_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r11d, 48(%rsp)         # 4-byte Spill
	movl	%edi, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r10, %rdi
	movl	%ebx, %edx
	movq	%r13, %r8
	movl	%r15d, %r9d
	movq	%r10, %rbp
	callq	clamp_poles
	movl	48(%rsp), %r11d         # 4-byte Reload
	movq	%rbp, %r10
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	movl	128(%rsp), %edi
	addl	%r14d, %r15d
	decl	%r12d
	jne	.LBB24_15
.LBB24_16:                              # %if.end.25
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	clamp_poles, .Lfunc_end24-clamp_poles
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4412443251819771522     # double 1.0E-13
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI25_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	tensor_dimension_monotonity,@function
tensor_dimension_monotonity:            # @tensor_dimension_monotonity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp253:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp254:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp255:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp256:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp257:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp258:
	.cfi_def_cfa_offset 128
.Ltmp259:
	.cfi_offset %rbx, -56
.Ltmp260:
	.cfi_offset %r12, -48
.Ltmp261:
	.cfi_offset %r13, -40
.Ltmp262:
	.cfi_offset %r14, -32
.Ltmp263:
	.cfi_offset %r15, -24
.Ltmp264:
	.cfi_offset %rbp, -16
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movl	%ecx, %r14d
	movl	%edx, %r13d
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	136(%rsp), %ebp
	testl	%r13d, %r13d
	js	.LBB25_1
# BB#12:                                # %if.else.6.preheader
	movl	128(%rsp), %r12d
	leal	-1(%r14), %eax
	.align	16, 0x90
.LBB25_13:                              # %if.else.6
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r14d, %r13d
	jne	.LBB25_15
# BB#14:                                # %if.then.8
                                        #   in Loop: Header=BB25_13 Depth=1
	movl	%r12d, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	movl	%r12d, %edi
	movl	%r12d, %ebp
	leal	(%rdx,%r12), %edx
	sarl	$2, %edx
	testl	%r14d, %r14d
	movl	%edx, %r12d
	movl	%eax, %r13d
	jg	.LBB25_13
	jmp	.LBB25_2
.LBB25_1:
	movl	%ebp, %edi
.LBB25_2:                               # %if.then
	movslq	%r9d, %rdx
	movq	48(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rdx,8), %rax
	movsd	(%rsi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movslq	%edi, %rdx
	movsd	(%rax,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movl	144(%rsp), %edx
	cmpl	$3, %edx
	jne	.LBB25_10
# BB#3:                                 # %if.then.2
	leal	(%rdi,%rdi), %edx
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm2    # xmm2 = mem[0],zero
	leal	(%rdi,%rdi,2), %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB25_6
	jp	.LBB25_6
# BB#4:                                 # %land.lhs.true.i
	ucomisd	%xmm3, %xmm2
	jne	.LBB25_6
	jp	.LBB25_6
# BB#5:                                 # %land.lhs.true.i
	movapd	%xmm1, %xmm4
	subsd	%xmm2, %xmm4
	movapd	.LCPI25_1(%rip), %xmm5  # xmm5 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm4, %xmm5
	xorps	%xmm6, %xmm6
	movapd	%xmm4, %xmm7
	cmpltsd	%xmm6, %xmm7
	movapd	%xmm7, %xmm6
	andnpd	%xmm4, %xmm6
	andpd	%xmm5, %xmm7
	orpd	%xmm6, %xmm7
	xorl	%eax, %eax
	movsd	.LCPI25_0(%rip), %xmm4  # xmm4 = mem[0],zero
	ucomisd	%xmm7, %xmm4
	ja	.LBB25_21
.LBB25_6:                               # %if.end.i
	ucomisd	%xmm0, %xmm1
	jb	.LBB25_9
# BB#7:                                 # %if.end.i
	ucomisd	%xmm1, %xmm2
	jb	.LBB25_9
# BB#8:                                 # %if.end.i
	movl	$1, %eax
	ucomisd	%xmm2, %xmm3
	jae	.LBB25_21
.LBB25_9:                               # %if.end.23.i
	ucomisd	%xmm3, %xmm2
	sbbl	%eax, %eax
	andl	$1, %eax
	orl	$2, %eax
	ucomisd	%xmm2, %xmm1
	movl	$3, %ecx
	cmovbl	%ecx, %eax
	ucomisd	%xmm1, %xmm0
	cmovbl	%ecx, %eax
	jmp	.LBB25_21
.LBB25_10:                              # %if.else
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	$1, %eax
	ucomisd	.LCPI25_0(%rip), %xmm2
	ja	.LBB25_21
# BB#11:                                # %if.end.i.38
	subsd	%xmm1, %xmm0
	ucomisd	.LCPI25_0(%rip), %xmm0
	seta	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	jmp	.LBB25_21
.LBB25_15:                              # %if.else.10
	movslq	%r13d, %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movl	$1, %edi
	movq	40(%rsp), %rdx          # 8-byte Reload
	ucomisd	(%rdx,%rax,8), %xmm0
	jne	.LBB25_16
	jnp	.LBB25_17
.LBB25_16:                              # %select.mid
	movl	144(%rsp), %eax
	leal	1(%rax), %edi
.LBB25_17:                              # %select.end
	movl	%edi, 28(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	testl	%edi, %edi
	jle	.LBB25_21
# BB#18:                                # %for.body.lr.ph
	decl	%r13d
	movl	%r12d, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	(%rax,%r12), %eax
	sarl	$2, %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
	movl	$1, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB25_19:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	144(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	movl	%r13d, %edx
	movl	%r14d, %ecx
	movq	48(%rsp), %r8           # 8-byte Reload
	movl	%r9d, %ebx
	callq	tensor_dimension_monotonity
	movl	%eax, %edx
	movb	%r15b, %cl
	shll	%cl, %eax
	orl	68(%rsp), %eax          # 4-byte Folded Reload
	cmpl	$3, %edx
	je	.LBB25_21
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB25_19 Depth=1
	addl	$3, %r15d
	addl	%r12d, %ebx
	movl	28(%rsp), %ecx          # 4-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	cmpl	%ecx, %edx
	leal	1(%rdx), %ecx
	movl	%ecx, %edx
	movl	%ebx, %r9d
	jl	.LBB25_19
.LBB25_21:                              # %return
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	tensor_dimension_monotonity, .Lfunc_end25-tensor_dimension_monotonity
	.cfi_endproc

	.align	16, 0x90
	.type	function_Sd_enum_ptrs,@function
function_Sd_enum_ptrs:                  # @function_Sd_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %eax
	cmpl	$5, %ecx
	jbe	.LBB26_1
# BB#2:                                 # %sw.default
	movl	%ecx, %eax
	addl	$-6, %eax
	jle	.LBB26_11
# BB#3:                                 # %if.end
	addl	$-7, %ecx
	movl	$st_function, %r9d
	jmpq	*st_function+32(%rip)   # TAILCALL
.LBB26_1:                               # %entry
	jmpq	*.LJTI26_0(,%rax,8)
.LBB26_4:                               # %sw.bb
	movq	152(%rsi), %rax
	jmp	.LBB26_10
.LBB26_11:                              # %if.then
	addq	$112, %rsi
	movl	$32, %edx
	movl	$st_data_source, %r9d
	movl	%eax, %ecx
	jmpq	*st_data_source+32(%rip) # TAILCALL
.LBB26_5:                               # %sw.bb.4
	movq	160(%rsi), %rax
	jmp	.LBB26_10
.LBB26_6:                               # %sw.bb.7
	movq	168(%rsi), %rax
	jmp	.LBB26_10
.LBB26_7:                               # %sw.bb.10
	movq	176(%rsi), %rax
	jmp	.LBB26_10
.LBB26_8:                               # %sw.bb.13
	movq	184(%rsi), %rax
	jmp	.LBB26_10
.LBB26_9:                               # %sw.bb.16
	movq	192(%rsi), %rax
.LBB26_10:                              # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.Lfunc_end26:
	.size	function_Sd_enum_ptrs, .Lfunc_end26-function_Sd_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI26_0:
	.quad	.LBB26_4
	.quad	.LBB26_5
	.quad	.LBB26_6
	.quad	.LBB26_7
	.quad	.LBB26_8
	.quad	.LBB26_9

	.text
	.align	16, 0x90
	.type	function_Sd_reloc_ptrs,@function
function_Sd_reloc_ptrs:                 # @function_Sd_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp265:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp266:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp267:
	.cfi_def_cfa_offset 32
.Ltmp268:
	.cfi_offset %rbx, -24
.Ltmp269:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movl	$st_function, %edx
	callq	*st_function+40(%rip)
	leaq	112(%r14), %rdi
	movl	$32, %esi
	movl	$st_data_source, %edx
	movq	%rbx, %rcx
	callq	*st_data_source+40(%rip)
	movq	(%rbx), %rax
	movq	152(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 152(%r14)
	movq	(%rbx), %rax
	movq	160(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 160(%r14)
	movq	(%rbx), %rax
	movq	168(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 168(%r14)
	movq	(%rbx), %rax
	movq	176(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 176(%r14)
	movq	(%rbx), %rax
	movq	184(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 184(%r14)
	movq	(%rbx), %rax
	movq	192(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 192(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end27:
	.size	function_Sd_reloc_ptrs, .Lfunc_end27-function_Sd_reloc_ptrs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Size"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Decode"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Encode"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_function_Sd_free_params"
	.size	.L.str.3, 27

	.type	gs_function_Sd_init.function_Sd_head,@object # @gs_function_Sd_init.function_Sd_head
	.section	.rodata,"a",@progbits
	.align	8
gs_function_Sd_init.function_Sd_head:
	.long	0                       # 0x0
	.zero	4
	.quad	fn_Sd_evaluate
	.quad	fn_Sd_is_monotonic
	.quad	fn_Sd_get_info
	.quad	fn_Sd_get_params
	.quad	fn_Sd_make_scaled
	.quad	gs_function_Sd_free_params
	.quad	fn_common_free
	.quad	gs_function_Sd_serialize
	.size	gs_function_Sd_init.function_Sd_head, 72

	.type	st_function_Sd,@object  # @st_function_Sd
	.align	8
st_function_Sd:
	.long	208                     # 0xd0
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	function_Sd_enum_ptrs
	.quad	function_Sd_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_function_Sd, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gs_function_Sd_init"
	.size	.L.str.4, 20

	.type	fn_get_samples,@object  # @fn_get_samples
	.section	.rodata,"a",@progbits
	.align	16
fn_get_samples:
	.quad	0
	.quad	fn_gets_1
	.quad	fn_gets_2
	.quad	0
	.quad	fn_gets_4
	.quad	0
	.quad	0
	.quad	0
	.quad	fn_gets_8
	.quad	0
	.quad	0
	.quad	0
	.quad	fn_gets_12
	.quad	0
	.quad	0
	.quad	0
	.quad	fn_gets_16
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	fn_gets_24
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	fn_gets_32
	.size	fn_get_samples, 264

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Order"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"BitsPerSample"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"fn_Sd_make_scaled"
	.size	.L.str.7, 18

	.type	serialize_array.dummy,@object # @serialize_array.dummy
	.section	.rodata,"a",@progbits
	.align	4
serialize_array.dummy:
	.zero	8
	.size	serialize_array.dummy, 8

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gs_function_Sd_t"
	.size	.L.str.8, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
