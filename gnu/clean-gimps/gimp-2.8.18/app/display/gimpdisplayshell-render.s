	.text
	.file	"gimpdisplayshell-render.bc"
	.globl	gimp_display_shell_render
	.align	16, 0x90
	.type	gimp_display_shell_render,@function
gimp_display_shell_render:              # @gimp_display_shell_render
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
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -248(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -252(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-240(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-248(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -252(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -252(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-252(%rbp), %eax
	movl	%eax, -256(%rbp)
	cmpl	$0, -256(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_render, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_42
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_render, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_42
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.17
	cmpl	$0, -36(%rbp)
	jle	.LBB0_21
# BB#19:                                # %land.lhs.true.19
	cmpl	$0, -40(%rbp)
	jle	.LBB0_21
# BB#20:                                # %if.then.21
	jmp	.LBB0_22
.LBB0_21:                               # %if.else.22
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_render, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_42
.LBB0_22:                               # %if.end.23
	jmp	.LBB0_23
.LBB0_23:                               # %do.end.24
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	%rax, %rdi
	callq	gimp_image_get_projection
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movsd	200(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	208(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_projection_get_level
	movl	%eax, -224(%rbp)
	movq	-48(%rbp), %rdi
	leaq	-228(%rbp), %rdx
	movl	%eax, %esi
	callq	gimp_projection_get_tiles_at_level
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movq	424(%rdx), %rdi
	movl	-224(%rbp), %r10d
	movl	-228(%rbp), %r11d
	movq	%rsp, %rbx
	movl	%r11d, 24(%rbx)
	movl	%r10d, 16(%rbx)
	movq	%rax, 8(%rbx)
	movq	%rdi, (%rbx)
	leaq	-216(%rbp), %rdi
	movl	%esi, -276(%rbp)        # 4-byte Spill
	movq	%rdx, %rsi
	movl	-276(%rbp), %edx        # 4-byte Reload
	callq	gimp_display_shell_render_info_init
	movq	-48(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_get_image_type
	movl	%eax, -220(%rbp)
	movl	%eax, %ecx
	subl	$1, %eax
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	%eax, -296(%rbp)        # 4-byte Spill
	je	.LBB0_24
	jmp	.LBB0_43
.LBB0_43:                               # %do.end.24
	movl	-292(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB0_25
	jmp	.LBB0_26
.LBB0_24:                               # %sw.bb
	leaq	-216(%rbp), %rdi
	callq	render_image_rgb_a
	jmp	.LBB0_28
.LBB0_25:                               # %sw.bb.32
	leaq	-216(%rbp), %rdi
	callq	render_image_gray_a
	jmp	.LBB0_28
.LBB0_26:                               # %sw.default
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_display_shell_render, %rsi
	movl	-220(%rbp), %edx
	movb	$0, %al
	callq	g_warning
# BB#27:                                # %do.body.33
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.5, %rsi
	movl	$172, %edx
	movabsq	$.L__func__.gimp_display_shell_render, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB0_28:                               # %sw.epilog
	movq	-16(%rbp), %rax
	cmpq	$0, 640(%rax)
	je	.LBB0_35
# BB#29:                                # %if.then.36
	movq	-16(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -264(%rbp)
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jne	.LBB0_31
# BB#30:                                # %lor.lhs.false
	cmpl	$256, -40(%rbp)         # imm = 0x100
	je	.LBB0_32
.LBB0_31:                               # %if.then.41
	movq	-264(%rbp), %rdi
	callq	cairo_image_surface_get_data
	xorl	%esi, %esi
	movl	$1024, %r8d             # imm = 0x400
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	%rax, %rdi
	callq	cairo_image_surface_create_for_data
	movq	%rax, -264(%rbp)
.LBB0_32:                               # %if.end.44
	movq	-16(%rbp), %rax
	movq	640(%rax), %rdi
	movq	-264(%rbp), %rsi
	callq	gimp_color_display_stack_convert_surface
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rsi
	cmpq	424(%rsi), %rax
	je	.LBB0_34
# BB#33:                                # %if.then.48
	movq	-264(%rbp), %rdi
	callq	cairo_surface_destroy
.LBB0_34:                               # %if.end.49
	jmp	.LBB0_35
.LBB0_35:                               # %if.end.50
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	424(%rcx), %rdi
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	%eax, %esi
	movl	%eax, %edx
	callq	cairo_surface_mark_dirty_rectangle
	movq	-16(%rbp), %rdi
	cmpq	$0, 768(%rdi)
	je	.LBB0_39
# BB#36:                                # %if.then.53
	movq	-16(%rbp), %rax
	cmpq	$0, 432(%rax)
	jne	.LBB0_38
# BB#37:                                # %if.then.55
	movl	$2, %edi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movl	%eax, %edx
	callq	cairo_image_surface_create
	movq	-16(%rbp), %rcx
	movq	%rax, 432(%rcx)
.LBB0_38:                               # %if.end.58
	movq	-16(%rbp), %rax
	movq	768(%rax), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-216(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %r10d
	movq	-16(%rbp), %rax
	movq	432(%rax), %rax
	movq	-64(%rbp), %r11
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	movq	%r11, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gimp_display_shell_render_info_init
	leaq	-216(%rbp), %rdi
	callq	render_image_alpha
	movq	-16(%rbp), %rax
	movq	432(%rax), %rdi
	callq	cairo_surface_mark_dirty
.LBB0_39:                               # %if.end.63
	movq	-24(%rbp), %rdi
	callq	cairo_save
	leaq	-268(%rbp), %rsi
	leaq	-272(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_scroll_get_disp_offset
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	-268(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-32(%rbp), %eax
	addl	-272(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-36(%rbp), %xmm2
	cvtsi2sdl	-40(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-24(%rbp), %rdi
	callq	cairo_clip
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	424(%rdx), %rsi
	movl	-28(%rbp), %eax
	addl	-268(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-32(%rbp), %eax
	addl	-272(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_set_source_surface
	movq	-24(%rbp), %rdi
	callq	cairo_paint
	movq	-16(%rbp), %rdx
	cmpq	$0, 768(%rdx)
	je	.LBB0_41
# BB#40:                                # %if.then.77
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$776, %rax              # imm = 0x308
	movq	%rax, %rsi
	callq	gimp_cairo_set_source_rgba
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	432(%rax), %rsi
	movl	-28(%rbp), %ecx
	addl	-268(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-32(%rbp), %ecx
	addl	-272(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_mask_surface
.LBB0_41:                               # %if.end.83
	movq	-24(%rbp), %rdi
	callq	cairo_restore
.LBB0_42:                               # %return
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_render, .Lfunc_end0-gimp_display_shell_render
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_render_info_init,@function
gimp_display_shell_render_info_init:    # @gimp_display_shell_render_info_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	leaq	-84(%rbp), %r14
	leaq	-88(%rbp), %r15
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movq	%rbx, -64(%rbp)
	movq	%r11, -72(%rbp)
	movl	%r10d, -76(%rbp)
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	gimp_display_shell_scroll_get_render_start_offset
	movl	-44(%rbp), %eax
	addl	-84(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, 32(%rdx)
	movl	-48(%rbp), %eax
	addl	-88(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, 36(%rdx)
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, 40(%rdx)
	movl	-56(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, 44(%rdx)
	movq	-64(%rbp), %rdi
	callq	cairo_surface_flush
	movq	-64(%rbp), %rdi
	callq	cairo_image_surface_get_data
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-64(%rbp), %rdi
	callq	cairo_image_surface_get_stride
	movl	$2, %ecx
	movl	$1, %r8d
	movq	-32(%rbp), %rdx
	movl	%eax, 88(%rdx)
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, (%rsi)
	movl	-80(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-40(%rbp), %rdx
	movsd	200(%rdx), %xmm0        # xmm0 = mem[0],zero
	movl	-76(%rbp), %eax
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	%r8d, %eax
	shll	%cl, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-32(%rbp), %rdx
	movsd	%xmm0, 48(%rdx)
	movq	-40(%rbp), %rdx
	movsd	208(%rdx), %xmm0        # xmm0 = mem[0],zero
	movl	-76(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %r8d
	cvtsi2sdl	%r8d, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-32(%rbp), %rdx
	movsd	%xmm0, 56(%rdx)
	movq	-40(%rbp), %rdx
	movsd	200(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdx
	movsd	%xmm0, 64(%rdx)
	movq	-40(%rbp), %rdx
	movsd	208(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdx
	movsd	%xmm0, 72(%rdx)
	movq	-40(%rbp), %rdx
	movl	244(%rdx), %eax
	movl	-76(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movq	-32(%rbp), %rdx
	movl	%eax, 96(%rdx)
	movq	-40(%rbp), %rdx
	movl	236(%rdx), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, 100(%rdx)
	movq	-32(%rbp), %rdx
	movslq	96(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movslq	32(%rsi), %rsi
	imulq	%rsi, %rdx
	movq	-32(%rbp), %rsi
	movl	96(%rsi), %eax
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	cltd
	movl	-92(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	movslq	%eax, %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	addq	%rsi, %rdi
	movq	-32(%rbp), %rsi
	movq	%rdi, 104(%rsi)
	movq	-32(%rbp), %rsi
	movq	104(%rsi), %rax
	movq	-32(%rbp), %rsi
	movslq	100(%rsi), %rsi
	cqto
	idivq	%rsi
	movl	%eax, %r9d
	movq	-32(%rbp), %rax
	movl	%r9d, 80(%rax)
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	-32(%rbp), %rsi
	movslq	100(%rsi), %rsi
	cqto
	idivq	%rsi
	movq	-32(%rbp), %rsi
	movq	%rdx, 104(%rsi)
	movq	-40(%rbp), %rdx
	movl	248(%rdx), %r9d
	movl	-76(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %r9d
	movq	-32(%rbp), %rdx
	movl	%r9d, 112(%rdx)
	movq	-40(%rbp), %rdx
	movl	240(%rdx), %r9d
	movq	-32(%rbp), %rdx
	movl	%r9d, 116(%rdx)
	movq	-32(%rbp), %rdx
	movslq	112(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movslq	36(%rsi), %rsi
	imulq	%rsi, %rdx
	movq	-32(%rbp), %rsi
	movl	112(%rsi), %r9d
	movl	%r9d, %eax
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	cltd
	idivl	%r8d
	movslq	%eax, %rsi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	addq	%rsi, %rdi
	movq	-32(%rbp), %rsi
	movq	%rdi, 120(%rsi)
	movq	-32(%rbp), %rsi
	movq	120(%rsi), %rax
	movq	-32(%rbp), %rsi
	movslq	116(%rsi), %rsi
	cqto
	idivq	%rsi
	movl	%eax, %r9d
	movq	-32(%rbp), %rax
	movl	%r9d, 84(%rax)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	-32(%rbp), %rsi
	movslq	116(%rsi), %rsi
	cqto
	idivq	%rsi
	movq	-32(%rbp), %rsi
	movq	%rdx, 120(%rsi)
	movq	-32(%rbp), %rdx
	movl	100(%rdx), %r9d
	movq	-32(%rbp), %rdx
	movl	%r9d, 128(%rdx)
	movq	-32(%rbp), %rdx
	movl	$0, 136(%rdx)
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpl	$512, 128(%rax)         # imm = 0x200
	jle	.LBB1_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	sarl	$1, %ecx
	movl	%ecx, 128(%rax)
	movq	-32(%rbp), %rax
	movl	136(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 136(%rax)
	jmp	.LBB1_1
.LBB1_3:                                # %while.end
	jmp	.LBB1_4
.LBB1_4:                                # %while.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpl	$256, 128(%rax)         # imm = 0x100
	jge	.LBB1_6
# BB#5:                                 # %while.body.64
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 128(%rax)
	movq	-32(%rbp), %rax
	movl	136(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 136(%rax)
	jmp	.LBB1_4
.LBB1_6:                                # %while.end.68
	movq	-32(%rbp), %rax
	movl	116(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 132(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 140(%rax)
.LBB1_7:                                # %while.cond.70
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpl	$512, 132(%rax)         # imm = 0x200
	jle	.LBB1_9
# BB#8:                                 # %while.body.74
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-32(%rbp), %rax
	movl	132(%rax), %ecx
	sarl	$1, %ecx
	movl	%ecx, 132(%rax)
	movq	-32(%rbp), %rax
	movl	140(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 140(%rax)
	jmp	.LBB1_7
.LBB1_9:                                # %while.end.79
	jmp	.LBB1_10
.LBB1_10:                               # %while.cond.80
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpl	$256, 132(%rax)         # imm = 0x100
	jge	.LBB1_12
# BB#11:                                # %while.body.84
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-32(%rbp), %rax
	movl	132(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 132(%rax)
	movq	-32(%rbp), %rax
	movl	140(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 140(%rax)
	jmp	.LBB1_10
.LBB1_12:                               # %while.end.89
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movl	560(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	je	.LBB1_13
	jmp	.LBB1_16
.LBB1_16:                               # %while.end.89
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_15
.LBB1_13:                               # %sw.bb
	movq	-32(%rbp), %rax
	movl	$1, 92(%rax)
	jmp	.LBB1_15
.LBB1_14:                               # %sw.bb.91
	movq	-32(%rbp), %rax
	movl	$2, 92(%rax)
.LBB1_15:                               # %sw.epilog
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_render_info_init, .Lfunc_end1-gimp_display_shell_render_info_init
	.cfi_endproc

	.align	16, 0x90
	.type	render_image_rgb_a,@function
render_image_rgb_a:                     # @render_image_rgb_a
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	36(%rdi), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	36(%rdi), %eax
	movq	-8(%rbp), %rdi
	addl	44(%rdi), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	32(%rdi), %eax
	movq	-8(%rbp), %rdi
	addl	40(%rdi), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, 144(%rcx)
	movq	-8(%rbp), %rdi
	callq	render_image_tile_fault
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB2_1:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB2_2:                                # %for.cond
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB2_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB2_2 Depth=2
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %ecx
	shll	$24, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %edx
	orl	%edx, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -32(%rbp)
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB2_2
.LBB2_5:                                # %for.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	cmpl	-16(%rbp), %eax
	jne	.LBB2_7
# BB#6:                                 # %if.then
	jmp	.LBB2_10
.LBB2_7:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movslq	112(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	144(%rdx), %rax
	movq	%rax, 144(%rdx)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdx
	movslq	116(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	cqto
	movq	-48(%rbp), %rsi         # 8-byte Reload
	idivq	%rsi
	movq	-8(%rbp), %rdi
	movslq	84(%rdi), %r8
	addq	%rax, %r8
	movl	%r8d, %ecx
	movl	%ecx, 84(%rdi)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdi
	movslq	116(%rdi), %rdi
	cqto
	idivq	%rdi
	movq	-8(%rbp), %rdi
	movq	%rdx, 144(%rdi)
	movq	-8(%rbp), %rdx
	cmpl	$0, 84(%rdx)
	jl	.LBB2_9
# BB#8:                                 # %if.then.39
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	render_image_tile_fault
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB2_9:                                # %if.end.42
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_10:                               # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	render_image_rgb_a, .Lfunc_end2-render_image_rgb_a
	.cfi_endproc

	.align	16, 0x90
	.type	render_image_gray_a,@function
render_image_gray_a:                    # @render_image_gray_a
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	36(%rdi), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	36(%rdi), %eax
	movq	-8(%rbp), %rdi
	addl	44(%rdi), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	32(%rdi), %eax
	movq	-8(%rbp), %rdi
	addl	40(%rdi), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, 144(%rcx)
	movq	-8(%rbp), %rdi
	callq	render_image_tile_fault
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB3_1:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB3_2:                                # %for.cond
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB3_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB3_2 Depth=2
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$24, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	orl	%edx, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB3_2
.LBB3_5:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	cmpl	-16(%rbp), %eax
	jne	.LBB3_7
# BB#6:                                 # %if.then
	jmp	.LBB3_8
.LBB3_7:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movslq	112(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	144(%rdx), %rax
	movq	%rax, 144(%rdx)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdx
	movslq	116(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	cqto
	movq	-48(%rbp), %rsi         # 8-byte Reload
	idivq	%rsi
	movq	-8(%rbp), %rdi
	movslq	84(%rdi), %r8
	addq	%rax, %r8
	movl	%r8d, %ecx
	movl	%ecx, 84(%rdi)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdi
	movslq	116(%rdi), %rdi
	cqto
	idivq	%rdi
	movq	-8(%rbp), %rdi
	movq	%rdx, 144(%rdi)
	movq	-8(%rbp), %rdi
	callq	render_image_tile_fault
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.LBB3_1
.LBB3_8:                                # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	render_image_gray_a, .Lfunc_end3-render_image_gray_a
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
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
	je	.LBB4_2
# BB#1:                                 # %entry
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
.LBB4_2:                                # %entry
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
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	render_image_alpha,@function
render_image_alpha:                     # @render_image_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	36(%rdi), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	36(%rdi), %eax
	movq	-8(%rbp), %rdi
	addl	44(%rdi), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	32(%rdi), %eax
	movq	-8(%rbp), %rdi
	addl	40(%rdi), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, 144(%rcx)
	movq	-8(%rbp), %rdi
	callq	render_image_tile_fault
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB5_1:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB5_2:                                # %for.cond
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB5_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=2
	movl	$255, %eax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	%edx, %eax
	movb	%al, %sil
	movq	-40(%rbp), %rcx
	movb	%sil, (%rcx)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB5_2
.LBB5_5:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	cmpl	-16(%rbp), %eax
	jne	.LBB5_7
# BB#6:                                 # %if.then
	jmp	.LBB5_8
.LBB5_7:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movslq	112(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	144(%rdx), %rax
	movq	%rax, 144(%rdx)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdx
	movslq	116(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	cqto
	movq	-48(%rbp), %rsi         # 8-byte Reload
	idivq	%rsi
	movq	-8(%rbp), %rdi
	movslq	84(%rdi), %r8
	addq	%rax, %r8
	movl	%r8d, %ecx
	movl	%ecx, 84(%rdi)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdi
	movslq	116(%rdi), %rdi
	cqto
	idivq	%rdi
	movq	-8(%rbp), %rdi
	movq	%rdx, 144(%rdi)
	movq	-8(%rbp), %rdi
	callq	render_image_tile_fault
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.LBB5_1
.LBB5_8:                                # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	render_image_alpha, .Lfunc_end5-render_image_alpha
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	render_image_tile_fault,@function
render_image_tile_fault:                # @render_image_tile_fault
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp              # imm = 0x230
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	tile_manager_width
	movl	%eax, -244(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	tile_manager_height
	movl	%eax, -248(%rbp)
	movq	-16(%rbp), %rdi
	movl	92(%rdi), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB6_9
# BB#1:                                 # %lor.lhs.false
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_3
	jp	.LBB6_3
# BB#2:                                 # %land.lhs.true
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_3
	jp	.LBB6_3
	jmp	.LBB6_9
.LBB6_3:                                # %lor.lhs.false.4
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_6
# BB#4:                                 # %land.lhs.true.6
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_6
# BB#5:                                 # %land.lhs.true.8
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB6_9
.LBB6_6:                                # %lor.lhs.false.12
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_8
# BB#7:                                 # %land.lhs.true.15
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB6_9
.LBB6_8:                                # %lor.lhs.false.18
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	tile_manager_bpp
	cmpl	$1, %eax
	jne	.LBB6_10
.LBB6_9:                                # %if.then
	movq	-16(%rbp), %rdi
	callq	render_image_tile_fault_nearest
	movq	%rax, -8(%rbp)
	jmp	.LBB6_163
.LBB6_10:                               # %if.else
	movq	-16(%rbp), %rax
	movl	84(%rax), %ecx
	andl	$-64, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	addl	$1, %edx
	andl	$-64, %edx
	cmpl	%edx, %ecx
	jne	.LBB6_14
# BB#11:                                # %land.lhs.true.27
	movq	-16(%rbp), %rax
	movl	84(%rax), %ecx
	andl	$-64, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	subl	$1, %edx
	andl	$-64, %edx
	cmpl	%edx, %ecx
	jne	.LBB6_14
# BB#12:                                # %land.lhs.true.33
	movq	-16(%rbp), %rax
	movl	84(%rax), %ecx
	addl	$1, %ecx
	cmpl	-248(%rbp), %ecx
	jae	.LBB6_14
# BB#13:                                # %if.then.37
	movq	-16(%rbp), %rdi
	callq	render_image_tile_fault_one_row
	movq	%rax, -8(%rbp)
	jmp	.LBB6_163
.LBB6_14:                               # %if.end
	jmp	.LBB6_15
.LBB6_15:                               # %if.end.39
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	132(%rcx), %edx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-252(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	cmpl	$0, 140(%rdi)
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jle	.LBB6_17
# BB#16:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	140(%rcx), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB6_18
.LBB6_17:                               # %cond.false
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subl	140(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-280(%rbp), %rdx        # 8-byte Reload
	sarq	%cl, %rdx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
.LBB6_18:                               # %cond.end
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB6_20
# BB#19:                                # %cond.true.49
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	132(%rcx), %edx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-284(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB6_24
.LBB6_20:                               # %cond.false.53
	movq	-16(%rbp), %rax
	cmpl	$0, 140(%rax)
	jle	.LBB6_22
# BB#21:                                # %cond.true.57
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	140(%rcx), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB6_23
.LBB6_22:                               # %cond.false.62
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subl	140(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-312(%rbp), %rdx        # 8-byte Reload
	sarq	%cl, %rdx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
.LBB6_23:                               # %cond.end.68
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB6_24:                               # %cond.end.70
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpl	$0, 140(%rcx)
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jle	.LBB6_26
# BB#25:                                # %cond.true.75
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	140(%rcx), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB6_27
.LBB6_26:                               # %cond.false.80
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subl	140(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-336(%rbp), %rdx        # 8-byte Reload
	sarq	%cl, %rdx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
.LBB6_27:                               # %cond.end.86
	movq	-328(%rbp), %rax        # 8-byte Reload
	movl	$2, %ecx
	movq	-320(%rbp), %rdx        # 8-byte Reload
	subq	%rax, %rdx
	movl	%edx, %esi
	movl	%esi, -232(%rbp)
	movq	-16(%rbp), %rax
	movl	132(%rax), %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rdi
	movq	-16(%rbp), %r8
	cmpl	$0, 140(%r8)
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	jle	.LBB6_29
# BB#28:                                # %cond.true.96
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	140(%rcx), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB6_30
.LBB6_29:                               # %cond.false.101
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subl	140(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-360(%rbp), %rdx        # 8-byte Reload
	sarq	%cl, %rdx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
.LBB6_30:                               # %cond.end.107
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB6_32
# BB#31:                                # %cond.true.111
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	132(%rcx), %edx
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-364(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB6_36
.LBB6_32:                               # %cond.false.115
	movq	-16(%rbp), %rax
	cmpl	$0, 140(%rax)
	jle	.LBB6_34
# BB#33:                                # %cond.true.119
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	140(%rcx), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB6_35
.LBB6_34:                               # %cond.false.124
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subl	140(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-392(%rbp), %rdx        # 8-byte Reload
	sarq	%cl, %rdx
	movq	%rdx, -384(%rbp)        # 8-byte Spill
.LBB6_35:                               # %cond.end.130
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB6_36:                               # %cond.end.132
	movq	-376(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$2, %edx
	movq	-16(%rbp), %rsi
	movl	132(%rsi), %edi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movl	%edi, %eax
	movl	%edx, -404(%rbp)        # 4-byte Spill
	cltd
	movl	-404(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movslq	%eax, %rsi
	movq	-400(%rbp), %r9         # 8-byte Reload
	subq	%rsi, %r9
	movl	%r9d, %eax
	movl	%eax, -240(%rbp)
	movq	-16(%rbp), %rsi
	movl	132(%rsi), %eax
	subl	-232(%rbp), %eax
	subl	-240(%rbp), %eax
	movl	%eax, -236(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	80(%rsi), %esi
	movq	-16(%rbp), %r9
	movl	84(%r9), %eax
	movl	%eax, %edx
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	addl	$1, %edx
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	subl	$1, %edx
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %edx
	addl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	movl	%esi, -408(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-408(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %edx
	addl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	addl	$1, %esi
	movl	%esi, -412(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-412(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %edx
	addl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	subl	$1, %esi
	movl	%esi, -416(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-416(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	movl	%esi, -420(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-420(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	addl	$1, %esi
	movl	%esi, -424(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-424(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	subl	$1, %esi
	movl	%esi, -428(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-428(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movq	%rax, -96(%rbp)
# BB#37:                                # %do.body
	cmpq	$0, -64(%rbp)
	je	.LBB6_39
# BB#38:                                # %if.then.201
	jmp	.LBB6_40
.LBB6_39:                               # %if.else.202
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.render_image_tile_fault, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movabsq	$tile_buf, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB6_163
.LBB6_40:                               # %if.end.203
	jmp	.LBB6_41
.LBB6_41:                               # %do.end
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	callq	tile_data_pointer
	movq	%rax, -144(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB6_43
# BB#42:                                # %if.then.211
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -136(%rbp)
	jmp	.LBB6_44
.LBB6_43:                               # %if.else.218
	movq	-144(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB6_44:                               # %if.end.221
	cmpq	$0, -40(%rbp)
	je	.LBB6_46
# BB#45:                                # %if.then.224
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, %edx
	callq	tile_data_pointer
	movq	%rax, -120(%rbp)
	jmp	.LBB6_47
.LBB6_46:                               # %if.else.231
	movq	-144(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB6_47:                               # %if.end.234
	cmpq	$0, -88(%rbp)
	je	.LBB6_49
# BB#48:                                # %if.then.237
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	callq	tile_data_pointer
	movq	%rax, -168(%rbp)
	jmp	.LBB6_50
.LBB6_49:                               # %if.else.244
	movq	-144(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB6_50:                               # %if.end.247
	cmpq	$0, -32(%rbp)
	je	.LBB6_52
# BB#51:                                # %if.then.250
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	addl	$1, %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -112(%rbp)
	jmp	.LBB6_53
.LBB6_52:                               # %if.else.258
	movq	-136(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB6_53:                               # %if.end.261
	cmpq	$0, -96(%rbp)
	je	.LBB6_55
# BB#54:                                # %if.then.264
	movq	-96(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	subl	$1, %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -176(%rbp)
	jmp	.LBB6_56
.LBB6_55:                               # %if.else.272
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
.LBB6_56:                               # %if.end.275
	cmpq	$0, -80(%rbp)
	je	.LBB6_58
# BB#57:                                # %if.then.278
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	subl	$1, %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -160(%rbp)
	jmp	.LBB6_59
.LBB6_58:                               # %if.else.286
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
.LBB6_59:                               # %if.end.289
	cmpq	$0, -72(%rbp)
	je	.LBB6_61
# BB#60:                                # %if.then.292
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -152(%rbp)
	jmp	.LBB6_62
.LBB6_61:                               # %if.else.299
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB6_62:                               # %if.end.302
	cmpq	$0, -48(%rbp)
	je	.LBB6_64
# BB#63:                                # %if.then.305
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	addl	$1, %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -128(%rbp)
	jmp	.LBB6_65
.LBB6_64:                               # %if.else.313
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB6_65:                               # %if.end.316
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	tile_manager_bpp
	movl	$64, %ecx
	movabsq	$tile_buf, %rdi
	movl	%eax, -204(%rbp)
	movq	%rdi, -184(%rbp)
	movq	-16(%rbp), %rdi
	movq	104(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -208(%rbp)
	movq	-16(%rbp), %rdi
	movl	80(%rdi), %eax
	movl	%eax, -212(%rbp)
	movq	-16(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, -188(%rbp)
	movq	-16(%rbp), %rdi
	movl	80(%rdi), %eax
	cltd
	idivl	%ecx
	movl	%eax, -192(%rbp)
	movq	-16(%rbp), %rdi
	movl	80(%rdi), %eax
	addl	$1, %eax
	cltd
	idivl	%ecx
	movl	%eax, -196(%rbp)
	movq	-16(%rbp), %rdi
	movl	80(%rdi), %eax
	subl	$1, %eax
	cltd
	idivl	%ecx
	movl	%eax, -200(%rbp)
.LBB6_66:                               # %do.body.329
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	128(%rcx), %edx
	movl	%eax, -432(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-432(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	cmpl	$0, 136(%rcx)
	movl	%eax, -436(%rbp)        # 4-byte Spill
	jle	.LBB6_68
# BB#67:                                # %cond.true.333
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-208(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	136(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
	jmp	.LBB6_69
.LBB6_68:                               # %cond.false.336
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%eax, %eax
	movl	-208(%rbp), %ecx
	movq	-16(%rbp), %rdx
	subl	136(%rdx), %eax
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-444(%rbp), %eax        # 4-byte Reload
	sarl	%cl, %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
.LBB6_69:                               # %cond.end.340
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-440(%rbp), %eax        # 4-byte Reload
	movl	-436(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB6_71
# BB#70:                                # %cond.true.344
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	128(%rcx), %edx
	movl	%eax, -448(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-448(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -452(%rbp)        # 4-byte Spill
	jmp	.LBB6_75
.LBB6_71:                               # %cond.false.347
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 136(%rax)
	jle	.LBB6_73
# BB#72:                                # %cond.true.351
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-208(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	136(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
	jmp	.LBB6_74
.LBB6_73:                               # %cond.false.354
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%eax, %eax
	movl	-208(%rbp), %ecx
	movq	-16(%rbp), %rdx
	subl	136(%rdx), %eax
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-460(%rbp), %eax        # 4-byte Reload
	sarl	%cl, %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
.LBB6_74:                               # %cond.end.358
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-456(%rbp), %eax        # 4-byte Reload
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB6_75:                               # %cond.end.360
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-452(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	cmpl	$0, 136(%rcx)
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jle	.LBB6_77
# BB#76:                                # %cond.true.365
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-208(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	136(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB6_78
.LBB6_77:                               # %cond.false.368
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%eax, %eax
	movl	-208(%rbp), %ecx
	movq	-16(%rbp), %rdx
	subl	136(%rdx), %eax
	movl	%ecx, -472(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-472(%rbp), %eax        # 4-byte Reload
	sarl	%cl, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB6_78:                               # %cond.end.372
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	movl	-464(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	movl	%edx, -220(%rbp)
	movq	-16(%rbp), %rsi
	movl	128(%rsi), %eax
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	cmpl	$0, 136(%rsi)
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jle	.LBB6_80
# BB#79:                                # %cond.true.380
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-208(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	136(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jmp	.LBB6_81
.LBB6_80:                               # %cond.false.383
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%eax, %eax
	movl	-208(%rbp), %ecx
	movq	-16(%rbp), %rdx
	subl	136(%rdx), %eax
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-484(%rbp), %eax        # 4-byte Reload
	sarl	%cl, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
.LBB6_81:                               # %cond.end.387
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-480(%rbp), %eax        # 4-byte Reload
	movl	-476(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB6_83
# BB#82:                                # %cond.true.391
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	128(%rcx), %edx
	movl	%eax, -488(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-488(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -492(%rbp)        # 4-byte Spill
	jmp	.LBB6_87
.LBB6_83:                               # %cond.false.394
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 136(%rax)
	jle	.LBB6_85
# BB#84:                                # %cond.true.398
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-208(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	136(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
	jmp	.LBB6_86
.LBB6_85:                               # %cond.false.401
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%eax, %eax
	movl	-208(%rbp), %ecx
	movq	-16(%rbp), %rdx
	subl	136(%rdx), %eax
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-500(%rbp), %eax        # 4-byte Reload
	sarl	%cl, %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
.LBB6_86:                               # %cond.end.405
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-496(%rbp), %eax        # 4-byte Reload
	movl	%eax, -492(%rbp)        # 4-byte Spill
.LBB6_87:                               # %cond.end.407
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-492(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	movq	-16(%rbp), %rdx
	movl	128(%rdx), %esi
	movl	%eax, -504(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-504(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -228(%rbp)
	movq	-16(%rbp), %rdi
	movl	128(%rdi), %eax
	subl	-220(%rbp), %eax
	subl	-228(%rbp), %eax
	movl	%eax, -224(%rbp)
	movl	-212(%rbp), %eax
	addl	$1, %eax
	cmpl	-244(%rbp), %eax
	jb	.LBB6_89
# BB#88:                                # %if.then.418
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB6_89:                               # %if.end.425
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-16(%rbp), %rax
	movl	84(%rax), %ecx
	addl	$1, %ecx
	cmpl	-248(%rbp), %ecx
	jb	.LBB6_91
# BB#90:                                # %if.then.430
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB6_91:                               # %if.end.437
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB6_93
# BB#92:                                # %if.then.439
                                        #   in Loop: Header=BB6_66 Depth=1
	leaq	-176(%rbp), %rax
	movl	-220(%rbp), %edi
	movl	-224(%rbp), %esi
	movl	-228(%rbp), %edx
	movl	-232(%rbp), %ecx
	movl	-236(%rbp), %r8d
	movl	-240(%rbp), %r9d
	movq	-184(%rbp), %r10
	movl	-204(%rbp), %r11d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	box_filter
	jmp	.LBB6_94
.LBB6_93:                               # %if.else.440
                                        #   in Loop: Header=BB6_66 Depth=1
	leaq	-176(%rbp), %rax
	movl	-220(%rbp), %edi
	movl	-224(%rbp), %esi
	movl	-228(%rbp), %edx
	movl	-232(%rbp), %ecx
	movl	-236(%rbp), %r8d
	movl	-240(%rbp), %r9d
	movq	-184(%rbp), %r10
	movl	-204(%rbp), %r11d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	box_filter_premult
.LBB6_94:                               # %if.end.442
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-204(%rbp), %eax
	movq	-184(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -184(%rbp)
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %eax
	addl	-208(%rbp), %eax
	movl	%eax, -208(%rbp)
	movl	-208(%rbp), %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	100(%rcx)
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB6_153
# BB#95:                                # %if.then.446
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-216(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	100(%rcx), %eax
	movl	-208(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -208(%rbp)
	movq	-176(%rbp), %rcx
	cmpq	-168(%rbp), %rcx
	je	.LBB6_97
# BB#96:                                # %if.then.453
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-216(%rbp), %eax
	imull	-204(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	jmp	.LBB6_98
.LBB6_97:                               # %if.else.458
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	$-1, -200(%rbp)
.LBB6_98:                               # %if.end.459
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-152(%rbp), %rax
	cmpq	-144(%rbp), %rax
	je	.LBB6_100
# BB#99:                                # %if.then.464
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-216(%rbp), %eax
	imull	-204(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	jmp	.LBB6_101
.LBB6_100:                              # %if.else.469
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	$-1, -200(%rbp)
.LBB6_101:                              # %if.end.470
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.LBB6_103
# BB#102:                               # %if.then.475
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-216(%rbp), %eax
	imull	-204(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB6_104
.LBB6_103:                              # %if.else.480
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	$-1, -200(%rbp)
.LBB6_104:                              # %if.end.481
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	$64, %eax
	movl	-216(%rbp), %ecx
	imull	-204(%rbp), %ecx
	movq	-168(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -168(%rbp)
	movl	-216(%rbp), %ecx
	imull	-204(%rbp), %ecx
	movq	-144(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -144(%rbp)
	movl	-216(%rbp), %ecx
	imull	-204(%rbp), %ecx
	movq	-120(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -120(%rbp)
	movl	-216(%rbp), %ecx
	imull	-204(%rbp), %ecx
	movq	-136(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -136(%rbp)
	movl	-216(%rbp), %ecx
	imull	-204(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -112(%rbp)
	movl	-216(%rbp), %ecx
	imull	-204(%rbp), %ecx
	movq	-160(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -160(%rbp)
	movl	-216(%rbp), %ecx
	addl	-212(%rbp), %ecx
	movl	%ecx, -212(%rbp)
	movl	-212(%rbp), %ecx
	movl	%eax, -508(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-508(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	-192(%rbp), %eax
	je	.LBB6_118
# BB#105:                               # %if.then.510
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	callq	tile_release
	cmpq	$0, -40(%rbp)
	je	.LBB6_107
# BB#106:                               # %if.then.514
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	tile_release
.LBB6_107:                              # %if.end.516
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB6_109
# BB#108:                               # %if.then.519
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%esi, %esi
	movq	-88(%rbp), %rdi
	callq	tile_release
.LBB6_109:                              # %if.end.521
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movl	-212(%rbp), %esi
	movq	-16(%rbp), %rdx
	movl	84(%rdx), %edx
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	-212(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	addl	$1, %edx
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	-212(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	subl	$1, %edx
	callq	tile_manager_get_tile
	movq	%rax, -88(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_111
# BB#110:                               # %if.then.539
	jmp	.LBB6_156
.LBB6_111:                              # %if.end.540
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-64(%rbp), %rdi
	movl	-212(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	callq	tile_data_pointer
	movq	%rax, -144(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_113
# BB#112:                               # %if.then.547
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB6_114
.LBB6_113:                              # %if.else.550
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-40(%rbp), %rdi
	movl	-212(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, %edx
	callq	tile_data_pointer
	movq	%rax, -120(%rbp)
.LBB6_114:                              # %if.end.556
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -88(%rbp)
	jne	.LBB6_116
# BB#115:                               # %if.then.559
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB6_117
.LBB6_116:                              # %if.else.562
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-88(%rbp), %rdi
	movl	-212(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	callq	tile_data_pointer
	movq	%rax, -168(%rbp)
.LBB6_117:                              # %if.end.568
                                        #   in Loop: Header=BB6_66 Depth=1
	jmp	.LBB6_118
.LBB6_118:                              # %if.end.569
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	$64, %eax
	movl	-212(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -512(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-512(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	-196(%rbp), %eax
	je	.LBB6_135
# BB#119:                               # %if.then.574
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB6_121
# BB#120:                               # %if.then.577
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	tile_release
.LBB6_121:                              # %if.end.579
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_123
# BB#122:                               # %if.then.582
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	tile_release
.LBB6_123:                              # %if.end.584
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB6_125
# BB#124:                               # %if.then.587
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%esi, %esi
	movq	-80(%rbp), %rdi
	callq	tile_release
.LBB6_125:                              # %if.end.589
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rdx
	movl	84(%rdx), %edx
	movl	%eax, %esi
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	-212(%rbp), %edx
	addl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	addl	$1, %esi
	movl	%esi, -516(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-516(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	-212(%rbp), %edx
	addl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	subl	$1, %esi
	movl	%esi, -520(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-520(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movq	%rax, -80(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_127
# BB#126:                               # %if.then.610
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB6_128
.LBB6_127:                              # %if.else.613
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-56(%rbp), %rdi
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	84(%rcx), %edx
	movl	%eax, %esi
	callq	tile_data_pointer
	movq	%rax, -136(%rbp)
.LBB6_128:                              # %if.end.619
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB6_130
# BB#129:                               # %if.then.622
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB6_131
.LBB6_130:                              # %if.else.625
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-32(%rbp), %rdi
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	84(%rcx), %edx
	addl	$1, %edx
	movl	%eax, %esi
	callq	tile_data_pointer
	movq	%rax, -112(%rbp)
.LBB6_131:                              # %if.end.632
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -80(%rbp)
	jne	.LBB6_133
# BB#132:                               # %if.then.635
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB6_134
.LBB6_133:                              # %if.else.638
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-80(%rbp), %rdi
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	84(%rcx), %edx
	subl	$1, %edx
	movl	%eax, %esi
	callq	tile_data_pointer
	movq	%rax, -160(%rbp)
.LBB6_134:                              # %if.end.645
                                        #   in Loop: Header=BB6_66 Depth=1
	jmp	.LBB6_135
.LBB6_135:                              # %if.end.646
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	$64, %eax
	movl	-212(%rbp), %ecx
	subl	$1, %ecx
	movl	%eax, -524(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-524(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	-200(%rbp), %eax
	je	.LBB6_152
# BB#136:                               # %if.then.651
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB6_138
# BB#137:                               # %if.then.654
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%esi, %esi
	movq	-96(%rbp), %rdi
	callq	tile_release
.LBB6_138:                              # %if.end.656
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB6_140
# BB#139:                               # %if.then.659
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%esi, %esi
	movq	-72(%rbp), %rdi
	callq	tile_release
.LBB6_140:                              # %if.end.661
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB6_142
# BB#141:                               # %if.then.664
                                        #   in Loop: Header=BB6_66 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	tile_release
.LBB6_142:                              # %if.end.666
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movl	-212(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rdx
	movl	84(%rdx), %esi
	subl	$1, %esi
	movl	%esi, -528(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-528(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	-212(%rbp), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	movl	%esi, -532(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-532(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	-212(%rbp), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	addl	$1, %esi
	movl	%esi, -536(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-536(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movq	%rax, -48(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_144
# BB#143:                               # %if.then.687
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB6_145
.LBB6_144:                              # %if.else.690
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-72(%rbp), %rdi
	movl	-212(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	84(%rcx), %edx
	movl	%eax, %esi
	callq	tile_data_pointer
	movq	%rax, -152(%rbp)
.LBB6_145:                              # %if.end.696
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB6_147
# BB#146:                               # %if.then.699
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB6_148
.LBB6_147:                              # %if.else.702
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-48(%rbp), %rdi
	movl	-212(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	84(%rcx), %edx
	addl	$1, %edx
	movl	%eax, %esi
	callq	tile_data_pointer
	movq	%rax, -128(%rbp)
.LBB6_148:                              # %if.end.709
                                        #   in Loop: Header=BB6_66 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB6_150
# BB#149:                               # %if.then.712
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB6_151
.LBB6_150:                              # %if.else.715
                                        #   in Loop: Header=BB6_66 Depth=1
	movq	-96(%rbp), %rdi
	movl	-212(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	84(%rcx), %edx
	subl	$1, %edx
	movl	%eax, %esi
	callq	tile_data_pointer
	movq	%rax, -176(%rbp)
.LBB6_151:                              # %if.end.722
                                        #   in Loop: Header=BB6_66 Depth=1
	jmp	.LBB6_152
.LBB6_152:                              # %if.end.723
                                        #   in Loop: Header=BB6_66 Depth=1
	jmp	.LBB6_153
.LBB6_153:                              # %if.end.724
                                        #   in Loop: Header=BB6_66 Depth=1
	jmp	.LBB6_154
.LBB6_154:                              # %do.cond
                                        #   in Loop: Header=BB6_66 Depth=1
	movl	-188(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -188(%rbp)
	cmpl	$0, %eax
	jne	.LBB6_66
# BB#155:                               # %do.end.726
	jmp	.LBB6_156
.LBB6_156:                              # %done
	movl	$0, -208(%rbp)
.LBB6_157:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -208(%rbp)
	jge	.LBB6_162
# BB#158:                               # %for.body
                                        #   in Loop: Header=BB6_157 Depth=1
	movslq	-208(%rbp), %rax
	cmpq	$0, -96(%rbp,%rax,8)
	je	.LBB6_160
# BB#159:                               # %if.then.731
                                        #   in Loop: Header=BB6_157 Depth=1
	xorl	%esi, %esi
	movslq	-208(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rdi
	callq	tile_release
.LBB6_160:                              # %if.end.734
                                        #   in Loop: Header=BB6_157 Depth=1
	jmp	.LBB6_161
.LBB6_161:                              # %for.inc
                                        #   in Loop: Header=BB6_157 Depth=1
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB6_157
.LBB6_162:                              # %for.end
	movabsq	$tile_buf, %rax
	movq	%rax, -8(%rbp)
.LBB6_163:                              # %return
	movq	-8(%rbp), %rax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end6:
	.size	render_image_tile_fault, .Lfunc_end6-render_image_tile_fault
	.cfi_endproc

	.align	16, 0x90
	.type	render_image_tile_fault_nearest,@function
render_image_tile_fault_nearest:        # @render_image_tile_fault_nearest
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	callq	tile_manager_get_tile
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.render_image_tile_fault_nearest, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movabsq	$tile_buf, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB7_28
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	callq	tile_data_pointer
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	tile_manager_bpp
	movabsq	$tile_buf, %rdi
	movl	$64, %edx
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-16(%rbp), %rcx
	movl	40(%rcx), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rcx
	movl	80(%rcx), %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rcx
	movl	80(%rcx), %eax
	movl	%edx, -80(%rbp)         # 4-byte Spill
	cltd
	movl	-80(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -48(%rbp)
	movq	%rdi, -40(%rbp)
.LBB7_6:                                # %do.body.9
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB7_13
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB7_6 Depth=1
	movl	-52(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%eax, -92(%rbp)         # 4-byte Spill
	ja	.LBB7_12
# BB#30:                                # %if.then.10
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_8:                                # %sw.bb
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB7_9:                                # %sw.bb.12
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB7_10:                               # %sw.bb.15
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB7_11:                               # %sw.bb.18
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB7_12:                               # %sw.epilog
                                        #   in Loop: Header=BB7_6 Depth=1
	jmp	.LBB7_19
.LBB7_13:                               # %if.else.21
                                        #   in Loop: Header=BB7_6 Depth=1
	movl	-52(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%eax, -108(%rbp)        # 4-byte Spill
	ja	.LBB7_18
# BB#29:                                # %if.else.21
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_14:                               # %sw.bb.22
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-72(%rbp), %rax
	movb	3(%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 3(%rax)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB7_18
.LBB7_15:                               # %sw.bb.48
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB7_18
.LBB7_16:                               # %sw.bb.55
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-72(%rbp), %rax
	movb	1(%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB7_18
.LBB7_17:                               # %sw.bb.69
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB7_18:                               # %sw.epilog.72
                                        #   in Loop: Header=BB7_6 Depth=1
	jmp	.LBB7_19
.LBB7_19:                               # %if.end.73
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	100(%rcx), %rcx
	cqto
	idivq	%rcx
	movl	%eax, %esi
	movl	%esi, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB7_25
# BB#20:                                # %if.then.80
                                        #   in Loop: Header=BB7_6 Depth=1
	movl	$64, %eax
	movl	-76(%rbp), %ecx
	imull	-52(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	movl	-76(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-76(%rbp), %ecx
	movq	-16(%rbp), %rdx
	imull	100(%rdx), %ecx
	movslq	%ecx, %rdx
	movq	-64(%rbp), %rsi
	subq	%rdx, %rsi
	movq	%rsi, -64(%rbp)
	movl	-56(%rbp), %ecx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-112(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	-48(%rbp), %eax
	je	.LBB7_24
# BB#21:                                # %if.then.90
                                        #   in Loop: Header=BB7_6 Depth=1
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	tile_release
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-48(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	-56(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	callq	tile_manager_get_tile
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_23
# BB#22:                                # %if.then.96
	movabsq	$tile_buf, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_28
.LBB7_23:                               # %if.end.97
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-24(%rbp), %rdi
	movl	-56(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	callq	tile_data_pointer
	movq	%rax, -32(%rbp)
.LBB7_24:                               # %if.end.100
                                        #   in Loop: Header=BB7_6 Depth=1
	jmp	.LBB7_25
.LBB7_25:                               # %if.end.101
                                        #   in Loop: Header=BB7_6 Depth=1
	jmp	.LBB7_26
.LBB7_26:                               # %do.cond
                                        #   in Loop: Header=BB7_6 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jne	.LBB7_6
# BB#27:                                # %do.end.103
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	tile_release
	movabsq	$tile_buf, %rdi
	movq	%rdi, -8(%rbp)
.LBB7_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	render_image_tile_fault_nearest, .Lfunc_end7-render_image_tile_fault_nearest
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_17
	.quad	.LBB7_16
	.quad	.LBB7_15
	.quad	.LBB7_14
.LJTI7_1:
	.quad	.LBB7_11
	.quad	.LBB7_10
	.quad	.LBB7_9
	.quad	.LBB7_8

	.text
	.align	16, 0x90
	.type	render_image_tile_fault_one_row,@function
render_image_tile_fault_one_row:        # @render_image_tile_fault_one_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	tile_manager_width
	movl	$2, %ecx
	movl	%eax, -196(%rbp)
	movq	-16(%rbp), %rdi
	movl	132(%rdi), %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rdi
	movq	-16(%rbp), %rsi
	cmpl	$0, 140(%rsi)
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	jle	.LBB8_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	140(%rcx), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subl	140(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-224(%rbp), %rdx        # 8-byte Reload
	sarq	%cl, %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
.LBB8_3:                                # %cond.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB8_5
# BB#4:                                 # %cond.true.8
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	132(%rcx), %edx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-228(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB8_9
.LBB8_5:                                # %cond.false.12
	movq	-16(%rbp), %rax
	cmpl	$0, 140(%rax)
	jle	.LBB8_7
# BB#6:                                 # %cond.true.16
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	140(%rcx), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false.21
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subl	140(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-256(%rbp), %rdx        # 8-byte Reload
	sarq	%cl, %rdx
	movq	%rdx, -248(%rbp)        # 8-byte Spill
.LBB8_8:                                # %cond.end.27
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB8_9:                                # %cond.end.29
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpl	$0, 140(%rcx)
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jle	.LBB8_11
# BB#10:                                # %cond.true.34
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	140(%rcx), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB8_12
.LBB8_11:                               # %cond.false.39
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subl	140(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-280(%rbp), %rdx        # 8-byte Reload
	sarq	%cl, %rdx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
.LBB8_12:                               # %cond.end.45
	movq	-272(%rbp), %rax        # 8-byte Reload
	movl	$2, %ecx
	movq	-264(%rbp), %rdx        # 8-byte Reload
	subq	%rax, %rdx
	movl	%edx, %esi
	movl	%esi, -184(%rbp)
	movq	-16(%rbp), %rax
	movl	132(%rax), %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rdi
	movq	-16(%rbp), %r8
	cmpl	$0, 140(%r8)
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	jle	.LBB8_14
# BB#13:                                # %cond.true.55
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	140(%rcx), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB8_15
.LBB8_14:                               # %cond.false.60
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subl	140(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-304(%rbp), %rdx        # 8-byte Reload
	sarq	%cl, %rdx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
.LBB8_15:                               # %cond.end.66
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB8_17
# BB#16:                                # %cond.true.70
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	132(%rcx), %edx
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-308(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB8_21
.LBB8_17:                               # %cond.false.74
	movq	-16(%rbp), %rax
	cmpl	$0, 140(%rax)
	jle	.LBB8_19
# BB#18:                                # %cond.true.78
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	140(%rcx), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB8_20
.LBB8_19:                               # %cond.false.83
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subl	140(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-336(%rbp), %rdx        # 8-byte Reload
	sarq	%cl, %rdx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
.LBB8_20:                               # %cond.end.89
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB8_21:                               # %cond.end.91
	movq	-320(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$2, %edx
	movq	-16(%rbp), %rsi
	movl	132(%rsi), %edi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movl	%edi, %eax
	movl	%edx, -348(%rbp)        # 4-byte Spill
	cltd
	movl	-348(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movslq	%eax, %rsi
	movq	-344(%rbp), %r9         # 8-byte Reload
	subq	%rsi, %r9
	movl	%r9d, %eax
	movl	%eax, -192(%rbp)
	movq	-16(%rbp), %rsi
	movl	132(%rsi), %eax
	subl	-184(%rbp), %eax
	subl	-192(%rbp), %eax
	movl	%eax, -188(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	80(%rsi), %esi
	movq	-16(%rbp), %r9
	movl	84(%r9), %eax
	movl	%eax, %edx
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %edx
	addl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	movl	%esi, -352(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-352(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	movl	%esi, -356(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-356(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_get_tile
	movq	%rax, -32(%rbp)
# BB#22:                                # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB8_24
# BB#23:                                # %if.then
	jmp	.LBB8_25
.LBB8_24:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.render_image_tile_fault_one_row, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movabsq	$tile_buf, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB8_107
.LBB8_25:                               # %if.end
	jmp	.LBB8_26
.LBB8_26:                               # %do.end
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	callq	tile_data_pointer
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	addl	$1, %edx
	callq	tile_data_pointer
	movq	%rax, -72(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_28
# BB#27:                                # %if.then.130
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	addl	$1, %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -64(%rbp)
	jmp	.LBB8_29
.LBB8_28:                               # %if.else.144
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB8_29:                               # %if.end.149
	cmpq	$0, -48(%rbp)
	je	.LBB8_31
# BB#30:                                # %if.then.152
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	callq	tile_data_pointer
	movq	%rax, -120(%rbp)
	jmp	.LBB8_32
.LBB8_31:                               # %if.else.159
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB8_32:                               # %if.end.162
	cmpq	$0, -32(%rbp)
	je	.LBB8_34
# BB#33:                                # %if.then.165
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	subl	$1, %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -128(%rbp)
	jmp	.LBB8_35
.LBB8_34:                               # %if.else.173
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB8_35:                               # %if.end.176
	cmpq	$0, -40(%rbp)
	je	.LBB8_37
# BB#36:                                # %if.then.179
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	subl	$1, %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -112(%rbp)
	jmp	.LBB8_38
.LBB8_37:                               # %if.else.187
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB8_38:                               # %if.end.190
	cmpq	$0, -32(%rbp)
	je	.LBB8_40
# BB#39:                                # %if.then.193
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	addl	$1, %edx
	movl	%ecx, %esi
	callq	tile_data_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB8_41
.LBB8_40:                               # %if.else.207
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB8_41:                               # %if.end.212
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	tile_manager_bpp
	movl	$64, %ecx
	movabsq	$tile_buf, %rdi
	movl	%eax, -156(%rbp)
	movq	%rdi, -136(%rbp)
	movq	-16(%rbp), %rdi
	movq	104(%rdi), %rdi
	movl	%edi, %eax
	movl	%eax, -160(%rbp)
	movq	-16(%rbp), %rdi
	movl	80(%rdi), %eax
	movl	%eax, -164(%rbp)
	movq	-16(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, -140(%rbp)
	movq	-16(%rbp), %rdi
	movl	80(%rdi), %eax
	cltd
	idivl	%ecx
	movl	%eax, -144(%rbp)
	movq	-16(%rbp), %rdi
	movl	80(%rdi), %eax
	addl	$1, %eax
	cltd
	idivl	%ecx
	movl	%eax, -148(%rbp)
	movq	-16(%rbp), %rdi
	movl	80(%rdi), %eax
	subl	$1, %eax
	cltd
	idivl	%ecx
	movl	%eax, -152(%rbp)
.LBB8_42:                               # %do.body.225
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	128(%rcx), %edx
	movl	%eax, -360(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-360(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	cmpl	$0, 136(%rcx)
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jle	.LBB8_44
# BB#43:                                # %cond.true.229
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-160(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	136(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB8_45
.LBB8_44:                               # %cond.false.232
                                        #   in Loop: Header=BB8_42 Depth=1
	xorl	%eax, %eax
	movl	-160(%rbp), %ecx
	movq	-16(%rbp), %rdx
	subl	136(%rdx), %eax
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-372(%rbp), %eax        # 4-byte Reload
	sarl	%cl, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB8_45:                               # %cond.end.236
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	-364(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB8_47
# BB#46:                                # %cond.true.240
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	128(%rcx), %edx
	movl	%eax, -376(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-376(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB8_51
.LBB8_47:                               # %cond.false.243
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 136(%rax)
	jle	.LBB8_49
# BB#48:                                # %cond.true.247
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-160(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	136(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB8_50
.LBB8_49:                               # %cond.false.250
                                        #   in Loop: Header=BB8_42 Depth=1
	xorl	%eax, %eax
	movl	-160(%rbp), %ecx
	movq	-16(%rbp), %rdx
	subl	136(%rdx), %eax
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-388(%rbp), %eax        # 4-byte Reload
	sarl	%cl, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB8_50:                               # %cond.end.254
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB8_51:                               # %cond.end.256
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-380(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	cmpl	$0, 136(%rcx)
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jle	.LBB8_53
# BB#52:                                # %cond.true.261
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-160(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	136(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB8_54
.LBB8_53:                               # %cond.false.264
                                        #   in Loop: Header=BB8_42 Depth=1
	xorl	%eax, %eax
	movl	-160(%rbp), %ecx
	movq	-16(%rbp), %rdx
	subl	136(%rdx), %eax
	movl	%ecx, -400(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-400(%rbp), %eax        # 4-byte Reload
	sarl	%cl, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB8_54:                               # %cond.end.268
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	movl	-392(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	movl	%edx, -172(%rbp)
	movq	-16(%rbp), %rsi
	movl	128(%rsi), %eax
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	cmpl	$0, 136(%rsi)
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jle	.LBB8_56
# BB#55:                                # %cond.true.276
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-160(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	136(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB8_57
.LBB8_56:                               # %cond.false.279
                                        #   in Loop: Header=BB8_42 Depth=1
	xorl	%eax, %eax
	movl	-160(%rbp), %ecx
	movq	-16(%rbp), %rdx
	subl	136(%rdx), %eax
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-412(%rbp), %eax        # 4-byte Reload
	sarl	%cl, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
.LBB8_57:                               # %cond.end.283
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	-404(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB8_59
# BB#58:                                # %cond.true.287
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	128(%rcx), %edx
	movl	%eax, -416(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-416(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -420(%rbp)        # 4-byte Spill
	jmp	.LBB8_63
.LBB8_59:                               # %cond.false.290
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 136(%rax)
	jle	.LBB8_61
# BB#60:                                # %cond.true.294
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-160(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	136(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB8_62
.LBB8_61:                               # %cond.false.297
                                        #   in Loop: Header=BB8_42 Depth=1
	xorl	%eax, %eax
	movl	-160(%rbp), %ecx
	movq	-16(%rbp), %rdx
	subl	136(%rdx), %eax
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-428(%rbp), %eax        # 4-byte Reload
	sarl	%cl, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
.LBB8_62:                               # %cond.end.301
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-424(%rbp), %eax        # 4-byte Reload
	movl	%eax, -420(%rbp)        # 4-byte Spill
.LBB8_63:                               # %cond.end.303
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-420(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	movq	-16(%rbp), %rdx
	movl	128(%rdx), %esi
	movl	%eax, -432(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-432(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -180(%rbp)
	movq	-16(%rbp), %rdi
	movl	128(%rdi), %eax
	subl	-172(%rbp), %eax
	subl	-180(%rbp), %eax
	movl	%eax, -176(%rbp)
	movl	-164(%rbp), %eax
	addl	$1, %eax
	cmpl	-196(%rbp), %eax
	jb	.LBB8_65
# BB#64:                                # %if.then.314
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB8_65:                               # %if.end.321
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB8_67
# BB#66:                                # %if.then.323
                                        #   in Loop: Header=BB8_42 Depth=1
	leaq	-128(%rbp), %rax
	movl	-172(%rbp), %edi
	movl	-176(%rbp), %esi
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %ecx
	movl	-188(%rbp), %r8d
	movl	-192(%rbp), %r9d
	movq	-136(%rbp), %r10
	movl	-156(%rbp), %r11d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	box_filter
	jmp	.LBB8_68
.LBB8_67:                               # %if.else.324
                                        #   in Loop: Header=BB8_42 Depth=1
	leaq	-128(%rbp), %rax
	movl	-172(%rbp), %edi
	movl	-176(%rbp), %esi
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %ecx
	movl	-188(%rbp), %r8d
	movl	-192(%rbp), %r9d
	movq	-136(%rbp), %r10
	movl	-156(%rbp), %r11d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	box_filter_premult
.LBB8_68:                               # %if.end.326
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-156(%rbp), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	100(%rcx)
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB8_97
# BB#69:                                # %if.then.330
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-168(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	100(%rcx), %eax
	movl	-160(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -160(%rbp)
	movq	-128(%rbp), %rcx
	cmpq	-120(%rbp), %rcx
	je	.LBB8_71
# BB#70:                                # %if.then.337
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-168(%rbp), %eax
	imull	-156(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB8_72
.LBB8_71:                               # %if.else.342
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	$-1, -152(%rbp)
.LBB8_72:                               # %if.end.343
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-104(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB8_74
# BB#73:                                # %if.then.348
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-168(%rbp), %eax
	imull	-156(%rbp), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
	jmp	.LBB8_75
.LBB8_74:                               # %if.else.353
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	$-1, -152(%rbp)
.LBB8_75:                               # %if.end.354
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB8_77
# BB#76:                                # %if.then.359
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-168(%rbp), %eax
	imull	-156(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB8_78
.LBB8_77:                               # %if.else.364
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	$-1, -152(%rbp)
.LBB8_78:                               # %if.end.365
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	$64, %eax
	movl	-168(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movq	-120(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -120(%rbp)
	movl	-168(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movq	-96(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -96(%rbp)
	movl	-168(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -72(%rbp)
	movl	-168(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -88(%rbp)
	movl	-168(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	movl	-168(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -112(%rbp)
	movl	-168(%rbp), %ecx
	addl	-164(%rbp), %ecx
	movl	%ecx, -164(%rbp)
	movl	-164(%rbp), %ecx
	movl	%eax, -436(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-436(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	-144(%rbp), %eax
	je	.LBB8_82
# BB#79:                                # %if.then.394
                                        #   in Loop: Header=BB8_42 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	tile_release
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-144(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -144(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	-164(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	callq	tile_manager_get_tile
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_81
# BB#80:                                # %if.then.403
	jmp	.LBB8_100
.LBB8_81:                               # %if.end.404
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-48(%rbp), %rdi
	movl	-164(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	callq	tile_data_pointer
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rdi
	movl	-164(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	addl	$1, %edx
	callq	tile_data_pointer
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	movl	-164(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	84(%rax), %edx
	subl	$1, %edx
	callq	tile_data_pointer
	movq	%rax, -120(%rbp)
.LBB8_82:                               # %if.end.419
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	$64, %eax
	movl	-164(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -440(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-440(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	-148(%rbp), %eax
	je	.LBB8_89
# BB#83:                                # %if.then.424
                                        #   in Loop: Header=BB8_42 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB8_85
# BB#84:                                # %if.then.427
                                        #   in Loop: Header=BB8_42 Depth=1
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	tile_release
.LBB8_85:                               # %if.end.429
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rdx
	movl	84(%rdx), %edx
	movl	%eax, %esi
	callq	tile_manager_get_tile
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_87
# BB#86:                                # %if.then.438
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB8_88
.LBB8_87:                               # %if.else.445
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-40(%rbp), %rdi
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	84(%rcx), %edx
	movl	%eax, %esi
	callq	tile_data_pointer
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rdi
	movl	-164(%rbp), %edx
	addl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	addl	$1, %esi
	movl	%esi, -444(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-444(%rbp), %edx        # 4-byte Reload
	callq	tile_data_pointer
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	movl	-164(%rbp), %edx
	addl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	subl	$1, %esi
	movl	%esi, -448(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-448(%rbp), %edx        # 4-byte Reload
	callq	tile_data_pointer
	movq	%rax, -112(%rbp)
.LBB8_88:                               # %if.end.463
                                        #   in Loop: Header=BB8_42 Depth=1
	jmp	.LBB8_89
.LBB8_89:                               # %if.end.464
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	$64, %eax
	movl	-164(%rbp), %ecx
	subl	$1, %ecx
	movl	%eax, -452(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-452(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	-152(%rbp), %eax
	je	.LBB8_96
# BB#90:                                # %if.then.469
                                        #   in Loop: Header=BB8_42 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_92
# BB#91:                                # %if.then.472
                                        #   in Loop: Header=BB8_42 Depth=1
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	tile_release
.LBB8_92:                               # %if.end.474
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movl	-164(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rdx
	movl	84(%rdx), %edx
	movl	%eax, %esi
	callq	tile_manager_get_tile
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_94
# BB#93:                                # %if.then.483
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB8_95
.LBB8_94:                               # %if.else.490
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-32(%rbp), %rdi
	movl	-164(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	84(%rcx), %edx
	movl	%eax, %esi
	callq	tile_data_pointer
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rdi
	movl	-164(%rbp), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	addl	$1, %esi
	movl	%esi, -456(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-456(%rbp), %edx        # 4-byte Reload
	callq	tile_data_pointer
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdi
	movl	-164(%rbp), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rax
	movl	84(%rax), %esi
	subl	$1, %esi
	movl	%esi, -460(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-460(%rbp), %edx        # 4-byte Reload
	callq	tile_data_pointer
	movq	%rax, -128(%rbp)
.LBB8_95:                               # %if.end.508
                                        #   in Loop: Header=BB8_42 Depth=1
	jmp	.LBB8_96
.LBB8_96:                               # %if.end.509
                                        #   in Loop: Header=BB8_42 Depth=1
	jmp	.LBB8_97
.LBB8_97:                               # %if.end.510
                                        #   in Loop: Header=BB8_42 Depth=1
	jmp	.LBB8_98
.LBB8_98:                               # %do.cond
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-140(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -140(%rbp)
	cmpl	$0, %eax
	jne	.LBB8_42
# BB#99:                                # %do.end.512
	jmp	.LBB8_100
.LBB8_100:                              # %done
	movl	$0, -160(%rbp)
.LBB8_101:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -160(%rbp)
	jge	.LBB8_106
# BB#102:                               # %for.body
                                        #   in Loop: Header=BB8_101 Depth=1
	movslq	-160(%rbp), %rax
	cmpq	$0, -48(%rbp,%rax,8)
	je	.LBB8_104
# BB#103:                               # %if.then.517
                                        #   in Loop: Header=BB8_101 Depth=1
	xorl	%esi, %esi
	movslq	-160(%rbp), %rax
	movq	-48(%rbp,%rax,8), %rdi
	callq	tile_release
.LBB8_104:                              # %if.end.520
                                        #   in Loop: Header=BB8_101 Depth=1
	jmp	.LBB8_105
.LBB8_105:                              # %for.inc
                                        #   in Loop: Header=BB8_101 Depth=1
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB8_101
.LBB8_106:                              # %for.end
	movabsq	$tile_buf, %rax
	movq	%rax, -8(%rbp)
.LBB8_107:                              # %return
	movq	-8(%rbp), %rax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end8:
	.size	render_image_tile_fault_one_row, .Lfunc_end8-render_image_tile_fault_one_row
	.cfi_endproc

	.align	16, 0x90
	.type	box_filter,@function
box_filter:                             # @box_filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	movl	32(%rbp), %eax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movq	%r11, -32(%rbp)
	movq	%r10, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-4(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	-16(%rbp), %esi
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movzbl	(%rdx,%rcx), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %esi
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	48(%rdx), %rdx
	movzbl	(%rdx,%rcx), %edi
	imull	-24(%rbp), %edi
	addl	%edi, %esi
	imull	%esi, %eax
	movl	-8(%rbp), %esi
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rcx), %edi
	imull	-16(%rbp), %edi
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movzbl	(%rdx,%rcx), %r8d
	imull	-20(%rbp), %r8d
	addl	%r8d, %edi
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	56(%rdx), %rdx
	movzbl	(%rdx,%rcx), %r8d
	imull	-24(%rbp), %r8d
	addl	%r8d, %edi
	imull	%edi, %esi
	addl	%esi, %eax
	movl	-12(%rbp), %esi
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %edi
	imull	-16(%rbp), %edi
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	40(%rdx), %rdx
	movzbl	(%rdx,%rcx), %r8d
	imull	-20(%rbp), %r8d
	addl	%r8d, %edi
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	64(%rdx), %rdx
	movzbl	(%rdx,%rcx), %r8d
	imull	-24(%rbp), %r8d
	addl	%r8d, %edi
	imull	%edi, %esi
	addl	%esi, %eax
	xorl	%edx, %edx
	divl	-48(%rbp)
	movb	%al, %r9b
	movslq	-52(%rbp), %rcx
	movq	-40(%rbp), %r10
	movb	%r9b, (%r10,%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end9:
	.size	box_filter, .Lfunc_end9-box_filter
	.cfi_endproc

	.align	16, 0x90
	.type	box_filter_premult,@function
box_filter_premult:                     # @box_filter_premult
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	32(%rbp), %eax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movq	%r11, -32(%rbp)
	movq	%r10, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	addl	%ecx, %eax
	movl	-12(%rbp), %ecx
	addl	%ecx, %eax
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	%edx, %ecx
	movl	-24(%rbp), %edx
	addl	%edx, %ecx
	imull	%ecx, %eax
	shrl	$4, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	je	.LBB10_6
	jmp	.LBB10_13
.LBB10_13:                              # %entry
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jne	.LBB10_11
	jmp	.LBB10_1
.LBB10_1:                               # %sw.bb
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	3(%rax), %ecx
	imull	-16(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movzbl	3(%rax), %ecx
	imull	-20(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -92(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movzbl	3(%rax), %ecx
	imull	-24(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	3(%rax), %ecx
	imull	-16(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -84(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movzbl	3(%rax), %ecx
	imull	-20(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movzbl	3(%rax), %ecx
	imull	-24(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -76(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movzbl	3(%rax), %ecx
	imull	-16(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	3(%rax), %ecx
	imull	-20(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -68(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	3(%rax), %ecx
	imull	-24(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -64(%rbp)
	movl	-8(%rbp), %ecx
	movl	-96(%rbp), %edx
	addl	-92(%rbp), %edx
	addl	-88(%rbp), %edx
	imull	%edx, %ecx
	movl	-12(%rbp), %edx
	movl	-84(%rbp), %esi
	addl	-80(%rbp), %esi
	addl	-76(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	-4(%rbp), %edx
	movl	-72(%rbp), %esi
	addl	-68(%rbp), %esi
	addl	-64(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -100(%rbp)
	movl	$0, -104(%rbp)
.LBB10_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -104(%rbp)
	jae	.LBB10_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	-8(%rbp), %eax
	movl	-96(%rbp), %ecx
	movl	-104(%rbp), %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	imull	%edx, %ecx
	movl	-92(%rbp), %edx
	movl	-104(%rbp), %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r8d
	imull	%r8d, %edx
	addl	%edx, %ecx
	movl	-88(%rbp), %edx
	movl	-104(%rbp), %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rdi
	movq	56(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r8d
	imull	%r8d, %edx
	addl	%edx, %ecx
	imull	%ecx, %eax
	movl	-12(%rbp), %ecx
	movl	-84(%rbp), %edx
	movl	-104(%rbp), %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r8d
	imull	%r8d, %edx
	movl	-80(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rdi
	movq	40(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edx
	movl	-76(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rdi
	movq	64(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	-4(%rbp), %ecx
	movl	-72(%rbp), %edx
	movl	-104(%rbp), %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r8d
	imull	%r8d, %edx
	movl	-68(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rdi
	movq	24(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edx
	movl	-64(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rdi
	movq	48(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	imull	$255, -48(%rbp), %ecx
	shrl	$1, %ecx
	addl	%ecx, %eax
	imull	$255, -48(%rbp), %ecx
	xorl	%edx, %edx
	divl	%ecx
	movb	%al, %r10b
	movl	-104(%rbp), %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	movb	%r10b, (%rdi,%rsi)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB10_2
.LBB10_5:                               # %for.end
	movl	-100(%rbp), %eax
	movl	-48(%rbp), %ecx
	shrl	$1, %ecx
	addl	%ecx, %eax
	xorl	%edx, %edx
	divl	-48(%rbp)
	movb	%al, %sil
	movq	-40(%rbp), %rdi
	movb	%sil, 3(%rdi)
	jmp	.LBB10_12
.LBB10_6:                               # %sw.bb.151
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	1(%rax), %ecx
	imull	-16(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -144(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movzbl	1(%rax), %ecx
	imull	-20(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -140(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movzbl	1(%rax), %ecx
	imull	-24(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	1(%rax), %ecx
	imull	-16(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -132(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movzbl	1(%rax), %ecx
	imull	-20(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movzbl	1(%rax), %ecx
	imull	-24(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -124(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movzbl	1(%rax), %ecx
	imull	-16(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	1(%rax), %ecx
	imull	-20(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -116(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	1(%rax), %ecx
	imull	-24(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, -112(%rbp)
	movl	-8(%rbp), %ecx
	movl	-144(%rbp), %edx
	addl	-140(%rbp), %edx
	addl	-136(%rbp), %edx
	imull	%edx, %ecx
	movl	-12(%rbp), %edx
	movl	-132(%rbp), %esi
	addl	-128(%rbp), %esi
	addl	-124(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	-4(%rbp), %edx
	movl	-120(%rbp), %esi
	addl	-116(%rbp), %esi
	addl	-112(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -148(%rbp)
	movl	$0, -152(%rbp)
.LBB10_7:                               # %for.cond.229
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -152(%rbp)
	jae	.LBB10_10
# BB#8:                                 # %for.body.232
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-8(%rbp), %eax
	movl	-144(%rbp), %ecx
	movl	-152(%rbp), %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	imull	%edx, %ecx
	movl	-140(%rbp), %edx
	movl	-152(%rbp), %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r8d
	imull	%r8d, %edx
	addl	%edx, %ecx
	movl	-136(%rbp), %edx
	movl	-152(%rbp), %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rdi
	movq	56(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r8d
	imull	%r8d, %edx
	addl	%edx, %ecx
	imull	%ecx, %eax
	movl	-12(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-152(%rbp), %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r8d
	imull	%r8d, %edx
	movl	-128(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rdi
	movq	40(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edx
	movl	-124(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rdi
	movq	64(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	-4(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-152(%rbp), %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r8d
	imull	%r8d, %edx
	movl	-116(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rdi
	movq	24(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edx
	movl	-112(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rdi
	movq	48(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	imull	$255, -48(%rbp), %ecx
	shrl	$1, %ecx
	addl	%ecx, %eax
	imull	$255, -48(%rbp), %ecx
	xorl	%edx, %edx
	divl	%ecx
	movb	%al, %r10b
	movl	-152(%rbp), %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	movb	%r10b, (%rdi,%rsi)
# BB#9:                                 # %for.inc.306
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB10_7
.LBB10_10:                              # %for.end.308
	movl	-148(%rbp), %eax
	movl	-48(%rbp), %ecx
	shrl	$1, %ecx
	addl	%ecx, %eax
	xorl	%edx, %edx
	divl	-48(%rbp)
	movb	%al, %sil
	movq	-40(%rbp), %rdi
	movb	%sil, 1(%rdi)
	jmp	.LBB10_12
.LBB10_11:                              # %sw.default
	movabsq	$.L.str.9, %rdi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	g_warning
.LBB10_12:                              # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	box_filter_premult, .Lfunc_end10-box_filter_premult
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_render,@object # @__func__.gimp_display_shell_render
.L__func__.gimp_display_shell_render:
	.asciz	"gimp_display_shell_render"
	.size	.L__func__.gimp_display_shell_render, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cr != NULL"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"w > 0 && h > 0"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s: unsupported projection type (%d)"
	.size	.L.str.4, 37

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimpdisplayshell-render.c"
	.size	.L.str.5, 26

	.type	.L__func__.render_image_tile_fault,@object # @__func__.render_image_tile_fault
.L__func__.render_image_tile_fault:
	.asciz	"render_image_tile_fault"
	.size	.L__func__.render_image_tile_fault, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tile[4] != NULL"
	.size	.L.str.6, 16

	.type	tile_buf,@object        # @tile_buf
	.local	tile_buf
	.comm	tile_buf,1024,16
	.type	.L__func__.render_image_tile_fault_nearest,@object # @__func__.render_image_tile_fault_nearest
.L__func__.render_image_tile_fault_nearest:
	.asciz	"render_image_tile_fault_nearest"
	.size	.L__func__.render_image_tile_fault_nearest, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tile != NULL"
	.size	.L.str.7, 13

	.type	.L__func__.render_image_tile_fault_one_row,@object # @__func__.render_image_tile_fault_one_row
.L__func__.render_image_tile_fault_one_row:
	.asciz	"render_image_tile_fault_one_row"
	.size	.L__func__.render_image_tile_fault_one_row, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tile[0] != NULL"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"bpp=%i not implemented as box filter"
	.size	.L.str.9, 37


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
