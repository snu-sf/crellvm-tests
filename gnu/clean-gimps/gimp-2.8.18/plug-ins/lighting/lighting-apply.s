	.text
	.file	"lighting-apply.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4643176031446892544     # double 255
	.text
	.globl	compute_image
	.align	16, 0x90
	.type	compute_image,@function
compute_image:                          # @compute_image
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
	subq	$256, %rsp              # imm = 0x100
	movq	$0, -56(%rbp)
	movl	$-1, -84(%rbp)
	movl	$-1, -88(%rbp)
	movq	$0, -104(%rbp)
	cmpl	$1, mapvals+884
	je	.LBB0_3
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, mapvals+888
	jne	.LBB0_7
# BB#2:                                 # %land.lhs.true
	movq	input_drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB0_7
.LBB0_3:                                # %if.then
	xorl	%edx, %edx
	movl	width, %edi
	movl	height, %esi
	callq	gimp_image_new
	movl	%eax, -84(%rbp)
	cmpl	$1, mapvals+888
	jne	.LBB0_5
# BB#4:                                 # %if.then.4
	movabsq	$.L.str, %rsi
	movl	$1, %r8d
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-84(%rbp), %edi
	movl	width, %edx
	movl	height, %ecx
	callq	gimp_layer_new
	movl	%eax, -88(%rbp)
	jmp	.LBB0_6
.LBB0_5:                                # %if.else
	movabsq	$.L.str, %rsi
	xorl	%eax, %eax
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movl	-84(%rbp), %edi
	movl	width, %edx
	movl	height, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	gimp_layer_new
	movl	%eax, -88(%rbp)
.LBB0_6:                                # %if.end
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	-84(%rbp), %edi
	movl	-88(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-88(%rbp), %edi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, output_drawable
.LBB0_7:                                # %if.end.9
	cmpl	$1, mapvals+892
	jne	.LBB0_10
# BB#8:                                 # %land.lhs.true.11
	cmpl	$-1, mapvals+4
	je	.LBB0_10
# BB#9:                                 # %if.then.13
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
.LBB0_10:                               # %if.end.15
	movl	width, %edi
	movl	height, %esi
	callq	precompute_init
	cmpl	$0, mapvals+896
	je	.LBB0_12
# BB#11:                                # %lor.lhs.false.17
	cmpl	$-1, mapvals+8
	jne	.LBB0_13
.LBB0_12:                               # %if.then.19
	movabsq	$get_ray_color, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.20
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
	movabsq	$get_ray_color_ref, %rax
	movq	%rax, -120(%rbp)
.LBB0_14:                               # %if.end.24
	movabsq	$dest_region, %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	output_drawable, %rsi
	movl	width, %r8d
	movl	height, %r9d
	movl	%eax, %edx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	output_drawable, %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_bpp
	movb	%al, %r10b
	movb	%r10b, -105(%rbp)
	movq	output_drawable, %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_has_alpha
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -112(%rbp)
	movzbl	-105(%rbp), %eax
	imull	width, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movabsq	$.L.str.1, %rdi
	movq	%rax, -104(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	cmpl	$1, mapvals+892
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jne	.LBB0_18
# BB#15:                                # %land.lhs.true.36
	cmpl	$-1, mapvals+4
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.39
	cmpl	$2, height
	jl	.LBB0_18
# BB#17:                                # %if.then.42
	xorl	%eax, %eax
	movl	width, %esi
	movl	%eax, %edi
	movl	%eax, %edx
	callq	interpol_row
.LBB0_18:                               # %if.end.43
	movl	$0, -8(%rbp)
.LBB0_19:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_24 Depth 2
	movl	-8(%rbp), %eax
	cmpl	height, %eax
	jge	.LBB0_33
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB0_19 Depth=1
	cmpl	$1, mapvals+892
	jne	.LBB0_23
# BB#21:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB0_19 Depth=1
	cmpl	$-1, mapvals+4
	je	.LBB0_23
# BB#22:                                # %if.then.51
                                        #   in Loop: Header=BB0_19 Depth=1
	xorl	%edi, %edi
	movl	width, %esi
	movl	-8(%rbp), %edx
	callq	precompute_normals
.LBB0_23:                               # %if.end.52
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	$0, -92(%rbp)
	movl	$0, -4(%rbp)
.LBB0_24:                               # %for.cond.53
                                        #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	cmpl	width, %eax
	jge	.LBB0_31
# BB#25:                                # %for.body.56
                                        #   in Loop: Header=BB0_24 Depth=2
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	leaq	-144(%rbp), %rdi
	callq	int_to_pos
	movq	-128(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	movups	-144(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	-120(%rbp), %rdi
	leaq	-176(%rbp), %rax
	leaq	-80(%rbp), %rsi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-200(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movups	-176(%rbp), %xmm0
	movups	-160(%rbp), %xmm1
	movaps	%xmm1, -32(%rbp)
	movaps	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %cl
	movslq	-92(%rbp), %rax
	movl	%eax, %edx
	incl	%edx
	movl	%edx, -92(%rbp)
	movq	-104(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %cl
	movslq	-92(%rbp), %rax
	movl	%eax, %edx
	incl	%edx
	movl	%edx, -92(%rbp)
	movq	-104(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %cl
	movl	-92(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -92(%rbp)
	movslq	%edx, %rax
	movq	-104(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
	cmpl	$0, -112(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.71
                                        #   in Loop: Header=BB0_24 Depth=2
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movl	-92(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	movslq	%eax, %rsi
	movq	-104(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB0_27:                               # %if.end.77
                                        #   in Loop: Header=BB0_24 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movslq	width, %rcx
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	jne	.LBB0_29
# BB#28:                                # %if.then.82
                                        #   in Loop: Header=BB0_24 Depth=2
	cvtsi2sdq	-56(%rbp), %xmm0
	cvtsi2sdq	maxcounter, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB0_29:                               # %if.end.86
                                        #   in Loop: Header=BB0_24 Depth=2
	jmp	.LBB0_30
.LBB0_30:                               # %for.inc
                                        #   in Loop: Header=BB0_24 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_24
.LBB0_31:                               # %for.end
                                        #   in Loop: Header=BB0_19 Depth=1
	movabsq	$dest_region, %rdi
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movl	-8(%rbp), %ecx
	movl	width, %r8d
	callq	gimp_pixel_rgn_set_row
# BB#32:                                # %for.inc.88
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_33:                               # %for.end.90
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-104(%rbp), %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	g_free
	movq	output_drawable, %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	output_drawable, %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	xorl	%esi, %esi
	movq	output_drawable, %rcx
	movl	(%rcx), %edi
	movl	width, %ecx
	movl	height, %r8d
	movl	%esi, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %edx        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	cmpl	$-1, -84(%rbp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB0_35
# BB#34:                                # %if.then.98
	movl	-84(%rbp), %edi
	callq	gimp_display_new
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gimp_displays_flush
	movq	output_drawable, %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_drawable_detach
.LBB0_35:                               # %if.end.101
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end0:
	.size	compute_image, .Lfunc_end0-compute_image
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Background"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Lighting Effects"
	.size	.L.str.1, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
