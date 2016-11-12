	.text
	.file	"display-filter-color-blind.bc"
	.globl	cdisplay_colorblind_get_type
	.align	16, 0x90
	.type	cdisplay_colorblind_get_type,@function
cdisplay_colorblind_get_type:           # @cdisplay_colorblind_get_type
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
	movq	cdisplay_colorblind_type_id(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cdisplay_colorblind_get_type, .Lfunc_end0-cdisplay_colorblind_get_type
	.cfi_endproc

	.globl	gimp_module_query
	.align	16, 0x90
	.type	gimp_module_query,@function
gimp_module_query:                      # @gimp_module_query
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
	leaq	cdisplay_colorblind_info(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_module_query, .Lfunc_end1-gimp_module_query
	.cfi_endproc

	.globl	gimp_module_register
	.align	16, 0x90
	.type	gimp_module_register,@function
gimp_module_register:                   # @gimp_module_register
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	cdisplay_colorblind_register_type
	movq	-8(%rbp), %rdi
	callq	cdisplay_colorblind_deficiency_register_type
	movl	$1, %ecx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_module_register, .Lfunc_end2-gimp_module_register
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_colorblind_register_type,@function
cdisplay_colorblind_register_type:      # @cdisplay_colorblind_register_type
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	leaq	.L.str.5(%rip), %rdx
	leaq	cdisplay_colorblind_register_type.g_define_type_info(%rip), %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_module_register_type@PLT
	movq	%rax, cdisplay_colorblind_type_id(%rip)
	movq	cdisplay_colorblind_type_id(%rip), %rax
	movq	%rax, -16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cdisplay_colorblind_register_type, .Lfunc_end3-cdisplay_colorblind_register_type
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_colorblind_deficiency_register_type,@function
cdisplay_colorblind_deficiency_register_type: # @cdisplay_colorblind_deficiency_register_type
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, cdisplay_colorblind_deficiency_type(%rip)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	leaq	.L.str.15(%rip), %rsi
	leaq	enum_values(%rip), %rdx
	movq	-8(%rbp), %rdi
	callq	g_type_module_register_enum@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, cdisplay_colorblind_deficiency_type(%rip)
	movq	cdisplay_colorblind_deficiency_type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	enum_descs(%rip), %rsi
	movq	cdisplay_colorblind_deficiency_type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB4_2:                                # %if.end
	movq	cdisplay_colorblind_deficiency_type(%rip), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cdisplay_colorblind_deficiency_register_type, .Lfunc_end4-cdisplay_colorblind_deficiency_register_type
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_colorblind_class_intern_init,@function
cdisplay_colorblind_class_intern_init:  # @cdisplay_colorblind_class_intern_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, cdisplay_colorblind_parent_class(%rip)
	cmpl	$0, CdisplayColorblind_private_offset(%rip)
	je	.LBB5_2
# BB#1:                                 # %if.then
	leaq	CdisplayColorblind_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	cdisplay_colorblind_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cdisplay_colorblind_class_intern_init, .Lfunc_end5-cdisplay_colorblind_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_colorblind_class_finalize,@function
cdisplay_colorblind_class_finalize:     # @cdisplay_colorblind_class_finalize
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	cdisplay_colorblind_class_finalize, .Lfunc_end6-cdisplay_colorblind_class_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4602249905311987363     # double 0.47619049781574513
	.text
	.align	16, 0x90
	.type	cdisplay_colorblind_init,@function
cdisplay_colorblind_init:               # @cdisplay_colorblind_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm0
	callq	pow@PLT
	cvtsd2ss	%xmm0, %xmm0
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movss	%xmm0, 8232(%rcx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	cdisplay_colorblind_init, .Lfunc_end7-cdisplay_colorblind_init
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_colorblind_class_init,@function
cdisplay_colorblind_class_init:         # @cdisplay_colorblind_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.6(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %r8d
	movl	$263, %r9d              # imm = 0x107
	leaq	cdisplay_colorblind_set_property(%rip), %rdx
	leaq	cdisplay_colorblind_get_property(%rip), %r10
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	cdisplay_colorblind_deficiency_type(%rip), %rcx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_enum@PLT
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	dgettext@PLT
	leaq	cdisplay_colorblind_changed(%rip), %rcx
	leaq	cdisplay_colorblind_configure(%rip), %rdx
	leaq	cdisplay_colorblind_convert_surface(%rip), %rsi
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.9(%rip), %r10
	movq	-24(%rbp), %r11
	movq	%rax, 136(%r11)
	movq	-24(%rbp), %rax
	movq	%r10, 144(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 208(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 216(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 184(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 200(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	cdisplay_colorblind_class_init, .Lfunc_end8-cdisplay_colorblind_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_colorblind_get_property,@function
cdisplay_colorblind_get_property:       # @cdisplay_colorblind_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	cdisplay_colorblind_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB9_5
.LBB9_2:                                # %sw.default
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
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
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.11(%rip), %rdi
	leaq	.L.str.12(%rip), %rsi
	movl	$295, %edx              # imm = 0x127
	leaq	.L.str.13(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB9_5
.LBB9_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	cdisplay_colorblind_get_property, .Lfunc_end9-cdisplay_colorblind_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_colorblind_set_property,@function
cdisplay_colorblind_set_property:       # @cdisplay_colorblind_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	cdisplay_colorblind_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB10_2
	jmp	.LBB10_1
.LBB10_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	cdisplay_colorblind_set_deficiency
	jmp	.LBB10_5
.LBB10_2:                               # %sw.default
	jmp	.LBB10_3
.LBB10_3:                               # %do.body
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.11(%rip), %rdi
	leaq	.L.str.12(%rip), %rsi
	movl	$316, %edx              # imm = 0x13C
	leaq	.L.str.13(%rip), %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB10_5
.LBB10_5:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	cdisplay_colorblind_set_property, .Lfunc_end10-cdisplay_colorblind_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_colorblind_convert_surface,@function
cdisplay_colorblind_convert_surface:    # @cdisplay_colorblind_convert_surface
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	cdisplay_colorblind_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	cairo_image_surface_get_width@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	cairo_image_surface_get_height@PLT
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	cairo_image_surface_get_stride@PLT
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	cairo_image_surface_get_data@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	cairo_image_surface_get_format@PLT
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rsi
	movss	36(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rsi
	movss	40(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	movq	-24(%rbp), %rsi
	movss	44(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movq	-24(%rbp), %rsi
	movss	48(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)
	movq	-24(%rbp), %rsi
	movss	52(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rsi
	movss	56(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_32
.LBB11_2:                               # %if.end
	movl	-36(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$2, %ecx
	subl	%ecx, %eax
	movl	%eax, -116(%rbp)
	movl	$0, -112(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	movl	-112(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB11_32
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$0, -108(%rbp)
.LBB11_5:                               # %for.cond.26
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB11_30
# BB#6:                                 # %for.body.28
                                        #   in Loop: Header=BB11_5 Depth=2
	jmp	.LBB11_7
.LBB11_7:                               # %do.body
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -128(%rbp)
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -136(%rbp)
	movq	-48(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movl	-136(%rbp), %ecx
	shll	$8, %ecx
	movl	-140(%rbp), %edx
	addl	$1, %edx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-180(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	movb	%al, %sil
	movb	%sil, -101(%rbp)
	movl	-132(%rbp), %eax
	shll	$8, %eax
	movl	-140(%rbp), %edi
	addl	$1, %edi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	%edi
	movb	%al, %sil
	movb	%sil, -102(%rbp)
	movl	-128(%rbp), %eax
	shll	$8, %eax
	movl	-140(%rbp), %edi
	addl	$1, %edi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	%edi
	movb	%al, %sil
	movb	%sil, -103(%rbp)
	movl	-140(%rbp), %eax
	movb	%al, %sil
	movb	%sil, -104(%rbp)
# BB#8:                                 # %do.end
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	$1021, %eax             # imm = 0x3FD
	movzbl	-101(%rbp), %ecx
	shll	$16, %ecx
	movzbl	-102(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movzbl	-103(%rbp), %edx
	orl	%edx, %ecx
	movl	%ecx, -120(%rbp)
	movl	-120(%rbp), %ecx
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-184(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	movl	%edx, -124(%rbp)
	movl	-124(%rbp), %edx
	shll	$1, %edx
	movl	%edx, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdi
	movl	64(%rdi,%rsi,4), %edx
	cmpl	-120(%rbp), %edx
	jne	.LBB11_12
# BB#9:                                 # %if.then.61
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-124(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	64(%rdx,%rcx,4), %eax
	movl	%eax, -120(%rbp)
	movl	-120(%rbp), %eax
	andl	$255, %eax
	movb	%al, %sil
	movb	%sil, -103(%rbp)
	movl	-120(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -120(%rbp)
	movl	-120(%rbp), %eax
	andl	$255, %eax
	movb	%al, %sil
	movb	%sil, -102(%rbp)
	movl	-120(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -120(%rbp)
	movl	-120(%rbp), %eax
	andl	$255, %eax
	movb	%al, %sil
	movb	%sil, -101(%rbp)
# BB#10:                                # %do.body.73
                                        #   in Loop: Header=BB11_5 Depth=2
	movzbl	-104(%rbp), %eax
	movzbl	-101(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -144(%rbp)
	movzbl	-104(%rbp), %eax
	movzbl	-102(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -148(%rbp)
	movzbl	-104(%rbp), %eax
	movzbl	-103(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
	shrl	$8, %eax
	addl	-152(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-148(%rbp), %eax
	shrl	$8, %eax
	addl	-148(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-144(%rbp), %eax
	shrl	$8, %eax
	addl	-144(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-104(%rbp), %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#11:                                # %do.end.108
                                        #   in Loop: Header=BB11_5 Depth=2
	jmp	.LBB11_29
.LBB11_12:                              # %if.end.109
                                        #   in Loop: Header=BB11_5 Depth=2
	movzbl	-101(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movss	8232(%rdx,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)
	movzbl	-102(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movss	8232(%rdx,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)
	movzbl	-103(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movss	8232(%rdx,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)
	movss	-84(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)
	movss	-88(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -100(%rbp)
	movss	-96(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	rgb2lms(%rip), %xmm2    # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	movss	rgb2lms+4(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	rgb2lms+8(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -84(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	rgb2lms+12(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-100(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	rgb2lms+16(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	-92(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	rgb2lms+20(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	rgb2lms+24(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-100(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	rgb2lms+28(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	-92(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	rgb2lms+32(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
	movq	-24(%rbp), %rcx
	movl	32(%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB11_17
	jmp	.LBB11_33
.LBB11_33:                              # %if.end.109
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB11_13
	jmp	.LBB11_34
.LBB11_34:                              # %if.end.109
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB11_21
	jmp	.LBB11_25
.LBB11_13:                              # %sw.bb
                                        #   in Loop: Header=BB11_5 Depth=2
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-84(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-80(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	60(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB11_15
# BB#14:                                # %if.then.136
                                        #   in Loop: Header=BB11_5 Depth=2
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-84(%rbp), %xmm0
	movss	-64(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-92(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	divss	-60(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	jmp	.LBB11_16
.LBB11_15:                              # %if.else
                                        #   in Loop: Header=BB11_5 Depth=2
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-84(%rbp), %xmm0
	movss	-76(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-92(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	divss	-72(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
.LBB11_16:                              # %if.end.147
                                        #   in Loop: Header=BB11_5 Depth=2
	jmp	.LBB11_26
.LBB11_17:                              # %sw.bb.148
                                        #   in Loop: Header=BB11_5 Depth=2
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-88(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-80(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	60(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB11_19
# BB#18:                                # %if.then.153
                                        #   in Loop: Header=BB11_5 Depth=2
	movss	-60(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-88(%rbp), %xmm0
	movss	-64(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-92(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	divss	-56(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	jmp	.LBB11_20
.LBB11_19:                              # %if.else.159
                                        #   in Loop: Header=BB11_5 Depth=2
	movss	-72(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-88(%rbp), %xmm0
	movss	-76(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-92(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	divss	-68(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
.LBB11_20:                              # %if.end.165
                                        #   in Loop: Header=BB11_5 Depth=2
	jmp	.LBB11_26
.LBB11_21:                              # %sw.bb.166
                                        #   in Loop: Header=BB11_5 Depth=2
	movss	-88(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-84(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-80(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	60(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB11_23
# BB#22:                                # %if.then.171
                                        #   in Loop: Header=BB11_5 Depth=2
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-84(%rbp), %xmm0
	movss	-60(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-88(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	divss	-64(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	jmp	.LBB11_24
.LBB11_23:                              # %if.else.177
                                        #   in Loop: Header=BB11_5 Depth=2
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-84(%rbp), %xmm0
	movss	-72(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-88(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	divss	-76(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
.LBB11_24:                              # %if.end.183
                                        #   in Loop: Header=BB11_5 Depth=2
	jmp	.LBB11_26
.LBB11_25:                              # %sw.default
                                        #   in Loop: Header=BB11_5 Depth=2
	jmp	.LBB11_26
.LBB11_26:                              # %sw.epilog
                                        #   in Loop: Header=BB11_5 Depth=2
	movss	-84(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)
	movss	-88(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -100(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	lms2rgb(%rip), %xmm0
	movss	-100(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	mulss	lms2rgb+4(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-92(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	lms2rgb+8(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	lms2rgb+12(%rip), %xmm0
	movss	-100(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	mulss	lms2rgb+16(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-92(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	lms2rgb+20(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	lms2rgb+24(%rip), %xmm0
	movss	-100(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	mulss	lms2rgb+28(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-92(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	lms2rgb+32(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-84(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	addq	$8232, %rax             # imm = 0x2028
	movq	%rax, %rdi
	callq	lut_lookup
	movb	%al, -101(%rbp)
	movss	-88(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdi
	addq	$8232, %rdi             # imm = 0x2028
	callq	lut_lookup
	movb	%al, -102(%rbp)
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdi
	addq	$8232, %rdi             # imm = 0x2028
	callq	lut_lookup
	movb	%al, -103(%rbp)
# BB#27:                                # %do.body.207
                                        #   in Loop: Header=BB11_5 Depth=2
	movzbl	-104(%rbp), %eax
	movzbl	-101(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -156(%rbp)
	movzbl	-104(%rbp), %eax
	movzbl	-102(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -160(%rbp)
	movzbl	-104(%rbp), %eax
	movzbl	-103(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	shrl	$8, %eax
	addl	-164(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-160(%rbp), %eax
	shrl	$8, %eax
	addl	-160(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-156(%rbp), %eax
	shrl	$8, %eax
	addl	-156(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-104(%rbp), %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#28:                                # %do.end.242
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-120(%rbp), %eax
	movl	-124(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movl	%eax, 64(%rsi,%rdx,4)
	movzbl	-101(%rbp), %eax
	shll	$16, %eax
	movzbl	-102(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movzbl	-103(%rbp), %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movl	%eax, 64(%rsi,%rdx,4)
.LBB11_29:                              # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	movq	-48(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB11_5
.LBB11_30:                              # %for.end
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_31
.LBB11_31:                              # %for.inc.259
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB11_3
.LBB11_32:                              # %for.end.262
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	cdisplay_colorblind_convert_surface, .Lfunc_end11-cdisplay_colorblind_convert_surface
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_colorblind_configure,@function
cdisplay_colorblind_configure:          # @cdisplay_colorblind_configure
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	cdisplay_colorblind_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -16(%rbp)
	callq	gtk_box_new@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	movq	%rax, -24(%rbp)
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget@PLT
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	cdisplay_colorblind_configure, .Lfunc_end12-cdisplay_colorblind_configure
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_colorblind_changed,@function
cdisplay_colorblind_changed:            # @cdisplay_colorblind_changed
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	cdisplay_colorblind_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movl	$1034158332, -80(%rbp)  # imm = 0x3DA400FC
	movl	$1042395274, -76(%rbp)  # imm = 0x3E21B08A
	movl	$1058469524, -72(%rbp)  # imm = 0x3F16F694
	movl	$1040415562, -68(%rbp)  # imm = 0x3E037B4A
	movl	$1046811037, -64(%rbp)  # imm = 0x3E65119D
	movl	$1052387783, -60(%rbp)  # imm = 0x3EBA29C7
	movl	$1065111624, -56(%rbp)  # imm = 0x3F7C5048
	movl	$1060865311, -52(%rbp)  # imm = 0x3F3B851F
	movl	$982347067, -48(%rbp)   # imm = 0x3A8D6D3B
	movl	$1035677676, -44(%rbp)  # imm = 0x3DBB2FEC
	movl	$1004907457, -40(%rbp)  # imm = 0x3BE5ABC1
	movl	$0, -36(%rbp)
	movss	rgb2lms(%rip), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	rgb2lms+4(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	rgb2lms+8(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	rgb2lms+12(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	rgb2lms+16(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	rgb2lms+20(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	rgb2lms+24(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	rgb2lms+28(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	rgb2lms+32(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB13_2
	jmp	.LBB13_5
.LBB13_5:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB13_1
	jmp	.LBB13_6
.LBB13_6:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB13_3
	jmp	.LBB13_4
.LBB13_1:                               # %sw.bb
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm0
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 36(%rax)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm0
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 40(%rax)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm0
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 44(%rax)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-72(%rbp), %xmm0
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-76(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 48(%rax)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-80(%rbp), %xmm0
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-72(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 52(%rax)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-76(%rbp), %xmm0
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-80(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 56(%rax)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-28(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 60(%rax)
	jmp	.LBB13_4
.LBB13_2:                               # %sw.bb.63
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm0
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 36(%rax)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm0
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 40(%rax)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm0
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 44(%rax)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-72(%rbp), %xmm0
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-76(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 48(%rax)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-80(%rbp), %xmm0
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-72(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 52(%rax)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-76(%rbp), %xmm0
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-80(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 56(%rax)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 60(%rax)
	jmp	.LBB13_4
.LBB13_3:                               # %sw.bb.116
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-36(%rbp), %xmm0
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-40(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 36(%rax)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm0
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-36(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 40(%rax)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-40(%rbp), %xmm0
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 44(%rax)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-60(%rbp), %xmm0
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-64(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 48(%rax)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-68(%rbp), %xmm0
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-60(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 52(%rax)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-64(%rbp), %xmm0
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-68(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 56(%rax)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-28(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 60(%rax)
.LBB13_4:                               # %sw.epilog
	xorl	%esi, %esi
	movl	$8168, %eax             # imm = 0x1FE8
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	addq	$64, %rcx
	movq	%rcx, %rdi
	callq	memset@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	cdisplay_colorblind_changed, .Lfunc_end13-cdisplay_colorblind_changed
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB14_2
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
.LBB14_2:                               # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end14:
	.size	g_warning, .Lfunc_end14-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_colorblind_set_deficiency,@function
cdisplay_colorblind_set_deficiency:     # @cdisplay_colorblind_set_deficiency
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	cmpl	32(%rdi), %esi
	je	.LBB15_4
# BB#1:                                 # %if.then
	movq	cdisplay_colorblind_deficiency_type(%rip), %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	g_enum_get_value@PLT
	cmpq	$0, %rax
	jne	.LBB15_3
# BB#2:                                 # %if.then.2
	jmp	.LBB15_4
.LBB15_3:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_color_display_changed@PLT
.LBB15_4:                               # %if.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	cdisplay_colorblind_set_deficiency, .Lfunc_end15-cdisplay_colorblind_set_deficiency
	.cfi_endproc

	.align	16, 0x90
	.type	lut_lookup,@function
lut_lookup:                             # @lut_lookup
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
	movss	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movb	$127, -17(%rbp)
	movb	$64, -18(%rbp)
.LBB16_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, -18(%rbp)
	je	.LBB16_8
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movzbl	-17(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	-8(%rbp), %xmm0
	jbe	.LBB16_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	movzbl	-18(%rbp), %eax
	movzbl	-17(%rbp), %ecx
	subl	%eax, %ecx
	movb	%cl, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB16_7
.LBB16_4:                               # %if.else
                                        #   in Loop: Header=BB16_1 Depth=1
	movzbl	-17(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	-8(%rbp), %xmm0
	jbe	.LBB16_6
# BB#5:                                 # %if.then.8
	movb	-17(%rbp), %al
	movb	%al, -1(%rbp)
	jmp	.LBB16_12
.LBB16_6:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movzbl	-18(%rbp), %eax
	movzbl	-17(%rbp), %ecx
	addl	%eax, %ecx
	movb	%cl, %dl
	movb	%dl, -17(%rbp)
.LBB16_7:                               # %if.end.13
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$2, %eax
	movzbl	-18(%rbp), %ecx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-24(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movb	%al, %sil
	movb	%sil, -18(%rbp)
	jmp	.LBB16_1
.LBB16_8:                               # %while.end
	movzbl	-17(%rbp), %eax
	cmpl	$254, %eax
	jne	.LBB16_11
# BB#9:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movss	1020(%rax), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB16_11
# BB#10:                                # %if.then.22
	movb	$-1, -1(%rbp)
	jmp	.LBB16_12
.LBB16_11:                              # %if.end.23
	movb	-17(%rbp), %al
	movb	%al, -1(%rbp)
.LBB16_12:                              # %return
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	lut_lookup, .Lfunc_end16-lut_lookup
	.cfi_endproc

	.type	cdisplay_colorblind_type_id,@object # @cdisplay_colorblind_type_id
	.local	cdisplay_colorblind_type_id
	.comm	cdisplay_colorblind_type_id,8,8
	.type	cdisplay_colorblind_info,@object # @cdisplay_colorblind_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
cdisplay_colorblind_info:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.size	cdisplay_colorblind_info, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Color deficit simulation filter (Brettel-Vienot-Mollon algorithm)"
	.size	.L.str, 66

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Michael Natterer <mitch@gimp.org>, Bob Dougherty <bob@vischeck.com>, Alex Wade <alex@vischeck.com>"
	.size	.L.str.1, 99

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"v0.2"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(c) 2002-2004, released under the GPL"
	.size	.L.str.3, 38

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"January 22, 2003"
	.size	.L.str.4, 17

	.type	cdisplay_colorblind_register_type.g_define_type_info,@object # @cdisplay_colorblind_register_type.g_define_type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
cdisplay_colorblind_register_type.g_define_type_info:
	.short	240                     # 0xf0
	.zero	6
	.quad	0
	.quad	0
	.quad	cdisplay_colorblind_class_intern_init
	.quad	cdisplay_colorblind_class_finalize
	.quad	0
	.short	9256                    # 0x2428
	.short	0                       # 0x0
	.zero	4
	.quad	cdisplay_colorblind_init
	.quad	0
	.size	cdisplay_colorblind_register_type.g_define_type_info, 72

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"CdisplayColorblind"
	.size	.L.str.5, 19

	.type	cdisplay_colorblind_parent_class,@object # @cdisplay_colorblind_parent_class
	.local	cdisplay_colorblind_parent_class
	.comm	cdisplay_colorblind_parent_class,8,8
	.type	CdisplayColorblind_private_offset,@object # @CdisplayColorblind_private_offset
	.local	CdisplayColorblind_private_offset
	.comm	CdisplayColorblind_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"deficiency"
	.size	.L.str.6, 11

	.type	cdisplay_colorblind_deficiency_type,@object # @cdisplay_colorblind_deficiency_type
	.local	cdisplay_colorblind_deficiency_type
	.comm	cdisplay_colorblind_deficiency_type,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp20-libgimp"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Color Deficient Vision"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-colordisplay-colorblind"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-display-filter-colorblind"
	.size	.L.str.10, 31

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.11, 54

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"display-filter-color-blind.c"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"property"
	.size	.L.str.13, 9

	.type	rgb2lms,@object         # @rgb2lms
	.section	.rodata,"a",@progbits
	.align	16
rgb2lms:
	.long	1028604356              # float 5.059983e-02
	.long	1034933263              # float 8.585369e-02
	.long	1008470884              # float 9.524200e-03
	.long	1016796104              # float 1.893033e-02
	.long	1035389522              # float 8.925308e-02
	.long	1012955195              # float 1.370054e-02
	.long	994017116               # float 2.922020e-03
	.long	1008721195              # float 9.757320e-03
	.long	1033001347              # float 7.145979e-02
	.size	rgb2lms, 36

	.type	lms2rgb,@object         # @lms2rgb
	.align	16
lms2rgb:
	.long	1106683287              # float 3.083085e+01
	.long	3253643593              # float -2.983266e+01
	.long	1070474243              # float 1.610474e+00
	.long	3234818096              # float -6.481468e+00
	.long	1099807105              # float 1.771558e+01
	.long	3223459534              # float -2.532642e+00
	.long	3200277105              # float -3.756900e-01
	.long	3214506717              # float -1.199062e+00
	.long	1097097644              # float 1.427385e+01
	.size	lms2rgb, 36

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Color _deficiency type:"
	.size	.L.str.14, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"CDisplayColorblindDeficiency"
	.size	.L.str.15, 29

	.type	enum_values,@object     # @enum_values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
enum_values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.zero	24
	.size	enum_values, 96

	.type	enum_descs,@object      # @enum_descs
	.align	16
enum_descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.23
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.24
	.quad	0
	.zero	24
	.size	enum_descs, 96

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"COLORBLIND_DEFICIENCY_PROTANOPIA"
	.size	.L.str.16, 33

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"protanopia"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"COLORBLIND_DEFICIENCY_DEUTERANOPIA"
	.size	.L.str.18, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"deuteranopia"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"COLORBLIND_DEFICIENCY_TRITANOPIA"
	.size	.L.str.20, 33

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"tritanopia"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Protanopia (insensitivity to red)"
	.size	.L.str.22, 34

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Deuteranopia (insensitivity to green)"
	.size	.L.str.23, 38

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Tritanopia (insensitivity to blue)"
	.size	.L.str.24, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
