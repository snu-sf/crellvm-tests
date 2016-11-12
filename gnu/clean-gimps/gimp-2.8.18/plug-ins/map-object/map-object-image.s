	.text
	.file	"map-object-image.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4643176031446892544     # double 255
.LCPI0_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	peek
	.align	16, 0x90
	.type	peek,@function
peek:                                   # @peek
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
	subq	$80, %rsp
	movq	%rdi, %rax
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	$source_region, %ecx
	movl	%ecx, %r8d
	movl	$peek.data, %ecx
	movl	%ecx, %r9d
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gimp_pixel_rgn_get_pixel
	movzbl	peek.data(%rip), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movzbl	peek.data+1(%rip), %ecx
	cvtsi2sdl	%ecx, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movzbl	peek.data+2(%rip), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	input_drawable, %rax
	cmpl	$4, 12(%rax)
	jne	.LBB0_5
# BB#1:                                 # %if.then
	cmpl	$4, in_channels
	jne	.LBB0_3
# BB#2:                                 # %if.then.8
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movzbl	peek.data+3(%rip), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB0_4:                                # %if.end
	jmp	.LBB0_6
.LBB0_5:                                # %if.else.12
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB0_6:                                # %if.end.14
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	peek, .Lfunc_end0-peek
	.cfi_endproc

	.globl	poke
	.align	16, 0x90
	.type	poke,@function
poke:                                   # @poke
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
	subq	$32, %rsp
	movabsq	$poke.col, %rax
	movq	%rax, %r8
	addq	$1, %r8
	movq	%rax, %r9
	addq	$2, %r9
	movq	%rax, %r10
	addq	$3, %r10
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	%r10, %r8
	callq	gimp_rgba_get_uchar
	movabsq	$dest_region, %rdi
	movabsq	$poke.col, %rsi
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	callq	gimp_pixel_rgn_set_pixel
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	poke, .Lfunc_end1-poke
	.cfi_endproc

	.globl	checkbounds
	.align	16, 0x90
	.type	checkbounds,@function
checkbounds:                            # @checkbounds
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	cmpl	border_x1, %esi
	jl	.LBB2_4
# BB#1:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	cmpl	border_y1, %eax
	jl	.LBB2_4
# BB#2:                                 # %lor.lhs.false.2
	movl	-8(%rbp), %eax
	cmpl	border_x2, %eax
	jge	.LBB2_4
# BB#3:                                 # %lor.lhs.false.4
	movl	-12(%rbp), %eax
	cmpl	border_y2, %eax
	jl	.LBB2_5
.LBB2_4:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.else
	movl	$1, -4(%rbp)
.LBB2_6:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	checkbounds, .Lfunc_end2-checkbounds
	.cfi_endproc

	.globl	int_to_pos
	.align	16, 0x90
	.type	int_to_pos,@function
int_to_pos:                             # @int_to_pos
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
	movq	%rdi, %rax
	xorps	%xmm0, %xmm0
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm1
	cvtsi2sdl	width, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm1
	cvtsi2sdl	height, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	int_to_pos, .Lfunc_end3-int_to_pos
	.cfi_endproc

	.globl	pos_to_int
	.align	16, 0x90
	.type	pos_to_int,@function
pos_to_int:                             # @pos_to_int
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
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	width, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rsi
	movl	%eax, (%rsi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	height, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rsi
	movl	%eax, (%rsi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pos_to_int, .Lfunc_end4-pos_to_int
	.cfi_endproc

	.globl	get_image_color
	.align	16, 0x90
	.type	get_image_color,@function
get_image_color:                        # @get_image_color
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
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, %rax
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	pos_to_int
	cmpl	$1, mapvals+404
	jne	.LBB5_8
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	cmpl	$0, -28(%rbp)
	jge	.LBB5_3
# BB#2:                                 # %if.then.2
	xorl	%eax, %eax
	movl	width, %ecx
	subl	$1, %ecx
	subl	-28(%rbp), %eax
	cltd
	idivl	width
	subl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	-28(%rbp), %eax
	cltd
	idivl	width
	movl	%edx, -28(%rbp)
.LBB5_4:                                # %if.end
	cmpl	$0, -32(%rbp)
	jge	.LBB5_6
# BB#5:                                 # %if.then.7
	xorl	%eax, %eax
	movl	height, %ecx
	subl	$1, %ecx
	subl	-32(%rbp), %eax
	cltd
	idivl	height
	subl	%edx, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.12
	movl	-32(%rbp), %eax
	cltd
	idivl	height
	movl	%edx, -32(%rbp)
.LBB5_7:                                # %if.end.14
	leaq	-208(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	width
	movl	%edx, -36(%rbp)
	movl	-32(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	height
	movl	%edx, -40(%rbp)
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	peek
	leaq	-240(%rbp), %rdi
	movq	-208(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-192(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	-184(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movl	-36(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	peek
	leaq	-272(%rbp), %rdi
	movq	-240(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-224(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movl	-28(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	peek
	leaq	-304(%rbp), %rdi
	movq	-272(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-264(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-256(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-248(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	peek
	leaq	-176(%rbp), %rsi
	movq	-304(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-296(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-288(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	width, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	height, %xmm2
	mulsd	%xmm2, %xmm1
	movq	-440(%rbp), %rdi        # 8-byte Reload
	callq	gimp_bilinear_rgba
	jmp	.LBB5_13
.LBB5_8:                                # %if.end.26
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	checkbounds
	cmpl	$0, %eax
	jne	.LBB5_10
# BB#9:                                 # %if.then.29
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	background, %rax
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	background+8, %rax
	movq	%rax, 8(%rcx)
	movq	background+16, %rax
	movq	%rax, 16(%rcx)
	movq	background+24, %rax
	movq	%rax, 24(%rcx)
	jmp	.LBB5_13
.LBB5_10:                               # %if.end.30
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	checkbounds
	cmpl	$0, %eax
	jne	.LBB5_12
# BB#11:                                # %if.then.36
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	callq	peek
	jmp	.LBB5_13
.LBB5_12:                               # %if.end.37
	leaq	-336(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	peek
	leaq	-368(%rbp), %rdi
	movq	-336(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-36(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	peek
	leaq	-400(%rbp), %rdi
	movq	-368(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-28(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	peek
	leaq	-432(%rbp), %rdi
	movq	-400(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	peek
	leaq	-176(%rbp), %rsi
	movq	-432(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	width, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	height, %xmm2
	mulsd	%xmm2, %xmm1
	movq	-440(%rbp), %rdi        # 8-byte Reload
	callq	gimp_bilinear_rgba
.LBB5_13:                               # %return
	movq	-448(%rbp), %rax        # 8-byte Reload
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_image_color, .Lfunc_end5-get_image_color
	.cfi_endproc

	.globl	get_box_image_color
	.align	16, 0x90
	.type	get_box_image_color,@function
get_box_image_color:                    # @get_box_image_color
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, %rax
	movl	%esi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movslq	-4(%rbp), %rcx
	movq	box_drawables(,%rcx,8), %rcx
	movl	4(%rcx), %esi
	movl	%esi, -28(%rbp)
	movslq	-4(%rbp), %rcx
	movq	box_drawables(,%rcx,8), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -36(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -40(%rbp)
	movl	-4(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %r8d
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%r8d, %edx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	checkbounds_box_image
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	background, %rax
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	background+8, %rax
	movq	%rax, 8(%rcx)
	movq	background+16, %rax
	movq	%rax, 16(%rcx)
	movq	background+24, %rax
	movq	%rax, 24(%rcx)
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-4(%rbp), %edi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	checkbounds_box_image
	cmpl	$0, %eax
	jne	.LBB6_4
# BB#3:                                 # %if.then.12
	movl	-4(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	callq	peek_box_image
	jmp	.LBB6_5
.LBB6_4:                                # %if.end.13
	leaq	-208(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	peek_box_image
	leaq	-240(%rbp), %rdi
	movq	-208(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-4(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	peek_box_image
	leaq	-272(%rbp), %rdi
	movq	-240(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-4(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	peek_box_image
	leaq	-304(%rbp), %rdi
	movq	-272(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-4(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	peek_box_image
	leaq	-176(%rbp), %rsi
	movq	-304(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-312(%rbp), %rdi        # 8-byte Reload
	callq	gimp_bilinear_rgba
.LBB6_5:                                # %return
	movq	-320(%rbp), %rax        # 8-byte Reload
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_box_image_color, .Lfunc_end6-get_box_image_color
	.cfi_endproc

	.align	16, 0x90
	.type	checkbounds_box_image,@function
checkbounds_box_image:                  # @checkbounds_box_image
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movslq	-8(%rbp), %rax
	movq	box_drawables(,%rax,8), %rax
	movl	4(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	-8(%rbp), %rax
	movq	box_drawables(,%rax,8), %rax
	movl	8(%rax), %edx
	movl	%edx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB7_4
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -16(%rbp)
	jl	.LBB7_4
# BB#2:                                 # %lor.lhs.false.4
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB7_4
# BB#3:                                 # %lor.lhs.false.6
	movl	-16(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB7_5
.LBB7_4:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	movl	$1, -4(%rbp)
.LBB7_6:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	checkbounds_box_image, .Lfunc_end7-checkbounds_box_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4643176031446892544     # double 255
.LCPI8_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	peek_box_image,@function
peek_box_image:                         # @peek_box_image
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
	subq	$80, %rsp
	movq	%rdi, %rax
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movslq	-4(%rbp), %r8
	leaq	(%r8,%r8,2), %r8
	shlq	$4, %r8
	leaq	box_regions(%r8), %r8
	movl	-8(%rbp), %edx
	movl	$peek_box_image.data, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gimp_pixel_rgn_get_pixel
	movzbl	peek_box_image.data(%rip), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movzbl	peek_box_image.data+1(%rip), %ecx
	cvtsi2sdl	%ecx, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movzbl	peek_box_image.data+2(%rip), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movslq	-4(%rbp), %rax
	movq	box_drawables(,%rax,8), %rax
	cmpl	$4, 12(%rax)
	jne	.LBB8_5
# BB#1:                                 # %if.then
	movslq	-4(%rbp), %rax
	movq	box_drawables(,%rax,8), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then.10
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movzbl	peek_box_image.data+3(%rip), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB8_4:                                # %if.end
	jmp	.LBB8_6
.LBB8_5:                                # %if.else.14
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB8_6:                                # %if.end.16
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	peek_box_image, .Lfunc_end8-peek_box_image
	.cfi_endproc

	.globl	get_cylinder_image_color
	.align	16, 0x90
	.type	get_cylinder_image_color,@function
get_cylinder_image_color:               # @get_cylinder_image_color
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
	movl	%esi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movslq	-4(%rbp), %rcx
	movq	cylinder_drawables(,%rcx,8), %rcx
	movl	4(%rcx), %esi
	movl	%esi, -28(%rbp)
	movslq	-4(%rbp), %rcx
	movq	cylinder_drawables(,%rcx,8), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -36(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -40(%rbp)
	movl	-4(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %r8d
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%r8d, %edx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	checkbounds_cylinder_image
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	background, %rax
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	background+8, %rax
	movq	%rax, 8(%rcx)
	movq	background+16, %rax
	movq	%rax, 16(%rcx)
	movq	background+24, %rax
	movq	%rax, 24(%rcx)
	jmp	.LBB9_5
.LBB9_2:                                # %if.end
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-4(%rbp), %edi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	checkbounds_cylinder_image
	cmpl	$0, %eax
	jne	.LBB9_4
# BB#3:                                 # %if.then.12
	movl	-4(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	callq	peek_cylinder_image
	jmp	.LBB9_5
.LBB9_4:                                # %if.end.13
	leaq	-208(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	peek_cylinder_image
	leaq	-240(%rbp), %rdi
	movq	-208(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-4(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	peek_cylinder_image
	leaq	-272(%rbp), %rdi
	movq	-240(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-4(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	peek_cylinder_image
	leaq	-304(%rbp), %rdi
	movq	-272(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-4(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	peek_cylinder_image
	leaq	-176(%rbp), %rsi
	movq	-304(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-312(%rbp), %rdi        # 8-byte Reload
	callq	gimp_bilinear_rgba
.LBB9_5:                                # %return
	movq	-320(%rbp), %rax        # 8-byte Reload
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end9:
	.size	get_cylinder_image_color, .Lfunc_end9-get_cylinder_image_color
	.cfi_endproc

	.align	16, 0x90
	.type	checkbounds_cylinder_image,@function
checkbounds_cylinder_image:             # @checkbounds_cylinder_image
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movslq	-8(%rbp), %rax
	movq	cylinder_drawables(,%rax,8), %rax
	movl	4(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	-8(%rbp), %rax
	movq	cylinder_drawables(,%rax,8), %rax
	movl	8(%rax), %edx
	movl	%edx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB10_4
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -16(%rbp)
	jl	.LBB10_4
# BB#2:                                 # %lor.lhs.false.4
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB10_4
# BB#3:                                 # %lor.lhs.false.6
	movl	-16(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB10_5
.LBB10_4:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movl	$1, -4(%rbp)
.LBB10_6:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	checkbounds_cylinder_image, .Lfunc_end10-checkbounds_cylinder_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4643176031446892544     # double 255
.LCPI11_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	peek_cylinder_image,@function
peek_cylinder_image:                    # @peek_cylinder_image
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
	subq	$80, %rsp
	movq	%rdi, %rax
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movslq	-4(%rbp), %r8
	leaq	(%r8,%r8,2), %r8
	shlq	$4, %r8
	leaq	cylinder_regions(%r8), %r8
	movl	-8(%rbp), %edx
	movl	$peek_cylinder_image.data, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gimp_pixel_rgn_get_pixel
	movzbl	peek_cylinder_image.data(%rip), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI11_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movzbl	peek_cylinder_image.data+1(%rip), %ecx
	cvtsi2sdl	%ecx, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movzbl	peek_cylinder_image.data+2(%rip), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movslq	-4(%rbp), %rax
	movq	cylinder_drawables(,%rax,8), %rax
	cmpl	$4, 12(%rax)
	jne	.LBB11_5
# BB#1:                                 # %if.then
	movslq	-4(%rbp), %rax
	movq	cylinder_drawables(,%rax,8), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB11_3
# BB#2:                                 # %if.then.10
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	peek_cylinder_image.data+3(%rip), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB11_4:                               # %if.end
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.14
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB11_6:                               # %if.end.16
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	peek_cylinder_image, .Lfunc_end11-peek_cylinder_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	image_setup
	.align	16, 0x90
	.type	image_setup,@function
image_setup:                            # @image_setup
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %esi
	movl	%esi, -16(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-16(%rbp), %esi         # 4-byte Reload
	addl	%eax, %esi
	subl	$1, %esi
	movl	%esi, -20(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-20(%rbp), %esi         # 4-byte Reload
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	xorl	%edx, %edx
	movl	-24(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movabsq	$border_x1, %rsi
	movabsq	$border_y1, %rdi
	movabsq	$border_x2, %rcx
	movabsq	$border_y2, %r8
	movq	-8(%rbp), %r9
	movq	%r9, input_drawable
	movq	-8(%rbp), %r9
	movq	%r9, output_drawable
	movq	-8(%rbp), %r9
	movl	(%r9), %eax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	%r9, %rdx
	callq	gimp_drawable_mask_bounds
	movabsq	$source_region, %rdi
	xorl	%r10d, %r10d
	movq	input_drawable, %rcx
	movl	4(%rcx), %r11d
	movl	%r11d, width
	movq	input_drawable, %rcx
	movl	8(%rcx), %r11d
	movl	%r11d, height
	movq	input_drawable, %rsi
	movl	width, %r8d
	movl	height, %r9d
	movl	%r10d, %edx
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movslq	width, %rsi
	movslq	height, %rdi
	imulq	%rdi, %rsi
	movq	%rsi, maxcounter
	cmpl	$1, mapvals+400
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movabsq	$background, %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	jmp	.LBB12_3
.LBB12_2:                               # %if.else
	movabsq	$background, %rdi
	callq	gimp_context_get_background
	movabsq	$background, %rdi
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_rgb_set_alpha
.LBB12_3:                               # %if.end
	movl	$3, in_channels
	movq	input_drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$1, %eax
	jne	.LBB12_5
# BB#4:                                 # %if.then.12
	movl	in_channels, %eax
	addl	$1, %eax
	movl	%eax, in_channels
.LBB12_5:                               # %if.end.13
	cmpl	$1, -12(%rbp)
	jne	.LBB12_7
# BB#6:                                 # %if.then.16
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
.LBB12_7:                               # %if.end.22
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	image_setup, .Lfunc_end12-image_setup
	.cfi_endproc

	.type	preview_rgb_data,@object # @preview_rgb_data
	.bss
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

	.type	peek.data,@object       # @peek.data
	.local	peek.data
	.comm	peek.data,4,1
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

	.type	poke.col,@object        # @poke.col
	.local	poke.col
	.comm	poke.col,4,1
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

	.type	background,@object      # @background
	.globl	background
	.align	8
background:
	.zero	32
	.size	background, 32

	.type	box_drawables,@object   # @box_drawables
	.globl	box_drawables
	.align	16
box_drawables:
	.zero	48
	.size	box_drawables, 48

	.type	cylinder_drawables,@object # @cylinder_drawables
	.globl	cylinder_drawables
	.align	16
cylinder_drawables:
	.zero	16
	.size	cylinder_drawables, 16

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

	.type	box_regions,@object     # @box_regions
	.globl	box_regions
	.align	16
box_regions:
	.zero	288
	.size	box_regions, 288

	.type	cylinder_regions,@object # @cylinder_regions
	.globl	cylinder_regions
	.align	16
cylinder_regions:
	.zero	96
	.size	cylinder_regions, 96

	.type	old_depth,@object       # @old_depth
	.globl	old_depth
	.align	8
old_depth:
	.quad	0                       # 0x0
	.size	old_depth, 8

	.type	max_depth,@object       # @max_depth
	.globl	max_depth
	.align	8
max_depth:
	.quad	0                       # 0x0
	.size	max_depth, 8

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

	.type	image_id,@object        # @image_id
	.globl	image_id
	.align	4
image_id:
	.long	0                       # 0x0
	.size	image_id, 4

	.type	oldtreshold,@object     # @oldtreshold
	.globl	oldtreshold
	.align	8
oldtreshold:
	.quad	0                       # double 0
	.size	oldtreshold, 8

	.type	peek_box_image.data,@object # @peek_box_image.data
	.local	peek_box_image.data
	.comm	peek_box_image.data,4,1
	.type	peek_cylinder_image.data,@object # @peek_cylinder_image.data
	.local	peek_cylinder_image.data
	.comm	peek_cylinder_image.data,4,1

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
