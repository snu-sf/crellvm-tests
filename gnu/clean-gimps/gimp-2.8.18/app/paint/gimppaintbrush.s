	.text
	.file	"gimppaintbrush.bc"
	.globl	gimp_paintbrush_get_type
	.align	16, 0x90
	.type	gimp_paintbrush_get_type,@function
gimp_paintbrush_get_type:               # @gimp_paintbrush_get_type
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
	movq	gimp_paintbrush_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_paintbrush_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_brush_core_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$248, %edx
	movabsq	$gimp_paintbrush_class_intern_init, %rdi
	movl	$6480, %r8d             # imm = 0x1950
	movabsq	$gimp_paintbrush_init, %rcx
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
	movabsq	$gimp_paintbrush_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_paintbrush_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_paintbrush_get_type, .Lfunc_end0-gimp_paintbrush_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paintbrush_class_intern_init,@function
gimp_paintbrush_class_intern_init:      # @gimp_paintbrush_class_intern_init
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
	movq	%rax, gimp_paintbrush_parent_class
	cmpl	$0, GimpPaintbrush_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPaintbrush_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_paintbrush_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_paintbrush_class_intern_init, .Lfunc_end1-gimp_paintbrush_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paintbrush_init,@function
gimp_paintbrush_init:                   # @gimp_paintbrush_init
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
	.size	gimp_paintbrush_init, .Lfunc_end2-gimp_paintbrush_init
	.cfi_endproc

	.globl	gimp_paintbrush_register
	.align	16, 0x90
	.type	gimp_paintbrush_register,@function
gimp_paintbrush_register:               # @gimp_paintbrush_register
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_paintbrush_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_paint_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.1, %rcx
	movabsq	$.L.str.3, %r9
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movq	-24(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_paintbrush_register, .Lfunc_end3-gimp_paintbrush_register
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_gimp_paintbrush_motion
	.align	16, 0x90
	.type	_gimp_paintbrush_motion,@function
_gimp_paintbrush_motion:                # @_gimp_paintbrush_motion
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%esi, %esi
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-8(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movsd	%xmm0, -152(%rbp)
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	xorps	%xmm1, %xmm1
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB4_2
	jp	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_15
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_paint_core_get_paint_area
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then.12
	jmp	.LBB4_15
.LBB4_4:                                # %if.end.13
	movl	$3, %esi
	movq	-24(%rbp), %rax
	movl	384(%rax), %ecx
	movl	%ecx, -144(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	leaq	-128(%rbp), %rdx
	movsd	%xmm0, -160(%rbp)
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	264(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_paint_options_get_gradient_color
	cmpl	$0, %eax
	je	.LBB4_6
# BB#5:                                 # %if.then.19
	leaq	-128(%rbp), %rdi
	leaq	-140(%rbp), %rax
	movl	.L_gimp_paintbrush_motion.pixel, %ecx
	movl	%ecx, -172(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	gimp_rgb_get_uchar
	movq	-96(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_type
	xorl	%ecx, %ecx
	leaq	-140(%rbp), %r8
	leaq	-172(%rbp), %rdx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_transform_color
	movq	-136(%rbp), %rdi
	callq	temp_buf_get_data
	leaq	-172(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movl	4(%rdx), %ecx
	movq	-136(%rbp), %rdx
	imull	8(%rdx), %ecx
	movq	-136(%rbp), %rdx
	movl	(%rdx), %r9d
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%r9d, %ecx
	callq	color_pixels
	movl	$1, -144(%rbp)
	jmp	.LBB4_11
.LBB4_6:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB4_9
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	360(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB4_9
# BB#8:                                 # %if.then.31
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_brush_mode
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	callq	gimp_brush_core_color_area_with_pixmap
	movl	$1, -144(%rbp)
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.33
	movq	-96(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	leaq	-140(%rbp), %rcx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_get_foreground
	movq	-136(%rbp), %rcx
	movl	(%rcx), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movb	$-1, -140(%rbp,%rcx)
	movq	-136(%rbp), %rdi
	callq	temp_buf_get_data
	leaq	-140(%rbp), %rsi
	movq	-136(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-136(%rbp), %rcx
	imull	8(%rcx), %edx
	movq	-136(%rbp), %rcx
	movl	(%rcx), %ecx
	movq	%rax, %rdi
	callq	color_pixels
.LBB4_10:                               # %if.end.44
	jmp	.LBB4_11
.LBB4_11:                               # %if.end.45
	movl	$5, %esi
	movq	-64(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	ucomisd	-40(%rbp), %xmm1
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	jbe	.LBB4_13
# BB#12:                                # %cond.true
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB4_14
.LBB4_14:                               # %cond.end
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	callq	gimp_context_get_opacity
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	callq	gimp_context_get_paint_mode
	movq	-24(%rbp), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	gimp_paint_options_get_brush_mode
	movsd	-168(%rbp), %xmm2       # xmm2 = mem[0],zero
	movl	-144(%rbp), %r9d
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-316(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_brush_core_paste_canvas
.LBB4_15:                               # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_gimp_paintbrush_motion, .Lfunc_end4-_gimp_paintbrush_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paintbrush_class_init,@function
gimp_paintbrush_class_init:             # @gimp_paintbrush_class_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_paintbrush_paint, %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 176(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 216(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_paintbrush_class_init, .Lfunc_end5-gimp_paintbrush_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_paintbrush_paint,@function
gimp_paintbrush_paint:                  # @gimp_paintbrush_paint
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	-36(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	jne	.LBB6_2
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_gimp_paintbrush_motion
	jmp	.LBB6_3
.LBB6_2:                                # %sw.default
	jmp	.LBB6_3
.LBB6_3:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_paintbrush_paint, .Lfunc_end6-gimp_paintbrush_paint
	.cfi_endproc

	.type	gimp_paintbrush_get_type.g_define_type_id__volatile,@object # @gimp_paintbrush_get_type.g_define_type_id__volatile
	.local	gimp_paintbrush_get_type.g_define_type_id__volatile
	.comm	gimp_paintbrush_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPaintbrush"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-paintbrush"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Paintbrush"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.3, 21

	.type	.L_gimp_paintbrush_motion.pixel,@object # @_gimp_paintbrush_motion.pixel
	.section	.rodata.cst4,"aM",@progbits,4
.L_gimp_paintbrush_motion.pixel:
	.zero	4,255
	.size	.L_gimp_paintbrush_motion.pixel, 4

	.type	gimp_paintbrush_parent_class,@object # @gimp_paintbrush_parent_class
	.local	gimp_paintbrush_parent_class
	.comm	gimp_paintbrush_parent_class,8,8
	.type	GimpPaintbrush_private_offset,@object # @GimpPaintbrush_private_offset
	.local	GimpPaintbrush_private_offset
	.comm	GimpPaintbrush_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
