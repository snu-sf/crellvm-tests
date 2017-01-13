	.text
	.file	"display-filter-high-contrast.bc"
	.globl	cdisplay_contrast_get_type
	.align	16, 0x90
	.type	cdisplay_contrast_get_type,@function
cdisplay_contrast_get_type:             # @cdisplay_contrast_get_type
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
	movq	cdisplay_contrast_type_id(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cdisplay_contrast_get_type, .Lfunc_end0-cdisplay_contrast_get_type
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
	leaq	cdisplay_contrast_info(%rip), %rax
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
	callq	cdisplay_contrast_register_type
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_module_register, .Lfunc_end2-gimp_module_register
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_contrast_register_type,@function
cdisplay_contrast_register_type:        # @cdisplay_contrast_register_type
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
	leaq	cdisplay_contrast_register_type.g_define_type_info(%rip), %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_module_register_type@PLT
	movq	%rax, cdisplay_contrast_type_id(%rip)
	movq	cdisplay_contrast_type_id(%rip), %rax
	movq	%rax, -16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cdisplay_contrast_register_type, .Lfunc_end3-cdisplay_contrast_register_type
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_contrast_class_intern_init,@function
cdisplay_contrast_class_intern_init:    # @cdisplay_contrast_class_intern_init
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
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, cdisplay_contrast_parent_class(%rip)
	cmpl	$0, CdisplayContrast_private_offset(%rip)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	CdisplayContrast_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	cdisplay_contrast_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cdisplay_contrast_class_intern_init, .Lfunc_end4-cdisplay_contrast_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_contrast_class_finalize,@function
cdisplay_contrast_class_finalize:       # @cdisplay_contrast_class_finalize
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cdisplay_contrast_class_finalize, .Lfunc_end5-cdisplay_contrast_class_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_contrast_init,@function
cdisplay_contrast_init:                 # @cdisplay_contrast_init
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
	.size	cdisplay_contrast_init, .Lfunc_end6-cdisplay_contrast_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4576918229304087675     # double 0.01
.LCPI7_1:
	.quad	4621819117588971520     # double 10
.LCPI7_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	cdisplay_contrast_class_init,@function
cdisplay_contrast_class_init:           # @cdisplay_contrast_class_init
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
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movl	$263, %ecx              # imm = 0x107
	leaq	cdisplay_contrast_set_property(%rip), %rdx
	leaq	cdisplay_contrast_get_property(%rip), %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	dgettext@PLT
	leaq	cdisplay_contrast_configure(%rip), %rdx
	leaq	cdisplay_contrast_convert_surface(%rip), %rsi
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.9(%rip), %r8
	movq	-24(%rbp), %r9
	movq	%rax, 136(%r9)
	movq	-24(%rbp), %rax
	movq	%r8, 144(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 208(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 216(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 184(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	cdisplay_contrast_class_init, .Lfunc_end7-cdisplay_contrast_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_contrast_get_property,@function
cdisplay_contrast_get_property:         # @cdisplay_contrast_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	cdisplay_contrast_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB8_5
.LBB8_2:                                # %sw.default
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
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
	movl	$157, %edx
	leaq	.L.str.13(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	cdisplay_contrast_get_property, .Lfunc_end8-cdisplay_contrast_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_contrast_set_property,@function
cdisplay_contrast_set_property:         # @cdisplay_contrast_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	cdisplay_contrast_get_type@PLT
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
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	cdisplay_contrast_set_contrast
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
	movl	$176, %edx
	leaq	.L.str.13(%rip), %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB9_5
.LBB9_5:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	cdisplay_contrast_set_property, .Lfunc_end9-cdisplay_contrast_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	cdisplay_contrast_convert_surface,@function
cdisplay_contrast_convert_surface:      # @cdisplay_contrast_convert_surface
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	cdisplay_contrast_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
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
	cmpl	$0, -52(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_12
.LBB10_2:                               # %if.end
	movl	-32(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$2, %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
.LBB10_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	je	.LBB10_12
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB10_5:                               # %while.cond.7
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, %eax
	je	.LBB10_11
# BB#6:                                 # %while.body.10
                                        #   in Loop: Header=BB10_5 Depth=2
	jmp	.LBB10_7
.LBB10_7:                               # %do.body
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-48(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -96(%rbp)
	movl	-92(%rbp), %ecx
	shll	$8, %ecx
	movl	-96(%rbp), %edx
	addl	$1, %edx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	movl	%eax, -68(%rbp)
	movl	-88(%rbp), %eax
	shll	$8, %eax
	movl	-96(%rbp), %esi
	addl	$1, %esi
	xorl	%edi, %edi
	movl	%edi, %edx
	divl	%esi
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	shll	$8, %eax
	movl	-96(%rbp), %esi
	addl	$1, %esi
	xorl	%edi, %edi
	movl	%edi, %edx
	divl	%esi
	movl	%eax, -76(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -80(%rbp)
# BB#8:                                 # %do.end
                                        #   in Loop: Header=BB10_5 Depth=2
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	40(%rcx,%rax), %edx
	movl	%edx, -68(%rbp)
	movslq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	40(%rcx,%rax), %edx
	movl	%edx, -72(%rbp)
	movslq	-76(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	40(%rcx,%rax), %edx
	movl	%edx, -76(%rbp)
# BB#9:                                 # %do.body.33
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	-80(%rbp), %eax
	imull	-68(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -100(%rbp)
	movl	-80(%rbp), %eax
	imull	-72(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -104(%rbp)
	movl	-80(%rbp), %eax
	imull	-76(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	shrl	$8, %eax
	addl	-108(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-104(%rbp), %eax
	shrl	$8, %eax
	addl	-104(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-100(%rbp), %eax
	shrl	$8, %eax
	addl	-100(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movl	-80(%rbp), %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 3(%rdx)
# BB#10:                                # %do.end.59
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB10_5
.LBB10_11:                              # %while.end
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB10_3
.LBB10_12:                              # %while.end.61
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	cdisplay_contrast_convert_surface, .Lfunc_end10-cdisplay_contrast_convert_surface
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI11_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	cdisplay_contrast_configure,@function
cdisplay_contrast_configure:            # @cdisplay_contrast_configure
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	cdisplay_contrast_get_type@PLT
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
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI11_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movl	$3, %edx
	movq	%rax, %rdi
	callq	gimp_prop_spin_button_new@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget@PLT
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	cdisplay_contrast_configure, .Lfunc_end11-cdisplay_contrast_configure
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
.LCPI13_1:
	.quad	4638672431819522048     # double 127.5
.LCPI13_2:
	.quad	4643176031446892544     # double 255
.LCPI13_3:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI13_4:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	cdisplay_contrast_set_contrast,@function
cdisplay_contrast_set_contrast:         # @cdisplay_contrast_set_contrast
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
	subq	$48, %rsp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jb	.LBB13_2
# BB#1:                                 # %if.then
	movsd	.LCPI13_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB13_2:                               # %if.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	32(%rax), %xmm0
	jne	.LBB13_3
	jp	.LBB13_3
	jmp	.LBB13_8
.LBB13_3:                               # %if.then.3
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movl	$0, -20(%rbp)
.LBB13_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB13_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB13_4 Depth=1
	movsd	.LCPI13_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI13_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI13_3(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	.LCPI13_4(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	-16(%rbp), %xmm4
	mulsd	%xmm3, %xmm4
	cvtsi2sdl	-20(%rbp), %xmm3
	mulsd	%xmm3, %xmm4
	divsd	%xmm2, %xmm4
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	callq	sin@PLT
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, 40(%rsi,%rdx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB13_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB13_4
.LBB13_7:                               # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_color_display_changed@PLT
.LBB13_8:                               # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	cdisplay_contrast_set_contrast, .Lfunc_end13-cdisplay_contrast_set_contrast
	.cfi_endproc

	.type	cdisplay_contrast_type_id,@object # @cdisplay_contrast_type_id
	.local	cdisplay_contrast_type_id
	.comm	cdisplay_contrast_type_id,8,8
	.type	cdisplay_contrast_info,@object # @cdisplay_contrast_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
cdisplay_contrast_info:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.size	cdisplay_contrast_info, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"High Contrast color display filter"
	.size	.L.str, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Jay Cox <jaycox@gimp.org>"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"v0.2"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(c) 2000, released under the GPL"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"October 14, 2000"
	.size	.L.str.4, 17

	.type	cdisplay_contrast_register_type.g_define_type_info,@object # @cdisplay_contrast_register_type.g_define_type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
cdisplay_contrast_register_type.g_define_type_info:
	.short	240                     # 0xf0
	.zero	6
	.quad	0
	.quad	0
	.quad	cdisplay_contrast_class_intern_init
	.quad	cdisplay_contrast_class_finalize
	.quad	0
	.short	296                     # 0x128
	.short	0                       # 0x0
	.zero	4
	.quad	cdisplay_contrast_init
	.quad	0
	.size	cdisplay_contrast_register_type.g_define_type_info, 72

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"CdisplayContrast"
	.size	.L.str.5, 17

	.type	cdisplay_contrast_parent_class,@object # @cdisplay_contrast_parent_class
	.local	cdisplay_contrast_parent_class
	.comm	cdisplay_contrast_parent_class,8,8
	.type	CdisplayContrast_private_offset,@object # @CdisplayContrast_private_offset
	.local	CdisplayContrast_private_offset
	.comm	CdisplayContrast_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"contrast"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp20-libgimp"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Contrast"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-colordisplay-contrast"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-display-filter-contrast"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.11, 54

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"display-filter-high-contrast.c"
	.size	.L.str.12, 31

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"property"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Contrast c_ycles:"
	.size	.L.str.14, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
