	.text
	.file	"gimpcanvasrectangle.bc"
	.globl	gimp_canvas_rectangle_get_type
	.align	16, 0x90
	.type	gimp_canvas_rectangle_get_type,@function
gimp_canvas_rectangle_get_type:         # @gimp_canvas_rectangle_get_type
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
	movq	gimp_canvas_rectangle_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_rectangle_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_canvas_rectangle_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_rectangle_init, %rcx
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
	movabsq	$gimp_canvas_rectangle_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_rectangle_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_rectangle_get_type, .Lfunc_end0-gimp_canvas_rectangle_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_rectangle_class_intern_init,@function
gimp_canvas_rectangle_class_intern_init: # @gimp_canvas_rectangle_class_intern_init
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
	movq	%rax, gimp_canvas_rectangle_parent_class
	cmpl	$0, GimpCanvasRectangle_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasRectangle_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_rectangle_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_rectangle_class_intern_init, .Lfunc_end1-gimp_canvas_rectangle_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_rectangle_init,@function
gimp_canvas_rectangle_init:             # @gimp_canvas_rectangle_init
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
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_canvas_rectangle_init, .Lfunc_end2-gimp_canvas_rectangle_init
	.cfi_endproc

	.globl	gimp_canvas_rectangle_new
	.align	16, 0x90
	.type	gimp_canvas_rectangle_new,@function
gimp_canvas_rectangle_new:              # @gimp_canvas_rectangle_new
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
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movl	%esi, -60(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_rectangle_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_canvas_rectangle_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-24(%rbp), %rbx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-60(%rbp), %r10d
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$4, %al
	movq	%r11, -112(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -16(%rbp)
.LBB3_13:                               # %return
	movq	-16(%rbp), %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_rectangle_new, .Lfunc_end3-gimp_canvas_rectangle_new
	.cfi_endproc

	.globl	gimp_canvas_rectangle_set
	.align	16, 0x90
	.type	gimp_canvas_rectangle_set,@function
gimp_canvas_rectangle_set:              # @gimp_canvas_rectangle_set
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_rectangle_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_rectangle_set, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_begin_change
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.7, %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movb	$4, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_end_change
.LBB4_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_rectangle_set, .Lfunc_end4-gimp_canvas_rectangle_set
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4535124824762089472    # double -262144
.LCPI5_1:
	.quad	4688247212092686336     # double 262144
	.text
	.align	16, 0x90
	.type	gimp_canvas_rectangle_class_init,@function
gimp_canvas_rectangle_class_init:       # @gimp_canvas_rectangle_class_init
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
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movabsq	$gimp_canvas_rectangle_get_extents, %rdx
	movabsq	$gimp_canvas_rectangle_draw, %r8
	movabsq	$gimp_canvas_rectangle_get_property, %r9
	movabsq	$gimp_canvas_rectangle_set_property, %r10
	movq	%rax, -24(%rbp)
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
	callq	g_param_spec_double
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$2, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
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
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
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
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
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
.Lfunc_end5:
	.size	gimp_canvas_rectangle_class_init, .Lfunc_end5-gimp_canvas_rectangle_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_rectangle_set_property,@function
gimp_canvas_rectangle_set_property:     # @gimp_canvas_rectangle_set_property
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
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_rectangle_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	jmp	.LBB6_9
.LBB6_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	jmp	.LBB6_9
.LBB6_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	jmp	.LBB6_9
.LBB6_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	jmp	.LBB6_9
.LBB6_5:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 32(%rdi)
	jmp	.LBB6_9
.LBB6_6:                                # %sw.default
	jmp	.LBB6_7
.LBB6_7:                                # %do.body
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$163, %edx
	movabsq	$.L.str.12, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB6_9
.LBB6_9:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_rectangle_set_property, .Lfunc_end6-gimp_canvas_rectangle_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5

	.text
	.align	16, 0x90
	.type	gimp_canvas_rectangle_get_property,@function
gimp_canvas_rectangle_get_property:     # @gimp_canvas_rectangle_get_property
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
	callq	gimp_canvas_rectangle_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB7_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_9
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_9
.LBB7_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_9
.LBB7_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_9
.LBB7_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_9
.LBB7_6:                                # %sw.default
	jmp	.LBB7_7
.LBB7_7:                                # %do.body
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$195, %edx
	movabsq	$.L.str.12, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB7_9
.LBB7_9:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_rectangle_get_property, .Lfunc_end7-gimp_canvas_rectangle_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4
	.quad	.LBB7_5

	.text
	.align	16, 0x90
	.type	gimp_canvas_rectangle_draw,@function
gimp_canvas_rectangle_draw:             # @gimp_canvas_rectangle_draw
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_rectangle_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %r8
	leaq	-64(%rbp), %r9
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_canvas_rectangle_transform
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	cairo_rectangle
	movq	-32(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_fill
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
.LBB8_3:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_rectangle_draw, .Lfunc_end8-gimp_canvas_rectangle_draw
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4634204016564240384     # double 64
.LCPI9_1:
	.quad	4613937818241073152     # double 3
.LCPI9_2:
	.quad	4609434218613702656     # double 1.5
.LCPI9_3:
	.quad	4611686018427387904     # double 2
.LCPI9_4:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_canvas_rectangle_get_extents,@function
gimp_canvas_rectangle_get_extents:      # @gimp_canvas_rectangle_get_extents
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_canvas_rectangle_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-80(%rbp), %r9
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_canvas_rectangle_transform
	movq	-32(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rdi
	movsd	.LCPI9_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_4, %xmm1         # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	cairo_region_create_rectangle
	movq	%rax, -8(%rbp)
	jmp	.LBB9_6
.LBB9_2:                                # %if.else
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_5
# BB#3:                                 # %land.lhs.true
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_5
# BB#4:                                 # %if.then.17
	leaq	-48(%rbp), %rdi
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movl	$3, -40(%rbp)
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	cairo_region_create_rectangle
	leaq	-48(%rbp), %rsi
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -88(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-72(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -48(%rbp)
	movq	-88(%rbp), %rdi
	movq	-152(%rbp), %rsi        # 8-byte Reload
	callq	cairo_region_union_rectangle
	leaq	-48(%rbp), %rsi
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movsd	%xmm1, -184(%rbp)       # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movl	$3, -36(%rbp)
	movq	-88(%rbp), %rdi
	movq	-176(%rbp), %rsi        # 8-byte Reload
	callq	cairo_region_union_rectangle
	leaq	-48(%rbp), %rsi
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-80(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movq	-88(%rbp), %rdi
	movq	-200(%rbp), %rsi        # 8-byte Reload
	callq	cairo_region_union_rectangle
	movq	-88(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %if.else.58
	leaq	-48(%rbp), %rdi
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	-224(%rbp), %rdi        # 8-byte Reload
	callq	cairo_region_create_rectangle
	movq	%rax, -8(%rbp)
.LBB9_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_canvas_rectangle_get_extents, .Lfunc_end9-gimp_canvas_rectangle_get_extents
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_canvas_rectangle_transform,@function
gimp_canvas_rectangle_transform:        # @gimp_canvas_rectangle_transform
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_canvas_rectangle_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	16(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	jbe	.LBB11_2
# BB#1:                                 # %cond.true
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	16(%rax), %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB11_3:                               # %cond.end
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	24(%rax), %xmm2
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jbe	.LBB11_5
# BB#4:                                 # %cond.true.13
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB11_6
.LBB11_5:                               # %cond.false.15
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	24(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB11_6:                               # %cond.end.19
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movq	-56(%rbp), %rdx
	addsd	16(%rdx), %xmm1
	ucomisd	%xmm1, %xmm0
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	jbe	.LBB11_8
# BB#7:                                 # %cond.true.26
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB11_9
.LBB11_8:                               # %cond.false.28
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	16(%rax), %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB11_9:                               # %cond.end.32
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	24(%rax), %xmm2
	ucomisd	%xmm2, %xmm1
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jbe	.LBB11_11
# BB#10:                                # %cond.true.39
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB11_12
.LBB11_11:                              # %cond.false.41
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	24(%rax), %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB11_12:                              # %cond.end.45
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, -64(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, -72(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	%xmm0, -88(%rbp)
	movq	-56(%rbp), %rdx
	cmpl	$0, 32(%rdx)
	je	.LBB11_14
# BB#13:                                # %if.then
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB11_21
.LBB11_14:                              # %if.else
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	-64(%rbp), %xmm2
	movq	-24(%rbp), %rax
	movsd	%xmm2, (%rax)
	movaps	%xmm1, %xmm2
	addsd	-72(%rbp), %xmm2
	movq	-32(%rbp), %rax
	movsd	%xmm2, (%rax)
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm2
	movq	-40(%rbp), %rax
	movsd	%xmm2, (%rax)
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movq	-32(%rbp), %rax
	subsd	(%rax), %xmm2
	movq	-48(%rbp), %rax
	movsd	%xmm2, (%rax)
	movq	-40(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_16
# BB#15:                                # %cond.true.59
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB11_17
.LBB11_16:                              # %cond.false.60
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB11_17:                              # %cond.end.61
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	ucomisd	(%rax), %xmm1
	jbe	.LBB11_19
# BB#18:                                # %cond.true.64
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB11_20
.LBB11_19:                              # %cond.false.65
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB11_20:                              # %cond.end.66
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB11_21:                              # %if.end
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_canvas_rectangle_transform, .Lfunc_end11-gimp_canvas_rectangle_transform
	.cfi_endproc

	.type	gimp_canvas_rectangle_get_type.g_define_type_id__volatile,@object # @gimp_canvas_rectangle_get_type.g_define_type_id__volatile
	.local	gimp_canvas_rectangle_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_rectangle_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasRectangle"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_rectangle_new,@object # @__func__.gimp_canvas_rectangle_new
.L__func__.gimp_canvas_rectangle_new:
	.asciz	"gimp_canvas_rectangle_new"
	.size	.L__func__.gimp_canvas_rectangle_new, 26

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
	.asciz	"x"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"y"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"width"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"height"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"filled"
	.size	.L.str.8, 7

	.type	.L__func__.gimp_canvas_rectangle_set,@object # @__func__.gimp_canvas_rectangle_set
.L__func__.gimp_canvas_rectangle_set:
	.asciz	"gimp_canvas_rectangle_set"
	.size	.L__func__.gimp_canvas_rectangle_set, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_CANVAS_RECTANGLE (rectangle)"
	.size	.L.str.9, 37

	.type	gimp_canvas_rectangle_parent_class,@object # @gimp_canvas_rectangle_parent_class
	.local	gimp_canvas_rectangle_parent_class
	.comm	gimp_canvas_rectangle_parent_class,8,8
	.type	GimpCanvasRectangle_private_offset,@object # @GimpCanvasRectangle_private_offset
	.local	GimpCanvasRectangle_private_offset
	.comm	GimpCanvasRectangle_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.10, 54

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimpcanvasrectangle.c"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"property"
	.size	.L.str.12, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
