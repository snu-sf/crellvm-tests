	.text
	.file	"gimpcanvasgrid.bc"
	.globl	gimp_canvas_grid_get_type
	.align	16, 0x90
	.type	gimp_canvas_grid_get_type,@function
gimp_canvas_grid_get_type:              # @gimp_canvas_grid_get_type
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
	movq	gimp_canvas_grid_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_grid_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_canvas_grid_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_grid_init, %rcx
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
	movabsq	$gimp_canvas_grid_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_grid_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_grid_get_type, .Lfunc_end0-gimp_canvas_grid_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_grid_class_intern_init,@function
gimp_canvas_grid_class_intern_init:     # @gimp_canvas_grid_class_intern_init
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
	movq	%rax, gimp_canvas_grid_parent_class
	cmpl	$0, GimpCanvasGrid_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasGrid_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_grid_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_grid_class_intern_init, .Lfunc_end1-gimp_canvas_grid_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_grid_init,@function
gimp_canvas_grid_init:                  # @gimp_canvas_grid_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_canvas_grid_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	callq	gimp_grid_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_canvas_grid_init, .Lfunc_end2-gimp_canvas_grid_init
	.cfi_endproc

	.globl	gimp_canvas_grid_new
	.align	16, 0x90
	.type	gimp_canvas_grid_new,@function
gimp_canvas_grid_new:                   # @gimp_canvas_grid_new
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_grid_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_26
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB3_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_grid_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB3_21
.LBB3_16:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_20:                               # %if.end.32
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_23
.LBB3_22:                               # %if.then.36
	jmp	.LBB3_24
.LBB3_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_grid_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_26
.LBB3_24:                               # %if.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.end.39
	callq	gimp_canvas_grid_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_grid_new, .Lfunc_end3-gimp_canvas_grid_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_grid_class_init,@function
gimp_canvas_grid_class_init:            # @gimp_canvas_grid_class_init
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
	callq	gimp_canvas_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_canvas_grid_stroke, %rsi
	movabsq	$gimp_canvas_grid_get_extents, %rdi
	movabsq	$gimp_canvas_grid_draw, %rcx
	movabsq	$gimp_canvas_grid_get_property, %rdx
	movabsq	$gimp_canvas_grid_set_property, %r8
	movabsq	$gimp_canvas_grid_finalize, %r9
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 48(%rax)
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
	callq	gimp_grid_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_grid_class_init, .Lfunc_end4-gimp_canvas_grid_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_grid_finalize,@function
gimp_canvas_grid_finalize:              # @gimp_canvas_grid_finalize
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
	callq	gimp_canvas_grid_get_type
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
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_canvas_grid_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_grid_finalize, .Lfunc_end5-gimp_canvas_grid_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_grid_set_property,@function
gimp_canvas_grid_set_property:          # @gimp_canvas_grid_set_property
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
	callq	gimp_canvas_grid_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_9
.LBB6_9:                                # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB6_4
	jmp	.LBB6_5
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB6_3:                                # %if.end
	jmp	.LBB6_8
.LBB6_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB6_8
.LBB6_5:                                # %sw.default
	jmp	.LBB6_6
.LBB6_6:                                # %do.body
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
	movl	%r8d, -112(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$162, %edx
	movabsq	$.L.str.9, %rcx
	movl	-112(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB6_8
.LBB6_8:                                # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_grid_set_property, .Lfunc_end6-gimp_canvas_grid_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_grid_get_property,@function
gimp_canvas_grid_get_property:          # @gimp_canvas_grid_get_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_grid_get_type
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
	jmp	.LBB7_7
.LBB7_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_3
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB7_6
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_6
.LBB7_3:                                # %sw.default
	jmp	.LBB7_4
.LBB7_4:                                # %do.body
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
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$185, %edx
	movabsq	$.L.str.9, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_grid_get_property, .Lfunc_end7-gimp_canvas_grid_get_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4611686018427387904     # double 2
.LCPI8_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_canvas_grid_draw,@function
gimp_canvas_grid_draw:                  # @gimp_canvas_grid_draw
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	callq	gimp_canvas_grid_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_grid_get_spacing
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_grid_get_offset
# BB#1:                                 # %do.body
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_4
# BB#2:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_4
# BB#3:                                 # %if.then
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_grid_draw, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_104
.LBB8_5:                                # %if.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.end
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	200(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB8_8
# BB#7:                                 # %lor.lhs.false
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	208(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_9
.LBB8_8:                                # %if.then.8
	jmp	.LBB8_104
.LBB8_9:                                # %if.end.9
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	-24(%rbp), %rdi
	callq	cairo_clip_extents
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -128(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -144(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -132(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -148(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -164(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -168(%rbp)
.LBB8_10:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB8_10 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	jmp	.LBB8_10
.LBB8_12:                               # %while.end
	jmp	.LBB8_13
.LBB8_13:                               # %while.cond.21
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_15
# BB#14:                                # %while.body.24
                                        #   in Loop: Header=BB8_13 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	jmp	.LBB8_13
.LBB8_15:                               # %while.end.26
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	je	.LBB8_16
	jmp	.LBB8_105
.LBB8_105:                              # %while.end.26
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB8_35
	jmp	.LBB8_106
.LBB8_106:                              # %while.end.26
	movl	-180(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$3, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jb	.LBB8_84
	jmp	.LBB8_103
.LBB8_16:                               # %sw.bb
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB8_17:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_24 Depth 2
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-164(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB8_34
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB8_17 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB8_20
# BB#19:                                # %if.then.33
                                        #   in Loop: Header=BB8_17 Depth=1
	jmp	.LBB8_33
.LBB8_20:                               # %if.end.34
                                        #   in Loop: Header=BB8_17 Depth=1
	xorps	%xmm1, %xmm1
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_transform_xy
	movl	-156(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jl	.LBB8_22
# BB#21:                                # %lor.lhs.false.37
                                        #   in Loop: Header=BB8_17 Depth=1
	movl	-156(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.LBB8_23
.LBB8_22:                               # %if.then.40
                                        #   in Loop: Header=BB8_17 Depth=1
	jmp	.LBB8_33
.LBB8_23:                               # %if.end.41
                                        #   in Loop: Header=BB8_17 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB8_24:                               # %for.cond.42
                                        #   Parent Loop BB8_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-168(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB8_32
# BB#25:                                # %for.body.46
                                        #   in Loop: Header=BB8_24 Depth=2
	xorps	%xmm0, %xmm0
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB8_27
# BB#26:                                # %if.then.49
                                        #   in Loop: Header=BB8_24 Depth=2
	jmp	.LBB8_31
.LBB8_27:                               # %if.end.50
                                        #   in Loop: Header=BB8_24 Depth=2
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy
	movl	-160(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jl	.LBB8_30
# BB#28:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB8_24 Depth=2
	movl	-160(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB8_30
# BB#29:                                # %if.then.56
                                        #   in Loop: Header=BB8_24 Depth=2
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-156(%rbp), %xmm1
	cvtsi2sdl	-160(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movl	-156(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-160(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
.LBB8_30:                               # %if.end.63
                                        #   in Loop: Header=BB8_24 Depth=2
	jmp	.LBB8_31
.LBB8_31:                               # %for.inc
                                        #   in Loop: Header=BB8_24 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB8_24
.LBB8_32:                               # %for.end
                                        #   in Loop: Header=BB8_17 Depth=1
	jmp	.LBB8_33
.LBB8_33:                               # %for.inc.65
                                        #   in Loop: Header=BB8_17 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB8_17
.LBB8_34:                               # %for.end.67
	jmp	.LBB8_103
.LBB8_35:                               # %sw.bb.68
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB8_36:                               # %for.cond.69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_43 Depth 2
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-164(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB8_83
# BB#37:                                # %for.body.73
                                        #   in Loop: Header=BB8_36 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB8_39
# BB#38:                                # %if.then.76
                                        #   in Loop: Header=BB8_36 Depth=1
	jmp	.LBB8_82
.LBB8_39:                               # %if.end.77
                                        #   in Loop: Header=BB8_36 Depth=1
	xorps	%xmm1, %xmm1
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_transform_xy
	movl	-156(%rbp), %eax
	addl	$2, %eax
	cmpl	-128(%rbp), %eax
	jl	.LBB8_41
# BB#40:                                # %lor.lhs.false.81
                                        #   in Loop: Header=BB8_36 Depth=1
	movl	-156(%rbp), %eax
	subl	$2, %eax
	cmpl	-132(%rbp), %eax
	jl	.LBB8_42
.LBB8_41:                               # %if.then.85
                                        #   in Loop: Header=BB8_36 Depth=1
	jmp	.LBB8_82
.LBB8_42:                               # %if.end.86
                                        #   in Loop: Header=BB8_36 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB8_43:                               # %for.cond.87
                                        #   Parent Loop BB8_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-168(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB8_81
# BB#44:                                # %for.body.91
                                        #   in Loop: Header=BB8_43 Depth=2
	xorps	%xmm0, %xmm0
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB8_46
# BB#45:                                # %if.then.94
                                        #   in Loop: Header=BB8_43 Depth=2
	jmp	.LBB8_80
.LBB8_46:                               # %if.end.95
                                        #   in Loop: Header=BB8_43 Depth=2
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy
	movl	-160(%rbp), %eax
	addl	$2, %eax
	cmpl	-144(%rbp), %eax
	jl	.LBB8_48
# BB#47:                                # %lor.lhs.false.99
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-160(%rbp), %eax
	subl	$2, %eax
	cmpl	-148(%rbp), %eax
	jl	.LBB8_49
.LBB8_48:                               # %if.then.103
                                        #   in Loop: Header=BB8_43 Depth=2
	jmp	.LBB8_80
.LBB8_49:                               # %if.end.104
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-156(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jl	.LBB8_64
# BB#50:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-156(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB8_64
# BB#51:                                # %if.then.110
                                        #   in Loop: Header=BB8_43 Depth=2
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-156(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movl	-160(%rbp), %eax
	subl	$2, %eax
	movl	-148(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	jle	.LBB8_53
# BB#52:                                # %cond.true
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-148(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB8_57
.LBB8_53:                               # %cond.false
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-160(%rbp), %eax
	subl	$2, %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB8_55
# BB#54:                                # %cond.true.121
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-144(%rbp), %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB8_56
.LBB8_55:                               # %cond.false.122
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-160(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB8_56:                               # %cond.end
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB8_57:                               # %cond.end.124
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-212(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm1
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-156(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movl	-160(%rbp), %eax
	addl	$2, %eax
	movl	-148(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	jle	.LBB8_59
# BB#58:                                # %cond.true.133
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-148(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB8_63
.LBB8_59:                               # %cond.false.135
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-160(%rbp), %eax
	addl	$2, %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB8_61
# BB#60:                                # %cond.true.139
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-144(%rbp), %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB8_62
.LBB8_61:                               # %cond.false.140
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-160(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB8_62:                               # %cond.end.142
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB8_63:                               # %cond.end.144
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-236(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_line_to
.LBB8_64:                               # %if.end.148
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-160(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jl	.LBB8_79
# BB#65:                                # %land.lhs.true.151
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-160(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB8_79
# BB#66:                                # %if.then.154
                                        #   in Loop: Header=BB8_43 Depth=2
	movq	-24(%rbp), %rdi
	movl	-156(%rbp), %eax
	subl	$2, %eax
	movl	-132(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	jle	.LBB8_68
# BB#67:                                # %cond.true.159
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-132(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB8_72
.LBB8_68:                               # %cond.false.161
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-156(%rbp), %eax
	subl	$2, %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB8_70
# BB#69:                                # %cond.true.165
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-128(%rbp), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB8_71
.LBB8_70:                               # %cond.false.166
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-156(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB8_71:                               # %cond.end.168
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB8_72:                               # %cond.end.170
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-252(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-160(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movq	-24(%rbp), %rdi
	movl	-156(%rbp), %eax
	addl	$2, %eax
	movl	-132(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	jle	.LBB8_74
# BB#73:                                # %cond.true.179
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-132(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB8_78
.LBB8_74:                               # %cond.false.181
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-156(%rbp), %eax
	addl	$2, %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB8_76
# BB#75:                                # %cond.true.185
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-128(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB8_77
.LBB8_76:                               # %cond.false.186
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-156(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB8_77:                               # %cond.end.188
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB8_78:                               # %cond.end.190
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-268(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-160(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
.LBB8_79:                               # %if.end.196
                                        #   in Loop: Header=BB8_43 Depth=2
	jmp	.LBB8_80
.LBB8_80:                               # %for.inc.197
                                        #   in Loop: Header=BB8_43 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB8_43
.LBB8_81:                               # %for.end.199
                                        #   in Loop: Header=BB8_36 Depth=1
	jmp	.LBB8_82
.LBB8_82:                               # %for.inc.200
                                        #   in Loop: Header=BB8_36 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB8_36
.LBB8_83:                               # %for.end.202
	jmp	.LBB8_103
.LBB8_84:                               # %sw.bb.203
	xorps	%xmm0, %xmm0
	leaq	-124(%rbp), %rsi
	leaq	-140(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy
	leaq	-136(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-164(%rbp), %xmm0
	cvtsi2sdl	-168(%rbp), %xmm1
	callq	gimp_display_shell_transform_xy
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB8_85:                               # %for.cond.206
                                        # =>This Inner Loop Header: Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-164(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_93
# BB#86:                                # %for.body.210
                                        #   in Loop: Header=BB8_85 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB8_88
# BB#87:                                # %if.then.213
                                        #   in Loop: Header=BB8_85 Depth=1
	jmp	.LBB8_92
.LBB8_88:                               # %if.end.214
                                        #   in Loop: Header=BB8_85 Depth=1
	xorps	%xmm1, %xmm1
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_transform_xy
	movl	-156(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jl	.LBB8_91
# BB#89:                                # %land.lhs.true.217
                                        #   in Loop: Header=BB8_85 Depth=1
	movl	-156(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB8_91
# BB#90:                                # %if.then.220
                                        #   in Loop: Header=BB8_85 Depth=1
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-156(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	-140(%rbp), %xmm0
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-156(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movl	-152(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
.LBB8_91:                               # %if.end.228
                                        #   in Loop: Header=BB8_85 Depth=1
	jmp	.LBB8_92
.LBB8_92:                               # %for.inc.229
                                        #   in Loop: Header=BB8_85 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB8_85
.LBB8_93:                               # %for.end.231
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB8_94:                               # %for.cond.232
                                        # =>This Inner Loop Header: Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-168(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_102
# BB#95:                                # %for.body.236
                                        #   in Loop: Header=BB8_94 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB8_97
# BB#96:                                # %if.then.239
                                        #   in Loop: Header=BB8_94 Depth=1
	jmp	.LBB8_101
.LBB8_97:                               # %if.end.240
                                        #   in Loop: Header=BB8_94 Depth=1
	xorps	%xmm0, %xmm0
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy
	movl	-160(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jl	.LBB8_100
# BB#98:                                # %land.lhs.true.243
                                        #   in Loop: Header=BB8_94 Depth=1
	movl	-160(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB8_100
# BB#99:                                # %if.then.246
                                        #   in Loop: Header=BB8_94 Depth=1
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-124(%rbp), %xmm1
	cvtsi2sdl	-160(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movl	-136(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-160(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
.LBB8_100:                              # %if.end.254
                                        #   in Loop: Header=BB8_94 Depth=1
	jmp	.LBB8_101
.LBB8_101:                              # %for.inc.255
                                        #   in Loop: Header=BB8_94 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB8_94
.LBB8_102:                              # %for.end.257
	jmp	.LBB8_103
.LBB8_103:                              # %sw.epilog
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
.LBB8_104:                              # %return
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_grid_draw, .Lfunc_end8-gimp_canvas_grid_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_grid_get_extents,@function
gimp_canvas_grid_get_extents:           # @gimp_canvas_grid_get_extents
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	128(%rsi), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_height
	xorps	%xmm0, %xmm0
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movl	%eax, -88(%rbp)
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm0
	cvtsi2sdl	-88(%rbp), %xmm1
	callq	gimp_display_shell_transform_xy_f
	leaq	-48(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvtsi2sdl	-48(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvtsi2sdl	-44(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	cairo_region_create_rectangle
	movq	%rax, -8(%rbp)
.LBB9_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_canvas_grid_get_extents, .Lfunc_end9-gimp_canvas_grid_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_grid_stroke,@function
gimp_canvas_grid_stroke:                # @gimp_canvas_grid_stroke
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_grid_get_type
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
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdx
	callq	gimp_display_shell_set_grid_style
	movq	-24(%rbp), %rdi
	callq	cairo_stroke
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	gimp_canvas_grid_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB10_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_canvas_grid_stroke, .Lfunc_end10-gimp_canvas_grid_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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

	.type	gimp_canvas_grid_get_type.g_define_type_id__volatile,@object # @gimp_canvas_grid_get_type.g_define_type_id__volatile
	.local	gimp_canvas_grid_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_grid_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasGrid"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_grid_new,@object # @__func__.gimp_canvas_grid_new
.L__func__.gimp_canvas_grid_new:
	.asciz	"gimp_canvas_grid_new"
	.size	.L__func__.gimp_canvas_grid_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"grid == NULL || GIMP_IS_GRID (grid)"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"shell"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"grid"
	.size	.L.str.5, 5

	.type	gimp_canvas_grid_parent_class,@object # @gimp_canvas_grid_parent_class
	.local	gimp_canvas_grid_parent_class
	.comm	gimp_canvas_grid_parent_class,8,8
	.type	GimpCanvasGrid_private_offset,@object # @GimpCanvasGrid_private_offset
	.local	GimpCanvasGrid_private_offset
	.comm	GimpCanvasGrid_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"grid-style"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpcanvasgrid.c"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"property"
	.size	.L.str.9, 9

	.type	.L__func__.gimp_canvas_grid_draw,@object # @__func__.gimp_canvas_grid_draw
.L__func__.gimp_canvas_grid_draw:
	.asciz	"gimp_canvas_grid_draw"
	.size	.L__func__.gimp_canvas_grid_draw, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"xspacing > 0.0 && yspacing > 0.0"
	.size	.L.str.10, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
