	.text
	.file	"gsshade.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.globl	gs_shading_Fb_params_init
	.align	16, 0x90
	.type	gs_shading_Fb_params_init,@function
gs_shading_Fb_params_init:              # @gs_shading_Fb_params_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movl	$0, 24(%rbx)
	movl	$0, 64(%rbx)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0.000000e+00,1.000000e+00,0.000000e+00,1.000000e+00]
	movups	%xmm0, 68(%rbx)
	leaq	84(%rbx), %rdi
	callq	gs_make_identity
	movq	$0, 112(%rbx)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gs_shading_Fb_params_init, .Lfunc_end0-gs_shading_Fb_params_init
	.cfi_endproc

	.globl	gs_shading_Fb_init
	.align	16, 0x90
	.type	gs_shading_Fb_init,@function
gs_shading_Fb_init:                     # @gs_shading_Fb_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 64
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r12, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rdi
	movq	112(%rbx), %r12
	callq	gs_color_space_num_components
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	js	.LBB1_10
# BB#1:                                 # %lor.lhs.false.i
	cmpl	$0, 24(%rbx)
	je	.LBB1_4
# BB#2:                                 # %land.lhs.true.i
	movsd	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	48(%rbx), %xmm0
	ja	.LBB1_10
# BB#3:                                 # %lor.lhs.false.4.i
	movsd	40(%rbx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	56(%rbx), %xmm0
	ja	.LBB1_10
.LBB1_4:                                # %if.end.i
	testq	%r12, %r12
	je	.LBB1_7
# BB#5:                                 # %if.then.12.i
	cmpl	$2, 72(%r12)
	jne	.LBB1_10
# BB#6:                                 # %lor.lhs.false.16.i
	cmpl	%ecx, 88(%r12)
	jne	.LBB1_10
.LBB1_7:                                # %lor.lhs.false
	leaq	84(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gs_matrix_invert
	testl	%eax, %eax
	js	.LBB1_10
# BB#8:                                 # %do.body
	movl	$st_shading_Fb, %esi
	movl	$.L.str, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB1_10
# BB#9:                                 # %if.end.6
	movl	$1, (%rcx)
	movq	$gs_shading_Fb_fill_rectangle, 8(%rcx)
	movq	112(%rbx), %rax
	movq	%rax, 128(%rcx)
	movups	96(%rbx), %xmm0
	movups	%xmm0, 112(%rcx)
	movups	80(%rbx), %xmm0
	movups	%xmm0, 96(%rcx)
	movups	64(%rbx), %xmm0
	movups	%xmm0, 80(%rcx)
	movupd	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movups	%xmm3, 64(%rcx)
	movups	%xmm2, 48(%rcx)
	movups	%xmm1, 32(%rcx)
	movupd	%xmm0, 16(%rcx)
	movq	%rcx, (%r14)
	xorl	%eax, %eax
.LBB1_10:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gs_shading_Fb_init, .Lfunc_end1-gs_shading_Fb_init
	.cfi_endproc

	.globl	gs_shading_A_params_init
	.align	16, 0x90
	.type	gs_shading_A_params_init,@function
gs_shading_A_params_init:               # @gs_shading_A_params_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movl	$0, 24(%rdi)
	movl	$0, 64(%rdi)
	movl	$0, 84(%rdi)
	movl	$1065353216, 88(%rdi)   # imm = 0x3F800000
	movq	$0, 96(%rdi)
	movl	$0, 108(%rdi)
	movl	$0, 104(%rdi)
	retq
.Lfunc_end2:
	.size	gs_shading_A_params_init, .Lfunc_end2-gs_shading_A_params_init
	.cfi_endproc

	.globl	gs_shading_A_init
	.align	16, 0x90
	.type	gs_shading_A_init,@function
gs_shading_A_init:                      # @gs_shading_A_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 48
.Ltmp16:
	.cfi_offset %rbx, -40
.Ltmp17:
	.cfi_offset %r12, -32
.Ltmp18:
	.cfi_offset %r14, -24
.Ltmp19:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rdi
	movq	96(%rbx), %r12
	callq	gs_color_space_num_components
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	js	.LBB3_9
# BB#1:                                 # %lor.lhs.false.i
	cmpl	$0, 24(%rbx)
	je	.LBB3_4
# BB#2:                                 # %land.lhs.true.i
	movsd	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	48(%rbx), %xmm0
	ja	.LBB3_9
# BB#3:                                 # %lor.lhs.false.4.i
	movsd	40(%rbx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	56(%rbx), %xmm0
	ja	.LBB3_9
.LBB3_4:                                # %if.end.i
	testq	%r12, %r12
	je	.LBB3_7
# BB#5:                                 # %if.then.12.i
	cmpl	$1, 72(%r12)
	jne	.LBB3_9
# BB#6:                                 # %lor.lhs.false.16.i
	cmpl	%ecx, 88(%r12)
	jne	.LBB3_9
.LBB3_7:                                # %do.body
	movl	$st_shading_A, %esi
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB3_9
# BB#8:                                 # %if.end.4
	movl	$2, (%rcx)
	movq	$gs_shading_A_fill_rectangle, 8(%rcx)
	movups	96(%rbx), %xmm0
	movups	%xmm0, 112(%rcx)
	movups	80(%rbx), %xmm0
	movups	%xmm0, 96(%rcx)
	movups	64(%rbx), %xmm0
	movups	%xmm0, 80(%rcx)
	movupd	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movups	%xmm3, 64(%rcx)
	movups	%xmm2, 48(%rcx)
	movups	%xmm1, 32(%rcx)
	movupd	%xmm0, 16(%rcx)
	movq	%rcx, (%r14)
	xorl	%eax, %eax
.LBB3_9:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	gs_shading_A_init, .Lfunc_end3-gs_shading_A_init
	.cfi_endproc

	.globl	gs_shading_R_params_init
	.align	16, 0x90
	.type	gs_shading_R_params_init,@function
gs_shading_R_params_init:               # @gs_shading_R_params_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movl	$0, 24(%rdi)
	movl	$0, 64(%rdi)
	movl	$0, 92(%rdi)
	movl	$1065353216, 96(%rdi)   # imm = 0x3F800000
	movq	$0, 104(%rdi)
	movl	$0, 116(%rdi)
	movl	$0, 112(%rdi)
	retq
.Lfunc_end4:
	.size	gs_shading_R_params_init, .Lfunc_end4-gs_shading_R_params_init
	.cfi_endproc

	.globl	gs_shading_R_init
	.align	16, 0x90
	.type	gs_shading_R_init,@function
gs_shading_R_init:                      # @gs_shading_R_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 48
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r12, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rdi
	movq	104(%rbx), %r12
	callq	gs_color_space_num_components
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	js	.LBB5_12
# BB#1:                                 # %lor.lhs.false.i
	cmpl	$0, 24(%rbx)
	je	.LBB5_4
# BB#2:                                 # %land.lhs.true.i
	movsd	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	48(%rbx), %xmm0
	ja	.LBB5_12
# BB#3:                                 # %lor.lhs.false.4.i
	movsd	40(%rbx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	56(%rbx), %xmm0
	ja	.LBB5_12
.LBB5_4:                                # %if.end.i
	testq	%r12, %r12
	je	.LBB5_7
# BB#5:                                 # %if.then.12.i
	cmpl	$1, 72(%r12)
	jne	.LBB5_12
# BB#6:                                 # %lor.lhs.false.16.i
	cmpl	%ecx, 88(%r12)
	jne	.LBB5_12
.LBB5_7:                                # %land.lhs.true
	movss	92(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	96(%rbx), %xmm0
	jne	.LBB5_8
	jnp	.LBB5_12
.LBB5_8:                                # %lor.lhs.false
	xorps	%xmm0, %xmm0
	ucomiss	76(%rbx), %xmm0
	ja	.LBB5_12
# BB#9:                                 # %lor.lhs.false.10
	ucomiss	88(%rbx), %xmm0
	ja	.LBB5_12
# BB#10:                                # %do.body
	movl	$st_shading_R, %esi
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB5_12
# BB#11:                                # %if.end.19
	movl	$3, (%rcx)
	movq	$gs_shading_R_fill_rectangle, 8(%rcx)
	movq	112(%rbx), %rax
	movq	%rax, 128(%rcx)
	movups	96(%rbx), %xmm0
	movups	%xmm0, 112(%rcx)
	movups	80(%rbx), %xmm0
	movups	%xmm0, 96(%rcx)
	movups	64(%rbx), %xmm0
	movups	%xmm0, 80(%rcx)
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movups	%xmm3, 64(%rcx)
	movups	%xmm2, 48(%rcx)
	movups	%xmm1, 32(%rcx)
	movups	%xmm0, 16(%rcx)
	movq	%rcx, (%r14)
	xorl	%eax, %eax
.LBB5_12:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	gs_shading_R_init, .Lfunc_end5-gs_shading_R_init
	.cfi_endproc

	.globl	gs_shading_FfGt_params_init
	.align	16, 0x90
	.type	gs_shading_FfGt_params_init,@function
gs_shading_FfGt_params_init:            # @gs_shading_FfGt_params_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movl	$0, 24(%rdi)
	movl	$0, 64(%rdi)
	movl	$2, 80(%rdi)
	movq	$0, 88(%rdi)
	movl	$0, 96(%rdi)
	movq	$data_source_access_bytes, 72(%rdi)
	movq	$0, 112(%rdi)
	movq	$0, 120(%rdi)
	retq
.Lfunc_end6:
	.size	gs_shading_FfGt_params_init, .Lfunc_end6-gs_shading_FfGt_params_init
	.cfi_endproc

	.globl	gs_shading_FfGt_init
	.align	16, 0x90
	.type	gs_shading_FfGt_init,@function
gs_shading_FfGt_init:                   # @gs_shading_FfGt_init
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
.Ltmp34:
	.cfi_offset %rbx, -48
.Ltmp35:
	.cfi_offset %r12, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	cmpl	$2, 80(%r12)
	je	.LBB7_5
# BB#1:                                 # %if.else.i
	movl	$-15, %eax
	movl	104(%r12), %ecx
	cmpq	$32, %rcx
	ja	.LBB7_13
# BB#2:                                 # %if.else.i
	movabsq	$4311814422, %rdx       # imm = 0x101011116
	btq	%rcx, %rdx
	jae	.LBB7_13
# BB#3:                                 # %sw.epilog.i
	movl	108(%r12), %ecx
	cmpl	$16, %ecx
	ja	.LBB7_13
# BB#4:                                 # %sw.epilog.i
	movl	$69910, %edx            # imm = 0x11116
	btl	%ecx, %edx
	jae	.LBB7_13
.LBB7_5:                                # %if.end.i
	movq	(%r12), %rdi
	movq	120(%r12), %rbx
	callq	gs_color_space_num_components
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	js	.LBB7_13
# BB#6:                                 # %lor.lhs.false.i.i
	cmpl	$0, 24(%r12)
	je	.LBB7_9
# BB#7:                                 # %land.lhs.true.i.i
	movsd	32(%r12), %xmm0         # xmm0 = mem[0],zero
	ucomisd	48(%r12), %xmm0
	ja	.LBB7_13
# BB#8:                                 # %lor.lhs.false.4.i.i
	movsd	40(%r12), %xmm0         # xmm0 = mem[0],zero
	ucomisd	56(%r12), %xmm0
	ja	.LBB7_13
.LBB7_9:                                # %if.end.i.i
	testq	%rbx, %rbx
	je	.LBB7_12
# BB#10:                                # %if.then.12.i.i
	cmpl	$1, 72(%rbx)
	jne	.LBB7_13
# BB#11:                                # %lor.lhs.false.16.i.i
	cmpl	%ecx, 88(%rbx)
	jne	.LBB7_13
.LBB7_12:                               # %if.end.21.i.i
	xorl	%eax, %eax
.LBB7_13:                               # %check_mesh.exit
	movl	$2, %ebp
	cmpl	$2, 80(%r12)
	je	.LBB7_16
# BB#14:                                # %if.end.i.18
	movl	128(%r12), %ecx
	addl	$-2, %ecx
	movl	$-15, %ebp
	cmpl	$6, %ecx
	ja	.LBB7_16
# BB#15:                                # %switch.lookup.i
	movslq	%ecx, %rcx
	movl	.Lswitch.table(,%rcx,4), %ebp
.LBB7_16:                               # %check_BPF.exit
	testl	%eax, %eax
	js	.LBB7_21
# BB#17:                                # %if.end
	testl	%ebp, %ebp
	js	.LBB7_18
# BB#19:                                # %do.body
	movl	$st_shading_FfGt, %esi
	movl	$.L.str.3, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB7_21
# BB#20:                                # %if.end.8
	movl	$4, (%rbx)
	movq	$gs_shading_FfGt_fill_rectangle, 8(%rbx)
	movq	%rbx, %rdi
	addq	$16, %rdi
	movl	$136, %edx
	movq	%r12, %rsi
	callq	memcpy
	movq	%rbx, (%r14)
	movl	%ebp, 144(%rbx)
	xorl	%eax, %eax
	jmp	.LBB7_21
.LBB7_18:
	movl	%ebp, %eax
.LBB7_21:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_shading_FfGt_init, .Lfunc_end7-gs_shading_FfGt_init
	.cfi_endproc

	.globl	gs_shading_LfGt_params_init
	.align	16, 0x90
	.type	gs_shading_LfGt_params_init,@function
gs_shading_LfGt_params_init:            # @gs_shading_LfGt_params_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movl	$0, 24(%rdi)
	movl	$0, 64(%rdi)
	movl	$2, 80(%rdi)
	movq	$0, 88(%rdi)
	movl	$0, 96(%rdi)
	movq	$data_source_access_bytes, 72(%rdi)
	movq	$0, 112(%rdi)
	movq	$0, 120(%rdi)
	retq
.Lfunc_end8:
	.size	gs_shading_LfGt_params_init, .Lfunc_end8-gs_shading_LfGt_params_init
	.cfi_endproc

	.globl	gs_shading_LfGt_init
	.align	16, 0x90
	.type	gs_shading_LfGt_init,@function
gs_shading_LfGt_init:                   # @gs_shading_LfGt_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -40
.Ltmp45:
	.cfi_offset %r12, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpl	$2, 80(%rbx)
	je	.LBB9_5
# BB#1:                                 # %if.else.i
	movl	$-15, %eax
	movl	104(%rbx), %ecx
	cmpq	$32, %rcx
	ja	.LBB9_15
# BB#2:                                 # %if.else.i
	movabsq	$4311814422, %rdx       # imm = 0x101011116
	btq	%rcx, %rdx
	jae	.LBB9_15
# BB#3:                                 # %sw.epilog.i
	movl	108(%rbx), %ecx
	cmpl	$16, %ecx
	ja	.LBB9_15
# BB#4:                                 # %sw.epilog.i
	movl	$69910, %edx            # imm = 0x11116
	btl	%ecx, %edx
	jae	.LBB9_15
.LBB9_5:                                # %if.end.i
	movq	(%rbx), %rdi
	movq	120(%rbx), %r12
	callq	gs_color_space_num_components
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	js	.LBB9_15
# BB#6:                                 # %lor.lhs.false.i.i
	cmpl	$0, 24(%rbx)
	je	.LBB9_9
# BB#7:                                 # %land.lhs.true.i.i
	movsd	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	48(%rbx), %xmm0
	ja	.LBB9_15
# BB#8:                                 # %lor.lhs.false.4.i.i
	movsd	40(%rbx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	56(%rbx), %xmm0
	ja	.LBB9_15
.LBB9_9:                                # %if.end.i.i
	testq	%r12, %r12
	je	.LBB9_12
# BB#10:                                # %if.then.12.i.i
	cmpl	$1, 72(%r12)
	jne	.LBB9_15
# BB#11:                                # %lor.lhs.false.16.i.i
	cmpl	%ecx, 88(%r12)
	jne	.LBB9_15
.LBB9_12:                               # %if.end
	cmpl	$2, 128(%rbx)
	jl	.LBB9_15
# BB#13:                                # %do.body
	movl	$st_shading_LfGt, %esi
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB9_15
# BB#14:                                # %if.end.7
	movl	$5, (%r15)
	movq	$gs_shading_LfGt_fill_rectangle, 8(%r15)
	movq	%r15, %rdi
	addq	$16, %rdi
	movl	$136, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r15, (%r14)
	xorl	%eax, %eax
.LBB9_15:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	gs_shading_LfGt_init, .Lfunc_end9-gs_shading_LfGt_init
	.cfi_endproc

	.globl	gs_shading_Cp_params_init
	.align	16, 0x90
	.type	gs_shading_Cp_params_init,@function
gs_shading_Cp_params_init:              # @gs_shading_Cp_params_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movl	$0, 24(%rdi)
	movl	$0, 64(%rdi)
	movl	$2, 80(%rdi)
	movq	$0, 88(%rdi)
	movl	$0, 96(%rdi)
	movq	$data_source_access_bytes, 72(%rdi)
	movq	$0, 112(%rdi)
	movq	$0, 120(%rdi)
	retq
.Lfunc_end10:
	.size	gs_shading_Cp_params_init, .Lfunc_end10-gs_shading_Cp_params_init
	.cfi_endproc

	.globl	gs_shading_Cp_init
	.align	16, 0x90
	.type	gs_shading_Cp_init,@function
gs_shading_Cp_init:                     # @gs_shading_Cp_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 48
.Ltmp53:
	.cfi_offset %rbx, -48
.Ltmp54:
	.cfi_offset %r12, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	cmpl	$2, 80(%r12)
	je	.LBB11_5
# BB#1:                                 # %if.else.i
	movl	$-15, %eax
	movl	104(%r12), %ecx
	cmpq	$32, %rcx
	ja	.LBB11_13
# BB#2:                                 # %if.else.i
	movabsq	$4311814422, %rdx       # imm = 0x101011116
	btq	%rcx, %rdx
	jae	.LBB11_13
# BB#3:                                 # %sw.epilog.i
	movl	108(%r12), %ecx
	cmpl	$16, %ecx
	ja	.LBB11_13
# BB#4:                                 # %sw.epilog.i
	movl	$69910, %edx            # imm = 0x11116
	btl	%ecx, %edx
	jae	.LBB11_13
.LBB11_5:                               # %if.end.i
	movq	(%r12), %rdi
	movq	120(%r12), %rbx
	callq	gs_color_space_num_components
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	js	.LBB11_13
# BB#6:                                 # %lor.lhs.false.i.i
	cmpl	$0, 24(%r12)
	je	.LBB11_9
# BB#7:                                 # %land.lhs.true.i.i
	movsd	32(%r12), %xmm0         # xmm0 = mem[0],zero
	ucomisd	48(%r12), %xmm0
	ja	.LBB11_13
# BB#8:                                 # %lor.lhs.false.4.i.i
	movsd	40(%r12), %xmm0         # xmm0 = mem[0],zero
	ucomisd	56(%r12), %xmm0
	ja	.LBB11_13
.LBB11_9:                               # %if.end.i.i
	testq	%rbx, %rbx
	je	.LBB11_12
# BB#10:                                # %if.then.12.i.i
	cmpl	$1, 72(%rbx)
	jne	.LBB11_13
# BB#11:                                # %lor.lhs.false.16.i.i
	cmpl	%ecx, 88(%rbx)
	jne	.LBB11_13
.LBB11_12:                              # %if.end.21.i.i
	xorl	%eax, %eax
.LBB11_13:                              # %check_mesh.exit
	movl	$2, %ebp
	cmpl	$2, 80(%r12)
	je	.LBB11_16
# BB#14:                                # %if.end.i.18
	movl	128(%r12), %ecx
	addl	$-2, %ecx
	movl	$-15, %ebp
	cmpl	$6, %ecx
	ja	.LBB11_16
# BB#15:                                # %switch.lookup.i
	movslq	%ecx, %rcx
	movl	.Lswitch.table(,%rcx,4), %ebp
.LBB11_16:                              # %check_BPF.exit
	testl	%eax, %eax
	js	.LBB11_21
# BB#17:                                # %if.end
	testl	%ebp, %ebp
	js	.LBB11_18
# BB#19:                                # %do.body
	movl	$st_shading_Cp, %esi
	movl	$.L.str.5, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB11_21
# BB#20:                                # %if.end.8
	movl	$6, (%rbx)
	movq	$gs_shading_Cp_fill_rectangle, 8(%rbx)
	movq	%rbx, %rdi
	addq	$16, %rdi
	movl	$136, %edx
	movq	%r12, %rsi
	callq	memcpy
	movq	%rbx, (%r14)
	movl	%ebp, 144(%rbx)
	xorl	%eax, %eax
	jmp	.LBB11_21
.LBB11_18:
	movl	%ebp, %eax
.LBB11_21:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gs_shading_Cp_init, .Lfunc_end11-gs_shading_Cp_init
	.cfi_endproc

	.globl	gs_shading_Tpp_params_init
	.align	16, 0x90
	.type	gs_shading_Tpp_params_init,@function
gs_shading_Tpp_params_init:             # @gs_shading_Tpp_params_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movl	$0, 24(%rdi)
	movl	$0, 64(%rdi)
	movl	$2, 80(%rdi)
	movq	$0, 88(%rdi)
	movl	$0, 96(%rdi)
	movq	$data_source_access_bytes, 72(%rdi)
	movq	$0, 112(%rdi)
	movq	$0, 120(%rdi)
	retq
.Lfunc_end12:
	.size	gs_shading_Tpp_params_init, .Lfunc_end12-gs_shading_Tpp_params_init
	.cfi_endproc

	.globl	gs_shading_Tpp_init
	.align	16, 0x90
	.type	gs_shading_Tpp_init,@function
gs_shading_Tpp_init:                    # @gs_shading_Tpp_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 48
.Ltmp63:
	.cfi_offset %rbx, -48
.Ltmp64:
	.cfi_offset %r12, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	cmpl	$2, 80(%r12)
	je	.LBB13_5
# BB#1:                                 # %if.else.i
	movl	$-15, %eax
	movl	104(%r12), %ecx
	cmpq	$32, %rcx
	ja	.LBB13_13
# BB#2:                                 # %if.else.i
	movabsq	$4311814422, %rdx       # imm = 0x101011116
	btq	%rcx, %rdx
	jae	.LBB13_13
# BB#3:                                 # %sw.epilog.i
	movl	108(%r12), %ecx
	cmpl	$16, %ecx
	ja	.LBB13_13
# BB#4:                                 # %sw.epilog.i
	movl	$69910, %edx            # imm = 0x11116
	btl	%ecx, %edx
	jae	.LBB13_13
.LBB13_5:                               # %if.end.i
	movq	(%r12), %rdi
	movq	120(%r12), %rbx
	callq	gs_color_space_num_components
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	js	.LBB13_13
# BB#6:                                 # %lor.lhs.false.i.i
	cmpl	$0, 24(%r12)
	je	.LBB13_9
# BB#7:                                 # %land.lhs.true.i.i
	movsd	32(%r12), %xmm0         # xmm0 = mem[0],zero
	ucomisd	48(%r12), %xmm0
	ja	.LBB13_13
# BB#8:                                 # %lor.lhs.false.4.i.i
	movsd	40(%r12), %xmm0         # xmm0 = mem[0],zero
	ucomisd	56(%r12), %xmm0
	ja	.LBB13_13
.LBB13_9:                               # %if.end.i.i
	testq	%rbx, %rbx
	je	.LBB13_12
# BB#10:                                # %if.then.12.i.i
	cmpl	$1, 72(%rbx)
	jne	.LBB13_13
# BB#11:                                # %lor.lhs.false.16.i.i
	cmpl	%ecx, 88(%rbx)
	jne	.LBB13_13
.LBB13_12:                              # %if.end.21.i.i
	xorl	%eax, %eax
.LBB13_13:                              # %check_mesh.exit
	movl	$2, %ebp
	cmpl	$2, 80(%r12)
	je	.LBB13_16
# BB#14:                                # %if.end.i.18
	movl	128(%r12), %ecx
	addl	$-2, %ecx
	movl	$-15, %ebp
	cmpl	$6, %ecx
	ja	.LBB13_16
# BB#15:                                # %switch.lookup.i
	movslq	%ecx, %rcx
	movl	.Lswitch.table(,%rcx,4), %ebp
.LBB13_16:                              # %check_BPF.exit
	testl	%eax, %eax
	js	.LBB13_21
# BB#17:                                # %if.end
	testl	%ebp, %ebp
	js	.LBB13_18
# BB#19:                                # %do.body
	movl	$st_shading_Tpp, %esi
	movl	$.L.str.6, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB13_21
# BB#20:                                # %if.end.8
	movl	$7, (%rbx)
	movq	$gs_shading_Tpp_fill_rectangle, 8(%rbx)
	movq	%rbx, %rdi
	addq	$16, %rdi
	movl	$136, %edx
	movq	%r12, %rsi
	callq	memcpy
	movq	%rbx, (%r14)
	movl	%ebp, 144(%rbx)
	xorl	%eax, %eax
	jmp	.LBB13_21
.LBB13_18:
	movl	%ebp, %eax
.LBB13_21:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gs_shading_Tpp_init, .Lfunc_end13-gs_shading_Tpp_init
	.cfi_endproc

	.globl	gs_shading_path_add_box
	.align	16, 0x90
	.type	gs_shading_path_add_box,@function
gs_shading_path_add_box:                # @gs_shading_path_add_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 64
.Ltmp72:
	.cfi_offset %rbx, -32
.Ltmp73:
	.cfi_offset %r14, -24
.Ltmp74:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	leaq	24(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform2fixed
	testl	%eax, %eax
	js	.LBB14_6
# BB#1:                                 # %lor.lhs.false
	movl	24(%rsp), %esi
	movl	28(%rsp), %edx
	movq	%r14, %rdi
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB14_6
# BB#2:                                 # %lor.lhs.false.6
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform2fixed
	testl	%eax, %eax
	js	.LBB14_6
# BB#3:                                 # %lor.lhs.false.12
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%rbx), %xmm1         # xmm1 = mem[0],zero
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform2fixed
	testl	%eax, %eax
	js	.LBB14_6
# BB#4:                                 # %lor.lhs.false.20
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	24(%rbx), %xmm1         # xmm1 = mem[0],zero
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform2fixed
	testl	%eax, %eax
	js	.LBB14_6
# BB#5:                                 # %lor.lhs.false.28
	leaq	(%rsp), %rsi
	movl	$3, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gx_path_add_lines_notes
.LBB14_6:                               # %if.end
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	gs_shading_path_add_box, .Lfunc_end14-gs_shading_path_add_box
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gs_shading_do_fill_rectangle
	.align	16, 0x90
	.type	gs_shading_do_fill_rectangle,@function
gs_shading_do_fill_rectangle:           # @gs_shading_do_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 48
	subq	$1008, %rsp             # imm = 0x3F0
.Ltmp80:
	.cfi_def_cfa_offset 1056
.Ltmp81:
	.cfi_offset %rbx, -48
.Ltmp82:
	.cfi_offset %r12, -40
.Ltmp83:
	.cfi_offset %r14, -32
.Ltmp84:
	.cfi_offset %r15, -24
.Ltmp85:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	992(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1432(%r12)
	testq	%rbx, %rbx
	je	.LBB15_9
# BB#1:                                 # %do.body
	movl	(%rbx), %eax
	cmpl	992(%rsp), %eax
	jle	.LBB15_3
# BB#2:                                 # %if.then.3
	movl	%eax, 992(%rsp)
.LBB15_3:                               # %if.end
	movl	8(%rbx), %eax
	cmpl	1000(%rsp), %eax
	jge	.LBB15_5
# BB#4:                                 # %if.then.12
	movl	%eax, 1000(%rsp)
.LBB15_5:                               # %if.end.17
	movl	4(%rbx), %eax
	cmpl	996(%rsp), %eax
	jle	.LBB15_7
# BB#6:                                 # %if.then.22
	movl	%eax, 996(%rsp)
.LBB15_7:                               # %if.end.27
	movl	12(%rbx), %eax
	cmpl	1004(%rsp), %eax
	jge	.LBB15_9
# BB#8:                                 # %if.then.33
	movl	%eax, 1004(%rsp)
.LBB15_9:                               # %if.end.39
	testl	%ebp, %ebp
	je	.LBB15_13
# BB#10:                                # %if.end.39
	movq	32(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB15_13
# BB#11:                                # %if.then.42
	movq	16(%r15), %rbx
	leaq	664(%rsp), %rbp
	movl	$264, %edx              # imm = 0x108
	movq	%rbp, %rdi
	callq	memcpy
	movq	(%rbx), %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*40(%rax)
	movq	(%rbx), %rax
	leaq	8(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB15_14
# BB#12:                                # %if.end.51
	movl	212(%r14), %ecx
	leaq	992(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%r12, %rdi
	callq	gx_shade_background
	testl	%eax, %eax
	js	.LBB15_14
.LBB15_13:                              # %if.then.53
	leaq	132(%r14), %rsi
	cvtsi2sdl	992(%rsp), %xmm0
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 960(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	996(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 968(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	1000(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 976(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	1004(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 984(%rsp)
	leaq	960(%rsp), %rdi
	leaq	928(%rsp), %rbx
	movq	%rbx, %rdx
	callq	gs_bbox_transform_inverse
	leaq	992(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	*8(%r15)
.LBB15_14:                              # %if.end.79
	addq	$1008, %rsp             # imm = 0x3F0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gs_shading_do_fill_rectangle, .Lfunc_end15-gs_shading_do_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	shading_mesh_enum_ptrs,@function
shading_mesh_enum_ptrs:                 # @shading_mesh_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jne	.LBB16_1
# BB#4:                                 # %sw.bb
	movq	136(%rsi), %rax
	jmp	.LBB16_6
.LBB16_1:                               # %entry
	cmpl	$1, %ecx
	jne	.LBB16_2
# BB#5:                                 # %sw.bb.4
	movq	128(%rsi), %rax
.LBB16_6:                               # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB16_2:                               # %sw.default
	movl	%ecx, %eax
	addl	$-2, %eax
	jle	.LBB16_7
# BB#3:                                 # %if.end
	addl	$-3, %ecx
	movl	$st_shading, %r9d
	jmp	basic_enum_ptrs         # TAILCALL
.LBB16_7:                               # %if.then
	addq	$88, %rsi
	movl	$32, %edx
	movl	$st_data_source, %r9d
	movl	%eax, %ecx
	jmpq	*st_data_source+32(%rip) # TAILCALL
.Lfunc_end16:
	.size	shading_mesh_enum_ptrs, .Lfunc_end16-shading_mesh_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	shading_mesh_reloc_ptrs,@function
shading_mesh_reloc_ptrs:                # @shading_mesh_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp88:
	.cfi_def_cfa_offset 32
.Ltmp89:
	.cfi_offset %rbx, -24
.Ltmp90:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movl	$st_shading, %edx
	callq	basic_reloc_ptrs
	leaq	88(%r14), %rdi
	movl	$32, %esi
	movl	$st_data_source, %edx
	movq	%rbx, %rcx
	callq	*st_data_source+40(%rip)
	movq	(%rbx), %rax
	movq	136(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 136(%r14)
	movq	(%rbx), %rax
	movq	128(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 128(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end17:
	.size	shading_mesh_reloc_ptrs, .Lfunc_end17-shading_mesh_reloc_ptrs
	.cfi_endproc

	.type	st_shading_Fb,@object   # @st_shading_Fb
	.section	.rodata,"a",@progbits
	.align	8
st_shading_Fb:
	.long	136                     # 0x88
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	shading_Fb_reloc_ptrs
	.size	st_shading_Fb, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_shading_Fb_init"
	.size	.L.str, 19

	.type	st_shading_A,@object    # @st_shading_A
	.section	.rodata,"a",@progbits
	.align	8
st_shading_A:
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	shading_A_reloc_ptrs
	.size	st_shading_A, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_shading_A_init"
	.size	.L.str.1, 18

	.type	st_shading_R,@object    # @st_shading_R
	.section	.rodata,"a",@progbits
	.align	8
st_shading_R:
	.long	136                     # 0x88
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	shading_R_reloc_ptrs
	.size	st_shading_R, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_shading_R_init"
	.size	.L.str.2, 18

	.type	st_shading_FfGt,@object # @st_shading_FfGt
	.section	.rodata,"a",@progbits
	.align	8
st_shading_FfGt:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	shading_mesh_enum_ptrs
	.quad	shading_mesh_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_shading_FfGt, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gs_shading_FfGt_init"
	.size	.L.str.3, 21

	.type	st_shading_LfGt,@object # @st_shading_LfGt
	.section	.rodata,"a",@progbits
	.align	8
st_shading_LfGt:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.quad	shading_mesh_enum_ptrs
	.quad	shading_mesh_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_shading_LfGt, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gs_shading_LfGt_init"
	.size	.L.str.4, 21

	.type	st_shading_Cp,@object   # @st_shading_Cp
	.section	.rodata,"a",@progbits
	.align	8
st_shading_Cp:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	shading_mesh_enum_ptrs
	.quad	shading_mesh_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_shading_Cp, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"gs_shading_Cp_init"
	.size	.L.str.5, 19

	.type	st_shading_Tpp,@object  # @st_shading_Tpp
	.section	.rodata,"a",@progbits
	.align	8
st_shading_Tpp:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	shading_mesh_enum_ptrs
	.quad	shading_mesh_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_shading_Tpp, 64

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"gs_shading_Tpp_init"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gs_shading_Fb_t"
	.size	.L.str.7, 16

	.type	shading_Fb_reloc_ptrs,@object # @shading_Fb_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
shading_Fb_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_shading
	.quad	shading_Fb_enum_ptrs
	.size	shading_Fb_reloc_ptrs, 24

	.type	st_shading,@object      # @st_shading
	.align	8
st_shading:
	.long	88                      # 0x58
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	shading_reloc_ptrs
	.size	st_shading, 64

	.type	shading_Fb_enum_ptrs,@object # @shading_Fb_enum_ptrs
	.align	2
shading_Fb_enum_ptrs:
	.short	0                       # 0x0
	.short	128                     # 0x80
	.size	shading_Fb_enum_ptrs, 4

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gs_shading_t"
	.size	.L.str.8, 13

	.type	shading_reloc_ptrs,@object # @shading_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
shading_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	shading_enum_ptrs
	.size	shading_reloc_ptrs, 24

	.type	shading_enum_ptrs,@object # @shading_enum_ptrs
	.align	2
shading_enum_ptrs:
	.short	0                       # 0x0
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	shading_enum_ptrs, 12

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"gs_shading_A_t"
	.size	.L.str.9, 15

	.type	shading_A_reloc_ptrs,@object # @shading_A_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
shading_A_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_shading
	.quad	shading_A_enum_ptrs
	.size	shading_A_reloc_ptrs, 24

	.type	shading_A_enum_ptrs,@object # @shading_A_enum_ptrs
	.align	2
shading_A_enum_ptrs:
	.short	0                       # 0x0
	.short	112                     # 0x70
	.size	shading_A_enum_ptrs, 4

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"gs_shading_R_t"
	.size	.L.str.10, 15

	.type	shading_R_reloc_ptrs,@object # @shading_R_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
shading_R_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_shading
	.quad	shading_R_enum_ptrs
	.size	shading_R_reloc_ptrs, 24

	.type	shading_R_enum_ptrs,@object # @shading_R_enum_ptrs
	.align	2
shading_R_enum_ptrs:
	.short	0                       # 0x0
	.short	120                     # 0x78
	.size	shading_R_enum_ptrs, 4

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"gs_shading_FfGt_t"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gs_shading_LfGt_t"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gs_shading_Cp_t"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gs_shading_Tpp_t"
	.size	.L.str.14, 17

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	2                       # 0x2
	.long	4294967281              # 0xfffffff1
	.long	4                       # 0x4
	.long	4294967281              # 0xfffffff1
	.long	4294967281              # 0xfffffff1
	.long	4294967281              # 0xfffffff1
	.long	8                       # 0x8
	.size	.Lswitch.table, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
