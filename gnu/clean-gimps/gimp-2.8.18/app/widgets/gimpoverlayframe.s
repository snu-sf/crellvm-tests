	.text
	.file	"gimpoverlayframe.bc"
	.globl	gimp_overlay_frame_get_type
	.align	16, 0x90
	.type	gimp_overlay_frame_get_type,@function
gimp_overlay_frame_get_type:            # @gimp_overlay_frame_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_overlay_frame_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_overlay_frame_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gtk_bin_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_overlay_frame_class_intern_init, %rdi
	movl	$120, %r8d
	movabsq	$gimp_overlay_frame_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_overlay_frame_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_overlay_frame_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_overlay_frame_get_type, .Lfunc_end0-gimp_overlay_frame_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_frame_class_intern_init,@function
gimp_overlay_frame_class_intern_init:   # @gimp_overlay_frame_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_overlay_frame_parent_class
	cmpl	$0, GimpOverlayFrame_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOverlayFrame_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_overlay_frame_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_overlay_frame_class_intern_init, .Lfunc_end1-gimp_overlay_frame_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_frame_init,@function
gimp_overlay_frame_init:                # @gimp_overlay_frame_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_app_paintable
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_overlay_frame_init, .Lfunc_end2-gimp_overlay_frame_init
	.cfi_endproc

	.globl	gimp_overlay_frame_new
	.align	16, 0x90
	.type	gimp_overlay_frame_new,@function
gimp_overlay_frame_new:                 # @gimp_overlay_frame_new
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
	callq	gimp_overlay_frame_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_overlay_frame_new, .Lfunc_end3-gimp_overlay_frame_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_frame_class_init,@function
gimp_overlay_frame_class_init:          # @gimp_overlay_frame_class_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_overlay_frame_expose, %rsi
	movabsq	$gimp_overlay_frame_size_allocate, %rdi
	movabsq	$gimp_overlay_frame_size_request, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 240(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 248(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 392(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_overlay_frame_class_init, .Lfunc_end4-gimp_overlay_frame_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_frame_size_request,@function
gimp_overlay_frame_size_request:        # @gimp_overlay_frame_size_request
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-36(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 4(%rsi)
	cmpq	$0, -24(%rbp)
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB5_3
# BB#2:                                 # %if.then
	leaq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_size_request
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB5_4:                                # %if.end
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_overlay_frame_size_request, .Lfunc_end5-gimp_overlay_frame_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_frame_size_allocate,@function
gimp_overlay_frame_size_allocate:       # @gimp_overlay_frame_size_allocate
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_set_allocation
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -44(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_9
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB6_9
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-44(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	cmpl	$0, %ecx
	jle	.LBB6_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-44(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB6_5
.LBB6_5:                                # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	-44(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %eax
	cmpl	$0, %eax
	jle	.LBB6_7
# BB#6:                                 # %cond.true.18
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-44(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false.22
	xorl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB6_8
.LBB6_8:                                # %cond.end.23
	movl	-72(%rbp), %eax         # 4-byte Reload
	leaq	-40(%rbp), %rsi
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_size_allocate
.LBB6_9:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_overlay_frame_size_allocate, .Lfunc_end6-gimp_overlay_frame_size_allocate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI7_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI7_2:
	.quad	4616991696741409234     # double 4.7123889803846897
.LCPI7_3:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_overlay_frame_expose,@function
gimp_overlay_frame_expose:              # @gimp_overlay_frame_expose
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_screen
	movq	%rax, %rdi
	callq	gdk_screen_get_rgba_colormap
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-24(%rbp), %rdi
	callq	cairo_clip
	cmpl	$0, -52(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	cairo_set_operator
	movq	-24(%rbp), %rdi
	callq	cairo_paint
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	callq	cairo_set_operator
.LBB7_2:                                # %if.end
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -56(%rbp)
	jle	.LBB7_5
# BB#4:                                 # %if.then.11
	movsd	.LCPI7_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_2, %xmm4         # xmm4 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-56(%rbp), %xmm0
	cvtsi2sdl	-56(%rbp), %xmm1
	cvtsi2sdl	-56(%rbp), %xmm2
	callq	cairo_arc
	xorps	%xmm1, %xmm1
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %eax
	subl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	callq	cairo_line_to
	movsd	.LCPI7_2, %xmm3         # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %eax
	subl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-56(%rbp), %xmm1
	cvtsi2sdl	-56(%rbp), %xmm2
	callq	cairo_arc
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-40(%rbp), %xmm0
	movl	-36(%rbp), %eax
	subl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
	xorps	%xmm3, %xmm3
	movsd	.LCPI7_0, %xmm4         # xmm4 = mem[0],zero
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %eax
	subl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-36(%rbp), %eax
	subl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-56(%rbp), %xmm2
	callq	cairo_arc
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-56(%rbp), %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	callq	cairo_line_to
	movsd	.LCPI7_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_1, %xmm4         # xmm4 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-56(%rbp), %xmm0
	movl	-36(%rbp), %eax
	subl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-56(%rbp), %xmm2
	callq	cairo_arc
	movq	-24(%rbp), %rdi
	callq	cairo_close_path
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-40(%rbp), %xmm2
	cvtsi2sdl	-36(%rbp), %xmm3
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
.LBB7_6:                                # %if.end.44
	movq	-24(%rbp), %rdi
	callq	cairo_clip_preserve
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$84, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-24(%rbp), %rdi
	callq	cairo_paint
	cmpl	$0, -56(%rbp)
	jle	.LBB7_8
# BB#7:                                 # %if.then.47
	movsd	.LCPI7_3, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-24(%rbp), %rdi
	callq	cairo_stroke
.LBB7_8:                                # %if.end.49
	movq	-24(%rbp), %rdi
	callq	cairo_destroy
	movq	gimp_overlay_frame_parent_class, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_overlay_frame_expose, .Lfunc_end7-gimp_overlay_frame_expose
	.cfi_endproc

	.type	gimp_overlay_frame_get_type.g_define_type_id__volatile,@object # @gimp_overlay_frame_get_type.g_define_type_id__volatile
	.local	gimp_overlay_frame_get_type.g_define_type_id__volatile
	.comm	gimp_overlay_frame_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOverlayFrame"
	.size	.L.str, 17

	.type	gimp_overlay_frame_parent_class,@object # @gimp_overlay_frame_parent_class
	.local	gimp_overlay_frame_parent_class
	.comm	gimp_overlay_frame_parent_class,8,8
	.type	GimpOverlayFrame_private_offset,@object # @GimpOverlayFrame_private_offset
	.local	GimpOverlayFrame_private_offset
	.comm	GimpOverlayFrame_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
