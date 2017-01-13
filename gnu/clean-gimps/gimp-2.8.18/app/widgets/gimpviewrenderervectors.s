	.text
	.file	"gimpviewrenderervectors.bc"
	.globl	gimp_view_renderer_vectors_get_type
	.align	16, 0x90
	.type	gimp_view_renderer_vectors_get_type,@function
gimp_view_renderer_vectors_get_type:    # @gimp_view_renderer_vectors_get_type
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
	movq	gimp_view_renderer_vectors_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_view_renderer_vectors_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_view_renderer_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$200, %edx
	movabsq	$gimp_view_renderer_vectors_class_intern_init, %rdi
	movl	$152, %r8d
	movabsq	$gimp_view_renderer_vectors_init, %rcx
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
	movabsq	$gimp_view_renderer_vectors_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_view_renderer_vectors_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_vectors_get_type, .Lfunc_end0-gimp_view_renderer_vectors_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_vectors_class_intern_init,@function
gimp_view_renderer_vectors_class_intern_init: # @gimp_view_renderer_vectors_class_intern_init
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
	movq	%rax, gimp_view_renderer_vectors_parent_class
	cmpl	$0, GimpViewRendererVectors_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewRendererVectors_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_view_renderer_vectors_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_renderer_vectors_class_intern_init, .Lfunc_end1-gimp_view_renderer_vectors_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_vectors_init,@function
gimp_view_renderer_vectors_init:        # @gimp_view_renderer_vectors_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_view_renderer_vectors_init, .Lfunc_end2-gimp_view_renderer_vectors_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_vectors_class_init,@function
gimp_view_renderer_vectors_class_init:  # @gimp_view_renderer_vectors_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_view_renderer_vectors_draw, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 184(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_renderer_vectors_class_init, .Lfunc_end3-gimp_view_renderer_vectors_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_view_renderer_vectors_draw,@function
gimp_view_renderer_vectors_draw:        # @gimp_view_renderer_vectors_draw
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$516, %rax              # imm = 0x204
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movl	$2, %ecx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %r8d
	movq	-8(%rbp), %rax
	subl	48(%rax), %r8d
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rsi
	subl	52(%rsi), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_translate
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	cvtsi2sdl	48(%rsi), %xmm2
	movq	-8(%rbp), %rsi
	cvtsi2sdl	52(%rsi), %xmm3
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	movq	-24(%rbp), %rdi
	callq	cairo_clip_preserve
	movq	-24(%rbp), %rdi
	callq	cairo_fill
	movq	-48(%rbp), %rdi
	callq	gimp_vectors_get_bezier
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB4_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cvtsi2sdl	48(%rax), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-8(%rbp), %rsi
	cvtsi2sdl	52(%rsi), %xmm0
	movq	-48(%rbp), %rsi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_scale
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm0, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	cairo_device_to_user_distance
	movq	-24(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	jbe	.LBB4_3
# BB#2:                                 # %cond.true
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB4_4
.LBB4_3:                                # %cond.false
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB4_4:                                # %cond.end
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	cairo_set_line_width
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	cairo_append_path
	movq	-24(%rbp), %rdi
	callq	cairo_stroke
.LBB4_5:                                # %if.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_renderer_vectors_draw, .Lfunc_end4-gimp_view_renderer_vectors_draw
	.cfi_endproc

	.type	gimp_view_renderer_vectors_get_type.g_define_type_id__volatile,@object # @gimp_view_renderer_vectors_get_type.g_define_type_id__volatile
	.local	gimp_view_renderer_vectors_get_type.g_define_type_id__volatile
	.comm	gimp_view_renderer_vectors_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewRendererVectors"
	.size	.L.str, 24

	.type	gimp_view_renderer_vectors_parent_class,@object # @gimp_view_renderer_vectors_parent_class
	.local	gimp_view_renderer_vectors_parent_class
	.comm	gimp_view_renderer_vectors_parent_class,8,8
	.type	GimpViewRendererVectors_private_offset,@object # @GimpViewRendererVectors_private_offset
	.local	GimpViewRendererVectors_private_offset
	.comm	GimpViewRendererVectors_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
