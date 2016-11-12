	.text
	.file	"gimpviewrendererpalette.bc"
	.globl	gimp_view_renderer_palette_get_type
	.align	16, 0x90
	.type	gimp_view_renderer_palette_get_type,@function
gimp_view_renderer_palette_get_type:    # @gimp_view_renderer_palette_get_type
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
	movq	gimp_view_renderer_palette_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_view_renderer_palette_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_view_renderer_palette_class_intern_init, %rdi
	movl	$176, %r8d
	movabsq	$gimp_view_renderer_palette_init, %rcx
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
	movabsq	$gimp_view_renderer_palette_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_view_renderer_palette_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_palette_get_type, .Lfunc_end0-gimp_view_renderer_palette_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_palette_class_intern_init,@function
gimp_view_renderer_palette_class_intern_init: # @gimp_view_renderer_palette_class_intern_init
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
	movq	%rax, gimp_view_renderer_palette_parent_class
	cmpl	$0, GimpViewRendererPalette_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewRendererPalette_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_view_renderer_palette_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_renderer_palette_class_intern_init, .Lfunc_end1-gimp_view_renderer_palette_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_palette_init,@function
gimp_view_renderer_palette_init:        # @gimp_view_renderer_palette_init
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
	movl	$4, 152(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 156(%rdi)
	movq	-8(%rbp), %rdi
	movl	$16, 168(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_view_renderer_palette_init, .Lfunc_end2-gimp_view_renderer_palette_init
	.cfi_endproc

	.globl	gimp_view_renderer_palette_set_cell_size
	.align	16, 0x90
	.type	gimp_view_renderer_palette_set_cell_size,@function
gimp_view_renderer_palette_set_cell_size: # @gimp_view_renderer_palette_set_cell_size
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_renderer_palette_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_palette_set_cell_size, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_14
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	152(%rcx), %eax
	je	.LBB3_14
# BB#13:                                # %if.then.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 152(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_view_renderer_invalidate
.LBB3_14:                               # %if.end.17
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_renderer_palette_set_cell_size, .Lfunc_end3-gimp_view_renderer_palette_set_cell_size
	.cfi_endproc

	.globl	gimp_view_renderer_palette_set_draw_grid
	.align	16, 0x90
	.type	gimp_view_renderer_palette_set_draw_grid,@function
gimp_view_renderer_palette_set_draw_grid: # @gimp_view_renderer_palette_set_draw_grid
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_renderer_palette_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_palette_set_draw_grid, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	156(%rcx), %eax
	je	.LBB4_14
# BB#13:                                # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 156(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_view_renderer_invalidate
.LBB4_14:                               # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_renderer_palette_set_draw_grid, .Lfunc_end4-gimp_view_renderer_palette_set_draw_grid
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_palette_class_init,@function
gimp_view_renderer_palette_class_init:  # @gimp_view_renderer_palette_class_init
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
	movabsq	$gimp_view_renderer_palette_render, %rsi
	movabsq	$gimp_view_renderer_palette_finalize, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 192(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_view_renderer_palette_class_init, .Lfunc_end5-gimp_view_renderer_palette_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_palette_finalize,@function
gimp_view_renderer_palette_finalize:    # @gimp_view_renderer_palette_finalize
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_view_renderer_palette_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_view_renderer_palette_finalize, .Lfunc_end6-gimp_view_renderer_palette_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4625196817309499392     # double 16
.LCPI7_1:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	gimp_view_renderer_palette_render,@function
gimp_view_renderer_palette_render:      # @gimp_view_renderer_palette_render
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_palette_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_62
.LBB7_2:                                # %if.end
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$0, 156(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$0, 152(%rdx)
	jle	.LBB7_10
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_columns
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	jle	.LBB7_8
# BB#4:                                 # %if.then.9
	movq	-24(%rbp), %rax
	cvtsi2sdl	152(%rax), %xmm0
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	subl	-68(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	cvtsi2sdl	-80(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_6
# BB#5:                                 # %cond.true
	movq	-24(%rbp), %rax
	cvtsi2sdl	152(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %cond.false
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	subl	-68(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-80(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB7_7:                                # %cond.end
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB7_9
.LBB7_8:                                # %if.else
	movq	-24(%rbp), %rax
	cvtsi2sdl	152(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB7_9:                                # %if.end.25
	jmp	.LBB7_14
.LBB7_10:                               # %if.else.26
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_columns
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jle	.LBB7_12
# BB#11:                                # %if.then.31
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	subl	-68(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-84(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB7_13
.LBB7_12:                               # %if.else.37
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	subl	-68(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
.LBB7_13:                               # %if.end.42
	jmp	.LBB7_14
.LBB7_14:                               # %if.end.43
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB7_16
# BB#15:                                # %cond.true.46
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB7_17
.LBB7_16:                               # %cond.false.47
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB7_17:                               # %cond.end.48
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	cvttsd2si	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 160(%rcx)
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %eax
	subl	-68(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-64(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 168(%rcx)
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	movq	-24(%rbp), %rcx
	cltd
	idivl	168(%rcx)
	movq	-24(%rbp), %rcx
	movl	%eax, 172(%rcx)
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	movq	-24(%rbp), %rcx
	cltd
	idivl	168(%rcx)
	cmpl	$0, %edx
	je	.LBB7_19
# BB#18:                                # %if.then.63
	movq	-24(%rbp), %rax
	movl	172(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 172(%rax)
.LBB7_19:                               # %if.end.65
	movl	$4, %eax
	movq	-8(%rbp), %rcx
	movl	52(%rcx), %edx
	subl	-68(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	172(%rcx)
	movl	-148(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jle	.LBB7_21
# BB#20:                                # %cond.true.71
	movl	$4, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB7_22
.LBB7_21:                               # %cond.false.72
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	subl	-68(%rbp), %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-160(%rbp), %rsi        # 8-byte Reload
	idivl	172(%rsi)
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB7_22:                               # %cond.end.77
	movl	-152(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 164(%rcx)
	movq	-24(%rbp), %rcx
	cmpl	$0, 156(%rcx)
	jne	.LBB7_27
# BB#23:                                # %if.then.81
	movq	-24(%rbp), %rax
	movl	164(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	160(%rax), %ecx
	jge	.LBB7_25
# BB#24:                                # %cond.true.86
	movq	-24(%rbp), %rax
	movl	164(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB7_26
.LBB7_25:                               # %cond.false.88
	movq	-24(%rbp), %rax
	movl	160(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
.LBB7_26:                               # %cond.end.90
	movl	-164(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 164(%rcx)
.LBB7_27:                               # %if.end.93
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_colors
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB7_29
# BB#28:                                # %if.then.96
	movl	$1, %edi
	movq	-8(%rbp), %rax
	movl	48(%rax), %esi
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	callq	cairo_image_surface_create
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
.LBB7_29:                               # %if.end.101
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_surface_flush
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_image_surface_get_data
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_image_surface_get_stride
	movl	%eax, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB7_30:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_33 Depth 2
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	52(%rcx), %eax
	jge	.LBB7_61
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB7_30 Depth=1
	movl	-76(%rbp), %eax
	movq	-24(%rbp), %rcx
	cltd
	idivl	164(%rcx)
	cmpl	$0, %edx
	jne	.LBB7_55
# BB#32:                                # %if.then.117
                                        #   in Loop: Header=BB7_30 Depth=1
	movl	$255, %eax
	xorl	%ecx, %ecx
	movl	$0, -96(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rdx
	cmpl	$0, 156(%rdx)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movb	%sil, %r8b
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %esi
	shll	$2, %esi
	movslq	%esi, %rdx
	movzbl	%r8b, %esi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	callq	memset
	movq	-24(%rbp), %rdx
	cmpl	$0, 156(%rdx)
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	-172(%rbp), %ecx        # 4-byte Reload
	cmovnel	%ecx, %eax
	movb	%al, %r8b
	movb	%r8b, -87(%rbp)
	movb	%r8b, -86(%rbp)
	movb	%r8b, -85(%rbp)
	movl	$0, -92(%rbp)
.LBB7_33:                               # %for.cond.128
                                        #   Parent Loop BB7_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB7_54
# BB#34:                                # %for.body.132
                                        #   in Loop: Header=BB7_33 Depth=2
	movl	-92(%rbp), %eax
	movq	-24(%rbp), %rcx
	cltd
	idivl	160(%rcx)
	cmpl	$0, %edx
	jne	.LBB7_44
# BB#35:                                # %if.then.137
                                        #   in Loop: Header=BB7_33 Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB7_42
# BB#36:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_33 Depth=2
	movl	-96(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	168(%rcx), %eax
	jge	.LBB7_42
# BB#37:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB7_33 Depth=2
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	subl	-92(%rbp), %ecx
	movq	-24(%rbp), %rax
	cmpl	160(%rax), %ecx
	jl	.LBB7_42
# BB#38:                                # %if.then.148
                                        #   in Loop: Header=BB7_33 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB7_40
# BB#39:                                # %cond.true.151
                                        #   in Loop: Header=BB7_33 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB7_41
.LBB7_40:                               # %cond.false.152
                                        #   in Loop: Header=BB7_33 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB7_41
.LBB7_41:                               # %cond.end.153
                                        #   in Loop: Header=BB7_33 Depth=2
	movq	-184(%rbp), %rax        # 8-byte Reload
	leaq	-85(%rbp), %rsi
	leaq	-86(%rbp), %rdx
	leaq	-87(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movl	-96(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -96(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_rgb_get_uchar
	jmp	.LBB7_43
.LBB7_42:                               # %if.else.155
                                        #   in Loop: Header=BB7_33 Depth=2
	movl	$255, %eax
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$0, 156(%rdx)
	cmovnel	%ecx, %eax
	movb	%al, %sil
	movb	%sil, -87(%rbp)
	movb	%sil, -86(%rbp)
	movb	%sil, -85(%rbp)
.LBB7_43:                               # %if.end.160
                                        #   in Loop: Header=BB7_33 Depth=2
	jmp	.LBB7_44
.LBB7_44:                               # %if.end.161
                                        #   in Loop: Header=BB7_33 Depth=2
	movq	-24(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB7_49
# BB#45:                                # %land.lhs.true.164
                                        #   in Loop: Header=BB7_33 Depth=2
	movl	-92(%rbp), %eax
	movq	-24(%rbp), %rcx
	cltd
	idivl	160(%rcx)
	cmpl	$0, %edx
	jne	.LBB7_49
# BB#46:                                # %if.then.169
                                        #   in Loop: Header=BB7_33 Depth=2
	jmp	.LBB7_47
.LBB7_47:                               # %do.body
                                        #   in Loop: Header=BB7_33 Depth=2
	movq	-104(%rbp), %rax
	movb	$0, (%rax)
	movq	-104(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-104(%rbp), %rax
	movb	$0, 2(%rax)
# BB#48:                                # %do.end
                                        #   in Loop: Header=BB7_33 Depth=2
	jmp	.LBB7_52
.LBB7_49:                               # %if.else.172
                                        #   in Loop: Header=BB7_33 Depth=2
	jmp	.LBB7_50
.LBB7_50:                               # %do.body.173
                                        #   in Loop: Header=BB7_33 Depth=2
	movb	-87(%rbp), %al
	movq	-104(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-86(%rbp), %al
	movq	-104(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-85(%rbp), %al
	movq	-104(%rbp), %rcx
	movb	%al, 2(%rcx)
# BB#51:                                # %do.end.177
                                        #   in Loop: Header=BB7_33 Depth=2
	jmp	.LBB7_52
.LBB7_52:                               # %if.end.178
                                        #   in Loop: Header=BB7_33 Depth=2
	jmp	.LBB7_53
.LBB7_53:                               # %for.inc
                                        #   in Loop: Header=BB7_33 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movq	-104(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -104(%rbp)
	jmp	.LBB7_33
.LBB7_54:                               # %for.end
                                        #   in Loop: Header=BB7_30 Depth=1
	jmp	.LBB7_55
.LBB7_55:                               # %if.end.180
                                        #   in Loop: Header=BB7_30 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB7_58
# BB#56:                                # %land.lhs.true.183
                                        #   in Loop: Header=BB7_30 Depth=1
	movl	-76(%rbp), %eax
	movq	-24(%rbp), %rcx
	cltd
	idivl	164(%rcx)
	cmpl	$0, %edx
	jne	.LBB7_58
# BB#57:                                # %if.then.188
                                        #   in Loop: Header=BB7_30 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	callq	memset
	jmp	.LBB7_59
.LBB7_58:                               # %if.else.192
                                        #   in Loop: Header=BB7_30 Depth=1
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	callq	memcpy
.LBB7_59:                               # %if.end.196
                                        #   in Loop: Header=BB7_30 Depth=1
	movl	-72(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
# BB#60:                                # %for.inc.198
                                        #   in Loop: Header=BB7_30 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_30
.LBB7_61:                               # %for.end.200
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	callq	cairo_surface_mark_dirty
	movq	-8(%rbp), %rdi
	movl	$0, 140(%rdi)
.LBB7_62:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_view_renderer_palette_render, .Lfunc_end7-gimp_view_renderer_palette_render
	.cfi_endproc

	.type	gimp_view_renderer_palette_get_type.g_define_type_id__volatile,@object # @gimp_view_renderer_palette_get_type.g_define_type_id__volatile
	.local	gimp_view_renderer_palette_get_type.g_define_type_id__volatile
	.comm	gimp_view_renderer_palette_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewRendererPalette"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_view_renderer_palette_set_cell_size,@object # @__func__.gimp_view_renderer_palette_set_cell_size
.L__func__.gimp_view_renderer_palette_set_cell_size:
	.asciz	"gimp_view_renderer_palette_set_cell_size"
	.size	.L__func__.gimp_view_renderer_palette_set_cell_size, 41

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_VIEW_RENDERER_PALETTE (renderer)"
	.size	.L.str.2, 41

	.type	.L__func__.gimp_view_renderer_palette_set_draw_grid,@object # @__func__.gimp_view_renderer_palette_set_draw_grid
.L__func__.gimp_view_renderer_palette_set_draw_grid:
	.asciz	"gimp_view_renderer_palette_set_draw_grid"
	.size	.L__func__.gimp_view_renderer_palette_set_draw_grid, 41

	.type	gimp_view_renderer_palette_parent_class,@object # @gimp_view_renderer_palette_parent_class
	.local	gimp_view_renderer_palette_parent_class
	.comm	gimp_view_renderer_palette_parent_class,8,8
	.type	GimpViewRendererPalette_private_offset,@object # @GimpViewRendererPalette_private_offset
	.local	GimpViewRendererPalette_private_offset
	.comm	GimpViewRendererPalette_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
