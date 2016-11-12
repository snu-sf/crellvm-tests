	.text
	.file	"map-object-preview.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	check_light_hit
	.align	16, 0x90
	.type	check_light_hit,@function
check_light_hit:                        # @check_light_hit
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
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, mapvals+144
	jne	.LBB0_4
# BB#1:                                 # %if.then
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	lightx, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -24(%rbp)
	cvtsi2sdl	lighty, %xmm1
	cvtsi2sdl	-12(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	cvttsd2si	-40(%rbp), %eax
	cmpl	$7, %eax
	jle	.LBB0_3
# BB#2:                                 # %if.then.10
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_3:                                # %if.else
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                # %if.end
	movl	$0, -4(%rbp)
.LBB0_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	check_light_hit, .Lfunc_end0-check_light_hit
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4641240890982006784     # double 200
	.text
	.globl	update_light
	.align	16, 0x90
	.type	update_light,@function
update_light:                           # @update_light
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
	subq	$72, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movabsq	$mapvals, %rax
	movq	%rax, %rcx
	addq	$152, %rcx
	movl	$2, %edx
	movl	$200, %r8d
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	mapvals+424, %xmm1
	cvttsd2si	%xmm1, %esi
	movl	%esi, -28(%rbp)
	mulsd	mapvals+424, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -32(%rbp)
	movl	%r8d, %esi
	subl	-28(%rbp), %esi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -44(%rbp)         # 4-byte Spill
	cltd
	movl	-44(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -20(%rbp)
	subl	-32(%rbp), %r8d
	movl	%r8d, %eax
	cltd
	idivl	%esi
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %r8d
	movl	-12(%rbp), %r9d
	movl	-16(%rbp), %r10d
	movl	%eax, %edx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 8(%rsp)
	callq	gimp_vector_2d_to_3d
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	update_light, .Lfunc_end1-update_light
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4641240890982006784     # double 200
	.text
	.globl	compute_preview_image
	.align	16, 0x90
	.type	compute_preview_image,@function
compute_preview_image:                  # @compute_preview_image
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
	subq	$32, %rsp
	movq	previewarea, %rdi
	callq	gtk_widget_get_display
	movl	$150, %esi
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -8(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	mapvals+424, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -20(%rbp)
	mulsd	mapvals+424, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -24(%rbp)
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
	xorl	%ecx, %ecx
	movl	width, %edx
	subl	$1, %edx
	movl	height, %r8d
	subl	$1, %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	%ecx, %edi
	movl	%ecx, %esi
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	compute_preview_image, .Lfunc_end2-compute_preview_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	-4616189618054758400    # double -1
.LCPI3_2:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI3_3:
	.quad	4603579539098121011     # double 0.59999999999999998
	.text
	.align	16, 0x90
	.type	compute_preview,@function
compute_preview:                        # @compute_preview
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
	subq	$3552, %rsp             # imm = 0xDE0
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movq	$0, -3424(%rbp)
	callq	init_compute
	leaq	-3448(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	int_to_pos
	leaq	-3472(%rbp), %rdi
	movq	-3448(%rbp), %rax
	movq	%rax, -3272(%rbp)
	movq	-3440(%rbp), %rax
	movq	%rax, -3264(%rbp)
	movq	-3432(%rbp), %rax
	movq	%rax, -3256(%rbp)
	movl	-4(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movl	-8(%rbp), %edx
	addl	-16(%rbp), %edx
	movl	%ecx, %esi
	callq	int_to_pos
	movq	-3472(%rbp), %rax
	movq	%rax, -3296(%rbp)
	movq	-3464(%rbp), %rax
	movq	%rax, -3288(%rbp)
	movq	-3456(%rbp), %rax
	movq	%rax, -3280(%rbp)
	movsd	-3296(%rbp), %xmm0      # xmm0 = mem[0],zero
	subsd	-3272(%rbp), %xmm0
	movsd	%xmm0, -3240(%rbp)
	movsd	-3288(%rbp), %xmm0      # xmm0 = mem[0],zero
	subsd	-3264(%rbp), %xmm0
	movsd	%xmm0, -3248(%rbp)
	movl	$0, -3396(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-3396(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-3272(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-3240(%rbp), %xmm1      # xmm1 = mem[0],zero
	cvtsi2sdl	-3396(%rbp), %xmm2
	cvtsi2sdl	-20(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movslq	-3396(%rbp), %rax
	movsd	%xmm0, -1632(%rbp,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-3396(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3396(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movl	$0, -3400(%rbp)
.LBB3_5:                                # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	movl	-3400(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB3_8
# BB#6:                                 # %for.body.14
                                        #   in Loop: Header=BB3_5 Depth=1
	movsd	-3264(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-3248(%rbp), %xmm1      # xmm1 = mem[0],zero
	cvtsi2sdl	-3400(%rbp), %xmm2
	cvtsi2sdl	-24(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movslq	-3400(%rbp), %rax
	movsd	%xmm0, -3232(%rbp,%rax,8)
# BB#7:                                 # %for.inc.23
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-3400(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3400(%rbp)
	jmp	.LBB3_5
.LBB3_8:                                # %for.end.25
	cmpl	$1, mapvals+400
	jne	.LBB3_10
# BB#9:                                 # %if.then
	movabsq	$background, %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -3512(%rbp)      # 8-byte Spill
	movsd	-3512(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-3512(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-3512(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	jmp	.LBB3_11
.LBB3_10:                               # %if.else
	movabsq	$background, %rdi
	callq	gimp_context_get_background
	movabsq	$background, %rdi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -3516(%rbp)       # 4-byte Spill
	callq	gimp_rgb_set_alpha
.LBB3_11:                               # %if.end
	leaq	-3360(%rbp), %rdi
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -3528(%rbp)      # 8-byte Spill
	movsd	-3528(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-3528(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	leaq	-3392(%rbp), %rdi
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -3536(%rbp)      # 8-byte Spill
	movsd	-3536(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-3536(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	leaq	-3296(%rbp), %rdi
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -3544(%rbp)      # 8-byte Spill
	movsd	-3544(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movq	preview_surface, %rdi
	callq	cairo_surface_flush
	movl	$0, -3400(%rbp)
.LBB3_12:                               # %for.cond.28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_14 Depth 2
	movl	-3400(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB3_32
# BB#13:                                # %for.body.31
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	-3400(%rbp), %eax
	imull	preview_rgb_stride, %eax
	movslq	%eax, %rcx
	movq	%rcx, -3424(%rbp)
	movl	$0, -3396(%rbp)
.LBB3_14:                               # %for.cond.34
                                        #   Parent Loop BB3_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-3396(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_30
# BB#15:                                # %for.body.37
                                        #   in Loop: Header=BB3_14 Depth=2
	leaq	-3504(%rbp), %rdi
	leaq	-3272(%rbp), %rsi
	movslq	-3396(%rbp), %rax
	movsd	-1632(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -3272(%rbp)
	movslq	-3400(%rbp), %rax
	movsd	-3232(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -3264(%rbp)
	movq	-3272(%rbp), %rax
	movq	%rax, -3296(%rbp)
	movq	-3264(%rbp), %rax
	movq	%rax, -3288(%rbp)
	movq	-3256(%rbp), %rax
	movq	%rax, -3280(%rbp)
	callq	*get_ray_color
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-3504(%rbp), %rax
	movq	%rax, -3328(%rbp)
	movq	-3496(%rbp), %rax
	movq	%rax, -3320(%rbp)
	movq	-3488(%rbp), %rax
	movq	%rax, -3312(%rbp)
	movq	-3480(%rbp), %rax
	movq	%rax, -3304(%rbp)
	ucomisd	-3304(%rbp), %xmm0
	jbe	.LBB3_26
# BB#16:                                # %if.then.47
                                        #   in Loop: Header=BB3_14 Depth=2
	movl	$32, %eax
	movl	-3396(%rbp), %ecx
	movl	%eax, -3548(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-3548(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$16, %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	%edx, -3404(%rbp)
	movl	-3400(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cmpl	$16, %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	%edx, -3408(%rbp)
	movl	-3404(%rbp), %edx
	xorl	-3408(%rbp), %edx
	movl	%edx, -3404(%rbp)
	cmpl	$0, -3404(%rbp)
	je	.LBB3_21
# BB#17:                                # %if.then.53
                                        #   in Loop: Header=BB3_14 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-3304(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_19
	jp	.LBB3_19
# BB#18:                                # %if.then.57
                                        #   in Loop: Header=BB3_14 Depth=2
	movq	-3360(%rbp), %rax
	movq	%rax, -3328(%rbp)
	movq	-3352(%rbp), %rax
	movq	%rax, -3320(%rbp)
	movq	-3344(%rbp), %rax
	movq	%rax, -3312(%rbp)
	movq	-3336(%rbp), %rax
	movq	%rax, -3304(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.58
                                        #   in Loop: Header=BB3_14 Depth=2
	leaq	-3328(%rbp), %rdi
	leaq	-3360(%rbp), %rsi
	movl	$2, %edx
	callq	gimp_rgb_composite
.LBB3_20:                               # %if.end.59
                                        #   in Loop: Header=BB3_14 Depth=2
	jmp	.LBB3_25
.LBB3_21:                               # %if.else.60
                                        #   in Loop: Header=BB3_14 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-3304(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_23
	jp	.LBB3_23
# BB#22:                                # %if.then.64
                                        #   in Loop: Header=BB3_14 Depth=2
	movq	-3392(%rbp), %rax
	movq	%rax, -3328(%rbp)
	movq	-3384(%rbp), %rax
	movq	%rax, -3320(%rbp)
	movq	-3376(%rbp), %rax
	movq	%rax, -3312(%rbp)
	movq	-3368(%rbp), %rax
	movq	%rax, -3304(%rbp)
	jmp	.LBB3_24
.LBB3_23:                               # %if.else.65
                                        #   in Loop: Header=BB3_14 Depth=2
	leaq	-3328(%rbp), %rdi
	leaq	-3392(%rbp), %rsi
	movl	$2, %edx
	callq	gimp_rgb_composite
.LBB3_24:                               # %if.end.66
                                        #   in Loop: Header=BB3_14 Depth=2
	jmp	.LBB3_25
.LBB3_25:                               # %if.end.67
                                        #   in Loop: Header=BB3_14 Depth=2
	jmp	.LBB3_26
.LBB3_26:                               # %if.end.68
                                        #   in Loop: Header=BB3_14 Depth=2
	leaq	-3328(%rbp), %rdi
	leaq	-3409(%rbp), %rsi
	leaq	-3410(%rbp), %rdx
	leaq	-3411(%rbp), %rcx
	callq	gimp_rgb_get_uchar
# BB#27:                                # %do.body
                                        #   in Loop: Header=BB3_14 Depth=2
	movb	-3411(%rbp), %al
	movq	preview_rgb_data, %rcx
	movq	-3424(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
	movb	-3410(%rbp), %al
	movq	preview_rgb_data, %rcx
	movq	-3424(%rbp), %rdx
	movb	%al, 1(%rcx,%rdx)
	movb	-3409(%rbp), %al
	movq	preview_rgb_data, %rcx
	movq	-3424(%rbp), %rdx
	movb	%al, 2(%rcx,%rdx)
# BB#28:                                # %do.end
                                        #   in Loop: Header=BB3_14 Depth=2
	movq	-3424(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -3424(%rbp)
# BB#29:                                # %for.inc.75
                                        #   in Loop: Header=BB3_14 Depth=2
	movl	-3396(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3396(%rbp)
	jmp	.LBB3_14
.LBB3_30:                               # %for.end.77
                                        #   in Loop: Header=BB3_12 Depth=1
	jmp	.LBB3_31
.LBB3_31:                               # %for.inc.78
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	-3400(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3400(%rbp)
	jmp	.LBB3_12
.LBB3_32:                               # %for.end.80
	movq	preview_surface, %rdi
	callq	cairo_surface_mark_dirty
	addq	$3552, %rsp             # imm = 0xDE0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	compute_preview, .Lfunc_end3-compute_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4641240890982006784     # double 200
	.text
	.globl	preview_expose
	.align	16, 0x90
	.type	preview_expose,@function
preview_expose:                         # @preview_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gdk_cairo_create
	movl	$2, %ecx
	movl	$200, %edx
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	mapvals+424, %xmm1
	cvttsd2si	%xmm1, %r8d
	movl	%r8d, -28(%rbp)
	mulsd	mapvals+424, %xmm0
	cvttsd2si	%xmm0, %r8d
	movl	%r8d, -32(%rbp)
	movl	%edx, %r8d
	subl	-28(%rbp), %r8d
	movl	%r8d, %eax
	movl	%edx, -44(%rbp)         # 4-byte Spill
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rdi
	movq	preview_surface, %rsi
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	callq	cairo_set_source_surface
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	cvtsi2sdl	-32(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-40(%rbp), %rdi
	callq	cairo_clip
	movq	-40(%rbp), %rdi
	callq	cairo_paint
	movq	-40(%rbp), %rdi
	callq	cairo_reset_clip
	cmpl	$0, mapvals+412
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	draw_preview_wireframe
.LBB4_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	cairo_reset_clip
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	draw_lights
	movq	-40(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	preview_expose, .Lfunc_end4-preview_expose
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4641240890982006784     # double 200
	.text
	.align	16, 0x90
	.type	draw_preview_wireframe,@function
draw_preview_wireframe:                 # @draw_preview_wireframe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$2, %eax
	movl	$200, %ecx
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	mapvals+424, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -20(%rbp)
	mulsd	mapvals+424, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -24(%rbp)
	movl	%ecx, %edx
	subl	-20(%rbp), %edx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-28(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -12(%rbp)
	subl	-24(%rbp), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	%eax, %edx
	callq	draw_wireframe
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	draw_preview_wireframe, .Lfunc_end5-draw_preview_wireframe
	.cfi_endproc

	.align	16, 0x90
	.type	draw_lights,@function
draw_lights:                            # @draw_lights
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	leaq	-40(%rbp), %r9
	movabsq	$mapvals, %r10
	movq	%r10, %r11
	addq	$152, %r11
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	%rax, %r8
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -44(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, -44(%rbp)
	jl	.LBB6_5
# BB#1:                                 # %land.lhs.true
	cmpl	$200, -44(%rbp)
	jg	.LBB6_5
# BB#2:                                 # %land.lhs.true.6
	cmpl	$0, -48(%rbp)
	jl	.LBB6_5
# BB#3:                                 # %land.lhs.true.9
	cmpl	$200, -48(%rbp)
	jg	.LBB6_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	draw_light_marker
.LBB6_5:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	draw_lights, .Lfunc_end6-draw_lights
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4619567317775286272     # double 7
.LCPI7_1:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI7_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	draw_light_marker,@function
draw_light_marker:                      # @draw_light_marker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, mapvals+144
	je	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	leaq	-32(%rbp), %rsi
	movw	$0, -28(%rbp)
	movw	$16384, -26(%rbp)       # imm = 0x4000
	movw	$-1, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_cairo_set_source_color
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI7_1, %xmm4         # xmm4 = mem[0],zero
	movl	-12(%rbp), %eax
	movl	%eax, lightx
	movl	-16(%rbp), %eax
	movl	%eax, lighty
	movq	-8(%rbp), %rdi
	cvtsi2sdl	lightx, %xmm0
	cvtsi2sdl	lighty, %xmm1
	callq	cairo_arc
	movq	-8(%rbp), %rdi
	callq	cairo_fill
.LBB7_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	draw_light_marker, .Lfunc_end7-draw_light_marker
	.cfi_endproc

	.align	16, 0x90
	.type	draw_wireframe,@function
draw_wireframe:                         # @draw_wireframe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	movl	mapvals+384(%rip), %ecx
	movl	%ecx, %edi
	movq	%rdi, %rax
	subq	$3, %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	ja	.LBB8_5
# BB#6:                                 # %entry
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	draw_wireframe_plane
	jmp	.LBB8_5
.LBB8_2:                                # %sw.bb.1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	draw_wireframe_sphere
	jmp	.LBB8_5
.LBB8_3:                                # %sw.bb.2
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	draw_wireframe_box
	jmp	.LBB8_5
.LBB8_4:                                # %sw.bb.3
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	draw_wireframe_cylinder
.LBB8_5:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	draw_wireframe, .Lfunc_end8-draw_wireframe
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_1
	.quad	.LBB8_2
	.quad	.LBB8_3
	.quad	.LBB8_4

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4589168020290535424     # double 0.0625
.LCPI9_1:
	.quad	4645040803167600640     # double 360
.LCPI9_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI9_3:
	.quad	4602678819172646912     # double 0.5
.LCPI9_4:
	.quad	4607182418800017408     # double 1
.LCPI9_5:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	draw_wireframe_plane,@function
draw_wireframe_plane:                   # @draw_wireframe_plane
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	cvtsi2sdl	-20(%rbp), %xmm2
	cvtsi2sdl	-24(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-8(%rbp), %rdi
	callq	cairo_clip
	leaq	-48(%rbp), %rdi
	movsd	.LCPI9_3, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	movsd	-272(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	leaq	-72(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_3, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movsd	-280(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	leaq	-48(%rbp), %rdi
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	mapvals+432, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm3
	mulsd	mapvals+440, %xmm3
	divsd	%xmm0, %xmm3
	mulsd	mapvals+448, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-288(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_rotate
	leaq	-72(%rbp), %rdi
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	mapvals+432, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm3
	mulsd	mapvals+440, %xmm3
	divsd	%xmm0, %xmm3
	mulsd	mapvals+448, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -296(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-296(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_rotate
	leaq	-192(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_vector3_normalize
	leaq	-216(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_vector3_normalize
	leaq	-192(%rbp), %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_vector3_mul
	leaq	-216(%rbp), %rdi
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_vector3_mul
	leaq	-96(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$96, %rax
	leaq	-48(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_vector3_add
	leaq	-120(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	callq	gimp_vector3_sub
	leaq	-96(%rbp), %rax
	leaq	-72(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector3_add
	leaq	-168(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$96, %rax
	leaq	-48(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_vector3_sub
	leaq	-168(%rbp), %rax
	leaq	-72(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector3_sub
	movq	-120(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	$0, -220(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -220(%rbp)
	jg	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-232(%rbp), %r8
	leaq	-240(%rbp), %r9
	movabsq	$mapvals, %rax
	leaq	-96(%rbp), %rcx
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r10d
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	%rax, (%rsp)
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	leaq	-248(%rbp), %r8
	leaq	-256(%rbp), %r9
	movabsq	$mapvals, %rax
	leaq	-120(%rbp), %r11
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	%rax, (%rsp)
	movq	%r11, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	movsd	.LCPI9_3, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	-232(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	rint
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-240(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	rint
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movsd	-328(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI9_3, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	-248(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	callq	rint
	movsd	-344(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	rint
	movsd	-344(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movsd	-360(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	leaq	-232(%rbp), %r8
	leaq	-240(%rbp), %r9
	movabsq	$mapvals, %rax
	leaq	-144(%rbp), %rdi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r10d
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	%r10d, %ecx
	movq	%rax, (%rsp)
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	leaq	-248(%rbp), %r8
	leaq	-256(%rbp), %r9
	movabsq	$mapvals, %rax
	leaq	-168(%rbp), %r11
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	%rax, (%rsp)
	movq	%r11, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	movsd	.LCPI9_3, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	-232(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	callq	rint
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-240(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	rint
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movsd	-400(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-408(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI9_3, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	-248(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	callq	rint
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	rint
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movsd	-432(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-440(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	leaq	-96(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector3_sub
	leaq	-120(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector3_sub
	leaq	-144(%rbp), %rax
	leaq	-216(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector3_add
	leaq	-168(%rbp), %rax
	leaq	-216(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector3_add
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movsd	.LCPI9_5, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-8(%rbp), %rdi
	callq	cairo_stroke_preserve
	movsd	.LCPI9_4, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI9_4, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-448(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end9:
	.size	draw_wireframe_plane, .Lfunc_end9-draw_wireframe_plane
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4600745857669934360     # double 0.39269908169872414
.LCPI10_1:
	.quad	-4616189618054758400    # double -1
.LCPI10_2:
	.quad	4645040803167600640     # double 360
.LCPI10_3:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI10_4:
	.quad	-4623395377458551194    # double -0.34999999999999998
.LCPI10_5:
	.quad	4607182418800017408     # double 1
.LCPI10_6:
	.quad	4613937818241073152     # double 3
.LCPI10_7:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	draw_wireframe_sphere,@function
draw_wireframe_sphere:                  # @draw_wireframe_sphere
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1320, %rsp             # imm = 0x528
.Ltmp34:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	cvtsi2sdl	-32(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-16(%rbp), %rdi
	callq	cairo_clip
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -1088(%rbp)
	movl	$0, -1044(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -1044(%rbp)
	jge	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_3, %xmm1        # xmm1 = mem[0],zero
	leaq	-1040(%rbp), %rax
	xorps	%xmm2, %xmm2
	movsd	mapvals+472, %xmm3      # xmm3 = mem[0],zero
	cvtsi2sdl	-1044(%rbp), %xmm4
	mulsd	-1088(%rbp), %xmm4
	movsd	%xmm0, -1096(%rbp)      # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -1104(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1112(%rbp)      # 8-byte Spill
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	movsd	%xmm2, -1128(%rbp)      # 8-byte Spill
	callq	cos
	movsd	-1104(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-1044(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	movsd	%xmm1, (%rcx)
	movslq	-1044(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	movsd	-1128(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rcx)
	movsd	mapvals+472, %xmm1      # xmm1 = mem[0],zero
	cvtsi2sdl	-1044(%rbp), %xmm2
	mulsd	-1088(%rbp), %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -1136(%rbp)      # 8-byte Spill
	callq	sin
	movsd	-1136(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-1044(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	movsd	%xmm1, 16(%rcx)
	movslq	-1044(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	movsd	-1112(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	mapvals+432, %xmm0
	movsd	-1096(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-1112(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	mapvals+440, %xmm2
	divsd	%xmm1, %xmm2
	movsd	-1112(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	mapvals+448, %xmm3
	divsd	%xmm1, %xmm3
	movq	%rcx, %rdi
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	callq	gimp_vector3_rotate
	movabsq	$mapvals, %rax
	addq	$96, %rax
	leaq	-1040(%rbp), %rcx
	movslq	-1044(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	movq	%rcx, %rdx
	addq	%rdi, %rdx
	movslq	-1044(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	addq	%rdi, %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	gimp_vector3_add
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-1044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1044(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	leaq	-1040(%rbp), %rax
	movslq	-1044(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	-1040(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-1032(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-1024(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movl	$17, -1044(%rbp)
.LBB10_5:                               # %for.cond.29
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$33, -1044(%rbp)
	jge	.LBB10_8
# BB#6:                                 # %for.body.32
                                        #   in Loop: Header=BB10_5 Depth=1
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_3, %xmm1        # xmm1 = mem[0],zero
	leaq	-1040(%rbp), %rax
	xorps	%xmm2, %xmm2
	movsd	mapvals+472, %xmm3      # xmm3 = mem[0],zero
	movl	-1044(%rbp), %ecx
	subl	$17, %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	-1088(%rbp), %xmm4
	movsd	%xmm0, -1144(%rbp)      # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -1152(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1160(%rbp)      # 8-byte Spill
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	movsd	%xmm2, -1176(%rbp)      # 8-byte Spill
	callq	cos
	movsd	-1152(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-1044(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	-1168(%rbp), %rdx       # 8-byte Reload
	addq	%rax, %rdx
	movsd	%xmm1, (%rdx)
	movsd	mapvals+472, %xmm0      # xmm0 = mem[0],zero
	movl	-1044(%rbp), %ecx
	subl	$17, %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	-1088(%rbp), %xmm1
	movsd	%xmm0, -1184(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-1184(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-1044(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	-1168(%rbp), %rdx       # 8-byte Reload
	addq	%rax, %rdx
	movsd	%xmm1, 8(%rdx)
	movslq	-1044(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	-1168(%rbp), %rdx       # 8-byte Reload
	addq	%rax, %rdx
	movsd	-1176(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rdx)
	movslq	-1044(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	-1168(%rbp), %rdx       # 8-byte Reload
	addq	%rax, %rdx
	movsd	-1160(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	mapvals+432, %xmm1
	movsd	-1144(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	-1160(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	mapvals+440, %xmm3
	divsd	%xmm2, %xmm3
	movsd	-1160(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	mapvals+448, %xmm4
	divsd	%xmm2, %xmm4
	movq	%rdx, %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	movaps	%xmm4, %xmm2
	callq	gimp_vector3_rotate
	movabsq	$mapvals, %rax
	addq	$96, %rax
	leaq	-1040(%rbp), %rdx
	movslq	-1044(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	movq	%rdx, %rsi
	addq	%rdi, %rsi
	movslq	-1044(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	addq	%rdi, %rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	gimp_vector3_add
# BB#7:                                 # %for.inc.63
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-1044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1044(%rbp)
	jmp	.LBB10_5
.LBB10_8:                               # %for.end.65
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_4, %xmm1        # xmm1 = mem[0],zero
	leaq	-1040(%rbp), %rax
	movslq	-1044(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	-632(%rbp), %rcx
	movq	%rcx, (%rdx)
	movq	-624(%rbp), %rcx
	movq	%rcx, 8(%rdx)
	movq	-616(%rbp), %rcx
	movq	%rcx, 16(%rdx)
	movl	-1044(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -1044(%rbp)
	movl	-1044(%rbp), %esi
	movl	%esi, -1048(%rbp)
	movslq	-1044(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -1192(%rbp)      # 8-byte Spill
	movsd	-1192(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_3, %xmm1        # xmm1 = mem[0],zero
	leaq	-1040(%rbp), %rax
	movslq	-1044(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
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
	movsd	%xmm1, -1200(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-1200(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_rotate
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_4, %xmm2        # xmm2 = mem[0],zero
	leaq	-1040(%rbp), %rax
	movl	-1044(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	mapvals+96, %rcx
	movq	%rcx, (%rdx)
	movq	mapvals+104, %rcx
	movq	%rcx, 8(%rdx)
	movq	mapvals+112, %rcx
	movq	%rcx, 16(%rdx)
	movl	-1044(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -1208(%rbp)      # 8-byte Spill
	movsd	-1208(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_3, %xmm1        # xmm1 = mem[0],zero
	leaq	-1040(%rbp), %rax
	movl	-1044(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
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
	movsd	%xmm1, -1216(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-1216(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_rotate
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-1040(%rbp), %rax
	movl	-1044(%rbp), %esi
	addl	$3, %esi
	movslq	%esi, %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	mapvals+96, %rcx
	movq	%rcx, (%rdx)
	movq	mapvals+104, %rcx
	movq	%rcx, 8(%rdx)
	movq	mapvals+112, %rcx
	movq	%rcx, 16(%rdx)
	movl	-1044(%rbp), %esi
	addl	$4, %esi
	movslq	%esi, %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movslq	-1044(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movq	(%rdi), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rdi), %rcx
	movq	%rcx, 16(%rdx)
	movl	-1044(%rbp), %esi
	addl	$4, %esi
	movslq	%esi, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	gimp_vector3_mul
	movabsq	$mapvals, %rax
	addq	$96, %rax
	leaq	-1040(%rbp), %rcx
	movl	-1044(%rbp), %esi
	addl	$5, %esi
	movslq	%esi, %rdx
	imulq	$24, %rdx, %rdx
	movq	%rcx, %rdi
	addq	%rdx, %rdi
	movl	-1044(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	imulq	$24, %rdx, %rdx
	movq	%rcx, %r8
	addq	%rdx, %r8
	movq	(%r8), %rdx
	movq	%rdx, (%rdi)
	movq	8(%r8), %rdx
	movq	%rdx, 8(%rdi)
	movq	16(%r8), %rdx
	movq	%rdx, 16(%rdi)
	movslq	-1044(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rcx, %rdi
	addq	%rdx, %rdi
	movslq	-1044(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	gimp_vector3_add
	movabsq	$mapvals, %rax
	addq	$96, %rax
	leaq	-1040(%rbp), %rcx
	movl	-1044(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %rdx
	imulq	$24, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	-1044(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	gimp_vector3_add
	movabsq	$mapvals, %rax
	addq	$96, %rax
	leaq	-1040(%rbp), %rcx
	movl	-1044(%rbp), %r9d
	addl	$4, %r9d
	movslq	%r9d, %rdx
	imulq	$24, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	-1044(%rbp), %r9d
	addl	$4, %r9d
	movslq	%r9d, %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	gimp_vector3_add
	movl	$0, -1044(%rbp)
.LBB10_9:                               # %for.cond.127
                                        # =>This Inner Loop Header: Depth=1
	movl	-1044(%rbp), %eax
	movl	-1048(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_15
# BB#10:                                # %for.body.131
                                        #   in Loop: Header=BB10_9 Depth=1
	leaq	-1040(%rbp), %rax
	movslq	-1044(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	mapvals+112, %xmm0
	jbe	.LBB10_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_9 Depth=1
	leaq	-1040(%rbp), %rax
	movl	-1044(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	mapvals+112, %xmm0
	jbe	.LBB10_13
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB10_9 Depth=1
	leaq	-1056(%rbp), %r8
	leaq	-1064(%rbp), %r9
	movabsq	$mapvals, %rax
	leaq	-1040(%rbp), %rcx
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %r10d
	movslq	-1044(%rbp), %r11
	imulq	$24, %r11, %r11
	addq	%r11, %rcx
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movq	%rax, (%rsp)
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	leaq	-1072(%rbp), %r8
	leaq	-1080(%rbp), %r9
	movabsq	$mapvals, %rax
	leaq	-1040(%rbp), %r11
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-1044(%rbp), %r10d
	addl	$1, %r10d
	movslq	%r10d, %rbx
	imulq	$24, %rbx, %rbx
	addq	%rbx, %r11
	movq	%rax, (%rsp)
	movq	%r11, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	movsd	.LCPI10_7, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-1056(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	addsd	-1064(%rbp), %xmm2
	cvttsd2si	%xmm2, %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movsd	.LCPI10_7, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-1072(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	addsd	-1080(%rbp), %xmm2
	cvttsd2si	%xmm2, %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
.LBB10_13:                              # %if.end
                                        #   in Loop: Header=BB10_9 Depth=1
	jmp	.LBB10_14
.LBB10_14:                              # %for.inc.164
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	-1044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1044(%rbp)
	jmp	.LBB10_9
.LBB10_15:                              # %for.end.166
	movl	$0, -1044(%rbp)
.LBB10_16:                              # %for.cond.167
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -1044(%rbp)
	jge	.LBB10_19
# BB#17:                                # %for.body.170
                                        #   in Loop: Header=BB10_16 Depth=1
	leaq	-1056(%rbp), %r8
	leaq	-1064(%rbp), %r9
	movabsq	$mapvals, %rax
	leaq	-1040(%rbp), %rcx
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %r10d
	movslq	-1048(%rbp), %r11
	imulq	$24, %r11, %r11
	addq	%r11, %rcx
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movq	%rax, (%rsp)
	movq	-1232(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	leaq	-1072(%rbp), %r8
	leaq	-1080(%rbp), %r9
	movabsq	$mapvals, %rax
	leaq	-1040(%rbp), %r11
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-1048(%rbp), %r10d
	addl	$1, %r10d
	movslq	%r10d, %rbx
	imulq	$24, %rbx, %rbx
	addq	%rbx, %r11
	movq	%rax, (%rsp)
	movq	%r11, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	movsd	.LCPI10_7, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	-1056(%rbp), %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -1240(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -1248(%rbp)       # 8-byte Spill
	callq	rint
	movsd	-1240(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-1064(%rbp), %xmm2      # xmm2 = mem[0],zero
	movsd	%xmm0, -1256(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	rint
	movsd	-1240(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-1248(%rbp), %rdi       # 8-byte Reload
	movsd	-1256(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -1264(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-1264(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI10_7, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	-1072(%rbp), %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -1272(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -1280(%rbp)       # 8-byte Spill
	callq	rint
	movsd	-1272(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-1080(%rbp), %xmm2      # xmm2 = mem[0],zero
	movsd	%xmm0, -1288(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	rint
	movsd	-1272(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-1280(%rbp), %rdi       # 8-byte Reload
	movsd	-1288(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -1296(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-1296(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movl	-1048(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -1048(%rbp)
# BB#18:                                # %for.inc.185
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	-1044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1044(%rbp)
	jmp	.LBB10_16
.LBB10_19:                              # %for.end.187
	movsd	.LCPI10_6, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-16(%rbp), %rdi
	callq	cairo_stroke_preserve
	movsd	.LCPI10_5, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI10_5, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -1304(%rbp)      # 8-byte Spill
	movsd	-1304(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-1304(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	movq	-16(%rbp), %rdi
	callq	cairo_stroke
	addq	$1320, %rsp             # imm = 0x528
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	draw_wireframe_sphere, .Lfunc_end10-draw_wireframe_sphere
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4602678819172646912     # double 0.5
.LCPI11_1:
	.quad	4607182418800017408     # double 1
.LCPI11_2:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	draw_wireframe_box,@function
draw_wireframe_box:                     # @draw_wireframe_box
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	cvtsi2sdl	-20(%rbp), %xmm2
	cvtsi2sdl	-24(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-8(%rbp), %rdi
	callq	cairo_clip
	callq	init_compute
	leaq	-272(%rbp), %rdi
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	mapvals+120, %rax
	movq	%rax, -272(%rbp)
	movq	mapvals+128, %rax
	movq	%rax, -264(%rbp)
	movq	mapvals+136, %rax
	movq	%rax, -256(%rbp)
	callq	gimp_vector3_mul
	leaq	-224(%rbp), %rdi
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rax
	movd	%rax, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rax
	movd	%rax, %xmm1
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	leaq	-224(%rbp), %rax
	addq	$24, %rax
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rdi
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rdi
	movd	%rdi, %xmm1
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_vector3_set
	leaq	-224(%rbp), %rax
	addq	$48, %rax
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_vector3_set
	leaq	-224(%rbp), %rax
	addq	$72, %rax
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rdi
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rdi
	movd	%rdi, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_vector3_set
	leaq	-224(%rbp), %rax
	addq	$96, %rax
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rdi
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rdi
	movd	%rdi, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rdi
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rdi
	movd	%rdi, %xmm1
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	movd	%xmm2, %rdi
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rdi
	movd	%rdi, %xmm2
	movq	%rax, %rdi
	callq	gimp_vector3_set
	leaq	-224(%rbp), %rax
	addq	$120, %rax
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rdi
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rdi
	movd	%rdi, %xmm1
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	movd	%xmm2, %rdi
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rdi
	movd	%rdi, %xmm2
	movq	%rax, %rdi
	callq	gimp_vector3_set
	leaq	-224(%rbp), %rax
	addq	$144, %rax
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	movd	%xmm2, %rdi
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rdi
	movd	%rdi, %xmm2
	movq	%rax, %rdi
	callq	gimp_vector3_set
	leaq	-224(%rbp), %rax
	addq	$168, %rax
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rdi
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rdi
	movd	%rdi, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	movd	%xmm2, %rdi
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rdi
	movd	%rdi, %xmm2
	movq	%rax, %rdi
	callq	gimp_vector3_set
	movl	$0, -276(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -276(%rbp)
	jge	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-248(%rbp), %rdi
	movabsq	$rotmat, %rdx
	leaq	-224(%rbp), %rax
	movslq	-276(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	vecmulmat
	leaq	-248(%rbp), %rsi
	movabsq	$mapvals, %rax
	addq	$96, %rax
	leaq	-224(%rbp), %rcx
	movslq	-276(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	gimp_vector3_add
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	leaq	-224(%rbp), %rax
	cvtsi2sdl	-12(%rbp), %xmm0
	movsd	%xmm0, -288(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm0
	movsd	%xmm0, -296(%rbp)
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -304(%rbp)
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -312(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$24, %r9
	movq	(%rax), %r10
	movq	%r10, (%rsp)
	movq	8(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	(%r9), %rax
	movq	%rax, 24(%rsp)
	movq	8(%r9), %rax
	movq	%rax, 32(%rsp)
	movq	16(%r9), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-224(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$24, %r9
	addq	$48, %rax
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-224(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$48, %r9
	addq	$72, %rax
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-224(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$72, %r9
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-224(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$96, %r9
	addq	$120, %rax
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-224(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$120, %r9
	addq	$144, %rax
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-224(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$144, %r9
	addq	$168, %rax
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-224(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$168, %r9
	addq	$96, %rax
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-224(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$96, %r9
	movq	(%rax), %r10
	movq	%r10, (%rsp)
	movq	8(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	(%r9), %rax
	movq	%rax, 24(%rsp)
	movq	8(%r9), %rax
	movq	%rax, 32(%rsp)
	movq	16(%r9), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-224(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$24, %r9
	addq	$120, %rax
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-224(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$48, %r9
	addq	$144, %rax
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-224(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$72, %r9
	addq	$168, %rax
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	movsd	.LCPI11_2, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-8(%rbp), %rdi
	callq	cairo_stroke_preserve
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movsd	-320(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-320(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end11:
	.size	draw_wireframe_box, .Lfunc_end11-draw_wireframe_box
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
.LCPI12_1:
	.quad	4611686018427387904     # double 2
.LCPI12_2:
	.quad	4602678819172646912     # double 0.5
.LCPI12_3:
	.quad	4613937818241073152     # double 3
.LCPI12_4:
	.quad	4631530004285489152     # double 45
	.text
	.align	16, 0x90
	.type	draw_wireframe_cylinder,@function
draw_wireframe_cylinder:                # @draw_wireframe_cylinder
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
	subq	$672, %rsp              # imm = 0x2A0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	cvtsi2sdl	-20(%rbp), %xmm2
	cvtsi2sdl	-24(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-8(%rbp), %rdi
	callq	cairo_clip
	callq	init_compute
	leaq	-488(%rbp), %rdi
	movsd	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero
	movq	mapvals+120, %rax
	movq	%rax, -488(%rbp)
	movq	mapvals+128, %rax
	movq	%rax, -480(%rbp)
	movq	mapvals+136, %rax
	movq	%rax, -472(%rbp)
	callq	gimp_vector3_mul
	leaq	-464(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movsd	.LCPI12_1, %xmm3        # xmm3 = mem[0],zero
	movsd	mapvals+488, %xmm4      # xmm4 = mem[0],zero
	divsd	%xmm3, %xmm4
	cvtsd2ss	%xmm4, %xmm3
	movss	%xmm3, -596(%rbp)
	movss	%xmm2, -600(%rbp)
	movsd	%xmm0, -608(%rbp)       # 8-byte Spill
	movsd	-608(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movl	$0, -492(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -492(%rbp)
	jge	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-464(%rbp), %rdi
	leaq	-592(%rbp), %rsi
	movss	-600(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	callq	rotatemat
	leaq	-440(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	mapvals+480, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -616(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-616(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-616(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	leaq	-440(%rbp), %rsi
	leaq	-592(%rbp), %rdx
	leaq	-416(%rbp), %rdi
	movslq	-492(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rdi
	callq	vecmulmat
	movsd	.LCPI12_4, %xmm0        # xmm0 = mem[0],zero
	leaq	-416(%rbp), %rax
	movl	-492(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movslq	-492(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	movq	(%rdi), %rdx
	movq	%rdx, (%rsi)
	movq	8(%rdi), %rdx
	movq	%rdx, 8(%rsi)
	movq	16(%rdi), %rdx
	movq	%rdx, 16(%rsi)
	cvtss2sd	-596(%rbp), %xmm1
	movslq	-492(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	addsd	8(%rsi), %xmm1
	movsd	%xmm1, 8(%rsi)
	cvtss2sd	-596(%rbp), %xmm1
	movl	-492(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, 8(%rax)
	cvtss2sd	-600(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -600(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-492(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -492(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	movl	$0, -492(%rbp)
.LBB12_5:                               # %for.cond.23
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -492(%rbp)
	jge	.LBB12_8
# BB#6:                                 # %for.body.26
                                        #   in Loop: Header=BB12_5 Depth=1
	leaq	-440(%rbp), %rdi
	movabsq	$rotmat, %rdx
	leaq	-416(%rbp), %rax
	movslq	-492(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	vecmulmat
	leaq	-440(%rbp), %rsi
	movabsq	$mapvals, %rax
	addq	$96, %rax
	leaq	-416(%rbp), %rcx
	movslq	-492(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	gimp_vector3_add
# BB#7:                                 # %for.inc.31
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	-492(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -492(%rbp)
	jmp	.LBB12_5
.LBB12_8:                               # %for.end.33
	cvtsi2sdl	-12(%rbp), %xmm0
	movsd	%xmm0, -504(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm0
	movsd	%xmm0, -512(%rbp)
	movsd	-504(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -520(%rbp)
	movsd	-512(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -528(%rbp)
	movl	$0, -492(%rbp)
.LBB12_9:                               # %for.cond.40
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -492(%rbp)
	jge	.LBB12_12
# BB#10:                                # %for.body.43
                                        #   in Loop: Header=BB12_9 Depth=1
	leaq	-416(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-504(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-512(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-520(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-528(%rbp), %xmm3       # xmm3 = mem[0],zero
	movslq	-492(%rbp), %r9
	imulq	$24, %r9, %r9
	movq	%rax, %r10
	addq	%r9, %r10
	movl	-492(%rbp), %r11d
	addl	$1, %r11d
	movslq	%r11d, %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rax
	movq	(%r10), %r9
	movq	%r9, (%rsp)
	movq	8(%r10), %r9
	movq	%r9, 8(%rsp)
	movq	16(%r10), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-416(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-504(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-512(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-520(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-528(%rbp), %xmm3       # xmm3 = mem[0],zero
	movl	-492(%rbp), %r11d
	addl	$8, %r11d
	movslq	%r11d, %r9
	imulq	$24, %r9, %r9
	movq	%rax, %r10
	addq	%r9, %r10
	movl	-492(%rbp), %r11d
	addl	$9, %r11d
	movslq	%r11d, %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rax
	movq	(%r10), %r9
	movq	%r9, (%rsp)
	movq	8(%r10), %r9
	movq	%r9, 8(%rsp)
	movq	16(%r10), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-416(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-504(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-512(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-520(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-528(%rbp), %xmm3       # xmm3 = mem[0],zero
	movslq	-492(%rbp), %r9
	imulq	$24, %r9, %r9
	movq	%rax, %r10
	addq	%r9, %r10
	movl	-492(%rbp), %r11d
	addl	$8, %r11d
	movslq	%r11d, %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rax
	movq	(%r10), %r9
	movq	%r9, (%rsp)
	movq	8(%r10), %r9
	movq	%r9, 8(%rsp)
	movq	16(%r10), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
# BB#11:                                # %for.inc.60
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	-492(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -492(%rbp)
	jmp	.LBB12_9
.LBB12_12:                              # %for.end.62
	leaq	-416(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-504(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-512(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-520(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-528(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$168, %r9
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	leaq	-416(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movsd	-504(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-512(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-520(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-528(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %r9
	addq	$360, %r9               # imm = 0x168
	addq	$192, %rax
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r10
	movq	%r10, 8(%rsp)
	movq	16(%r9), %r9
	movq	%r9, 16(%rsp)
	movq	(%rax), %r9
	movq	%r9, 24(%rsp)
	movq	8(%rax), %r9
	movq	%r9, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	draw_line
	movsd	.LCPI12_3, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-8(%rbp), %rdi
	callq	cairo_stroke_preserve
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -624(%rbp)       # 8-byte Spill
	movsd	-624(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-624(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$672, %rsp              # imm = 0x2A0
	popq	%rbp
	retq
.Lfunc_end12:
	.size	draw_wireframe_cylinder, .Lfunc_end12-draw_wireframe_cylinder
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	draw_line,@function
draw_line:                              # @draw_line
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp44:
	.cfi_offset %rbx, -24
	leaq	40(%rbp), %rax
	leaq	16(%rbp), %r9
	leaq	-72(%rbp), %r10
	leaq	-80(%rbp), %r11
	movabsq	$mapvals, %rbx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	%r10, %r8
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	%rbx, (%rsp)
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_vector_3d_to_2d
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	movabsq	$mapvals, %rax
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	%rax, (%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_vector_3d_to_2d
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	rint
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	rint
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movsd	-136(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	rint
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	rint
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	draw_line, .Lfunc_end13-draw_line
	.cfi_endproc

	.type	lightx,@object          # @lightx
	.bss
	.globl	lightx
	.align	4
lightx:
	.long	0                       # 0x0
	.size	lightx, 4

	.type	lighty,@object          # @lighty
	.globl	lighty
	.align	4
lighty:
	.long	0                       # 0x0
	.size	lighty, 4

	.type	mat,@object             # @mat
	.globl	mat
	.align	16
mat:
	.zero	96
	.size	mat, 96


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
