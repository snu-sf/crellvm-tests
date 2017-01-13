	.text
	.file	"print-draw-page.bc"
	.globl	print_draw_page
	.align	16, 0x90
	.type	print_draw_page,@function
print_draw_page:                        # @print_draw_page
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_print_context_get_cairo_context
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	movq	-32(%rbp), %rsi
	callq	print_surface_from_drawable
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_4
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	cairo_image_surface_get_width
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	cairo_image_surface_get_height
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_print_context_get_dpi_x
	movq	-24(%rbp), %rdi
	divsd	16(%rdi), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_print_context_get_dpi_y
	movq	-24(%rbp), %rdi
	divsd	24(%rdi), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	callq	cairo_translate
	movq	-24(%rbp), %rcx
	cmpl	$0, 64(%rcx)
	je	.LBB0_3
# BB#2:                                 # %if.then.8
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-52(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	cvtsi2sdl	-56(%rbp), %xmm2
	mulsd	-72(%rbp), %xmm2
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-88(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm2, -96(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm2
	movsd	-96(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	print_draw_crop_marks
.LBB0_3:                                # %if.end
	movq	-40(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_scale
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-52(%rbp), %xmm2
	cvtsi2sdl	-56(%rbp), %xmm3
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_set_source_surface
	movq	-40(%rbp), %rdi
	callq	cairo_fill
	movq	-48(%rbp), %rdi
	callq	cairo_surface_destroy
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movl	$0, -4(%rbp)
.LBB0_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	print_draw_page, .Lfunc_end0-print_draw_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	print_surface_from_drawable,@function
print_surface_from_drawable:            # @print_surface_from_drawable
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
	subq	$1024, %rsp             # imm = 0x400
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_type
	xorl	%esi, %esi
	movl	$768, %edi              # imm = 0x300
	movl	%edi, %edx
	leaq	-880(%rbp), %rcx
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %r8
	movl	4(%r8), %eax
	movl	%eax, -100(%rbp)
	movq	-32(%rbp), %r8
	movl	8(%r8), %eax
	movl	%eax, -104(%rbp)
	movq	%rcx, %rdi
	callq	memset
	movl	$0, -896(%rbp)
	movl	$0, -900(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	-12(%rbp), %edi
	callq	gimp_item_get_image
	leaq	-932(%rbp), %rsi
	movl	%eax, %edi
	callq	gimp_image_get_colormap
	leaq	-880(%rbp), %rsi
	movq	%rax, -928(%rbp)
	movq	-928(%rbp), %rax
	imull	$3, -932(%rbp), %edi
	movslq	%edi, %rdx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-928(%rbp), %rdi
	callq	g_free
.LBB1_2:                                # %if.end
	movl	-12(%rbp), %edi
	callq	gimp_drawable_has_alpha
	movl	$1, %edi
	xorl	%ecx, %ecx
	cmpl	$0, %eax
	cmovnel	%ecx, %edi
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %edx
	callq	cairo_image_surface_create
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	cairo_surface_status
	movl	%eax, -916(%rbp)
	cmpl	$0, -916(%rbp)
	je	.LBB1_7
# BB#3:                                 # %if.then.12
	movl	-916(%rbp), %eax
	subl	$32, %eax
	movl	%eax, -960(%rbp)        # 4-byte Spill
	jne	.LBB1_5
	jmp	.LBB1_4
.LBB1_4:                                # %sw.bb
	movabsq	$.L.str, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	jmp	.LBB1_6
.LBB1_5:                                # %sw.default
	movq	-24(%rbp), %rdi
	movl	-916(%rbp), %eax
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	cairo_status_to_string
	movl	$1, %esi
	xorl	%edx, %edx
	movabsq	$.L.str.1, %rcx
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
.LBB1_6:                                # %sw.epilog
	movq	$0, -8(%rbp)
	jmp	.LBB1_25
.LBB1_7:                                # %if.end.15
	movq	-96(%rbp), %rdi
	callq	cairo_image_surface_get_data
	movq	%rax, -888(%rbp)
	movq	-96(%rbp), %rdi
	callq	cairo_image_surface_get_stride
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -892(%rbp)
	movq	-32(%rbp), %rsi
	movl	-100(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-80(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -912(%rbp)
.LBB1_8:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	cmpq	$0, -912(%rbp)
	je	.LBB1_24
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -944(%rbp)
	movq	-888(%rbp), %rax
	movl	-52(%rbp), %ecx
	imull	-892(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-56(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -952(%rbp)
	movl	$0, -956(%rbp)
.LBB1_10:                               # %for.cond.26
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-956(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB1_20
# BB#11:                                # %for.body.29
                                        #   in Loop: Header=BB1_10 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	movq	%rdx, -992(%rbp)        # 8-byte Spill
	ja	.LBB1_18
# BB#26:                                # %for.body.29
                                        #   in Loop: Header=BB1_10 Depth=2
	movq	-984(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_12:                               # %sw.bb.30
                                        #   in Loop: Header=BB1_10 Depth=2
	movq	-944(%rbp), %rdi
	movq	-952(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_rgb
	jmp	.LBB1_18
.LBB1_13:                               # %sw.bb.31
                                        #   in Loop: Header=BB1_10 Depth=2
	movq	-944(%rbp), %rdi
	movq	-952(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_rgba
	jmp	.LBB1_18
.LBB1_14:                               # %sw.bb.33
                                        #   in Loop: Header=BB1_10 Depth=2
	movq	-944(%rbp), %rdi
	movq	-952(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_gray
	jmp	.LBB1_18
.LBB1_15:                               # %sw.bb.35
                                        #   in Loop: Header=BB1_10 Depth=2
	movq	-944(%rbp), %rdi
	movq	-952(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_graya
	jmp	.LBB1_18
.LBB1_16:                               # %sw.bb.37
                                        #   in Loop: Header=BB1_10 Depth=2
	leaq	-880(%rbp), %rcx
	movq	-944(%rbp), %rdi
	movq	-952(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_indexed
	jmp	.LBB1_18
.LBB1_17:                               # %sw.bb.39
                                        #   in Loop: Header=BB1_10 Depth=2
	leaq	-880(%rbp), %rcx
	movq	-944(%rbp), %rdi
	movq	-952(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_indexeda
.LBB1_18:                               # %sw.epilog.42
                                        #   in Loop: Header=BB1_10 Depth=2
	movl	-60(%rbp), %eax
	movq	-944(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -944(%rbp)
	movl	-892(%rbp), %eax
	movq	-952(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -952(%rbp)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB1_10 Depth=2
	movl	-956(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -956(%rbp)
	jmp	.LBB1_10
.LBB1_20:                               # %for.end
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-900(%rbp), %eax
	movl	%eax, -900(%rbp)
	movl	-896(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -896(%rbp)
	andl	$15, %eax
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#21:                                # %if.then.53
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-900(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movl	-100(%rbp), %eax
	imull	-104(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -996(%rbp)        # 4-byte Spill
.LBB1_22:                               # %if.end.58
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_23
.LBB1_23:                               # %for.inc.59
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-912(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -912(%rbp)
	jmp	.LBB1_8
.LBB1_24:                               # %for.end.61
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-32(%rbp), %rdi
	movl	%eax, -1000(%rbp)       # 4-byte Spill
	callq	gimp_drawable_detach
	movq	-96(%rbp), %rdi
	callq	cairo_surface_mark_dirty
	movq	-96(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB1_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$1024, %rsp             # imm = 0x400
	popq	%rbp
	retq
.Lfunc_end1:
	.size	print_surface_from_drawable, .Lfunc_end1-print_surface_from_drawable
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_12
	.quad	.LBB1_13
	.quad	.LBB1_14
	.quad	.LBB1_15
	.quad	.LBB1_16
	.quad	.LBB1_17

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4611686018427387904     # double 2
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
.LCPI2_2:
	.quad	4617315517961601024     # double 5
.LCPI2_3:
	.quad	4626322717216342016     # double 20
	.text
	.align	16, 0x90
	.type	print_draw_crop_marks,@function
print_draw_crop_marks:                  # @print_draw_crop_marks
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_print_context_get_cairo_context
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_print_context_get_width
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gtk_print_context_get_height
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	gtk_print_context_get_width
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movq	-8(%rbp), %rdi
	callq	gtk_print_context_get_height
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB2_3:                                # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI2_3, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-32(%rbp), %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-40(%rbp), %xmm1
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-40(%rbp), %xmm1
	addsd	-56(%rbp), %xmm1
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-40(%rbp), %xmm2
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-32(%rbp), %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-40(%rbp), %xmm1
	callq	cairo_line_to
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-40(%rbp), %xmm1
	addsd	-56(%rbp), %xmm1
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-40(%rbp), %xmm2
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-48(%rbp), %rdi
	callq	cairo_stroke
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	print_draw_crop_marks, .Lfunc_end2-print_draw_crop_marks
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_rgb,@function
convert_from_rgb:                       # @convert_from_rgb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB3_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_3
.LBB3_3:                                # %do.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movb	2(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-8(%rbp), %rax
	movb	1(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_1
.LBB3_5:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end3:
	.size	convert_from_rgb, .Lfunc_end3-convert_from_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_rgba,@function
convert_from_rgba:                      # @convert_from_rgba
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB4_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_3
.LBB4_3:                                # %do.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	shrl	$8, %ecx
	addl	-32(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, (%rax)
	movl	-28(%rbp), %ecx
	shrl	$8, %ecx
	addl	-28(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 1(%rax)
	movl	-24(%rbp), %ecx
	shrl	$8, %ecx
	addl	-24(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-8(%rbp), %rax
	movb	3(%rax), %sil
	movq	-16(%rbp), %rax
	movb	%sil, 3(%rax)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB4_1
.LBB4_5:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end4:
	.size	convert_from_rgba, .Lfunc_end4-convert_from_rgba
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_gray,@function
convert_from_gray:                      # @convert_from_gray
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB5_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_5:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end5:
	.size	convert_from_gray, .Lfunc_end5-convert_from_gray
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_graya,@function
convert_from_graya:                     # @convert_from_graya
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB6_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	shrl	$8, %ecx
	addl	-32(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, (%rax)
	movl	-28(%rbp), %ecx
	shrl	$8, %ecx
	addl	-28(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 1(%rax)
	movl	-24(%rbp), %ecx
	shrl	$8, %ecx
	addl	-24(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-8(%rbp), %rax
	movb	1(%rax), %sil
	movq	-16(%rbp), %rax
	movb	%sil, 3(%rax)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB6_1
.LBB6_5:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end6:
	.size	convert_from_graya, .Lfunc_end6-convert_from_graya
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_indexed,@function
convert_from_indexed:                   # @convert_from_indexed
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB7_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -36(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-16(%rbp), %rcx
	movb	%sil, (%rcx)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-16(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-16(%rbp), %rcx
	movb	%sil, 2(%rcx)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_1
.LBB7_5:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end7:
	.size	convert_from_indexed, .Lfunc_end7-convert_from_indexed
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_indexeda,@function
convert_from_indexeda:                  # @convert_from_indexeda
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB8_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -36(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	$128, %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	-36(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	$128, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	-36(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rax
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	$128, %ecx
	movl	%ecx, -48(%rbp)
	movl	-48(%rbp), %ecx
	shrl	$8, %ecx
	addl	-48(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %dil
	movq	-16(%rbp), %rax
	movb	%dil, (%rax)
	movl	-44(%rbp), %ecx
	shrl	$8, %ecx
	addl	-44(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %dil
	movq	-16(%rbp), %rax
	movb	%dil, 1(%rax)
	movl	-40(%rbp), %ecx
	shrl	$8, %ecx
	addl	-40(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %dil
	movq	-16(%rbp), %rax
	movb	%dil, 2(%rax)
	movq	-8(%rbp), %rax
	movb	1(%rax), %dil
	movq	-16(%rbp), %rax
	movb	%dil, 3(%rax)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB8_1
.LBB8_5:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end8:
	.size	convert_from_indexeda, .Lfunc_end8-convert_from_indexeda
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot handle the size (either width or height) of the image."
	.size	.L.str, 62

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Cairo error: %s"
	.size	.L.str.1, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
