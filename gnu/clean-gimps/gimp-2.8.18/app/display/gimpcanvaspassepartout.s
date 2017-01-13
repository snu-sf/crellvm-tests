	.text
	.file	"gimpcanvaspassepartout.bc"
	.globl	gimp_canvas_passe_partout_get_type
	.align	16, 0x90
	.type	gimp_canvas_passe_partout_get_type,@function
gimp_canvas_passe_partout_get_type:     # @gimp_canvas_passe_partout_get_type
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
	movq	gimp_canvas_passe_partout_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_passe_partout_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_canvas_rectangle_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$208, %edx
	movabsq	$gimp_canvas_passe_partout_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_passe_partout_init, %rcx
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
	movabsq	$gimp_canvas_passe_partout_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_passe_partout_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_passe_partout_get_type, .Lfunc_end0-gimp_canvas_passe_partout_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_passe_partout_class_intern_init,@function
gimp_canvas_passe_partout_class_intern_init: # @gimp_canvas_passe_partout_class_intern_init
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
	movq	%rax, gimp_canvas_passe_partout_parent_class
	cmpl	$0, GimpCanvasPassePartout_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasPassePartout_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_passe_partout_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_passe_partout_class_intern_init, .Lfunc_end1-gimp_canvas_passe_partout_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_passe_partout_init,@function
gimp_canvas_passe_partout_init:         # @gimp_canvas_passe_partout_init
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
	.size	gimp_canvas_passe_partout_init, .Lfunc_end2-gimp_canvas_passe_partout_init
	.cfi_endproc

	.globl	gimp_canvas_passe_partout_new
	.align	16, 0x90
	.type	gimp_canvas_passe_partout_new,@function
gimp_canvas_passe_partout_new:          # @gimp_canvas_passe_partout_new
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_passe_partout_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_canvas_passe_partout_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rdi
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-32(%rbp), %r14
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$4, %al
	movl	%r10d, -108(%rbp)       # 4-byte Spill
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -24(%rbp)
.LBB3_13:                               # %return
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_passe_partout_new, .Lfunc_end3-gimp_canvas_passe_partout_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_passe_partout_class_init,@function
gimp_canvas_passe_partout_class_init:   # @gimp_canvas_passe_partout_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_canvas_passe_partout_fill, %rsi
	movabsq	$gimp_canvas_passe_partout_get_extents, %rdi
	movabsq	$gimp_canvas_passe_partout_draw, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 168(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 176(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 192(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_passe_partout_class_init, .Lfunc_end4-gimp_canvas_passe_partout_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_passe_partout_draw,@function
gimp_canvas_passe_partout_draw:         # @gimp_canvas_passe_partout_draw
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
	subq	$48, %rsp
	leaq	-28(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_display_shell_draw_get_scaled_image_size
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	%r8d, %r9d
	subl	188(%rax), %r9d
	cvtsi2sdl	%r9d, %xmm0
	movq	-16(%rbp), %rax
	subl	192(%rax), %r8d
	cvtsi2sdl	%r8d, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	cvtsi2sdl	-32(%rbp), %xmm3
	callq	cairo_rectangle
	movq	gimp_canvas_passe_partout_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_passe_partout_draw, .Lfunc_end5-gimp_canvas_passe_partout_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_passe_partout_get_extents,@function
gimp_canvas_passe_partout_get_extents:  # @gimp_canvas_passe_partout_get_extents
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
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%ecx, %edx
	subl	188(%rsi), %edx
	movl	%edx, -32(%rbp)
	movq	-16(%rbp), %rsi
	subl	192(%rsi), %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	addq	$8, %rsi
	addq	$12, %rax
	movq	%rax, %rdx
	callq	gimp_display_shell_draw_get_scaled_image_size
	leaq	-32(%rbp), %rdi
	callq	cairo_region_create_rectangle
	movq	%rax, -48(%rbp)
	movq	gimp_canvas_passe_partout_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	cairo_region_xor
	movq	-48(%rbp), %rdx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rdx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_passe_partout_get_extents, .Lfunc_end6-gimp_canvas_passe_partout_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_passe_partout_fill,@function
gimp_canvas_passe_partout_fill:         # @gimp_canvas_passe_partout_fill
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, %ecx
	subl	188(%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-16(%rbp), %rdx
	subl	192(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_translate
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	cairo_set_fill_rule
	movq	-24(%rbp), %rdi
	callq	cairo_clip
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_shell_set_passe_partout_style
	movq	-24(%rbp), %rdi
	callq	cairo_paint
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_passe_partout_fill, .Lfunc_end7-gimp_canvas_passe_partout_fill
	.cfi_endproc

	.type	gimp_canvas_passe_partout_get_type.g_define_type_id__volatile,@object # @gimp_canvas_passe_partout_get_type.g_define_type_id__volatile
	.local	gimp_canvas_passe_partout_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_passe_partout_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasPassePartout"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_passe_partout_new,@object # @__func__.gimp_canvas_passe_partout_new
.L__func__.gimp_canvas_passe_partout_new:
	.asciz	"gimp_canvas_passe_partout_new"
	.size	.L__func__.gimp_canvas_passe_partout_new, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"shell"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"x"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"y"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"width"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"height"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"filled"
	.size	.L.str.8, 7

	.type	gimp_canvas_passe_partout_parent_class,@object # @gimp_canvas_passe_partout_parent_class
	.local	gimp_canvas_passe_partout_parent_class
	.comm	gimp_canvas_passe_partout_parent_class,8,8
	.type	GimpCanvasPassePartout_private_offset,@object # @GimpCanvasPassePartout_private_offset
	.local	GimpCanvasPassePartout_private_offset
	.comm	GimpCanvasPassePartout_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
