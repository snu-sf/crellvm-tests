	.text
	.file	"gfig-rectangle.bc"
	.globl	d_rectangle_object_class_init
	.align	16, 0x90
	.type	d_rectangle_object_class_init,@function
d_rectangle_object_class_init:          # @d_rectangle_object_class_init
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
	movabsq	$d_update_rectangle, %rax
	movabsq	$d_copy_rectangle, %rcx
	movabsq	$d_paint_rectangle, %rdx
	movabsq	$d_draw_rectangle, %rsi
	movabsq	$.L.str, %rdi
	movabsq	$dobj_class, %r8
	addq	$96, %r8
	movq	%r8, -8(%rbp)
	movq	-8(%rbp), %r8
	movl	$2, (%r8)
	movq	-8(%rbp), %r8
	movq	%rdi, 8(%r8)
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	d_rectangle_object_class_init, .Lfunc_end0-d_rectangle_object_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	d_draw_rectangle,@function
d_draw_rectangle:                       # @d_draw_rectangle
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_20
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rcx
	movq	gfig_context, %rdx
	cmpq	24(%rdx), %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_sqr
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then.2
	jmp	.LBB1_20
.LBB1_4:                                # %if.end.3
	movq	-8(%rbp), %rax
	cmpq	obj_creating, %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.6
	movl	$1, %esi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_circle
	jmp	.LBB1_7
.LBB1_6:                                # %if.else
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rcx
	movq	gfig_context, %rdx
	cmpq	24(%rdx), %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_sqr
.LBB1_7:                                # %if.end.12
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	callq	gfig_scale_x
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gfig_scale_x
	movl	-52(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	jge	.LBB1_9
# BB#8:                                 # %cond.true
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	callq	gfig_scale_x
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB1_10
.LBB1_9:                                # %cond.false
	movq	-32(%rbp), %rax
	movl	8(%rax), %edi
	callq	gfig_scale_x
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB1_10:                               # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	movl	12(%rcx), %edi
	callq	gfig_scale_y
	movq	-32(%rbp), %rcx
	movl	12(%rcx), %edi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gfig_scale_y
	movl	-60(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	jge	.LBB1_12
# BB#11:                                # %cond.true.32
	movq	-24(%rbp), %rax
	movl	12(%rax), %edi
	callq	gfig_scale_y
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %cond.false.36
	movq	-32(%rbp), %rax
	movl	12(%rax), %edi
	callq	gfig_scale_y
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB1_13:                               # %cond.end.40
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edi
	callq	gfig_scale_x
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gfig_scale_x
	movl	-68(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB1_15
# BB#14:                                # %cond.true.50
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	callq	gfig_scale_x
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false.54
	movq	-32(%rbp), %rax
	movl	8(%rax), %edi
	callq	gfig_scale_x
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB1_16:                               # %cond.end.58
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rcx
	movl	12(%rcx), %edi
	callq	gfig_scale_y
	movq	-32(%rbp), %rcx
	movl	12(%rcx), %edi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gfig_scale_y
	movl	-76(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB1_18
# BB#17:                                # %cond.true.68
	movq	-24(%rbp), %rax
	movl	12(%rax), %edi
	callq	gfig_scale_y
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB1_19
.LBB1_18:                               # %cond.false.72
	movq	-32(%rbp), %rax
	movl	12(%rax), %edi
	callq	gfig_scale_y
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB1_19:                               # %cond.end.76
	movl	-80(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	-40(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-48(%rbp), %eax
	subl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_rectangle
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	draw_item
.LBB1_20:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	d_draw_rectangle, .Lfunc_end1-d_draw_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	d_paint_rectangle,@function
d_paint_rectangle:                      # @d_paint_rectangle
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$89, %edx
	movabsq	$.L__func__.d_paint_rectangle, %rcx
	movabsq	$.L.str.2, %r8
	callq	g_assertion_message_expr
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_7
# BB#6:                                 # %if.then.1
	jmp	.LBB2_28
.LBB2_7:                                # %if.end.2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_9
# BB#8:                                 # %if.then.4
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_error
.LBB2_9:                                # %if.end.5
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	8(%rax), %ecx
	jge	.LBB2_11
# BB#10:                                # %cond.true
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB2_12
.LBB2_11:                               # %cond.false
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
.LBB2_12:                               # %cond.end
	movl	-148(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %eax
	movq	-24(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB2_14
# BB#13:                                # %cond.true.18
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	jmp	.LBB2_15
.LBB2_14:                               # %cond.false.21
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
.LBB2_15:                               # %cond.end.24
	movl	-152(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB2_17
# BB#16:                                # %cond.true.34
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	jmp	.LBB2_18
.LBB2_17:                               # %cond.false.37
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
.LBB2_18:                               # %cond.end.40
	movl	-156(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %eax
	movq	-24(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jle	.LBB2_20
# BB#19:                                # %cond.true.50
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB2_21
.LBB2_20:                               # %cond.false.53
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
.LBB2_21:                               # %cond.end.56
	movl	-160(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -40(%rbp)
	cmpl	$0, selvals+120
	je	.LBB2_23
# BB#22:                                # %if.then.61
	movl	$2, %esi
	leaq	-64(%rbp), %rdi
	callq	scale_to_original_xy
	jmp	.LBB2_24
.LBB2_23:                               # %if.else.63
	movl	$2, %esi
	leaq	-64(%rbp), %rdi
	callq	scale_to_xy
.LBB2_24:                               # %if.end.65
	callq	gfig_context_get_current_style
	cmpl	$0, 56(%rax)
	je	.LBB2_26
# BB#25:                                # %if.then.68
	callq	gimp_context_push
	movl	selopt+8, %edi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_context_set_feather
	movsd	selopt+16, %xmm0        # xmm0 = mem[0],zero
	movsd	selopt+16, %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_context_set_feather_radius
	movq	gfig_context, %rcx
	movl	8(%rcx), %edi
	movl	selopt, %esi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-64(%rbp), %xmm2
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-56(%rbp), %xmm3
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_image_select_rectangle
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_context_pop
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	paint_layer_fill
	movq	gfig_context, %rcx
	movl	8(%rcx), %edi
	callq	gimp_selection_none
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB2_26:                               # %if.end.87
	movq	-8(%rbp), %rax
	cmpl	$1, 120(%rax)
	jne	.LBB2_28
# BB#27:                                # %if.then.90
	movl	$10, %edx
	leaq	-144(%rbp), %rcx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movl	selvals+136, %edi
	movq	gfig_context, %rax
	movl	12(%rax), %esi
	callq	gfig_paint
.LBB2_28:                               # %if.end.109
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	d_paint_rectangle, .Lfunc_end2-d_paint_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	d_copy_rectangle,@function
d_copy_rectangle:                       # @d_copy_rectangle
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$149, %edx
	movabsq	$.L__func__.d_copy_rectangle, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movl	$2, %edi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	12(%rax), %edx
	callq	d_new_object
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdi
	callq	d_copy_dobjpoints
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	d_copy_rectangle, .Lfunc_end3-d_copy_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	d_update_rectangle,@function
d_update_rectangle:                     # @d_update_rectangle
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
	movq	obj_creating, %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_5
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB4_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	callq	new_dobjpoint
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB4_5:                                # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	d_update_rectangle, .Lfunc_end4-d_update_rectangle
	.cfi_endproc

	.globl	d_rectangle_start
	.align	16, 0x90
	.type	d_rectangle_start,@function
d_rectangle_start:                      # @d_rectangle_start
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
	subq	$16, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %esi
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %edx
	movl	%eax, %edi
	callq	d_new_object
	movq	%rax, obj_creating
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	d_rectangle_start, .Lfunc_end5-d_rectangle_start
	.cfi_endproc

	.globl	d_rectangle_end
	.align	16, 0x90
	.type	d_rectangle_end,@function
d_rectangle_end:                        # @d_rectangle_end
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
	movl	%esi, -12(%rbp)
	movq	obj_creating, %rdi
	movq	24(%rdi), %rdi
	cmpq	$0, (%rdi)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	obj_creating, %rdi
	callq	free_one_obj
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	gfig_context, %rax
	movq	16(%rax), %rdi
	movq	obj_creating, %rsi
	callq	add_to_all_obj
.LBB6_3:                                # %if.end
	movq	$0, obj_creating
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	d_rectangle_end, .Lfunc_end6-d_rectangle_end
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	subq	$400, %rsp              # imm = 0x190
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB7_3
# BB#2:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB7_3:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$4, %esi
	leaq	-32(%rbp), %r10
	movq	%r8, -8(%rbp)
	movq	%r10, %r8
	leaq	-208(%rbp), %r11
	movq	%r11, 16(%r8)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r10, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB7_1
.Lfunc_end7:
	.size	g_error, .Lfunc_end7-g_error
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"RECTANGLE"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gfig-rectangle.c"
	.size	.L.str.1, 17

	.type	.L__func__.d_paint_rectangle,@object # @__func__.d_paint_rectangle
.L__func__.d_paint_rectangle:
	.asciz	"d_paint_rectangle"
	.size	.L__func__.d_paint_rectangle, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"obj != NULL"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Internal error - rectangle no second pnt"
	.size	.L.str.3, 41

	.type	.L__func__.d_copy_rectangle,@object # @__func__.d_copy_rectangle
.L__func__.d_copy_rectangle:
	.asciz	"d_copy_rectangle"
	.size	.L__func__.d_copy_rectangle, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"obj->type == RECTANGLE"
	.size	.L.str.4, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
