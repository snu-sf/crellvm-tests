	.text
	.file	"map-object-apply.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	4645040803167600640     # double 360
.LCPI0_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI0_3:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	init_compute
	.align	16, 0x90
	.type	init_compute,@function
init_compute:                           # @init_compute
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
	subq	$304, %rsp              # imm = 0x130
	movl	mapvals+384(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	ja	.LBB0_15
# BB#16:                                # %entry
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_1:                                # %sw.bb
	movabsq	$mapvals, %rax
	addq	$24, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_3, %xmm2         # xmm2 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$48, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$24, %rax
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	mapvals+432, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm3
	mulsd	mapvals+440, %xmm3
	divsd	%xmm0, %xmm3
	mulsd	mapvals+448, %xmm1
	divsd	%xmm0, %xmm1
	movq	%rax, %rdi
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_rotate
	movabsq	$mapvals, %rax
	addq	$48, %rax
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	mapvals+432, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm3
	mulsd	mapvals+440, %xmm3
	divsd	%xmm0, %xmm3
	mulsd	mapvals+448, %xmm1
	divsd	%xmm0, %xmm1
	movq	%rax, %rdi
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_rotate
	callq	compute_bounding_box
	movabsq	$get_ray_color_sphere, %rax
	movq	%rax, get_ray_color
	jmp	.LBB0_15
.LBB0_2:                                # %sw.bb.11
	movabsq	$mapvals, %rax
	addq	$24, %rax
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$48, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$72, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$24, %rax
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	mapvals+432, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm3
	mulsd	mapvals+440, %xmm3
	divsd	%xmm0, %xmm3
	mulsd	mapvals+448, %xmm1
	divsd	%xmm0, %xmm1
	movq	%rax, %rdi
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_rotate
	movabsq	$mapvals, %rax
	addq	$48, %rax
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	mapvals+432, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm3
	mulsd	mapvals+440, %xmm3
	divsd	%xmm0, %xmm3
	mulsd	mapvals+448, %xmm1
	divsd	%xmm0, %xmm1
	movq	%rax, %rdi
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_rotate
	leaq	-32(%rbp), %rdi
	movabsq	$mapvals, %rax
	movq	%rax, %rcx
	addq	$24, %rcx
	addq	$48, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	gimp_vector3_cross_product
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movq	%rax, mapvals+72
	movq	-24(%rbp), %rax
	movq	%rax, mapvals+80
	movq	-16(%rbp), %rax
	movq	%rax, mapvals+88
	ucomisd	mapvals+88, %xmm0
	jbe	.LBB0_4
# BB#3:                                 # %if.then
	movabsq	$mapvals, %rax
	addq	$72, %rax
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_vector3_mul
.LBB0_4:                                # %if.end
	movabsq	$get_ray_color_plane, %rax
	movsd	mapvals+24, %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	%xmm0, imat+8
	movsd	mapvals+32, %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	%xmm0, imat+40
	movsd	mapvals+40, %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	%xmm0, imat+72
	movsd	mapvals+48, %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	%xmm0, imat+16
	movsd	mapvals+56, %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	%xmm0, imat+48
	movsd	mapvals+64, %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	%xmm0, imat+80
	movsd	mapvals+96, %xmm0       # xmm0 = mem[0],zero
	subsd	mapvals, %xmm0
	movsd	%xmm0, imat+24
	movsd	mapvals+104, %xmm0      # xmm0 = mem[0],zero
	subsd	mapvals+8, %xmm0
	movsd	%xmm0, imat+56
	movsd	mapvals+112, %xmm0      # xmm0 = mem[0],zero
	subsd	mapvals+16, %xmm0
	movsd	%xmm0, imat+88
	movq	%rax, get_ray_color
	jmp	.LBB0_15
.LBB0_5:                                # %sw.bb.32
	movabsq	$mapvals, %rax
	addq	$24, %rax
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movabsq	$get_ray_color_box, %rcx
	movq	%rcx, get_ray_color
	movq	%rax, %rdi
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	movsd	-128(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$48, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$72, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$rotmat, %rdi
	callq	ident_mat
	movabsq	$mapvals, %rax
	addq	$24, %rax
	movabsq	$a, %rsi
	cvtsd2ss	mapvals+432, %xmm0
	movq	%rax, %rdi
	callq	rotatemat
	movabsq	$a, %rdi
	movabsq	$rotmat, %rsi
	movabsq	$b, %rdx
	callq	matmul
	movabsq	$mapvals, %rax
	addq	$48, %rax
	movabsq	$a, %rsi
	movabsq	$rotmat, %rcx
	movabsq	$b, %rdx
	movl	$64, %r8d
	movl	%r8d, %edi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	memcpy
	cvtsd2ss	mapvals+440, %xmm0
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	callq	rotatemat
	movabsq	$a, %rdi
	movabsq	$rotmat, %rsi
	movabsq	$b, %rdx
	callq	matmul
	movabsq	$mapvals, %rax
	addq	$72, %rax
	movabsq	$a, %rsi
	movabsq	$rotmat, %rcx
	movabsq	$b, %rdx
	movl	$64, %r8d
	movl	%r8d, %edi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	memcpy
	cvtsd2ss	mapvals+448, %xmm0
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	callq	rotatemat
	movabsq	$a, %rdi
	movabsq	$rotmat, %rsi
	movabsq	$b, %rdx
	callq	matmul
	movabsq	$rotmat, %rax
	movabsq	$b, %rcx
	movl	$64, %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	$0, -4(%rbp)
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -4(%rbp)
	jge	.LBB0_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-4(%rbp), %rax
	movl	mapvals+496(,%rax,4), %edi
	callq	gimp_drawable_get
	xorl	%edi, %edi
	movabsq	$box_regions, %rcx
	movslq	-4(%rbp), %rdx
	movq	%rax, box_drawables(,%rdx,8)
	movslq	-4(%rbp), %rax
	imulq	$48, %rax, %rax
	addq	%rax, %rcx
	movslq	-4(%rbp), %rax
	movq	box_drawables(,%rax,8), %rsi
	movslq	-4(%rbp), %rax
	movq	box_drawables(,%rax,8), %rax
	movl	4(%rax), %r8d
	movslq	-4(%rbp), %rax
	movq	box_drawables(,%rax,8), %rax
	movl	8(%rax), %r9d
	movl	%edi, -196(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	-196(%rbp), %edx        # 4-byte Reload
	movl	-196(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_6
.LBB0_9:                                # %for.end
	jmp	.LBB0_15
.LBB0_10:                               # %sw.bb.47
	movabsq	$mapvals, %rax
	addq	$24, %rax
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movabsq	$get_ray_color_cylinder, %rcx
	movq	%rcx, get_ray_color
	movq	%rax, %rdi
	movsd	%xmm1, -208(%rbp)       # 8-byte Spill
	movsd	-208(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$48, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movsd	-216(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$72, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$rotmat, %rdi
	callq	ident_mat
	movabsq	$mapvals, %rax
	addq	$24, %rax
	movabsq	$a, %rsi
	cvtsd2ss	mapvals+432, %xmm0
	movq	%rax, %rdi
	callq	rotatemat
	movabsq	$a, %rdi
	movabsq	$rotmat, %rsi
	movabsq	$b, %rdx
	callq	matmul
	movabsq	$mapvals, %rax
	addq	$48, %rax
	movabsq	$a, %rsi
	movabsq	$rotmat, %rcx
	movabsq	$b, %rdx
	movl	$64, %r8d
	movl	%r8d, %edi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	memcpy
	cvtsd2ss	mapvals+440, %xmm0
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	callq	rotatemat
	movabsq	$a, %rdi
	movabsq	$rotmat, %rsi
	movabsq	$b, %rdx
	callq	matmul
	movabsq	$mapvals, %rax
	addq	$72, %rax
	movabsq	$a, %rsi
	movabsq	$rotmat, %rcx
	movabsq	$b, %rdx
	movl	$64, %r8d
	movl	%r8d, %edi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	memcpy
	cvtsd2ss	mapvals+448, %xmm0
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	callq	rotatemat
	movabsq	$a, %rdi
	movabsq	$rotmat, %rsi
	movabsq	$b, %rdx
	callq	matmul
	movabsq	$rotmat, %rax
	movabsq	$b, %rcx
	movl	$64, %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	$0, -4(%rbp)
.LBB0_11:                               # %for.cond.51
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -4(%rbp)
	jge	.LBB0_14
# BB#12:                                # %for.body.54
                                        #   in Loop: Header=BB0_11 Depth=1
	movslq	-4(%rbp), %rax
	movl	mapvals+520(,%rax,4), %edi
	callq	gimp_drawable_get
	xorl	%edi, %edi
	movabsq	$cylinder_regions, %rcx
	movslq	-4(%rbp), %rdx
	movq	%rax, cylinder_drawables(,%rdx,8)
	movslq	-4(%rbp), %rax
	imulq	$48, %rax, %rax
	addq	%rax, %rcx
	movslq	-4(%rbp), %rax
	movq	cylinder_drawables(,%rax,8), %rsi
	movslq	-4(%rbp), %rax
	movq	cylinder_drawables(,%rax,8), %rax
	movl	4(%rax), %r8d
	movslq	-4(%rbp), %rax
	movq	cylinder_drawables(,%rax,8), %rax
	movl	8(%rax), %r9d
	movl	%edi, -276(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	-276(%rbp), %edx        # 4-byte Reload
	movl	-276(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
# BB#13:                                # %for.inc.70
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_14:                               # %for.end.72
	jmp	.LBB0_15
.LBB0_15:                               # %sw.epilog
	cvttsd2si	mapvals+456, %eax
	movslq	%eax, %rcx
	movq	%rcx, max_depth
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end0:
	.size	init_compute, .Lfunc_end0-init_compute
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_1
	.quad	.LBB0_5
	.quad	.LBB0_10

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4636737291354636288     # double 100
.LCPI1_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	compute_image
	.align	16, 0x90
	.type	compute_image,@function
compute_image:                          # @compute_image
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
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	$0, -56(%rbp)
	movl	$-1, -84(%rbp)
	movl	$-1, -88(%rbp)
	movl	$0, -92(%rbp)
	callq	init_compute
	cmpl	$0, mapvals+392
	je	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movl	width, %edi
	movl	height, %esi
	callq	gimp_image_new
	movl	%eax, -84(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movl	image_id, %eax
	movl	%eax, -84(%rbp)
.LBB1_3:                                # %if.end
	movl	-84(%rbp), %edi
	callq	gimp_image_undo_group_start
	cmpl	$0, mapvals+392
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jne	.LBB1_7
# BB#4:                                 # %lor.lhs.false
	cmpl	$0, mapvals+396
	jne	.LBB1_7
# BB#5:                                 # %lor.lhs.false.4
	cmpl	$0, mapvals+400
	je	.LBB1_11
# BB#6:                                 # %land.lhs.true
	movq	output_drawable, %rax
	cmpl	$4, 12(%rax)
	je	.LBB1_11
.LBB1_7:                                # %if.then.6
	movabsq	$.L.str, %rdi
	callq	gettext
	movabsq	$.L.str.1, %rdi
	movq	%rax, -144(%rbp)
	callq	gettext
	movabsq	$.L.str.2, %rdi
	movq	%rax, -136(%rbp)
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -128(%rbp)
	callq	gettext
	movabsq	$.L.str.4, %rdi
	movq	%rax, -120(%rbp)
	callq	gettext
	movq	%rax, -112(%rbp)
	movl	-84(%rbp), %edi
	cmpl	$0, mapvals+392
	movl	%edi, -208(%rbp)        # 4-byte Spill
	je	.LBB1_9
# BB#8:                                 # %cond.true
	movl	$4, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB1_10
.LBB1_9:                                # %cond.false
	movl	mapvals+384, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB1_10:                               # %cond.end
	movl	-212(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-144(%rbp,%rsi,8), %rsi
	movl	width, %eax
	movl	height, %edi
	cmpl	$0, mapvals+400
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movl	-208(%rbp), %edx        # 4-byte Reload
	movl	%edi, -216(%rbp)        # 4-byte Spill
	movl	%edx, %edi
	movl	%eax, %edx
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-220(%rbp), %r9d        # 4-byte Reload
	callq	gimp_layer_new
	movl	%eax, -88(%rbp)
	movl	$1, -92(%rbp)
	movl	-88(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, output_drawable
.LBB1_11:                               # %if.end.20
	movq	output_drawable(%rip), %rsi
	movl	width(%rip), %r8d
	movl	height(%rip), %r9d
	movq	%rsp, %rax
	movl	$1, 8(%rax)
	movl	$1, (%rax)
	movl	$dest_region, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_init
	movl	mapvals+384(%rip), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$3, %rsi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	ja	.LBB1_16
# BB#34:                                # %if.end.20
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_12:                               # %sw.bb
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_13:                               # %sw.bb.23
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_14:                               # %sw.bb.26
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %sw.bb.29
	movabsq	$.L.str.3, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB1_16:                               # %sw.epilog
	cmpl	$0, mapvals+388
	jne	.LBB1_28
# BB#17:                                # %if.then.33
	movl	$0, -16(%rbp)
.LBB1_18:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
	movl	-16(%rbp), %eax
	cmpl	height, %eax
	jge	.LBB1_27
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	$0, -12(%rbp)
.LBB1_20:                               # %for.cond.35
                                        #   Parent Loop BB1_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	cmpl	width, %eax
	jge	.LBB1_25
# BB#21:                                # %for.body.37
                                        #   in Loop: Header=BB1_20 Depth=2
	leaq	-168(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	int_to_pos
	leaq	-200(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	*get_ray_color
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-200(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	poke
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movslq	width, %rcx
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	jne	.LBB1_23
# BB#22:                                # %if.then.41
                                        #   in Loop: Header=BB1_20 Depth=2
	cvtsi2sdq	-56(%rbp), %xmm0
	cvtsi2sdq	maxcounter, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB1_23:                               # %if.end.45
                                        #   in Loop: Header=BB1_20 Depth=2
	jmp	.LBB1_24
.LBB1_24:                               # %for.inc
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_20
.LBB1_25:                               # %for.end
                                        #   in Loop: Header=BB1_18 Depth=1
	jmp	.LBB1_26
.LBB1_26:                               # %for.inc.47
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB1_18
.LBB1_27:                               # %for.end.49
	jmp	.LBB1_29
.LBB1_28:                               # %if.else.50
	xorl	%eax, %eax
	movabsq	$render, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$poke, %rsi
	movabsq	$show_progress, %rdi
	movl	width, %ecx
	subl	$1, %ecx
	movl	height, %r8d
	subl	$1, %r8d
	movq	max_depth, %r10
	movl	%r10d, %r11d
	movsd	mapvals+464, %xmm0      # xmm0 = mem[0],zero
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movq	-280(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	-272(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	$0, 32(%rsp)
	callq	gimp_adaptive_supersample_area
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB1_29:                               # %if.end.54
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	output_drawable, %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	cmpl	$0, -92(%rbp)
	je	.LBB1_31
# BB#30:                                # %if.then.57
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	-84(%rbp), %edi
	movl	-88(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB1_31:                               # %if.end.59
	movl	$1, %esi
	movq	output_drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_merge_shadow
	xorl	%esi, %esi
	movq	output_drawable, %rcx
	movl	(%rcx), %edi
	movl	width, %ecx
	movl	height, %r8d
	movl	%esi, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %edx        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	-84(%rbp), %ecx
	cmpl	image_id, %ecx
	movl	%eax, -316(%rbp)        # 4-byte Spill
	je	.LBB1_33
# BB#32:                                # %if.then.65
	movl	-84(%rbp), %edi
	callq	gimp_display_new
	movl	%eax, -320(%rbp)        # 4-byte Spill
	callq	gimp_displays_flush
	movq	output_drawable, %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_drawable_detach
.LBB1_33:                               # %if.end.68
	movl	-84(%rbp), %edi
	callq	gimp_image_undo_group_end
	movl	%eax, -328(%rbp)        # 4-byte Spill
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	compute_image, .Lfunc_end1-compute_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_12
	.quad	.LBB1_13
	.quad	.LBB1_14
	.quad	.LBB1_15

	.text
	.align	16, 0x90
	.type	render,@function
render:                                 # @render
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-88(%rbp), %rax
	leaq	-56(%rbp), %rcx
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	width, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	height, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm2, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	*get_ray_color
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, 24(%rcx)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	render, .Lfunc_end2-render
	.cfi_endproc

	.align	16, 0x90
	.type	show_progress,@function
show_progress:                          # @show_progress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	show_progress, .Lfunc_end3-show_progress
	.cfi_endproc

	.type	imat,@object            # @imat
	.bss
	.globl	imat
	.align	16
imat:
	.zero	128
	.size	imat, 128

	.type	rotmat,@object          # @rotmat
	.globl	rotmat
	.align	16
rotmat:
	.zero	64
	.size	rotmat, 64

	.type	a,@object               # @a
	.local	a
	.comm	a,64,16
	.type	b,@object               # @b
	.local	b
	.comm	b,64,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Map to plane"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Map to sphere"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Map to box"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Map to cylinder"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Background"
	.size	.L.str.4, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
