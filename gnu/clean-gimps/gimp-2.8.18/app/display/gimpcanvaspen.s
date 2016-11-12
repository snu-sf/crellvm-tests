	.text
	.file	"gimpcanvaspen.bc"
	.globl	gimp_canvas_pen_get_type
	.align	16, 0x90
	.type	gimp_canvas_pen_get_type,@function
gimp_canvas_pen_get_type:               # @gimp_canvas_pen_get_type
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
	movq	gimp_canvas_pen_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_pen_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_canvas_polygon_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$208, %edx
	movabsq	$gimp_canvas_pen_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_pen_init, %rcx
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
	movabsq	$gimp_canvas_pen_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_pen_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_pen_get_type, .Lfunc_end0-gimp_canvas_pen_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_pen_class_intern_init,@function
gimp_canvas_pen_class_intern_init:      # @gimp_canvas_pen_class_intern_init
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
	movq	%rax, gimp_canvas_pen_parent_class
	cmpl	$0, GimpCanvasPen_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasPen_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_pen_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_pen_class_intern_init, .Lfunc_end1-gimp_canvas_pen_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_pen_init,@function
gimp_canvas_pen_init:                   # @gimp_canvas_pen_init
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
	.size	gimp_canvas_pen_init, .Lfunc_end2-gimp_canvas_pen_init
	.cfi_endproc

	.globl	gimp_canvas_pen_new
	.align	16, 0x90
	.type	gimp_canvas_pen_new,@function
gimp_canvas_pen_new:                    # @gimp_canvas_pen_new
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
	subq	$216, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
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
	movabsq	$.L__func__.gimp_canvas_pen_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_34
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB3_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$1, -36(%rbp)
	jle	.LBB3_16
# BB#15:                                # %if.then.15
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_pen_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_34
.LBB3_17:                               # %if.end.17
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.18
	jmp	.LBB3_19
.LBB3_19:                               # %do.body.19
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB3_21
# BB#20:                                # %if.then.28
	movl	$0, -148(%rbp)
	jmp	.LBB3_26
.LBB3_21:                               # %if.else.29
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_24
# BB#22:                                # %land.lhs.true.32
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB3_24
# BB#23:                                # %if.then.36
	movl	$1, -148(%rbp)
	jmp	.LBB3_25
.LBB3_24:                               # %if.else.37
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB3_25:                               # %if.end.39
	jmp	.LBB3_26
.LBB3_26:                               # %if.end.40
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB3_28
# BB#27:                                # %if.then.43
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_pen_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_34
.LBB3_29:                               # %if.end.45
	jmp	.LBB3_30
.LBB3_30:                               # %do.end.46
	movq	-32(%rbp), %rdi
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	movl	$1, %edx
	movq	%rax, %rsi
	callq	gimp_array_new
	movq	%rax, -72(%rbp)
	movl	-52(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
	je	.LBB3_31
	jmp	.LBB3_35
.LBB3_35:                               # %do.end.46
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB3_32
	jmp	.LBB3_33
.LBB3_31:                               # %sw.bb
	leaq	-104(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_foreground
	jmp	.LBB3_33
.LBB3_32:                               # %sw.bb.48
	leaq	-104(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_background
.LBB3_33:                               # %sw.epilog
	callq	gimp_canvas_pen_get_type
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.7, %r9
	leaq	-104(%rbp), %rdx
	movabsq	$.L.str.8, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	-72(%rbp), %r8
	movl	-56(%rbp), %ebx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%r10, -184(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_array_free
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB3_34:                               # %return
	movq	-16(%rbp), %rax
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_pen_new, .Lfunc_end3-gimp_canvas_pen_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_pen_class_init,@function
gimp_canvas_pen_class_init:             # @gimp_canvas_pen_class_init
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
	xorl	%ecx, %ecx
	movl	$227, %r9d
	movabsq	$gimp_canvas_pen_stroke, %rdx
	movabsq	$gimp_canvas_pen_get_extents, %r8
	movabsq	$gimp_canvas_pen_get_property, %r10
	movabsq	$gimp_canvas_pen_set_property, %r11
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 176(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 184(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_rgb
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
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
	.size	gimp_canvas_pen_class_init, .Lfunc_end4-gimp_canvas_pen_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_pen_set_property,@function
gimp_canvas_pen_set_property:           # @gimp_canvas_pen_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_pen_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB5_1
	jmp	.LBB5_7
.LBB5_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB5_2
	jmp	.LBB5_3
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_value_get_rgb
	jmp	.LBB5_6
.LBB5_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 32(%rdi)
	jmp	.LBB5_6
.LBB5_3:                                # %sw.default
	jmp	.LBB5_4
.LBB5_4:                                # %do.body
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
	movl	$134, %edx
	movabsq	$.L.str.11, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_pen_set_property, .Lfunc_end5-gimp_canvas_pen_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_pen_get_property,@function
gimp_canvas_pen_get_property:           # @gimp_canvas_pen_get_property
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
	callq	gimp_canvas_pen_get_type
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
	jmp	.LBB6_7
.LBB6_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_3
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_value_set_rgb
	jmp	.LBB6_6
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_6
.LBB6_3:                                # %sw.default
	jmp	.LBB6_4
.LBB6_4:                                # %do.body
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
	movl	$157, %edx
	movabsq	$.L.str.11, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_pen_get_property, .Lfunc_end6-gimp_canvas_pen_get_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_canvas_pen_get_extents,@function
gimp_canvas_pen_get_extents:            # @gimp_canvas_pen_get_extents
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_pen_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	gimp_canvas_pen_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	cairo_region_get_extents
	leaq	-48(%rbp), %rsi
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	32(%rdi), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	ceil
	cvtsi2sdl	-48(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rsi
	cvtsi2sdl	32(%rsi), %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	ceil
	cvtsi2sdl	-44(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rsi
	movl	32(%rsi), %eax
	addl	$1, %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rsi
	movl	32(%rsi), %eax
	addl	$1, %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	cairo_region_union_rectangle
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_pen_get_extents, .Lfunc_end7-gimp_canvas_pen_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_pen_stroke,@function
gimp_canvas_pen_stroke:                 # @gimp_canvas_pen_stroke
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
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_pen_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	32(%rax), %ecx
	callq	gimp_display_shell_set_pen_style
	movq	-24(%rbp), %rdi
	callq	cairo_stroke
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_pen_stroke, .Lfunc_end8-gimp_canvas_pen_stroke
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

	.type	gimp_canvas_pen_get_type.g_define_type_id__volatile,@object # @gimp_canvas_pen_get_type.g_define_type_id__volatile
	.local	gimp_canvas_pen_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_pen_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasPen"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_pen_new,@object # @__func__.gimp_canvas_pen_new
.L__func__.gimp_canvas_pen_new:
	.asciz	"gimp_canvas_pen_new"
	.size	.L__func__.gimp_canvas_pen_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"points != NULL && n_points > 1"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"shell"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"points"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"color"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"width"
	.size	.L.str.8, 6

	.type	gimp_canvas_pen_parent_class,@object # @gimp_canvas_pen_parent_class
	.local	gimp_canvas_pen_parent_class
	.comm	gimp_canvas_pen_parent_class,8,8
	.type	GimpCanvasPen_private_offset,@object # @GimpCanvasPen_private_offset
	.local	GimpCanvasPen_private_offset
	.comm	GimpCanvasPen_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpcanvaspen.c"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"property"
	.size	.L.str.11, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
