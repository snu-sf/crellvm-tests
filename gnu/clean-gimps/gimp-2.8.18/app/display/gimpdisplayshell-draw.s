	.text
	.file	"gimpdisplayshell-draw.bc"
	.globl	gimp_display_shell_draw_get_scaled_image_size
	.align	16, 0x90
	.type	gimp_display_shell_draw_get_scaled_image_size,@function
gimp_display_shell_draw_get_scaled_image_size: # @gimp_display_shell_draw_get_scaled_image_size
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_get_scaled_image_size, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_zoom_model_get_factor
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	gimp_display_shell_draw_get_scaled_image_size_for_scale
.LBB0_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_draw_get_scaled_image_size, .Lfunc_end0-gimp_display_shell_draw_get_scaled_image_size
	.cfi_endproc

	.globl	gimp_display_shell_draw_get_scaled_image_size_for_scale
	.align	16, 0x90
	.type	gimp_display_shell_draw_get_scaled_image_size_for_scale,@function
gimp_display_shell_draw_get_scaled_image_size_for_scale: # @gimp_display_shell_draw_get_scaled_image_size_for_scale
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_get_scaled_image_size_for_scale, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_28
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
# BB#13:                                # %do.body.12
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.21
	movl	$0, -116(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.22
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.25
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.29
	movl	$1, -116(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.30
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB1_19:                               # %if.end.32
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.33
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.36
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_get_scaled_image_size_for_scale, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_28
.LBB1_23:                               # %if.end.38
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.39
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_projection
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_calculate_scale_x_and_y
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi
	callq	gimp_projection_get_tiles_at_level
	movq	%rax, -56(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_26
# BB#25:                                # %if.then.43
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	tile_manager_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB1_26:                               # %if.end.46
	cmpq	$0, -32(%rbp)
	je	.LBB1_28
# BB#27:                                # %if.then.48
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	tile_manager_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB1_28:                               # %if.end.53
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_draw_get_scaled_image_size_for_scale, .Lfunc_end1-gimp_display_shell_draw_get_scaled_image_size_for_scale
	.cfi_endproc

	.globl	gimp_display_shell_draw_selection_out
	.align	16, 0x90
	.type	gimp_display_shell_draw_selection_out,@function
gimp_display_shell_draw_selection_out:  # @gimp_display_shell_draw_selection_out
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_selection_out, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_24
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_selection_out, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_24
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB2_21
# BB#19:                                # %land.lhs.true.19
	cmpl	$0, -28(%rbp)
	jle	.LBB2_21
# BB#20:                                # %if.then.21
	jmp	.LBB2_22
.LBB2_21:                               # %if.else.22
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_selection_out, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_24
.LBB2_22:                               # %if.end.23
	jmp	.LBB2_23
.LBB2_23:                               # %do.end.24
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_display_shell_set_selection_out_style
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_cairo_add_segments
	movq	-16(%rbp), %rdi
	callq	cairo_stroke
.LBB2_24:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_draw_selection_out, .Lfunc_end2-gimp_display_shell_draw_selection_out
	.cfi_endproc

	.globl	gimp_display_shell_draw_selection_in
	.align	16, 0x90
	.type	gimp_display_shell_draw_selection_in,@function
gimp_display_shell_draw_selection_in:   # @gimp_display_shell_draw_selection_in
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_selection_in, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_selection_in, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_selection_in, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_display_shell_set_selection_in_style
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	cairo_mask
.LBB3_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_draw_selection_in, .Lfunc_end3-gimp_display_shell_draw_selection_in
	.cfi_endproc

	.globl	gimp_display_shell_draw_image
	.align	16, 0x90
	.type	gimp_display_shell_draw_image,@function
gimp_display_shell_draw_image:          # @gimp_display_shell_draw_image
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_image, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_36
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB4_15
# BB#14:                                # %if.then.14
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_image, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_36
.LBB4_16:                               # %if.end.16
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.17
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.18
	cmpq	$0, -16(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.20
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_image, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_36
.LBB4_21:                               # %if.end.22
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.23
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB4_23:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_25 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB4_36
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB4_25:                               # %for.cond.26
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB4_34
# BB#26:                                # %for.body.28
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	-36(%rbp), %eax
	subl	-48(%rbp), %eax
	cmpl	$256, %eax              # imm = 0x100
	jge	.LBB4_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	-36(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB4_29
.LBB4_28:                               # %cond.false
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	$256, %eax              # imm = 0x100
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB4_29
.LBB4_29:                               # %cond.end
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)
	movl	-40(%rbp), %eax
	subl	-44(%rbp), %eax
	cmpl	$256, %eax              # imm = 0x100
	jge	.LBB4_31
# BB#30:                                # %cond.true.37
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	-40(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB4_32
.LBB4_31:                               # %cond.false.39
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	$256, %eax              # imm = 0x100
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB4_32
.LBB4_32:                               # %cond.end.40
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	-96(%rbp), %eax         # 4-byte Reload
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movl	%eax, -88(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scroll_get_disp_offset
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-48(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	-80(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movl	-88(%rbp), %r9d
	movl	%eax, %edx
	callq	gimp_display_shell_render
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	-48(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -48(%rbp)
	jmp	.LBB4_25
.LBB4_34:                               # %for.end
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_35
.LBB4_35:                               # %for.inc.45
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-44(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -44(%rbp)
	jmp	.LBB4_23
.LBB4_36:                               # %for.end.47
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_draw_image, .Lfunc_end4-gimp_display_shell_draw_image
	.cfi_endproc

	.globl	gimp_display_shell_draw_checkerboard
	.align	16, 0x90
	.type	gimp_display_shell_draw_checkerboard,@function
gimp_display_shell_draw_checkerboard:   # @gimp_display_shell_draw_checkerboard
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
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_checkerboard, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_20
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_draw_checkerboard, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_20
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	cmpq	$0, 440(%rax)
	jne	.LBB5_19
# BB#18:                                # %if.then.18
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_display_shell_create_checkerboard
	movq	-8(%rbp), %rsi
	movq	%rax, 440(%rsi)
.LBB5_19:                               # %if.end.21
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	cvtsi2sdl	-32(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-16(%rbp), %rdi
	callq	cairo_clip
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	%eax, %edx
	subl	188(%rcx), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-8(%rbp), %rcx
	subl	192(%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_translate
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	440(%rcx), %rsi
	callq	cairo_set_source
	movq	-16(%rbp), %rdi
	callq	cairo_paint
.LBB5_20:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_draw_checkerboard, .Lfunc_end5-gimp_display_shell_draw_checkerboard
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_create_checkerboard,@function
gimp_display_shell_create_checkerboard: # @gimp_display_shell_create_checkerboard
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
	subq	$112, %rsp
	movabsq	$.L.str.7, %rax
	leaq	-20(%rbp), %rdx
	movabsq	$.L.str.8, %rcx
	leaq	-24(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_object_get
	leaq	-25(%rbp), %rsi
	leaq	-26(%rbp), %rdx
	movl	-24(%rbp), %edi
	callq	gimp_checks_get_shades
	leaq	-64(%rbp), %rdi
	movb	-25(%rbp), %al
	movb	-25(%rbp), %r10b
	movzbl	%al, %esi
	movzbl	%r10b, %edx
	movzbl	-25(%rbp), %ecx
	callq	gimp_rgb_set_uchar
	leaq	-96(%rbp), %rdi
	movb	-26(%rbp), %al
	movb	-26(%rbp), %r10b
	movzbl	%al, %esi
	movzbl	%r10b, %edx
	movzbl	-26(%rbp), %ecx
	callq	gimp_rgb_set_uchar
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %r11d
	addl	$2, %r11d
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	gimp_cairo_checkerboard_create
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_create_checkerboard, .Lfunc_end6-gimp_display_shell_create_checkerboard
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_draw_get_scaled_image_size,@object # @__func__.gimp_display_shell_draw_get_scaled_image_size
.L__func__.gimp_display_shell_draw_get_scaled_image_size:
	.asciz	"gimp_display_shell_draw_get_scaled_image_size"
	.size	.L__func__.gimp_display_shell_draw_get_scaled_image_size, 46

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L__func__.gimp_display_shell_draw_get_scaled_image_size_for_scale,@object # @__func__.gimp_display_shell_draw_get_scaled_image_size_for_scale
.L__func__.gimp_display_shell_draw_get_scaled_image_size_for_scale:
	.asciz	"gimp_display_shell_draw_get_scaled_image_size_for_scale"
	.size	.L__func__.gimp_display_shell_draw_get_scaled_image_size_for_scale, 56

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L__func__.gimp_display_shell_draw_selection_out,@object # @__func__.gimp_display_shell_draw_selection_out
.L__func__.gimp_display_shell_draw_selection_out:
	.asciz	"gimp_display_shell_draw_selection_out"
	.size	.L__func__.gimp_display_shell_draw_selection_out, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cr != NULL"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"segs != NULL && n_segs > 0"
	.size	.L.str.4, 27

	.type	.L__func__.gimp_display_shell_draw_selection_in,@object # @__func__.gimp_display_shell_draw_selection_in
.L__func__.gimp_display_shell_draw_selection_in:
	.asciz	"gimp_display_shell_draw_selection_in"
	.size	.L__func__.gimp_display_shell_draw_selection_in, 37

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"mask != NULL"
	.size	.L.str.5, 13

	.type	.L__func__.gimp_display_shell_draw_image,@object # @__func__.gimp_display_shell_draw_image
.L__func__.gimp_display_shell_draw_image:
	.asciz	"gimp_display_shell_draw_image"
	.size	.L__func__.gimp_display_shell_draw_image, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp_display_get_image (shell->display)"
	.size	.L.str.6, 40

	.type	.L__func__.gimp_display_shell_draw_checkerboard,@object # @__func__.gimp_display_shell_draw_checkerboard
.L__func__.gimp_display_shell_draw_checkerboard:
	.asciz	"gimp_display_shell_draw_checkerboard"
	.size	.L__func__.gimp_display_shell_draw_checkerboard, 37

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"transparency-size"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"transparency-type"
	.size	.L.str.8, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
