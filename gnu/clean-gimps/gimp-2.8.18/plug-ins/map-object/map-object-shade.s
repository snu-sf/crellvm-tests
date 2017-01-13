	.text
	.file	"map-object-shade.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	get_ray_color_plane
	.align	16, 0x90
	.type	get_ray_color_plane,@function
get_ray_color_plane:                    # @get_ray_color_plane
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
	subq	$144, %rsp
	movq	%rdi, %rax
	movabsq	$get_ray_color_plane.ray, %rcx
	movabsq	$mapvals, %rdx
	movq	%rsi, -8(%rbp)
	movq	background, %rsi
	movq	%rsi, -40(%rbp)
	movq	background+8, %rsi
	movq	%rsi, -32(%rbp)
	movq	background+16, %rsi
	movq	%rsi, -24(%rbp)
	movq	background+24, %rsi
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_vector3_sub
	movabsq	$get_ray_color_plane.ray, %rdi
	callq	gimp_vector3_normalize
	movabsq	$get_ray_color_plane.ray, %rdi
	movabsq	$mapvals, %rsi
	movabsq	$get_ray_color_plane.spos, %rdx
	movabsq	$get_ray_color_plane.vx, %rcx
	movabsq	$get_ray_color_plane.vy, %r8
	callq	plane_intersect
	cmpl	$1, %eax
	jne	.LBB0_6
# BB#1:                                 # %if.then
	leaq	-72(%rbp), %rdi
	movabsq	$get_ray_color_plane.inside, %rsi
	movsd	get_ray_color_plane.vx, %xmm0 # xmm0 = mem[0],zero
	movsd	get_ray_color_plane.vy, %xmm1 # xmm1 = mem[0],zero
	callq	get_image_color
	xorps	%xmm0, %xmm0
	movq	-72(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-56(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-48(%rbp), %rsi
	movq	%rsi, -16(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_2
	jp	.LBB0_2
	jmp	.LBB0_5
.LBB0_2:                                # %land.lhs.true
	cmpl	$1, get_ray_color_plane.inside
	jne	.LBB0_5
# BB#3:                                 # %land.lhs.true.3
	cmpl	$2, mapvals+144
	je	.LBB0_5
# BB#4:                                 # %if.then.5
	leaq	-104(%rbp), %rdi
	movabsq	$get_ray_color_plane.spos, %rsi
	movabsq	$mapvals, %rax
	movq	%rax, %rcx
	addq	$72, %rcx
	leaq	-40(%rbp), %r8
	movq	%rax, %rdx
	addq	$200, %rdx
	movl	mapvals+144, %r9d
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%r9d, -132(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	-132(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	phong_shade
	leaq	-40(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_rgb_clamp
.LBB0_5:                                # %if.end
	jmp	.LBB0_6
.LBB0_6:                                # %if.end.7
	cmpl	$0, mapvals+400
	jne	.LBB0_9
# BB#7:                                 # %land.lhs.true.9
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB0_9
# BB#8:                                 # %if.then.12
	leaq	-40(%rbp), %rdi
	movabsq	$background, %rsi
	movl	$2, %edx
	callq	gimp_rgb_composite
.LBB0_9:                                # %if.end.13
	movq	-40(%rbp), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	get_ray_color_plane, .Lfunc_end0-get_ray_color_plane
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	plane_intersect,@function
plane_intersect:                        # @plane_intersect
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, imat
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm1, imat+32
	movq	-16(%rbp), %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, imat+64
	movsd	imat, %xmm1             # xmm1 = mem[0],zero
	mulsd	imat+40, %xmm1
	mulsd	imat+80, %xmm1
	movsd	imat+8, %xmm2           # xmm2 = mem[0],zero
	mulsd	imat+48, %xmm2
	mulsd	imat+64, %xmm2
	addsd	%xmm2, %xmm1
	movsd	imat+16, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+32, %xmm2
	mulsd	imat+72, %xmm2
	addsd	%xmm2, %xmm1
	movsd	imat+16, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+40, %xmm2
	mulsd	imat+64, %xmm2
	subsd	%xmm2, %xmm1
	movsd	imat, %xmm2             # xmm2 = mem[0],zero
	mulsd	imat+48, %xmm2
	mulsd	imat+72, %xmm2
	subsd	%xmm2, %xmm1
	movsd	imat+80, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+8, %xmm2
	mulsd	imat+32, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, plane_intersect.det
	movsd	plane_intersect.det, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_1
	jp	.LBB1_1
	jmp	.LBB1_4
.LBB1_1:                                # %if.then
	xorps	%xmm0, %xmm0
	movsd	imat+24, %xmm1          # xmm1 = mem[0],zero
	mulsd	imat+40, %xmm1
	mulsd	imat+80, %xmm1
	movsd	imat+8, %xmm2           # xmm2 = mem[0],zero
	mulsd	imat+48, %xmm2
	mulsd	imat+88, %xmm2
	addsd	%xmm2, %xmm1
	movsd	imat+16, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+56, %xmm2
	mulsd	imat+72, %xmm2
	addsd	%xmm2, %xmm1
	movsd	imat+16, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+40, %xmm2
	mulsd	imat+88, %xmm2
	subsd	%xmm2, %xmm1
	movsd	imat+48, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+72, %xmm2
	mulsd	imat+24, %xmm2
	subsd	%xmm2, %xmm1
	movsd	imat+80, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+8, %xmm2
	mulsd	imat+56, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, plane_intersect.det1
	movsd	imat, %xmm1             # xmm1 = mem[0],zero
	mulsd	imat+56, %xmm1
	mulsd	imat+80, %xmm1
	movsd	imat+24, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+48, %xmm2
	mulsd	imat+64, %xmm2
	addsd	%xmm2, %xmm1
	movsd	imat+16, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+32, %xmm2
	mulsd	imat+88, %xmm2
	addsd	%xmm2, %xmm1
	movsd	imat+16, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+56, %xmm2
	mulsd	imat+64, %xmm2
	subsd	%xmm2, %xmm1
	movsd	imat+48, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+88, %xmm2
	mulsd	imat, %xmm2
	subsd	%xmm2, %xmm1
	movsd	imat+80, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+24, %xmm2
	mulsd	imat+32, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, plane_intersect.det2
	movsd	imat, %xmm1             # xmm1 = mem[0],zero
	mulsd	imat+40, %xmm1
	mulsd	imat+88, %xmm1
	movsd	imat+8, %xmm2           # xmm2 = mem[0],zero
	mulsd	imat+56, %xmm2
	mulsd	imat+64, %xmm2
	addsd	%xmm2, %xmm1
	movsd	imat+24, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+32, %xmm2
	mulsd	imat+72, %xmm2
	addsd	%xmm2, %xmm1
	movsd	imat+24, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+40, %xmm2
	mulsd	imat+64, %xmm2
	subsd	%xmm2, %xmm1
	movsd	imat+56, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+72, %xmm2
	mulsd	imat, %xmm2
	subsd	%xmm2, %xmm1
	movsd	imat+88, %xmm2          # xmm2 = mem[0],zero
	mulsd	imat+8, %xmm2
	mulsd	imat+32, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, plane_intersect.det3
	movsd	plane_intersect.det1, %xmm1 # xmm1 = mem[0],zero
	divsd	plane_intersect.det, %xmm1
	movsd	%xmm1, plane_intersect.t
	movsd	plane_intersect.t, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_3
# BB#2:                                 # %if.then.67
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	plane_intersect.det2, %xmm2 # xmm2 = mem[0],zero
	divsd	plane_intersect.det, %xmm2
	subsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	movq	-40(%rbp), %rax
	movsd	%xmm3, (%rax)
	movsd	plane_intersect.det3, %xmm2 # xmm2 = mem[0],zero
	divsd	plane_intersect.det, %xmm2
	subsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	plane_intersect.t, %xmm1 # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	plane_intersect.t, %xmm1 # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	plane_intersect.t, %xmm1 # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB1_5
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %if.end.89
	movl	$0, -4(%rbp)
.LBB1_5:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	plane_intersect, .Lfunc_end1-plane_intersect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	phong_shade,@function
phong_shade:                            # @phong_shade
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
	pushq	%r14
	pushq	%rbx
	subq	$304, %rsp              # imm = 0x130
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
	movq	%rdi, %rax
	movl	16(%rbp), %r10d
	leaq	-96(%rbp), %r11
	movabsq	$mapvals, %rbx
	movq	%rbx, %r14
	addq	$152, %r14
	addq	$176, %rbx
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	%r10d, -60(%rbp)
	cmpl	$1, mapvals+144
	cmoveq	%rbx, %r14
	movq	%r14, -288(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -280(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -272(%rbp)
	movq	16(%rcx), %rcx
	movq	%rcx, -264(%rbp)
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -96(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -88(%rbp)
	movq	16(%rcx), %rdx
	movq	%rdx, -80(%rbp)
	movq	24(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movsd	mapvals+240, %xmm0      # xmm0 = mem[0],zero
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_rgb_multiply
	cmpl	$0, -60(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	leaq	-208(%rbp), %rdi
	movq	-288(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_vector3_sub
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movq	-288(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -208(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -200(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)
.LBB2_3:                                # %if.end
	leaq	-208(%rbp), %rdi
	callq	gimp_vector3_length
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -184(%rbp)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB2_4
	jp	.LBB2_4
	jmp	.LBB2_5
.LBB2_4:                                # %if.then.3
	leaq	-208(%rbp), %rdi
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-184(%rbp), %xmm0
	callq	gimp_vector3_mul
.LBB2_5:                                # %if.end.4
	leaq	-280(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	callq	gimp_vector3_inner_product
	xorps	%xmm1, %xmm1
	movsd	.LCPI2_1, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -168(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB2_10
# BB#6:                                 # %if.then.7
	leaq	-256(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_vector3_sub
	leaq	-256(%rbp), %rdi
	callq	gimp_vector3_normalize
	leaq	-280(%rbp), %rdi
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_vector3_mul
	leaq	-232(%rbp), %rdi
	leaq	-280(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	callq	gimp_vector3_sub
	leaq	-232(%rbp), %rdi
	leaq	-256(%rbp), %rsi
	callq	gimp_vector3_inner_product
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -176(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_8
# BB#7:                                 # %cond.true
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	mapvals+272, %xmm1      # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	jmp	.LBB2_9
.LBB2_9:                                # %cond.end
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rdi
	movsd	%xmm0, -176(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)
	movsd	mapvals+256, %xmm0      # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	leaq	-128(%rbp), %rdi
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	leaq	-160(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -160(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -152(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -136(%rbp)
	movsd	mapvals+264, %xmm0      # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	leaq	-160(%rbp), %rdi
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	leaq	-128(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	callq	gimp_rgb_add
	leaq	-128(%rbp), %rdi
	movsd	mapvals+248, %xmm0      # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	leaq	-128(%rbp), %rdi
	callq	gimp_rgb_clamp
	leaq	-96(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	callq	gimp_rgb_add
.LBB2_10:                               # %if.end.12
	movq	-96(%rbp), %rax
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-304(%rbp), %rax        # 8-byte Reload
	addq	$304, %rsp              # imm = 0x130
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	phong_shade, .Lfunc_end2-phong_shade
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	get_ray_color_sphere
	.align	16, 0x90
	.type	get_ray_color_sphere,@function
get_ray_color_sphere:                   # @get_ray_color_sphere
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	background, %rsi
	movq	%rsi, -40(%rbp)
	movq	background+8, %rsi
	movq	%rsi, -32(%rbp)
	movq	background+16, %rsi
	movq	%rsi, -24(%rbp)
	movq	background+24, %rsi
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	bx1, %xmm1              # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	ja	.LBB3_4
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	bx2, %xmm0
	ja	.LBB3_4
# BB#2:                                 # %lor.lhs.false.3
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	by1, %xmm1              # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB3_4
# BB#3:                                 # %lor.lhs.false.5
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	by2, %xmm0
	jbe	.LBB3_5
.LBB3_4:                                # %if.then
	movq	-40(%rbp), %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 24(%rcx)
	jmp	.LBB3_18
.LBB3_5:                                # %if.end
	movabsq	$get_ray_color_sphere.ray, %rdi
	movabsq	$mapvals, %rdx
	movq	-8(%rbp), %rsi
	callq	gimp_vector3_sub
	movabsq	$get_ray_color_sphere.ray, %rdi
	callq	gimp_vector3_normalize
	movabsq	$get_ray_color_sphere.ray, %rdi
	movabsq	$mapvals, %rsi
	movabsq	$get_ray_color_sphere.spos1, %rdx
	movabsq	$get_ray_color_sphere.spos2, %rcx
	callq	sphere_intersect
	cmpl	$1, %eax
	jne	.LBB3_14
# BB#6:                                 # %if.then.9
	movabsq	$get_ray_color_sphere.normal, %rdi
	movabsq	$get_ray_color_sphere.spos1, %rsi
	movabsq	$mapvals, %rax
	addq	$96, %rax
	movq	%rax, %rdx
	callq	gimp_vector3_sub
	movabsq	$get_ray_color_sphere.normal, %rdi
	callq	gimp_vector3_normalize
	movabsq	$get_ray_color_sphere.normal, %rdi
	movabsq	$get_ray_color_sphere.vx, %rsi
	movabsq	$get_ray_color_sphere.vy, %rdx
	callq	sphere_to_image
	leaq	-72(%rbp), %rdi
	movabsq	$get_ray_color_sphere.inside, %rsi
	movsd	get_ray_color_sphere.vx, %xmm0 # xmm0 = mem[0],zero
	movsd	get_ray_color_sphere.vy, %xmm1 # xmm1 = mem[0],zero
	callq	get_image_color
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB3_8
# BB#7:                                 # %if.then.11
	leaq	-104(%rbp), %rdi
	movabsq	$get_ray_color_sphere.spos1, %rsi
	movabsq	$mapvals, %rax
	movabsq	$get_ray_color_sphere.normal, %rcx
	leaq	-40(%rbp), %r8
	movq	%rax, %rdx
	addq	$200, %rdx
	movl	mapvals+144, %r9d
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	%r9d, -228(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	-228(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	phong_shade
	leaq	-40(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_rgb_clamp
	movabsq	$get_ray_color_sphere.normal, %rdi
	movabsq	$get_ray_color_sphere.spos2, %rsi
	movabsq	$mapvals, %rax
	addq	$96, %rax
	movq	%rax, %rdx
	callq	gimp_vector3_sub
	movabsq	$get_ray_color_sphere.normal, %rdi
	callq	gimp_vector3_normalize
	movabsq	$get_ray_color_sphere.normal, %rdi
	movabsq	$get_ray_color_sphere.vx, %rsi
	movabsq	$get_ray_color_sphere.vy, %rdx
	callq	sphere_to_image
	leaq	-136(%rbp), %rdi
	movabsq	$get_ray_color_sphere.inside, %rsi
	movsd	get_ray_color_sphere.vx, %xmm0 # xmm0 = mem[0],zero
	movsd	get_ray_color_sphere.vy, %xmm1 # xmm1 = mem[0],zero
	callq	get_image_color
	movabsq	$get_ray_color_sphere.normal, %rdi
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movq	-136(%rbp), %rax
	movq	%rax, get_ray_color_sphere.color2
	movq	-128(%rbp), %rax
	movq	%rax, get_ray_color_sphere.color2+8
	movq	-120(%rbp), %rax
	movq	%rax, get_ray_color_sphere.color2+16
	movq	-112(%rbp), %rax
	movq	%rax, get_ray_color_sphere.color2+24
	callq	gimp_vector3_mul
	leaq	-168(%rbp), %rdi
	movabsq	$get_ray_color_sphere.spos2, %rsi
	movabsq	$mapvals, %rax
	movabsq	$get_ray_color_sphere.normal, %rcx
	movabsq	$get_ray_color_sphere.color2, %r8
	movq	%rax, %rdx
	addq	$200, %rdx
	movl	mapvals+144, %r10d
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-240(%rbp), %r9         # 8-byte Reload
	movl	%r10d, (%rsp)
	callq	phong_shade
	movabsq	$get_ray_color_sphere.color2, %rdi
	movq	-168(%rbp), %rax
	movq	%rax, get_ray_color_sphere.color2
	movq	-160(%rbp), %rax
	movq	%rax, get_ray_color_sphere.color2+8
	movq	-152(%rbp), %rax
	movq	%rax, get_ray_color_sphere.color2+16
	movq	-144(%rbp), %rax
	movq	%rax, get_ray_color_sphere.color2+24
	callq	gimp_rgb_clamp
	leaq	-40(%rbp), %rdi
	movabsq	$get_ray_color_sphere.color2, %rsi
	movl	$1, %edx
	callq	gimp_rgb_composite
	leaq	-40(%rbp), %rdi
	callq	gimp_rgb_clamp
	jmp	.LBB3_13
.LBB3_8:                                # %if.else
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_9
	jp	.LBB3_9
	jmp	.LBB3_12
.LBB3_9:                                # %land.lhs.true
	cmpl	$1, get_ray_color_sphere.inside
	jne	.LBB3_12
# BB#10:                                # %land.lhs.true.18
	cmpl	$2, mapvals+144
	je	.LBB3_12
# BB#11:                                # %if.then.20
	leaq	-200(%rbp), %rdi
	movabsq	$get_ray_color_sphere.spos1, %rsi
	movabsq	$mapvals, %rax
	movabsq	$get_ray_color_sphere.normal, %rcx
	leaq	-40(%rbp), %r8
	movq	%rax, %rdx
	addq	$200, %rdx
	movl	mapvals+144, %r9d
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-248(%rbp), %rax        # 8-byte Reload
	movl	%r9d, -252(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	-252(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	phong_shade
	leaq	-40(%rbp), %rdi
	movq	-200(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_rgb_clamp
.LBB3_12:                               # %if.end.22
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.23
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.24
	cmpl	$0, mapvals+400
	jne	.LBB3_17
# BB#15:                                # %land.lhs.true.26
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB3_17
# BB#16:                                # %if.then.29
	leaq	-40(%rbp), %rdi
	movabsq	$background, %rsi
	movl	$2, %edx
	callq	gimp_rgb_composite
.LBB3_17:                               # %if.end.30
	movq	-40(%rbp), %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 24(%rcx)
.LBB3_18:                               # %return
	movq	-208(%rbp), %rax        # 8-byte Reload
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end3:
	.size	get_ray_color_sphere, .Lfunc_end3-get_ray_color_sphere
	.cfi_endproc

	.align	16, 0x90
	.type	sphere_intersect,@function
sphere_intersect:                       # @sphere_intersect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$sphere_intersect.t, %rax
	movabsq	$mapvals, %r8
	addq	$96, %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%r8, %rsi
	callq	gimp_vector3_sub
	movabsq	$sphere_intersect.t, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_vector3_inner_product
	movabsq	$sphere_intersect.t, %rax
	movsd	%xmm0, sphere_intersect.alpha
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector3_inner_product
	xorps	%xmm1, %xmm1
	movsd	%xmm0, sphere_intersect.beta
	movsd	sphere_intersect.alpha, %xmm0 # xmm0 = mem[0],zero
	mulsd	sphere_intersect.alpha, %xmm0
	subsd	sphere_intersect.beta, %xmm0
	movsd	mapvals+472, %xmm2      # xmm2 = mem[0],zero
	mulsd	mapvals+472, %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, sphere_intersect.tau
	movsd	sphere_intersect.tau, %xmm0 # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_4
# BB#1:                                 # %if.then
	movsd	sphere_intersect.tau, %xmm0 # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, sphere_intersect.tau
	movsd	sphere_intersect.alpha, %xmm0 # xmm0 = mem[0],zero
	addsd	sphere_intersect.tau, %xmm0
	movsd	%xmm0, sphere_intersect.s1
	movsd	sphere_intersect.alpha, %xmm0 # xmm0 = mem[0],zero
	subsd	sphere_intersect.tau, %xmm0
	movsd	%xmm0, sphere_intersect.s2
	movsd	sphere_intersect.s2, %xmm0 # xmm0 = mem[0],zero
	movsd	sphere_intersect.s1, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_3
# BB#2:                                 # %if.then.7
	movsd	sphere_intersect.s1, %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, sphere_intersect.tmp
	movsd	sphere_intersect.s2, %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, sphere_intersect.s1
	movsd	sphere_intersect.tmp, %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, sphere_intersect.s2
.LBB4_3:                                # %if.end
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	sphere_intersect.s1, %xmm1 # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	sphere_intersect.s1, %xmm1 # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	sphere_intersect.s1, %xmm1 # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	sphere_intersect.s2, %xmm1 # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	sphere_intersect.s2, %xmm1 # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	sphere_intersect.s2, %xmm1 # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB4_5
.LBB4_4:                                # %if.end.35
	movl	$0, -4(%rbp)
.LBB4_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sphere_intersect, .Lfunc_end4-sphere_intersect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI5_1:
	.quad	4607182418800017408     # double 1
.LCPI5_2:
	.quad	-4616189618054758400    # double -1
.LCPI5_3:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	sphere_to_image,@function
sphere_to_image:                        # @sphere_to_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$mapvals, %rax
	addq	$48, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_vector3_inner_product
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	movd	%rax, %xmm0
	callq	acos
	xorps	%xmm1, %xmm1
	movsd	.LCPI5_0, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, sphere_to_image.alpha
	movsd	sphere_to_image.alpha, %xmm0 # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB5_1
	jp	.LBB5_1
	jmp	.LBB5_2
.LBB5_1:                                # %lor.lhs.false
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_3
	jp	.LBB5_3
.LBB5_2:                                # %if.then
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB5_12
.LBB5_3:                                # %if.else
	movabsq	$mapvals, %rax
	addq	$24, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_vector3_inner_product
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movsd	sphere_to_image.alpha, %xmm2 # xmm2 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	sin
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, sphere_to_image.fac
	movsd	sphere_to_image.fac, %xmm0 # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_5
# BB#4:                                 # %cond.true
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB5_9
.LBB5_5:                                # %cond.false
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	ucomisd	sphere_to_image.fac, %xmm0
	jbe	.LBB5_7
# BB#6:                                 # %cond.true.8
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false.9
	movsd	sphere_to_image.fac, %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB5_8:                                # %cond.end
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB5_9:                                # %cond.end.10
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, sphere_to_image.fac
	movsd	sphere_to_image.fac, %xmm0 # xmm0 = mem[0],zero
	callq	acos
	leaq	-48(%rbp), %rdi
	movabsq	$mapvals, %rax
	movq	%rax, %rcx
	addq	$48, %rcx
	addq	$24, %rax
	movsd	.LCPI5_3, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	gimp_vector3_cross_product
	movabsq	$sphere_to_image.cross_prod, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, sphere_to_image.cross_prod
	movq	-40(%rbp), %rax
	movq	%rax, sphere_to_image.cross_prod+8
	movq	-32(%rbp), %rax
	movq	%rax, sphere_to_image.cross_prod+16
	movq	-8(%rbp), %rsi
	callq	gimp_vector3_inner_product
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_11
# BB#10:                                # %if.then.16
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB5_11:                               # %if.end
	jmp	.LBB5_12
.LBB5_12:                               # %if.end.18
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sphere_to_image, .Lfunc_end5-sphere_to_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4576918229304087675     # double 0.01
.LCPI6_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	compute_bounding_box
	.align	16, 0x90
	.type	compute_bounding_box,@function
compute_bounding_box:                   # @compute_bounding_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-80(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movabsq	$mapvals, %rdx
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	mapvals+96, %rax
	movq	%rax, -24(%rbp)
	movq	mapvals+104, %rax
	movq	%rax, -16(%rbp)
	movq	mapvals+112, %rax
	movq	%rax, -8(%rbp)
	movaps	%xmm0, %xmm1
	addsd	mapvals+472, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -24(%rbp)
	movaps	%xmm0, %xmm1
	addsd	mapvals+472, %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -16(%rbp)
	movq	mapvals+96, %rax
	movq	%rax, -48(%rbp)
	movq	mapvals+104, %rax
	movq	%rax, -40(%rbp)
	movq	mapvals+112, %rax
	movq	%rax, -32(%rbp)
	movaps	%xmm0, %xmm1
	addsd	mapvals+472, %xmm1
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
	addsd	mapvals+472, %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	callq	gimp_vector3_sub
	leaq	-80(%rbp), %rdi
	callq	gimp_vector3_normalize
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_1
	jp	.LBB6_1
	jmp	.LBB6_2
.LBB6_1:                                # %if.then
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	mulsd	mapvals+16, %xmm0
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	mapvals, %xmm0          # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	mapvals+8, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB6_2:                                # %if.end
	leaq	-80(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movabsq	$mapvals, %rdx
	callq	gimp_vector3_sub
	leaq	-80(%rbp), %rdi
	callq	gimp_vector3_normalize
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_3
	jp	.LBB6_3
	jmp	.LBB6_4
.LBB6_3:                                # %if.then.20
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	mulsd	mapvals+16, %xmm0
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	mapvals, %xmm0          # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	mapvals+8, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB6_4:                                # %if.end.32
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, bx1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, by1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, bx2
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, by2
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	compute_bounding_box, .Lfunc_end6-compute_bounding_box
	.cfi_endproc

	.globl	vecmulmat
	.align	16, 0x90
	.type	vecmulmat,@function
vecmulmat:                              # @vecmulmat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cvtsd2ss	(%rdx), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rdx
	cvtsd2ss	8(%rdx), %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdx
	cvtsd2ss	16(%rdx), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	mulss	(%rdx), %xmm0
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	mulss	4(%rdx), %xmm1
	addss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	mulss	8(%rdx), %xmm1
	addss	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	addss	12(%rdx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	mulss	16(%rdx), %xmm0
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	mulss	20(%rdx), %xmm1
	addss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	mulss	24(%rdx), %xmm1
	addss	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	addss	28(%rdx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 8(%rdx)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	mulss	32(%rdx), %xmm0
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	mulss	36(%rdx), %xmm1
	addss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	mulss	40(%rdx), %xmm1
	addss	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	addss	44(%rdx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 16(%rdx)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	vecmulmat, .Lfunc_end7-vecmulmat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4580687790476533049     # double 0.017453292519943295
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_1:
	.long	1065353216              # float 1
	.text
	.globl	rotatemat
	.align	16, 0x90
	.type	rotatemat,@function
rotatemat:                              # @rotatemat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorps	%xmm1, %xmm1
	movsd	.LCPI8_0, %xmm2         # xmm2 = mem[0],zero
	movss	%xmm0, -4(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	movsd	%xmm2, -168(%rbp)       # 8-byte Spill
	callq	sin
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	cos
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	(%rsi), %xmm0
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	8(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	16(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_6
	jp	.LBB8_6
# BB#1:                                 # %if.then
	movl	$0, -148(%rbp)
.LBB8_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -148(%rbp)
	jge	.LBB8_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-148(%rbp), %rax
	movss	%xmm0, -144(%rbp,%rax,4)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB8_2
.LBB8_5:                                # %for.end
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-144(%rbp), %rcx
	movss	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -144(%rbp)
	movss	%xmm0, -124(%rbp)
	movss	%xmm0, -104(%rbp)
	movss	%xmm0, -84(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	jmp	.LBB8_7
.LBB8_6:                                # %if.end
	movss	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm3           # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm3, (%rax)
	cvtss2sd	-28(%rbp), %xmm2
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm3, 8(%rax)
	cvtss2sd	-28(%rbp), %xmm2
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm3         # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm3, 16(%rax)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	(%rax), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -40(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	8(%rax), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -44(%rbp)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	16(%rax), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -48(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	8(%rax), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -52(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	16(%rax), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -56(%rbp)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	(%rax), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -60(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	cvtss2sd	-32(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -64(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	cvtss2sd	-32(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -68(%rbp)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	cvtss2sd	-32(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -72(%rbp)
	movaps	%xmm0, %xmm2
	subss	-36(%rbp), %xmm2
	movss	%xmm2, -76(%rbp)
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-40(%rbp), %xmm2
	addss	-36(%rbp), %xmm2
	movq	-24(%rbp), %rax
	movss	%xmm2, (%rax)
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm2
	subss	-72(%rbp), %xmm2
	movq	-24(%rbp), %rax
	movss	%xmm2, 16(%rax)
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-60(%rbp), %xmm2
	addss	-68(%rbp), %xmm2
	movq	-24(%rbp), %rax
	movss	%xmm2, 32(%rax)
	movq	-24(%rbp), %rax
	movss	%xmm1, 48(%rax)
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm2
	addss	-72(%rbp), %xmm2
	movq	-24(%rbp), %rax
	movss	%xmm2, 4(%rax)
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm2
	addss	-36(%rbp), %xmm2
	movq	-24(%rbp), %rax
	movss	%xmm2, 20(%rax)
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm2
	subss	-64(%rbp), %xmm2
	movq	-24(%rbp), %rax
	movss	%xmm2, 36(%rax)
	movq	-24(%rbp), %rax
	movss	%xmm1, 52(%rax)
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-60(%rbp), %xmm2
	subss	-68(%rbp), %xmm2
	movq	-24(%rbp), %rax
	movss	%xmm2, 8(%rax)
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm2
	addss	-64(%rbp), %xmm2
	movq	-24(%rbp), %rax
	movss	%xmm2, 24(%rax)
	movss	-76(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm2
	addss	-36(%rbp), %xmm2
	movq	-24(%rbp), %rax
	movss	%xmm2, 40(%rax)
	movq	-24(%rbp), %rax
	movss	%xmm1, 56(%rax)
	movq	-24(%rbp), %rax
	movss	%xmm1, 12(%rax)
	movq	-24(%rbp), %rax
	movss	%xmm1, 28(%rax)
	movq	-24(%rbp), %rax
	movss	%xmm1, 44(%rax)
	movq	-24(%rbp), %rax
	movss	%xmm0, 60(%rax)
.LBB8_7:                                # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	rotatemat, .Lfunc_end8-rotatemat
	.cfi_endproc

	.globl	transpose_mat
	.align	16, 0x90
	.type	transpose_mat,@function
transpose_mat:                          # @transpose_mat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	cmpl	$4, -12(%rbp)
	jge	.LBB9_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, -16(%rbp)
.LBB9_3:                                # %for.cond.1
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB9_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-16(%rbp), %eax
	shll	$2, %eax
	addl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	movl	-12(%rbp), %eax
	shll	$2, %eax
	addl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-16(%rbp), %eax
	shll	$2, %eax
	addl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-12(%rbp), %eax
	shll	$2, %eax
	addl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_7
.LBB9_7:                                # %for.inc.16
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_1
.LBB9_8:                                # %for.end.18
	popq	%rbp
	retq
.Lfunc_end9:
	.size	transpose_mat, .Lfunc_end9-transpose_mat
	.cfi_endproc

	.globl	matmul
	.align	16, 0x90
	.type	matmul,@function
matmul:                                 # @matmul
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
                                        #       Child Loop BB10_5 Depth 3
	cmpl	$4, -28(%rbp)
	jge	.LBB10_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$0, -32(%rbp)
.LBB10_3:                               # %for.cond.1
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_5 Depth 3
	cmpl	$4, -32(%rbp)
	jge	.LBB10_10
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB10_3 Depth=2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movl	$0, -36(%rbp)
.LBB10_5:                               # %for.cond.4
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -36(%rbp)
	jge	.LBB10_8
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-36(%rbp), %eax
	shll	$2, %eax
	addl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-32(%rbp), %eax
	shll	$2, %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	mulss	(%rdx,%rcx,4), %xmm0
	addss	-40(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_5
.LBB10_8:                               # %for.end
                                        #   in Loop: Header=BB10_3 Depth=2
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-32(%rbp), %eax
	shll	$2, %eax
	addl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
# BB#9:                                 # %for.inc.17
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB10_3
.LBB10_10:                              # %for.end.19
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_11
.LBB10_11:                              # %for.inc.20
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB10_1
.LBB10_12:                              # %for.end.22
	popq	%rbp
	retq
.Lfunc_end10:
	.size	matmul, .Lfunc_end10-matmul
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1065353216              # float 1
	.text
	.globl	ident_mat
	.align	16, 0x90
	.type	ident_mat,@function
ident_mat:                              # @ident_mat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	cmpl	$4, -12(%rbp)
	jge	.LBB11_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$0, -16(%rbp)
.LBB11_3:                               # %for.cond.1
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -16(%rbp)
	jge	.LBB11_9
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB11_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB11_3 Depth=2
	movss	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-16(%rbp), %eax
	shll	$2, %eax
	addl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else
                                        #   in Loop: Header=BB11_3 Depth=2
	xorps	%xmm0, %xmm0
	movl	-16(%rbp), %eax
	shll	$2, %eax
	addl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
.LBB11_7:                               # %if.end
                                        #   in Loop: Header=BB11_3 Depth=2
	jmp	.LBB11_8
.LBB11_8:                               # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB11_3
.LBB11_9:                               # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_10
.LBB11_10:                              # %for.inc.9
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_1
.LBB11_11:                              # %for.end.11
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ident_mat, .Lfunc_end11-ident_mat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI12_1:
	.quad	4607182418800017408     # double 1
.LCPI12_2:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	get_ray_color_box
	.align	16, 0x90
	.type	get_ray_color_box,@function
get_ray_color_box:                      # @get_ray_color_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$800, %rsp              # imm = 0x320
	movq	%rdi, %rax
	leaq	-128(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-80(%rbp), %r8
	movq	%rsi, -8(%rbp)
	movq	background, %rsi
	movq	%rsi, -208(%rbp)
	movq	background+8, %rsi
	movq	%rsi, -200(%rbp)
	movq	background+16, %rsi
	movq	%rsi, -192(%rbp)
	movq	background+24, %rsi
	movq	%rsi, -184(%rbp)
	movq	mapvals, %rsi
	movq	%rsi, -80(%rbp)
	movq	mapvals+8, %rsi
	movq	%rsi, -72(%rbp)
	movq	mapvals+16, %rsi
	movq	%rsi, -64(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %r9
	movq	%r9, -104(%rbp)
	movq	8(%rsi), %r9
	movq	%r9, -96(%rbp)
	movq	16(%rsi), %rsi
	movq	%rsi, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	mapvals+96, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	mapvals+104, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	mapvals+112, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	mapvals+96, %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	mapvals+104, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	mapvals+112, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_vector3_sub
	leaq	-128(%rbp), %rdi
	callq	gimp_vector3_normalize
	leaq	-304(%rbp), %rax
	movabsq	$rotmat, %rcx
	movl	$64, %r10d
	movl	%r10d, %edx
	movq	%rax, %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-664(%rbp), %rdi        # 8-byte Reload
	callq	transpose_mat
	leaq	-32(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-304(%rbp), %rdx
	callq	vecmulmat
	leaq	-56(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	leaq	-304(%rbp), %rdx
	callq	vecmulmat
	movabsq	$mapvals, %rax
	addq	$120, %rax
	leaq	-32(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-480(%rbp), %rdi
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -464(%rbp)
	movsd	%xmm0, -384(%rbp)
	movq	(%rax), %rsi
	movq	%rsi, (%rsp)
	movq	8(%rax), %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 64(%rsp)
	callq	intersect_box
	cmpl	$1, %eax
	jne	.LBB12_15
# BB#1:                                 # %if.then
	movl	$0, -308(%rbp)
.LBB12_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -308(%rbp)
	jge	.LBB12_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB12_2 Depth=1
	leaq	-152(%rbp), %rdi
	movabsq	$rotmat, %rdx
	leaq	-480(%rbp), %rax
	movslq	-308(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	vecmulmat
	leaq	-176(%rbp), %rdi
	movabsq	$rotmat, %rdx
	leaq	-480(%rbp), %rax
	movslq	-308(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	addq	$48, %rax
	movq	%rax, %rsi
	callq	vecmulmat
	leaq	-480(%rbp), %rax
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	mapvals+96, %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	mapvals+104, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	mapvals+112, %xmm0
	movsd	%xmm0, -136(%rbp)
	movslq	-308(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	-152(%rbp), %rcx
	movq	%rcx, 24(%rdx)
	movq	-144(%rbp), %rcx
	movq	%rcx, 32(%rdx)
	movq	-136(%rbp), %rcx
	movq	%rcx, 40(%rdx)
	movslq	-308(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movq	-176(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	-168(%rbp), %rcx
	movq	%rcx, 56(%rax)
	movq	-160(%rbp), %rcx
	movq	%rcx, 64(%rax)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	-308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -308(%rbp)
	jmp	.LBB12_2
.LBB12_5:                               # %for.end
	leaq	-512(%rbp), %rdi
	movl	-408(%rbp), %esi
	movsd	-480(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-472(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	get_box_image_color
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movq	-512(%rbp), %rdi
	movq	%rdi, -208(%rbp)
	movq	-504(%rbp), %rdi
	movq	%rdi, -200(%rbp)
	movq	-496(%rbp), %rdi
	movq	%rdi, -192(%rbp)
	movq	-488(%rbp), %rdi
	movq	%rdi, -184(%rbp)
	ucomisd	-184(%rbp), %xmm0
	jbe	.LBB12_10
# BB#6:                                 # %if.then.42
	leaq	-544(%rbp), %rdi
	movabsq	$mapvals, %rax
	leaq	-208(%rbp), %r8
	movq	%rax, %rcx
	addq	$200, %rcx
	leaq	-480(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$24, %rsi
	addq	$48, %rdx
	movl	mapvals+144, %r9d
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-680(%rbp), %r10        # 8-byte Reload
	movl	%r9d, -684(%rbp)        # 4-byte Spill
	movq	%r10, %r9
	movl	-684(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	callq	phong_shade
	leaq	-208(%rbp), %rdi
	movq	-544(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_rgb_clamp
	leaq	-576(%rbp), %rdi
	movl	-328(%rbp), %esi
	movsd	-400(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-392(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	get_box_image_color
	movsd	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero
	leaq	-480(%rbp), %rax
	movq	-576(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	-568(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-560(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	-552(%rbp), %rcx
	movq	%rcx, -216(%rbp)
	addq	$80, %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	gimp_vector3_mul
	leaq	-608(%rbp), %rdi
	movabsq	$mapvals, %rax
	leaq	-240(%rbp), %r8
	movq	%rax, %rcx
	addq	$200, %rcx
	leaq	-480(%rbp), %rdx
	movq	%rdx, %r9
	addq	$80, %r9
	addq	$24, %r9
	addq	$80, %rdx
	addq	$48, %rdx
	movl	mapvals+144, %esi
	movl	%esi, -688(%rbp)        # 4-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-704(%rbp), %r9         # 8-byte Reload
	movl	-688(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	callq	phong_shade
	leaq	-240(%rbp), %rdi
	movq	-608(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-600(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-592(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-584(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_rgb_clamp
	cmpl	$0, mapvals+400
	jne	.LBB12_9
# BB#7:                                 # %land.lhs.true
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-216(%rbp), %xmm0
	jbe	.LBB12_9
# BB#8:                                 # %if.then.65
	leaq	-240(%rbp), %rdi
	movabsq	$background, %rsi
	movl	$2, %edx
	callq	gimp_rgb_composite
.LBB12_9:                               # %if.end
	leaq	-208(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	movl	$1, %edx
	callq	gimp_rgb_composite
	leaq	-208(%rbp), %rdi
	callq	gimp_rgb_clamp
	jmp	.LBB12_14
.LBB12_10:                              # %if.else
	xorps	%xmm0, %xmm0
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_11
	jp	.LBB12_11
	jmp	.LBB12_13
.LBB12_11:                              # %land.lhs.true.68
	cmpl	$2, mapvals+144
	je	.LBB12_13
# BB#12:                                # %if.then.70
	leaq	-640(%rbp), %rdi
	movabsq	$mapvals, %rax
	leaq	-208(%rbp), %r8
	movq	%rax, %rcx
	addq	$200, %rcx
	leaq	-480(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$24, %rsi
	addq	$48, %rdx
	movl	mapvals+144, %r9d
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-712(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-720(%rbp), %r10        # 8-byte Reload
	movl	%r9d, -724(%rbp)        # 4-byte Spill
	movq	%r10, %r9
	movl	-724(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	callq	phong_shade
	leaq	-208(%rbp), %rdi
	movq	-640(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-632(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_rgb_clamp
.LBB12_13:                              # %if.end.76
	jmp	.LBB12_14
.LBB12_14:                              # %if.end.77
	jmp	.LBB12_18
.LBB12_15:                              # %if.else.78
	cmpl	$1, mapvals+400
	jne	.LBB12_17
# BB#16:                                # %if.then.80
	leaq	-208(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
.LBB12_17:                              # %if.end.81
	jmp	.LBB12_18
.LBB12_18:                              # %if.end.82
	movq	-208(%rbp), %rax
	movq	-648(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-656(%rbp), %rax        # 8-byte Reload
	addq	$800, %rsp              # imm = 0x320
	popq	%rbp
	retq
.Lfunc_end12:
	.size	get_ray_color_box, .Lfunc_end12-get_ray_color_box
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4611686018427387904     # double 2
.LCPI13_1:
	.quad	4607182418800017408     # double 1
.LCPI13_2:
	.quad	-4616189618054758400    # double -1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI13_3:
	.long	1119092736              # float 90
	.text
	.align	16, 0x90
	.type	intersect_box,@function
intersect_box:                          # @intersect_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              # imm = 0x1F0
	leaq	64(%rbp), %rax
	leaq	40(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	leaq	-160(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -324(%rbp)
	movq	%rsi, %rdi
	movsd	%xmm1, -336(%rbp)       # 8-byte Spill
	movsd	-336(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gimp_vector3_set
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	leaq	-160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movsd	-368(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_1, %xmm2        # xmm2 = mem[0],zero
	leaq	-160(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	movsd	-376(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-344(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movsd	16(%rax), %xmm3         # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movslq	-324(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	-8(%rbp), %rcx
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movq	-360(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rsi
	movq	%rsi, (%rsp)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rsp)
	movq	-352(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdi
	movq	%rdi, 24(%rsp)
	movq	8(%rsi), %rdi
	movq	%rdi, 32(%rsp)
	movq	16(%rsi), %rdi
	movq	%rdi, 40(%rsp)
	movq	%rcx, %rdi
	callq	intersect_rect
	cmpl	$1, %eax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_1, %xmm2        # xmm2 = mem[0],zero
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movl	$0, 72(%rax)
	movl	-324(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -324(%rbp)
	movslq	%ecx, %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movl	$1, -244(%rbp)
.LBB13_2:                               # %if.end
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-344(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movsd	16(%rax), %xmm3         # xmm3 = mem[0],zero
	movd	%xmm3, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm3
	divsd	%xmm0, %xmm3
	movslq	-324(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	-8(%rbp), %rcx
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movq	-360(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rsi
	movq	%rsi, (%rsp)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rsp)
	movq	-352(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdi
	movq	%rdi, 24(%rsp)
	movq	8(%rsi), %rdi
	movq	%rdi, 32(%rsp)
	movq	16(%rsi), %rdi
	movq	%rdi, 40(%rsp)
	movq	%rcx, %rdi
	callq	intersect_rect
	cmpl	$1, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then.21
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movl	$1, 72(%rax)
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	subsd	(%rax), %xmm1
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	%xmm1, (%rax)
	movl	-324(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -324(%rbp)
	movslq	%ecx, %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movl	$1, -244(%rbp)
.LBB13_4:                               # %if.end.35
	cmpl	$2, -324(%rbp)
	jge	.LBB13_8
# BB#5:                                 # %if.then.37
	movss	.LCPI13_3, %xmm0        # xmm0 = mem[0],zero,zero,zero
	leaq	-320(%rbp), %rsi
	leaq	-160(%rbp), %rdi
	callq	rotatemat
	leaq	-32(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movq	-360(%rbp), %rsi        # 8-byte Reload
	callq	vecmulmat
	leaq	-56(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movq	-352(%rbp), %rsi        # 8-byte Reload
	callq	vecmulmat
	leaq	-32(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	movsd	16(%rdi), %xmm2         # xmm2 = mem[0],zero
	movsd	8(%rdi), %xmm3          # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movq	(%rdx), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rsi), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rsi), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rax, %rdi
	callq	intersect_rect
	cmpl	$1, %eax
	jne	.LBB13_7
# BB#6:                                 # %if.then.49
	leaq	-320(%rbp), %rdi
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movl	$2, 72(%rax)
	callq	transpose_mat
	leaq	-80(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	vecmulmat
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-64(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	-324(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -324(%rbp)
	movslq	%ecx, %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movsd	-400(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movl	$1, -244(%rbp)
.LBB13_7:                               # %if.end.64
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.65
	cmpl	$2, -324(%rbp)
	jge	.LBB13_12
# BB#9:                                 # %if.then.67
	movss	.LCPI13_3, %xmm0        # xmm0 = mem[0],zero,zero,zero
	leaq	-320(%rbp), %rsi
	leaq	-160(%rbp), %rdi
	callq	rotatemat
	leaq	-32(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movq	-360(%rbp), %rsi        # 8-byte Reload
	callq	vecmulmat
	leaq	-56(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movq	-352(%rbp), %rsi        # 8-byte Reload
	callq	vecmulmat
	leaq	-32(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	movsd	16(%rdi), %xmm2         # xmm2 = mem[0],zero
	movsd	8(%rdi), %xmm3          # xmm3 = mem[0],zero
	movd	%xmm3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm3
	divsd	%xmm0, %xmm3
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movq	(%rdx), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rsi), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rsi), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rax, %rdi
	callq	intersect_rect
	cmpl	$1, %eax
	jne	.LBB13_11
# BB#10:                                # %if.then.81
	leaq	-320(%rbp), %rdi
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movl	$3, 72(%rax)
	callq	transpose_mat
	leaq	-80(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	vecmulmat
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-64(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movaps	%xmm1, %xmm2
	subsd	8(%rax), %xmm2
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	%xmm2, 8(%rax)
	movl	-324(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -324(%rbp)
	movslq	%ecx, %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movsd	-408(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movl	$1, -244(%rbp)
.LBB13_11:                              # %if.end.104
	jmp	.LBB13_12
.LBB13_12:                              # %if.end.105
	cmpl	$2, -324(%rbp)
	jge	.LBB13_16
# BB#13:                                # %if.then.107
	movss	.LCPI13_3, %xmm0        # xmm0 = mem[0],zero,zero,zero
	leaq	-320(%rbp), %rsi
	leaq	-160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	rotatemat
	leaq	-32(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movq	-360(%rbp), %rsi        # 8-byte Reload
	callq	vecmulmat
	leaq	-56(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movq	-352(%rbp), %rsi        # 8-byte Reload
	callq	vecmulmat
	leaq	-32(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	movsd	(%rsi), %xmm3           # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movslq	-324(%rbp), %rdi
	imulq	$80, %rdi, %rdi
	addq	-8(%rbp), %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 40(%rsp)
	callq	intersect_rect
	cmpl	$1, %eax
	jne	.LBB13_15
# BB#14:                                # %if.then.120
	leaq	-320(%rbp), %rdi
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movl	$4, 72(%rax)
	callq	transpose_mat
	leaq	-80(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	vecmulmat
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-64(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	-324(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -324(%rbp)
	movslq	%ecx, %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	movsd	%xmm1, -416(%rbp)       # 8-byte Spill
	movsd	-416(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movl	$1, -244(%rbp)
.LBB13_15:                              # %if.end.136
	jmp	.LBB13_16
.LBB13_16:                              # %if.end.137
	cmpl	$2, -324(%rbp)
	jge	.LBB13_20
# BB#17:                                # %if.then.139
	movss	.LCPI13_3, %xmm0        # xmm0 = mem[0],zero,zero,zero
	leaq	-320(%rbp), %rsi
	leaq	-160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	rotatemat
	leaq	-32(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movq	-360(%rbp), %rsi        # 8-byte Reload
	callq	vecmulmat
	leaq	-56(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movq	-352(%rbp), %rsi        # 8-byte Reload
	callq	vecmulmat
	leaq	-32(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	movsd	(%rsi), %xmm3           # xmm3 = mem[0],zero
	movd	%xmm3, %rdi
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rdi
	movd	%rdi, %xmm3
	divsd	%xmm0, %xmm3
	movslq	-324(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	-8(%rbp), %rcx
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movq	(%rax), %rdi
	movq	%rdi, (%rsp)
	movq	8(%rax), %rdi
	movq	%rdi, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	%rcx, %rdi
	callq	intersect_rect
	cmpl	$1, %eax
	jne	.LBB13_19
# BB#18:                                # %if.then.153
	leaq	-320(%rbp), %rdi
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movl	$5, 72(%rax)
	callq	transpose_mat
	leaq	-80(%rbp), %rdi
	leaq	-320(%rbp), %rdx
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	vecmulmat
	movsd	.LCPI13_2, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI13_1, %xmm2        # xmm2 = mem[0],zero
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	subsd	(%rax), %xmm2
	movslq	-324(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	%xmm2, (%rax)
	movl	-324(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -324(%rbp)
	movslq	%ecx, %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	movsd	%xmm1, -424(%rbp)       # 8-byte Spill
	movsd	-424(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movl	$1, -244(%rbp)
.LBB13_19:                              # %if.end.173
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.174
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	96(%rax), %xmm0
	jbe	.LBB13_22
# BB#21:                                # %if.then.179
	movl	$80, %eax
	movl	%eax, %ecx
	leaq	-240(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$80, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-8(%rbp), %rcx
	addq	$80, %rcx
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
.LBB13_22:                              # %if.end.184
	movl	-244(%rbp), %eax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end13:
	.size	intersect_box, .Lfunc_end13-intersect_box
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
.LCPI14_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	get_ray_color_cylinder
	.align	16, 0x90
	.type	get_ray_color_cylinder,@function
get_ray_color_cylinder:                 # @get_ray_color_cylinder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$784, %rsp              # imm = 0x310
	movq	%rdi, %rax
	leaq	-128(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-80(%rbp), %r8
	movq	%rsi, -8(%rbp)
	movq	background, %rsi
	movq	%rsi, -208(%rbp)
	movq	background+8, %rsi
	movq	%rsi, -200(%rbp)
	movq	background+16, %rsi
	movq	%rsi, -192(%rbp)
	movq	background+24, %rsi
	movq	%rsi, -184(%rbp)
	movq	mapvals, %rsi
	movq	%rsi, -80(%rbp)
	movq	mapvals+8, %rsi
	movq	%rsi, -72(%rbp)
	movq	mapvals+16, %rsi
	movq	%rsi, -64(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %r9
	movq	%r9, -104(%rbp)
	movq	8(%rsi), %r9
	movq	%r9, -96(%rbp)
	movq	16(%rsi), %rsi
	movq	%rsi, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	mapvals+96, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	mapvals+104, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	mapvals+112, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	mapvals+96, %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	mapvals+104, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	mapvals+112, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_vector3_sub
	leaq	-128(%rbp), %rdi
	callq	gimp_vector3_normalize
	leaq	-304(%rbp), %rax
	movabsq	$rotmat, %rcx
	movl	$64, %r10d
	movl	%r10d, %edx
	movq	%rax, %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-664(%rbp), %rdi        # 8-byte Reload
	callq	transpose_mat
	leaq	-32(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-304(%rbp), %rdx
	callq	vecmulmat
	leaq	-56(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	leaq	-304(%rbp), %rdx
	callq	vecmulmat
	leaq	-32(%rbp), %rax
	leaq	-56(%rbp), %rcx
	leaq	-480(%rbp), %rdi
	movq	(%rax), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 40(%rsp)
	callq	intersect_cylinder
	cmpl	$1, %eax
	jne	.LBB14_15
# BB#1:                                 # %if.then
	movl	$0, -308(%rbp)
.LBB14_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -308(%rbp)
	jge	.LBB14_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB14_2 Depth=1
	leaq	-152(%rbp), %rdi
	movabsq	$rotmat, %rdx
	leaq	-480(%rbp), %rax
	movslq	-308(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	vecmulmat
	leaq	-176(%rbp), %rdi
	movabsq	$rotmat, %rdx
	leaq	-480(%rbp), %rax
	movslq	-308(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	addq	$48, %rax
	movq	%rax, %rsi
	callq	vecmulmat
	leaq	-480(%rbp), %rax
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	mapvals+96, %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	mapvals+104, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	mapvals+112, %xmm0
	movsd	%xmm0, -136(%rbp)
	movslq	-308(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	-152(%rbp), %rcx
	movq	%rcx, 24(%rdx)
	movq	-144(%rbp), %rcx
	movq	%rcx, 32(%rdx)
	movq	-136(%rbp), %rcx
	movq	%rcx, 40(%rdx)
	movslq	-308(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movq	-176(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	-168(%rbp), %rcx
	movq	%rcx, 56(%rax)
	movq	-160(%rbp), %rcx
	movq	%rcx, 64(%rax)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB14_2 Depth=1
	movl	-308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -308(%rbp)
	jmp	.LBB14_2
.LBB14_5:                               # %for.end
	leaq	-512(%rbp), %rdi
	movl	-408(%rbp), %esi
	movsd	-480(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-472(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	get_cylinder_color
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-512(%rbp), %rdi
	movq	%rdi, -208(%rbp)
	movq	-504(%rbp), %rdi
	movq	%rdi, -200(%rbp)
	movq	-496(%rbp), %rdi
	movq	%rdi, -192(%rbp)
	movq	-488(%rbp), %rdi
	movq	%rdi, -184(%rbp)
	ucomisd	-184(%rbp), %xmm0
	jbe	.LBB14_10
# BB#6:                                 # %if.then.39
	leaq	-544(%rbp), %rdi
	movabsq	$mapvals, %rax
	leaq	-208(%rbp), %r8
	movq	%rax, %rcx
	addq	$200, %rcx
	leaq	-480(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$24, %rsi
	addq	$48, %rdx
	movl	mapvals+144, %r9d
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-680(%rbp), %r10        # 8-byte Reload
	movl	%r9d, -684(%rbp)        # 4-byte Spill
	movq	%r10, %r9
	movl	-684(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	callq	phong_shade
	leaq	-208(%rbp), %rdi
	movq	-544(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_rgb_clamp
	leaq	-576(%rbp), %rdi
	movl	-328(%rbp), %esi
	movsd	-400(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-392(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	get_cylinder_color
	movsd	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-480(%rbp), %rax
	movq	-576(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	-568(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-560(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	-552(%rbp), %rcx
	movq	%rcx, -216(%rbp)
	addq	$80, %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	gimp_vector3_mul
	leaq	-608(%rbp), %rdi
	movabsq	$mapvals, %rax
	leaq	-240(%rbp), %r8
	movq	%rax, %rcx
	addq	$200, %rcx
	leaq	-480(%rbp), %rdx
	movq	%rdx, %r9
	addq	$80, %r9
	addq	$24, %r9
	addq	$80, %rdx
	addq	$48, %rdx
	movl	mapvals+144, %esi
	movl	%esi, -688(%rbp)        # 4-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-704(%rbp), %r9         # 8-byte Reload
	movl	-688(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	callq	phong_shade
	leaq	-240(%rbp), %rdi
	movq	-608(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-600(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-592(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-584(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_rgb_clamp
	cmpl	$0, mapvals+400
	jne	.LBB14_9
# BB#7:                                 # %land.lhs.true
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-216(%rbp), %xmm0
	jbe	.LBB14_9
# BB#8:                                 # %if.then.62
	leaq	-240(%rbp), %rdi
	movabsq	$background, %rsi
	movl	$2, %edx
	callq	gimp_rgb_composite
.LBB14_9:                               # %if.end
	leaq	-208(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	movl	$1, %edx
	callq	gimp_rgb_composite
	leaq	-208(%rbp), %rdi
	callq	gimp_rgb_clamp
	jmp	.LBB14_14
.LBB14_10:                              # %if.else
	xorps	%xmm0, %xmm0
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB14_11
	jp	.LBB14_11
	jmp	.LBB14_13
.LBB14_11:                              # %land.lhs.true.65
	cmpl	$2, mapvals+144
	je	.LBB14_13
# BB#12:                                # %if.then.67
	leaq	-640(%rbp), %rdi
	movabsq	$mapvals, %rax
	leaq	-208(%rbp), %r8
	movq	%rax, %rcx
	addq	$200, %rcx
	leaq	-480(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$24, %rsi
	addq	$48, %rdx
	movl	mapvals+144, %r9d
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-712(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-720(%rbp), %r10        # 8-byte Reload
	movl	%r9d, -724(%rbp)        # 4-byte Spill
	movq	%r10, %r9
	movl	-724(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	callq	phong_shade
	leaq	-208(%rbp), %rdi
	movq	-640(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-632(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_rgb_clamp
.LBB14_13:                              # %if.end.73
	jmp	.LBB14_14
.LBB14_14:                              # %if.end.74
	jmp	.LBB14_18
.LBB14_15:                              # %if.else.75
	cmpl	$1, mapvals+400
	jne	.LBB14_17
# BB#16:                                # %if.then.77
	leaq	-208(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
.LBB14_17:                              # %if.end.78
	jmp	.LBB14_18
.LBB14_18:                              # %if.end.79
	movq	-208(%rbp), %rax
	movq	-648(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-656(%rbp), %rax        # 8-byte Reload
	addq	$784, %rsp              # imm = 0x310
	popq	%rbp
	retq
.Lfunc_end14:
	.size	get_ray_color_cylinder, .Lfunc_end14-get_ray_color_cylinder
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4616189618054758400     # double 4
.LCPI15_1:
	.quad	4611686018427387904     # double 2
.LCPI15_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI15_3:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI15_4:
	.quad	-4616189618054758400    # double -1
.LCPI15_5:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	intersect_cylinder,@function
intersect_cylinder:                     # @intersect_cylinder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	leaq	40(%rbp), %rax
	leaq	16(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_1, %xmm2        # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	$0, -76(%rbp)
	movsd	(%rax), %xmm3           # xmm3 = mem[0],zero
	mulsd	(%rax), %xmm3
	movsd	16(%rax), %xmm4         # xmm4 = mem[0],zero
	mulsd	16(%rax), %xmm4
	addsd	%xmm4, %xmm3
	movsd	%xmm3, -16(%rbp)
	movsd	(%rcx), %xmm3           # xmm3 = mem[0],zero
	mulsd	(%rax), %xmm3
	movsd	16(%rcx), %xmm4         # xmm4 = mem[0],zero
	mulsd	16(%rax), %xmm4
	addsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm2
	movsd	%xmm2, -24(%rbp)
	movsd	(%rcx), %xmm2           # xmm2 = mem[0],zero
	mulsd	(%rcx), %xmm2
	movsd	16(%rcx), %xmm3         # xmm3 = mem[0],zero
	mulsd	16(%rcx), %xmm3
	addsd	%xmm3, %xmm2
	movsd	mapvals+480, %xmm3      # xmm3 = mem[0],zero
	mulsd	mapvals+480, %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm2, -32(%rbp)
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	mulsd	-16(%rbp), %xmm1
	mulsd	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jb	.LBB15_22
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -48(%rbp)
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB15_2
	jp	.LBB15_2
	jmp	.LBB15_21
.LBB15_2:                               # %if.then.29
	movl	$1, -76(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	addsd	-48(%rbp), %xmm0
	divsd	-56(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	subsd	-48(%rbp), %xmm0
	divsd	-56(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 96(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	96(%rax), %xmm0
	jbe	.LBB15_4
# BB#3:                                 # %if.then.42
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 96(%rax)
.LBB15_4:                               # %if.end
	movl	$0, -80(%rbp)
.LBB15_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -80(%rbp)
	jge	.LBB15_20
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB15_5 Depth=1
	xorps	%xmm0, %xmm0
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movslq	-80(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	-8(%rbp), %rcx
	movsd	16(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	-96(%rbp), %rcx         # 8-byte Reload
	mulsd	(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movslq	-80(%rbp), %rdx
	imulq	$80, %rdx, %rdx
	addq	-8(%rbp), %rdx
	movsd	%xmm1, 24(%rdx)
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movslq	-80(%rbp), %rdx
	imulq	$80, %rdx, %rdx
	addq	-8(%rbp), %rdx
	movsd	16(%rdx), %xmm2         # xmm2 = mem[0],zero
	mulsd	8(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movslq	-80(%rbp), %rdx
	imulq	$80, %rdx, %rdx
	addq	-8(%rbp), %rdx
	movsd	%xmm1, 32(%rdx)
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movslq	-80(%rbp), %rdx
	imulq	$80, %rdx, %rdx
	addq	-8(%rbp), %rdx
	movsd	16(%rdx), %xmm2         # xmm2 = mem[0],zero
	mulsd	16(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movslq	-80(%rbp), %rdx
	imulq	$80, %rdx, %rdx
	addq	-8(%rbp), %rdx
	movsd	%xmm1, 40(%rdx)
	movslq	-80(%rbp), %rdx
	imulq	$80, %rdx, %rdx
	addq	-8(%rbp), %rdx
	movslq	-80(%rbp), %rsi
	imulq	$80, %rsi, %rsi
	addq	-8(%rbp), %rsi
	movq	24(%rsi), %rdi
	movq	%rdi, 48(%rdx)
	movq	32(%rsi), %rdi
	movq	%rdi, 56(%rdx)
	movq	40(%rsi), %rsi
	movq	%rsi, 64(%rdx)
	movslq	-80(%rbp), %rdx
	imulq	$80, %rdx, %rdx
	addq	-8(%rbp), %rdx
	movsd	%xmm0, 56(%rdx)
	movslq	-80(%rbp), %rdx
	imulq	$80, %rdx, %rdx
	addq	-8(%rbp), %rdx
	addq	$48, %rdx
	movq	%rdx, %rdi
	callq	gimp_vector3_normalize
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	movsd	mapvals+488, %xmm1      # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI15_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_3, %xmm2        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	divsd	mapvals+488, %xmm0
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movl	$0, 72(%rax)
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	ja	.LBB15_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB15_5 Depth=1
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_18
.LBB15_8:                               # %if.then.129
                                        #   in Loop: Header=BB15_5 Depth=1
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB15_13
# BB#9:                                 # %if.then.135
                                        #   in Loop: Header=BB15_5 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rsi
	movq	%rsi, 24(%rsp)
	movq	8(%rdx), %rsi
	movq	%rsi, 32(%rsp)
	movq	16(%rdx), %rsi
	movq	%rsi, 40(%rsp)
	movq	%rax, %rdi
	callq	intersect_circle
	cmpl	$0, %eax
	jne	.LBB15_11
# BB#10:                                # %if.then.140
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	$0, -76(%rbp)
	jmp	.LBB15_12
.LBB15_11:                              # %if.else
                                        #   in Loop: Header=BB15_5 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI15_5, %xmm1        # xmm1 = mem[0],zero
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movl	$2, 72(%rax)
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movaps	%xmm1, %xmm2
	subsd	8(%rax), %xmm2
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	%xmm2, 8(%rax)
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
.LBB15_12:                              # %if.end.154
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_17
.LBB15_13:                              # %if.else.155
                                        #   in Loop: Header=BB15_5 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rsi
	movq	%rsi, 24(%rsp)
	movq	8(%rdx), %rsi
	movq	%rsi, 32(%rsp)
	movq	16(%rdx), %rsi
	movq	%rsi, 40(%rsp)
	movq	%rax, %rdi
	callq	intersect_circle
	cmpl	$0, %eax
	jne	.LBB15_15
# BB#14:                                # %if.then.161
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	$0, -76(%rbp)
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.162
                                        #   in Loop: Header=BB15_5 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI15_4, %xmm1        # xmm1 = mem[0],zero
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	movl	$1, 72(%rax)
	movslq	-80(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	-128(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
.LBB15_16:                              # %if.end.169
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_17
.LBB15_17:                              # %if.end.170
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_18
.LBB15_18:                              # %if.end.171
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_19
.LBB15_19:                              # %for.inc
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB15_5
.LBB15_20:                              # %for.end
	jmp	.LBB15_21
.LBB15_21:                              # %if.end.172
	jmp	.LBB15_22
.LBB15_22:                              # %if.end.173
	movl	-76(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	intersect_cylinder, .Lfunc_end15-intersect_cylinder
	.cfi_endproc

	.align	16, 0x90
	.type	get_cylinder_color,@function
get_cylinder_color:                     # @get_cylinder_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, %rax
	movl	%esi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	cmpl	$0, -4(%rbp)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	jne	.LBB16_2
# BB#1:                                 # %if.then
	leaq	-96(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	get_image_color
	movq	-96(%rbp), %rsi
	movq	%rsi, -56(%rbp)
	movq	-88(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-72(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	jmp	.LBB16_3
.LBB16_2:                               # %if.else
	leaq	-128(%rbp), %rdi
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%eax, %esi
	callq	get_cylinder_image_color
	movq	-128(%rbp), %rdi
	movq	%rdi, -56(%rbp)
	movq	-120(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movq	-112(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rdi, -32(%rbp)
.LBB16_3:                               # %if.end
	movq	-56(%rbp), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-136(%rbp), %rax        # 8-byte Reload
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	get_cylinder_color, .Lfunc_end16-get_cylinder_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	intersect_rect,@function
intersect_rect:                         # @intersect_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	leaq	40(%rbp), %rax
	leaq	16(%rbp), %rcx
	xorps	%xmm3, %xmm3
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movl	$0, -36(%rbp)
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jne	.LBB17_1
	jp	.LBB17_1
	jmp	.LBB17_7
.LBB17_1:                               # %if.then
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax         # 8-byte Reload
	subsd	16(%rax), %xmm0
	movq	-64(%rbp), %rcx         # 8-byte Reload
	divsd	16(%rcx), %xmm0
	movq	-32(%rbp), %rdx
	movsd	%xmm0, 16(%rdx)
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rdx
	movsd	%xmm0, 24(%rdx)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rdx
	movsd	%xmm0, 32(%rdx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdx
	movsd	%xmm0, 40(%rdx)
	movq	-32(%rbp), %rdx
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB17_6
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB17_6
# BB#3:                                 # %land.lhs.true.23
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB17_6
# BB#4:                                 # %land.lhs.true.28
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB17_6
# BB#5:                                 # %if.then.32
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	divsd	-8(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	$1, -36(%rbp)
.LBB17_6:                               # %if.end
	jmp	.LBB17_7
.LBB17_7:                               # %if.end.43
	movl	-36(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end17:
	.size	intersect_rect, .Lfunc_end17-intersect_rect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	intersect_circle,@function
intersect_circle:                       # @intersect_circle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	40(%rbp), %rax
	leaq	16(%rbp), %rcx
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB18_1
	jp	.LBB18_1
	jmp	.LBB18_4
.LBB18_1:                               # %if.then
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax         # 8-byte Reload
	subsd	8(%rax), %xmm0
	movq	-56(%rbp), %rcx         # 8-byte Reload
	divsd	8(%rcx), %xmm0
	movq	-16(%rbp), %rdx
	movsd	%xmm0, 16(%rdx)
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	movsd	%xmm0, 24(%rdx)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	%xmm0, 32(%rdx)
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	16(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	movsd	%xmm0, 40(%rdx)
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	24(%rdx), %xmm0
	movq	-16(%rbp), %rdx
	movsd	40(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	40(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	mapvals+480, %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB18_3
# BB#2:                                 # %if.then.26
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	mapvals+480, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	mapvals+480, %xmm0
	divsd	-40(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	mapvals+480, %xmm0
	divsd	-40(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	$1, -20(%rbp)
.LBB18_3:                               # %if.end
	jmp	.LBB18_4
.LBB18_4:                               # %if.end.36
	movl	-20(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	intersect_circle, .Lfunc_end18-intersect_circle
	.cfi_endproc

	.type	get_ray_color_plane.inside,@object # @get_ray_color_plane.inside
	.local	get_ray_color_plane.inside
	.comm	get_ray_color_plane.inside,4,4
	.type	get_ray_color_plane.ray,@object # @get_ray_color_plane.ray
	.local	get_ray_color_plane.ray
	.comm	get_ray_color_plane.ray,24,8
	.type	get_ray_color_plane.spos,@object # @get_ray_color_plane.spos
	.local	get_ray_color_plane.spos
	.comm	get_ray_color_plane.spos,24,8
	.type	get_ray_color_plane.vx,@object # @get_ray_color_plane.vx
	.local	get_ray_color_plane.vx
	.comm	get_ray_color_plane.vx,8,8
	.type	get_ray_color_plane.vy,@object # @get_ray_color_plane.vy
	.local	get_ray_color_plane.vy
	.comm	get_ray_color_plane.vy,8,8
	.type	get_ray_color_sphere.color2,@object # @get_ray_color_sphere.color2
	.local	get_ray_color_sphere.color2
	.comm	get_ray_color_sphere.color2,32,8
	.type	get_ray_color_sphere.inside,@object # @get_ray_color_sphere.inside
	.local	get_ray_color_sphere.inside
	.comm	get_ray_color_sphere.inside,4,4
	.type	get_ray_color_sphere.normal,@object # @get_ray_color_sphere.normal
	.local	get_ray_color_sphere.normal
	.comm	get_ray_color_sphere.normal,24,8
	.type	get_ray_color_sphere.ray,@object # @get_ray_color_sphere.ray
	.local	get_ray_color_sphere.ray
	.comm	get_ray_color_sphere.ray,24,8
	.type	get_ray_color_sphere.spos1,@object # @get_ray_color_sphere.spos1
	.local	get_ray_color_sphere.spos1
	.comm	get_ray_color_sphere.spos1,24,8
	.type	get_ray_color_sphere.spos2,@object # @get_ray_color_sphere.spos2
	.local	get_ray_color_sphere.spos2
	.comm	get_ray_color_sphere.spos2,24,8
	.type	get_ray_color_sphere.vx,@object # @get_ray_color_sphere.vx
	.local	get_ray_color_sphere.vx
	.comm	get_ray_color_sphere.vx,8,8
	.type	get_ray_color_sphere.vy,@object # @get_ray_color_sphere.vy
	.local	get_ray_color_sphere.vy
	.comm	get_ray_color_sphere.vy,8,8
	.type	bx1,@object             # @bx1
	.local	bx1
	.comm	bx1,8,8
	.type	bx2,@object             # @bx2
	.local	bx2
	.comm	bx2,8,8
	.type	by1,@object             # @by1
	.local	by1
	.comm	by1,8,8
	.type	by2,@object             # @by2
	.local	by2
	.comm	by2,8,8
	.type	get_ray_color,@object   # @get_ray_color
	.bss
	.globl	get_ray_color
	.align	8
get_ray_color:
	.quad	0
	.size	get_ray_color, 8

	.type	plane_intersect.det,@object # @plane_intersect.det
	.local	plane_intersect.det
	.comm	plane_intersect.det,8,8
	.type	plane_intersect.det1,@object # @plane_intersect.det1
	.local	plane_intersect.det1
	.comm	plane_intersect.det1,8,8
	.type	plane_intersect.det2,@object # @plane_intersect.det2
	.local	plane_intersect.det2
	.comm	plane_intersect.det2,8,8
	.type	plane_intersect.det3,@object # @plane_intersect.det3
	.local	plane_intersect.det3
	.comm	plane_intersect.det3,8,8
	.type	plane_intersect.t,@object # @plane_intersect.t
	.local	plane_intersect.t
	.comm	plane_intersect.t,8,8
	.type	sphere_intersect.alpha,@object # @sphere_intersect.alpha
	.local	sphere_intersect.alpha
	.comm	sphere_intersect.alpha,8,8
	.type	sphere_intersect.beta,@object # @sphere_intersect.beta
	.local	sphere_intersect.beta
	.comm	sphere_intersect.beta,8,8
	.type	sphere_intersect.tau,@object # @sphere_intersect.tau
	.local	sphere_intersect.tau
	.comm	sphere_intersect.tau,8,8
	.type	sphere_intersect.s1,@object # @sphere_intersect.s1
	.local	sphere_intersect.s1
	.comm	sphere_intersect.s1,8,8
	.type	sphere_intersect.s2,@object # @sphere_intersect.s2
	.local	sphere_intersect.s2
	.comm	sphere_intersect.s2,8,8
	.type	sphere_intersect.tmp,@object # @sphere_intersect.tmp
	.local	sphere_intersect.tmp
	.comm	sphere_intersect.tmp,8,8
	.type	sphere_intersect.t,@object # @sphere_intersect.t
	.local	sphere_intersect.t
	.comm	sphere_intersect.t,24,8
	.type	sphere_to_image.alpha,@object # @sphere_to_image.alpha
	.local	sphere_to_image.alpha
	.comm	sphere_to_image.alpha,8,8
	.type	sphere_to_image.fac,@object # @sphere_to_image.fac
	.local	sphere_to_image.fac
	.comm	sphere_to_image.fac,8,8
	.type	sphere_to_image.cross_prod,@object # @sphere_to_image.cross_prod
	.local	sphere_to_image.cross_prod
	.comm	sphere_to_image.cross_prod,24,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
