	.text
	.file	"lighting-image.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4613937818241073152     # double 3
	.text
	.globl	peek_map
	.align	16, 0x90
	.type	peek_map,@function
peek_map:                               # @peek_map
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
	subq	$32, %rsp
	leaq	-20(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	%rax, %rsi
	callq	gimp_pixel_rgn_get_pixel
	movq	-8(%rbp), %rax
	cmpl	$1, 16(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movb	-20(%rbp), %al
	movb	%al, -21(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movzbl	-20(%rbp), %eax
	movzbl	-19(%rbp), %ecx
	addl	%ecx, %eax
	movzbl	-18(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movb	%dl, -21(%rbp)
.LBB0_3:                                # %if.end
	movzbl	-21(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	peek_map, .Lfunc_end0-peek_map
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4643176031446892544     # double 255
.LCPI1_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	peek
	.align	16, 0x90
	.type	peek,@function
peek:                                   # @peek
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
	subq	$80, %rsp
	movq	%rdi, %rax
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	$source_region, %ecx
	movl	%ecx, %r8d
	leaq	-12(%rbp), %r9
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	gimp_pixel_rgn_get_pixel
	movzbl	-12(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movzbl	-11(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movzbl	-10(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	input_drawable, %rax
	cmpl	$4, 12(%rax)
	jne	.LBB1_5
# BB#1:                                 # %if.then
	cmpl	$4, in_channels
	jne	.LBB1_3
# BB#2:                                 # %if.then.10
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movzbl	-9(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_6
.LBB1_5:                                # %if.else.15
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB1_6:                                # %if.end.17
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	peek, .Lfunc_end1-peek
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4643176031446892544     # double 255
	.text
	.globl	peek_env_map
	.align	16, 0x90
	.type	peek_env_map,@function
peek_env_map:                           # @peek_env_map
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
	subq	$80, %rsp
	movq	%rdi, %rax
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	cmpl	$0, -4(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jge	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB2_5
.LBB2_2:                                # %if.else
	movl	-4(%rbp), %eax
	cmpl	env_width, %eax
	jl	.LBB2_4
# BB#3:                                 # %if.then.2
	movl	env_width, %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.3
	cmpl	$0, -8(%rbp)
	jge	.LBB2_7
# BB#6:                                 # %if.then.5
	movl	$0, -8(%rbp)
	jmp	.LBB2_10
.LBB2_7:                                # %if.else.6
	movl	-8(%rbp), %eax
	cmpl	env_height, %eax
	jl	.LBB2_9
# BB#8:                                 # %if.then.8
	movl	env_height, %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB2_9:                                # %if.end.10
	jmp	.LBB2_10
.LBB2_10:                               # %if.end.11
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	$env_region, %eax
	movl	%eax, %edi
	leaq	-12(%rbp), %rsi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	callq	gimp_pixel_rgn_get_pixel
	movzbl	-12(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movzbl	-11(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movzbl	-10(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-40(%rbp), %rsi
	movq	%rsi, 8(%rdi)
	movq	-32(%rbp), %rsi
	movq	%rsi, 16(%rdi)
	movq	-24(%rbp), %rsi
	movq	%rsi, 24(%rdi)
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	peek_env_map, .Lfunc_end2-peek_env_map
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4643176031446892544     # double 255
	.text
	.globl	poke
	.align	16, 0x90
	.type	poke,@function
poke:                                   # @poke
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB3_5
.LBB3_2:                                # %if.else
	movl	-4(%rbp), %eax
	cmpl	width, %eax
	jl	.LBB3_4
# BB#3:                                 # %if.then.2
	movl	width, %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.3
	cmpl	$0, -8(%rbp)
	jge	.LBB3_7
# BB#6:                                 # %if.then.5
	movl	$0, -8(%rbp)
	jmp	.LBB3_10
.LBB3_7:                                # %if.else.6
	movl	-8(%rbp), %eax
	cmpl	height, %eax
	jl	.LBB3_9
# BB#8:                                 # %if.then.8
	movl	height, %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB3_9:                                # %if.end.10
	jmp	.LBB3_10
.LBB3_10:                               # %if.end.11
	movabsq	$dest_region, %rdi
	movabsq	$poke.data, %rsi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, poke.data(%rip)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, poke.data+1(%rip)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, poke.data+2(%rip)
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, poke.data+3
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	callq	gimp_pixel_rgn_set_pixel
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	poke, .Lfunc_end3-poke
	.cfi_endproc

	.globl	check_bounds
	.align	16, 0x90
	.type	check_bounds,@function
check_bounds:                           # @check_bounds
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	cmpl	border_x1, %esi
	jl	.LBB4_4
# BB#1:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	cmpl	border_y1, %eax
	jl	.LBB4_4
# BB#2:                                 # %lor.lhs.false.2
	movl	-8(%rbp), %eax
	cmpl	border_x2, %eax
	jge	.LBB4_4
# BB#3:                                 # %lor.lhs.false.4
	movl	-12(%rbp), %eax
	cmpl	border_y2, %eax
	jl	.LBB4_5
.LBB4_4:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	movl	$1, -4(%rbp)
.LBB4_6:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	check_bounds, .Lfunc_end4-check_bounds
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
.LCPI5_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	int_to_pos
	.align	16, 0x90
	.type	int_to_pos,@function
int_to_pos:                             # @int_to_pos
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
	movq	%rdi, %rax
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	width, %edx
	cmpl	height, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jl	.LBB5_2
# BB#1:                                 # %if.then
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm2
	cvtsi2sdl	width, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -32(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm2
	cvtsi2sdl	width, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -24(%rbp)
	cvtsi2sdl	height, %xmm2
	cvtsi2sdl	width, %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm2
	cvtsi2sdl	height, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -32(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm2
	cvtsi2sdl	height, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -24(%rbp)
	cvtsi2sdl	width, %xmm2
	cvtsi2sdl	height, %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB5_3:                                # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end5:
	.size	int_to_pos, .Lfunc_end5-int_to_pos
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4602678819172646912     # double 0.5
.LCPI6_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	int_to_posf
	.align	16, 0x90
	.type	int_to_posf,@function
int_to_posf:                            # @int_to_posf
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
	movq	%rdi, %rax
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movl	width, %ecx
	cmpl	height, %ecx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jl	.LBB6_2
# BB#1:                                 # %if.then
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	width, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	width, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -32(%rbp)
	cvtsi2sdl	height, %xmm2
	cvtsi2sdl	width, %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	height, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	height, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -32(%rbp)
	cvtsi2sdl	width, %xmm2
	cvtsi2sdl	height, %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB6_3:                                # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end6:
	.size	int_to_posf, .Lfunc_end6-int_to_posf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4602678819172646912     # double 0.5
.LCPI7_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	pos_to_int
	.align	16, 0x90
	.type	pos_to_int,@function
pos_to_int:                             # @pos_to_int
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
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	width, %eax
	cmpl	height, %eax
	jl	.LBB7_2
# BB#1:                                 # %if.then
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	height, %xmm2
	cvtsi2sdl	width, %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	width, %xmm1
	mulsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	width, %xmm1
	mulsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	width, %xmm2
	cvtsi2sdl	height, %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	height, %xmm1
	mulsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	height, %xmm1
	mulsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pos_to_int, .Lfunc_end7-pos_to_int
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4602678819172646912     # double 0.5
.LCPI8_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	pos_to_float
	.align	16, 0x90
	.type	pos_to_float,@function
pos_to_float:                           # @pos_to_float
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
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	width, %eax
	cmpl	height, %eax
	jl	.LBB8_2
# BB#1:                                 # %if.then
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	height, %xmm2
	cvtsi2sdl	width, %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	width, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	width, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	width, %xmm2
	cvtsi2sdl	height, %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	height, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	height, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
.LBB8_3:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pos_to_float, .Lfunc_end8-pos_to_float
	.cfi_endproc

	.globl	get_image_color
	.align	16, 0x90
	.type	get_image_color,@function
get_image_color:                        # @get_image_color
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, %rax
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -28(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	check_bounds
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	background, %rax
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	background+8, %rax
	movq	%rax, 8(%rcx)
	movq	background+16, %rax
	movq	%rax, 16(%rcx)
	movq	background+24, %rax
	movq	%rax, 24(%rcx)
	jmp	.LBB9_5
.LBB9_2:                                # %if.end
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	check_bounds
	cmpl	$0, %eax
	jne	.LBB9_4
# BB#3:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	callq	peek
	jmp	.LBB9_5
.LBB9_4:                                # %if.end.10
	leaq	-208(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	peek
	leaq	-240(%rbp), %rdi
	movq	-208(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-36(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	peek
	leaq	-272(%rbp), %rdi
	movq	-240(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-28(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	peek
	leaq	-304(%rbp), %rdi
	movq	-272(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	peek
	leaq	-176(%rbp), %rsi
	movq	-304(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-320(%rbp), %rdi        # 8-byte Reload
	callq	gimp_bilinear_rgba
.LBB9_5:                                # %return
	movq	-312(%rbp), %rax        # 8-byte Reload
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end9:
	.size	get_image_color, .Lfunc_end9-get_image_color
	.cfi_endproc

	.globl	get_map_value
	.align	16, 0x90
	.type	get_map_value,@function
get_map_value:                          # @get_map_value
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	callq	check_bounds
	cmpl	$0, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	peek_map
	movzbl	%al, %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	peek_map
	movzbl	%al, %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	peek_map
	movzbl	%al, %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	peek_map
	movzbl	%al, %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	peek_map
	movzbl	%al, %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	gimp_bilinear
	movsd	%xmm0, -8(%rbp)
.LBB10_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	get_map_value, .Lfunc_end10-get_map_value
	.cfi_endproc

	.globl	image_setup
	.align	16, 0x90
	.type	image_setup,@function
image_setup:                            # @image_setup
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	callq	compute_maps
	movabsq	$border_x1, %rsi
	movabsq	$border_y1, %rdx
	movabsq	$border_x2, %rcx
	movabsq	$border_y2, %r8
	movq	-8(%rbp), %rdi
	movq	%rdi, input_drawable
	movq	-8(%rbp), %rdi
	movq	%rdi, output_drawable
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_bounds
	movabsq	$source_region, %rdi
	xorl	%r9d, %r9d
	movq	input_drawable, %rcx
	movl	4(%rcx), %r10d
	movl	%r10d, width
	movq	input_drawable, %rcx
	movl	8(%rcx), %r10d
	movl	%r10d, height
	movq	input_drawable, %rsi
	movl	width, %r8d
	movl	height, %r10d
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movslq	width, %rsi
	movslq	height, %rdi
	imulq	%rdi, %rsi
	movq	%rsi, maxcounter
	movl	$3, in_channels
	movq	input_drawable, %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$1, %eax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	in_channels, %eax
	addl	$1, %eax
	movl	%eax, in_channels
.LBB11_2:                               # %if.end
	cmpl	$0, -12(%rbp)
	je	.LBB11_4
# BB#3:                                 # %if.then.5
	movl	$1, %edi
	movl	$200, %esi
	callq	cairo_format_stride_for_width
	movl	$1, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	%eax, preview_rgb_stride
	imull	$200, preview_rgb_stride, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movl	$1, %esi
	movl	$200, %ecx
	movq	%rax, preview_rgb_data
	movq	preview_rgb_data, %rdi
	movl	preview_rgb_stride, %r8d
	movl	%ecx, %edx
	callq	cairo_image_surface_create_for_data
	movq	%rax, preview_surface
.LBB11_4:                               # %if.end.11
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	image_setup, .Lfunc_end11-image_setup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4643866524749135872     # double 293.25
.LCPI12_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI12_2:
	.quad	4643176031446892544     # double 255
.LCPI12_3:
	.quad	-4616189618054758400    # double -1
.LCPI12_4:
	.quad	4617315517961601024     # double 5
.LCPI12_5:
	.quad	4620693217682128896     # double 8
.LCPI12_6:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI12_7:
	.quad	-4613618979930100456    # double -1.5707963267948966
.LCPI12_8:
	.quad	4607182418800017408     # double 1
.LCPI12_9:
	.quad	4602678819172646912     # double 0.5
.LCPI12_10:
	.quad	4647714815446351872     # double 512
	.text
	.align	16, 0x90
	.type	compute_maps,@function
compute_maps:                           # @compute_maps
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
	subq	$80, %rsp
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_1, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	$0, -4(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB12_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movsd	.LCPI12_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_5, %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI12_6(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm3
	cvtsi2sdl	-4(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	movsd	.LCPI12_7(%rip), %xmm5  # xmm5 = mem[0],zero
	addsd	%xmm5, %xmm3
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm4, -48(%rbp)        # 8-byte Spill
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	movsd	%xmm2, -64(%rbp)        # 8-byte Spill
	callq	sin
	movsd	.LCPI12_8(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI12_9(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI12_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-4(%rbp), %rdx
	movb	%cl, sinemap(%rdx)
	movl	-4(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	.LCPI12_10(%rip), %xmm3 # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm0
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	callq	sin
	callq	sqrt
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-4(%rbp), %rdx
	movb	%cl, spheremap(,%rdx)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	cvtsi2sdl	-4(%rbp), %xmm3
	movsd	-56(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm2
	movsd	-40(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm0
	callq	exp
	movsd	.LCPI12_2, %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB12_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movsd	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB12_4:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	cvttsd2si	-16(%rbp), %eax
	movb	%al, %cl
	movslq	-4(%rbp), %rdx
	movb	%cl, logmap(,%rdx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB12_1
.LBB12_6:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	compute_maps, .Lfunc_end12-compute_maps
	.cfi_endproc

	.type	bump_drawable,@object   # @bump_drawable
	.bss
	.globl	bump_drawable
	.align	8
bump_drawable:
	.quad	0
	.size	bump_drawable, 8

	.type	env_drawable,@object    # @env_drawable
	.globl	env_drawable
	.align	8
env_drawable:
	.quad	0
	.size	env_drawable, 8

	.type	preview_rgb_data,@object # @preview_rgb_data
	.globl	preview_rgb_data
	.align	8
preview_rgb_data:
	.quad	0
	.size	preview_rgb_data, 8

	.type	preview_surface,@object # @preview_surface
	.globl	preview_surface
	.align	8
preview_surface:
	.quad	0
	.size	preview_surface, 8

	.type	source_region,@object   # @source_region
	.globl	source_region
	.align	8
source_region:
	.zero	48
	.size	source_region, 48

	.type	input_drawable,@object  # @input_drawable
	.globl	input_drawable
	.align	8
input_drawable:
	.quad	0
	.size	input_drawable, 8

	.type	in_channels,@object     # @in_channels
	.globl	in_channels
	.align	4
in_channels:
	.long	0                       # 0x0
	.size	in_channels, 4

	.type	env_width,@object       # @env_width
	.globl	env_width
	.align	4
env_width:
	.long	0                       # 0x0
	.size	env_width, 4

	.type	env_height,@object      # @env_height
	.globl	env_height
	.align	4
env_height:
	.long	0                       # 0x0
	.size	env_height, 4

	.type	env_region,@object      # @env_region
	.globl	env_region
	.align	8
env_region:
	.zero	48
	.size	env_region, 48

	.type	poke.data,@object       # @poke.data
	.local	poke.data
	.comm	poke.data,4,1
	.type	width,@object           # @width
	.globl	width
	.align	4
width:
	.long	0                       # 0x0
	.size	width, 4

	.type	height,@object          # @height
	.globl	height
	.align	4
height:
	.long	0                       # 0x0
	.size	height, 4

	.type	dest_region,@object     # @dest_region
	.globl	dest_region
	.align	8
dest_region:
	.zero	48
	.size	dest_region, 48

	.type	border_x1,@object       # @border_x1
	.globl	border_x1
	.align	4
border_x1:
	.long	0                       # 0x0
	.size	border_x1, 4

	.type	border_y1,@object       # @border_y1
	.globl	border_y1
	.align	4
border_y1:
	.long	0                       # 0x0
	.size	border_y1, 4

	.type	border_x2,@object       # @border_x2
	.globl	border_x2
	.align	4
border_x2:
	.long	0                       # 0x0
	.size	border_x2, 4

	.type	border_y2,@object       # @border_y2
	.globl	border_y2
	.align	4
border_y2:
	.long	0                       # 0x0
	.size	border_y2, 4

	.type	background,@object      # @background
	.globl	background
	.align	8
background:
	.zero	32
	.size	background, 32

	.type	output_drawable,@object # @output_drawable
	.globl	output_drawable
	.align	8
output_drawable:
	.quad	0
	.size	output_drawable, 8

	.type	maxcounter,@object      # @maxcounter
	.globl	maxcounter
	.align	8
maxcounter:
	.quad	0                       # 0x0
	.size	maxcounter, 8

	.type	preview_rgb_stride,@object # @preview_rgb_stride
	.globl	preview_rgb_stride
	.align	4
preview_rgb_stride:
	.long	0                       # 0x0
	.size	preview_rgb_stride, 4

	.type	bump_region,@object     # @bump_region
	.globl	bump_region
	.align	8
bump_region:
	.zero	48
	.size	bump_region, 48

	.type	imgtype,@object         # @imgtype
	.globl	imgtype
	.align	4
imgtype:
	.long	0                       # 0x0
	.size	imgtype, 4

	.type	out_channels,@object    # @out_channels
	.globl	out_channels
	.align	4
out_channels:
	.long	0                       # 0x0
	.size	out_channels, 4

	.type	sinemap,@object         # @sinemap
	.globl	sinemap
	.align	16
sinemap:
	.zero	256
	.size	sinemap, 256

	.type	spheremap,@object       # @spheremap
	.globl	spheremap
	.align	16
spheremap:
	.zero	256
	.size	spheremap, 256

	.type	logmap,@object          # @logmap
	.globl	logmap
	.align	16
logmap:
	.zero	256
	.size	logmap, 256


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
