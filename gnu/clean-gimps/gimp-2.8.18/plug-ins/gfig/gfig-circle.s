	.text
	.file	"gfig-circle.bc"
	.globl	d_circle_object_class_init
	.align	16, 0x90
	.type	d_circle_object_class_init,@function
d_circle_object_class_init:             # @d_circle_object_class_init
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
	movabsq	$d_update_circle, %rax
	movabsq	$d_copy_circle, %rcx
	movabsq	$d_paint_circle, %rdx
	movabsq	$d_draw_circle, %rsi
	movabsq	$.L.str, %rdi
	movabsq	$dobj_class, %r8
	addq	$144, %r8
	movq	%r8, -8(%rbp)
	movq	-8(%rbp), %r8
	movl	$3, (%r8)
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
	.size	d_circle_object_class_init, .Lfunc_end0-d_circle_object_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	d_draw_circle,@function
d_draw_circle:                          # @d_draw_circle
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_8
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
	jmp	.LBB1_8
.LBB1_4:                                # %if.end.3
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	addq	$8, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	calc_radius
	movl	%eax, -36(%rbp)
	movq	obj_creating, %rcx
	cmpq	-8(%rbp), %rcx
	jne	.LBB1_6
# BB#5:                                 # %if.then.8
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
.LBB1_7:                                # %if.end.14
	xorl	%r8d, %r8d
	movl	$360, %r9d              # imm = 0x168
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	movq	-24(%rbp), %rax
	movl	12(%rax), %esi
	movl	-36(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gfig_draw_arc
.LBB1_8:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	d_draw_circle, .Lfunc_end1-d_draw_circle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4611686018427387904     # double 2
.LCPI2_1:
	.quad	4585191390103903545     # double 0.034906585039886591
	.text
	.align	16, 0x90
	.type	d_paint_circle,@function
d_paint_circle:                         # @d_paint_circle
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
	subq	$3072, %rsp             # imm = 0xC00
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
	movl	$94, %edx
	movabsq	$.L__func__.d_paint_circle, %rcx
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
	jmp	.LBB2_19
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
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	addq	$8, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	calc_radius
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rcx
	cvtsi2sdl	8(%rcx), %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-16(%rbp), %rcx
	cvtsi2sdl	12(%rcx), %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
	cmpl	$0, selvals+120
	je	.LBB2_11
# BB#10:                                # %if.then.18
	movl	$2, %esi
	leaq	-64(%rbp), %rdi
	callq	scale_to_original_xy
	jmp	.LBB2_12
.LBB2_11:                               # %if.else.20
	movl	$2, %esi
	leaq	-64(%rbp), %rdi
	callq	scale_to_xy
.LBB2_12:                               # %if.end.22
	callq	gfig_context_get_current_style
	cmpl	$0, 56(%rax)
	je	.LBB2_14
# BB#13:                                # %if.then.26
	callq	gimp_context_push
	movl	selopt+4, %edi
	movl	%eax, -3008(%rbp)       # 4-byte Spill
	callq	gimp_context_set_antialias
	movl	selopt+8, %edi
	movl	%eax, -3012(%rbp)       # 4-byte Spill
	callq	gimp_context_set_feather
	movsd	selopt+16, %xmm0        # xmm0 = mem[0],zero
	movsd	selopt+16, %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -3016(%rbp)       # 4-byte Spill
	callq	gimp_context_set_feather_radius
	movq	gfig_context, %rcx
	movl	8(%rcx), %edi
	movl	selopt, %esi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -3020(%rbp)       # 4-byte Spill
	callq	gimp_image_select_ellipse
	movl	%eax, -3024(%rbp)       # 4-byte Spill
	callq	gimp_context_pop
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %esi
	subl	-28(%rbp), %esi
	cvtsi2sdl	%esi, %xmm0
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %esi
	subl	-28(%rbp), %esi
	cvtsi2sdl	%esi, %xmm1
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %esi
	addl	-28(%rbp), %esi
	cvtsi2sdl	%esi, %xmm2
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %esi
	addl	-28(%rbp), %esi
	cvtsi2sdl	%esi, %xmm3
	movl	%eax, -3028(%rbp)       # 4-byte Spill
	callq	paint_layer_fill
	movq	gfig_context, %rcx
	movl	8(%rcx), %edi
	callq	gimp_selection_none
	movl	%eax, -3032(%rbp)       # 4-byte Spill
.LBB2_14:                               # %if.end.54
	movq	-8(%rbp), %rax
	cmpl	$1, 120(%rax)
	jne	.LBB2_19
# BB#15:                                # %if.then.57
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -72(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-72(%rbp), %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-72(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	%xmm0, -3000(%rbp)
	movl	$0, -3004(%rbp)
.LBB2_16:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$362, -3004(%rbp)       # imm = 0x16A
	jge	.LBB2_18
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB2_16 Depth=1
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-3000(%rbp), %xmm3      # xmm3 = mem[0],zero
	movsd	%xmm0, -3040(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -3048(%rbp)      # 8-byte Spill
	movsd	%xmm1, -3056(%rbp)      # 8-byte Spill
	callq	cos
	movsd	-3048(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-3056(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movl	-3004(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -3004(%rbp)
	movslq	%eax, %rdx
	movsd	%xmm0, -2992(%rbp,%rdx,8)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-3000(%rbp), %xmm2      # xmm2 = mem[0],zero
	movsd	%xmm0, -3064(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -3072(%rbp)      # 8-byte Spill
	callq	sin
	movsd	-3072(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-3064(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movl	-3004(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -3004(%rbp)
	movslq	%eax, %rdx
	movsd	%xmm0, -2992(%rbp,%rdx,8)
	movsd	-3040(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-3000(%rbp), %xmm0
	movsd	%xmm0, -3000(%rbp)
	jmp	.LBB2_16
.LBB2_18:                               # %while.end
	leaq	-2992(%rbp), %rcx
	movl	selvals+136, %edi
	movq	gfig_context, %rax
	movl	12(%rax), %esi
	movl	-3004(%rbp), %edx
	callq	gfig_paint
.LBB2_19:                               # %if.end.76
	addq	$3072, %rsp             # imm = 0xC00
	popq	%rbp
	retq
.Lfunc_end2:
	.size	d_paint_circle, .Lfunc_end2-d_paint_circle
	.cfi_endproc

	.align	16, 0x90
	.type	d_copy_circle,@function
d_copy_circle:                          # @d_copy_circle
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
	cmpl	$3, (%rax)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$168, %edx
	movabsq	$.L__func__.d_copy_circle, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movl	$3, %edi
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
	.size	d_copy_circle, .Lfunc_end3-d_copy_circle
	.cfi_endproc

	.align	16, 0x90
	.type	d_update_circle,@function
d_update_circle:                        # @d_update_circle
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
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rax)
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
.LBB4_5:                                # %if.end.5
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	d_update_circle, .Lfunc_end4-d_update_circle
	.cfi_endproc

	.globl	d_circle_start
	.align	16, 0x90
	.type	d_circle_start,@function
d_circle_start:                         # @d_circle_start
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
	movl	$3, %eax
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
	.size	d_circle_start, .Lfunc_end5-d_circle_start
	.cfi_endproc

	.globl	d_circle_end
	.align	16, 0x90
	.type	d_circle_end,@function
d_circle_end:                           # @d_circle_end
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
	.size	d_circle_end, .Lfunc_end6-d_circle_end
	.cfi_endproc

	.align	16, 0x90
	.type	calc_radius,@function
calc_radius:                            # @calc_radius
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
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	subl	(%rsi), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	4(%rsi), %eax
	movq	-16(%rbp), %rsi
	subl	4(%rsi), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	imull	-24(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	callq	sqrt
	cvttsd2si	%xmm0, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	calc_radius, .Lfunc_end7-calc_radius
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	je	.LBB8_3
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
.LBB8_3:                                # %entry
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
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB8_1
.Lfunc_end8:
	.size	g_error, .Lfunc_end8-g_error
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CIRCLE"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gfig-circle.c"
	.size	.L.str.1, 14

	.type	.L__func__.d_paint_circle,@object # @__func__.d_paint_circle
.L__func__.d_paint_circle:
	.asciz	"d_paint_circle"
	.size	.L__func__.d_paint_circle, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"obj != NULL"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Internal error - circle no edge pnt"
	.size	.L.str.3, 36

	.type	d_paint_circle.step,@object # @d_paint_circle.step
	.section	.rodata,"a",@progbits
	.align	8
d_paint_circle.step:
	.quad	4585191390103903545     # double 0.034906585039886591
	.size	d_paint_circle.step, 8

	.type	.L__func__.d_copy_circle,@object # @__func__.d_copy_circle
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.d_copy_circle:
	.asciz	"d_copy_circle"
	.size	.L__func__.d_copy_circle, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"obj->type == CIRCLE"
	.size	.L.str.4, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
