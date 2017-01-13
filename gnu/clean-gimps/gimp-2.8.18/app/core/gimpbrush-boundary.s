	.text
	.file	"gimpbrush-boundary.bc"
	.globl	gimp_brush_real_transform_boundary
	.align	16, 0x90
	.type	gimp_brush_real_transform_boundary,@function
gimp_brush_real_transform_boundary:     # @gimp_brush_real_transform_boundary
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	gimp_brush_transform_size
	movq	-56(%rbp), %rdx
	cmpl	$256, (%rdx)            # imm = 0x100
	jge	.LBB0_3
# BB#1:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	cmpl	$256, (%rax)            # imm = 0x100
	jge	.LBB0_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_brush_transform_boundary_exact
	movq	%rax, -8(%rbp)
	jmp	.LBB0_4
.LBB0_3:                                # %if.end
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_brush_transform_boundary_approx
	movq	%rax, -8(%rbp)
.LBB0_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_real_transform_boundary, .Lfunc_end0-gimp_brush_real_transform_boundary
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_transform_boundary_exact,@function
gimp_brush_transform_boundary_exact:    # @gimp_brush_transform_boundary_exact
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_brush_transform_mask
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	leaq	-120(%rbp), %rdi
	xorl	%eax, %eax
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-56(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
	leaq	-120(%rbp), %rdi
	xorl	%eax, %eax
	leaq	-132(%rbp), %rsi
	movl	-76(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	boundary_find
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB1_5
# BB#2:                                 # %if.then.3
	leaq	-148(%rbp), %rdx
	movq	-128(%rbp), %rdi
	movl	-132(%rbp), %esi
	callq	boundary_sort
	movq	%rax, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	cmpq	$0, -144(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.6
	movq	-144(%rbp), %rdi
	movl	-132(%rbp), %esi
	movl	-148(%rbp), %edx
	callq	gimp_bezier_desc_new_from_bound_segs
	movq	%rax, -160(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-160(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_7
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.8
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.9
	movq	$0, -8(%rbp)
.LBB1_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_transform_boundary_exact, .Lfunc_end1-gimp_brush_transform_boundary_exact
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_transform_boundary_approx,@function
gimp_brush_transform_boundary_approx:   # @gimp_brush_transform_boundary_approx
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_brush_transform_boundary_exact
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_transform_boundary_approx, .Lfunc_end2-gimp_brush_transform_boundary_approx
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
