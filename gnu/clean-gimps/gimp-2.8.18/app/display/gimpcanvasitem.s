	.text
	.file	"gimpcanvasitem.bc"
	.globl	gimp_canvas_item_get_type
	.align	16, 0x90
	.type	gimp_canvas_item_get_type,@function
gimp_canvas_item_get_type:              # @gimp_canvas_item_get_type
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
	movq	gimp_canvas_item_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_item_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$208, %edx
	movabsq	$gimp_canvas_item_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_item_init, %rcx
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
	movabsq	$gimp_canvas_item_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_item_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_item_get_type, .Lfunc_end0-gimp_canvas_item_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_item_class_intern_init,@function
gimp_canvas_item_class_intern_init:     # @gimp_canvas_item_class_intern_init
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
	movq	%rax, gimp_canvas_item_parent_class
	cmpl	$0, GimpCanvasItem_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasItem_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_item_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_item_class_intern_init, .Lfunc_end1-gimp_canvas_item_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_item_init,@function
gimp_canvas_item_init:                  # @gimp_canvas_item_init
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
	callq	gimp_canvas_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_canvas_item_init, .Lfunc_end2-gimp_canvas_item_init
	.cfi_endproc

	.globl	gimp_canvas_item_draw
	.align	16, 0x90
	.type	gimp_canvas_item_draw,@function
gimp_canvas_item_draw:                  # @gimp_canvas_item_draw
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_canvas_item_get_type
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
	movabsq	$.L__func__.gimp_canvas_item_draw, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_19
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_draw, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_19
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB3_19
# BB#18:                                # %if.then.20
	movq	-16(%rbp), %rdi
	callq	cairo_save
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	168(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-16(%rbp), %rdi
	callq	cairo_restore
.LBB3_19:                               # %if.end.22
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_item_draw, .Lfunc_end3-gimp_canvas_item_draw
	.cfi_endproc

	.globl	gimp_canvas_item_get_extents
	.align	16, 0x90
	.type	gimp_canvas_item_get_extents,@function
gimp_canvas_item_get_extents:           # @gimp_canvas_item_get_extents
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_get_extents, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_15
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.14
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_15
.LBB4_14:                               # %if.end.17
	movq	$0, -8(%rbp)
.LBB4_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_item_get_extents, .Lfunc_end4-gimp_canvas_item_get_extents
	.cfi_endproc

	.globl	gimp_canvas_item_hit
	.align	16, 0x90
	.type	gimp_canvas_item_hit,@function
gimp_canvas_item_hit:                   # @gimp_canvas_item_hit
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_hit, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_item_hit, .Lfunc_end5-gimp_canvas_item_hit
	.cfi_endproc

	.globl	gimp_canvas_item_set_visible
	.align	16, 0x90
	.type	gimp_canvas_item_set_visible,@function
gimp_canvas_item_set_visible:           # @gimp_canvas_item_set_visible
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_set_visible, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_14
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB6_14
# BB#13:                                # %if.then.15
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_begin_change
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_end_change
.LBB6_14:                               # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_item_set_visible, .Lfunc_end6-gimp_canvas_item_set_visible
	.cfi_endproc

	.globl	gimp_canvas_item_begin_change
	.align	16, 0x90
	.type	gimp_canvas_item_begin_change,@function
gimp_canvas_item_begin_change:          # @gimp_canvas_item_begin_change
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_begin_change, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_15
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$1, 28(%rax)
	jne	.LBB7_15
# BB#13:                                # %land.lhs.true.15
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	item_signals, %esi
	movq	%rcx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	g_signal_has_handler_pending
	cmpl	$0, %eax
	je	.LBB7_15
# BB#14:                                # %if.then.18
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_get_extents
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
.LBB7_15:                               # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_item_begin_change, .Lfunc_end7-gimp_canvas_item_begin_change
	.cfi_endproc

	.globl	gimp_canvas_item_end_change
	.align	16, 0x90
	.type	gimp_canvas_item_end_change,@function
gimp_canvas_item_end_change:            # @gimp_canvas_item_end_change
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_end_change, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_31
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.13
	movq	-16(%rbp), %rax
	cmpl	$0, 28(%rax)
	jle	.LBB8_15
# BB#14:                                # %if.then.15
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_end_change, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_31
.LBB8_16:                               # %if.end.17
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.18
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB8_31
# BB#18:                                # %if.then.22
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	item_signals, %esi
	movq	%rcx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	g_signal_has_handler_pending
	cmpl	$0, %eax
	je	.LBB8_27
# BB#19:                                # %if.then.25
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_get_extents
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_21
# BB#20:                                # %if.then.29
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB8_24
.LBB8_21:                               # %if.else.30
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB8_23
# BB#22:                                # %if.then.33
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	cairo_region_union
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	cairo_region_destroy
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %if.end.38
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	cmpq	$0, -48(%rbp)
	je	.LBB8_26
# BB#25:                                # %if.then.41
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	item_signals, %esi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-48(%rbp), %rdi
	callq	cairo_region_destroy
.LBB8_26:                               # %if.end.42
	jmp	.LBB8_30
.LBB8_27:                               # %if.else.43
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB8_29
# BB#28:                                # %if.then.46
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	cairo_region_destroy
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB8_29:                               # %if.end.49
	jmp	.LBB8_30
.LBB8_30:                               # %if.end.50
	jmp	.LBB8_31
.LBB8_31:                               # %if.end.51
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_item_end_change, .Lfunc_end8-gimp_canvas_item_end_change
	.cfi_endproc

	.globl	gimp_canvas_item_get_visible
	.align	16, 0x90
	.type	gimp_canvas_item_get_visible,@function
gimp_canvas_item_get_visible:           # @gimp_canvas_item_get_visible
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_get_visible, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_canvas_item_get_visible, .Lfunc_end9-gimp_canvas_item_get_visible
	.cfi_endproc

	.globl	gimp_canvas_item_set_line_cap
	.align	16, 0x90
	.type	gimp_canvas_item_set_line_cap,@function
gimp_canvas_item_set_line_cap:          # @gimp_canvas_item_set_line_cap
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_set_line_cap, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_14
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB10_14
# BB#13:                                # %if.then.15
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_begin_change
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_end_change
.LBB10_14:                              # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_canvas_item_set_line_cap, .Lfunc_end10-gimp_canvas_item_set_line_cap
	.cfi_endproc

	.globl	gimp_canvas_item_set_highlight
	.align	16, 0x90
	.type	gimp_canvas_item_set_highlight,@function
gimp_canvas_item_set_highlight:         # @gimp_canvas_item_set_highlight
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_set_highlight, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_14
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB11_14
# BB#13:                                # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB11_14:                              # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_canvas_item_set_highlight, .Lfunc_end11-gimp_canvas_item_set_highlight
	.cfi_endproc

	.globl	gimp_canvas_item_get_highlight
	.align	16, 0x90
	.type	gimp_canvas_item_get_highlight,@function
gimp_canvas_item_get_highlight:         # @gimp_canvas_item_get_highlight
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_get_highlight, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB12_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_canvas_item_get_highlight, .Lfunc_end12-gimp_canvas_item_get_highlight
	.cfi_endproc

	.globl	gimp_canvas_item_suspend_stroking
	.align	16, 0x90
	.type	gimp_canvas_item_suspend_stroking,@function
gimp_canvas_item_suspend_stroking:      # @gimp_canvas_item_suspend_stroking
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_suspend_stroking, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 20(%rax)
.LBB13_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_canvas_item_suspend_stroking, .Lfunc_end13-gimp_canvas_item_suspend_stroking
	.cfi_endproc

	.globl	gimp_canvas_item_resume_stroking
	.align	16, 0x90
	.type	gimp_canvas_item_resume_stroking,@function
gimp_canvas_item_resume_stroking:       # @gimp_canvas_item_resume_stroking
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_resume_stroking, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_18
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.13
	movq	-16(%rbp), %rax
	cmpl	$0, 20(%rax)
	jle	.LBB14_15
# BB#14:                                # %if.then.15
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_resume_stroking, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_18
.LBB14_16:                              # %if.end.17
	jmp	.LBB14_17
.LBB14_17:                              # %do.end.18
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 20(%rax)
.LBB14_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_canvas_item_resume_stroking, .Lfunc_end14-gimp_canvas_item_resume_stroking
	.cfi_endproc

	.globl	gimp_canvas_item_suspend_filling
	.align	16, 0x90
	.type	gimp_canvas_item_suspend_filling,@function
gimp_canvas_item_suspend_filling:       # @gimp_canvas_item_suspend_filling
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_suspend_filling, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 24(%rax)
.LBB15_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_canvas_item_suspend_filling, .Lfunc_end15-gimp_canvas_item_suspend_filling
	.cfi_endproc

	.globl	gimp_canvas_item_resume_filling
	.align	16, 0x90
	.type	gimp_canvas_item_resume_filling,@function
gimp_canvas_item_resume_filling:        # @gimp_canvas_item_resume_filling
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_resume_filling, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_18
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.13
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jle	.LBB16_15
# BB#14:                                # %if.then.15
	jmp	.LBB16_16
.LBB16_15:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_item_resume_filling, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_18
.LBB16_16:                              # %if.end.17
	jmp	.LBB16_17
.LBB16_17:                              # %do.end.18
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 24(%rax)
.LBB16_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_canvas_item_resume_filling, .Lfunc_end16-gimp_canvas_item_resume_filling
	.cfi_endproc

	.globl	_gimp_canvas_item_update
	.align	16, 0x90
	.type	_gimp_canvas_item_update,@function
_gimp_canvas_item_update:               # @_gimp_canvas_item_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	item_signals, %eax
	movq	-16(%rbp), %rcx
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_signal_emit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	_gimp_canvas_item_update, .Lfunc_end17-_gimp_canvas_item_update
	.cfi_endproc

	.globl	_gimp_canvas_item_needs_update
	.align	16, 0x90
	.type	_gimp_canvas_item_needs_update,@function
_gimp_canvas_item_needs_update:         # @_gimp_canvas_item_needs_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 28(%rax)
	movb	%dl, -25(%rbp)          # 1-byte Spill
	jne	.LBB18_2
# BB#1:                                 # %land.rhs
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	item_signals, %esi
	movq	%rcx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	g_signal_has_handler_pending
	cmpl	$0, %eax
	setne	%r8b
	movb	%r8b, -25(%rbp)         # 1-byte Spill
.LBB18_2:                               # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_gimp_canvas_item_needs_update, .Lfunc_end18-_gimp_canvas_item_needs_update
	.cfi_endproc

	.globl	_gimp_canvas_item_stroke
	.align	16, 0x90
	.type	_gimp_canvas_item_stroke,@function
_gimp_canvas_item_stroke:               # @_gimp_canvas_item_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 24(%rax)
	jle	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	g_warning
.LBB19_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	jne	.LBB19_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-16(%rbp), %rdx
	callq	*%rax
	jmp	.LBB19_5
.LBB19_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	cairo_new_sub_path
.LBB19_5:                               # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	_gimp_canvas_item_stroke, .Lfunc_end19-_gimp_canvas_item_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
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
	je	.LBB20_2
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
.LBB20_2:                               # %entry
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
.Lfunc_end20:
	.size	g_warning, .Lfunc_end20-g_warning
	.cfi_endproc

	.globl	_gimp_canvas_item_fill
	.align	16, 0x90
	.type	_gimp_canvas_item_fill,@function
_gimp_canvas_item_fill:                 # @_gimp_canvas_item_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	jle	.LBB21_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	g_warning
.LBB21_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB21_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-16(%rbp), %rdx
	callq	*%rax
	jmp	.LBB21_5
.LBB21_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	cairo_new_sub_path
.LBB21_5:                               # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	_gimp_canvas_item_fill, .Lfunc_end21-_gimp_canvas_item_fill
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_item_class_init,@function
gimp_canvas_item_class_init:            # @gimp_canvas_item_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.12, %rdi
	movl	$1, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$68, %r8d
	movl	%r8d, %r11d
	movabsq	$gimp_canvas_item_real_hit, %rbx
	movabsq	$gimp_canvas_item_real_fill, %r14
	movabsq	$gimp_canvas_item_real_stroke, %r15
	movabsq	$gimp_canvas_item_real_get_extents, %r12
	movabsq	$gimp_canvas_item_real_draw, %r13
	movabsq	$gimp_canvas_item_dispatch_properties_changed, %r8
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movabsq	$gimp_canvas_item_get_property, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movabsq	$gimp_canvas_item_set_property, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$gimp_canvas_item_constructed, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 72(%rax)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%r8, 56(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-48(%rbp), %rax
	movq	%r13, 168(%rax)
	movq	-48(%rbp), %rax
	movq	%r12, 176(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 184(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 192(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 200(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%r11, -112(%rbp)        # 8-byte Spill
	movq	%r10, -120(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, item_signals
	movq	-56(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_display_shell_get_type
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %r8d
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$1, %ecx
	movl	$227, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movl	$1, %r9d
	movl	$227, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$4, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$40, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_canvas_item_class_init, .Lfunc_end22-gimp_canvas_item_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_item_constructed,@function
gimp_canvas_item_constructed:           # @gimp_canvas_item_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.5
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.6
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.8
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.10
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.11
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$190, %edx
	movabsq	$.L__func__.gimp_canvas_item_constructed, %rcx
	movabsq	$.L.str.15, %r8
	callq	g_assertion_message_expr
.LBB23_11:                              # %if.end.12
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	$0, 28(%rcx)
	movq	gimp_canvas_item_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB23_14
# BB#13:                                # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_canvas_item_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB23_14:                              # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_canvas_item_constructed, .Lfunc_end23-gimp_canvas_item_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_item_set_property,@function
gimp_canvas_item_set_property:          # @gimp_canvas_item_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
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
	ja	.LBB24_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI24_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB24_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB24_8
.LBB24_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB24_8
.LBB24_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 12(%rdi)
	jmp	.LBB24_8
.LBB24_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 16(%rdi)
	jmp	.LBB24_8
.LBB24_5:                               # %sw.default
	jmp	.LBB24_6
.LBB24_6:                               # %do.body
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$222, %edx
	movabsq	$.L.str.17, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB24_8
.LBB24_8:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_canvas_item_set_property, .Lfunc_end24-gimp_canvas_item_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI24_0:
	.quad	.LBB24_1
	.quad	.LBB24_2
	.quad	.LBB24_3
	.quad	.LBB24_4

	.text
	.align	16, 0x90
	.type	gimp_canvas_item_get_property,@function
gimp_canvas_item_get_property:          # @gimp_canvas_item_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
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
	ja	.LBB25_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI25_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB25_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB25_8
.LBB25_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB25_8
.LBB25_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	12(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB25_8
.LBB25_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	16(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB25_8
.LBB25_5:                               # %sw.default
	jmp	.LBB25_6
.LBB25_6:                               # %do.body
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$251, %edx
	movabsq	$.L.str.17, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB25_8
.LBB25_8:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_canvas_item_get_property, .Lfunc_end25-gimp_canvas_item_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI25_0:
	.quad	.LBB25_1
	.quad	.LBB25_2
	.quad	.LBB25_3
	.quad	.LBB25_4

	.text
	.align	16, 0x90
	.type	gimp_canvas_item_dispatch_properties_changed,@function
gimp_canvas_item_dispatch_properties_changed: # @gimp_canvas_item_dispatch_properties_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	gimp_canvas_item_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	-32(%rbp), %rdi
	callq	_gimp_canvas_item_needs_update
	cmpl	$0, %eax
	je	.LBB26_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_canvas_item_get_extents
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB26_3
# BB#2:                                 # %if.then.6
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	item_signals, %esi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-40(%rbp), %rdi
	callq	cairo_region_destroy
.LBB26_3:                               # %if.end
	jmp	.LBB26_4
.LBB26_4:                               # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_canvas_item_dispatch_properties_changed, .Lfunc_end26-gimp_canvas_item_dispatch_properties_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_item_real_draw,@function
gimp_canvas_item_real_draw:             # @gimp_canvas_item_real_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$285, %edx              # imm = 0x11D
	movabsq	$.L__func__.gimp_canvas_item_real_draw, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_warn_message
# BB#2:                                 # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_canvas_item_real_draw, .Lfunc_end27-gimp_canvas_item_real_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_item_real_get_extents,@function
gimp_canvas_item_real_get_extents:      # @gimp_canvas_item_real_get_extents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_canvas_item_real_get_extents, .Lfunc_end28-gimp_canvas_item_real_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_item_real_stroke,@function
gimp_canvas_item_real_stroke:           # @gimp_canvas_item_real_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	12(%rax), %esi
	callq	cairo_set_line_cap
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_shell_set_tool_bg_style
	movq	-24(%rbp), %rdi
	callq	cairo_stroke_preserve
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	callq	gimp_display_shell_set_tool_fg_style
	movq	-24(%rbp), %rdi
	callq	cairo_stroke
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_canvas_item_real_stroke, .Lfunc_end29-gimp_canvas_item_real_stroke
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_canvas_item_real_fill,@function
gimp_canvas_item_real_fill:             # @gimp_canvas_item_real_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_shell_set_tool_bg_style
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-24(%rbp), %rdi
	callq	cairo_stroke_preserve
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	callq	gimp_display_shell_set_tool_fg_style
	movq	-24(%rbp), %rdi
	callq	cairo_fill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_canvas_item_real_fill, .Lfunc_end30-gimp_canvas_item_real_fill
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_item_real_hit,@function
gimp_canvas_item_real_hit:              # @gimp_canvas_item_real_hit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_canvas_item_real_hit, .Lfunc_end31-gimp_canvas_item_real_hit
	.cfi_endproc

	.type	gimp_canvas_item_get_type.g_define_type_id__volatile,@object # @gimp_canvas_item_get_type.g_define_type_id__volatile
	.local	gimp_canvas_item_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_item_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasItem"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_item_draw,@object # @__func__.gimp_canvas_item_draw
.L__func__.gimp_canvas_item_draw:
	.asciz	"gimp_canvas_item_draw"
	.size	.L__func__.gimp_canvas_item_draw, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CANVAS_ITEM (item)"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cr != NULL"
	.size	.L.str.3, 11

	.type	.L__func__.gimp_canvas_item_get_extents,@object # @__func__.gimp_canvas_item_get_extents
.L__func__.gimp_canvas_item_get_extents:
	.asciz	"gimp_canvas_item_get_extents"
	.size	.L__func__.gimp_canvas_item_get_extents, 29

	.type	.L__func__.gimp_canvas_item_hit,@object # @__func__.gimp_canvas_item_hit
.L__func__.gimp_canvas_item_hit:
	.asciz	"gimp_canvas_item_hit"
	.size	.L__func__.gimp_canvas_item_hit, 21

	.type	.L__func__.gimp_canvas_item_set_visible,@object # @__func__.gimp_canvas_item_set_visible
.L__func__.gimp_canvas_item_set_visible:
	.asciz	"gimp_canvas_item_set_visible"
	.size	.L__func__.gimp_canvas_item_set_visible, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"visible"
	.size	.L.str.4, 8

	.type	.L__func__.gimp_canvas_item_get_visible,@object # @__func__.gimp_canvas_item_get_visible
.L__func__.gimp_canvas_item_get_visible:
	.asciz	"gimp_canvas_item_get_visible"
	.size	.L__func__.gimp_canvas_item_get_visible, 29

	.type	.L__func__.gimp_canvas_item_set_line_cap,@object # @__func__.gimp_canvas_item_set_line_cap
.L__func__.gimp_canvas_item_set_line_cap:
	.asciz	"gimp_canvas_item_set_line_cap"
	.size	.L__func__.gimp_canvas_item_set_line_cap, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"line-cap"
	.size	.L.str.5, 9

	.type	.L__func__.gimp_canvas_item_set_highlight,@object # @__func__.gimp_canvas_item_set_highlight
.L__func__.gimp_canvas_item_set_highlight:
	.asciz	"gimp_canvas_item_set_highlight"
	.size	.L__func__.gimp_canvas_item_set_highlight, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"highlight"
	.size	.L.str.6, 10

	.type	.L__func__.gimp_canvas_item_get_highlight,@object # @__func__.gimp_canvas_item_get_highlight
.L__func__.gimp_canvas_item_get_highlight:
	.asciz	"gimp_canvas_item_get_highlight"
	.size	.L__func__.gimp_canvas_item_get_highlight, 31

	.type	.L__func__.gimp_canvas_item_begin_change,@object # @__func__.gimp_canvas_item_begin_change
.L__func__.gimp_canvas_item_begin_change:
	.asciz	"gimp_canvas_item_begin_change"
	.size	.L__func__.gimp_canvas_item_begin_change, 30

	.type	item_signals,@object    # @item_signals
	.local	item_signals
	.comm	item_signals,4,4
	.type	.L__func__.gimp_canvas_item_end_change,@object # @__func__.gimp_canvas_item_end_change
.L__func__.gimp_canvas_item_end_change:
	.asciz	"gimp_canvas_item_end_change"
	.size	.L__func__.gimp_canvas_item_end_change, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"private->change_count > 0"
	.size	.L.str.7, 26

	.type	.L__func__.gimp_canvas_item_suspend_stroking,@object # @__func__.gimp_canvas_item_suspend_stroking
.L__func__.gimp_canvas_item_suspend_stroking:
	.asciz	"gimp_canvas_item_suspend_stroking"
	.size	.L__func__.gimp_canvas_item_suspend_stroking, 34

	.type	.L__func__.gimp_canvas_item_resume_stroking,@object # @__func__.gimp_canvas_item_resume_stroking
.L__func__.gimp_canvas_item_resume_stroking:
	.asciz	"gimp_canvas_item_resume_stroking"
	.size	.L__func__.gimp_canvas_item_resume_stroking, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"private->suspend_stroking > 0"
	.size	.L.str.8, 30

	.type	.L__func__.gimp_canvas_item_suspend_filling,@object # @__func__.gimp_canvas_item_suspend_filling
.L__func__.gimp_canvas_item_suspend_filling:
	.asciz	"gimp_canvas_item_suspend_filling"
	.size	.L__func__.gimp_canvas_item_suspend_filling, 33

	.type	.L__func__.gimp_canvas_item_resume_filling,@object # @__func__.gimp_canvas_item_resume_filling
.L__func__.gimp_canvas_item_resume_filling:
	.asciz	"gimp_canvas_item_resume_filling"
	.size	.L__func__.gimp_canvas_item_resume_filling, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"private->suspend_filling > 0"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"_gimp_canvas_item_stroke() on an item that is in a filling group"
	.size	.L.str.10, 65

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_gimp_canvas_item_fill() on an item that is in a stroking group"
	.size	.L.str.11, 64

	.type	gimp_canvas_item_parent_class,@object # @gimp_canvas_item_parent_class
	.local	gimp_canvas_item_parent_class
	.comm	gimp_canvas_item_parent_class,8,8
	.type	GimpCanvasItem_private_offset,@object # @GimpCanvasItem_private_offset
	.local	GimpCanvasItem_private_offset
	.comm	GimpCanvasItem_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"update"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"shell"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpcanvasitem.c"
	.size	.L.str.14, 17

	.type	.L__func__.gimp_canvas_item_constructed,@object # @__func__.gimp_canvas_item_constructed
.L__func__.gimp_canvas_item_constructed:
	.asciz	"gimp_canvas_item_constructed"
	.size	.L__func__.gimp_canvas_item_constructed, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_IS_DISPLAY_SHELL (private->shell)"
	.size	.L.str.15, 39

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"property"
	.size	.L.str.17, 9

	.type	.L__func__.gimp_canvas_item_real_draw,@object # @__func__.gimp_canvas_item_real_draw
.L__func__.gimp_canvas_item_real_draw:
	.asciz	"gimp_canvas_item_real_draw"
	.size	.L__func__.gimp_canvas_item_real_draw, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
