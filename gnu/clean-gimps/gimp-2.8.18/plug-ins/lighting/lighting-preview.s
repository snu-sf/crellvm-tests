	.text
	.file	"lighting-preview.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	update_light
	.align	16, 0x90
	.type	update_light,@function
update_light:                           # @update_light
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
	subq	$112, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	mapvals+924(%rip), %esi
	movl	%esi, -52(%rbp)
	leaq	-12(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	callq	compute_preview_rectangle
	movq	mapvals+32(%rip), %rcx
	movq	%rcx, -32(%rbp)
	movups	mapvals+16(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI0_0(%rip), %xmm1   # xmm1 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm1, %xmm0
	movlpd	%xmm0, -32(%rbp)
	movslq	-52(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movl	mapvals+64(%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	ja	.LBB0_4
# BB#5:                                 # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_1:                                # %sw.bb
	jmp	.LBB0_4
.LBB0_2:                                # %sw.bb.2
	leaq	-48(%rbp), %rax
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movl	-4(%rbp), %r9d
	movl	-8(%rbp), %r10d
	movslq	-52(%rbp), %r11
	imulq	$104, %r11, %r11
	addq	%r11, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_vector_2d_to_3d
	jmp	.LBB0_4
.LBB0_3:                                # %sw.bb.5
	leaq	-48(%rbp), %rax
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movl	-4(%rbp), %r9d
	movl	-8(%rbp), %r10d
	movslq	-52(%rbp), %r11
	imulq	$104, %r11, %r11
	addq	%r11, %rcx
	addq	$32, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_vector_2d_to_3d
.LBB0_4:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	update_light, .Lfunc_end0-update_light
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_2
	.quad	.LBB0_1

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
.LCPI1_1:
	.quad	4641240890982006784     # double 200
.LCPI1_2:
	.quad	4639481672377565184     # double 150
	.text
	.align	16, 0x90
	.type	compute_preview_rectangle,@function
compute_preview_rectangle:              # @compute_preview_rectangle
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	width, %eax
	cmpl	height, %eax
	jl	.LBB1_2
# BB#1:                                 # %if.then
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_2, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, -56(%rbp)
	cvtsi2sdl	height, %xmm2
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	width, %xmm4
	divsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm2
	movsd	%xmm2, -64(%rbp)
	movaps	%xmm1, %xmm2
	subsd	-56(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
	subsd	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_2, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, -64(%rbp)
	cvtsi2sdl	width, %xmm2
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	height, %xmm4
	divsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm2
	movsd	%xmm2, -56(%rbp)
	movaps	%xmm1, %xmm2
	subsd	-56(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
	subsd	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
.LBB1_3:                                # %if.end
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	compute_preview_rectangle, .Lfunc_end1-compute_preview_rectangle
	.cfi_endproc

	.globl	preview_compute
	.align	16, 0x90
	.type	preview_compute,@function
preview_compute:                        # @preview_compute
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
	subq	$32, %rsp
	movq	previewarea, %rdi
	callq	gtk_widget_get_display
	leaq	-20(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	%rax, -8(%rbp)
	callq	compute_preview_rectangle
	movl	$150, %esi
	movq	-8(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -16(%rbp)
	movq	previewarea, %rdi
	callq	gtk_widget_get_window
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movq	-16(%rbp), %rdi
	callq	gdk_cursor_unref
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	compute_preview
	movl	$60, %esi
	movq	-8(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -16(%rbp)
	movq	previewarea, %rdi
	callq	gtk_widget_get_window
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movq	-16(%rbp), %rdi
	callq	gdk_cursor_unref
	callq	gdk_flush
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	preview_compute, .Lfunc_end2-preview_compute
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4603579539098121011     # double 0.59999999999999998
	.text
	.align	16, 0x90
	.type	compute_preview,@function
compute_preview:                        # @compute_preview
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
	subq	$304, %rsp              # imm = 0x130
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	$0, -60(%rbp)
	movl	xpostab_size, %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB3_4
# BB#1:                                 # %if.then
	cmpq	$0, xpostab
	je	.LBB3_3
# BB#2:                                 # %if.then.1
	movq	xpostab, %rax
	movq	%rax, %rdi
	callq	g_free
	movq	$0, xpostab
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.2
	cmpq	$0, xpostab
	jne	.LBB3_6
# BB#5:                                 # %if.then.4
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-12(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, xpostab
	movl	-12(%rbp), %ecx
	movl	%ecx, xpostab_size
.LBB3_6:                                # %if.end.5
	movl	ypostab_size, %eax
	cmpl	-16(%rbp), %eax
	je	.LBB3_10
# BB#7:                                 # %if.then.8
	cmpq	$0, ypostab
	je	.LBB3_9
# BB#8:                                 # %if.then.10
	movq	ypostab, %rax
	movq	%rax, %rdi
	callq	g_free
	movq	$0, ypostab
.LBB3_9:                                # %if.end.11
	jmp	.LBB3_10
.LBB3_10:                               # %if.end.12
	cmpq	$0, ypostab
	jne	.LBB3_12
# BB#11:                                # %if.then.14
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, ypostab
	movl	-16(%rbp), %ecx
	movl	%ecx, ypostab_size
.LBB3_12:                               # %if.end.17
	movl	$0, -20(%rbp)
.LBB3_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB3_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB3_13 Depth=1
	cvtsi2sdl	width, %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	cvtsi2sdl	-12(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-20(%rbp), %rax
	movq	xpostab, %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_13
.LBB3_16:                               # %for.end
	movl	$0, -24(%rbp)
.LBB3_17:                               # %for.cond.23
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB3_20
# BB#18:                                # %for.body.26
                                        #   in Loop: Header=BB3_17 Depth=1
	cvtsi2sdl	height, %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	cvtsi2sdl	-16(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-24(%rbp), %rax
	movq	ypostab, %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#19:                                # %for.inc.34
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_17
.LBB3_20:                               # %for.end.36
	movl	width, %edi
	movl	height, %esi
	callq	precompute_init
	leaq	-128(%rbp), %rdi
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	leaq	-160(%rbp), %rdi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-264(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	cmpl	$1, mapvals+892
	jne	.LBB3_23
# BB#21:                                # %land.lhs.true
	cmpl	$-1, mapvals+4
	je	.LBB3_23
# BB#22:                                # %if.then.41
	movl	mapvals+4, %edi
	callq	gimp_drawable_get
	movabsq	$bump_region, %rdi
	xorl	%ecx, %ecx
	movl	width, %r8d
	movl	height, %r9d
	movq	%rax, %rsi
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
.LBB3_23:                               # %if.end.43
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	cmpl	$0, mapvals+908
	je	.LBB3_25
# BB#24:                                # %if.then.45
	movabsq	$get_ray_color, %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB3_26
.LBB3_25:                               # %if.else
	movabsq	$get_ray_color_no_bilinear, %rax
	movq	%rax, -192(%rbp)
.LBB3_26:                               # %if.end.46
	cmpl	$1, mapvals+896
	jne	.LBB3_32
# BB#27:                                # %land.lhs.true.49
	cmpl	$-1, mapvals+8
	je	.LBB3_32
# BB#28:                                # %if.then.52
	movl	mapvals+8, %edi
	callq	gimp_drawable_width
	movl	%eax, env_width
	movl	mapvals+8, %edi
	callq	gimp_drawable_height
	movl	%eax, env_height
	movl	mapvals+8, %edi
	callq	gimp_drawable_get
	movabsq	$env_region, %rdi
	xorl	%ecx, %ecx
	movl	env_width, %r8d
	movl	env_height, %r9d
	movq	%rax, %rsi
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpl	$0, mapvals+908
	je	.LBB3_30
# BB#29:                                # %if.then.57
	movabsq	$get_ray_color_ref, %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.58
	movabsq	$get_ray_color_no_bilinear_ref, %rax
	movq	%rax, -192(%rbp)
.LBB3_31:                               # %if.end.59
	jmp	.LBB3_32
.LBB3_32:                               # %if.end.60
	movq	preview_surface, %rdi
	callq	cairo_surface_flush
	movl	$0, -24(%rbp)
.LBB3_33:                               # %for.cond.61
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_35 Depth 2
	cmpl	$200, -24(%rbp)
	jge	.LBB3_63
# BB#34:                                # %for.body.64
                                        #   in Loop: Header=BB3_33 Depth=1
	movl	-24(%rbp), %eax
	imull	preview_rgb_stride, %eax
	movl	%eax, -60(%rbp)
	movl	$0, -20(%rbp)
.LBB3_35:                               # %for.cond.66
                                        #   Parent Loop BB3_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$200, -20(%rbp)
	jge	.LBB3_61
# BB#36:                                # %for.body.69
                                        #   in Loop: Header=BB3_35 Depth=2
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB3_58
# BB#37:                                # %land.lhs.true.72
                                        #   in Loop: Header=BB3_35 Depth=2
	movl	-24(%rbp), %eax
	movl	-8(%rbp), %ecx
	addl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_58
# BB#38:                                # %land.lhs.true.75
                                        #   in Loop: Header=BB3_35 Depth=2
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB3_58
# BB#39:                                # %land.lhs.true.78
                                        #   in Loop: Header=BB3_35 Depth=2
	movl	-20(%rbp), %eax
	movl	-4(%rbp), %ecx
	addl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_58
# BB#40:                                # %if.then.82
                                        #   in Loop: Header=BB3_35 Depth=2
	leaq	-216(%rbp), %rdi
	movl	-20(%rbp), %eax
	subl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	xpostab, %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movl	-24(%rbp), %eax
	subl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movq	ypostab, %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	int_to_posf
	movq	-216(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	movq	-208(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	cmpl	$1, mapvals+892
	jne	.LBB3_44
# BB#41:                                # %land.lhs.true.90
                                        #   in Loop: Header=BB3_35 Depth=2
	cmpl	$-1, mapvals+4
	je	.LBB3_44
# BB#42:                                # %land.lhs.true.93
                                        #   in Loop: Header=BB3_35 Depth=2
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.LBB3_44
# BB#43:                                # %if.then.96
                                        #   in Loop: Header=BB3_35 Depth=2
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	pos_to_float
	xorl	%edi, %edi
	movl	width, %esi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%edi, -268(%rbp)        # 4-byte Spill
	movl	%esi, -272(%rbp)        # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	-268(%rbp), %edi        # 4-byte Reload
	movl	-272(%rbp), %esi        # 4-byte Reload
	callq	precompute_normals
.LBB3_44:                               # %if.end.99
                                        #   in Loop: Header=BB3_35 Depth=2
	leaq	-248(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	*-192(%rbp)
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movq	-248(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movq	-232(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	movq	-224(%rbp), %rsi
	movq	%rsi, -72(%rbp)
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB3_55
# BB#45:                                # %if.then.103
                                        #   in Loop: Header=BB3_35 Depth=2
	movl	$32, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-276(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$16, %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	%edx, -28(%rbp)
	movl	-24(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cmpl	$16, %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %edx
	xorl	-32(%rbp), %edx
	movl	%edx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB3_50
# BB#46:                                # %if.then.110
                                        #   in Loop: Header=BB3_35 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_48
	jp	.LBB3_48
# BB#47:                                # %if.then.114
                                        #   in Loop: Header=BB3_35 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB3_49
.LBB3_48:                               # %if.else.115
                                        #   in Loop: Header=BB3_35 Depth=2
	leaq	-96(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movl	$2, %edx
	callq	gimp_rgb_composite
.LBB3_49:                               # %if.end.116
                                        #   in Loop: Header=BB3_35 Depth=2
	jmp	.LBB3_54
.LBB3_50:                               # %if.else.117
                                        #   in Loop: Header=BB3_35 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_52
	jp	.LBB3_52
# BB#51:                                # %if.then.121
                                        #   in Loop: Header=BB3_35 Depth=2
	movq	-160(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB3_53
.LBB3_52:                               # %if.else.122
                                        #   in Loop: Header=BB3_35 Depth=2
	leaq	-96(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	movl	$2, %edx
	callq	gimp_rgb_composite
.LBB3_53:                               # %if.end.123
                                        #   in Loop: Header=BB3_35 Depth=2
	jmp	.LBB3_54
.LBB3_54:                               # %if.end.124
                                        #   in Loop: Header=BB3_35 Depth=2
	jmp	.LBB3_55
.LBB3_55:                               # %if.end.125
                                        #   in Loop: Header=BB3_35 Depth=2
	leaq	-96(%rbp), %rdi
	leaq	-33(%rbp), %rsi
	leaq	-34(%rbp), %rdx
	leaq	-35(%rbp), %rcx
	callq	gimp_rgb_get_uchar
# BB#56:                                # %do.body
                                        #   in Loop: Header=BB3_35 Depth=2
	movb	-35(%rbp), %al
	movq	preview_rgb_data, %rcx
	movslq	-60(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
	movb	-34(%rbp), %al
	movq	preview_rgb_data, %rcx
	movslq	-60(%rbp), %rdx
	movb	%al, 1(%rcx,%rdx)
	movb	-33(%rbp), %al
	movq	preview_rgb_data, %rcx
	movslq	-60(%rbp), %rdx
	movb	%al, 2(%rcx,%rdx)
# BB#57:                                # %do.end
                                        #   in Loop: Header=BB3_35 Depth=2
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -60(%rbp)
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_59
.LBB3_58:                               # %if.else.135
                                        #   in Loop: Header=BB3_35 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movslq	%eax, %rdx
	movq	preview_rgb_data, %rsi
	movb	$-56, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movslq	%eax, %rdx
	movq	preview_rgb_data, %rsi
	movb	$-56, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movslq	%eax, %rdx
	movq	preview_rgb_data, %rsi
	movb	$-56, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
.LBB3_59:                               # %if.end.146
                                        #   in Loop: Header=BB3_35 Depth=2
	jmp	.LBB3_60
.LBB3_60:                               # %for.inc.147
                                        #   in Loop: Header=BB3_35 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_35
.LBB3_61:                               # %for.end.149
                                        #   in Loop: Header=BB3_33 Depth=1
	jmp	.LBB3_62
.LBB3_62:                               # %for.inc.150
                                        #   in Loop: Header=BB3_33 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_33
.LBB3_63:                               # %for.end.152
	movq	preview_surface, %rdi
	callq	cairo_surface_mark_dirty
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end3:
	.size	compute_preview, .Lfunc_end3-compute_preview
	.cfi_endproc

	.globl	preview_events
	.align	16, 0x90
	.type	preview_events,@function
preview_events:                         # @preview_events
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	(%rsi), %eax
	addl	$-3, %eax
	movl	%eax, %esi
	subl	$8, %eax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB4_10
# BB#12:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_1:                                # %sw.bb
	jmp	.LBB4_11
.LBB4_2:                                # %sw.bb.1
	jmp	.LBB4_11
.LBB4_3:                                # %sw.bb.2
	movq	-16(%rbp), %rax
	cvttsd2si	24(%rax), %edi
	movq	-16(%rbp), %rax
	cvttsd2si	32(%rax), %esi
	callq	check_handle_hit
	movl	%eax, light_hit
	movl	$1, left_button_pressed
	jmp	.LBB4_11
.LBB4_4:                                # %sw.bb.5
	movl	$0, left_button_pressed
	jmp	.LBB4_11
.LBB4_5:                                # %sw.bb.6
	cmpl	$1, left_button_pressed
	jne	.LBB4_9
# BB#6:                                 # %land.lhs.true
	cmpl	$1, light_hit
	jne	.LBB4_9
# BB#7:                                 # %land.lhs.true.10
	cmpl	$1, mapvals+916
	jne	.LBB4_9
# BB#8:                                 # %if.then
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	interactive_preview_callback
	movq	-16(%rbp), %rdi
	cvttsd2si	24(%rdi), %edi
	movq	-16(%rbp), %rcx
	cvttsd2si	32(%rcx), %esi
	callq	update_light
.LBB4_9:                                # %if.end
	jmp	.LBB4_11
.LBB4_10:                               # %sw.default
	jmp	.LBB4_11
.LBB4_11:                               # %sw.epilog
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	preview_events, .Lfunc_end4-preview_events
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_5
	.quad	.LBB4_3
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_4
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_1
	.quad	.LBB4_2

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	check_handle_hit,@function
check_handle_hit:                       # @check_handle_hit
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
	subq	$48, %rsp
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	mapvals+924, %esi
	movl	%esi, -28(%rbp)
	movl	handle_xpos, %esi
	subl	-8(%rbp), %esi
	movl	%esi, -16(%rbp)
	movl	handle_ypos, %esi
	subl	-12(%rbp), %esi
	movl	%esi, -20(%rbp)
	movslq	-28(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	je	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-28(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$1, (%rax)
	jne	.LBB5_5
.LBB5_2:                                # %if.then
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movl	-16(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	-20(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	cmpl	$7, -24(%rbp)
	jle	.LBB5_4
# BB#3:                                 # %if.then.11
	movl	$0, -4(%rbp)
	jmp	.LBB5_6
.LBB5_4:                                # %if.else
	movl	$1, -4(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %if.end
	movl	$0, -4(%rbp)
.LBB5_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	check_handle_hit, .Lfunc_end5-check_handle_hit
	.cfi_endproc

	.globl	interactive_preview_callback
	.align	16, 0x90
	.type	interactive_preview_callback,@function
interactive_preview_callback:           # @interactive_preview_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, preview_update_timer
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	preview_update_timer, %edi
	callq	g_source_remove
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB6_2:                                # %if.end
	movl	$100, %edi
	movabsq	$interactive_preview_timer_callback, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	g_timeout_add
	movl	%eax, preview_update_timer
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	interactive_preview_callback, .Lfunc_end6-interactive_preview_callback
	.cfi_endproc

	.globl	preview_expose
	.align	16, 0x90
	.type	preview_expose,@function
preview_expose:                         # @preview_expose
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gdk_cairo_create
	xorps	%xmm0, %xmm0
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	preview_surface, %rsi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_set_source_surface
	movq	-24(%rbp), %rdi
	callq	cairo_paint
	cmpl	$0, mapvals+916
	je	.LBB7_2
# BB#1:                                 # %if.then
	callq	draw_handles
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	preview_expose, .Lfunc_end7-preview_expose
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1112014848              # float 50
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_1:
	.quad	4602678819172646912     # double 0.5
.LCPI8_2:
	.quad	4607182418800017408     # double 1
.LCPI8_3:
	.quad	4616189618054758400     # double 4
.LCPI8_4:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	draw_handles,@function
draw_handles:                           # @draw_handles
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
	subq	$192, %rsp
	movl	mapvals+924(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	leaq	-20(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	callq	compute_preview_rectangle
	movslq	-84(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movl	mapvals+64(%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	ja	.LBB8_4
# BB#11:                                # %entry
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	jmp	.LBB8_10
.LBB8_2:                                # %sw.bb.1
	leaq	-8(%rbp), %r8
	leaq	-16(%rbp), %r9
	leaq	-56(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movabsq	$mapvals, %rdx
	addq	$64, %rdx
	movq	mapvals+16, %rsi
	movq	%rsi, -56(%rbp)
	movq	mapvals+24, %rsi
	movq	%rsi, -48(%rbp)
	movq	mapvals+32, %rsi
	movq	%rsi, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rsi
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	xorq	%rdi, %rsi
	movd	%rsi, %xmm0
	movsd	%xmm0, -40(%rbp)
	movslq	-84(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rdx
	movq	8(%rdx), %rsi
	movq	%rsi, -80(%rbp)
	movq	16(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movq	24(%rdx), %rdx
	movq	%rdx, -64(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %r10d
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	%rax, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-8(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, handle_xpos
	addsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, handle_ypos
	jmp	.LBB8_4
.LBB8_3:                                # %sw.bb.7
	leaq	-8(%rbp), %r8
	leaq	-16(%rbp), %r9
	leaq	-56(%rbp), %rax
	leaq	-80(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %r10d
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movss	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)
	movslq	-84(%rbp), %r8
	imulq	$104, %r8, %r8
	movq	%rax, %r9
	addq	%r8, %r9
	movsd	32(%r9), %xmm0          # xmm0 = mem[0],zero
	cvtss2sd	-88(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -92(%rbp)
	movslq	-84(%rbp), %r8
	imulq	$104, %r8, %r8
	addq	%r8, %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-88(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -96(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-92(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, handle_xpos
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, handle_ypos
.LBB8_4:                                # %sw.epilog
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-84(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$3, (%rax)
	je	.LBB8_10
# BB#5:                                 # %if.then
	movq	previewarea(%rip), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -120(%rbp)
	movsd	.LCPI8_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	cairo_set_line_width
	movw	$0, -108(%rbp)
	movw	$16384, -106(%rbp)      # imm = 0x4000
	movw	$-1, -104(%rbp)
	movq	-120(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	movslq	-84(%rbp), %rax
	imulq	$104, %rax, %rax
	movl	mapvals+64(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$3, %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	ja	.LBB8_9
# BB#12:                                # %if.then
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI8_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_6:                                # %sw.bb.38
	movsd	.LCPI8_3, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI8_4, %xmm4         # xmm4 = mem[0],zero
	movq	-120(%rbp), %rdi
	cvtsi2sdl	handle_xpos, %xmm0
	cvtsi2sdl	handle_ypos, %xmm1
	callq	cairo_arc
	movq	-120(%rbp), %rdi
	callq	cairo_fill
	jmp	.LBB8_9
.LBB8_7:                                # %sw.bb.41
	movsd	.LCPI8_3, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI8_4, %xmm4         # xmm4 = mem[0],zero
	movq	-120(%rbp), %rdi
	cvtsi2sdl	handle_xpos, %xmm0
	cvtsi2sdl	handle_ypos, %xmm1
	callq	cairo_arc
	movq	-120(%rbp), %rdi
	callq	cairo_fill
	movq	-120(%rbp), %rdi
	cvtsi2sdl	handle_xpos, %xmm0
	cvtsi2sdl	handle_ypos, %xmm1
	callq	cairo_move_to
	movl	$2, %eax
	movq	-120(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-172(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-24(%rbp), %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-176(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_line_to
	movq	-120(%rbp), %rdi
	callq	cairo_stroke
	jmp	.LBB8_9
.LBB8_8:                                # %sw.bb.51
	jmp	.LBB8_9
.LBB8_9:                                # %sw.epilog.52
	movq	-120(%rbp), %rdi
	callq	cairo_destroy
.LBB8_10:                               # %if.end
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	draw_handles, .Lfunc_end8-draw_handles
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_2
	.quad	.LBB8_3
	.quad	.LBB8_2
	.quad	.LBB8_1
.LJTI8_1:
	.quad	.LBB8_6
	.quad	.LBB8_7
	.quad	.LBB8_6
	.quad	.LBB8_8

	.text
	.align	16, 0x90
	.type	interactive_preview_timer_callback,@function
interactive_preview_timer_callback:     # @interactive_preview_timer_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	mapvals+924, %eax
	movl	%eax, -12(%rbp)
	movl	$0, mapvals+920
	movq	spin_pos_x, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rsi
	addq	$64, %rsi
	movslq	-12(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	spin_pos_y, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rsi
	addq	$64, %rsi
	movslq	-12(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	spin_pos_z, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rsi
	addq	$64, %rsi
	movslq	-12(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rsi
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	spin_dir_x, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rsi
	addq	$64, %rsi
	movslq	-12(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rsi
	movsd	32(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	spin_dir_y, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rsi
	addq	$64, %rsi
	movslq	-12(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rsi
	movsd	40(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	spin_dir_z, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rsi
	addq	$64, %rsi
	movslq	-12(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rsi
	movsd	48(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movl	$1, mapvals+920
	callq	preview_compute
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	xorl	%eax, %eax
	movl	$0, preview_update_timer
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	interactive_preview_timer_callback, .Lfunc_end9-interactive_preview_timer_callback
	.cfi_endproc

	.type	xpostab,@object         # @xpostab
	.bss
	.globl	xpostab
	.align	8
xpostab:
	.quad	0
	.size	xpostab, 8

	.type	ypostab,@object         # @ypostab
	.globl	ypostab
	.align	8
ypostab:
	.quad	0
	.size	ypostab, 8

	.type	light_hit,@object       # @light_hit
	.local	light_hit
	.comm	light_hit,4,4
	.type	left_button_pressed,@object # @left_button_pressed
	.local	left_button_pressed
	.comm	left_button_pressed,4,4
	.type	preview_update_timer,@object # @preview_update_timer
	.local	preview_update_timer
	.comm	preview_update_timer,4,4
	.type	xpostab_size,@object    # @xpostab_size
	.data
	.align	4
xpostab_size:
	.long	4294967295              # 0xffffffff
	.size	xpostab_size, 4

	.type	ypostab_size,@object    # @ypostab_size
	.align	4
ypostab_size:
	.long	4294967295              # 0xffffffff
	.size	ypostab_size, 4

	.type	handle_xpos,@object     # @handle_xpos
	.local	handle_xpos
	.comm	handle_xpos,4,4
	.type	handle_ypos,@object     # @handle_ypos
	.local	handle_ypos
	.comm	handle_ypos,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
