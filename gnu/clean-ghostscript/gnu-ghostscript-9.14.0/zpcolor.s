	.text
	.file	"zpcolor.bc"
	.globl	int_pattern_alloc
	.align	16, 0x90
	.type	int_pattern_alloc,@function
int_pattern_alloc:                      # @int_pattern_alloc
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
	movq	%rdx, %rax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$st_int_pattern, %esi
	movl	$.L.str, %edx
	movq	%rax, %rdi
	callq	*72(%rax)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB0_2
# BB#1:                                 # %if.end
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, (%r14)
	xorl	%ecx, %ecx
.LBB0_2:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	int_pattern_alloc, .Lfunc_end0-int_pattern_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildpattern1,@function
zbuildpattern1:                         # @zbuildpattern1
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
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 48
	subq	$432, %rsp              # imm = 0x1B0
.Ltmp10:
	.cfi_def_cfa_offset 480
.Ltmp11:
	.cfi_offset %rbx, -48
.Ltmp12:
	.cfi_offset %r12, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	8(%rbx), %rdi
	leaq	408(%rsp), %rdx
	movq	%r14, %rsi
	callq	read_matrix
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_31
# BB#1:                                 # %if.end
	leaq	-16(%r14), %r15
	movzbl	1(%r15), %eax
	cmpl	$2, %eax
	jne	.LBB1_2
# BB#3:                                 # %do.body
	movq	-8(%r14), %rax
	movl	$-7, %ebp
	testb	$32, (%rax)
	je	.LBB1_31
# BB#4:                                 # %do.end
	leaq	280(%rsp), %rdi
	callq	gs_pattern1_init
	leaq	296(%rsp), %rsi
	movq	8(%rbx), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %r8
	callq	dict_uid_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_31
# BB#5:                                 # %if.end.17
	cmpl	$1, %ebp
	jne	.LBB1_6
# BB#7:                                 # %if.end.21
	leaq	320(%rsp), %r9
	movl	$.L.str.5, %esi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_31
# BB#8:                                 # %if.end.26
	leaq	324(%rsp), %r9
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_31
# BB#9:                                 # %if.end.31
	leaq	328(%rsp), %rcx
	movl	$.L.str.7, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	dict_bool_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_31
# BB#10:                                # %if.end.36
	movq	8(%rbx), %rdi
	leaq	384(%rsp), %r8
	movl	$.L.str.8, %edx
	movl	$4, %ecx
	xorl	%r9d, %r9d
	movq	%r15, %rsi
	callq	dict_floats_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_31
# BB#11:                                # %if.end.43
	je	.LBB1_12
# BB#13:                                # %if.end.47
	leaq	368(%rsp), %rdx
	movl	$.L.str.9, %esi
	xorps	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	dict_float_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_31
# BB#14:                                # %if.end.52
	cmpl	$1, %ebp
	jne	.LBB1_16
# BB#15:
	movl	$-21, %ebp
	jmp	.LBB1_31
.LBB1_2:                                # %if.then.3
	movq	%r15, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
.LBB1_31:                               # %cleanup
	movl	%ebp, %eax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_6:
	movl	$-15, %ebp
	jmp	.LBB1_31
.LBB1_12:
	movl	$-21, %ebp
	jmp	.LBB1_31
.LBB1_16:                               # %if.end.56
	leaq	372(%rsp), %rdx
	movl	$.L.str.10, %esi
	xorps	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	dict_float_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_31
# BB#17:                                # %if.end.61
	cmpl	$1, %ebp
	jne	.LBB1_19
# BB#18:
	movl	$-21, %ebp
	jmp	.LBB1_31
.LBB1_19:                               # %if.end.65
	leaq	8(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_31
# BB#20:                                # %if.end.70
	movl	$-21, %ebp
	je	.LBB1_31
# BB#21:                                # %do.body.75
	movq	8(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB1_22
# BB#23:                                # %do.end.86
	movq	408(%rsp), %xmm0        # xmm0 = mem[0],zero
	movss	416(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	420(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	mulps	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movl	$-23, %ebp
	ucomiss	%xmm0, %xmm2
	jne	.LBB1_24
	jnp	.LBB1_31
.LBB1_24:                               # %if.end.91
	movss	384(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	392(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB1_25
# BB#26:                                # %lor.lhs.false
	movss	388(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	396(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm3
	movl	$-15, %ebp
	jae	.LBB1_31
# BB#27:                                # %if.end.101
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	cvtps2pd	%xmm1, %xmm1
	movups	%xmm1, 336(%rsp)
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	cvtps2pd	%xmm0, %xmm0
	movups	%xmm0, 352(%rsp)
	movq	$zPaintProc, 376(%rsp)
	movq	8(%rbx), %rdi
	movl	$st_int_pattern, %esi
	movl	$.L.str, %edx
	callq	*72(%rdi)
	movq	%rax, %r12
	movl	$-25, %ebp
	testq	%r12, %r12
	je	.LBB1_31
# BB#28:                                # %if.end.125
	movups	(%r15), %xmm0
	movups	%xmm0, (%r12)
	movq	%r12, 312(%rsp)
	movq	(%rbx), %rcx
	movq	8(%rbx), %r8
	leaq	16(%rsp), %rdi
	leaq	280(%rsp), %rsi
	leaq	408(%rsp), %rdx
	callq	gs_makepattern
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_29
# BB#30:                                # %if.end.136
	movq	16(%rsp), %rax
	movq	%rax, 8(%r14)
	movl	56(%rbx), %eax
	orl	$96, %eax
	addl	$2048, %eax             # imm = 0x800
	movw	%ax, (%r14)
	jmp	.LBB1_31
.LBB1_22:                               # %if.then.82
	callq	check_proc_failed
	movl	%eax, %ebp
	jmp	.LBB1_31
.LBB1_25:
	movl	$-15, %ebp
	jmp	.LBB1_31
.LBB1_29:                               # %if.then.131
	movq	8(%rbx), %rdi
	movl	$.L.str, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	jmp	.LBB1_31
.Lfunc_end1:
	.size	zbuildpattern1, .Lfunc_end1-zbuildpattern1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	pattern_paint_prepare,@function
pattern_paint_prepare:                  # @pattern_paint_prepare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp20:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 160
.Ltmp23:
	.cfi_offset %rbx, -56
.Ltmp24:
	.cfi_offset %r12, -48
.Ltmp25:
	.cfi_offset %r13, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rbx), %r15
	movq	%r15, %rdi
	callq	gs_currentcolor
	movq	(%rax), %r12
	movq	80(%r12), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	(%rbx), %rax
	movq	1872(%rax), %r13
	movq	536(%rbx), %rax
	addq	$-96, %rax
	cmpq	%rax, 520(%rbx)
	jbe	.LBB2_2
# BB#1:                                 # %if.then
	leaq	520(%rbx), %rdi
	movl	$6, %esi
	callq	ref_stack_extend
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_24
.LBB2_2:                                # %if.end.10
	cmpl	$0, 316(%r15)
	je	.LBB2_5
# BB#3:                                 # %if.then.11
	movl	240(%r12), %ecx
	xorl	%esi, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*1664(%r13)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_24
# BB#4:                                 # %if.end.19
	je	.LBB2_5
# BB#9:                                 # %if.else
	movq	(%rbx), %rdi
	movzwl	108(%r13), %edx
	movq	%r12, %rsi
	callq	gx_pattern_cache_add_dummy_entry
	movl	%eax, %r14d
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	movl	$0, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jns	.LBB2_10
	jmp	.LBB2_24
.LBB2_5:                                # %if.then.21
	movq	%r15, %rdi
	callq	gstate_pattern_cache
	movq	(%rax), %rsi
	movq	8(%rbx), %rdi
	movl	$.L.str.12, %ecx
	movq	%r12, %rdx
	callq	gx_pattern_accum_alloc
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB2_24
# BB#6:                                 # %if.end.28
	movq	%rax, %rbp
	movq	%rbp, %rdi
	callq	*1144(%rbp)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_8
# BB#7:
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movb	$1, %bpl
.LBB2_10:                               # %if.end.50
	movq	%r15, %rdi
	callq	gs_gsave
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_24
# BB#11:                                # %if.end.55
	movq	32(%r12), %rsi
	movq	%r15, %rdi
	callq	gs_setgstate
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_23
# BB#12:                                # %if.end.61
	testb	%bpl, %bpl
	je	.LBB2_20
# BB#13:                                # %if.then.63
	movq	%r15, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	gs_setdevice_no_init
	cmpl	$0, 96(%r12)
	je	.LBB2_15
# BB#14:                                # %do.end
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gs_push_pdf14trans_device
.LBB2_18:                               # %if.then.78
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB2_19
	jmp	.LBB2_24
.LBB2_8:                                # %if.then.33
	movq	8(%rbx), %rdi
	movl	$.L.str.12, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	jmp	.LBB2_24
.LBB2_20:                               # %if.else.86
	movq	1872(%r15), %rdi
	leaq	72(%rsp), %r14
	movq	%r14, %rsi
	callq	*1152(%rdi)
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	gs_setmatrix
	leaq	104(%r12), %rdi
	leaq	132(%r15), %rsi
	leaq	40(%rsp), %rdx
	callq	gs_bbox_transform
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_23
# BB#21:                                # %if.end.98
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 24(%rsp)
	movsd	48(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 28(%rsp)
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 32(%rsp)
	mulsd	64(%rsp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 36(%rsp)
	movq	(%rbx), %rdi
	leaq	24(%rsp), %rsi
	callq	gx_clip_to_rectangle
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_23
# BB#22:                                # %if.end.125
	movl	240(%r12), %ecx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*1664(%r13)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB2_19
.LBB2_23:                               # %if.then.133
	movq	%r15, %rdi
	callq	gs_grestore
	jmp	.LBB2_24
.LBB2_15:                               # %if.else.73
	cmpl	$1, 88(%r12)
	jne	.LBB2_19
# BB#16:                                # %land.lhs.true
	cmpl	$0, 224(%r12)
	je	.LBB2_17
.LBB2_19:                               # %if.end.141
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$pattern_paint_cleanup, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rcx, 24(%rax)
	movl	$2048, %eax             # imm = 0x800
	addl	56(%rbx), %eax
	movq	520(%rbx), %rcx
	movw	%ax, (%rcx)
	addq	$16, %rcx
	movq	%rcx, 520(%rbx)
	leaq	624(%rbx), %rdi
	callq	ref_stack_count
	movl	%eax, %eax
	movq	520(%rbx), %rcx
	movq	%rax, 8(%rcx)
	movw	$2816, (%rcx)           # imm = 0xB00
	leaq	16(%rcx), %rax
	movq	%rax, 520(%rbx)
	movq	$pattern_paint_finish, 24(%rcx)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	96(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	dict_find_string
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	96(%rsp), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, 16(%rax)
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movupd	(%rbp), %xmm0
	movupd	%xmm0, 16(%rax)
	movl	$5, %r14d
.LBB2_24:                               # %cleanup.214
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_17:                               # %if.then.78
	movq	%r15, %rdi
	callq	gx_erase_colored_pattern
	jmp	.LBB2_18
.Lfunc_end2:
	.size	pattern_paint_prepare, .Lfunc_end2-pattern_paint_prepare
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_paint_finish,@function
pattern_paint_finish:                   # @pattern_paint_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 64
.Ltmp35:
	.cfi_offset %rbx, -48
.Ltmp36:
	.cfi_offset %r12, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	624(%rbx), %r14
	movq	%r14, %rdi
	callq	ref_stack_count
	movl	%eax, %ebp
	movq	520(%rbx), %rax
	subq	8(%rax), %rbp
	movq	-8(%rax), %r15
	movq	(%rbx), %rax
	movq	1616(%rax), %rdi
	callq	gs_currentcolor
	testq	%r15, %r15
	je	.LBB3_6
# BB#1:                                 # %if.then
	movq	(%rax), %rax
	cmpl	$0, 96(%rax)
	je	.LBB3_5
# BB#2:                                 # %if.then.9
	movq	(%rbx), %rdi
	cmpl	$0, 224(%rax)
	je	.LBB3_4
# BB#3:                                 # %if.then.14
	movl	$1, %esi
	callq	gs_pop_pdf14trans_device
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	movq	1872(%rdi), %rax
	movq	1768(%r15), %rsi
	movq	8(%rdi), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	callq	pdf14_get_buffer_information
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB3_12
.LBB3_5:                                # %if.end.28
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rdx
	movq	%r15, %rsi
	callq	gx_pattern_cache_add_entry
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB3_12
.LBB3_6:                                # %if.end.39
	testl	%ebp, %ebp
	jle	.LBB3_8
# BB#7:                                 # %if.then.42
	shlq	$32, %rbp
	sarq	$28, %rbp
	subq	%rbp, (%r14)
.LBB3_8:                                # %if.end.47
	movq	520(%rbx), %rax
	leaq	-48(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	-8(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB3_10
# BB#9:                                 # %if.then.i
	movq	%rbp, %rdi
	callq	*1176(%rbp)
.LBB3_10:                               # %if.end.i
	movq	(%rbx), %rdi
	callq	gs_grestore
	movq	(%rbx), %rax
	movq	1760(%rax), %rcx
	movq	$gx_dc_type_data_none, (%rcx)
	movl	$14, %r12d
	testq	%rbp, %rbp
	jne	.LBB3_12
# BB#11:                                # %if.then.4.i
	movq	1872(%rax), %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*1664(%rdi)
.LBB3_12:                               # %cleanup.53
	movl	%r12d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pattern_paint_finish, .Lfunc_end3-pattern_paint_finish
	.cfi_endproc

	.align	16, 0x90
	.type	zpcolor_init,@function
zpcolor_init:                           # @zpcolor_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	32(%r14), %rbx
	callq	gx_pat_cache_default_tiles
	movl	%eax, %ebp
	callq	gx_pat_cache_default_bits
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%rax, %rdx
	callq	gx_pattern_alloc_cache
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB4_2
# BB#1:                                 # %if.end
	movq	(%r14), %rdi
	movq	%rax, %rsi
	callq	gstate_set_pattern_cache
	xorl	%ecx, %ecx
.LBB4_2:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	zpcolor_init, .Lfunc_end4-zpcolor_init
	.cfi_endproc

	.align	16, 0x90
	.type	zPaintProc,@function
zPaintProc:                             # @zPaintProc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rsi), %rax
	movq	536(%rax), %rax
	movq	$pattern_paint_prepare, (%rax)
	movl	$-103, %eax
	retq
.Lfunc_end5:
	.size	zPaintProc, .Lfunc_end5-zPaintProc
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_paint_cleanup,@function
pattern_paint_cleanup:                  # @pattern_paint_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 32
.Ltmp49:
	.cfi_offset %rbx, -32
.Ltmp50:
	.cfi_offset %r14, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movq	520(%rbp), %rax
	movq	40(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*1176(%rbx)
.LBB6_2:                                # %if.end
	movq	(%rbp), %rdi
	callq	gs_grestore
	movl	%eax, %r14d
	movq	(%rbp), %rax
	movq	1760(%rax), %rcx
	movq	$gx_dc_type_data_none, (%rcx)
	testq	%rbx, %rbx
	jne	.LBB6_4
# BB#3:                                 # %if.then.4
	movq	1872(%rax), %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*1664(%rdi)
	testl	%eax, %eax
	cmovnsl	%r14d, %eax
	testl	%r14d, %r14d
	cmovel	%eax, %r14d
.LBB6_4:                                # %if.end.12
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pattern_paint_cleanup, .Lfunc_end6-pattern_paint_cleanup
	.cfi_endproc

	.type	st_int_pattern,@object  # @st_int_pattern
	.section	.rodata,"a",@progbits
	.align	8
st_int_pattern:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	ref_struct_clear_marks
	.quad	ref_struct_enum_ptrs
	.quad	ref_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_int_pattern, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"int_pattern"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"level2dict"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2.buildpattern1"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0%pattern_paint_prepare"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0%pattern_paint_finish"
	.size	.L.str.4, 23

	.type	zpcolor_l2_op_defs,@object # @zpcolor_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zpcolor_l2_op_defs
	.align	16
zpcolor_l2_op_defs:
	.quad	.L.str.1
	.quad	0
	.quad	.L.str.2
	.quad	zbuildpattern1
	.quad	.L.str.3
	.quad	pattern_paint_prepare
	.quad	.L.str.4
	.quad	pattern_paint_finish
	.quad	0
	.quad	zpcolor_init
	.size	zpcolor_l2_op_defs, 80

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"PaintType"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"TilingType"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	".pattern_uses_transparency"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"BBox"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"XStep"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"YStep"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"PaintProc"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"pattern_paint_prepare"
	.size	.L.str.12, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
