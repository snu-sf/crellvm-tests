	.text
	.file	"gfig-grid.bc"
	.globl	gfig_grid_colours
	.align	16, 0x90
	.type	gfig_grid_colours,@function
gfig_grid_colours:                      # @gfig_grid_colours
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gfig_grid_colours, .Lfunc_end0-gfig_grid_colours
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
.LCPI1_1:
	.quad	4605975682916830378     # double 0.8660254037844386
	.text
	.globl	find_grid_pos
	.align	16, 0x90
	.type	find_grid_pos,@function
find_grid_pos:                          # @find_grid_pos
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edx
	movw	%dx, %ax
	movw	%ax, -22(%rbp)
	movq	-8(%rbp), %rsi
	movl	4(%rsi), %edx
	movw	%dx, %ax
	movw	%ax, -24(%rbp)
	cmpl	$0, selvals+4
	jne	.LBB1_12
# BB#1:                                 # %if.then
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	selvals
	movl	selvals, %esi
	movl	%esi, %eax
	movl	%edx, -96(%rbp)         # 4-byte Spill
	cltd
	movl	-92(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-96(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB1_3
# BB#2:                                 # %if.then.8
	movl	selvals, %eax
	movswl	-22(%rbp), %ecx
	addl	%eax, %ecx
	movw	%cx, %dx
	movw	%dx, -22(%rbp)
.LBB1_3:                                # %if.end
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	selvals
	movl	selvals, %esi
	movl	%esi, %eax
	movl	%edx, -104(%rbp)        # 4-byte Spill
	cltd
	movl	-100(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-104(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB1_5
# BB#4:                                 # %if.then.16
	movl	selvals, %eax
	movswl	-24(%rbp), %ecx
	addl	%eax, %ecx
	movw	%cx, %dx
	movw	%dx, -24(%rbp)
.LBB1_5:                                # %if.end.20
	movswl	-22(%rbp), %eax
	cltd
	idivl	selvals
	imull	selvals, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movswl	-24(%rbp), %eax
	cltd
	idivl	selvals
	imull	selvals, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	cmpl	$0, -20(%rbp)
	je	.LBB1_10
# BB#6:                                 # %if.then.28
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	find_grid_pos.cons_pnt, %ecx
	movl	%ecx, %edi
	callq	abs
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %ecx
	subl	find_grid_pos.cons_pnt+4, %ecx
	movl	%ecx, %edi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	abs
	movl	-108(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_8
# BB#7:                                 # %if.then.35
	movl	find_grid_pos.cons_pnt, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movl	find_grid_pos.cons_pnt+4, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
.LBB1_9:                                # %if.end.38
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.39
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, find_grid_pos.cons_pnt
.LBB1_11:                               # %if.end.40
	jmp	.LBB1_27
.LBB1_12:                               # %if.else.41
	cmpl	$1, selvals+4
	jne	.LBB1_14
# BB#13:                                # %if.then.44
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	find_grid_pos_polar
	jmp	.LBB1_26
.LBB1_14:                               # %if.else.45
	cmpl	$2, selvals+4
	jne	.LBB1_25
# BB#15:                                # %if.then.48
	movl	$2, %eax
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	selvals, %xmm2
	movsd	%xmm2, -64(%rbp)
	mulsd	-64(%rbp), %xmm1
	movsd	%xmm1, -72(%rbp)
	movswl	-22(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	-72(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movswl	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	-64(%rbp), %xmm1
	movl	-28(%rbp), %ecx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-112(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm2
	movaps	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -40(%rbp)
	cvtsi2sdl	-36(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm0
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movswl	-24(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edi
	callq	abs
	movl	$2, %ecx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm0
	movl	-28(%rbp), %edx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movswl	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edi
	callq	abs
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_17
# BB#16:                                # %if.then.93
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_18
.LBB1_17:                               # %if.else.94
	movl	-40(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB1_18:                               # %if.end.95
	movl	$2, %eax
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movswl	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	-64(%rbp), %xmm1
	movl	-32(%rbp), %ecx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-120(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm2
	movaps	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -48(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm0
	movl	-32(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movswl	-24(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edi
	callq	abs
	movl	$2, %ecx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm0
	movl	-32(%rbp), %edx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movswl	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edi
	callq	abs
	movl	-124(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_20
# BB#19:                                # %if.then.131
	movl	-44(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.132
	movl	-48(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB1_21:                               # %if.end.133
	movl	$2, %eax
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	-72(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -76(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	-64(%rbp), %xmm2
	movl	-28(%rbp), %ecx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-128(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -84(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	-72(%rbp), %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -80(%rbp)
	cvtsi2sdl	-56(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm0
	movl	-32(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -88(%rbp)
	movswl	-22(%rbp), %edx
	subl	-76(%rbp), %edx
	movswl	-22(%rbp), %esi
	subl	-76(%rbp), %esi
	imull	%esi, %edx
	movswl	-24(%rbp), %esi
	subl	-84(%rbp), %esi
	movswl	-24(%rbp), %edi
	subl	-84(%rbp), %edi
	imull	%edi, %esi
	addl	%esi, %edx
	movswl	-22(%rbp), %esi
	subl	-80(%rbp), %esi
	movswl	-22(%rbp), %edi
	subl	-80(%rbp), %edi
	imull	%edi, %esi
	movswl	-24(%rbp), %edi
	subl	-88(%rbp), %edi
	movswl	-24(%rbp), %r8d
	subl	-88(%rbp), %r8d
	imull	%r8d, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jge	.LBB1_23
# BB#22:                                # %if.then.180
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-84(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.183
	movl	-80(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-88(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
.LBB1_24:                               # %if.end.186
	jmp	.LBB1_25
.LBB1_25:                               # %if.end.187
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.188
	jmp	.LBB1_27
.LBB1_27:                               # %if.end.189
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	find_grid_pos, .Lfunc_end1-find_grid_pos
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
.LCPI2_1:
	.quad	4611686018427387904     # double 2
.LCPI2_2:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	find_grid_pos_polar,@function
find_grid_pos_polar:                    # @find_grid_pos_polar
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
	subq	$112, %rsp
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI2_1, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cvtsi2sdl	preview_width, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -24(%rbp)
	cvtsi2sdl	preview_height, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -32(%rbp)
	movq	-8(%rbp), %rsi
	cvtsi2sdl	(%rsi), %xmm2
	subsd	-24(%rbp), %xmm2
	movsd	%xmm2, -40(%rbp)
	movq	-8(%rbp), %rsi
	cvtsi2sdl	4(%rsi), %xmm2
	subsd	-32(%rbp), %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	selvals+24, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB2_2
# BB#1:                                 # %if.then
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	selvals+32, %xmm1       # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	selvals+24, %xmm2
	divsd	selvals+32, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	selvals+24, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI2_2, %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sector_size_at_radius
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	selvals+40, %xmm0       # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	selvals+40, %xmm2
	divsd	-88(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
.LBB2_2:                                # %if.end
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	find_grid_pos_polar, .Lfunc_end2-find_grid_pos_polar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	draw_grid
	.align	16, 0x90
	.type	draw_grid,@function
draw_grid:                              # @draw_grid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	preview_width, %eax
	cmpl	selvals, %eax
	jge	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movl	preview_height, %eax
	cmpl	selvals, %eax
	jge	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_14
.LBB3_3:                                # %if.end
	cmpl	$0, selvals+8
	je	.LBB3_5
# BB#4:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movq	gfig_context, %rax
	movq	32(%rax), %rsi
	movl	grid_gc_type, %edx
	callq	gfig_get_grid_gc
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %if.else
	jmp	.LBB3_14
.LBB3_6:                                # %if.end.3
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	cmpl	$0, selvals+4
	jne	.LBB3_8
# BB#7:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	callq	draw_grid_sq
	jmp	.LBB3_14
.LBB3_8:                                # %if.else.6
	cmpl	$1, selvals+4
	jne	.LBB3_10
# BB#9:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	callq	draw_grid_polar
	jmp	.LBB3_13
.LBB3_10:                               # %if.else.9
	cmpl	$2, selvals+4
	jne	.LBB3_12
# BB#11:                                # %if.then.11
	movq	-8(%rbp), %rdi
	callq	draw_grid_iso
.LBB3_12:                               # %if.end.12
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.13
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.14
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	draw_grid, .Lfunc_end3-draw_grid
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4593671619917905920     # double 0.125
.LCPI4_1:
	.quad	4604930618986332160     # double 0.75
.LCPI4_2:
	.quad	4598175219545276416     # double 0.25
.LCPI4_3:
	.quad	4602678819172646912     # double 0.5
.LCPI4_4:
	.quad	4607182418800017408     # double 1
.LCPI4_5:
	.quad	4606461842859638129     # double 0.92000000000000004
	.text
	.align	16, 0x90
	.type	gfig_get_grid_gc,@function
gfig_get_grid_gc:                       # @gfig_get_grid_gc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	addl	$7, %edx
	movl	%edx, %esi
	subl	$6, %edx
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movl	%edx, -36(%rbp)         # 4-byte Spill
	ja	.LBB4_1
# BB#10:                                # %entry
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_1:                                # %sw.default
	jmp	.LBB4_2
.LBB4_2:                                # %sw.bb
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	jmp	.LBB4_9
.LBB4_3:                                # %sw.bb.1
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	jmp	.LBB4_9
.LBB4_4:                                # %sw.bb.2
	movsd	.LCPI4_4, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	jmp	.LBB4_9
.LBB4_5:                                # %sw.bb.3
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	jmp	.LBB4_9
.LBB4_6:                                # %sw.bb.4
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	jmp	.LBB4_9
.LBB4_7:                                # %sw.bb.5
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	jmp	.LBB4_9
.LBB4_8:                                # %sw.bb.6
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
.LBB4_9:                                # %sw.epilog
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gfig_get_grid_gc, .Lfunc_end4-gfig_get_grid_gc
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_8
	.quad	.LBB4_7
	.quad	.LBB4_6
	.quad	.LBB4_5
	.quad	.LBB4_4
	.quad	.LBB4_3
	.quad	.LBB4_2

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	draw_grid_sq,@function
draw_grid_sq:                           # @draw_grid_sq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	selvals, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	preview_height, %eax
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-16(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	callq	cairo_move_to
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	preview_width, %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	-16(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-12(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movl	$0, -16(%rbp)
.LBB5_5:                                # %for.cond.6
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	preview_width, %eax
	jge	.LBB5_8
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB5_5 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-16(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-16(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	preview_height, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
# BB#7:                                 # %for.inc.16
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-12(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB5_5
.LBB5_8:                                # %for.end.18
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	draw_grid_sq, .Lfunc_end5-draw_grid_sq
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI6_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	draw_grid_polar,@function
draw_grid_polar:                        # @draw_grid_polar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	preview_width, %eax
	imull	preview_width, %eax
	movl	preview_height, %ecx
	imull	preview_height, %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	callq	sqrt
	movsd	%xmm0, -32(%rbp)
	movl	$1, -36(%rbp)
	movl	selvals+56, %edi
	callq	prime_factors_new
	xorps	%xmm0, %xmm0
	movq	%rax, -48(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	selvals+24, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #     Child Loop BB6_8 Depth 2
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	xorps	%xmm3, %xmm3
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movl	$2, %eax
	cvtsi2sdl	-36(%rbp), %xmm2
	movaps	%xmm0, %xmm4
	divsd	%xmm2, %xmm4
	movsd	%xmm4, -64(%rbp)
	movq	-8(%rbp), %rdi
	movl	preview_width, %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-84(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm2
	movaps	%xmm1, %xmm4
	addsd	%xmm2, %xmm4
	movl	preview_height, %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-96(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	cairo_arc
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
.LBB6_3:                                # %while.cond
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	cmpl	selvals+56, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jge	.LBB6_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB6_3 Depth=2
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	prime_factors_lookahead
	cvtsi2sdl	%eax, %xmm0
	mulsd	selvals+48, %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB6_5:                                # %land.end
                                        #   in Loop: Header=BB6_3 Depth=2
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_6
	jmp	.LBB6_7
.LBB6_6:                                # %while.body
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-48(%rbp), %rdi
	callq	prime_factors_get
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	imull	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB6_3
.LBB6_7:                                # %while.end
                                        #   in Loop: Header=BB6_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB6_8:                                # %for.cond.23
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB6_11
# BB#9:                                 # %for.body.26
                                        #   in Loop: Header=BB6_8 Depth=2
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movl	$2, %eax
	movsd	selvals+40, %xmm1       # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	cos
	movsd	%xmm0, -72(%rbp)
	movsd	selvals+40, %xmm0       # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	callq	sin
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	preview_width, %eax
	cltd
	movl	-124(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movl	preview_height, %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movl	$2, %eax
	movq	-8(%rbp), %rdi
	movl	preview_width, %ecx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-128(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movl	preview_height, %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-80(%rbp), %xmm3
	subsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB6_8 Depth=2
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB6_8
.LBB6_11:                               # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_12
.LBB6_12:                               # %for.inc.51
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	selvals+32, %xmm0       # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB6_1
.LBB6_13:                               # %for.end.53
	movq	-48(%rbp), %rdi
	callq	prime_factors_delete
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	draw_grid_polar, .Lfunc_end6-draw_grid_polar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4611686018427387904     # double 2
.LCPI7_1:
	.quad	4610479282544200874     # double 1.7320508075688772
	.text
	.align	16, 0x90
	.type	draw_grid_iso,@function
draw_grid_iso:                          # @draw_grid_iso
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_1, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	selvals, %eax
	movl	%eax, -12(%rbp)
	cvtsi2sdl	selvals, %xmm3
	mulsd	%xmm2, %xmm3
	divsd	%xmm1, %xmm3
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm0, -24(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	preview_width, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cairo_move_to
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	preview_height, %xmm1
	callq	cairo_line_to
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movl	preview_width, %eax
	shll	$0, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movl	preview_width, %eax
	shll	$0, %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	cltd
	idivl	-12(%rbp)
	cvtsi2sdl	%edx, %xmm2
	subsd	%xmm2, %xmm1
	movd	%xmm1, %rdi
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rdi
	movd	%rdi, %xmm1
	movsd	%xmm1, -40(%rbp)
	cvtsi2sdl	preview_height, %xmm1
	movl	preview_width, %edx
	shll	$0, %edx
	cvtsi2sdl	%edx, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	cvttsd2si	-48(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	-12(%rbp)
	cvtsi2sdl	%edx, %xmm1
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	cvtsi2sdl	preview_width, %xmm1
	movsd	%xmm1, -56(%rbp)
	movl	preview_width, %edx
	shll	$0, %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB7_5:                                # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_8
# BB#6:                                 # %for.body.29
                                        #   in Loop: Header=BB7_5 Depth=1
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-8(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	callq	cairo_line_to
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-8(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-64(%rbp), %xmm1
	callq	cairo_line_to
# BB#7:                                 # %for.inc.32
                                        #   in Loop: Header=BB7_5 Depth=1
	cvtsi2sdl	-12(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB7_5
.LBB7_8:                                # %for.end.35
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	draw_grid_iso, .Lfunc_end7-draw_grid_iso
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	sector_size_at_radius,@function
sector_size_at_radius:                  # @sector_size_at_radius
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movsd	%xmm0, -8(%rbp)
	movl	selvals+56, %edi
	callq	prime_factors_new
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-20(%rbp), %eax
	cmpl	selvals+56, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jge	.LBB8_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	prime_factors_lookahead
	cvtsi2sdl	%eax, %xmm0
	mulsd	selvals+48, %xmm0
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB8_3:                                # %land.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_4
	jmp	.LBB8_5
.LBB8_4:                                # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	prime_factors_get
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	imull	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB8_1
.LBB8_5:                                # %while.end
	movq	-16(%rbp), %rdi
	callq	prime_factors_delete
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	sector_size_at_radius, .Lfunc_end8-sector_size_at_radius
	.cfi_endproc

	.align	16, 0x90
	.type	prime_factors_new,@function
prime_factors_new:                      # @prime_factors_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$20, %eax
	movl	%eax, %esi
	movl	%edi, -4(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rdi
	callq	prime_factors_reset
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	prime_factors_new, .Lfunc_end9-prime_factors_new
	.cfi_endproc

	.align	16, 0x90
	.type	prime_factors_lookahead,@function
prime_factors_lookahead:                # @prime_factors_lookahead
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	prime_factors_lookahead, .Lfunc_end10-prime_factors_lookahead
	.cfi_endproc

	.align	16, 0x90
	.type	prime_factors_get,@function
prime_factors_get:                      # @prime_factors_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	12(%rdi), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, 8(%rdi)
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$30, 16(%rax)
	jg	.LBB11_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	movslq	16(%rcx), %rcx
	movsbl	primes(,%rcx), %edx
	movl	%edx, -20(%rbp)         # 4-byte Spill
	cltd
	movl	-20(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB11_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movslq	16(%rax), %rax
	movsbl	primes(,%rax), %ecx
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 4(%rsi)
	movq	-16(%rbp), %rdi
	movslq	16(%rdi), %rdi
	movsbl	primes(,%rdi), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, 12(%rdi)
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB11_6
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
	jmp	.LBB11_1
.LBB11_5:                               # %while.end
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB11_6:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	prime_factors_get, .Lfunc_end11-prime_factors_get
	.cfi_endproc

	.align	16, 0x90
	.type	prime_factors_delete,@function
prime_factors_delete:                   # @prime_factors_delete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	prime_factors_delete, .Lfunc_end12-prime_factors_delete
	.cfi_endproc

	.align	16, 0x90
	.type	prime_factors_reset,@function
prime_factors_reset:                    # @prime_factors_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 16(%rdi)
	movq	-8(%rbp), %rdi
	callq	prime_factors_get
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	prime_factors_reset, .Lfunc_end13-prime_factors_reset
	.cfi_endproc

	.type	grid_gc_type,@object    # @grid_gc_type
	.data
	.globl	grid_gc_type
	.align	4
grid_gc_type:
	.long	4294967295              # 0xffffffff
	.size	grid_gc_type, 4

	.type	find_grid_pos.cons_pnt,@object # @find_grid_pos.cons_pnt
	.local	find_grid_pos.cons_pnt
	.comm	find_grid_pos.cons_pnt,8,4
	.type	primes,@object          # @primes
	.align	16
primes:
	.ascii	"\002\003\005\007\013\r\021\023\027\035\037%)+/5;=CGIOSYaegkmq\177"
	.size	primes, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
