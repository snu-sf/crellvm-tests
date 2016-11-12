	.text
	.file	"gimpfont.bc"
	.globl	gimp_font_get_type
	.align	16, 0x90
	.type	gimp_font_get_type,@function
gimp_font_get_type:                     # @gimp_font_get_type
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
	movq	gimp_font_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_font_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_viewable_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_font_class_intern_init, %rdi
	movl	$56, %r8d
	movabsq	$gimp_font_init, %rcx
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
	movabsq	$gimp_font_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_font_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_font_get_type, .Lfunc_end0-gimp_font_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_class_intern_init,@function
gimp_font_class_intern_init:            # @gimp_font_class_intern_init
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
	movq	%rax, gimp_font_parent_class
	cmpl	$0, GimpFont_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFont_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_font_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_font_class_intern_init, .Lfunc_end1-gimp_font_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_init,@function
gimp_font_init:                         # @gimp_font_init
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
	movq	$0, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_font_init, .Lfunc_end2-gimp_font_init
	.cfi_endproc

	.globl	gimp_font_get_standard
	.align	16, 0x90
	.type	gimp_font_get_standard,@function
gimp_font_get_standard:                 # @gimp_font_get_standard
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
	cmpq	$0, gimp_font_get_standard.standard_font
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	gimp_font_get_type
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, gimp_font_get_standard.standard_font
.LBB3_2:                                # %if.end
	movq	gimp_font_get_standard.standard_font, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_font_get_standard, .Lfunc_end3-gimp_font_get_standard
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_class_init,@function
gimp_font_class_init:                   # @gimp_font_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_font_get_new_preview, %rdi
	movabsq	$gimp_font_get_popup_size, %rcx
	movabsq	$gimp_font_get_preview_size, %rdx
	movabsq	$gimp_font_set_property, %r8
	movabsq	$gimp_font_finalize, %r9
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 208(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 224(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 160(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	pango_context_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movl	$226, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_font_class_init, .Lfunc_end4-gimp_font_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_finalize,@function
gimp_font_finalize:                     # @gimp_font_finalize
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_font_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB5_4:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_font_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_font_finalize, .Lfunc_end5-gimp_font_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_set_property,@function
gimp_font_set_property:                 # @gimp_font_set_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_font_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB6_4
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB6_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB6_7
.LBB6_4:                                # %sw.default
	jmp	.LBB6_5
.LBB6_5:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$172, %edx
	movabsq	$.L.str.7, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB6_7
.LBB6_7:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_font_set_property, .Lfunc_end6-gimp_font_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_get_preview_size,@function
gimp_font_get_preview_size:             # @gimp_font_get_preview_size
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, (%rdi)
	movl	-12(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movl	%ecx, (%rdi)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_font_get_preview_size, .Lfunc_end7-gimp_font_get_preview_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_get_popup_size,@function
gimp_font_get_popup_size:               # @gimp_font_get_popup_size
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_font_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_16
.LBB8_2:                                # %if.end
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	pango_font_description_from_string
	movq	%rax, -64(%rbp)
# BB#3:                                 # %do.body
	cmpq	$0, -64(%rbp)
	je	.LBB8_5
# BB#4:                                 # %if.then.4
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_font_get_popup_size, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_16
.LBB8_6:                                # %if.end.5
	jmp	.LBB8_7
.LBB8_7:                                # %do.end
	movl	$30720, %esi            # imm = 0x7800
	movq	-64(%rbp), %rdi
	callq	pango_font_description_set_size
	movq	-56(%rbp), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB8_9
# BB#8:                                 # %if.then.7
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_9:                                # %if.end.9
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	callq	pango_layout_new
	movq	-56(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	pango_layout_set_font_description
	movq	-64(%rbp), %rdi
	callq	pango_font_description_free
	movabsq	$.L.str.10, %rdi
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pango_layout_set_text
	leaq	-80(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdi
	callq	pango_layout_get_pixel_extents
	movl	-72(%rbp), %ecx
	cmpl	-88(%rbp), %ecx
	jle	.LBB8_11
# BB#10:                                # %cond.true
	movl	-72(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB8_12
.LBB8_11:                               # %cond.false
	movl	-88(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB8_12:                               # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	addl	$6, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-68(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jle	.LBB8_14
# BB#13:                                # %cond.true.25
	movl	-68(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB8_15
.LBB8_14:                               # %cond.false.27
	movl	-84(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB8_15:                               # %cond.end.29
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	$2, %edi
	addl	$6, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %esi
	callq	cairo_format_stride_for_width
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	$1, -4(%rbp)
.LBB8_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_font_get_popup_size, .Lfunc_end8-gimp_font_get_popup_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4613937818241073152     # double 3
.LCPI9_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_font_get_new_preview,@function
gimp_font_get_new_preview:              # @gimp_font_get_new_preview
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_font_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movb	$-1, -121(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB9_23
.LBB9_2:                                # %if.end
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB9_5
# BB#3:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB9_5
# BB#4:                                 # %lor.lhs.false.3
	movq	-40(%rbp), %rax
	movl	52(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	je	.LBB9_11
.LBB9_5:                                # %if.then.5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	pango_font_description_from_string
	movq	%rax, -136(%rbp)
# BB#6:                                 # %do.body
	cmpq	$0, -136(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.9
	jmp	.LBB9_9
.LBB9_8:                                # %if.else
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_font_get_new_preview, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_23
.LBB9_9:                                # %if.end.10
	jmp	.LBB9_10
.LBB9_10:                               # %do.end
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	-136(%rbp), %rdi
	movl	-32(%rbp), %eax
	shll	$10, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %esi
	callq	pango_font_description_set_size
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	pango_layout_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	pango_layout_set_font_description
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-136(%rbp), %rsi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_font_get_sample_string
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pango_layout_set_text
	movq	-136(%rbp), %rdi
	callq	pango_font_description_free
	jmp	.LBB9_12
.LBB9_11:                               # %if.else.17
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -48(%rbp)
.LBB9_12:                               # %if.end.20
	movl	$2, %edi
	movl	-28(%rbp), %esi
	callq	cairo_format_stride_for_width
	movl	$1, %edx
	xorl	%esi, %esi
	leaq	-121(%rbp), %r9
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %eax
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-164(%rbp), %ecx        # 4-byte Reload
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	temp_buf_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	temp_buf_get_data
	movl	$2, %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	callq	cairo_image_surface_create_for_data
	leaq	-64(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rdi
	callq	pango_layout_get_pixel_extents
	movl	-56(%rbp), %ecx
	cmpl	-72(%rbp), %ecx
	jle	.LBB9_14
# BB#13:                                # %cond.true
	movl	-56(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB9_15
.LBB9_14:                               # %cond.false
	movl	-72(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB9_15:                               # %cond.end
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB9_17
# BB#16:                                # %cond.true.35
	movl	-52(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB9_18
.LBB9_17:                               # %cond.false.37
	movl	-68(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB9_18:                               # %cond.end.39
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	movl	%eax, -88(%rbp)
	movl	-28(%rbp), %eax
	subl	-84(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -92(%rbp)
	movl	-32(%rbp), %eax
	subl	-88(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -96(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB9_20
# BB#19:                                # %if.then.47
	movl	-80(%rbp), %eax
	subl	-64(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB9_20:                               # %if.end.51
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB9_22
# BB#21:                                # %if.then.55
	movl	-76(%rbp), %eax
	subl	-60(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBB9_22:                               # %if.end.60
	movq	-120(%rbp), %rdi
	callq	cairo_create
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	cvtsi2sdl	-92(%rbp), %xmm0
	cvtsi2sdl	-96(%rbp), %xmm1
	callq	cairo_translate
	xorl	%esi, %esi
	movq	-112(%rbp), %rdi
	callq	cairo_set_operator
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	pango_cairo_show_layout
	movq	-112(%rbp), %rdi
	callq	cairo_destroy
	movq	-120(%rbp), %rdi
	callq	cairo_surface_destroy
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_font_get_new_preview, .Lfunc_end9-gimp_font_get_new_preview
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
	movl	$.L.str.8, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_get_sample_string,@function
gimp_font_get_sample_string:            # @gimp_font_get_sample_string
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -180(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	pango_context_load_font
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	pango_fc_font_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -204(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.4
	movl	$1, -204(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.5
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.7
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.9
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.10
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_font_get_sample_string, %rsi
	movabsq	$.L.str.49, %rdx
	callq	g_return_if_fail_warning
	movabsq	$.L.str.48, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB11_77
.LBB11_11:                              # %if.end.11
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	pango_fc_font_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	pango_fc_font_lock_face
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	pango_ot_info_get
	movq	%rax, -40(%rbp)
	movl	$0, -60(%rbp)
.LBB11_13:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_18 Depth 2
                                        #       Child Loop BB11_22 Depth 3
                                        #       Child Loop BB11_29 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-84(%rbp), %rdx
	cmpq	$4, %rdx
	movb	%cl, -241(%rbp)         # 1-byte Spill
	jae	.LBB11_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB11_13 Depth=1
	cmpl	$1, -60(%rbp)
	setbe	%al
	movb	%al, -241(%rbp)         # 1-byte Spill
.LBB11_15:                              # %land.end
                                        #   in Loop: Header=BB11_13 Depth=1
	movb	-241(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_16
	jmp	.LBB11_43
.LBB11_16:                              # %for.body
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	pango_ot_info_list_scripts
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB11_41
# BB#17:                                # %if.then.23
                                        #   in Loop: Header=BB11_13 Depth=1
	movl	$0, -64(%rbp)
.LBB11_18:                              # %for.cond.24
                                        #   Parent Loop BB11_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_22 Depth 3
                                        #       Child Loop BB11_29 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-84(%rbp), %rdx
	cmpq	$4, %rdx
	movb	%cl, -242(%rbp)         # 1-byte Spill
	jae	.LBB11_20
# BB#19:                                # %land.rhs.28
                                        #   in Loop: Header=BB11_18 Depth=2
	movslq	-64(%rbp), %rax
	cmpq	$39, %rax
	setb	%cl
	movb	%cl, -242(%rbp)         # 1-byte Spill
.LBB11_20:                              # %land.end.32
                                        #   in Loop: Header=BB11_18 Depth=2
	movb	-242(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_21
	jmp	.LBB11_40
.LBB11_21:                              # %for.body.33
                                        #   in Loop: Header=BB11_18 Depth=2
	movl	$0, -224(%rbp)
.LBB11_22:                              # %for.cond.36
                                        #   Parent Loop BB11_13 Depth=1
                                        #     Parent Loop BB11_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-224(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB11_27
# BB#23:                                # %for.body.39
                                        #   in Loop: Header=BB11_22 Depth=3
	movslq	-224(%rbp), %rax
	movl	-80(%rbp,%rax,4), %ecx
	cmpl	-64(%rbp), %ecx
	jne	.LBB11_25
# BB#24:                                # %if.then.42
                                        #   in Loop: Header=BB11_18 Depth=2
	jmp	.LBB11_27
.LBB11_25:                              # %if.end.43
                                        #   in Loop: Header=BB11_22 Depth=3
	jmp	.LBB11_26
.LBB11_26:                              # %for.inc
                                        #   in Loop: Header=BB11_22 Depth=3
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB11_22
.LBB11_27:                              # %for.end
                                        #   in Loop: Header=BB11_18 Depth=2
	movl	-224(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB11_38
# BB#28:                                # %if.then.46
                                        #   in Loop: Header=BB11_18 Depth=2
	movl	$0, -220(%rbp)
.LBB11_29:                              # %for.cond.47
                                        #   Parent Loop BB11_13 Depth=1
                                        #     Parent Loop BB11_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-84(%rbp), %rdx
	cmpq	$4, %rdx
	movb	%cl, -243(%rbp)         # 1-byte Spill
	jae	.LBB11_31
# BB#30:                                # %land.rhs.51
                                        #   in Loop: Header=BB11_29 Depth=3
	movslq	-220(%rbp), %rax
	movq	-216(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	setne	%dl
	movb	%dl, -243(%rbp)         # 1-byte Spill
.LBB11_31:                              # %land.end.55
                                        #   in Loop: Header=BB11_29 Depth=3
	movb	-243(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_32
	jmp	.LBB11_37
.LBB11_32:                              # %for.body.56
                                        #   in Loop: Header=BB11_29 Depth=3
	movabsq	$gimp_font_get_sample_string.scripts, %rax
	movslq	-220(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movslq	-64(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsbq	(%rdx), %rcx
	shlq	$24, %rcx
	movslq	-64(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	movsbq	1(%rdi), %rdx
	shlq	$16, %rdx
	orq	%rdx, %rcx
	movslq	-64(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	movsbq	2(%rdi), %rdx
	shlq	$8, %rdx
	orq	%rdx, %rcx
	movslq	-64(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movsbq	3(%rax), %rax
	orq	%rax, %rcx
	movl	%ecx, %r8d
	cmpl	%r8d, %esi
	jne	.LBB11_35
# BB#33:                                # %land.lhs.true.85
                                        #   in Loop: Header=BB11_29 Depth=3
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	pango_fc_font_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_font_get_sample_string.scripts, %rsi
	movslq	-64(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_font_covers_string
	cmpl	$0, %eax
	je	.LBB11_35
# BB#34:                                # %if.then.92
                                        #   in Loop: Header=BB11_29 Depth=3
	movl	-64(%rbp), %eax
	movl	-84(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -84(%rbp)
	movslq	%ecx, %rsi
	movl	%eax, -80(%rbp,%rsi,4)
.LBB11_35:                              # %if.end.96
                                        #   in Loop: Header=BB11_29 Depth=3
	jmp	.LBB11_36
.LBB11_36:                              # %for.inc.97
                                        #   in Loop: Header=BB11_29 Depth=3
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB11_29
.LBB11_37:                              # %for.end.99
                                        #   in Loop: Header=BB11_18 Depth=2
	jmp	.LBB11_38
.LBB11_38:                              # %if.end.100
                                        #   in Loop: Header=BB11_18 Depth=2
	jmp	.LBB11_39
.LBB11_39:                              # %for.inc.101
                                        #   in Loop: Header=BB11_18 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB11_18
.LBB11_40:                              # %for.end.103
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB11_41:                              # %if.end.104
                                        #   in Loop: Header=BB11_13 Depth=1
	jmp	.LBB11_42
.LBB11_42:                              # %for.inc.105
                                        #   in Loop: Header=BB11_13 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB11_13
.LBB11_43:                              # %for.end.107
	movl	$2, %esi
	movq	-48(%rbp), %rdi
	callq	FT_Get_Sfnt_Table
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB11_55
# BB#44:                                # %if.then.110
	movl	$0, -64(%rbp)
.LBB11_45:                              # %for.cond.111
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-180(%rbp), %rdx
	cmpq	$20, %rdx
	movb	%cl, -257(%rbp)         # 1-byte Spill
	jae	.LBB11_47
# BB#46:                                # %land.rhs.115
                                        #   in Loop: Header=BB11_45 Depth=1
	movslq	-64(%rbp), %rax
	cmpq	$39, %rax
	setb	%cl
	movb	%cl, -257(%rbp)         # 1-byte Spill
.LBB11_47:                              # %land.end.119
                                        #   in Loop: Header=BB11_45 Depth=1
	movb	-257(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_48
	jmp	.LBB11_54
.LBB11_48:                              # %for.body.120
                                        #   in Loop: Header=BB11_45 Depth=1
	movabsq	$gimp_font_get_sample_string.scripts, %rax
	movslq	-64(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 4(%rax)
	jl	.LBB11_52
# BB#49:                                # %land.lhs.true.125
                                        #   in Loop: Header=BB11_45 Depth=1
	movl	$1, %eax
	movl	$32, %ecx
	movabsq	$gimp_font_get_sample_string.scripts, %rdx
	movslq	-64(%rbp), %rsi
	shlq	$4, %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movl	4(%rdi), %r8d
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-56(%rbp), %rdi
	movq	48(%rdi,%rsi,8), %rsi
	movslq	-64(%rbp), %rdi
	shlq	$4, %rdi
	movq	-272(%rbp), %r9         # 8-byte Reload
	addq	%rdi, %r9
	movl	4(%r9), %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-264(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rdi
	andq	%rdi, %rsi
	cmpq	$0, %rsi
	je	.LBB11_52
# BB#50:                                # %land.lhs.true.137
                                        #   in Loop: Header=BB11_45 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	pango_fc_font_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_font_get_sample_string.scripts, %rsi
	movslq	-64(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_font_covers_string
	cmpl	$0, %eax
	je	.LBB11_52
# BB#51:                                # %if.then.145
                                        #   in Loop: Header=BB11_45 Depth=1
	movl	-64(%rbp), %eax
	movl	-180(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -180(%rbp)
	movslq	%ecx, %rsi
	movl	%eax, -176(%rbp,%rsi,4)
.LBB11_52:                              # %if.end.149
                                        #   in Loop: Header=BB11_45 Depth=1
	jmp	.LBB11_53
.LBB11_53:                              # %for.inc.150
                                        #   in Loop: Header=BB11_45 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB11_45
.LBB11_54:                              # %for.end.152
	jmp	.LBB11_55
.LBB11_55:                              # %if.end.153
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	pango_fc_font_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	pango_fc_font_unlock_face
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	cmpl	$2, -84(%rbp)
	jle	.LBB11_63
# BB#56:                                # %if.then.158
	movl	$0, -228(%rbp)
.LBB11_57:                              # %for.cond.161
                                        # =>This Inner Loop Header: Depth=1
	movl	-228(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB11_62
# BB#58:                                # %for.body.164
                                        #   in Loop: Header=BB11_57 Depth=1
	movabsq	$gimp_font_get_sample_string.scripts, %rax
	movslq	-228(%rbp), %rcx
	movslq	-176(%rbp,%rcx,4), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 4(%rax)
	jne	.LBB11_60
# BB#59:                                # %if.then.172
	movabsq	$.L.str.48, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_77
.LBB11_60:                              # %if.end.173
                                        #   in Loop: Header=BB11_57 Depth=1
	jmp	.LBB11_61
.LBB11_61:                              # %for.inc.174
                                        #   in Loop: Header=BB11_57 Depth=1
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB11_57
.LBB11_62:                              # %for.end.176
	jmp	.LBB11_63
.LBB11_63:                              # %if.end.177
	cmpl	$0, -84(%rbp)
	jle	.LBB11_72
# BB#64:                                # %land.lhs.true.180
	movl	-180(%rbp), %eax
	movl	-84(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jl	.LBB11_72
# BB#65:                                # %if.then.183
	movl	$0, -232(%rbp)
.LBB11_66:                              # %for.cond.186
                                        # =>This Inner Loop Header: Depth=1
	movl	-232(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB11_71
# BB#67:                                # %for.body.189
                                        #   in Loop: Header=BB11_66 Depth=1
	movabsq	$gimp_font_get_sample_string.scripts, %rax
	movslq	-232(%rbp), %rcx
	movslq	-176(%rbp,%rcx,4), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 4(%rax)
	jne	.LBB11_69
# BB#68:                                # %if.then.197
	movabsq	$.L.str.48, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_77
.LBB11_69:                              # %if.end.198
                                        #   in Loop: Header=BB11_66 Depth=1
	jmp	.LBB11_70
.LBB11_70:                              # %for.inc.199
                                        #   in Loop: Header=BB11_66 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB11_66
.LBB11_71:                              # %for.end.201
	movabsq	$gimp_font_get_sample_string.scripts, %rax
	movslq	-176(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_77
.LBB11_72:                              # %if.end.206
	cmpl	$0, -84(%rbp)
	jle	.LBB11_74
# BB#73:                                # %if.then.209
	movabsq	$gimp_font_get_sample_string.scripts, %rax
	movslq	-80(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_77
.LBB11_74:                              # %if.end.214
	cmpl	$0, -180(%rbp)
	jle	.LBB11_76
# BB#75:                                # %if.then.217
	movabsq	$gimp_font_get_sample_string.scripts, %rax
	movslq	-176(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_77
.LBB11_76:                              # %if.end.222
	movabsq	$.L.str.48, %rax
	movq	%rax, -8(%rbp)
.LBB11_77:                              # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_font_get_sample_string, .Lfunc_end11-gimp_font_get_sample_string
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_covers_string,@function
gimp_font_covers_string:                # @gimp_font_covers_string
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB12_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_utf8_get_char
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	pango_fc_font_has_char
	cmpl	$0, %eax
	jne	.LBB12_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_7
.LBB12_4:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_5
.LBB12_5:                               # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	g_utf8_skip, %rsi
	movsbl	(%rsi,%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB12_1
.LBB12_6:                               # %for.end
	movl	$1, -4(%rbp)
.LBB12_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_font_covers_string, .Lfunc_end12-gimp_font_covers_string
	.cfi_endproc

	.type	gimp_font_get_type.g_define_type_id__volatile,@object # @gimp_font_get_type.g_define_type_id__volatile
	.local	gimp_font_get_type.g_define_type_id__volatile
	.comm	gimp_font_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFont"
	.size	.L.str, 9

	.type	gimp_font_get_standard.standard_font,@object # @gimp_font_get_standard.standard_font
	.local	gimp_font_get_standard.standard_font
	.comm	gimp_font_get_standard.standard_font,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Sans"
	.size	.L.str.2, 5

	.type	gimp_font_parent_class,@object # @gimp_font_parent_class
	.local	gimp_font_parent_class
	.comm	gimp_font_parent_class,8,8
	.type	GimpFont_private_offset,@object # @GimpFont_private_offset
	.local	GimpFont_private_offset
	.comm	GimpFont_private_offset,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-select-font"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pango-context"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.5, 54

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpfont.c"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"property"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Gimp-Text"
	.size	.L.str.8, 10

	.type	.L__func__.gimp_font_get_popup_size,@object # @__func__.gimp_font_get_popup_size
.L__func__.gimp_font_get_popup_size:
	.asciz	"gimp_font_get_popup_size"
	.size	.L__func__.gimp_font_get_popup_size, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"font_desc != NULL"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Pack my box with\nfive dozen liquor jugs."
	.size	.L.str.10, 41

	.type	.L__func__.gimp_font_get_new_preview,@object # @__func__.gimp_font_get_new_preview
.L__func__.gimp_font_get_new_preview:
	.asciz	"gimp_font_get_new_preview"
	.size	.L__func__.gimp_font_get_new_preview, 26

	.type	gimp_font_get_sample_string.scripts,@object # @gimp_font_get_sample_string.scripts
	.section	.rodata,"a",@progbits
	.align	16
gimp_font_get_sample_string.scripts:
	.ascii	"hani"
	.long	59                      # 0x3b
	.quad	.L.str.11
	.ascii	"copt"
	.long	7                       # 0x7
	.quad	.L.str.12
	.ascii	"grek"
	.long	7                       # 0x7
	.quad	.L.str.12
	.ascii	"cyrl"
	.long	9                       # 0x9
	.quad	.L.str.13
	.ascii	"armn"
	.long	10                      # 0xa
	.quad	.L.str.14
	.ascii	"hebr"
	.long	11                      # 0xb
	.quad	.L.str.15
	.ascii	"arab"
	.long	13                      # 0xd
	.quad	.L.str.16
	.ascii	"syrc"
	.long	71                      # 0x47
	.quad	.L.str.17
	.ascii	"thaa"
	.long	72                      # 0x48
	.quad	.L.str.18
	.ascii	"deva"
	.long	15                      # 0xf
	.quad	.L.str.19
	.ascii	"beng"
	.long	16                      # 0x10
	.quad	.L.str.20
	.ascii	"guru"
	.long	17                      # 0x11
	.quad	.L.str.21
	.ascii	"gujr"
	.long	18                      # 0x12
	.quad	.L.str.22
	.ascii	"orya"
	.long	19                      # 0x13
	.quad	.L.str.23
	.ascii	"taml"
	.long	20                      # 0x14
	.quad	.L.str.24
	.ascii	"telu"
	.long	21                      # 0x15
	.quad	.L.str.25
	.ascii	"knda"
	.long	22                      # 0x16
	.quad	.L.str.26
	.ascii	"mylm"
	.long	23                      # 0x17
	.quad	.L.str.27
	.ascii	"sinh"
	.long	73                      # 0x49
	.quad	.L.str.28
	.ascii	"thai"
	.long	24                      # 0x18
	.quad	.L.str.29
	.ascii	"laoo"
	.long	25                      # 0x19
	.quad	.L.str.30
	.ascii	"tibt"
	.long	70                      # 0x46
	.quad	.L.str.31
	.ascii	"mymr"
	.long	74                      # 0x4a
	.quad	.L.str.32
	.ascii	"geor"
	.long	26                      # 0x1a
	.quad	.L.str.33
	.ascii	"hang"
	.long	28                      # 0x1c
	.quad	.L.str.34
	.ascii	"ethi"
	.long	75                      # 0x4b
	.quad	.L.str.35
	.ascii	"cher"
	.long	76                      # 0x4c
	.quad	.L.str.36
	.ascii	"cans"
	.long	77                      # 0x4d
	.quad	.L.str.37
	.ascii	"ogam"
	.long	78                      # 0x4e
	.quad	.L.str.38
	.ascii	"runr"
	.long	79                      # 0x4f
	.quad	.L.str.39
	.ascii	"tglg"
	.long	84                      # 0x54
	.quad	.L.str.40
	.ascii	"hano"
	.long	4294967295              # 0xffffffff
	.quad	.L.str.41
	.ascii	"buhd"
	.long	4294967295              # 0xffffffff
	.quad	.L.str.42
	.ascii	"tagb"
	.long	4294967295              # 0xffffffff
	.quad	.L.str.43
	.ascii	"khmr"
	.long	80                      # 0x50
	.quad	.L.str.44
	.ascii	"mong"
	.long	81                      # 0x51
	.quad	.L.str.45
	.ascii	"limb"
	.long	4294967295              # 0xffffffff
	.quad	.L.str.46
	.ascii	"tale"
	.long	4294967295              # 0xffffffff
	.quad	.L.str.47
	.ascii	"latn"
	.long	0                       # 0x0
	.quad	.L.str.48
	.size	gimp_font_get_sample_string.scripts, 624

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"\346\260\270"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\316\221\316\261"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\320\220\325\260"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\324\261\325\241"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\327\220"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\330\247\330\250"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\334\220\334\222"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\336\200\336\201"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\340\244\205"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\340\246\205"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\340\250\205"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\340\252\205"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\340\254\205"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\340\256\205"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\340\260\205"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\340\262\205"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\340\264\205"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\340\266\205"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\340\270\201\340\270\264"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\340\272\201\340\272\264"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\340\274\200"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\341\200\200"
	.size	.L.str.32, 4

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"\341\202\240\341\203\200"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\341\204\200\341\204\201"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\341\210\200"
	.size	.L.str.35, 4

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"\341\216\243"
	.size	.L.str.36, 4

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"\341\220\201"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"\341\232\201"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"\341\232\240"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"\341\234\200"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"\341\234\240"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"\341\235\200"
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\341\235\240"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\341\236\201\341\237\222\341\236\211\341\236\273\341\237\206"
	.size	.L.str.44, 16

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\341\240\240"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"\341\244\201"
	.size	.L.str.46, 4

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"\341\245\220"
	.size	.L.str.47, 4

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Aa"
	.size	.L.str.48, 3

	.type	.L__func__.gimp_font_get_sample_string,@object # @__func__.gimp_font_get_sample_string
.L__func__.gimp_font_get_sample_string:
	.asciz	"gimp_font_get_sample_string"
	.size	.L__func__.gimp_font_get_sample_string, 28

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"PANGO_IS_FC_FONT (font)"
	.size	.L.str.49, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
