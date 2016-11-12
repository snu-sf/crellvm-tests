	.text
	.file	"gimpcanvascorner.bc"
	.globl	gimp_canvas_corner_get_type
	.align	16, 0x90
	.type	gimp_canvas_corner_get_type,@function
gimp_canvas_corner_get_type:            # @gimp_canvas_corner_get_type
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
	movq	gimp_canvas_corner_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_corner_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_canvas_corner_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_corner_init, %rcx
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
	movabsq	$gimp_canvas_corner_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_corner_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_corner_get_type, .Lfunc_end0-gimp_canvas_corner_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_corner_class_intern_init,@function
gimp_canvas_corner_class_intern_init:   # @gimp_canvas_corner_class_intern_init
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
	movq	%rax, gimp_canvas_corner_parent_class
	cmpl	$0, GimpCanvasCorner_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasCorner_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_corner_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_corner_class_intern_init, .Lfunc_end1-gimp_canvas_corner_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_corner_init,@function
gimp_canvas_corner_init:                # @gimp_canvas_corner_init
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
	.size	gimp_canvas_corner_init, .Lfunc_end2-gimp_canvas_corner_init
	.cfi_endproc

	.globl	gimp_canvas_corner_new
	.align	16, 0x90
	.type	gimp_canvas_corner_new,@function
gimp_canvas_corner_new:                 # @gimp_canvas_corner_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm2, -80(%rbp)
	movsd	%xmm3, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movl	%ecx, -100(%rbp)
	movl	%r8d, -104(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_corner_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_canvas_corner_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %r10
	movabsq	$.L.str.10, %r11
	movabsq	$.L.str.11, %rbx
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	movq	-56(%rbp), %r12
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-92(%rbp), %r14d
	movl	-96(%rbp), %r13d
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movl	-100(%rbp), %esi
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movl	-104(%rbp), %esi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	%esi, -156(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	-168(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movq	%r10, 24(%rsp)
	movl	%r13d, 32(%rsp)
	movq	%r11, 40(%rsp)
	movl	-140(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 48(%rsp)
	movq	%rbx, 56(%rsp)
	movl	-156(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$4, %al
	movq	%r15, -176(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -48(%rbp)
.LBB3_13:                               # %return
	movq	-48(%rbp), %rax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_corner_new, .Lfunc_end3-gimp_canvas_corner_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	-4535124824762089472    # double -262144
.LCPI4_1:
	.quad	4688247212092686336     # double 262144
	.text
	.align	16, 0x90
	.type	gimp_canvas_corner_class_init,@function
gimp_canvas_corner_class_init:          # @gimp_canvas_corner_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
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
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movabsq	$gimp_canvas_corner_get_extents, %rdx
	movabsq	$gimp_canvas_corner_draw, %r8
	movabsq	$gimp_canvas_corner_get_property, %r9
	movabsq	$gimp_canvas_corner_set_property, %r10
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
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
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
	movabsq	$.L.str.7, %rdi
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
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_handle_anchor_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$5, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$3, %esi
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %r9d
	movq	-16(%rbp), %rcx
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movl	-84(%rbp), %r11d        # 4-byte Reload
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r9d, -100(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$6, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$3, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$7, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$8, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$48, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_corner_class_init, .Lfunc_end4-gimp_canvas_corner_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_corner_set_property,@function
gimp_canvas_corner_set_property:        # @gimp_canvas_corner_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_corner_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB5_9
# BB#13:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	jmp	.LBB5_12
.LBB5_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	jmp	.LBB5_12
.LBB5_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	jmp	.LBB5_12
.LBB5_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	jmp	.LBB5_12
.LBB5_5:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 32(%rdi)
	jmp	.LBB5_12
.LBB5_6:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 36(%rdi)
	jmp	.LBB5_12
.LBB5_7:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 40(%rdi)
	jmp	.LBB5_12
.LBB5_8:                                # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 44(%rdi)
	jmp	.LBB5_12
.LBB5_9:                                # %sw.default
	jmp	.LBB5_10
.LBB5_10:                               # %do.body
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
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$194, %edx
	movabsq	$.L.str.14, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB5_12
.LBB5_12:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_corner_set_property, .Lfunc_end5-gimp_canvas_corner_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_1
	.quad	.LBB5_2
	.quad	.LBB5_3
	.quad	.LBB5_4
	.quad	.LBB5_5
	.quad	.LBB5_6
	.quad	.LBB5_7
	.quad	.LBB5_8

	.text
	.align	16, 0x90
	.type	gimp_canvas_corner_get_property,@function
gimp_canvas_corner_get_property:        # @gimp_canvas_corner_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_corner_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_9
# BB#13:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_12
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_12
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_12
.LBB6_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_12
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_12
.LBB6_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	36(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_12
.LBB6_7:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_12
.LBB6_8:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	44(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_12
.LBB6_9:                                # %sw.default
	jmp	.LBB6_10
.LBB6_10:                               # %do.body
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
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$235, %edx
	movabsq	$.L.str.14, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB6_12
.LBB6_12:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_corner_get_property, .Lfunc_end6-gimp_canvas_corner_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6
	.quad	.LBB6_7
	.quad	.LBB6_8

	.text
	.align	16, 0x90
	.type	gimp_canvas_corner_draw,@function
gimp_canvas_corner_draw:                # @gimp_canvas_corner_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %r8
	leaq	-56(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, %rdx
	callq	gimp_canvas_corner_transform
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	cairo_rectangle
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_corner_draw, .Lfunc_end7-gimp_canvas_corner_draw
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4613937818241073152     # double 3
.LCPI8_1:
	.quad	4609434218613702656     # double 1.5
	.text
	.align	16, 0x90
	.type	gimp_canvas_corner_get_extents,@function
gimp_canvas_corner_get_extents:         # @gimp_canvas_corner_get_extents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %r8
	leaq	-64(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_canvas_corner_transform
	leaq	-32(%rbp), %rdi
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	cairo_region_create_rectangle
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_corner_get_extents, .Lfunc_end8-gimp_canvas_corner_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
.LCPI10_1:
	.quad	4607182418800017408     # double 1
.LCPI10_2:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_canvas_corner_transform,@function
gimp_canvas_corner_transform:           # @gimp_canvas_corner_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_canvas_corner_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
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
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jbe	.LBB10_2
# BB#1:                                 # %cond.true
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	16(%rax), %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB10_3:                               # %cond.end
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	24(%rax), %xmm2
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jbe	.LBB10_5
# BB#4:                                 # %cond.true.12
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false.14
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	24(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB10_6:                               # %cond.end.18
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
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
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	jbe	.LBB10_8
# BB#7:                                 # %cond.true.25
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB10_9
.LBB10_8:                               # %cond.false.27
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	16(%rax), %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB10_9:                               # %cond.end.31
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	24(%rax), %xmm2
	ucomisd	%xmm2, %xmm1
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jbe	.LBB10_11
# BB#10:                                # %cond.true.38
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB10_12
.LBB10_11:                              # %cond.false.40
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	24(%rax), %xmm0
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
.LBB10_12:                              # %cond.end.44
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	callq	ceil
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdx
	cvtsi2sdl	36(%rdx), %xmm2
	subsd	%xmm2, %xmm0
	movsd	.LCPI10_2(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -92(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdx
	cvtsi2sdl	40(%rdx), %xmm3
	subsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -96(%rbp)
	movq	-56(%rbp), %rdx
	cvtsi2sdl	36(%rdx), %xmm0
	movq	-40(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-56(%rbp), %rdx
	cvtsi2sdl	40(%rdx), %xmm0
	movq	-48(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-56(%rbp), %rdx
	movl	32(%rdx), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	subq	$8, %rsi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	ja	.LBB10_46
# BB#47:                                # %cond.end.44
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_13:                              # %sw.bb
	jmp	.LBB10_46
.LBB10_14:                              # %sw.bb.65
	movq	-56(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB10_16
# BB#15:                                # %if.then
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	40(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB10_17
.LBB10_16:                              # %if.else
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_17:                              # %if.end
	jmp	.LBB10_46
.LBB10_18:                              # %sw.bb.72
	movq	-56(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB10_20
# BB#19:                                # %if.then.75
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	40(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB10_21
.LBB10_20:                              # %if.else.80
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movq	-56(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_21:                              # %if.end.85
	jmp	.LBB10_46
.LBB10_22:                              # %sw.bb.86
	movq	-56(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB10_24
# BB#23:                                # %if.then.89
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB10_25
.LBB10_24:                              # %if.else.94
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movq	-56(%rbp), %rax
	cvtsi2sdl	40(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_25:                              # %if.end.99
	jmp	.LBB10_46
.LBB10_26:                              # %sw.bb.100
	movq	-56(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB10_28
# BB#27:                                # %if.then.103
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB10_29
.LBB10_28:                              # %if.else.106
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movq	-56(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movq	-56(%rbp), %rax
	cvtsi2sdl	40(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_29:                              # %if.end.115
	jmp	.LBB10_46
.LBB10_30:                              # %sw.bb.116
	movq	-56(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB10_32
# BB#31:                                # %if.then.119
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	40(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB10_33
.LBB10_32:                              # %if.else.123
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-92(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_33:                              # %if.end.126
	jmp	.LBB10_46
.LBB10_34:                              # %sw.bb.127
	movq	-56(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB10_36
# BB#35:                                # %if.then.130
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB10_37
.LBB10_36:                              # %if.else.132
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-92(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movq	-56(%rbp), %rax
	cvtsi2sdl	40(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_37:                              # %if.end.139
	jmp	.LBB10_46
.LBB10_38:                              # %sw.bb.140
	movq	-56(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB10_40
# BB#39:                                # %if.then.143
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB10_41
.LBB10_40:                              # %if.else.147
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_41:                              # %if.end.150
	jmp	.LBB10_46
.LBB10_42:                              # %sw.bb.151
	movq	-56(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB10_44
# BB#43:                                # %if.then.154
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB10_45
.LBB10_44:                              # %if.else.156
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movq	-56(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_45:                              # %if.end.163
	jmp	.LBB10_46
.LBB10_46:                              # %sw.epilog
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_canvas_corner_transform, .Lfunc_end10-gimp_canvas_corner_transform
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_13
	.quad	.LBB10_30
	.quad	.LBB10_14
	.quad	.LBB10_18
	.quad	.LBB10_34
	.quad	.LBB10_22
	.quad	.LBB10_26
	.quad	.LBB10_38
	.quad	.LBB10_42

	.type	gimp_canvas_corner_get_type.g_define_type_id__volatile,@object # @gimp_canvas_corner_get_type.g_define_type_id__volatile
	.local	gimp_canvas_corner_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_corner_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasCorner"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_corner_new,@object # @__func__.gimp_canvas_corner_new
.L__func__.gimp_canvas_corner_new:
	.asciz	"gimp_canvas_corner_new"
	.size	.L__func__.gimp_canvas_corner_new, 23

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
	.asciz	"anchor"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"corner-width"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"corner-height"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"outside"
	.size	.L.str.11, 8

	.type	gimp_canvas_corner_parent_class,@object # @gimp_canvas_corner_parent_class
	.local	gimp_canvas_corner_parent_class
	.comm	gimp_canvas_corner_parent_class,8,8
	.type	GimpCanvasCorner_private_offset,@object # @GimpCanvasCorner_private_offset
	.local	GimpCanvasCorner_private_offset
	.comm	GimpCanvasCorner_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.12, 54

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimpcanvascorner.c"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"property"
	.size	.L.str.14, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
