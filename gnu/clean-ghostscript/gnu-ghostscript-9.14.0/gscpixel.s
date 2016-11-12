	.text
	.file	"gscpixel.bc"
	.globl	gs_cspace_new_DevicePixel
	.align	16, 0x90
	.type	gs_cspace_new_DevicePixel,@function
gs_cspace_new_DevicePixel:              # @gs_cspace_new_DevicePixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movl	$-15, %eax
	movl	%ebp, %ecx
	cmpl	$32, %ebp
	ja	.LBB0_4
# BB#1:                                 # %entry
	movabsq	$4311810326, %rdx       # imm = 0x101010116
	btq	%rcx, %rdx
	jae	.LBB0_4
# BB#2:                                 # %sw.epilog
	movl	$gs_color_space_type_DevicePixel, %esi
	callq	gs_cspace_alloc
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB0_4
# BB#3:                                 # %if.end
	movl	%ebp, 72(%rcx)
	movq	%rcx, (%rbx)
	xorl	%eax, %eax
.LBB0_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_cspace_new_DevicePixel, .Lfunc_end0-gs_cspace_new_DevicePixel
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI1_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.align	16, 0x90
	.type	gx_restrict_DevicePixel,@function
gx_restrict_DevicePixel:                # @gx_restrict_DevicePixel
	.cfi_startproc
# BB#0:                                 # %entry
	movss	8(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.LBB1_2
# BB#1:                                 # %cond.false
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movb	72(%rsi), %cl
	movl	$1, %eax
	shlq	%cl, %rax
	decq	%rax
	movd	%rax, %xmm1
	punpckldq	.LCPI1_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI1_1(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm2
	minsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
.LBB1_2:                                # %cond.end.9
	movss	%xmm0, 8(%rdi)
	retq
.Lfunc_end1:
	.size	gx_restrict_DevicePixel, .Lfunc_end1-gx_restrict_DevicePixel
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1593835520              # float 9.22337203E+18
	.text
	.align	16, 0x90
	.type	gx_concretize_DevicePixel,@function
gx_concretize_DevicePixel:              # @gx_concretize_DevicePixel
	.cfi_startproc
# BB#0:                                 # %entry
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm2
	subss	%xmm1, %xmm2
	cvttss2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttss2si	%xmm0, %rax
	ucomiss	%xmm0, %xmm1
	cmovbeq	%rcx, %rax
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gx_concretize_DevicePixel, .Lfunc_end2-gx_concretize_DevicePixel
	.cfi_endproc

	.align	16, 0x90
	.type	gx_remap_concrete_DevicePixel,@function
gx_remap_concrete_DevicePixel:          # @gx_remap_concrete_DevicePixel
	.cfi_startproc
# BB#0:                                 # %entry
	movswl	(%rdi), %eax
	movb	108(%r8), %cl
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	andl	%eax, %esi
	movslq	%esi, %rax
	movq	%rax, 8(%rdx)
	movq	$gx_dc_type_data_pure, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	gx_remap_concrete_DevicePixel, .Lfunc_end3-gx_remap_concrete_DevicePixel
	.cfi_endproc

	.align	16, 0x90
	.type	gx_set_overprint_DevicePixel,@function
gx_set_overprint_DevicePixel:           # @gx_set_overprint_DevicePixel
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 48
	movl	$0, 8(%rsp)
	movl	$0, 280(%rsi)
	leaq	8(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gs_state_update_overprint
	addq	$40, %rsp
	retq
.Lfunc_end4:
	.size	gx_set_overprint_DevicePixel, .Lfunc_end4-gx_set_overprint_DevicePixel
	.cfi_endproc

	.align	16, 0x90
	.type	gx_serialize_DevicePixel,@function
gx_serialize_DevicePixel:               # @gx_serialize_DevicePixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -24
.Ltmp10:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_serialize_cspace_type
	testl	%eax, %eax
	js	.LBB5_2
# BB#1:                                 # %if.end
	addq	$72, %rbx
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sputs
.LBB5_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	gx_serialize_DevicePixel, .Lfunc_end5-gx_serialize_DevicePixel
	.cfi_endproc

	.type	gs_color_space_type_DevicePixel,@object # @gs_color_space_type_DevicePixel
	.section	.rodata,"a",@progbits
	.align	8
gs_color_space_type_DevicePixel:
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	st_base_color_space
	.quad	gx_num_components_1
	.quad	gx_init_paint_1
	.quad	gx_restrict_DevicePixel
	.quad	gx_same_concrete_space
	.quad	gx_concretize_DevicePixel
	.quad	gx_remap_concrete_DevicePixel
	.quad	gx_default_remap_color
	.quad	gx_no_install_cspace
	.quad	gx_set_overprint_DevicePixel
	.quad	0
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_DevicePixel
	.quad	gx_cspace_is_linear_default
	.quad	gx_polarity_unknown
	.size	gs_color_space_type_DevicePixel, 136


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
