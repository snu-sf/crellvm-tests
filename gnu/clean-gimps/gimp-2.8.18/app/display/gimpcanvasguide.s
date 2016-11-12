	.text
	.file	"gimpcanvasguide.bc"
	.globl	gimp_canvas_guide_get_type
	.align	16, 0x90
	.type	gimp_canvas_guide_get_type,@function
gimp_canvas_guide_get_type:             # @gimp_canvas_guide_get_type
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
	movq	gimp_canvas_guide_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_guide_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_canvas_guide_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_guide_init, %rcx
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
	movabsq	$gimp_canvas_guide_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_guide_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_guide_get_type, .Lfunc_end0-gimp_canvas_guide_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_guide_class_intern_init,@function
gimp_canvas_guide_class_intern_init:    # @gimp_canvas_guide_class_intern_init
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
	movq	%rax, gimp_canvas_guide_parent_class
	cmpl	$0, GimpCanvasGuide_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasGuide_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_guide_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_guide_class_intern_init, .Lfunc_end1-gimp_canvas_guide_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_guide_init,@function
gimp_canvas_guide_init:                 # @gimp_canvas_guide_init
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
	.size	gimp_canvas_guide_init, .Lfunc_end2-gimp_canvas_guide_init
	.cfi_endproc

	.globl	gimp_canvas_guide_new
	.align	16, 0x90
	.type	gimp_canvas_guide_new,@function
gimp_canvas_guide_new:                  # @gimp_canvas_guide_new
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_guide_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_canvas_guide_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	movabsq	$.L.str.6, %rdx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	-32(%rbp), %r10
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %r11d
	movl	-44(%rbp), %ebx
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movl	-76(%rbp), %r14d        # 4-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movl	%r14d, %r8d
	movl	%r11d, (%rsp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
.LBB3_13:                               # %return
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_guide_new, .Lfunc_end3-gimp_canvas_guide_new
	.cfi_endproc

	.globl	gimp_canvas_guide_set
	.align	16, 0x90
	.type	gimp_canvas_guide_set,@function
gimp_canvas_guide_set:                  # @gimp_canvas_guide_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_canvas_guide_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_guide_set, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_begin_change
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %r8d
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_end_change
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_guide_set, .Lfunc_end4-gimp_canvas_guide_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_guide_class_init,@function
gimp_canvas_guide_class_init:           # @gimp_canvas_guide_class_init
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
	movabsq	$gimp_canvas_guide_stroke, %rsi
	movabsq	$gimp_canvas_guide_get_extents, %rdi
	movabsq	$gimp_canvas_guide_draw, %rcx
	movabsq	$gimp_canvas_guide_get_property, %rdx
	movabsq	$gimp_canvas_guide_set_property, %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 168(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 176(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 184(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_orientation_type_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$12, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_guide_class_init, .Lfunc_end5-gimp_canvas_guide_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_guide_set_property,@function
gimp_canvas_guide_set_property:         # @gimp_canvas_guide_set_property
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
	callq	gimp_canvas_guide_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_8
.LBB6_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_9
.LBB6_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB6_3
	jmp	.LBB6_4
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB6_7
.LBB6_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 4(%rdi)
	jmp	.LBB6_7
.LBB6_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 8(%rdi)
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$146, %edx
	movabsq	$.L.str.10, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB6_7
.LBB6_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_guide_set_property, .Lfunc_end6-gimp_canvas_guide_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_guide_get_property,@function
gimp_canvas_guide_get_property:         # @gimp_canvas_guide_get_property
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
	callq	gimp_canvas_guide_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_8
.LBB7_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_9
.LBB7_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_4
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB7_7
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_7
.LBB7_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_7
.LBB7_4:                                # %sw.default
	jmp	.LBB7_5
.LBB7_5:                                # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$172, %edx
	movabsq	$.L.str.10, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB7_7
.LBB7_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_guide_get_property, .Lfunc_end7-gimp_canvas_guide_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_guide_draw,@function
gimp_canvas_guide_draw:                 # @gimp_canvas_guide_draw
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
	callq	gimp_canvas_guide_transform
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_guide_draw, .Lfunc_end8-gimp_canvas_guide_draw
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4609434218613702656     # double 1.5
.LCPI9_1:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	gimp_canvas_guide_get_extents,@function
gimp_canvas_guide_get_extents:          # @gimp_canvas_guide_get_extents
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
	callq	gimp_canvas_guide_transform
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_2
# BB#1:                                 # %cond.true
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB9_3:                                # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_5
# BB#4:                                 # %cond.true.3
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false.4
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB9_6:                                # %cond.end.5
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI9_0, %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_8
# BB#7:                                 # %cond.true.12
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB9_9
.LBB9_8:                                # %cond.false.15
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB9_9:                                # %cond.end.17
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI9_1, %xmm2         # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_11
# BB#10:                                # %cond.true.23
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB9_12
.LBB9_11:                               # %cond.false.26
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB9_12:                               # %cond.end.28
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-32(%rbp), %rdi
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	callq	cairo_region_create_rectangle
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_canvas_guide_get_extents, .Lfunc_end9-gimp_canvas_guide_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_guide_stroke,@function
gimp_canvas_guide_stroke:               # @gimp_canvas_guide_stroke
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_guide_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	%eax, %edx
	subl	188(%rcx), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-16(%rbp), %rcx
	subl	192(%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_translate
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_highlight
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_display_shell_set_guide_style
	movq	-24(%rbp), %rdi
	callq	cairo_stroke
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	gimp_canvas_guide_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB10_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_canvas_guide_stroke, .Lfunc_end10-gimp_canvas_guide_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB11_2
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
.LBB11_2:                               # %entry
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
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_canvas_guide_transform,@function
gimp_canvas_guide_transform:            # @gimp_canvas_guide_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_canvas_guide_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	leaq	-72(%rbp), %rsi
	callq	gtk_widget_get_allocation
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	cvtsi2sdl	-64(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	cvtsi2sdl	-60(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	je	.LBB12_1
	jmp	.LBB12_5
.LBB12_5:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB12_2
	jmp	.LBB12_6
.LBB12_6:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_4
.LBB12_1:                               # %sw.bb
	xorps	%xmm0, %xmm0
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	callq	gimp_display_shell_transform_xy
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm1, (%rax)
	jmp	.LBB12_4
.LBB12_2:                               # %sw.bb.5
	xorps	%xmm1, %xmm1
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	callq	gimp_display_shell_transform_xy
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm1, (%rax)
	jmp	.LBB12_4
.LBB12_3:                               # %sw.bb.10
	jmp	.LBB12_4
.LBB12_4:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_canvas_guide_transform, .Lfunc_end12-gimp_canvas_guide_transform
	.cfi_endproc

	.type	gimp_canvas_guide_get_type.g_define_type_id__volatile,@object # @gimp_canvas_guide_get_type.g_define_type_id__volatile
	.local	gimp_canvas_guide_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_guide_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasGuide"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_guide_new,@object # @__func__.gimp_canvas_guide_new
.L__func__.gimp_canvas_guide_new:
	.asciz	"gimp_canvas_guide_new"
	.size	.L__func__.gimp_canvas_guide_new, 22

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
	.asciz	"orientation"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"position"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"guide-style"
	.size	.L.str.6, 12

	.type	.L__func__.gimp_canvas_guide_set,@object # @__func__.gimp_canvas_guide_set
.L__func__.gimp_canvas_guide_set:
	.asciz	"gimp_canvas_guide_set"
	.size	.L__func__.gimp_canvas_guide_set, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_CANVAS_GUIDE (guide)"
	.size	.L.str.7, 29

	.type	gimp_canvas_guide_parent_class,@object # @gimp_canvas_guide_parent_class
	.local	gimp_canvas_guide_parent_class
	.comm	gimp_canvas_guide_parent_class,8,8
	.type	GimpCanvasGuide_private_offset,@object # @GimpCanvasGuide_private_offset
	.local	GimpCanvasGuide_private_offset
	.comm	GimpCanvasGuide_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.8, 54

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimpcanvasguide.c"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
