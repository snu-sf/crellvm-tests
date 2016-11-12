	.text
	.file	"gimpcanvassamplepoint.bc"
	.globl	gimp_canvas_sample_point_get_type
	.align	16, 0x90
	.type	gimp_canvas_sample_point_get_type,@function
gimp_canvas_sample_point_get_type:      # @gimp_canvas_sample_point_get_type
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
	movq	gimp_canvas_sample_point_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_sample_point_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_canvas_sample_point_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_sample_point_init, %rcx
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
	movabsq	$gimp_canvas_sample_point_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_sample_point_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_sample_point_get_type, .Lfunc_end0-gimp_canvas_sample_point_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_sample_point_class_intern_init,@function
gimp_canvas_sample_point_class_intern_init: # @gimp_canvas_sample_point_class_intern_init
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
	movq	%rax, gimp_canvas_sample_point_parent_class
	cmpl	$0, GimpCanvasSamplePoint_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasSamplePoint_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_sample_point_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_sample_point_class_intern_init, .Lfunc_end1-gimp_canvas_sample_point_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_sample_point_init,@function
gimp_canvas_sample_point_init:          # @gimp_canvas_sample_point_init
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
	.size	gimp_canvas_sample_point_init, .Lfunc_end2-gimp_canvas_sample_point_init
	.cfi_endproc

	.globl	gimp_canvas_sample_point_new
	.align	16, 0x90
	.type	gimp_canvas_sample_point_new,@function
gimp_canvas_sample_point_new:           # @gimp_canvas_sample_point_new
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_sample_point_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_canvas_sample_point_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-40(%rbp), %r11
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %ebx
	movl	-52(%rbp), %r14d
	movl	-56(%rbp), %r15d
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movl	%ebx, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -32(%rbp)
.LBB3_13:                               # %return
	movq	-32(%rbp), %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_sample_point_new, .Lfunc_end3-gimp_canvas_sample_point_new
	.cfi_endproc

	.globl	gimp_canvas_sample_point_set
	.align	16, 0x90
	.type	gimp_canvas_sample_point_set,@function
gimp_canvas_sample_point_set:           # @gimp_canvas_sample_point_set
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_canvas_sample_point_get_type
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
	movabsq	$.L__func__.gimp_canvas_sample_point_set, %rsi
	movabsq	$.L.str.8, %rdx
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
	.size	gimp_canvas_sample_point_set, .Lfunc_end4-gimp_canvas_sample_point_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_sample_point_class_init,@function
gimp_canvas_sample_point_class_init:    # @gimp_canvas_sample_point_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
.Ltmp21:
	.cfi_offset %rbx, -48
.Ltmp22:
	.cfi_offset %r12, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %edx
	movabsq	$gimp_canvas_sample_point_fill, %r10
	movabsq	$gimp_canvas_sample_point_stroke, %r11
	movabsq	$gimp_canvas_sample_point_get_extents, %rbx
	movabsq	$gimp_canvas_sample_point_draw, %r14
	movabsq	$gimp_canvas_sample_point_get_property, %r15
	movabsq	$gimp_canvas_sample_point_set_property, %r12
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%r12, 24(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%r14, 168(%rax)
	movq	-56(%rbp), %rax
	movq	%rbx, 176(%rax)
	movq	-56(%rbp), %rax
	movq	%r11, 184(%rax)
	movq	-56(%rbp), %rax
	movq	%r10, 192(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %r10         # 8-byte Reload
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movq	%r10, %rdx
	movl	$227, (%rsp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_param_spec_int
	movl	$1, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %esi
	movq	-48(%rbp), %rdx
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %esi
	movq	-48(%rbp), %rdx
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$4, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_sample_point_class_init, .Lfunc_end5-gimp_canvas_sample_point_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_sample_point_set_property,@function
gimp_canvas_sample_point_set_property:  # @gimp_canvas_sample_point_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_sample_point_get_type
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
	ja	.LBB6_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB6_8
.LBB6_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 4(%rdi)
	jmp	.LBB6_8
.LBB6_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB6_8
.LBB6_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 12(%rdi)
	jmp	.LBB6_8
.LBB6_5:                                # %sw.default
	jmp	.LBB6_6
.LBB6_6:                                # %do.body
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$165, %edx
	movabsq	$.L.str.11, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB6_8
.LBB6_8:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_sample_point_set_property, .Lfunc_end6-gimp_canvas_sample_point_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4

	.text
	.align	16, 0x90
	.type	gimp_canvas_sample_point_get_property,@function
gimp_canvas_sample_point_get_property:  # @gimp_canvas_sample_point_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_sample_point_get_type
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
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_8
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_8
.LBB7_3:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_8
.LBB7_4:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	12(%rax), %esi
	callq	g_value_set_boolean
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$194, %edx
	movabsq	$.L.str.11, %rcx
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
	.size	gimp_canvas_sample_point_get_property, .Lfunc_end7-gimp_canvas_sample_point_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4612811918334230528     # double 2.5
.LCPI8_1:
	.quad	4617315517961601024     # double 5
.LCPI8_2:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI8_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_canvas_sample_point_draw,@function
gimp_canvas_sample_point_draw:          # @gimp_canvas_sample_point_draw
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_canvas_sample_point_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_canvas_sample_point_transform
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r8d
	movl	%r8d, -60(%rbp)
	movaps	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1
	cvttsd2si	%xmm1, %r8d
	movl	%r8d, -64(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r8d
	movl	%r8d, -68(%rbp)
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %r8d
	movl	%r8d, -72(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm1
	callq	cairo_move_to
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %r8d
	addl	$5, %r8d
	cvtsi2sdl	%r8d, %xmm1
	callq	cairo_line_to
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm1
	callq	cairo_move_to
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-72(%rbp), %r8d
	subl	$5, %r8d
	cvtsi2sdl	%r8d, %xmm1
	callq	cairo_line_to
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-60(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %r8d
	addl	$5, %r8d
	cvtsi2sdl	%r8d, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-64(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-24(%rbp), %rdi
	movl	-64(%rbp), %r8d
	subl	$5, %r8d
	cvtsi2sdl	%r8d, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movsd	.LCPI8_1, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI8_2, %xmm4         # xmm4 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_arc_negative
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_canvas_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_canvas_get_layout
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	pango_cairo_show_layout
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_fill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_sample_point_draw, .Lfunc_end8-gimp_canvas_sample_point_draw
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4613937818241073152     # double 3
.LCPI9_1:
	.quad	4609434218613702656     # double 1.5
.LCPI9_2:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_canvas_sample_point_get_extents,@function
gimp_canvas_sample_point_get_extents:   # @gimp_canvas_sample_point_get_extents
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
	subq	$96, %rsp
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_canvas_sample_point_transform
	leaq	-32(%rbp), %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_2, %xmm2         # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm0
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movsd	%xmm2, -88(%rbp)        # 8-byte Spill
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	cvtsi2sdl	-60(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movl	-56(%rbp), %eax
	subl	-52(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movl	-64(%rbp), %eax
	subl	-60(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -20(%rbp)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	cairo_region_create_rectangle
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_canvas_sample_point_get_extents, .Lfunc_end9-gimp_canvas_sample_point_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_sample_point_stroke,@function
gimp_canvas_sample_point_stroke:        # @gimp_canvas_sample_point_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_sample_point_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_highlight
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_display_shell_set_sample_point_style
	movq	-24(%rbp), %rdi
	callq	cairo_stroke
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	gimp_canvas_sample_point_parent_class, %rax
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
	.size	gimp_canvas_sample_point_stroke, .Lfunc_end10-gimp_canvas_sample_point_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_sample_point_fill,@function
gimp_canvas_sample_point_fill:          # @gimp_canvas_sample_point_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_sample_point_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_highlight
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_display_shell_set_sample_point_style
	movq	-24(%rbp), %rdi
	callq	cairo_fill
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movq	gimp_canvas_sample_point_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB11_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_canvas_sample_point_fill, .Lfunc_end11-gimp_canvas_sample_point_fill
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_canvas_sample_point_transform,@function
gimp_canvas_sample_point_transform:     # @gimp_canvas_sample_point_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_sample_point_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	addsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm2
	addsd	%xmm0, %xmm2
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	gimp_display_shell_transform_xy_f
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_canvas_sample_point_transform, .Lfunc_end13-gimp_canvas_sample_point_transform
	.cfi_endproc

	.type	gimp_canvas_sample_point_get_type.g_define_type_id__volatile,@object # @gimp_canvas_sample_point_get_type.g_define_type_id__volatile
	.local	gimp_canvas_sample_point_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_sample_point_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasSamplePoint"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_sample_point_new,@object # @__func__.gimp_canvas_sample_point_new
.L__func__.gimp_canvas_sample_point_new:
	.asciz	"gimp_canvas_sample_point_new"
	.size	.L__func__.gimp_canvas_sample_point_new, 29

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
	.asciz	"index"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"sample-point-style"
	.size	.L.str.7, 19

	.type	.L__func__.gimp_canvas_sample_point_set,@object # @__func__.gimp_canvas_sample_point_set
.L__func__.gimp_canvas_sample_point_set:
	.asciz	"gimp_canvas_sample_point_set"
	.size	.L__func__.gimp_canvas_sample_point_set, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_CANVAS_SAMPLE_POINT (sample_point)"
	.size	.L.str.8, 43

	.type	gimp_canvas_sample_point_parent_class,@object # @gimp_canvas_sample_point_parent_class
	.local	gimp_canvas_sample_point_parent_class
	.comm	gimp_canvas_sample_point_parent_class,8,8
	.type	GimpCanvasSamplePoint_private_offset,@object # @GimpCanvasSamplePoint_private_offset
	.local	GimpCanvasSamplePoint_private_offset
	.comm	GimpCanvasSamplePoint_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpcanvassamplepoint.c"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"property"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%d"
	.size	.L.str.12, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
