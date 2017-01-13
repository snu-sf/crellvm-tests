	.text
	.file	"gimpviewrendererbrush.bc"
	.globl	gimp_view_renderer_brush_get_type
	.align	16, 0x90
	.type	gimp_view_renderer_brush_get_type,@function
gimp_view_renderer_brush_get_type:      # @gimp_view_renderer_brush_get_type
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
	movq	gimp_view_renderer_brush_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_view_renderer_brush_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_view_renderer_brush_class_intern_init, %rdi
	movl	$160, %r8d
	movabsq	$gimp_view_renderer_brush_init, %rcx
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
	movabsq	$gimp_view_renderer_brush_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_view_renderer_brush_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_brush_get_type, .Lfunc_end0-gimp_view_renderer_brush_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_brush_class_intern_init,@function
gimp_view_renderer_brush_class_intern_init: # @gimp_view_renderer_brush_class_intern_init
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
	movq	%rax, gimp_view_renderer_brush_parent_class
	cmpl	$0, GimpViewRendererBrush_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewRendererBrush_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_view_renderer_brush_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_renderer_brush_class_intern_init, .Lfunc_end1-gimp_view_renderer_brush_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_brush_init,@function
gimp_view_renderer_brush_init:          # @gimp_view_renderer_brush_init
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
	movq	-8(%rbp), %rdi
	movl	$0, 152(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 156(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_view_renderer_brush_init, .Lfunc_end2-gimp_view_renderer_brush_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_brush_class_init,@function
gimp_view_renderer_brush_class_init:    # @gimp_view_renderer_brush_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_view_renderer_brush_draw, %rsi
	movabsq	$gimp_view_renderer_brush_render, %rdi
	movabsq	$gimp_view_renderer_brush_finalize, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 192(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 184(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_renderer_brush_class_init, .Lfunc_end3-gimp_view_renderer_brush_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_brush_finalize,@function
gimp_view_renderer_brush_finalize:      # @gimp_view_renderer_brush_finalize
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
	callq	gimp_view_renderer_brush_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 152(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	152(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 152(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB4_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_view_renderer_brush_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_renderer_brush_finalize, .Lfunc_end4-gimp_view_renderer_brush_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_brush_render,@function
gimp_view_renderer_brush_render:        # @gimp_view_renderer_brush_render
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_brush_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 152(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	152(%rax), %edi
	callq	g_source_remove
	movq	-24(%rbp), %rcx
	movl	$0, 152(%rcx)
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	callq	gimp_viewable_get_new_preview
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	48(%rax), %ecx
	jge	.LBB5_4
# BB#3:                                 # %if.then.8
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-32(%rbp), %rcx
	subl	4(%rcx), %edx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-72(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movq	-32(%rbp), %rcx
	movl	%eax, 12(%rcx)
.LBB5_4:                                # %if.end.11
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	52(%rax), %ecx
	jge	.LBB5_6
# BB#5:                                 # %if.then.15
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	52(%rcx), %edx
	movq	-32(%rbp), %rcx
	subl	8(%rcx), %edx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-76(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movq	-32(%rbp), %rcx
	movl	%eax, 16(%rcx)
.LBB5_6:                                # %if.end.20
	movq	-8(%rbp), %rax
	movb	60(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB5_17
# BB#7:                                 # %if.then.22
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_view_renderer_render_temp_buf
	movq	-32(%rbp), %rdi
	callq	temp_buf_free
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	callq	gimp_brush_pipe_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_9
# BB#8:                                 # %if.then.26
	movl	$0, -52(%rbp)
	jmp	.LBB5_14
.LBB5_9:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_12
# BB#10:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_12
# BB#11:                                # %if.then.30
	movl	$1, -52(%rbp)
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.31
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_13:                               # %if.end.33
	jmp	.LBB5_14
.LBB5_14:                               # %if.end.34
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_16
# BB#15:                                # %if.then.36
	movl	$300, %edi              # imm = 0x12C
	movabsq	$gimp_view_renderer_brush_render_timeout, %rsi
	movq	-24(%rbp), %rax
	movl	$0, 156(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	g_timeout_add
	movq	-24(%rbp), %rdx
	movl	%eax, 152(%rdx)
.LBB5_16:                               # %if.end.39
	jmp	.LBB5_18
.LBB5_17:                               # %if.end.40
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_view_renderer_render_temp_buf
	movq	-32(%rbp), %rdi
	callq	temp_buf_free
.LBB5_18:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_view_renderer_brush_render, .Lfunc_end5-gimp_view_renderer_brush_render
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4619567317775286272     # double 7
.LCPI6_1:
	.quad	-4603804719079489536    # double -7
.LCPI6_2:
	.quad	4602678819172646912     # double 0.5
.LCPI6_3:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI6_4:
	.quad	4607182418800017408     # double 1
.LCPI6_5:
	.quad	4617315517961601024     # double 5
.LCPI6_6:
	.quad	4615063718147915776     # double 3.5
	.text
	.align	16, 0x90
	.type	gimp_view_renderer_brush_draw,@function
gimp_view_renderer_brush_draw:          # @gimp_view_renderer_brush_draw
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	gimp_view_renderer_brush_parent_class, %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpl	$14, 48(%rax)
	jle	.LBB6_26
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$14, 52(%rax)
	jle	.LBB6_26
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_pipe_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.4
	movl	$0, -60(%rbp)
	jmp	.LBB6_9
.LBB6_4:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_7
# BB#5:                                 # %land.lhs.true.6
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_7
# BB#6:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB6_8
.LBB6_7:                                # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_8:                                # %if.end
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.12
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB6_11
# BB#10:                                # %if.then.23
	movl	$0, -92(%rbp)
	jmp	.LBB6_16
.LBB6_11:                               # %if.else.24
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_14
# BB#12:                                # %land.lhs.true.27
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB6_14
# BB#13:                                # %if.then.31
	movl	$1, -92(%rbp)
	jmp	.LBB6_15
.LBB6_14:                               # %if.else.32
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB6_15:                               # %if.end.34
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.35
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.LBB6_18
# BB#17:                                # %lor.lhs.false
	cmpl	$0, -36(%rbp)
	je	.LBB6_22
.LBB6_18:                               # %if.then.41
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	callq	cairo_move_to
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-24(%rbp), %rdi
	callq	cairo_rel_line_to
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	cairo_rel_line_to
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	cairo_rel_line_to
	cmpl	$0, -36(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.44
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.45
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_4, %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	cairo_set_source_rgb
.LBB6_21:                               # %if.end.46
	movq	-24(%rbp), %rdi
	callq	cairo_fill
.LBB6_22:                               # %if.end.47
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_size
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %ecx
	cmpl	-100(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jl	.LBB6_24
# BB#23:                                # %lor.lhs.false.53
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	cmpl	-104(%rbp), %ecx
	jge	.LBB6_25
.LBB6_24:                               # %if.then.57
	movsd	.LCPI6_6, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %eax
	subl	$7, %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	subsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movsd	.LCPI6_5, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-24(%rbp), %rdi
	callq	cairo_rel_line_to
	movsd	.LCPI6_6, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movl	-32(%rbp), %eax
	subl	$7, %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_5, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	cairo_rel_line_to
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-144(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-24(%rbp), %rdi
	callq	cairo_stroke
.LBB6_25:                               # %if.end.66
	jmp	.LBB6_26
.LBB6_26:                               # %if.end.67
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_view_renderer_brush_draw, .Lfunc_end6-gimp_view_renderer_brush_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_brush_render_timeout,@function
gimp_view_renderer_brush_render_timeout: # @gimp_view_renderer_brush_render_timeout
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_brush_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, 152(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 156(%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB7_9
.LBB7_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_brush_pipe_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	156(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 156(%rax)
	movq	-24(%rbp), %rax
	movl	156(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	160(%rax), %ecx
	jl	.LBB7_4
# BB#3:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movl	$0, 156(%rax)
.LBB7_4:                                # %if.end.11
	movq	-24(%rbp), %rax
	movslq	156(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	52(%rcx), %ecx
	movq	%rax, %rdi
	callq	gimp_viewable_get_new_preview
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	48(%rax), %ecx
	jge	.LBB7_6
# BB#5:                                 # %if.then.21
	movl	$2, %eax
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-56(%rbp), %rcx
	subl	4(%rcx), %edx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-100(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-56(%rbp), %rcx
	movl	%eax, 12(%rcx)
.LBB7_6:                                # %if.end.24
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	52(%rax), %ecx
	jge	.LBB7_8
# BB#7:                                 # %if.then.28
	movl	$2, %eax
	movq	-32(%rbp), %rcx
	movl	52(%rcx), %edx
	movq	-56(%rbp), %rcx
	subl	8(%rcx), %edx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-104(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-56(%rbp), %rcx
	movl	%eax, 16(%rcx)
.LBB7_8:                                # %if.end.33
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	$1, %eax
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_view_renderer_render_temp_buf
	movq	-56(%rbp), %rdi
	callq	temp_buf_free
	movq	-32(%rbp), %rdi
	callq	gimp_view_renderer_update
	movl	$1, -4(%rbp)
.LBB7_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_view_renderer_brush_render_timeout, .Lfunc_end7-gimp_view_renderer_brush_render_timeout
	.cfi_endproc

	.type	gimp_view_renderer_brush_get_type.g_define_type_id__volatile,@object # @gimp_view_renderer_brush_get_type.g_define_type_id__volatile
	.local	gimp_view_renderer_brush_get_type.g_define_type_id__volatile
	.comm	gimp_view_renderer_brush_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewRendererBrush"
	.size	.L.str, 22

	.type	gimp_view_renderer_brush_parent_class,@object # @gimp_view_renderer_brush_parent_class
	.local	gimp_view_renderer_brush_parent_class
	.comm	gimp_view_renderer_brush_parent_class,8,8
	.type	GimpViewRendererBrush_private_offset,@object # @GimpViewRendererBrush_private_offset
	.local	GimpViewRendererBrush_private_offset
	.comm	GimpViewRendererBrush_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
