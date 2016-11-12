	.text
	.file	"gimptext-compat.bc"
	.globl	text_render
	.align	16, 0x90
	.type	text_render,@function
text_render:                            # @text_render
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$336, %rsp              # imm = 0x150
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movq	16(%rbp), %r11
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%r11, -88(%rbp)
	movl	%r10d, -92(%rbp)
	movl	%eax, -96(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -188(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -188(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.text_render, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_63
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -56(%rbp)
	je	.LBB0_22
# BB#14:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -212(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -212(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB0_23
.LBB0_22:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.text_render, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_63
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %do.body.40
	cmpq	$0, -56(%rbp)
	je	.LBB0_28
# BB#27:                                # %lor.lhs.false.42
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_29
.LBB0_28:                               # %if.then.47
	jmp	.LBB0_30
.LBB0_29:                               # %if.else.48
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.text_render, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_63
.LBB0_30:                               # %if.end.49
	jmp	.LBB0_31
.LBB0_31:                               # %do.end.50
	jmp	.LBB0_32
.LBB0_32:                               # %do.body.51
	movq	-64(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB0_34
# BB#33:                                # %if.then.60
	movl	$0, -236(%rbp)
	jmp	.LBB0_39
.LBB0_34:                               # %if.else.61
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_37
# BB#35:                                # %land.lhs.true.64
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB0_37
# BB#36:                                # %if.then.68
	movl	$1, -236(%rbp)
	jmp	.LBB0_38
.LBB0_37:                               # %if.else.69
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB0_38:                               # %if.end.71
	jmp	.LBB0_39
.LBB0_39:                               # %if.end.72
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB0_41
# BB#40:                                # %if.then.75
	jmp	.LBB0_42
.LBB0_41:                               # %if.else.76
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.text_render, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_63
.LBB0_42:                               # %if.end.77
	jmp	.LBB0_43
.LBB0_43:                               # %do.end.78
	jmp	.LBB0_44
.LBB0_44:                               # %do.body.79
	cmpq	$0, -80(%rbp)
	je	.LBB0_46
# BB#45:                                # %if.then.81
	jmp	.LBB0_47
.LBB0_46:                               # %if.else.82
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.text_render, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_63
.LBB0_47:                               # %if.end.83
	jmp	.LBB0_48
.LBB0_48:                               # %do.end.84
	jmp	.LBB0_49
.LBB0_49:                               # %do.body.85
	cmpq	$0, -88(%rbp)
	je	.LBB0_51
# BB#50:                                # %if.then.87
	jmp	.LBB0_52
.LBB0_51:                               # %if.else.88
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.text_render, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB0_63
.LBB0_52:                               # %if.end.89
	jmp	.LBB0_53
.LBB0_53:                               # %do.end.90
	cmpl	$0, -92(%rbp)
	jge	.LBB0_55
# BB#54:                                # %if.then.92
	movl	$0, -92(%rbp)
.LBB0_55:                               # %if.end.93
	movq	-80(%rbp), %rdi
	callq	pango_font_description_from_string
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	pango_font_description_get_size
	movl	$32, %esi
	addl	$512, %eax              # imm = 0x200
	sarl	$10, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -168(%rbp)
	movq	-104(%rbp), %rdi
	callq	pango_font_description_unset_fields
	movq	-104(%rbp), %rdi
	callq	pango_font_description_to_string
	movq	%rax, -160(%rbp)
	movq	-104(%rbp), %rdi
	callq	pango_font_description_free
	leaq	-152(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gimp_context_get_foreground
	callq	gimp_text_get_type
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %r8
	leaq	-152(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-88(%rbp), %r14
	movq	-160(%rbp), %r15
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-96(%rbp), %r11d
	movl	-92(%rbp), %r12d
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	%r8, -272(%rbp)         # 8-byte Spill
	movq	%r15, %r8
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	-264(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	%r12d, 24(%rsp)
	movq	-272(%rbp), %r15        # 8-byte Reload
	movq	%r15, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$1, %al
	movq	%rbx, -280(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -112(%rbp)
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	gimp_text_layer_new
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	cmpq	$0, -120(%rbp)
	jne	.LBB0_57
# BB#56:                                # %if.then.101
	movq	$0, -40(%rbp)
	jmp	.LBB0_63
.LBB0_57:                               # %if.end.102
	movabsq	$.L.str.13, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$31, %esi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-120(%rbp), %rdx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_offset
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB0_59
# BB#58:                                # %if.then.110
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_mask
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gimp_channel_clear
.LBB0_59:                               # %if.end.112
	cmpq	$0, -56(%rbp)
	jne	.LBB0_61
# BB#60:                                # %if.then.115
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-48(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gimp_image_add_layer
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB0_62
.LBB0_61:                               # %if.else.117
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	floating_sel_attach
.LBB0_62:                               # %if.end.118
	movq	-48(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-120(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB0_63:                               # %return
	movq	-40(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	text_render, .Lfunc_end0-text_render
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4634766966517661696     # double 72
	.text
	.globl	text_get_extents
	.align	16, 0x90
	.type	text_get_extents,@function
text_get_extents:                       # @text_get_extents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.text_get_extents, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_24
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.3
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.text_get_extents, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_24
.LBB1_9:                                # %if.end.5
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.6
	movl	$1, %edi
	callq	pango_cairo_font_map_new_for_font_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB1_12
# BB#11:                                # %if.then.7
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	g_error
.LBB1_12:                               # %if.end.8
	movq	-88(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	pango_cairo_font_map_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	pango_cairo_font_map_set_resolution
	movq	-88(%rbp), %rdi
	callq	pango_font_map_create_context
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-72(%rbp), %rdi
	callq	pango_layout_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rdi
	callq	pango_font_description_from_string
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	pango_layout_set_font_description
	movq	-64(%rbp), %rdi
	callq	pango_font_description_free
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	pango_layout_set_text
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-104(%rbp), %rdx
	movq	-80(%rbp), %rdi
	callq	pango_layout_get_pixel_extents
	cmpq	$0, -32(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.15
	movl	-96(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB1_14:                               # %if.end.17
	cmpq	$0, -40(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.19
	movl	-92(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB1_16:                               # %if.end.21
	cmpq	$0, -48(%rbp)
	jne	.LBB1_18
# BB#17:                                # %lor.lhs.false
	cmpq	$0, -56(%rbp)
	je	.LBB1_23
.LBB1_18:                               # %if.then.24
	movq	-80(%rbp), %rdi
	callq	pango_layout_get_iter
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	pango_layout_iter_get_line_readonly
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rdi
	callq	pango_layout_iter_free
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-104(%rbp), %rdx
	movq	-120(%rbp), %rdi
	callq	pango_layout_line_get_pixel_extents
	cmpq	$0, -48(%rbp)
	je	.LBB1_20
# BB#19:                                # %if.then.28
	xorl	%eax, %eax
	subl	-100(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB1_20:                               # %if.end.29
	cmpq	$0, -56(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.31
	xorl	%eax, %eax
	movl	-100(%rbp), %ecx
	addl	-92(%rbp), %ecx
	subl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movl	%eax, (%rdx)
.LBB1_22:                               # %if.end.35
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.36
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, -4(%rbp)
.LBB1_24:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	text_get_extents, .Lfunc_end1-text_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	je	.LBB2_3
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
.LBB2_3:                                # %entry
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
	movabsq	$.L.str, %rdi
	movl	$4, %esi
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r9, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB2_1
.Lfunc_end2:
	.size	g_error, .Lfunc_end2-g_error
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Text"
	.size	.L.str, 10

	.type	.L__func__.text_render,@object # @__func__.text_render
.L__func__.text_render:
	.asciz	"text_render"
	.size	.L__func__.text_render, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"drawable == NULL || GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"drawable == NULL || gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.3, 65

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"fontname != NULL"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"text != NULL"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"text"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"font"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"font-size"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"antialias"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"border"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"color"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Add Text Layer"
	.size	.L.str.13, 15

	.type	.L__func__.text_get_extents,@object # @__func__.text_get_extents
.L__func__.text_get_extents:
	.asciz	"text_get_extents"
	.size	.L__func__.text_get_extents, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"You are using a Pango that has been built against a cairo that lacks the Freetype font backend"
	.size	.L.str.14, 95


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
