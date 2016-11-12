	.text
	.file	"gimpcanvasboundary.bc"
	.globl	gimp_canvas_boundary_get_type
	.align	16, 0x90
	.type	gimp_canvas_boundary_get_type,@function
gimp_canvas_boundary_get_type:          # @gimp_canvas_boundary_get_type
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
	movq	gimp_canvas_boundary_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_boundary_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_canvas_item_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$208, %edx
	movabsq	$gimp_canvas_boundary_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_boundary_init, %rcx
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
	movabsq	$gimp_canvas_boundary_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_boundary_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_boundary_get_type, .Lfunc_end0-gimp_canvas_boundary_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_boundary_class_intern_init,@function
gimp_canvas_boundary_class_intern_init: # @gimp_canvas_boundary_class_intern_init
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
	movq	%rax, gimp_canvas_boundary_parent_class
	cmpl	$0, GimpCanvasBoundary_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasBoundary_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_boundary_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_boundary_class_intern_init, .Lfunc_end1-gimp_canvas_boundary_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_boundary_init,@function
gimp_canvas_boundary_init:              # @gimp_canvas_boundary_init
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
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_canvas_item_set_line_cap
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_canvas_boundary_init, .Lfunc_end2-gimp_canvas_boundary_init
	.cfi_endproc

	.globl	gimp_canvas_boundary_new
	.align	16, 0x90
	.type	gimp_canvas_boundary_new,@function
gimp_canvas_boundary_new:               # @gimp_canvas_boundary_new
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_boundary_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_canvas_boundary_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	movabsq	$.L.str.6, %rdx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	-24(%rbp), %r10
	movq	-48(%rbp), %r11
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$2, %al
	callq	g_object_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_canvas_boundary_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	movl	%ecx, %ebx
	movq	%rax, %rdi
	movl	%ebx, %esi
	callq	g_memdup
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-36(%rbp), %esi
	movq	-80(%rbp), %rax
	movl	%esi, 8(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB3_13:                               # %return
	movq	-16(%rbp), %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_boundary_new, .Lfunc_end3-gimp_canvas_boundary_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	-4535124824762089472    # double -262144
.LCPI4_1:
	.quad	4688247212092686336     # double 262144
	.text
	.align	16, 0x90
	.type	gimp_canvas_boundary_class_init,@function
gimp_canvas_boundary_class_init:        # @gimp_canvas_boundary_class_init
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$227, %ecx
	movabsq	$gimp_canvas_boundary_get_extents, %rdx
	movabsq	$gimp_canvas_boundary_draw, %r8
	movabsq	$gimp_canvas_boundary_get_property, %r9
	movabsq	$gimp_canvas_boundary_set_property, %r10
	movabsq	$gimp_canvas_boundary_finalize, %r11
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 168(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 176(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_array
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_pointer
	movl	$2, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$40, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_boundary_class_init, .Lfunc_end4-gimp_canvas_boundary_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_boundary_finalize,@function
gimp_canvas_boundary_finalize:          # @gimp_canvas_boundary_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_canvas_boundary_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
.LBB5_4:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_canvas_boundary_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_boundary_finalize, .Lfunc_end5-gimp_canvas_boundary_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_boundary_set_property,@function
gimp_canvas_boundary_set_property:      # @gimp_canvas_boundary_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_canvas_boundary_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB6_10
# BB#14:                                # %entry
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	jmp	.LBB6_13
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	callq	g_value_get_pointer
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB6_4:                                # %if.end
	cmpq	$0, -48(%rbp)
	je	.LBB6_6
# BB#5:                                 # %if.then.7
	movl	$72, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_memdup
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
.LBB6_7:                                # %if.end.11
	jmp	.LBB6_13
.LBB6_8:                                # %sw.bb.12
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	jmp	.LBB6_13
.LBB6_9:                                # %sw.bb.14
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	jmp	.LBB6_13
.LBB6_10:                               # %sw.default
	jmp	.LBB6_11
.LBB6_11:                               # %do.body
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
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$188, %edx
	movabsq	$.L.str.10, %rcx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#12:                                # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_boundary_set_property, .Lfunc_end6-gimp_canvas_boundary_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_8
	.quad	.LBB6_9

	.text
	.align	16, 0x90
	.type	gimp_canvas_boundary_get_property,@function
gimp_canvas_boundary_get_property:      # @gimp_canvas_boundary_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_boundary_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB7_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	jmp	.LBB7_8
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_pointer
	jmp	.LBB7_8
.LBB7_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_8
.LBB7_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_8
.LBB7_5:                                # %sw.default
	jmp	.LBB7_6
.LBB7_6:                                # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$216, %edx
	movabsq	$.L.str.10, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB7_8
.LBB7_8:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_boundary_get_property, .Lfunc_end7-gimp_canvas_boundary_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4

	.text
	.align	16, 0x90
	.type	gimp_canvas_boundary_draw,@function
gimp_canvas_boundary_draw:              # @gimp_canvas_boundary_draw
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_boundary_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movslq	8(%rax), %rdi
	callq	g_malloc0_n
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_canvas_boundary_transform
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	callq	gimp_cairo_add_segments
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_boundary_draw, .Lfunc_end8-gimp_canvas_boundary_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_boundary_get_extents,@function
gimp_canvas_boundary_get_extents:       # @gimp_canvas_boundary_get_extents
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_canvas_boundary_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movslq	8(%rax), %rdi
	callq	g_malloc0_n
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_canvas_boundary_transform
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	8(%rax), %ecx
	jge	.LBB9_2
# BB#1:                                 # %cond.true
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB9_3:                                # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-48(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB9_5
# BB#4:                                 # %cond.true.17
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false.20
	movq	-48(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB9_6:                                # %cond.end.23
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-48(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB9_8
# BB#7:                                 # %cond.true.31
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB9_9
.LBB9_8:                                # %cond.false.34
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB9_9:                                # %cond.end.37
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-48(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jle	.LBB9_11
# BB#10:                                # %cond.true.45
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	jmp	.LBB9_12
.LBB9_11:                               # %cond.false.48
	movq	-48(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB9_12:                               # %cond.end.51
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	$1, -68(%rbp)
.LBB9_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB9_40
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	cmpl	8(%rax), %ecx
	jge	.LBB9_16
# BB#15:                                # %cond.true.63
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB9_17
.LBB9_16:                               # %cond.false.67
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB9_17:                               # %cond.end.71
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	-48(%rbp), %rcx
	movl	4(%rcx), %eax
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	-48(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB9_19
# BB#18:                                # %cond.true.81
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB9_20
.LBB9_19:                               # %cond.false.85
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB9_20:                               # %cond.end.89
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	-48(%rbp), %rcx
	movl	(%rcx), %eax
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	-48(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB9_22
# BB#21:                                # %cond.true.99
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB9_23
.LBB9_22:                               # %cond.false.103
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB9_23:                               # %cond.end.107
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	-48(%rbp), %rcx
	movl	4(%rcx), %eax
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	-48(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jle	.LBB9_25
# BB#24:                                # %cond.true.117
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	jmp	.LBB9_26
.LBB9_25:                               # %cond.false.121
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
.LBB9_26:                               # %cond.end.125
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB9_28
# BB#27:                                # %cond.true.129
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB9_29
.LBB9_28:                               # %cond.false.130
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB9_29:                               # %cond.end.131
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB9_31
# BB#30:                                # %cond.true.135
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB9_32
.LBB9_31:                               # %cond.false.136
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB9_32:                               # %cond.end.137
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.LBB9_34
# BB#33:                                # %cond.true.141
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB9_35
.LBB9_34:                               # %cond.false.142
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB9_35:                               # %cond.end.143
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jle	.LBB9_37
# BB#36:                                # %cond.true.147
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB9_38
.LBB9_37:                               # %cond.false.148
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB9_38:                               # %cond.end.149
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
# BB#39:                                # %for.inc
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB9_13
.LBB9_40:                               # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	leaq	-40(%rbp), %rdi
	movl	-52(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -40(%rbp)
	movl	-56(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -36(%rbp)
	movl	-60(%rbp), %ecx
	subl	-52(%rbp), %ecx
	addl	$4, %ecx
	movl	%ecx, -32(%rbp)
	movl	-64(%rbp), %ecx
	subl	-56(%rbp), %ecx
	addl	$4, %ecx
	movl	%ecx, -28(%rbp)
	callq	cairo_region_create_rectangle
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_canvas_boundary_get_extents, .Lfunc_end9-gimp_canvas_boundary_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.1, %r9d
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
	.type	gimp_canvas_boundary_transform,@function
gimp_canvas_boundary_transform:         # @gimp_canvas_boundary_transform
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_boundary_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB11_6
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
.LBB11_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB11_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB11_2 Depth=1
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$20, %rax, %rax
	addq	(%rcx), %rax
	cvtsi2sdl	(%rax), %xmm0
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$20, %rax, %rax
	addq	(%rcx), %rax
	cvtsi2sdl	4(%rax), %xmm1
	callq	gimp_matrix3_transform_point
	movq	-16(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	24(%rax), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	32(%rax), %xmm1
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	-24(%rbp), %rcx
	addq	$4, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_display_shell_transform_xy
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$20, %rax, %rax
	addq	(%rcx), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$20, %rax, %rax
	addq	(%rcx), %rax
	cvtsi2sdl	12(%rax), %xmm1
	callq	gimp_matrix3_transform_point
	movq	-16(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	24(%rax), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	32(%rax), %xmm1
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	addq	$8, %rax
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	-24(%rbp), %rcx
	addq	$12, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_display_shell_transform_xy
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB11_2
.LBB11_5:                               # %for.end
	jmp	.LBB11_16
.LBB11_6:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_segments
	movl	$0, -36(%rbp)
.LBB11_7:                               # %for.cond.38
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB11_15
# BB#8:                                 # %for.body.42
                                        #   in Loop: Header=BB11_7 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$20, %rax, %rax
	addq	(%rcx), %rax
	movb	16(%rax), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	jne	.LBB11_13
# BB#9:                                 # %if.then.47
                                        #   in Loop: Header=BB11_7 Depth=1
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	cmpl	8(%rax), %ecx
	jne	.LBB11_11
# BB#10:                                # %if.then.56
                                        #   in Loop: Header=BB11_7 Depth=1
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, (%rax)
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 8(%rax)
	jmp	.LBB11_12
.LBB11_11:                              # %if.else.64
                                        #   in Loop: Header=BB11_7 Depth=1
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 4(%rax)
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 12(%rax)
.LBB11_12:                              # %if.end
                                        #   in Loop: Header=BB11_7 Depth=1
	jmp	.LBB11_13
.LBB11_13:                              # %if.end.73
                                        #   in Loop: Header=BB11_7 Depth=1
	jmp	.LBB11_14
.LBB11_14:                              # %for.inc.74
                                        #   in Loop: Header=BB11_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB11_7
.LBB11_15:                              # %for.end.76
	jmp	.LBB11_16
.LBB11_16:                              # %if.end.77
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_canvas_boundary_transform, .Lfunc_end11-gimp_canvas_boundary_transform
	.cfi_endproc

	.type	gimp_canvas_boundary_get_type.g_define_type_id__volatile,@object # @gimp_canvas_boundary_get_type.g_define_type_id__volatile
	.local	gimp_canvas_boundary_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_boundary_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasBoundary"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_boundary_new,@object # @__func__.gimp_canvas_boundary_new
.L__func__.gimp_canvas_boundary_new:
	.asciz	"gimp_canvas_boundary_new"
	.size	.L__func__.gimp_canvas_boundary_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"shell"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"transform"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"offset-x"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"offset-y"
	.size	.L.str.6, 9

	.type	gimp_canvas_boundary_parent_class,@object # @gimp_canvas_boundary_parent_class
	.local	gimp_canvas_boundary_parent_class
	.comm	gimp_canvas_boundary_parent_class,8,8
	.type	GimpCanvasBoundary_private_offset,@object # @GimpCanvasBoundary_private_offset
	.local	GimpCanvasBoundary_private_offset
	.comm	GimpCanvasBoundary_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"segs"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.8, 54

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimpcanvasboundary.c"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
