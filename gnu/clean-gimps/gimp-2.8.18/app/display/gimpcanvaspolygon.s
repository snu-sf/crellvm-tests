	.text
	.file	"gimpcanvaspolygon.bc"
	.globl	gimp_canvas_polygon_get_type
	.align	16, 0x90
	.type	gimp_canvas_polygon_get_type,@function
gimp_canvas_polygon_get_type:           # @gimp_canvas_polygon_get_type
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
	movq	gimp_canvas_polygon_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_polygon_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_canvas_polygon_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_polygon_init, %rcx
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
	movabsq	$gimp_canvas_polygon_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_polygon_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_polygon_get_type, .Lfunc_end0-gimp_canvas_polygon_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_polygon_class_intern_init,@function
gimp_canvas_polygon_class_intern_init:  # @gimp_canvas_polygon_class_intern_init
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
	movq	%rax, gimp_canvas_polygon_parent_class
	cmpl	$0, GimpCanvasPolygon_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasPolygon_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_polygon_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_polygon_class_intern_init, .Lfunc_end1-gimp_canvas_polygon_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_polygon_init,@function
gimp_canvas_polygon_init:               # @gimp_canvas_polygon_init
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
	.size	gimp_canvas_polygon_init, .Lfunc_end2-gimp_canvas_polygon_init
	.cfi_endproc

	.globl	gimp_canvas_polygon_new
	.align	16, 0x90
	.type	gimp_canvas_polygon_new,@function
gimp_canvas_polygon_new:                # @gimp_canvas_polygon_new
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
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
	movabsq	$.L__func__.gimp_canvas_polygon_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_19
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB3_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$1, -28(%rbp)
	jle	.LBB3_16
# BB#15:                                # %if.then.15
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_polygon_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_19
.LBB3_17:                               # %if.end.17
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.18
	movl	$1, %edx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_array_new
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_polygon_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-16(%rbp), %rdx
	movl	-32(%rbp), %r8d
	movq	-48(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_array_free
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_polygon_new, .Lfunc_end3-gimp_canvas_polygon_new
	.cfi_endproc

	.globl	gimp_canvas_polygon_new_from_coords
	.align	16, 0x90
	.type	gimp_canvas_polygon_new_from_coords,@function
gimp_canvas_polygon_new_from_coords:    # @gimp_canvas_polygon_new_from_coords
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_polygon_new_from_coords, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_23
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB4_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$1, -28(%rbp)
	jle	.LBB4_16
# BB#15:                                # %if.then.15
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_polygon_new_from_coords, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_23
.LBB4_17:                               # %if.end.17
	jmp	.LBB4_18
.LBB4_18:                               # %do.end.18
	movl	$16, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movl	$0, -60(%rbp)
.LBB4_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB4_19 Depth=1
	movslq	-60(%rbp), %rax
	shlq	$6, %rax
	addq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movslq	-60(%rbp), %rax
	shlq	$6, %rax
	addq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movsd	%xmm0, 8(%rax)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB4_19 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB4_19
.LBB4_22:                               # %for.end
	movl	$1, %edx
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_array_new
	movq	%rax, -56(%rbp)
	callq	gimp_canvas_polygon_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-16(%rbp), %rdx
	movl	-32(%rbp), %r8d
	movq	-56(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_array_free
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_polygon_new_from_coords, .Lfunc_end4-gimp_canvas_polygon_new_from_coords
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_polygon_class_init,@function
gimp_canvas_polygon_class_init:         # @gimp_canvas_polygon_class_init
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
	subq	$64, %rsp
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
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$227, %ecx
	movabsq	$gimp_canvas_polygon_get_extents, %rdx
	movabsq	$gimp_canvas_polygon_draw, %r8
	movabsq	$gimp_canvas_polygon_get_property, %r9
	movabsq	$gimp_canvas_polygon_set_property, %r10
	movabsq	$gimp_canvas_polygon_finalize, %r11
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
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_polygon_class_init, .Lfunc_end5-gimp_canvas_polygon_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_polygon_finalize,@function
gimp_canvas_polygon_finalize:           # @gimp_canvas_polygon_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_canvas_polygon_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_canvas_polygon_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_polygon_finalize, .Lfunc_end6-gimp_canvas_polygon_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_polygon_set_property,@function
gimp_canvas_polygon_set_property:       # @gimp_canvas_polygon_set_property
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
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_canvas_polygon_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_9
.LBB7_9:                                # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB7_4
	jmp	.LBB7_5
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	cmpq	$0, -48(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	g_memdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	shrq	$4, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
.LBB7_3:                                # %if.end
	jmp	.LBB7_8
.LBB7_4:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 12(%rdi)
	jmp	.LBB7_8
.LBB7_5:                                # %sw.default
	jmp	.LBB7_6
.LBB7_6:                                # %do.body
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
	movl	$160, %edx
	movabsq	$.L.str.10, %rcx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
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
	.size	gimp_canvas_polygon_set_property, .Lfunc_end7-gimp_canvas_polygon_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_polygon_get_property,@function
gimp_canvas_polygon_get_property:       # @gimp_canvas_polygon_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_canvas_polygon_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_10
.LBB8_10:                               # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB8_5
	jmp	.LBB8_6
.LBB8_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_3
# BB#2:                                 # %if.then
	xorl	%edx, %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movslq	8(%rcx), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_array_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	g_value_set_boxed
.LBB8_4:                                # %if.end
	jmp	.LBB8_9
.LBB8_5:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	12(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB8_9
.LBB8_6:                                # %sw.default
	jmp	.LBB8_7
.LBB8_7:                                # %do.body
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
	movl	$195, %edx
	movabsq	$.L.str.10, %rcx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB8_9
.LBB8_9:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_polygon_get_property, .Lfunc_end8-gimp_canvas_polygon_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_polygon_draw,@function
gimp_canvas_polygon_draw:               # @gimp_canvas_polygon_draw
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_polygon_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
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
	callq	gimp_canvas_polygon_transform
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	cairo_move_to
	movl	$1, -44(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	cairo_line_to
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movq	-32(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB9_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_fill
	jmp	.LBB9_7
.LBB9_6:                                # %if.else
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
.LBB9_7:                                # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_canvas_polygon_draw, .Lfunc_end9-gimp_canvas_polygon_draw
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4609434218613702656     # double 1.5
	.text
	.align	16, 0x90
	.type	gimp_canvas_polygon_get_extents,@function
gimp_canvas_polygon_get_extents:        # @gimp_canvas_polygon_get_extents
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
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_canvas_polygon_get_type
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
	callq	gimp_canvas_polygon_transform
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -52(%rbp)
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -56(%rbp)
	movl	-52(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, -60(%rbp)
	movl	-56(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, -64(%rbp)
	movl	$1, -68(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB10_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -72(%rbp)
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -76(%rbp)
	movl	-72(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, -80(%rbp)
	movl	-76(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, -84(%rbp)
	movl	-52(%rbp), %ecx
	cmpl	-72(%rbp), %ecx
	jge	.LBB10_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB10_5:                               # %cond.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB10_7
# BB#6:                                 # %cond.true.29
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB10_8
.LBB10_7:                               # %cond.false.30
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB10_8:                               # %cond.end.31
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.LBB10_10
# BB#9:                                 # %cond.true.35
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB10_11
.LBB10_10:                              # %cond.false.36
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB10_11:                              # %cond.end.37
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jle	.LBB10_13
# BB#12:                                # %cond.true.41
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB10_14
.LBB10_13:                              # %cond.false.42
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB10_14:                              # %cond.end.43
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB10_1
.LBB10_16:                              # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	leaq	-40(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movl	-60(%rbp), %ecx
	subl	-52(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movl	-64(%rbp), %ecx
	subl	-56(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	callq	cairo_region_create_rectangle
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_canvas_polygon_get_extents, .Lfunc_end10-gimp_canvas_polygon_get_extents
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_canvas_polygon_transform,@function
gimp_canvas_polygon_transform:          # @gimp_canvas_polygon_transform
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_polygon_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	-24(%rbp), %rcx
	addq	$8, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_display_shell_transform_xy_f
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_canvas_polygon_transform, .Lfunc_end12-gimp_canvas_polygon_transform
	.cfi_endproc

	.type	gimp_canvas_polygon_get_type.g_define_type_id__volatile,@object # @gimp_canvas_polygon_get_type.g_define_type_id__volatile
	.local	gimp_canvas_polygon_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_polygon_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasPolygon"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_polygon_new,@object # @__func__.gimp_canvas_polygon_new
.L__func__.gimp_canvas_polygon_new:
	.asciz	"gimp_canvas_polygon_new"
	.size	.L__func__.gimp_canvas_polygon_new, 24

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
	.asciz	"shell"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"filled"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"points"
	.size	.L.str.6, 7

	.type	.L__func__.gimp_canvas_polygon_new_from_coords,@object # @__func__.gimp_canvas_polygon_new_from_coords
.L__func__.gimp_canvas_polygon_new_from_coords:
	.asciz	"gimp_canvas_polygon_new_from_coords"
	.size	.L__func__.gimp_canvas_polygon_new_from_coords, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"coords != NULL && n_coords > 1"
	.size	.L.str.7, 31

	.type	gimp_canvas_polygon_parent_class,@object # @gimp_canvas_polygon_parent_class
	.local	gimp_canvas_polygon_parent_class
	.comm	gimp_canvas_polygon_parent_class,8,8
	.type	GimpCanvasPolygon_private_offset,@object # @GimpCanvasPolygon_private_offset
	.local	GimpCanvasPolygon_private_offset
	.comm	GimpCanvasPolygon_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.8, 54

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimpcanvaspolygon.c"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
