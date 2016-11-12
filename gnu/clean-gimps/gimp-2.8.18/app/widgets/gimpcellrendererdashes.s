	.text
	.file	"gimpcellrendererdashes.bc"
	.globl	gimp_cell_renderer_dashes_get_type
	.align	16, 0x90
	.type	gimp_cell_renderer_dashes_get_type,@function
gimp_cell_renderer_dashes_get_type:     # @gimp_cell_renderer_dashes_get_type
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
	movq	gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_cell_renderer_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$224, %edx
	movabsq	$gimp_cell_renderer_dashes_class_intern_init, %rdi
	movl	$64, %r8d
	movabsq	$gimp_cell_renderer_dashes_init, %rcx
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
	movabsq	$gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cell_renderer_dashes_get_type, .Lfunc_end0-gimp_cell_renderer_dashes_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_dashes_class_intern_init,@function
gimp_cell_renderer_dashes_class_intern_init: # @gimp_cell_renderer_dashes_class_intern_init
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
	movq	%rax, gimp_cell_renderer_dashes_parent_class
	cmpl	$0, GimpCellRendererDashes_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCellRendererDashes_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_cell_renderer_dashes_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_cell_renderer_dashes_class_intern_init, .Lfunc_end1-gimp_cell_renderer_dashes_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_dashes_init,@function
gimp_cell_renderer_dashes_init:         # @gimp_cell_renderer_dashes_init
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
	movl	$24, %eax
	movl	%eax, %ecx
	movl	$4, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc0_n
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_cell_renderer_dashes_init, .Lfunc_end2-gimp_cell_renderer_dashes_init
	.cfi_endproc

	.globl	gimp_cell_renderer_dashes_new
	.align	16, 0x90
	.type	gimp_cell_renderer_dashes_new,@function
gimp_cell_renderer_dashes_new:          # @gimp_cell_renderer_dashes_new
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
	callq	gimp_cell_renderer_dashes_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_cell_renderer_dashes_new, .Lfunc_end3-gimp_cell_renderer_dashes_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_dashes_class_init,@function
gimp_cell_renderer_dashes_class_init:   # @gimp_cell_renderer_dashes_class_init
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
	callq	gtk_cell_renderer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_cell_renderer_dashes_render, %rsi
	movabsq	$gimp_cell_renderer_dashes_get_size, %rdi
	movabsq	$gimp_cell_renderer_dashes_set_property, %rcx
	movabsq	$gimp_cell_renderer_dashes_get_property, %rdx
	movabsq	$gimp_cell_renderer_dashes_finalize, %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 48(%rax)
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
	callq	gimp_dash_pattern_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$226, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_boxed
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_cell_renderer_dashes_class_init, .Lfunc_end4-gimp_cell_renderer_dashes_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_dashes_finalize,@function
gimp_cell_renderer_dashes_finalize:     # @gimp_cell_renderer_dashes_finalize
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
	callq	gimp_cell_renderer_dashes_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_cell_renderer_dashes_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_cell_renderer_dashes_finalize, .Lfunc_end5-gimp_cell_renderer_dashes_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_dashes_get_property,@function
gimp_cell_renderer_dashes_get_property: # @gimp_cell_renderer_dashes_get_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	8(%rax), %r9
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$118, %edx
	movabsq	$.L.str.4, %rcx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#2:                                 # %do.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_cell_renderer_dashes_get_property, .Lfunc_end6-gimp_cell_renderer_dashes_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_dashes_set_property,@function
gimp_cell_renderer_dashes_set_property: # @gimp_cell_renderer_dashes_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_dashes_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movl	$24, %edx
	movq	-40(%rbp), %rdi
	movq	56(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_dash_pattern_fill_segments
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$137, %edx
	movabsq	$.L.str.4, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_cell_renderer_dashes_set_property, .Lfunc_end7-gimp_cell_renderer_dashes_set_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_cell_renderer_dashes_get_size,@function
gimp_cell_renderer_dashes_get_size:     # @gimp_cell_renderer_dashes_get_size
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
	subq	$96, %rsp
	movq	16(%rbp), %rax
	leaq	-60(%rbp), %r10
	leaq	-64(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r10, %rsi
	movq	%r11, %rdx
	callq	gtk_cell_renderer_get_alignment
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_cell_renderer_get_padding
	cmpq	$0, -24(%rbp)
	je	.LBB8_15
# BB#1:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB8_9
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB8_4
# BB#3:                                 # %cond.true
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-60(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
	cvtss2sd	-60(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB8_5:                                # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$96, %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB8_7
# BB#6:                                 # %cond.true.10
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false.11
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB8_8
.LBB8_8:                                # %cond.end.12
	movl	-92(%rbp), %eax         # 4-byte Reload
	addl	-68(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB8_9:                                # %if.end
	cmpq	$0, -40(%rbp)
	je	.LBB8_14
# BB#10:                                # %if.then.15
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	subl	$4, %ecx
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB8_12
# BB#11:                                # %cond.true.23
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	jmp	.LBB8_13
.LBB8_12:                               # %cond.false.24
	xorl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB8_13
.LBB8_13:                               # %cond.end.25
	movl	-96(%rbp), %eax         # 4-byte Reload
	addl	-72(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB8_14:                               # %if.end.28
	jmp	.LBB8_20
.LBB8_15:                               # %if.else
	cmpq	$0, -32(%rbp)
	je	.LBB8_17
# BB#16:                                # %if.then.30
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB8_17:                               # %if.end.31
	cmpq	$0, -40(%rbp)
	je	.LBB8_19
# BB#18:                                # %if.then.33
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.LBB8_19:                               # %if.end.34
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.35
	movl	-68(%rbp), %eax
	shll	$1, %eax
	addl	$96, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-72(%rbp), %eax
	shll	$1, %eax
	addl	$4, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_cell_renderer_dashes_get_size, .Lfunc_end8-gimp_cell_renderer_dashes_get_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	gimp_cell_renderer_dashes_render,@function
gimp_cell_renderer_dashes_render:       # @gimp_cell_renderer_dashes_render
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
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_cell_renderer_dashes_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_style
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_cell_renderer_get_padding
	movq	-8(%rbp), %rdi
	callq	gtk_cell_renderer_get_sensitive
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$4, -76(%rbp)
	jmp	.LBB9_16
.LBB9_2:                                # %if.else
	movl	-52(%rbp), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB9_7
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	je	.LBB9_5
# BB#4:                                 # %if.then.7
	movl	$3, -76(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.else.8
	movl	$1, -76(%rbp)
.LBB9_6:                                # %if.end
	jmp	.LBB9_15
.LBB9_7:                                # %if.else.9
	movl	-52(%rbp), %eax
	andl	$2, %eax
	cmpl	$2, %eax
	jne	.LBB9_10
# BB#8:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_state
	cmpl	$2, %eax
	jne	.LBB9_10
# BB#9:                                 # %if.then.14
	movl	$2, -76(%rbp)
	jmp	.LBB9_14
.LBB9_10:                               # %if.else.15
	movq	-24(%rbp), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB9_12
# BB#11:                                # %if.then.18
	movl	$0, -76(%rbp)
	jmp	.LBB9_13
.LBB9_12:                               # %if.else.19
	movl	$4, -76(%rbp)
.LBB9_13:                               # %if.end.20
	jmp	.LBB9_14
.LBB9_14:                               # %if.end.21
	jmp	.LBB9_15
.LBB9_15:                               # %if.end.22
	jmp	.LBB9_16
.LBB9_16:                               # %if.end.23
	movl	$2, %eax
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-40(%rbp), %rcx
	movl	12(%rcx), %esi
	subl	$4, %esi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -128(%rbp)        # 4-byte Spill
	cltd
	movl	-124(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-128(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, -108(%rbp)
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	-80(%rbp), %edi
	shll	$1, %edi
	subl	%edi, %eax
	movl	%eax, -100(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_cairo_create
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gdk_cairo_rectangle
	movq	-96(%rbp), %rdi
	callq	cairo_clip
	movl	$0, -104(%rbp)
.LBB9_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-104(%rbp), %eax
	movl	-100(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_25
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB9_17 Depth=1
	movl	$24, %eax
	movl	-104(%rbp), %ecx
	shrl	$1, %ecx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-132(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	movl	%edx, -112(%rbp)
	movl	-112(%rbp), %edx
	movl	%edx, %esi
	movq	-64(%rbp), %rdi
	movq	56(%rdi), %rdi
	cmpl	$0, (%rdi,%rsi,4)
	je	.LBB9_23
# BB#19:                                # %if.then.32
                                        #   in Loop: Header=BB9_17 Depth=1
	movl	$2, %eax
	movq	-96(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	addl	-80(%rbp), %edx
	addl	-104(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	cvtsi2sdl	-108(%rbp), %xmm1
	movl	-100(%rbp), %edx
	subl	-104(%rbp), %edx
	cmpl	%edx, %eax
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jge	.LBB9_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB9_17 Depth=1
	movl	$2, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB9_22
.LBB9_21:                               # %cond.false
                                        #   in Loop: Header=BB9_17 Depth=1
	movl	-100(%rbp), %eax
	subl	-104(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB9_22:                               # %cond.end
                                        #   in Loop: Header=BB9_17 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI9_0, %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdl	%eax, %xmm2
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
.LBB9_23:                               # %if.end.42
                                        #   in Loop: Header=BB9_17 Depth=1
	jmp	.LBB9_24
.LBB9_24:                               # %for.inc
                                        #   in Loop: Header=BB9_17 Depth=1
	movl	-104(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB9_17
.LBB9_25:                               # %for.end
	movq	-96(%rbp), %rdi
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	addq	$324, %rdx              # imm = 0x144
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	callq	gdk_cairo_set_source_color
	movq	-96(%rbp), %rdi
	callq	cairo_fill
	movq	-96(%rbp), %rdi
	callq	cairo_destroy
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_cell_renderer_dashes_render, .Lfunc_end9-gimp_cell_renderer_dashes_render
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
	movl	$.L.str.5, %r9d
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

	.type	gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile,@object # @gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile
	.local	gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile
	.comm	gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCellRendererDashes"
	.size	.L.str, 23

	.type	gimp_cell_renderer_dashes_parent_class,@object # @gimp_cell_renderer_dashes_parent_class
	.local	gimp_cell_renderer_dashes_parent_class
	.comm	gimp_cell_renderer_dashes_parent_class,8,8
	.type	GimpCellRendererDashes_private_offset,@object # @GimpCellRendererDashes_private_offset
	.local	GimpCellRendererDashes_private_offset
	.comm	GimpCellRendererDashes_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"pattern"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.2, 54

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimpcellrendererdashes.c"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"property"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Gimp-Widgets"
	.size	.L.str.5, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
