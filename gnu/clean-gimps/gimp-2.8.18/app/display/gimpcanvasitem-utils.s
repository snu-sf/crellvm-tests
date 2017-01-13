	.text
	.file	"gimpcanvasitem-utils.bc"
	.globl	gimp_canvas_item_shift_to_north_west
	.align	16, 0x90
	.type	gimp_canvas_item_shift_to_north_west,@function
gimp_canvas_item_shift_to_north_west:   # @gimp_canvas_item_shift_to_north_west
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
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	movq	%rcx, %r8
	subq	$8, %r8
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	ja	.LBB0_10
# BB#16:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_1:                                # %sw.bb
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-68(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB0_11
.LBB0_2:                                # %sw.bb.4
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	jmp	.LBB0_11
.LBB0_3:                                # %sw.bb.8
	jmp	.LBB0_11
.LBB0_4:                                # %sw.bb.9
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	jmp	.LBB0_11
.LBB0_5:                                # %sw.bb.12
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-76(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB0_11
.LBB0_6:                                # %sw.bb.18
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB0_11
.LBB0_7:                                # %sw.bb.21
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB0_11
.LBB0_8:                                # %sw.bb.26
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-80(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB0_11
.LBB0_9:                                # %sw.bb.30
	movl	$2, %eax
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movl	-32(%rbp), %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-84(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB0_11
.LBB0_10:                               # %sw.default
	jmp	.LBB0_11
.LBB0_11:                               # %sw.epilog
	cmpq	$0, -40(%rbp)
	je	.LBB0_13
# BB#12:                                # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB0_13:                               # %if.end
	cmpq	$0, -48(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.37
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB0_15:                               # %if.end.38
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_item_shift_to_north_west, .Lfunc_end0-gimp_canvas_item_shift_to_north_west
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_1
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8
	.quad	.LBB0_9

	.text
	.globl	gimp_canvas_item_shift_to_center
	.align	16, 0x90
	.type	gimp_canvas_item_shift_to_center,@function
gimp_canvas_item_shift_to_center:       # @gimp_canvas_item_shift_to_center
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
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	movq	%rcx, %r8
	subq	$8, %r8
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	ja	.LBB1_10
# BB#16:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_1:                                # %sw.bb
	jmp	.LBB1_11
.LBB1_2:                                # %sw.bb.1
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-68(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb.2
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB1_11
.LBB1_4:                                # %sw.bb.9
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-76(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB1_11
.LBB1_5:                                # %sw.bb.15
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-80(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB1_11
.LBB1_6:                                # %sw.bb.19
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-84(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB1_11
.LBB1_7:                                # %sw.bb.26
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-88(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB1_11
.LBB1_8:                                # %sw.bb.33
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-92(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB1_11
.LBB1_9:                                # %sw.bb.37
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-96(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	jmp	.LBB1_11
.LBB1_10:                               # %sw.default
	jmp	.LBB1_11
.LBB1_11:                               # %sw.epilog
	cmpq	$0, -40(%rbp)
	je	.LBB1_13
# BB#12:                                # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB1_13:                               # %if.end
	cmpq	$0, -48(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.42
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB1_15:                               # %if.end.43
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_item_shift_to_center, .Lfunc_end1-gimp_canvas_item_shift_to_center
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_1
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_4
	.quad	.LBB1_5
	.quad	.LBB1_6
	.quad	.LBB1_7
	.quad	.LBB1_8
	.quad	.LBB1_9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
