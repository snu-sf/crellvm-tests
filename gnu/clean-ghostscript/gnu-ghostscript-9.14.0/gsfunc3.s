	.text
	.file	"gsfunc3.bc"
	.globl	gs_function_ElIn_free_params
	.align	16, 0x90
	.type	gs_function_ElIn_free_params,@function
gs_function_ElIn_free_params:           # @gs_function_ElIn_free_params
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
	movq	40(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	gs_free_const_object
	movq	32(%rbx), %rsi
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	gs_free_const_object
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	fn_common_free_params   # TAILCALL
.Lfunc_end0:
	.size	gs_function_ElIn_free_params, .Lfunc_end0-gs_function_ElIn_free_params
	.cfi_endproc

	.globl	gs_function_ElIn_init
	.align	16, 0x90
	.type	gs_function_ElIn_init,@function
gs_function_ElIn_init:                  # @gs_function_ElIn_init
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
	subq	$16, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 48
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	$0, (%r14)
	movl	16(%rbx), %edx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	fn_check_mnDR
	testl	%eax, %eax
	js	.LBB1_11
# BB#1:                                 # %if.end
	cmpq	$0, 32(%rbx)
	je	.LBB1_3
# BB#2:                                 # %lor.lhs.false
	cmpq	$0, 40(%rbx)
	jne	.LBB1_4
.LBB1_3:                                # %land.lhs.true
	movl	$-15, %eax
	cmpl	$1, 16(%rbx)
	jne	.LBB1_11
.LBB1_4:                                # %if.end.6
	movss	48(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	floor
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_5
	jnp	.LBB1_6
.LBB1_5:                                # %if.then.12
	movq	8(%rbx), %rcx
	movl	$-15, %eax
	xorpd	%xmm0, %xmm0
	ucomiss	(%rcx), %xmm0
	ja	.LBB1_11
.LBB1_6:                                # %if.end.17
	xorpd	%xmm0, %xmm0
	ucomiss	4(%rsp), %xmm0          # 4-byte Folded Reload
	jbe	.LBB1_9
# BB#7:                                 # %if.then.21
	movq	8(%rbx), %rax
	ucomiss	(%rax), %xmm0
	jb	.LBB1_9
# BB#8:                                 # %land.lhs.true.26
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movl	$-15, %eax
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jae	.LBB1_11
.LBB1_9:                                # %if.end.33
	movl	$st_function_ElIn, %esi
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB1_11
# BB#10:                                # %if.end.38
	movq	48(%rbx), %rax
	movq	%rax, 120(%rcx)
	movups	(%rbx), %xmm0
	movupd	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	%xmm2, 104(%rcx)
	movupd	%xmm1, 88(%rcx)
	movups	%xmm0, 72(%rcx)
	movl	$1, 72(%rcx)
	movq	gs_function_ElIn_init.function_ElIn_head+64(%rip), %rax
	movq	%rax, 64(%rcx)
	movups	gs_function_ElIn_init.function_ElIn_head+48(%rip), %xmm0
	movups	%xmm0, 48(%rcx)
	movups	gs_function_ElIn_init.function_ElIn_head+32(%rip), %xmm0
	movups	%xmm0, 32(%rcx)
	movups	gs_function_ElIn_init.function_ElIn_head+16(%rip), %xmm0
	movups	%xmm0, 16(%rcx)
	movupd	gs_function_ElIn_init.function_ElIn_head(%rip), %xmm0
	movupd	%xmm0, (%rcx)
	movq	%rcx, (%r14)
	xorl	%eax, %eax
.LBB1_11:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gs_function_ElIn_init, .Lfunc_end1-gs_function_ElIn_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	fn_ElIn_evaluate,@function
fn_ElIn_evaluate:                       # @fn_ElIn_evaluate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rdi, %r14
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movq	80(%r14), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	ja	.LBB2_3
# BB#1:                                 # %if.else
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	jbe	.LBB2_3
# BB#2:                                 # %if.then.14
	movaps	%xmm2, %xmm0
.LBB2_3:                                # %if.end.19
	cvtss2sd	%xmm0, %xmm0
	movss	120(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	callq	pow
	movslq	88(%r14), %r8
	testq	%r8, %r8
	jle	.LBB2_15
# BB#4:                                 # %for.body.lr.ph
	movq	96(%r14), %rcx
	movq	104(%r14), %rdx
	movq	112(%r14), %rsi
	xorl	%edi, %edi
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm2, %xmm2
	testq	%rdx, %rdx
	je	.LBB2_7
# BB#6:                                 # %cond.false
                                        #   in Loop: Header=BB2_5 Depth=1
	movss	(%rdx,%rdi,2), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
.LBB2_7:                                # %cond.end
                                        #   in Loop: Header=BB2_5 Depth=1
	testq	%rsi, %rsi
	cvtsd2ss	%xmm2, %xmm2
	movapd	%xmm1, %xmm3
	je	.LBB2_9
# BB#8:                                 # %cond.false.37
                                        #   in Loop: Header=BB2_5 Depth=1
	movss	(%rsi,%rdi,2), %xmm3    # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
.LBB2_9:                                # %cond.end.43
                                        #   in Loop: Header=BB2_5 Depth=1
	testq	%rcx, %rcx
	cvtsd2ss	%xmm3, %xmm3
	cvtss2sd	%xmm2, %xmm4
	subss	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm4, %xmm2
	je	.LBB2_10
# BB#11:                                # %if.then.49
                                        #   in Loop: Header=BB2_5 Depth=1
	movslq	%edi, %rax
	movss	(%rcx,%rax,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	ucomisd	%xmm2, %xmm3
	ja	.LBB2_14
# BB#12:                                # %if.else.66
                                        #   in Loop: Header=BB2_5 Depth=1
	leal	1(%rdi), %eax
	cltq
	movss	(%rcx,%rax,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm2
	movapd	%xmm2, %xmm3
	jbe	.LBB2_14
# BB#13:                                # %if.then.70
                                        #   in Loop: Header=BB2_5 Depth=1
	movapd	%xmm4, %xmm3
	jmp	.LBB2_14
	.align	16, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_5 Depth=1
	movapd	%xmm2, %xmm3
.LBB2_14:                               # %if.end.74
                                        #   in Loop: Header=BB2_5 Depth=1
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm3, %xmm2
	movss	%xmm2, (%r15,%rdi,2)
	incq	%rbx
	addq	$2, %rdi
	cmpq	%r8, %rbx
	jl	.LBB2_5
.LBB2_15:                               # %for.end
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	fn_ElIn_evaluate, .Lfunc_end2-fn_ElIn_evaluate
	.cfi_endproc

	.align	16, 0x90
	.type	fn_ElIn_is_monotonic,@function
fn_ElIn_is_monotonic:                   # @fn_ElIn_is_monotonic
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	80(%rdi), %rsi
	movl	$-15, %eax
	ucomiss	4(%rsi), %xmm0
	ja	.LBB3_3
# BB#1:                                 # %lor.lhs.false
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	(%rdx), %xmm0
	ja	.LBB3_3
# BB#2:                                 # %if.end
	movl	$0, (%rcx)
	movl	$1, %eax
.LBB3_3:                                # %cleanup
	retq
.Lfunc_end3:
	.size	fn_ElIn_is_monotonic, .Lfunc_end3-fn_ElIn_is_monotonic
	.cfi_endproc

	.align	16, 0x90
	.type	fn_ElIn_get_params,@function
fn_ElIn_get_params:                     # @fn_ElIn_get_params
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
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbp
	callq	fn_common_get_params
	movl	%eax, %r15d
	leaq	72(%rbp), %rbx
	movq	104(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	88(%rbp), %ecx
	movl	$.L.str.1, %esi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	param_write_float_values
	testl	%eax, %eax
	cmovsl	%eax, %r15d
.LBB4_2:                                # %if.end.6
	movq	40(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB4_4
# BB#3:                                 # %if.then.9
	movl	88(%rbp), %ecx
	movl	$.L.str, %esi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	param_write_float_values
	testl	%eax, %eax
	cmovsl	%eax, %r15d
.LBB4_4:                                # %if.end.18
	addq	$48, %rbx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_float
	testl	%eax, %eax
	cmovnsl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fn_ElIn_get_params, .Lfunc_end4-fn_ElIn_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	fn_ElIn_make_scaled,@function
fn_ElIn_make_scaled:                    # @fn_ElIn_make_scaled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 80
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$st_function_ElIn, %esi
	movl	$.L.str.9, %edx
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB5_20
# BB#1:                                 # %if.end
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	120(%r14), %rcx
	movq	%rcx, 120(%rax)
	movupd	72(%r14), %xmm0
	movupd	88(%r14), %xmm1
	movupd	104(%r14), %xmm2
	movupd	%xmm2, 104(%rax)
	movupd	%xmm1, 88(%rax)
	movupd	%xmm0, 72(%rax)
	movq	104(%r14), %rdi
	movl	88(%r14), %esi
	movl	$4, %edx
	movq	%rbp, %rcx
	movq	%rax, %rbx
	callq	fn_copy_values
	movq	%rax, %r13
	movq	%r13, 104(%rbx)
	movq	112(%r14), %rdi
	movl	88(%r14), %esi
	movl	$4, %edx
	movq	%rbp, %rcx
	callq	fn_copy_values
	movq	%rbx, %rdi
	movq	%rax, %r12
	movq	%r12, 112(%rdi)
	testq	%r13, %r13
	jne	.LBB5_3
# BB#2:                                 # %land.lhs.true
	movl	$-25, %r15d
	cmpq	$0, 104(%r14)
	jne	.LBB5_21
.LBB5_3:                                # %lor.rhs
	testq	%r12, %r12
	jne	.LBB5_5
# BB#4:                                 # %lor.end
	movl	$-25, %r15d
	cmpq	$0, 112(%r14)
	jne	.LBB5_21
.LBB5_5:                                # %lor.lhs.false
	movq	%r14, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %rcx
	movq	%rdi, %rbx
	callq	fn_common_scale
	movq	%rbx, %rdi
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB5_21
# BB#6:                                 # %for.cond.preheader
	movslq	88(%r14), %rax
	testq	%rax, %rax
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	jle	.LBB5_19
# BB#7:                                 # %for.body.lr.ph
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB5_18
# BB#8:                                 # %overflow.checked
	xorl	%edx, %edx
	movq	%rax, %r11
	andq	$-2, %r11
	je	.LBB5_17
# BB#9:                                 # %vector.memcheck
	movq	%rdi, %r14
	movq	%rcx, %r10
	leaq	-4(%r12,%rax,4), %rcx
	leaq	-4(%r13,%rax,4), %rdx
	leaq	-4(%rbp,%rax,8), %rdi
	cmpq	%rdx, %r12
	setbe	%r8b
	cmpq	%rcx, %r13
	setbe	%r9b
	cmpq	%rdi, %r12
	setbe	%bl
	cmpq	%rcx, %rbp
	setbe	%sil
	cmpq	%rdi, %r13
	setbe	%cl
	cmpq	%rdx, %rbp
	setbe	%r15b
	xorl	%edx, %edx
	testb	%r9b, %r8b
	jne	.LBB5_10
# BB#11:                                # %vector.memcheck
	andb	%sil, %bl
	movq	%r14, %rdi
	jne	.LBB5_12
# BB#13:                                # %vector.memcheck
	andb	%r15b, %cl
	movq	%r10, %rcx
	jne	.LBB5_17
# BB#14:                                # %vector.body.preheader
	movq	%rcx, %r8
	leaq	12(%rbp), %rdx
	movq	%rax, %rsi
	andq	$-2, %rsi
	movq	%r13, %rcx
	movq	%r12, %rbx
	.align	16, 0x90
.LBB5_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movss	-4(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-12(%rdx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	-8(%rdx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	cvtps2pd	%xmm2, %xmm1
	subpd	%xmm0, %xmm1
	cvtps2pd	(%rbx), %xmm2
	mulpd	%xmm1, %xmm2
	addpd	%xmm0, %xmm2
	cvtpd2ps	%xmm2, %xmm2
	movlpd	%xmm2, (%rbx)
	cvtps2pd	(%rcx), %xmm2
	mulpd	%xmm1, %xmm2
	addpd	%xmm0, %xmm2
	cvtpd2ps	%xmm2, %xmm0
	movlpd	%xmm0, (%rcx)
	addq	$16, %rdx
	addq	$8, %rbx
	addq	$8, %rcx
	addq	$-2, %rsi
	jne	.LBB5_15
# BB#16:
	movq	%r11, %rdx
	movq	%r8, %rcx
	jmp	.LBB5_17
.LBB5_21:                               # %if.then.24
	movl	$1, %esi
	movq	%rbp, %rdx
	callq	*56(%rdi)
	jmp	.LBB5_20
.LBB5_10:
	movq	%r10, %rcx
	movq	%r14, %rdi
	jmp	.LBB5_17
.LBB5_12:
	movq	%r10, %rcx
.LBB5_17:                               # %middle.block
	cmpq	%rdx, %rax
	je	.LBB5_19
	.align	16, 0x90
.LBB5_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbp,%rdx,8), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	4(%rbp,%rdx,8), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	movss	(%r12,%rdx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, (%r12,%rdx,4)
	movss	(%r13,%rdx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%r13,%rdx,4)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB5_18
.LBB5_19:                               # %for.end
	movq	%rdi, (%rcx)
	xorl	%r15d, %r15d
.LBB5_20:                               # %cleanup
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fn_ElIn_make_scaled, .Lfunc_end5-fn_ElIn_make_scaled
	.cfi_endproc

	.align	16, 0x90
	.type	gs_function_ElIn_serialize,@function
gs_function_ElIn_serialize:             # @gs_function_ElIn_serialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -24
.Ltmp44:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	fn_common_serialize
	testl	%eax, %eax
	js	.LBB6_4
# BB#1:                                 # %if.end
	movq	104(%rbx), %rsi
	movl	88(%rbx), %edx
	shll	$2, %edx
	leaq	4(%rsp), %rcx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB6_4
# BB#2:                                 # %if.end.7
	movq	112(%rbx), %rsi
	movl	88(%rbx), %edx
	shll	$2, %edx
	leaq	4(%rsp), %rcx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB6_4
# BB#3:                                 # %if.end.17
	addq	$72, %rbx
	addq	$48, %rbx
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sputs
.LBB6_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	gs_function_ElIn_serialize, .Lfunc_end6-gs_function_ElIn_serialize
	.cfi_endproc

	.globl	gs_function_1ItSg_free_params
	.align	16, 0x90
	.type	gs_function_1ItSg_free_params,@function
gs_function_1ItSg_free_params:          # @gs_function_1ItSg_free_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 48
.Ltmp50:
	.cfi_offset %rbx, -40
.Ltmp51:
	.cfi_offset %r12, -32
.Ltmp52:
	.cfi_offset %r14, -24
.Ltmp53:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	56(%r14), %rsi
	movl	$.L.str.3, %edx
	movq	%r15, %rdi
	callq	gs_free_const_object
	movq	48(%r14), %rsi
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	callq	gs_free_const_object
	movq	40(%r14), %r12
	movslq	32(%r14), %rbx
	testq	%rbx, %rbx
	jle	.LBB7_5
# BB#1:                                 # %for.body.lr.ph.i
	incq	%rbx
	.align	16, 0x90
.LBB7_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%r12,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB7_4
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	$1, %esi
	movq	%r15, %rdx
	callq	*56(%rdi)
.LBB7_4:                                # %for.cond.backedge.i
                                        #   in Loop: Header=BB7_2 Depth=1
	decq	%rbx
	cmpq	$1, %rbx
	jg	.LBB7_2
.LBB7_5:                                # %fn_free_functions.exit
	movl	$.L.str.11, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	gs_free_const_object
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	fn_common_free_params   # TAILCALL
.Lfunc_end7:
	.size	gs_function_1ItSg_free_params, .Lfunc_end7-gs_function_1ItSg_free_params
	.cfi_endproc

	.globl	gs_function_1ItSg_init
	.align	16, 0x90
	.type	gs_function_1ItSg_init,@function
gs_function_1ItSg_init:                 # @gs_function_1ItSg_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp60:
	.cfi_def_cfa_offset 64
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	xorl	%r13d, %r13d
	cmpq	$0, 24(%r12)
	je	.LBB8_2
# BB#1:                                 # %cond.false
	movl	16(%r12), %r13d
.LBB8_2:                                # %cond.end
	movq	8(%r12), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	$0, (%r14)
	movslq	32(%r12), %rcx
	testq	%rcx, %rcx
	jle	.LBB8_11
# BB#3:                                 # %for.body.lr.ph
	movq	40(%r12), %rdx
	leaq	-1(%rcx), %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB8_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rdi,8), %rbx
	movl	$-15, %eax
	cmpl	$1, 72(%rbx)
	jne	.LBB8_14
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB8_4 Depth=1
	testl	%r13d, %r13d
	movl	88(%rbx), %ebp
	je	.LBB8_6
# BB#7:                                 # %if.else
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	%r13d, %ebp
	je	.LBB8_8
	jmp	.LBB8_14
	.align	16, 0x90
.LBB8_6:                                #   in Loop: Header=BB8_4 Depth=1
	movl	%ebp, %r13d
.LBB8_8:                                # %if.end.15
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpq	%rsi, %rdi
	jge	.LBB8_10
# BB#9:                                 # %if.then.18
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	48(%r12), %rbp
	movss	(%rbp,%rdi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	movaps	%xmm1, %xmm0
	ja	.LBB8_14
.LBB8_10:                               # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=1
	incq	%rdi
	cmpq	%rcx, %rdi
	jl	.LBB8_4
.LBB8_11:                               # %for.end
	movq	8(%r12), %rcx
	movl	$-15, %eax
	ucomiss	4(%rcx), %xmm0
	ja	.LBB8_14
# BB#12:                                # %if.end.32
	movl	$1, %esi
	movq	%r12, %rdi
	movl	%r13d, %edx
	callq	fn_check_mnDR
	movl	$st_function_1ItSg, %esi
	movl	$.L.str.5, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB8_14
# BB#13:                                # %if.end.36
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movups	48(%r12), %xmm3
	movups	%xmm3, 120(%rcx)
	movups	%xmm2, 104(%rcx)
	movups	%xmm1, 88(%rcx)
	movups	%xmm0, 72(%rcx)
	movl	$1, 72(%rcx)
	movl	%r13d, 88(%rcx)
	movq	gs_function_1ItSg_init.function_1ItSg_head+64(%rip), %rax
	movq	%rax, 64(%rcx)
	movups	gs_function_1ItSg_init.function_1ItSg_head+48(%rip), %xmm0
	movups	%xmm0, 48(%rcx)
	movups	gs_function_1ItSg_init.function_1ItSg_head+32(%rip), %xmm0
	movups	%xmm0, 32(%rcx)
	movups	gs_function_1ItSg_init.function_1ItSg_head+16(%rip), %xmm0
	movups	%xmm0, 16(%rcx)
	movups	gs_function_1ItSg_init.function_1ItSg_head(%rip), %xmm0
	movups	%xmm0, (%rcx)
	movq	%rcx, (%r14)
	xorl	%eax, %eax
.LBB8_14:                               # %cleanup.42
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gs_function_1ItSg_init, .Lfunc_end8-gs_function_1ItSg_init
	.cfi_endproc

	.align	16, 0x90
	.type	fn_1ItSg_evaluate,@function
fn_1ItSg_evaluate:                      # @fn_1ItSg_evaluate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 16
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movslq	104(%rdi), %r8
	movq	80(%rdi), %rcx
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	ja	.LBB9_1
# BB#2:                                 # %if.else
	movss	4(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB9_3
# BB#5:                                 # %if.then.11
	leal	-1(%r8), %eax
	jmp	.LBB9_10
.LBB9_3:                                # %for.cond.preheader
	cmpl	$2, %r8d
	jl	.LBB9_4
# BB#6:                                 # %for.body.lr.ph
	leaq	-1(%r8), %r9
	movq	120(%rdi), %rsi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB9_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jae	.LBB9_9
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB9_7 Depth=1
	incq	%rax
	cmpq	%r9, %rax
	jl	.LBB9_7
.LBB9_9:                                # %for.body.if.end.23.loopexit_crit_edge
	movaps	%xmm1, %xmm0
.LBB9_10:                               # %if.end.23
	testl	%eax, %eax
	je	.LBB9_1
# BB#11:                                # %cond.false
	leal	-1(%rax), %esi
	movslq	%esi, %rsi
	shlq	$2, %rsi
	addq	120(%rdi), %rsi
	jmp	.LBB9_12
.LBB9_1:
	xorl	%eax, %eax
	movq	%rcx, %rsi
	jmp	.LBB9_12
.LBB9_4:
	xorl	%eax, %eax
	movaps	%xmm1, %xmm0
	movq	%rcx, %rsi
.LBB9_12:                               # %cond.end
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	decl	%r8d
	cmpl	%r8d, %eax
	jne	.LBB9_14
# BB#13:                                # %cond.true.35
	addq	$4, %rcx
	jmp	.LBB9_15
.LBB9_14:                               # %cond.false.39
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	120(%rdi), %rcx
.LBB9_15:                               # %cond.end.44
	movss	(%rcx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	leal	(%rax,%rax), %ecx
	movslq	%ecx, %rsi
	movq	128(%rdi), %r8
	movss	(%r8,%rsi,4), %xmm2     # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm3
	jne	.LBB9_16
	jnp	.LBB9_17
.LBB9_16:                               # %if.else.51
	subss	%xmm1, %xmm0
	orl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%r8,%rcx,4), %xmm4     # xmm4 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm4
	mulss	%xmm0, %xmm4
	subss	%xmm1, %xmm3
	divss	%xmm3, %xmm4
	addss	%xmm4, %xmm2
.LBB9_17:                               # %do.end
	movss	%xmm2, 4(%rsp)
	cltq
	movq	112(%rdi), %rcx
	movq	(%rcx,%rax,8), %rdi
	leaq	4(%rsp), %rsi
	callq	*8(%rdi)
	popq	%rdx
	retq
.Lfunc_end9:
	.size	fn_1ItSg_evaluate, .Lfunc_end9-fn_1ItSg_evaluate
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_0:
	.long	897988541               # float 9.99999997E-7
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	fn_1ItSg_is_monotonic,@function
fn_1ItSg_is_monotonic:                  # @fn_1ItSg_is_monotonic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp68:
	.cfi_def_cfa_offset 16
	movss	(%rsi), %xmm4           # xmm4 = mem[0],zero,zero,zero
	movss	(%rdx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movq	80(%rdi), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm9          # xmm9 = mem[0],zero,zero,zero
	movl	104(%rdi), %r8d
	movl	$0, (%rcx)
	movaps	%xmm4, %xmm3
	maxss	%xmm2, %xmm3
	ucomiss	%xmm3, %xmm0
	movl	$-15, %eax
	ja	.LBB10_36
# BB#1:                                 # %entry
	minss	%xmm4, %xmm2
	ucomiss	%xmm9, %xmm2
	ja	.LBB10_36
# BB#2:                                 # %if.end.12
	movslq	104(%rdi), %rax
	testq	%rax, %rax
	jle	.LBB10_35
# BB#3:                                 # %for.body.lr.ph
	movaps	%xmm0, %xmm6
	maxss	%xmm2, %xmm6
	movaps	%xmm9, %xmm8
	minss	%xmm3, %xmm8
	decl	%r8d
	xorl	%edx, %edx
	movss	.LCPI10_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB10_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%edx, %edx
	movaps	%xmm0, %xmm3
	je	.LBB10_6
# BB#5:                                 # %cond.false
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	120(%rdi), %rsi
	movss	-4(%rsi,%rdx,4), %xmm3  # xmm3 = mem[0],zero,zero,zero
.LBB10_6:                               # %cond.end
                                        #   in Loop: Header=BB10_4 Depth=1
	cmpl	%edx, %r8d
	movaps	%xmm9, %xmm7
	je	.LBB10_8
# BB#7:                                 # %cond.false.28
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	120(%rdi), %rsi
	movss	(%rsi,%rdx,4), %xmm7    # xmm7 = mem[0],zero,zero,zero
.LBB10_8:                               # %cond.end.33
                                        #   in Loop: Header=BB10_4 Depth=1
	movaps	%xmm7, %xmm5
	subss	%xmm3, %xmm5
	movaps	%xmm5, %xmm4
	mulss	%xmm2, %xmm4
	movaps	%xmm7, %xmm1
	subss	%xmm4, %xmm1
	ucomiss	%xmm1, %xmm6
	jb	.LBB10_9
# BB#34:                                # %for.inc
                                        #   in Loop: Header=BB10_4 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB10_4
.LBB10_35:                              # %for.end
	movl	$0, (%rcx)
	movl	$1, %eax
	jmp	.LBB10_36
.LBB10_9:                               # %if.end.39
	movaps	%xmm3, %xmm0
	maxss	%xmm6, %xmm0
	addss	%xmm7, %xmm4
	movaps	%xmm8, %xmm1
	cmpltss	%xmm4, %xmm1
	movaps	%xmm1, %xmm2
	andps	%xmm7, %xmm2
	andnps	%xmm8, %xmm1
	orps	%xmm2, %xmm1
	movaps	%xmm7, %xmm4
	cmpltss	%xmm8, %xmm4
	andps	%xmm4, %xmm1
	andnps	%xmm8, %xmm4
	orps	%xmm1, %xmm4
	movl	$1, %eax
	ucomiss	%xmm4, %xmm0
	jne	.LBB10_10
	jnp	.LBB10_36
.LBB10_10:                              # %if.end.51
	ucomiss	%xmm0, %xmm7
	jbe	.LBB10_13
# BB#11:                                # %if.end.51
	ucomiss	%xmm7, %xmm4
	jbe	.LBB10_13
# BB#12:                                # %if.then.55
	movl	$1, (%rcx)
	xorl	%eax, %eax
	popq	%rdx
	retq
.LBB10_13:                              # %if.end.56
	ucomiss	%xmm3, %xmm7
	jne	.LBB10_14
	jnp	.LBB10_36
.LBB10_14:                              # %if.end.92
	leal	(%rdx,%rdx), %eax
	cltq
	movq	128(%rdi), %rsi
	movss	(%rsi,%rax,4), %xmm9    # xmm9 = mem[0],zero,zero,zero
	leal	1(%rdx,%rdx), %eax
	cltq
	movss	(%rsi,%rax,4), %xmm8    # xmm8 = mem[0],zero,zero,zero
	movaps	%xmm8, %xmm2
	subss	%xmm9, %xmm2
	movaps	.LCPI10_1(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm1
	xorps	%xmm10, %xmm10
	movaps	%xmm2, %xmm11
	cmpltss	%xmm10, %xmm11
	movaps	%xmm11, %xmm6
	andnps	%xmm2, %xmm6
	andps	%xmm1, %xmm11
	orps	%xmm6, %xmm11
	mulss	.LCPI10_0(%rip), %xmm11
	minss	%xmm7, %xmm4
	maxss	%xmm3, %xmm0
	subss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	divss	%xmm5, %xmm0
	addss	%xmm9, %xmm0
	movss	%xmm0, 4(%rsp)
	subss	%xmm3, %xmm4
	mulss	%xmm2, %xmm4
	divss	%xmm5, %xmm4
	addss	%xmm9, %xmm4
	movss	%xmm4, (%rsp)
	ucomiss	%xmm8, %xmm9
	jbe	.LBB10_22
# BB#15:                                # %if.then.110
	ucomiss	%xmm9, %xmm0
	jbe	.LBB10_18
# BB#16:                                # %if.then.110
	movaps	%xmm0, %xmm1
	subss	%xmm11, %xmm1
	ucomiss	%xmm1, %xmm9
	jb	.LBB10_18
# BB#17:                                # %if.then.117
	movss	%xmm9, 4(%rsp)
	movaps	%xmm9, %xmm0
.LBB10_18:                              # %if.end.118
	ucomiss	%xmm4, %xmm8
	jbe	.LBB10_19
# BB#20:                                # %if.end.118
	addss	%xmm4, %xmm11
	ucomiss	%xmm8, %xmm11
	jae	.LBB10_29
# BB#21:
	movaps	%xmm4, %xmm8
	jmp	.LBB10_30
.LBB10_36:                              # %cleanup.178
	popq	%rdx
	retq
.LBB10_22:                              # %if.else
	ucomiss	%xmm0, %xmm9
	jbe	.LBB10_25
# BB#23:                                # %if.else
	movaps	%xmm11, %xmm1
	addss	%xmm0, %xmm1
	ucomiss	%xmm9, %xmm1
	jb	.LBB10_25
# BB#24:                                # %if.then.133
	movss	%xmm9, 4(%rsp)
	movaps	%xmm9, %xmm0
.LBB10_25:                              # %if.end.134
	ucomiss	%xmm8, %xmm4
	jbe	.LBB10_26
# BB#27:                                # %if.end.134
	movaps	%xmm4, %xmm1
	subss	%xmm11, %xmm1
	ucomiss	%xmm1, %xmm8
	jb	.LBB10_28
.LBB10_29:                              # %if.then.141
	movss	%xmm8, (%rsp)
	jmp	.LBB10_30
.LBB10_19:
	movaps	%xmm4, %xmm8
	jmp	.LBB10_30
.LBB10_26:
	movaps	%xmm4, %xmm8
	jmp	.LBB10_30
.LBB10_28:
	movaps	%xmm4, %xmm8
.LBB10_30:                              # %if.end.143
	shlq	$32, %rdx
	movq	112(%rdi), %rax
	sarq	$29, %rdx
	movq	(%rax,%rdx), %rdi
	movq	16(%rdi), %rax
	ucomiss	%xmm8, %xmm0
	jbe	.LBB10_32
# BB#31:                                # %if.then.146
	leaq	(%rsp), %rsi
	leaq	4(%rsp), %rdx
	callq	*%rax
	popq	%rdx
	retq
.LBB10_32:                              # %if.else.154
	leaq	4(%rsp), %rsi
	leaq	(%rsp), %rdx
	callq	*%rax
	popq	%rdx
	retq
.Lfunc_end10:
	.size	fn_1ItSg_is_monotonic, .Lfunc_end10-fn_1ItSg_is_monotonic
	.cfi_endproc

	.align	16, 0x90
	.type	fn_1ItSg_get_info,@function
fn_1ItSg_get_info:                      # @fn_1ItSg_get_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 32
.Ltmp72:
	.cfi_offset %rbx, -24
.Ltmp73:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gs_function_get_info_default
	movq	112(%rbx), %rax
	movq	%rax, 16(%r14)
	movl	104(%rbx), %eax
	movl	%eax, 24(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	fn_1ItSg_get_info, .Lfunc_end11-fn_1ItSg_get_info
	.cfi_endproc

	.align	16, 0x90
	.type	fn_1ItSg_get_params,@function
fn_1ItSg_get_params:                    # @fn_1ItSg_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 32
.Ltmp77:
	.cfi_offset %rbx, -32
.Ltmp78:
	.cfi_offset %r14, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	fn_common_get_params
	movl	%eax, %ebp
	movq	120(%rbx), %rdx
	movl	104(%rbx), %ecx
	decl	%ecx
	movl	$.L.str.4, %esi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	param_write_float_values
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	movq	128(%rbx), %rdx
	movl	104(%rbx), %ecx
	addl	%ecx, %ecx
	movl	$.L.str.3, %esi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	param_write_float_values
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	fn_1ItSg_get_params, .Lfunc_end12-fn_1ItSg_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	fn_1ItSg_make_scaled,@function
fn_1ItSg_make_scaled:                   # @fn_1ItSg_make_scaled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 80
.Ltmp87:
	.cfi_offset %rbx, -56
.Ltmp88:
	.cfi_offset %r12, -48
.Ltmp89:
	.cfi_offset %r13, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$st_function_1ItSg, %esi
	movl	$.L.str.12, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB13_16
# BB#1:                                 # %if.end
	movups	72(%rbx), %xmm0
	movups	88(%rbx), %xmm1
	movups	104(%rbx), %xmm2
	movups	120(%rbx), %xmm3
	movups	%xmm3, 120(%r13)
	movups	%xmm2, 104(%r13)
	movups	%xmm1, 88(%r13)
	movups	%xmm0, 72(%r13)
	movq	$0, 112(%r13)
	movq	120(%rbx), %rdi
	movl	104(%rbx), %esi
	decl	%esi
	movl	$4, %edx
	movq	%r14, %rcx
	callq	fn_copy_values
	movq	%rax, 120(%r13)
	movq	128(%rbx), %rdi
	movl	104(%rbx), %esi
	addl	%esi, %esi
	movl	$4, %edx
	movq	%r14, %rcx
	callq	fn_copy_values
	movq	%rax, 128(%r13)
	testq	%rax, %rax
	movl	$-25, %ebp
	je	.LBB13_13
# BB#2:                                 # %if.end
	movq	120(%r13), %rax
	testq	%rax, %rax
	je	.LBB13_13
# BB#3:                                 # %lor.lhs.false
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%r14, %rcx
	callq	fn_common_scale
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_13
# BB#4:                                 # %lor.lhs.false.23
	movq	112(%rbx), %r12
	movl	88(%rbx), %ebx
	leaq	16(%rsp), %rsi
	movl	%ebx, %edi
	movq	%r14, %rdx
	callq	alloc_function_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_13
# BB#5:                                 # %for.cond.preheader.i
	movq	%r15, (%rsp)            # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB13_15
# BB#6:                                 # %for.body.lr.ph.i
	movslq	%ebx, %r15
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB13_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(,%rbx,8), %rsi
	movq	(%r12,%rbx,8), %rdi
	addq	16(%rsp), %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%r14, %rcx
	callq	*40(%rdi)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_8
# BB#14:                                # %for.inc.i
                                        #   in Loop: Header=BB13_7 Depth=1
	incq	%rbx
	cmpq	%r15, %rbx
	jl	.LBB13_7
.LBB13_15:                              # %if.end.33
	movq	16(%rsp), %rax
	movq	%rax, 112(%r13)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%r13, (%rax)
	xorl	%ebp, %ebp
	jmp	.LBB13_16
.LBB13_8:                               # %for.body.lr.ph.i.28
	movq	16(%rsp), %rbx
	incq	%r15
	.align	16, 0x90
.LBB13_9:                               # %for.body.i.32
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbx,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.LBB13_11
# BB#10:                                # %if.then.i
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	$1, %esi
	movq	%r14, %rdx
	callq	*56(%rdi)
.LBB13_11:                              # %for.cond.backedge.i
                                        #   in Loop: Header=BB13_9 Depth=1
	decq	%r15
	cmpq	$1, %r15
	jg	.LBB13_9
# BB#12:                                # %fn_scale_functions.exit
	movl	$.L.str.11, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_free_const_object
.LBB13_13:                              # %if.then.31
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	*56(%r13)
.LBB13_16:                              # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	fn_1ItSg_make_scaled, .Lfunc_end13-fn_1ItSg_make_scaled
	.cfi_endproc

	.align	16, 0x90
	.type	gs_function_1ItSg_serialize,@function
gs_function_1ItSg_serialize:            # @gs_function_1ItSg_serialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp97:
	.cfi_def_cfa_offset 48
.Ltmp98:
	.cfi_offset %rbx, -40
.Ltmp99:
	.cfi_offset %r12, -32
.Ltmp100:
	.cfi_offset %r14, -24
.Ltmp101:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	callq	fn_common_serialize
	testl	%eax, %eax
	js	.LBB14_9
# BB#1:                                 # %if.end
	addq	$72, %r12
	leaq	32(%r12), %r15
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	sputs
	testl	%eax, %eax
	js	.LBB14_9
# BB#2:                                 # %for.cond.preheader
	movl	(%r15), %ecx
	testl	%ecx, %ecx
	jle	.LBB14_7
# BB#3:                                 # %for.body.lr.ph
	movl	$1, %ebx
	.align	16, 0x90
.LBB14_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%r12), %rax
	movq	-8(%rax,%rbx,8), %rdi
	movq	%r14, %rsi
	callq	*64(%rdi)
	movl	32(%r12), %ecx
	testl	%eax, %eax
	js	.LBB14_6
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	movslq	%ecx, %rdx
	cmpq	%rdx, %rbx
	leaq	1(%rbx), %rbx
	jl	.LBB14_4
.LBB14_6:                               # %for.end
	testl	%eax, %eax
	js	.LBB14_9
.LBB14_7:                               # %if.end.15
	movq	48(%r12), %rsi
	leal	-4(,%rcx,4), %edx
	leaq	4(%rsp), %rcx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB14_9
# BB#8:                                 # %if.end.23
	movq	56(%r12), %rsi
	movl	32(%r12), %edx
	shll	$3, %edx
	leaq	4(%rsp), %rcx
	movq	%r14, %rdi
	callq	sputs
.LBB14_9:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	gs_function_1ItSg_serialize, .Lfunc_end14-gs_function_1ItSg_serialize
	.cfi_endproc

	.globl	gs_function_AdOt_free_params
	.align	16, 0x90
	.type	gs_function_AdOt_free_params,@function
gs_function_AdOt_free_params:           # @gs_function_AdOt_free_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp106:
	.cfi_def_cfa_offset 48
.Ltmp107:
	.cfi_offset %rbx, -40
.Ltmp108:
	.cfi_offset %r12, -32
.Ltmp109:
	.cfi_offset %r14, -24
.Ltmp110:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	32(%r14), %r12
	movslq	16(%r14), %rbx
	testq	%rbx, %rbx
	jle	.LBB15_5
# BB#1:                                 # %for.body.lr.ph.i
	incq	%rbx
	.align	16, 0x90
.LBB15_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%r12,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB15_4
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	$1, %esi
	movq	%r15, %rdx
	callq	*56(%rdi)
.LBB15_4:                               # %for.cond.backedge.i
                                        #   in Loop: Header=BB15_2 Depth=1
	decq	%rbx
	cmpq	$1, %rbx
	jg	.LBB15_2
.LBB15_5:                               # %fn_free_functions.exit
	movl	$.L.str.11, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	gs_free_const_object
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	fn_common_free_params   # TAILCALL
.Lfunc_end15:
	.size	gs_function_AdOt_free_params, .Lfunc_end15-gs_function_AdOt_free_params
	.cfi_endproc

	.globl	gs_function_AdOt_init
	.align	16, 0x90
	.type	gs_function_AdOt_init,@function
gs_function_AdOt_init:                  # @gs_function_AdOt_init
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
	pushq	%rax
.Ltmp117:
	.cfi_def_cfa_offset 64
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
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movslq	(%r13), %rbp
	testq	%rbp, %rbp
	movl	16(%r13), %r14d
	movq	$0, (%rdi)
	movl	$-15, %eax
	jle	.LBB16_12
# BB#1:                                 # %entry
	testl	%r14d, %r14d
	jle	.LBB16_12
# BB#2:                                 # %if.end
	movq	%rdi, (%rsp)            # 8-byte Spill
	movl	$st_function_AdOt, %esi
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r15
	leaq	(%rbp,%rbp), %r12
	movl	$4, %edx
	movl	$.L.str.7, %ecx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*88(%rbx)
	movq	%rbx, %rdx
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB16_12
# BB#3:                                 # %if.end.8
	movq	32(%r13), %rax
	movq	%rax, 104(%r15)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	%xmm1, 88(%r15)
	movups	%xmm0, 72(%r15)
	movq	%rbx, 80(%r15)
	movq	$0, 96(%r15)
	movq	gs_function_AdOt_init.function_AdOt_head+64(%rip), %rax
	movq	%rax, 64(%r15)
	movups	gs_function_AdOt_init.function_AdOt_head+48(%rip), %xmm0
	movups	%xmm0, 48(%r15)
	movups	gs_function_AdOt_init.function_AdOt_head+32(%rip), %xmm0
	movups	%xmm0, 32(%r15)
	movups	gs_function_AdOt_init.function_AdOt_head+16(%rip), %xmm0
	movups	%xmm0, 16(%r15)
	movups	gs_function_AdOt_init.function_AdOt_head(%rip), %xmm0
	movups	%xmm0, (%r15)
	testq	%rbx, %rbx
	je	.LBB16_4
# BB#5:                                 # %if.end.16
	movq	32(%r13), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rsi
	leaq	(,%rbp,8), %rdx
	movq	%rbx, %rdi
	callq	memcpy
	cmpl	$2, %r14d
	jl	.LBB16_11
# BB#6:                                 # %for.body.lr.ph
	movq	32(%r13), %rax
	movl	$1, %ecx
	.align	16, 0x90
.LBB16_7:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_9 Depth 2
	testl	%ebp, %ebp
	jle	.LBB16_10
# BB#8:                                 # %for.body.31.lr.ph
                                        #   in Loop: Header=BB16_7 Depth=1
	movq	(%rax,%rcx,8), %rdx
	movq	80(%rdx), %rdx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB16_9:                               # %for.body.31
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rbx,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	maxss	(%rdx,%rsi,4), %xmm0
	movss	%xmm0, (%rbx,%rsi,4)
	movss	4(%rbx,%rsi,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	minss	4(%rdx,%rsi,4), %xmm0
	movss	%xmm0, 4(%rbx,%rsi,4)
	addq	$2, %rsi
	cmpq	%r12, %rsi
	jl	.LBB16_9
.LBB16_10:                              # %for.end
                                        #   in Loop: Header=BB16_7 Depth=1
	incq	%rcx
	cmpl	%r14d, %ecx
	jne	.LBB16_7
.LBB16_11:                              # %for.end.60
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%r15, (%rax)
	xorl	%eax, %eax
	jmp	.LBB16_12
.LBB16_4:                               # %if.then.13
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*56(%r15)
	movl	$-25, %eax
.LBB16_12:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gs_function_AdOt_init, .Lfunc_end16-gs_function_AdOt_init
	.cfi_endproc

	.align	16, 0x90
	.type	fn_AdOt_evaluate,@function
fn_AdOt_evaluate:                       # @fn_AdOt_evaluate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp126:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp127:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp128:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp129:
	.cfi_def_cfa_offset 112
.Ltmp130:
	.cfi_offset %rbx, -48
.Ltmp131:
	.cfi_offset %r12, -40
.Ltmp132:
	.cfi_offset %r13, -32
.Ltmp133:
	.cfi_offset %r14, -24
.Ltmp134:
	.cfi_offset %r15, -16
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movslq	88(%r14), %rcx
	leaq	-4(%r13,%rcx,4), %rax
	cmpq	%r15, %rax
	jb	.LBB17_4
# BB#1:                                 # %land.lhs.true
	movslq	72(%r14), %rdx
	leaq	-4(%r15,%rdx,4), %rax
	cmpq	%r13, %rax
	jb	.LBB17_4
# BB#2:                                 # %if.then
	movl	$-15, %eax
	cmpl	$16, %edx
	jg	.LBB17_8
# BB#3:                                 # %if.end
	leaq	(%rsp), %r12
	shlq	$2, %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	88(%r14), %ecx
	movq	%r12, %r15
.LBB17_4:                               # %if.end.13
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB17_8
# BB#5:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB17_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	104(%r14), %rax
	movq	(%rax,%rbx,8), %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	*8(%rdi)
	testl	%eax, %eax
	js	.LBB17_8
# BB#6:                                 # %for.cond
                                        #   in Loop: Header=BB17_7 Depth=1
	incq	%rbx
	movslq	88(%r14), %rcx
	addq	$4, %r13
	xorl	%eax, %eax
	cmpq	%rcx, %rbx
	jl	.LBB17_7
.LBB17_8:                               # %cleanup.30
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end17:
	.size	fn_AdOt_evaluate, .Lfunc_end17-fn_AdOt_evaluate
	.cfi_endproc

	.align	16, 0x90
	.type	fn_AdOt_is_monotonic,@function
fn_AdOt_is_monotonic:                   # @fn_AdOt_is_monotonic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp137:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp138:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 48
.Ltmp140:
	.cfi_offset %rbx, -48
.Ltmp141:
	.cfi_offset %r12, -40
.Ltmp142:
	.cfi_offset %r13, -32
.Ltmp143:
	.cfi_offset %r14, -24
.Ltmp144:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r13
	cmpl	$0, 88(%r13)
	jle	.LBB18_1
# BB#4:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB18_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	104(%r13), %rax
	movq	(%rax,%rbx,8), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*16(%rdi)
	testl	%eax, %eax
	jle	.LBB18_6
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB18_5 Depth=1
	incq	%rbx
	movslq	88(%r13), %rax
	cmpq	%rax, %rbx
	jl	.LBB18_5
# BB#3:
	movl	$1, %eax
	jmp	.LBB18_6
.LBB18_1:
	movl	$1, %eax
.LBB18_6:                               # %cleanup.7
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	fn_AdOt_is_monotonic, .Lfunc_end18-fn_AdOt_is_monotonic
	.cfi_endproc

	.align	16, 0x90
	.type	fn_AdOt_get_info,@function
fn_AdOt_get_info:                       # @fn_AdOt_get_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp147:
	.cfi_def_cfa_offset 32
.Ltmp148:
	.cfi_offset %rbx, -24
.Ltmp149:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gs_function_get_info_default
	movq	104(%rbx), %rax
	movq	%rax, 16(%r14)
	movl	88(%rbx), %eax
	movl	%eax, 24(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end19:
	.size	fn_AdOt_get_info, .Lfunc_end19-fn_AdOt_get_info
	.cfi_endproc

	.align	16, 0x90
	.type	fn_AdOt_make_scaled,@function
fn_AdOt_make_scaled:                    # @fn_AdOt_make_scaled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp151:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp152:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp153:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp154:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp155:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp156:
	.cfi_def_cfa_offset 96
.Ltmp157:
	.cfi_offset %rbx, -56
.Ltmp158:
	.cfi_offset %r12, -48
.Ltmp159:
	.cfi_offset %r13, -40
.Ltmp160:
	.cfi_offset %r14, -32
.Ltmp161:
	.cfi_offset %r15, -24
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movl	$st_function_AdOt, %esi
	movl	$.L.str.14, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	movl	$-25, %r15d
	testq	%rbx, %rbx
	je	.LBB20_14
# BB#1:                                 # %if.end
	movups	72(%r13), %xmm0
	movups	88(%r13), %xmm1
	movups	%xmm1, 88(%rbx)
	movups	%xmm0, 72(%rbx)
	movq	$0, 104(%rbx)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	fn_common_scale
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB20_11
# BB#2:                                 # %lor.lhs.false
	movq	104(%r13), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	88(%r13), %r13d
	leaq	32(%rsp), %rsi
	movl	%r13d, %edi
	movq	%r12, %rdx
	callq	alloc_function_array
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB20_11
# BB#3:                                 # %for.cond.preheader.i
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	testl	%r13d, %r13d
	jle	.LBB20_13
# BB#4:                                 # %for.body.lr.ph.i
	movslq	%r13d, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB20_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(,%rbx,8), %rsi
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbx,8), %rdi
	addq	32(%rsp), %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	*40(%rdi)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB20_6
# BB#12:                                # %for.inc.i
                                        #   in Loop: Header=BB20_5 Depth=1
	addq	$8, %r14
	incq	%rbx
	cmpq	%rbp, %rbx
	jl	.LBB20_5
.LBB20_13:                              # %if.end.14
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 104(%rcx)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rcx, (%rax)
	xorl	%r15d, %r15d
	jmp	.LBB20_14
.LBB20_6:                               # %for.body.lr.ph.i.18
	movq	32(%rsp), %rbx
	incq	%rbp
	.align	16, 0x90
.LBB20_7:                               # %for.body.i.22
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbx,%rbp,8), %rdi
	testq	%rdi, %rdi
	je	.LBB20_9
# BB#8:                                 # %if.then.i
                                        #   in Loop: Header=BB20_7 Depth=1
	movl	$1, %esi
	movq	%r12, %rdx
	callq	*56(%rdi)
.LBB20_9:                               # %for.cond.backedge.i
                                        #   in Loop: Header=BB20_7 Depth=1
	decq	%rbp
	cmpq	$1, %rbp
	jg	.LBB20_7
# BB#10:                                # %fn_scale_functions.exit
	movl	$.L.str.11, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	gs_free_const_object
	movq	16(%rsp), %rbx          # 8-byte Reload
.LBB20_11:                              # %if.then.12
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	*56(%rbx)
.LBB20_14:                              # %cleanup
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	fn_AdOt_make_scaled, .Lfunc_end20-fn_AdOt_make_scaled
	.cfi_endproc

	.align	16, 0x90
	.type	gs_function_AdOt_serialize,@function
gs_function_AdOt_serialize:             # @gs_function_AdOt_serialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp163:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp165:
	.cfi_def_cfa_offset 32
.Ltmp166:
	.cfi_offset %rbx, -32
.Ltmp167:
	.cfi_offset %r14, -24
.Ltmp168:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	fn_common_serialize
	testl	%eax, %eax
	js	.LBB21_5
# BB#1:                                 # %for.cond.preheader
	cmpl	$0, 88(%r15)
	jle	.LBB21_5
# BB#2:                                 # %for.body.lr.ph
	movl	$1, %ebx
	.align	16, 0x90
.LBB21_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	104(%r15), %rax
	movq	-8(%rax,%rbx,8), %rdi
	movq	%r14, %rsi
	callq	*64(%rdi)
	testl	%eax, %eax
	js	.LBB21_5
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB21_3 Depth=1
	movslq	88(%r15), %rcx
	cmpq	%rcx, %rbx
	leaq	1(%rbx), %rbx
	jl	.LBB21_3
.LBB21_5:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	gs_function_AdOt_serialize, .Lfunc_end21-gs_function_AdOt_serialize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"C1"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"C0"
	.size	.L.str.1, 3

	.type	gs_function_ElIn_init.function_ElIn_head,@object # @gs_function_ElIn_init.function_ElIn_head
	.section	.rodata,"a",@progbits
	.align	8
gs_function_ElIn_init.function_ElIn_head:
	.long	2                       # 0x2
	.zero	4
	.quad	fn_ElIn_evaluate
	.quad	fn_ElIn_is_monotonic
	.quad	gs_function_get_info_default
	.quad	fn_ElIn_get_params
	.quad	fn_ElIn_make_scaled
	.quad	gs_function_ElIn_free_params
	.quad	fn_common_free
	.quad	gs_function_ElIn_serialize
	.size	gs_function_ElIn_init.function_ElIn_head, 72

	.type	st_function_ElIn,@object # @st_function_ElIn
	.align	8
st_function_ElIn:
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	function_ElIn_reloc_ptrs
	.size	st_function_ElIn, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_function_ElIn_init"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Encode"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Bounds"
	.size	.L.str.4, 7

	.type	gs_function_1ItSg_init.function_1ItSg_head,@object # @gs_function_1ItSg_init.function_1ItSg_head
	.section	.rodata,"a",@progbits
	.align	8
gs_function_1ItSg_init.function_1ItSg_head:
	.long	3                       # 0x3
	.zero	4
	.quad	fn_1ItSg_evaluate
	.quad	fn_1ItSg_is_monotonic
	.quad	fn_1ItSg_get_info
	.quad	fn_1ItSg_get_params
	.quad	fn_1ItSg_make_scaled
	.quad	gs_function_1ItSg_free_params
	.quad	fn_common_free
	.quad	gs_function_1ItSg_serialize
	.size	gs_function_1ItSg_init.function_1ItSg_head, 72

	.type	st_function_1ItSg,@object # @st_function_1ItSg
	.align	8
st_function_1ItSg:
	.long	136                     # 0x88
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	function_1ItSg_reloc_ptrs
	.size	st_function_1ItSg, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"gs_function_1ItSg_init"
	.size	.L.str.5, 23

	.type	gs_function_AdOt_init.function_AdOt_head,@object # @gs_function_AdOt_init.function_AdOt_head
	.section	.rodata,"a",@progbits
	.align	8
gs_function_AdOt_init.function_AdOt_head:
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	fn_AdOt_evaluate
	.quad	fn_AdOt_is_monotonic
	.quad	fn_AdOt_get_info
	.quad	fn_common_get_params
	.quad	fn_AdOt_make_scaled
	.quad	gs_function_AdOt_free_params
	.quad	fn_common_free
	.quad	gs_function_AdOt_serialize
	.size	gs_function_AdOt_init.function_AdOt_head, 72

	.type	st_function_AdOt,@object # @st_function_AdOt
	.align	8
st_function_AdOt:
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	function_AdOt_reloc_ptrs
	.size	st_function_AdOt, 64

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"gs_function_AdOt_init"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gs_function_AdOt_init(Domain)"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"N"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"fn_ElIn_make_scaled"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gs_function_ElIn_t"
	.size	.L.str.10, 19

	.type	function_ElIn_reloc_ptrs,@object # @function_ElIn_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
function_ElIn_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	st_function
	.quad	function_ElIn_enum_ptrs
	.size	function_ElIn_reloc_ptrs, 24

	.type	function_ElIn_enum_ptrs,@object # @function_ElIn_enum_ptrs
	.align	2
function_ElIn_enum_ptrs:
	.short	0                       # 0x0
	.short	104                     # 0x68
	.short	0                       # 0x0
	.short	112                     # 0x70
	.size	function_ElIn_enum_ptrs, 8

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"Functions"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"fn_1ItSg_make_scaled"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gs_function_1ItSg_t"
	.size	.L.str.13, 20

	.type	function_1ItSg_reloc_ptrs,@object # @function_1ItSg_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
function_1ItSg_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	st_function
	.quad	function_1ItSg_enum_ptrs
	.size	function_1ItSg_reloc_ptrs, 24

	.type	function_1ItSg_enum_ptrs,@object # @function_1ItSg_enum_ptrs
	.align	2
function_1ItSg_enum_ptrs:
	.short	0                       # 0x0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.short	120                     # 0x78
	.short	0                       # 0x0
	.short	128                     # 0x80
	.size	function_1ItSg_enum_ptrs, 12

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"fn_AdOt_make_scaled"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gs_function_AdOt_t"
	.size	.L.str.15, 19

	.type	function_AdOt_reloc_ptrs,@object # @function_AdOt_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
function_AdOt_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_function
	.quad	function_AdOt_enum_ptrs
	.size	function_AdOt_reloc_ptrs, 24

	.type	function_AdOt_enum_ptrs,@object # @function_AdOt_enum_ptrs
	.align	2
function_AdOt_enum_ptrs:
	.short	0                       # 0x0
	.short	104                     # 0x68
	.size	function_AdOt_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
