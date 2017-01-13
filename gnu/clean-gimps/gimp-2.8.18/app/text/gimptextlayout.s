	.text
	.file	"gimptextlayout.bc"
	.globl	gimp_text_layout_get_type
	.align	16, 0x90
	.type	gimp_text_layout_get_type,@function
gimp_text_layout_get_type:              # @gimp_text_layout_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_text_layout_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_text_layout_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$.L.str, %rdi
	callq	g_intern_static_string
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$136, %edx
	movabsq	$gimp_text_layout_class_intern_init, %rsi
	movl	$72, %r8d
	movabsq	$gimp_text_layout_init, %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_text_layout_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_text_layout_get_type.g_define_type_id__volatile, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_layout_get_type, .Lfunc_end0-gimp_text_layout_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layout_class_intern_init,@function
gimp_text_layout_class_intern_init:     # @gimp_text_layout_class_intern_init
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
	movq	%rax, gimp_text_layout_parent_class
	cmpl	$0, GimpTextLayout_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTextLayout_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_text_layout_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_layout_class_intern_init, .Lfunc_end1-gimp_text_layout_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layout_init,@function
gimp_text_layout_init:                  # @gimp_text_layout_init
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
	movq	$0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 48(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_layout_init, .Lfunc_end2-gimp_text_layout_init
	.cfi_endproc

	.globl	gimp_text_layout_new
	.align	16, 0x90
	.type	gimp_text_layout_new,@function
gimp_text_layout_new:                   # @gimp_text_layout_new
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$0, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_32
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	pango_font_description_from_string
	movq	%rax, -64(%rbp)
# BB#13:                                # %do.body.12
	cmpq	$0, -64(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.14
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_32
.LBB3_16:                               # %if.end.16
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.17
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	56(%rax), %edi
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_units_to_points
	callq	pango_units_from_double
	movl	$1, %edi
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rcx
	cmpl	-72(%rbp), %edi
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jle	.LBB3_19
# BB#18:                                # %cond.true
	movl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB3_20
.LBB3_19:                               # %cond.false
	movl	-72(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB3_20:                               # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	pango_font_description_set_size
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_get_pango_context
	movq	%rax, -56(%rbp)
	callq	gimp_text_layout_get_type
	xorl	%esi, %esi
	movl	%esi, %edi
	movb	%sil, %cl
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movb	%cl, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_object_ref
	movq	-48(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-56(%rbp), %rdi
	callq	pango_layout_new
	movq	-48(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	movl	$2, %esi
	callq	pango_layout_set_wrap
	movq	-56(%rbp), %rdi
	callq	g_object_unref
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	pango_layout_set_font_description
	movq	-64(%rbp), %rdi
	callq	pango_font_description_free
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_text_layout_set_markup
	movq	-16(%rbp), %rax
	movl	140(%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rsi
	subq	$3, %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	ja	.LBB3_25
# BB#33:                                # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_21:                               # %sw.bb
	movl	$0, -68(%rbp)
	jmp	.LBB3_25
.LBB3_22:                               # %sw.bb.32
	movl	$2, -68(%rbp)
	jmp	.LBB3_25
.LBB3_23:                               # %sw.bb.33
	movl	$1, -68(%rbp)
	jmp	.LBB3_25
.LBB3_24:                               # %sw.bb.34
	movl	$1, %esi
	movl	$0, -68(%rbp)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	callq	pango_layout_set_justify
.LBB3_25:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-68(%rbp), %esi
	callq	pango_layout_set_alignment
	movq	-16(%rbp), %rax
	movl	168(%rax), %esi
	testl	%esi, %esi
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB3_26
	jmp	.LBB3_34
.LBB3_34:                               # %sw.epilog
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB3_27
	jmp	.LBB3_28
.LBB3_26:                               # %sw.bb.37
	jmp	.LBB3_28
.LBB3_27:                               # %sw.bb.38
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	176(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	192(%rax), %ecx
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	callq	gimp_units_to_pixels
	callq	pango_units_from_double
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	pango_layout_set_width
.LBB3_28:                               # %sw.epilog.42
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	144(%rax), %xmm0        # xmm0 = mem[0],zero
	movl	56(%rax), %ecx
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	callq	gimp_units_to_pixels
	callq	pango_units_from_double
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	pango_layout_set_indent
	movq	-48(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	-16(%rbp), %rdx
	movsd	152(%rdx), %xmm0        # xmm0 = mem[0],zero
	movl	56(%rdx), %eax
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_units_to_pixels
	callq	pango_units_from_double
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	pango_layout_set_spacing
	movq	-48(%rbp), %rdi
	callq	gimp_text_layout_position
	movq	-16(%rbp), %rdx
	movl	168(%rdx), %eax
	testl	%eax, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB3_29
	jmp	.LBB3_35
.LBB3_35:                               # %sw.epilog.42
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB3_30
	jmp	.LBB3_31
.LBB3_29:                               # %sw.bb.52
	jmp	.LBB3_31
.LBB3_30:                               # %sw.bb.53
	movq	-16(%rbp), %rax
	movsd	176(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	192(%rax), %edi
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_units_to_pixels
	callq	ceil
	cvttsd2si	%xmm0, %edi
	movq	-48(%rbp), %rax
	movl	%edi, 64(%rax)
	movq	-16(%rbp), %rax
	movsd	184(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	192(%rax), %edi
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_units_to_pixels
	callq	ceil
	cvttsd2si	%xmm0, %edi
	movq	-48(%rbp), %rax
	movl	%edi, 68(%rax)
.LBB3_31:                               # %sw.epilog.63
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_32:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_layout_new, .Lfunc_end3-gimp_text_layout_new
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_21
	.quad	.LBB3_22
	.quad	.LBB3_23
	.quad	.LBB3_24

	.text
	.align	16, 0x90
	.type	gimp_text_get_pango_context,@function
gimp_text_get_pango_context:            # @gimp_text_get_pango_context
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
	subq	$80, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%eax, %edi
	callq	pango_cairo_font_map_new_for_font_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	g_error
.LBB4_2:                                # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	pango_cairo_font_map_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	pango_cairo_font_map_set_resolution
	movq	-40(%rbp), %rdi
	callq	pango_font_map_create_context
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_text_get_font_options
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	pango_cairo_context_set_font_options
	movq	-48(%rbp), %rdi
	callq	cairo_font_options_destroy
	movq	-8(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB4_4
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	pango_language_from_string
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pango_context_set_language
.LBB4_4:                                # %if.end.9
	movq	-8(%rbp), %rax
	movl	96(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	je	.LBB4_5
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.9
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB4_6
	jmp	.LBB4_7
.LBB4_5:                                # %sw.bb
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	pango_context_set_base_dir
	jmp	.LBB4_7
.LBB4_6:                                # %sw.bb.10
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	pango_context_set_base_dir
.LBB4_7:                                # %sw.epilog
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_get_pango_context, .Lfunc_end4-gimp_text_get_pango_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layout_set_markup,@function
gimp_text_layout_set_markup:            # @gimp_text_layout_set_markup
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 40(%rsi)
	je	.LBB5_4
# BB#1:                                 # %if.then
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_text_layout_split_markup
	cmpl	$0, %eax
	jne	.LBB5_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.7, %rdi
	callq	g_strdup
	movabsq	$.L.str.8, %rdi
	movq	%rax, -32(%rbp)
	callq	g_strdup
	movabsq	$.L.str.9, %rdi
	movq	%rax, -40(%rbp)
	callq	g_strdup
	movq	%rax, -48(%rbp)
.LBB5_3:                                # %if.end
	jmp	.LBB5_8
.LBB5_4:                                # %if.else
	movabsq	$.L.str.7, %rdi
	callq	g_strdup
	movabsq	$.L.str.9, %rdi
	movq	%rax, -32(%rbp)
	callq	g_strdup
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB5_6
# BB#5:                                 # %if.then.13
	movq	$-1, %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_markup_escape_text
	movq	%rax, -40(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.16
	movabsq	$.L.str.8, %rdi
	callq	g_strdup
	movq	%rax, -40(%rbp)
.LBB5_7:                                # %if.end.18
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.19
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_text_layout_apply_tags
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	pango_parse_markup
	cmpl	$0, %eax
	jne	.LBB5_15
# BB#9:                                 # %if.then.23
	cmpq	$0, -16(%rbp)
	je	.LBB5_14
# BB#10:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_14
# BB#11:                                # %land.lhs.true.26
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	callq	g_markup_error_quark
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB5_14
# BB#12:                                # %land.lhs.true.29
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$5, 4(%rax)
	jne	.LBB5_14
# BB#13:                                # %if.then.31
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_error_free
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
.LBB5_14:                               # %if.end.34
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.35
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	pango_layout_set_markup
.LBB5_16:                               # %if.end.37
	movq	-64(%rbp), %rdi
	callq	g_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_layout_set_markup, .Lfunc_end5-gimp_text_layout_set_markup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layout_position,@function
gimp_text_layout_position:              # @gimp_text_layout_position
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
	subq	$96, %rsp
	leaq	-24(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 60(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 68(%rdi)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	pango_layout_get_pixel_extents
	cvtsi2sdl	-16(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	mulsd	32(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	divsd	40(%rdx), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	mulsd	32(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	divsd	40(%rdx), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	cmpl	$1, -16(%rbp)
	jl	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -12(%rbp)
	jge	.LBB6_3
.LBB6_2:                                # %if.then
	jmp	.LBB6_27
.LBB6_3:                                # %if.end
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB6_5
# BB#4:                                 # %cond.true
	movl	-24(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false
	movl	-40(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB6_6:                                # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB6_8
# BB#7:                                 # %cond.true.32
	movl	-20(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB6_9
.LBB6_8:                                # %cond.false.34
	movl	-36(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB6_9:                                # %cond.end.36
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_11
# BB#10:                                # %cond.true.45
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false.49
	movl	-40(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB6_12:                               # %cond.end.53
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_14
# BB#13:                                # %cond.true.63
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB6_15
.LBB6_14:                               # %cond.false.67
	movl	-36(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB6_15:                               # %cond.end.71
	movl	-88(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -56(%rbp)
	movl	%ecx, %eax
	subl	-44(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 56(%rdx)
	subl	-48(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 60(%rdx)
	movl	-52(%rbp), %eax
	subl	-44(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 64(%rdx)
	movl	-56(%rbp), %eax
	subl	-48(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 68(%rdx)
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdi
	callq	pango_layout_get_width
	cmpl	$0, %eax
	jle	.LBB6_25
# BB#16:                                # %if.then.88
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	pango_layout_get_alignment
	leaq	-68(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movl	96(%rdi), %eax
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	pango_layout_get_pixel_size
	cmpl	$0, -64(%rbp)
	jne	.LBB6_18
# BB#17:                                # %land.lhs.true
	cmpl	$2, -60(%rbp)
	je	.LBB6_20
.LBB6_18:                               # %lor.lhs.false.98
	cmpl	$1, -64(%rbp)
	jne	.LBB6_21
# BB#19:                                # %land.lhs.true.101
	cmpl	$0, -60(%rbp)
	jne	.LBB6_21
.LBB6_20:                               # %if.then.104
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	pango_layout_get_width
	addl	$512, %eax              # imm = 0x200
	sarl	$10, %eax
	subl	-68(%rbp), %eax
	movq	-8(%rbp), %rdi
	addl	56(%rdi), %eax
	movl	%eax, 56(%rdi)
	jmp	.LBB6_24
.LBB6_21:                               # %if.else
	cmpl	$1, -60(%rbp)
	jne	.LBB6_23
# BB#22:                                # %if.then.114
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	pango_layout_get_width
	movl	$2, %ecx
	addl	$512, %eax              # imm = 0x200
	sarl	$10, %eax
	subl	-68(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rdi
	addl	56(%rdi), %eax
	movl	%eax, 56(%rdi)
.LBB6_23:                               # %if.end.124
	jmp	.LBB6_24
.LBB6_24:                               # %if.end.125
	jmp	.LBB6_25
.LBB6_25:                               # %if.end.126
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movsd	248(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_27
# BB#26:                                # %if.then.130
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cvttsd2si	248(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movl	-72(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	56(%rax), %ecx
	movl	%ecx, 56(%rax)
	movl	-72(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	60(%rax), %ecx
	movl	%ecx, 60(%rax)
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	movq	-8(%rbp), %rax
	addl	64(%rax), %ecx
	movl	%ecx, 64(%rax)
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	movq	-8(%rbp), %rax
	addl	68(%rax), %ecx
	movl	%ecx, 68(%rax)
.LBB6_27:                               # %if.end.149
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_layout_position, .Lfunc_end6-gimp_text_layout_position
	.cfi_endproc

	.globl	gimp_text_layout_get_size
	.align	16, 0x90
	.type	gimp_text_layout_get_size,@function
gimp_text_layout_get_size:              # @gimp_text_layout_get_size
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_get_size, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_19
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB7_14:                               # %if.end.14
	cmpq	$0, -32(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.16
	movq	-16(%rbp), %rax
	movl	68(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB7_16:                               # %if.end.19
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpl	$0, 64(%rdx)
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jle	.LBB7_18
# BB#17:                                # %land.rhs
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	setg	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB7_18:                               # %land.end
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB7_19:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_layout_get_size, .Lfunc_end7-gimp_text_layout_get_size
	.cfi_endproc

	.globl	gimp_text_layout_get_offsets
	.align	16, 0x90
	.type	gimp_text_layout_get_offsets,@function
gimp_text_layout_get_offsets:           # @gimp_text_layout_get_offsets
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_get_offsets, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_16
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB8_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB8_14:                               # %if.end.14
	cmpq	$0, -24(%rbp)
	je	.LBB8_16
# BB#15:                                # %if.then.16
	movq	-8(%rbp), %rax
	movl	60(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB8_16:                               # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_layout_get_offsets, .Lfunc_end8-gimp_text_layout_get_offsets
	.cfi_endproc

	.globl	gimp_text_layout_get_resolution
	.align	16, 0x90
	.type	gimp_text_layout_get_resolution,@function
gimp_text_layout_get_resolution:        # @gimp_text_layout_get_resolution
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_get_resolution, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_16
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB9_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB9_14:                               # %if.end.14
	cmpq	$0, -24(%rbp)
	je	.LBB9_16
# BB#15:                                # %if.then.16
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB9_16:                               # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_text_layout_get_resolution, .Lfunc_end9-gimp_text_layout_get_resolution
	.cfi_endproc

	.globl	gimp_text_layout_get_text
	.align	16, 0x90
	.type	gimp_text_layout_get_text,@function
gimp_text_layout_get_text:              # @gimp_text_layout_get_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_get_text, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_text_layout_get_text, .Lfunc_end10-gimp_text_layout_get_text
	.cfi_endproc

	.globl	gimp_text_layout_get_pango_layout
	.align	16, 0x90
	.type	gimp_text_layout_get_pango_layout,@function
gimp_text_layout_get_pango_layout:      # @gimp_text_layout_get_pango_layout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_get_pango_layout, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_text_layout_get_pango_layout, .Lfunc_end11-gimp_text_layout_get_pango_layout
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_text_layout_get_transform
	.align	16, 0x90
	.type	gimp_text_layout_get_transform,@function
gimp_text_layout_get_transform:         # @gimp_text_layout_get_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_get_transform, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_18
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_get_transform, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_18
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	movq	-8(%rbp), %rdi
	callq	gimp_text_layout_get_text
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_text_layout_get_resolution
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	divsd	-40(%rbp), %xmm2
	mulsd	-32(%rbp), %xmm2
	movsd	%xmm2, -48(%rbp)
	movq	-24(%rbp), %rax
	movsd	200(%rax), %xmm2        # xmm2 = mem[0],zero
	mulsd	-48(%rbp), %xmm2
	movq	-16(%rbp), %rax
	movsd	%xmm2, (%rax)
	movq	-24(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	208(%rax), %xmm2
	movq	-16(%rbp), %rax
	movsd	%xmm2, 16(%rax)
	movq	-24(%rbp), %rax
	movsd	216(%rax), %xmm2        # xmm2 = mem[0],zero
	mulsd	-48(%rbp), %xmm2
	movq	-16(%rbp), %rax
	movsd	%xmm2, 8(%rax)
	movq	-24(%rbp), %rax
	mulsd	224(%rax), %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 24(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 40(%rax)
.LBB12_18:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_text_layout_get_transform, .Lfunc_end12-gimp_text_layout_get_transform
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_text_layout_transform_rect
	.align	16, 0x90
	.type	gimp_text_layout_transform_rect,@function
gimp_text_layout_transform_rect:        # @gimp_text_layout_transform_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_transform_rect, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_18
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_transform_rect, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_18
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_text_layout_get_transform
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	cairo_matrix_transform_point
	leaq	-64(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	cairo_matrix_transform_distance
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-72(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movaps	%xmm0, %xmm1
	addsd	-80(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movaps	%xmm0, %xmm1
	addsd	-88(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	addsd	-96(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 12(%rax)
.LBB13_18:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_text_layout_transform_rect, .Lfunc_end13-gimp_text_layout_transform_rect
	.cfi_endproc

	.globl	gimp_text_layout_transform_point
	.align	16, 0x90
	.type	gimp_text_layout_transform_point,@function
gimp_text_layout_transform_point:       # @gimp_text_layout_transform_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_transform_point, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_20
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB14_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB14_14:                              # %if.end.13
	cmpq	$0, -24(%rbp)
	je	.LBB14_16
# BB#15:                                # %if.then.15
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB14_16:                              # %if.end.16
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_text_layout_get_transform
	leaq	-72(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	cairo_matrix_transform_point
	cmpq	$0, -16(%rbp)
	je	.LBB14_18
# BB#17:                                # %if.then.18
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB14_18:                              # %if.end.19
	cmpq	$0, -24(%rbp)
	je	.LBB14_20
# BB#19:                                # %if.then.21
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB14_20:                              # %if.end.22
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_text_layout_transform_point, .Lfunc_end14-gimp_text_layout_transform_point
	.cfi_endproc

	.globl	gimp_text_layout_transform_distance
	.align	16, 0x90
	.type	gimp_text_layout_transform_distance,@function
gimp_text_layout_transform_distance:    # @gimp_text_layout_transform_distance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_transform_distance, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_20
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB15_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB15_14:                              # %if.end.13
	cmpq	$0, -24(%rbp)
	je	.LBB15_16
# BB#15:                                # %if.then.15
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB15_16:                              # %if.end.16
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_text_layout_get_transform
	leaq	-72(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	cairo_matrix_transform_distance
	cmpq	$0, -16(%rbp)
	je	.LBB15_18
# BB#17:                                # %if.then.18
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB15_18:                              # %if.end.19
	cmpq	$0, -24(%rbp)
	je	.LBB15_20
# BB#19:                                # %if.then.21
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB15_20:                              # %if.end.22
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_text_layout_transform_distance, .Lfunc_end15-gimp_text_layout_transform_distance
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_text_layout_untransform_rect
	.align	16, 0x90
	.type	gimp_text_layout_untransform_rect,@function
gimp_text_layout_untransform_rect:      # @gimp_text_layout_untransform_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_untransform_rect, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_19
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB16_15
# BB#14:                                # %if.then.13
	jmp	.LBB16_16
.LBB16_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_untransform_rect, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_19
.LBB16_16:                              # %if.end.15
	jmp	.LBB16_17
.LBB16_17:                              # %do.end.16
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_text_layout_get_transform
	leaq	-64(%rbp), %rdi
	callq	cairo_matrix_invert
	cmpl	$0, %eax
	jne	.LBB16_19
# BB#18:                                # %if.then.27
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	cairo_matrix_transform_point
	leaq	-64(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	cairo_matrix_transform_distance
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-72(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movaps	%xmm0, %xmm1
	addsd	-80(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movaps	%xmm0, %xmm1
	addsd	-88(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 8(%rdx)
	addsd	-96(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 12(%rdx)
.LBB16_19:                              # %if.end.39
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_text_layout_untransform_rect, .Lfunc_end16-gimp_text_layout_untransform_rect
	.cfi_endproc

	.globl	gimp_text_layout_untransform_point
	.align	16, 0x90
	.type	gimp_text_layout_untransform_point,@function
gimp_text_layout_untransform_point:     # @gimp_text_layout_untransform_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_untransform_point, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_22
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB17_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB17_14:                              # %if.end.13
	cmpq	$0, -24(%rbp)
	je	.LBB17_16
# BB#15:                                # %if.then.15
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB17_16:                              # %if.end.16
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_text_layout_get_transform
	leaq	-72(%rbp), %rdi
	callq	cairo_matrix_invert
	cmpl	$0, %eax
	jne	.LBB17_22
# BB#17:                                # %if.then.19
	leaq	-72(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	cairo_matrix_transform_point
	cmpq	$0, -16(%rbp)
	je	.LBB17_19
# BB#18:                                # %if.then.21
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB17_19:                              # %if.end.22
	cmpq	$0, -24(%rbp)
	je	.LBB17_21
# BB#20:                                # %if.then.24
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB17_21:                              # %if.end.25
	jmp	.LBB17_22
.LBB17_22:                              # %if.end.26
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_text_layout_untransform_point, .Lfunc_end17-gimp_text_layout_untransform_point
	.cfi_endproc

	.globl	gimp_text_layout_untransform_distance
	.align	16, 0x90
	.type	gimp_text_layout_untransform_distance,@function
gimp_text_layout_untransform_distance:  # @gimp_text_layout_untransform_distance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layout_untransform_distance, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_22
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB18_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB18_14:                              # %if.end.13
	cmpq	$0, -24(%rbp)
	je	.LBB18_16
# BB#15:                                # %if.then.15
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB18_16:                              # %if.end.16
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_text_layout_get_transform
	leaq	-72(%rbp), %rdi
	callq	cairo_matrix_invert
	cmpl	$0, %eax
	jne	.LBB18_22
# BB#17:                                # %if.then.19
	leaq	-72(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	cairo_matrix_transform_distance
	cmpq	$0, -16(%rbp)
	je	.LBB18_19
# BB#18:                                # %if.then.21
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB18_19:                              # %if.end.22
	cmpq	$0, -24(%rbp)
	je	.LBB18_21
# BB#20:                                # %if.then.24
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB18_21:                              # %if.end.25
	jmp	.LBB18_22
.LBB18_22:                              # %if.end.26
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_text_layout_untransform_distance, .Lfunc_end18-gimp_text_layout_untransform_distance
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layout_class_init,@function
gimp_text_layout_class_init:            # @gimp_text_layout_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_text_layout_finalize, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 48(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_text_layout_class_init, .Lfunc_end19-gimp_text_layout_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layout_finalize,@function
gimp_text_layout_finalize:              # @gimp_text_layout_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_text_layout_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB20_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB20_4:                               # %if.end.9
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_layout_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_text_layout_finalize, .Lfunc_end20-gimp_text_layout_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layout_split_markup,@function
gimp_text_layout_split_markup:          # @gimp_text_layout_split_markup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.7, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	strstr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB21_8
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	g_strndup
	movabsq	$.L.str.9, %rsi
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	g_strrstr
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB21_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB21_8
.LBB21_4:                               # %if.end.5
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB21_6
# BB#5:                                 # %if.then.7
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	%rdx, %rcx
	subq	$8, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_strndup
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else
	movabsq	$.L.str.8, %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB21_7:                               # %if.end.14
	movl	$1, -4(%rbp)
.LBB21_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_text_layout_split_markup, .Lfunc_end21-gimp_text_layout_split_markup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI22_2:
	.quad	4652218415073722368     # double 1024
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI22_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_text_layout_apply_tags,@function
gimp_text_layout_apply_tags:            # @gimp_text_layout_apply_tags
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-33(%rbp), %rax
	leaq	-34(%rbp), %rdx
	leaq	-35(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	addq	$104, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gimp_rgb_get_uchar
	movabsq	$.L.str.11, %rdi
	movzbl	-33(%rbp), %esi
	movzbl	-34(%rbp), %edx
	movzbl	-35(%rbp), %ecx
	movq	-16(%rbp), %r8
	movb	$0, %al
	callq	g_strdup_printf
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	160(%rax), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI22_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.12, %rdi
	movsd	.LCPI22_2, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	160(%rax), %xmm0
	cvttsd2si	%xmm0, %esi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB22_2:                               # %if.end
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_text_layout_apply_tags, .Lfunc_end22-gimp_text_layout_apply_tags
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
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
	je	.LBB23_3
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
.LBB23_3:                               # %entry
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
	movabsq	$.L.str.1, %rdi
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
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB23_1
.Lfunc_end23:
	.size	g_error, .Lfunc_end23-g_error
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_get_font_options,@function
gimp_text_get_font_options:             # @gimp_text_get_font_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	cairo_font_options_create
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	72(%rdi), %ecx
	testl	%ecx, %ecx
	sete	%dl
	movzbl	%dl, %esi
	movq	%rax, %rdi
	callq	cairo_font_options_set_antialias
	movq	-8(%rbp), %rax
	movl	76(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	subq	$3, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	ja	.LBB24_5
# BB#6:                                 # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI24_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB24_1:                               # %sw.bb
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_font_options_set_hint_style
	jmp	.LBB24_5
.LBB24_2:                               # %sw.bb.1
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_font_options_set_hint_style
	jmp	.LBB24_5
.LBB24_3:                               # %sw.bb.2
	movl	$3, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_font_options_set_hint_style
	jmp	.LBB24_5
.LBB24_4:                               # %sw.bb.3
	movl	$4, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_font_options_set_hint_style
.LBB24_5:                               # %sw.epilog
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_text_get_font_options, .Lfunc_end24-gimp_text_get_font_options
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI24_0:
	.quad	.LBB24_1
	.quad	.LBB24_2
	.quad	.LBB24_3
	.quad	.LBB24_4

	.type	gimp_text_layout_get_type.g_define_type_id__volatile,@object # @gimp_text_layout_get_type.g_define_type_id__volatile
	.local	gimp_text_layout_get_type.g_define_type_id__volatile
	.comm	gimp_text_layout_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTextLayout"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Text"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_text_layout_new,@object # @__func__.gimp_text_layout_new
.L__func__.gimp_text_layout_new:
	.asciz	"gimp_text_layout_new"
	.size	.L__func__.gimp_text_layout_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TEXT (text)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"font_desc != NULL"
	.size	.L.str.3, 18

	.type	.L__func__.gimp_text_layout_get_size,@object # @__func__.gimp_text_layout_get_size
.L__func__.gimp_text_layout_get_size:
	.asciz	"gimp_text_layout_get_size"
	.size	.L__func__.gimp_text_layout_get_size, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_TEXT_LAYOUT (layout)"
	.size	.L.str.4, 29

	.type	.L__func__.gimp_text_layout_get_offsets,@object # @__func__.gimp_text_layout_get_offsets
.L__func__.gimp_text_layout_get_offsets:
	.asciz	"gimp_text_layout_get_offsets"
	.size	.L__func__.gimp_text_layout_get_offsets, 29

	.type	.L__func__.gimp_text_layout_get_resolution,@object # @__func__.gimp_text_layout_get_resolution
.L__func__.gimp_text_layout_get_resolution:
	.asciz	"gimp_text_layout_get_resolution"
	.size	.L__func__.gimp_text_layout_get_resolution, 32

	.type	.L__func__.gimp_text_layout_get_text,@object # @__func__.gimp_text_layout_get_text
.L__func__.gimp_text_layout_get_text:
	.asciz	"gimp_text_layout_get_text"
	.size	.L__func__.gimp_text_layout_get_text, 26

	.type	.L__func__.gimp_text_layout_get_pango_layout,@object # @__func__.gimp_text_layout_get_pango_layout
.L__func__.gimp_text_layout_get_pango_layout:
	.asciz	"gimp_text_layout_get_pango_layout"
	.size	.L__func__.gimp_text_layout_get_pango_layout, 34

	.type	.L__func__.gimp_text_layout_get_transform,@object # @__func__.gimp_text_layout_get_transform
.L__func__.gimp_text_layout_get_transform:
	.asciz	"gimp_text_layout_get_transform"
	.size	.L__func__.gimp_text_layout_get_transform, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"matrix != NULL"
	.size	.L.str.5, 15

	.type	.L__func__.gimp_text_layout_transform_rect,@object # @__func__.gimp_text_layout_transform_rect
.L__func__.gimp_text_layout_transform_rect:
	.asciz	"gimp_text_layout_transform_rect"
	.size	.L__func__.gimp_text_layout_transform_rect, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"rect != NULL"
	.size	.L.str.6, 13

	.type	.L__func__.gimp_text_layout_transform_point,@object # @__func__.gimp_text_layout_transform_point
.L__func__.gimp_text_layout_transform_point:
	.asciz	"gimp_text_layout_transform_point"
	.size	.L__func__.gimp_text_layout_transform_point, 33

	.type	.L__func__.gimp_text_layout_transform_distance,@object # @__func__.gimp_text_layout_transform_distance
.L__func__.gimp_text_layout_transform_distance:
	.asciz	"gimp_text_layout_transform_distance"
	.size	.L__func__.gimp_text_layout_transform_distance, 36

	.type	.L__func__.gimp_text_layout_untransform_rect,@object # @__func__.gimp_text_layout_untransform_rect
.L__func__.gimp_text_layout_untransform_rect:
	.asciz	"gimp_text_layout_untransform_rect"
	.size	.L__func__.gimp_text_layout_untransform_rect, 34

	.type	.L__func__.gimp_text_layout_untransform_point,@object # @__func__.gimp_text_layout_untransform_point
.L__func__.gimp_text_layout_untransform_point:
	.asciz	"gimp_text_layout_untransform_point"
	.size	.L__func__.gimp_text_layout_untransform_point, 35

	.type	.L__func__.gimp_text_layout_untransform_distance,@object # @__func__.gimp_text_layout_untransform_distance
.L__func__.gimp_text_layout_untransform_distance:
	.asciz	"gimp_text_layout_untransform_distance"
	.size	.L__func__.gimp_text_layout_untransform_distance, 38

	.type	gimp_text_layout_parent_class,@object # @gimp_text_layout_parent_class
	.local	gimp_text_layout_parent_class
	.comm	gimp_text_layout_parent_class,8,8
	.type	GimpTextLayout_private_offset,@object # @GimpTextLayout_private_offset
	.local	GimpTextLayout_private_offset
	.comm	GimpTextLayout_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"<markup>"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"</markup>"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The new text layout cannot be generated. Most likely the font size is too big."
	.size	.L.str.10, 79

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"<span color=\"#%02x%02x%02x\">%s</span>"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"<span letter_spacing=\"%d\">%s</span>"
	.size	.L.str.12, 36

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"You are using a Pango that has been built against a cairo that lacks the Freetype font backend"
	.size	.L.str.13, 95


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
