	.text
	.file	"gimpcellrenderercolor.bc"
	.globl	gimp_cell_renderer_color_get_type
	.align	16, 0x90
	.type	gimp_cell_renderer_color_get_type,@function
gimp_cell_renderer_color_get_type:      # @gimp_cell_renderer_color_get_type
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
	movq	gimp_cell_renderer_color_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_cell_renderer_color_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gtk_cell_renderer_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$256, %edx              # imm = 0x100
	leaq	gimp_cell_renderer_color_class_intern_init(%rip), %rdi
	movl	$104, %r8d
	leaq	gimp_cell_renderer_color_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_cell_renderer_color_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_cell_renderer_color_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cell_renderer_color_get_type, .Lfunc_end0-gimp_cell_renderer_color_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_color_class_intern_init,@function
gimp_cell_renderer_color_class_intern_init: # @gimp_cell_renderer_color_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_cell_renderer_color_parent_class(%rip)
	cmpl	$0, GimpCellRendererColor_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpCellRendererColor_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_cell_renderer_color_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_cell_renderer_color_class_intern_init, .Lfunc_end1-gimp_cell_renderer_color_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_cell_renderer_color_init,@function
gimp_cell_renderer_color_init:          # @gimp_cell_renderer_color_init
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
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$56, %rdi
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_cell_renderer_color_init, .Lfunc_end2-gimp_cell_renderer_color_init
	.cfi_endproc

	.globl	gimp_cell_renderer_color_new
	.align	16, 0x90
	.type	gimp_cell_renderer_color_new,@function
gimp_cell_renderer_color_new:           # @gimp_cell_renderer_color_new
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
	callq	gimp_cell_renderer_color_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_cell_renderer_color_new, .Lfunc_end3-gimp_cell_renderer_color_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_color_class_init,@function
gimp_cell_renderer_color_class_init:    # @gimp_cell_renderer_color_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_cell_renderer_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_cell_renderer_color_render(%rip), %rsi
	leaq	gimp_cell_renderer_color_get_size(%rip), %rdi
	leaq	gimp_cell_renderer_color_set_property(%rip), %rcx
	leaq	gimp_cell_renderer_color_get_property(%rip), %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 160(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 168(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_rgb_get_type@PLT
	leaq	.L.str.1(%rip), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_boxed@PLT
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.2(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$1, %ecx
	movl	$231, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean@PLT
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.3(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$1, %r9d
	movl	$231, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$231, (%rsp)
	callq	g_param_spec_int@PLT
	movl	$3, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_cell_renderer_color_class_init, .Lfunc_end4-gimp_cell_renderer_color_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_color_get_property,@function
gimp_cell_renderer_color_get_property:  # @gimp_cell_renderer_color_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_color_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB5_1
	jmp	.LBB5_8
.LBB5_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB5_2
	jmp	.LBB5_9
.LBB5_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_4
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed@PLT
	jmp	.LBB5_7
.LBB5_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	88(%rax), %esi
	callq	g_value_set_boolean@PLT
	jmp	.LBB5_7
.LBB5_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	92(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB5_7
.LBB5_4:                                # %sw.default
	jmp	.LBB5_5
.LBB5_5:                                # %do.body
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
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$145, %edx
	leaq	.L.str.6(%rip), %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB5_7
.LBB5_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_cell_renderer_color_get_property, .Lfunc_end5-gimp_cell_renderer_color_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_color_set_property,@function
gimp_cell_renderer_color_set_property:  # @gimp_cell_renderer_color_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_color_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_8
.LBB6_8:                                # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_9
.LBB6_9:                                # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB6_3
	jmp	.LBB6_4
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	%rcx, 56(%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 64(%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 72(%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 80(%rax)
	jmp	.LBB6_7
.LBB6_2:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 88(%rdi)
	jmp	.LBB6_7
.LBB6_3:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	g_value_get_int@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 92(%rdi)
	jmp	.LBB6_7
.LBB6_4:                                # %sw.default
	jmp	.LBB6_5
.LBB6_5:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$172, %edx
	leaq	.L.str.6(%rip), %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB6_7
.LBB6_7:                                # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_cell_renderer_color_set_property, .Lfunc_end6-gimp_cell_renderer_color_set_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_cell_renderer_color_get_size,@function
gimp_cell_renderer_color_get_size:      # @gimp_cell_renderer_color_get_size
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
	subq	$128, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_color_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_settings@PLT
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movl	92(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_icon_size_lookup_for_settings@PLT
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_get_alignment@PLT
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_cell_renderer_get_padding@PLT
	cmpq	$0, -24(%rbp)
	je	.LBB7_17
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -68(%rbp)
	jle	.LBB7_17
# BB#2:                                 # %land.lhs.true.4
	cmpl	$0, -72(%rbp)
	jle	.LBB7_17
# BB#3:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB7_11
# BB#4:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_direction@PLT
	cmpl	$2, %eax
	jne	.LBB7_6
# BB#5:                                 # %cond.true
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtss2sd	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %cond.false
	cvtss2sd	-76(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB7_7:                                # %cond.end
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-68(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB7_9
# BB#8:                                 # %cond.true.17
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB7_10
.LBB7_9:                                # %cond.false.18
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB7_10
.LBB7_10:                               # %cond.end.19
	movl	-116(%rbp), %eax        # 4-byte Reload
	addl	-84(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_11:                               # %if.end
	cmpq	$0, -40(%rbp)
	je	.LBB7_16
# BB#12:                                # %if.then.22
	movss	-80(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	subl	-72(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB7_14
# BB#13:                                # %cond.true.30
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB7_15
.LBB7_14:                               # %cond.false.31
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB7_15
.LBB7_15:                               # %cond.end.32
	movl	-120(%rbp), %eax        # 4-byte Reload
	addl	-88(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_16:                               # %if.end.35
	jmp	.LBB7_22
.LBB7_17:                               # %if.else
	cmpq	$0, -32(%rbp)
	je	.LBB7_19
# BB#18:                                # %if.then.37
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB7_19:                               # %if.end.38
	cmpq	$0, -40(%rbp)
	je	.LBB7_21
# BB#20:                                # %if.then.40
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.LBB7_21:                               # %if.end.41
	jmp	.LBB7_22
.LBB7_22:                               # %if.end.42
	cmpq	$0, -48(%rbp)
	je	.LBB7_24
# BB#23:                                # %if.then.44
	movl	-68(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx)
.LBB7_24:                               # %if.end.47
	cmpq	$0, -56(%rbp)
	je	.LBB7_26
# BB#25:                                # %if.then.49
	movl	-72(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movl	%eax, (%rdx)
.LBB7_26:                               # %if.end.52
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_cell_renderer_color_get_size, .Lfunc_end7-gimp_cell_renderer_color_get_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_cell_renderer_color_render,@function
gimp_cell_renderer_color_render:        # @gimp_cell_renderer_color_render
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp27:
	.cfi_offset %rbx, -24
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_cell_renderer_color_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-88(%rbp), %rcx
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rcx, %rax
	addq	$4, %rax
	movq	%rcx, %r8
	addq	$8, %r8
	movq	%rcx, %r9
	addq	$12, %r9
	movq	%r8, -144(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%r9, -152(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_cell_renderer_color_get_size
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gtk_cell_renderer_get_padding@PLT
	movq	-48(%rbp), %rax
	movl	(%rax), %r11d
	addl	-92(%rbp), %r11d
	addl	-88(%rbp), %r11d
	movl	%r11d, -88(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %r11d
	addl	-96(%rbp), %r11d
	addl	-84(%rbp), %r11d
	movl	%r11d, -84(%rbp)
	movl	-92(%rbp), %r11d
	shll	$1, %r11d
	movl	-80(%rbp), %ebx
	subl	%r11d, %ebx
	movl	%ebx, -80(%rbp)
	movl	-96(%rbp), %r11d
	shll	$1, %r11d
	movl	-76(%rbp), %ebx
	subl	%r11d, %ebx
	movl	%ebx, -76(%rbp)
	cmpl	$2, -80(%rbp)
	jle	.LBB8_10
# BB#1:                                 # %land.lhs.true
	cmpl	$2, -76(%rbp)
	jle	.LBB8_10
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	movl	-88(%rbp), %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-84(%rbp), %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movl	-80(%rbp), %ecx
	subl	$2, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movl	-76(%rbp), %ecx
	subl	$2, %ecx
	cvtsi2sdl	%ecx, %xmm3
	callq	cairo_rectangle@PLT
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rsi
	callq	gimp_cairo_set_source_rgb@PLT
	movq	-104(%rbp), %rdi
	callq	cairo_fill@PLT
	movq	-72(%rbp), %rax
	cmpl	$0, 88(%rax)
	jne	.LBB8_5
# BB#3:                                 # %land.lhs.true.30
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	ucomisd	80(%rax), %xmm0
	jbe	.LBB8_5
# BB#4:                                 # %if.then.34
	movq	-104(%rbp), %rdi
	movl	-88(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_move_to@PLT
	movq	-104(%rbp), %rdi
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to@PLT
	movq	-104(%rbp), %rdi
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-84(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to@PLT
	movq	-104(%rbp), %rdi
	callq	cairo_close_path@PLT
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-104(%rbp), %rcx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	gimp_cairo_checkerboard_create@PLT
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	cairo_set_source@PLT
	movq	-128(%rbp), %rdi
	callq	cairo_pattern_destroy@PLT
	movq	-104(%rbp), %rdi
	callq	cairo_fill_preserve@PLT
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rsi
	callq	gimp_cairo_set_source_rgba@PLT
	movq	-104(%rbp), %rdi
	callq	cairo_fill@PLT
.LBB8_5:                                # %if.end
	movsd	.LCPI8_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-104(%rbp), %rdi
	cvtsi2sdl	-88(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	-84(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movl	-80(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_rectangle@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_cell_renderer_get_sensitive@PLT
	cmpl	$0, %eax
	je	.LBB8_7
# BB#6:                                 # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	gtk_widget_is_sensitive@PLT
	cmpl	$0, %eax
	jne	.LBB8_8
.LBB8_7:                                # %if.then.79
	movl	$4, -116(%rbp)
	jmp	.LBB8_9
.LBB8_8:                                # %if.else
	xorl	%eax, %eax
	movl	$3, %ecx
	movl	-60(%rbp), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -116(%rbp)
.LBB8_9:                                # %if.end.81
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-104(%rbp), %rdi
	callq	cairo_set_line_width@PLT
	movq	-104(%rbp), %rdi
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	addq	$24, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	callq	gdk_cairo_set_source_color@PLT
	movq	-104(%rbp), %rdi
	callq	cairo_stroke_preserve@PLT
	movq	-104(%rbp), %rdi
	callq	cairo_destroy@PLT
.LBB8_10:                               # %if.end.82
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_cell_renderer_color_render, .Lfunc_end8-gimp_cell_renderer_color_render
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
	leaq	.L.str.7(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.type	gimp_cell_renderer_color_get_type.g_define_type_id__volatile,@object # @gimp_cell_renderer_color_get_type.g_define_type_id__volatile
	.local	gimp_cell_renderer_color_get_type.g_define_type_id__volatile
	.comm	gimp_cell_renderer_color_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCellRendererColor"
	.size	.L.str, 22

	.type	gimp_cell_renderer_color_parent_class,@object # @gimp_cell_renderer_color_parent_class
	.local	gimp_cell_renderer_color_parent_class
	.comm	gimp_cell_renderer_color_parent_class,8,8
	.type	GimpCellRendererColor_private_offset,@object # @GimpCellRendererColor_private_offset
	.local	GimpCellRendererColor_private_offset
	.comm	GimpCellRendererColor_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"color"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"opaque"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"icon-size"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.4, 54

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimpcellrenderercolor.c"
	.size	.L.str.5, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"property"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"LibGimpWidgets"
	.size	.L.str.7, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
