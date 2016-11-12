	.text
	.file	"gscolor3.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_1:
	.long	1065353216              # float 1
	.text
	.globl	gs_setsmoothness
	.align	16, 0x90
	.type	gs_setsmoothness,@function
gs_setsmoothness:                       # @gs_setsmoothness
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	ucomisd	%xmm0, %xmm2
	ja	.LBB0_4
# BB#1:                                 # %cond.false
	ucomisd	.LCPI0_0(%rip), %xmm0
	ja	.LBB0_2
# BB#3:                                 # %cond.false
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	jmp	.LBB0_4
.LBB0_2:
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
.LBB0_4:                                # %cond.end.4
	movss	%xmm1, 320(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gs_setsmoothness, .Lfunc_end0-gs_setsmoothness
	.cfi_endproc

	.globl	gs_currentsmoothness
	.align	16, 0x90
	.type	gs_currentsmoothness,@function
gs_currentsmoothness:                   # @gs_currentsmoothness
	.cfi_startproc
# BB#0:                                 # %entry
	movss	320(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end1:
	.size	gs_currentsmoothness, .Lfunc_end1-gs_currentsmoothness
	.cfi_endproc

	.globl	gs_shfill
	.align	16, 0x90
	.type	gs_shfill,@function
gs_shfill:                              # @gs_shfill
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$1128, %rsp             # imm = 0x468
.Ltmp4:
	.cfi_def_cfa_offset 1168
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	16(%rbx), %rsi
	callq	gs_setcolorspace
	xorl	%ebp, %ebp
	testl	%eax, %eax
	js	.LBB2_13
# BB#1:                                 # %if.end
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_3
# BB#2:                                 # %if.then.3
	movq	%rax, 1008(%r15)
	incq	24(%rax)
.LBB2_3:                                # %if.end.17
	leaq	1080(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_pattern2_init
	movq	%rbx, 1120(%rsp)
	leaq	1056(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_make_identity
	movq	8(%r15), %r8
	leaq	792(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	gs_make_pattern
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_13
# BB#4:                                 # %if.end.21
	leaq	792(%rsp), %rdi
	callq	gs_pattern2_set_shfill
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_13
# BB#5:                                 # %if.end.25
	movq	8(%r15), %rdi
	movl	$gs_color_space_type_Pattern, %esi
	callq	gs_cspace_alloc
	movq	%rax, %r14
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB2_13
# BB#6:                                 # %if.end.30
	movl	$0, 72(%r14)
	movq	(%r14), %rax
	movq	1872(%r15), %r8
	leaq	792(%rsp), %rdi
	leaq	136(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	*72(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_12
# BB#7:                                 # %if.then.34
	movq	1872(%r15), %rdi
	movl	$6, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*1664(%rdi)
	testl	%eax, %eax
	je	.LBB2_8
# BB#11:                                # %if.else
	movl	300(%r15), %r8d
	movl	304(%r15), %r9d
	leaq	136(%rsp), %rsi
	xorl	%edi, %edi
	movl	$-1, %ecx
	movq	%r15, %rdx
	callq	gx_fill_path
	movl	%eax, %ebp
	jmp	.LBB2_12
.LBB2_8:                                # %if.then.39
	movq	8(%r15), %rdx
	leaq	8(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_path_init_local_shared
	movq	1688(%r15), %rdi
	movq	%rbx, %rsi
	callq	gx_cpath_to_path
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_10
# BB#9:                                 # %if.then.44
	movl	300(%r15), %r8d
	movl	304(%r15), %r9d
	leaq	8(%rsp), %rdi
	leaq	136(%rsp), %rsi
	movl	$-1, %ecx
	movq	%r15, %rdx
	callq	gx_fill_path
	movl	%eax, %ebp
.LBB2_10:                               # %if.end.47
	leaq	8(%rsp), %rdi
	movl	$.L.str, %esi
	callq	gx_path_free
.LBB2_12:                               # %if.end.54
	movl	$.L.str, %esi
	movq	%r14, %rdi
	callq	rc_decrement_cs
	leaq	792(%rsp), %rdi
	movl	$-1, %esi
	callq	gs_pattern_reference
.LBB2_13:                               # %cleanup
	movl	%ebp, %eax
	addq	$1128, %rsp             # imm = 0x468
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_shfill, .Lfunc_end2-gs_shfill
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_shfill"
	.size	.L.str, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
