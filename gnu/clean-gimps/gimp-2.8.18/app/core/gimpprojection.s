	.text
	.file	"gimpprojection.bc"
	.globl	gimp_projection_get_type
	.align	16, 0x90
	.type	gimp_projection_get_type,@function
gimp_projection_get_type:               # @gimp_projection_get_type
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
	movq	gimp_projection_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_projection_get_type.g_define_type_id__volatile, %rax
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
	movl	$168, %edx
	movabsq	$gimp_projection_class_intern_init, %rdi
	movl	$136, %r8d
	movabsq	$gimp_projection_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movabsq	$gimp_projection_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_projection_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_projection_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_projection_get_type, .Lfunc_end0-gimp_projection_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_class_intern_init,@function
gimp_projection_class_intern_init:      # @gimp_projection_class_intern_init
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
	movq	%rax, gimp_projection_parent_class
	cmpl	$0, GimpProjection_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpProjection_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_projection_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_projection_class_intern_init, .Lfunc_end1-gimp_projection_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_init,@function
gimp_projection_init:                   # @gimp_projection_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 72(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 112(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 120(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_projection_init, .Lfunc_end2-gimp_projection_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_pickable_iface_init,@function
gimp_projection_pickable_iface_init:    # @gimp_projection_pickable_iface_init
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
	movabsq	$gimp_projection_get_opacity_at, %rax
	movabsq	$gimp_projection_get_pixel_at, %rcx
	movabsq	$gimp_projection_get_tiles, %rdx
	movabsq	$gimp_projection_get_bytes, %rsi
	movabsq	$gimp_projection_get_image_type, %r8
	movabsq	$gimp_projection_get_image, %r9
	movabsq	$gimp_projection_pickable_flush, %r10
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r10, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r9, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 48(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 56(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_projection_pickable_iface_init, .Lfunc_end3-gimp_projection_pickable_iface_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4608668606677049672     # double 1.3300000000000001
	.text
	.globl	gimp_projection_estimate_memsize
	.align	16, 0x90
	.type	gimp_projection_estimate_memsize,@function
gimp_projection_estimate_memsize:       # @gimp_projection_estimate_memsize
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	$0, -24(%rbp)
	movl	-4(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -28(%rbp)         # 4-byte Spill
	je	.LBB4_1
	jmp	.LBB4_4
.LBB4_4:                                # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB4_2
	jmp	.LBB4_5
.LBB4_5:                                # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB4_3
	jmp	.LBB4_1
.LBB4_1:                                # %sw.bb
	movq	$4, -24(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %sw.bb.1
	movq	$2, -24(%rbp)
.LBB4_3:                                # %sw.epilog
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	imulq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_projection_estimate_memsize, .Lfunc_end4-gimp_projection_estimate_memsize
	.cfi_endproc

	.globl	gimp_projection_new
	.align	16, 0x90
	.type	gimp_projection_new,@function
gimp_projection_new:                    # @gimp_projection_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_projectable_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projection_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	callq	gimp_projection_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_projection_projectable_invalidate, %rdi
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_projection_projectable_flush, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_projection_projectable_changed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-24(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_projection_new, .Lfunc_end5-gimp_projection_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_projectable_invalidate,@function
gimp_projection_projectable_invalidate: # @gimp_projection_projectable_invalidate
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	gimp_projection_add_update_area
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_projection_projectable_invalidate, .Lfunc_end6-gimp_projection_projectable_invalidate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_projectable_flush,@function
gimp_projection_projectable_flush:      # @gimp_projection_projectable_flush
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$1, 124(%rax)
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_projection_flush
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_projection_projectable_flush, .Lfunc_end7-gimp_projection_projectable_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_projectable_changed,@function
gimp_projection_projectable_changed:    # @gimp_projection_projectable_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 104(%rsi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	104(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 104(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_area_list_free
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	tile_pyramid_destroy
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB8_4:                                # %if.end.10
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_projectable_get_offset
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_projectable_get_size
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	gimp_projection_add_update_area
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_projection_projectable_changed, .Lfunc_end8-gimp_projection_projectable_changed
	.cfi_endproc

	.globl	gimp_projection_get_sink_node
	.align	16, 0x90
	.type	gimp_projection_get_sink_node,@function
gimp_projection_get_sink_node:          # @gimp_projection_get_sink_node
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_projection_get_type
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
	movabsq	$.L__func__.gimp_projection_get_sink_node, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_15
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB9_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_15
.LBB9_14:                               # %if.end.14
	callq	gegl_node_new
	movabsq	$.L.str.7, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	gimp_projectable_get_graph
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gegl_node_add_child
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_projection_get_tiles
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.11, %r9
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movl	$1, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	callq	gegl_node_connect_to
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB9_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_projection_get_sink_node, .Lfunc_end9-gimp_projection_get_sink_node
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_get_tiles,@function
gimp_projection_get_tiles:              # @gimp_projection_get_tiles
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_projection_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gimp_projection_get_tiles_at_level
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_projection_get_tiles, .Lfunc_end10-gimp_projection_get_tiles
	.cfi_endproc

	.globl	gimp_projection_get_tiles_at_level
	.align	16, 0x90
	.type	gimp_projection_get_tiles_at_level,@function
gimp_projection_get_tiles_at_level:     # @gimp_projection_get_tiles_at_level
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_projection_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projection_get_tiles_at_level, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_17
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB11_16
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_projection_get_image_type
	leaq	-64(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_projectable_get_size
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	callq	tile_pyramid_new
	movabsq	$gimp_projection_validate_tile, %rcx
	movq	-16(%rbp), %r8
	movq	%rax, 40(%r8)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	tile_pyramid_set_validate_proc
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB11_15
# BB#14:                                # %if.then.23
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	tile_pyramid_get_tiles
	movabsq	$.L.str.10, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-80(%rbp), %rdx
	movb	$0, %al
	callq	gegl_node_set
.LBB11_15:                              # %if.end.28
	jmp	.LBB11_16
.LBB11_16:                              # %if.end.29
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	tile_pyramid_get_tiles
	movq	%rax, -8(%rbp)
.LBB11_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_projection_get_tiles_at_level, .Lfunc_end11-gimp_projection_get_tiles_at_level
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_get_image_type,@function
gimp_projection_get_image_type:         # @gimp_projection_get_image_type
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
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_projection_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_projectable_get_image_type
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB12_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -28(%rbp)
	jne	.LBB12_3
.LBB12_2:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB12_10
.LBB12_3:                               # %cond.false
	cmpl	$2, -28(%rbp)
	je	.LBB12_5
# BB#4:                                 # %lor.lhs.false.5
	cmpl	$3, -28(%rbp)
	jne	.LBB12_6
.LBB12_5:                               # %cond.true.7
	movl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB12_9
.LBB12_6:                               # %cond.false.8
	movb	$1, %al
	cmpl	$4, -28(%rbp)
	movb	%al, -49(%rbp)          # 1-byte Spill
	je	.LBB12_8
# BB#7:                                 # %lor.rhs
	cmpl	$5, -28(%rbp)
	sete	%al
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB12_8:                               # %lor.end
	movb	-49(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
.LBB12_9:                               # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB12_10:                              # %cond.end.12
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB12_11
	jmp	.LBB12_16
.LBB12_16:                              # %cond.end.12
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB12_12
	jmp	.LBB12_17
.LBB12_17:                              # %cond.end.12
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jne	.LBB12_13
	jmp	.LBB12_11
.LBB12_11:                              # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB12_15
.LBB12_12:                              # %sw.bb.14
	movl	$3, -4(%rbp)
	jmp	.LBB12_15
.LBB12_13:                              # %sw.epilog
	jmp	.LBB12_14
.LBB12_14:                              # %do.body
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$301, %edx              # imm = 0x12D
	movabsq	$.L__func__.gimp_projection_get_image_type, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB12_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_projection_get_image_type, .Lfunc_end12-gimp_projection_get_image_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_validate_tile,@function
gimp_projection_validate_tile:          # @gimp_projection_validate_tile
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
	subq	$144, %rsp
	leaq	-88(%rbp), %rax
	leaq	-92(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -84(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, %rdx
	callq	tile_manager_get_tile_coordinates
	movq	-16(%rbp), %rdi
	callq	tile_ewidth
	movl	%eax, -104(%rbp)
	movl	%eax, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_eheight
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	movl	%eax, -108(%rbp)
	movl	%eax, -100(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tile_manager_get_tile_col_row
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$64, -104(%rbp)
	movb	%cl, -129(%rbp)         # 1-byte Spill
	jne	.LBB13_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$7, -84(%rbp)
	setl	%al
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB13_3:                               # %land.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_4
	jmp	.LBB13_8
.LBB13_4:                               # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movl	-112(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -112(%rbp)
	movq	-8(%rbp), %rdi
	movl	-112(%rbp), %esi
	movl	-116(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_at
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB13_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-128(%rbp), %rdi
	callq	tile_is_valid
	cmpl	$0, %eax
	je	.LBB13_7
.LBB13_6:                               # %if.then
	jmp	.LBB13_8
.LBB13_7:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$1, %eax
	movq	-128(%rbp), %rcx
	movb	8(%rcx), %dl
	andb	$-3, %dl
	orb	$2, %dl
	movb	%dl, 8(%rcx)
	movq	-8(%rbp), %rdi
	movl	-112(%rbp), %esi
	movl	-116(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_at
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	tile_ewidth
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-128(%rbp), %rdi
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movslq	%eax, %r9
	movq	%rdi, -80(%rbp,%r9,8)
	jmp	.LBB13_1
.LBB13_8:                               # %while.end
	movq	-24(%rbp), %rdi
	movl	-88(%rbp), %esi
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %ecx
	movl	-100(%rbp), %r8d
	callq	gimp_projection_construct
	movl	$0, -120(%rbp)
.LBB13_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-120(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB13_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	$1, %esi
	movslq	-120(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movb	8(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 8(%rax)
	movslq	-120(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdi
	callq	tile_release
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB13_9
.LBB13_12:                              # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_projection_validate_tile, .Lfunc_end13-gimp_projection_validate_tile
	.cfi_endproc

	.globl	gimp_projection_get_level
	.align	16, 0x90
	.type	gimp_projection_get_level,@function
gimp_projection_get_level:              # @gimp_projection_get_level
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
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_projectable_get_size
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movl	%esi, -40(%rbp)         # 4-byte Spill
	jbe	.LBB14_2
# BB#1:                                 # %cond.true
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB14_3:                               # %cond.end
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-36(%rbp), %edi         # 4-byte Reload
	movl	-40(%rbp), %esi         # 4-byte Reload
	callq	tile_pyramid_get_level
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_projection_get_level, .Lfunc_end14-gimp_projection_get_level
	.cfi_endproc

	.globl	gimp_projection_flush
	.align	16, 0x90
	.type	gimp_projection_flush,@function
gimp_projection_flush:                  # @gimp_projection_flush
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_projection_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projection_flush, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_projection_flush_whenever
.LBB15_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_projection_flush, .Lfunc_end15-gimp_projection_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_flush_whenever,@function
gimp_projection_flush_whenever:         # @gimp_projection_flush_whenever
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 72(%rdi)
	je	.LBB16_15
# BB#1:                                 # %if.then
	cmpl	$0, -12(%rbp)
	je	.LBB16_13
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB16_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB16_12
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	8(%rax), %ecx
	je	.LBB16_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	12(%rax), %ecx
	je	.LBB16_7
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	8(%rax), %r8d
	movq	-32(%rbp), %rax
	subl	(%rax), %r8d
	movq	-32(%rbp), %rax
	movl	12(%rax), %r9d
	movq	-32(%rbp), %rax
	subl	4(%rax), %r9d
	callq	gimp_projection_paint_area
.LBB16_7:                               # %if.end
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_8
.LBB16_8:                               # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB16_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB16_11
.LBB16_10:                              # %cond.false
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB16_11
.LBB16_11:                              # %cond.end
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB16_3
.LBB16_12:                              # %for.end
	jmp	.LBB16_14
.LBB16_13:                              # %if.else
	movq	-8(%rbp), %rdi
	callq	gimp_projection_idle_render_init
.LBB16_14:                              # %if.end.15
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_area_list_free
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	jmp	.LBB16_19
.LBB16_15:                              # %if.else.18
	cmpl	$0, -12(%rbp)
	jne	.LBB16_18
# BB#16:                                # %land.lhs.true.20
	movq	-8(%rbp), %rax
	cmpl	$0, 124(%rax)
	je	.LBB16_18
# BB#17:                                # %if.then.22
	movq	-8(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_projectable_invalidate_preview
.LBB16_18:                              # %if.end.24
	jmp	.LBB16_19
.LBB16_19:                              # %if.end.25
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_projection_flush_whenever, .Lfunc_end16-gimp_projection_flush_whenever
	.cfi_endproc

	.globl	gimp_projection_flush_now
	.align	16, 0x90
	.type	gimp_projection_flush_now,@function
gimp_projection_flush_now:              # @gimp_projection_flush_now
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_projection_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projection_flush_now, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_projection_flush_whenever
.LBB17_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_projection_flush_now, .Lfunc_end17-gimp_projection_flush_now
	.cfi_endproc

	.globl	gimp_projection_finish_draw
	.align	16, 0x90
	.type	gimp_projection_finish_draw,@function
gimp_projection_finish_draw:            # @gimp_projection_finish_draw
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_projection_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projection_finish_draw, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_17
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 104(%rax)
	je	.LBB18_17
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	104(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 104(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB18_14:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_projection_idle_render_callback
	cmpl	$0, %eax
	je	.LBB18_16
# BB#15:                                # %while.body
                                        #   in Loop: Header=BB18_14 Depth=1
	jmp	.LBB18_14
.LBB18_16:                              # %while.end
	jmp	.LBB18_17
.LBB18_17:                              # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_projection_finish_draw, .Lfunc_end18-gimp_projection_finish_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_idle_render_callback,@function
gimp_projection_idle_render_callback:   # @gimp_projection_idle_render_callback
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	$256, -36(%rbp)         # imm = 0x100
	movl	$128, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	88(%rdi), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	92(%rdi), %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	96(%rdi), %ecx
	movq	-24(%rbp), %rdi
	addl	80(%rdi), %ecx
	cmpl	%ecx, %eax
	jle	.LBB19_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	80(%rax), %ecx
	subl	-28(%rbp), %ecx
	movl	%ecx, -36(%rbp)
.LBB19_2:                               # %if.end
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	100(%rcx), %edx
	movq	-24(%rbp), %rcx
	addl	84(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB19_4
# BB#3:                                 # %if.then.15
	movq	-24(%rbp), %rax
	movl	100(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	84(%rax), %ecx
	subl	-32(%rbp), %ecx
	movl	%ecx, -40(%rbp)
.LBB19_4:                               # %if.end.22
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	callq	gimp_projection_paint_area
	movq	-24(%rbp), %rdi
	movl	88(%rdi), %ecx
	addl	$256, %ecx              # imm = 0x100
	movl	%ecx, 88(%rdi)
	movq	-24(%rbp), %rdi
	movl	88(%rdi), %ecx
	movq	-24(%rbp), %rdi
	movl	96(%rdi), %edx
	movq	-24(%rbp), %rdi
	addl	80(%rdi), %edx
	cmpl	%edx, %ecx
	jl	.LBB19_12
# BB#5:                                 # %if.then.34
	movq	-24(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 88(%rax)
	movq	-24(%rbp), %rax
	movl	92(%rax), %ecx
	addl	$128, %ecx
	movl	%ecx, 92(%rax)
	movq	-24(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	100(%rax), %edx
	movq	-24(%rbp), %rax
	addl	84(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB19_11
# BB#6:                                 # %if.then.50
	movq	-24(%rbp), %rdi
	callq	gimp_projection_idle_render_next_area
	cmpl	$0, %eax
	jne	.LBB19_10
# BB#7:                                 # %if.then.51
	movq	-24(%rbp), %rax
	movl	$0, 104(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 124(%rax)
	je	.LBB19_9
# BB#8:                                 # %if.then.54
	movq	-24(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_projectable_invalidate_preview
.LBB19_9:                               # %if.end.56
	movl	$0, -4(%rbp)
	jmp	.LBB19_13
.LBB19_10:                              # %if.end.57
	jmp	.LBB19_11
.LBB19_11:                              # %if.end.58
	jmp	.LBB19_12
.LBB19_12:                              # %if.end.59
	movl	$1, -4(%rbp)
.LBB19_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_projection_idle_render_callback, .Lfunc_end19-gimp_projection_idle_render_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_class_init,@function
gimp_projection_class_init:             # @gimp_projection_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$152, %rsp
.Ltmp63:
	.cfi_offset %rbx, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.14, %rdi
	movl	$1, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$5, %r8d
	movl	$20, %r11d
	movl	%r11d, %ebx
	movl	$24, %r11d
	movl	%r11d, %r14d
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$4, 8(%rsp)
	movl	$5, 16(%rsp)
	movq	$20, 24(%rsp)
	movq	$24, 32(%rsp)
	movq	$24, 40(%rsp)
	movq	$24, 48(%rsp)
	movq	$24, 56(%rsp)
	movb	$0, %al
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$gimp_projection_get_memsize, %rsi
	movabsq	$gimp_projection_finalize, %rdi
	movl	%eax, projection_signals
	movq	-40(%rbp), %r8
	movq	%rdi, 48(%r8)
	movq	-48(%rbp), %rdi
	movq	%rsi, 152(%rdi)
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_projection_class_init, .Lfunc_end20-gimp_projection_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_finalize,@function
gimp_projection_finalize:               # @gimp_projection_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_projection_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 104(%rax)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	104(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 104(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_area_list_free
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gimp_area_list_free
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB21_4
# BB#3:                                 # %if.then.13
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	tile_pyramid_destroy
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB21_4:                               # %if.end.16
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB21_6
# BB#5:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB21_6:                               # %if.end.21
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB21_8
# BB#7:                                 # %if.then.23
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
.LBB21_8:                               # %if.end.26
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_projection_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_projection_finalize, .Lfunc_end21-gimp_projection_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_get_memsize,@function
gimp_projection_get_memsize:            # @gimp_projection_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_projection_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	tile_pyramid_get_memsize
	movq	%rax, -32(%rbp)
.LBB22_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	gimp_projection_parent_class, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_projection_get_memsize, .Lfunc_end22-gimp_projection_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_pickable_flush,@function
gimp_projection_pickable_flush:         # @gimp_projection_pickable_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_projection_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_projection_finish_draw
	movq	-16(%rbp), %rdi
	callq	gimp_projection_flush_now
	movq	-16(%rbp), %rax
	cmpl	$0, 124(%rax)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_projectable_invalidate_preview
.LBB23_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_projection_pickable_flush, .Lfunc_end23-gimp_projection_pickable_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_get_image,@function
gimp_projection_get_image:              # @gimp_projection_get_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_projection_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_projectable_get_image
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_projection_get_image, .Lfunc_end24-gimp_projection_get_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_get_bytes,@function
gimp_projection_get_bytes:              # @gimp_projection_get_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_projection_get_image_type
	cmpl	$1, %eax
	jne	.LBB25_2
# BB#1:                                 # %cond.true
	movl	$4, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB25_15
.LBB25_2:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	gimp_projection_get_image_type
	cmpl	$0, %eax
	jne	.LBB25_4
# BB#3:                                 # %cond.true.3
	movl	$3, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB25_14
.LBB25_4:                               # %cond.false.4
	movq	-8(%rbp), %rdi
	callq	gimp_projection_get_image_type
	cmpl	$3, %eax
	jne	.LBB25_6
# BB#5:                                 # %cond.true.7
	movl	$2, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB25_13
.LBB25_6:                               # %cond.false.8
	movq	-8(%rbp), %rdi
	callq	gimp_projection_get_image_type
	cmpl	$2, %eax
	jne	.LBB25_8
# BB#7:                                 # %cond.true.11
	movl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB25_12
.LBB25_8:                               # %cond.false.12
	movq	-8(%rbp), %rdi
	callq	gimp_projection_get_image_type
	cmpl	$5, %eax
	jne	.LBB25_10
# BB#9:                                 # %cond.true.15
	movl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB25_11
.LBB25_10:                              # %cond.false.16
	movq	-8(%rbp), %rdi
	callq	gimp_projection_get_image_type
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %edx
	cmpl	$4, %eax
	cmovel	%edx, %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
.LBB25_11:                              # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB25_12:                              # %cond.end.20
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB25_13:                              # %cond.end.22
	movl	-20(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB25_14:                              # %cond.end.24
	movl	-16(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB25_15:                              # %cond.end.26
	movl	-12(%rbp), %eax         # 4-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_projection_get_bytes, .Lfunc_end25-gimp_projection_get_bytes
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_get_pixel_at,@function
gimp_projection_get_pixel_at:           # @gimp_projection_get_pixel_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_projection_get_tiles
	movq	%rax, -40(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB26_4
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jl	.LBB26_4
# BB#2:                                 # %lor.lhs.false.2
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	tile_manager_width
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB26_4
# BB#3:                                 # %lor.lhs.false.5
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	tile_manager_height
	movl	-48(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_5
.LBB26_4:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB26_6
.LBB26_5:                               # %if.end
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	tile_manager_read_pixel_data_1
	movl	$1, -4(%rbp)
.LBB26_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_projection_get_pixel_at, .Lfunc_end26-gimp_projection_get_pixel_at
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_get_opacity_at,@function
gimp_projection_get_opacity_at:         # @gimp_projection_get_opacity_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	movl	$255, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_projection_get_opacity_at, .Lfunc_end27-gimp_projection_get_opacity_at
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_paint_area,@function
gimp_projection_paint_area:             # @gimp_projection_paint_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	-32(%rbp), %rax
	leaq	-36(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	callq	gimp_projectable_get_offset
	leaq	-40(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_projectable_get_size
	movl	-16(%rbp), %ecx
	cmpl	-40(%rbp), %ecx
	jle	.LBB28_2
# BB#1:                                 # %cond.true
	movl	-40(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB28_6
.LBB28_2:                               # %cond.false
	cmpl	$0, -16(%rbp)
	jge	.LBB28_4
# BB#3:                                 # %cond.true.3
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB28_5
.LBB28_4:                               # %cond.false.4
	movl	-16(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB28_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB28_6:                               # %cond.end.5
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB28_8
# BB#7:                                 # %cond.true.8
	movl	-44(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB28_12
.LBB28_8:                               # %cond.false.9
	cmpl	$0, -20(%rbp)
	jge	.LBB28_10
# BB#9:                                 # %cond.true.11
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB28_11
.LBB28_10:                              # %cond.false.12
	movl	-20(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB28_11:                              # %cond.end.13
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB28_12:                              # %cond.end.15
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB28_14
# BB#13:                                # %cond.true.18
	movl	-40(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB28_18
.LBB28_14:                              # %cond.false.19
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB28_16
# BB#15:                                # %cond.true.22
	xorl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB28_17
.LBB28_16:                              # %cond.false.23
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB28_17:                              # %cond.end.25
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB28_18:                              # %cond.end.27
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB28_20
# BB#19:                                # %cond.true.31
	movl	-44(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB28_24
.LBB28_20:                              # %cond.false.32
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB28_22
# BB#21:                                # %cond.true.35
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB28_23
.LBB28_22:                              # %cond.false.36
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB28_23:                              # %cond.end.38
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB28_24:                              # %cond.end.40
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	-52(%rbp), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	callq	gimp_projection_invalidate
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	projection_signals, %esi
	movl	-12(%rbp), %ecx
	movl	-48(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-52(%rbp), %r8d
	addl	-36(%rbp), %r8d
	movl	-56(%rbp), %r9d
	subl	-48(%rbp), %r9d
	movl	-60(%rbp), %r10d
	subl	-52(%rbp), %r10d
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-104(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movb	$0, %al
	callq	g_signal_emit
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_projection_paint_area, .Lfunc_end28-gimp_projection_paint_area
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_idle_render_init,@function
gimp_projection_idle_render_init:       # @gimp_projection_idle_render_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB29_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB29_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	4(%rax), %esi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	12(%rax), %r8d
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	movl	%r8d, %ecx
	callq	gimp_area_new
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_area_list_process
	movq	-8(%rbp), %rsi
	movq	%rax, 112(%rsi)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB29_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB29_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB29_6
.LBB29_5:                               # %cond.false
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB29_6
.LBB29_6:                               # %cond.end
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB29_1
.LBB29_7:                               # %for.end
	movq	-8(%rbp), %rax
	cmpl	$0, 104(%rax)
	je	.LBB29_9
# BB#8:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	96(%rax), %edi
	movq	-8(%rbp), %rax
	movl	92(%rax), %esi
	movq	-8(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	80(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	92(%rax), %edx
	movq	-8(%rbp), %rax
	movl	84(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	92(%rax), %r9d
	movq	-8(%rbp), %rax
	subl	100(%rax), %r9d
	subl	%r9d, %r8d
	addl	%r8d, %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	gimp_area_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_area_list_process
	movq	-8(%rbp), %rsi
	movq	%rax, 112(%rsi)
	movq	-8(%rbp), %rdi
	callq	gimp_projection_idle_render_next_area
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB29_12
.LBB29_9:                               # %if.else
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB29_11
# BB#10:                                # %if.then.31
	movabsq	$.L.str.16, %rdi
	movabsq	$.L__func__.gimp_projection_idle_render_init, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB29_12
.LBB29_11:                              # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_projection_idle_render_next_area
	movl	$150, %edi
	movabsq	$gimp_projection_idle_render_callback, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_idle_add_full
	movq	-8(%rbp), %rcx
	movl	%eax, 104(%rcx)
.LBB29_12:                              # %if.end.36
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_projection_idle_render_init, .Lfunc_end29-gimp_projection_idle_render_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_invalidate,@function
gimp_projection_invalidate:             # @gimp_projection_invalidate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	tile_pyramid_invalidate_area
.LBB30_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_projection_invalidate, .Lfunc_end30-gimp_projection_invalidate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_idle_render_next_area,@function
gimp_projection_idle_render_next_area:  # @gimp_projection_idle_render_next_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 112(%rdi)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB31_3
.LBB31_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-16(%rbp), %rsi
	movq	%rax, 112(%rsi)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 96(%rax)
	movq	-16(%rbp), %rax
	movl	%ecx, 88(%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 100(%rax)
	movq	-16(%rbp), %rax
	movl	%ecx, 92(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	subl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 80(%rax)
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	subl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 84(%rax)
	movq	-24(%rbp), %rdi
	callq	gimp_area_free
	movl	$1, -4(%rbp)
.LBB31_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_projection_idle_render_next_area, .Lfunc_end31-gimp_projection_idle_render_next_area
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
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
	je	.LBB32_2
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
.LBB32_2:                               # %entry
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
.Lfunc_end32:
	.size	g_warning, .Lfunc_end32-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projection_add_update_area,@function
gimp_projection_add_update_area:        # @gimp_projection_add_update_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-36(%rbp), %rax
	leaq	-40(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, %rsi
	movq	%r9, %rdx
	callq	gimp_projectable_get_offset
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_projectable_get_size
	movl	-36(%rbp), %ecx
	movl	-12(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -12(%rbp)
	movl	-40(%rbp), %ecx
	movl	-16(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -16(%rbp)
	movl	-12(%rbp), %ecx
	cmpl	-44(%rbp), %ecx
	jle	.LBB33_2
# BB#1:                                 # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB33_6
.LBB33_2:                               # %cond.false
	cmpl	$0, -12(%rbp)
	jge	.LBB33_4
# BB#3:                                 # %cond.true.4
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB33_5
.LBB33_4:                               # %cond.false.5
	movl	-12(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB33_5:                               # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB33_6:                               # %cond.end.6
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	-16(%rbp), %ecx
	cmpl	-48(%rbp), %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jle	.LBB33_8
# BB#7:                                 # %cond.true.9
	movl	-48(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB33_12
.LBB33_8:                               # %cond.false.10
	cmpl	$0, -16(%rbp)
	jge	.LBB33_10
# BB#9:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB33_11
.LBB33_10:                              # %cond.false.13
	movl	-16(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB33_11:                              # %cond.end.14
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB33_12:                              # %cond.end.16
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	-12(%rbp), %ecx
	addl	-20(%rbp), %ecx
	cmpl	-44(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jle	.LBB33_14
# BB#13:                                # %cond.true.19
	movl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB33_18
.LBB33_14:                              # %cond.false.20
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB33_16
# BB#15:                                # %cond.true.23
	xorl	%eax, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB33_17
.LBB33_16:                              # %cond.false.24
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB33_17:                              # %cond.end.26
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB33_18:                              # %cond.end.28
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	-16(%rbp), %ecx
	addl	-24(%rbp), %ecx
	cmpl	-48(%rbp), %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jle	.LBB33_20
# BB#19:                                # %cond.true.32
	movl	-48(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB33_24
.LBB33_20:                              # %cond.false.33
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB33_22
# BB#21:                                # %cond.true.36
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB33_23
.LBB33_22:                              # %cond.false.37
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB33_23:                              # %cond.end.39
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB33_24:                              # %cond.end.41
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	-60(%rbp), %edi         # 4-byte Reload
	movl	-72(%rbp), %esi         # 4-byte Reload
	movl	-84(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_area_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_area_list_process
	movq	-8(%rbp), %rsi
	movq	%rax, 72(%rsi)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_projection_add_update_area, .Lfunc_end33-gimp_projection_add_update_area
	.cfi_endproc

	.type	gimp_projection_get_type.g_define_type_id__volatile,@object # @gimp_projection_get_type.g_define_type_id__volatile
	.local	gimp_projection_get_type.g_define_type_id__volatile
	.comm	gimp_projection_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpProjection"
	.size	.L.str, 15

	.type	gimp_projection_get_type.g_implement_interface_info,@object # @gimp_projection_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_projection_get_type.g_implement_interface_info:
	.quad	gimp_projection_pickable_iface_init
	.quad	0
	.quad	0
	.size	gimp_projection_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_projection_new,@object # @__func__.gimp_projection_new
.L__func__.gimp_projection_new:
	.asciz	"gimp_projection_new"
	.size	.L__func__.gimp_projection_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PROJECTABLE (projectable)"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"invalidate"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"flush"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"structure-changed"
	.size	.L.str.5, 18

	.type	.L__func__.gimp_projection_get_sink_node,@object # @__func__.gimp_projection_get_sink_node
.L__func__.gimp_projection_get_sink_node:
	.asciz	"gimp_projection_get_sink_node"
	.size	.L__func__.gimp_projection_get_sink_node, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_PROJECTION (proj)"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dont-cache"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"operation"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp:tilemanager-sink"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tile-manager"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"linear"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"output"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"input"
	.size	.L.str.13, 6

	.type	.L__func__.gimp_projection_get_tiles_at_level,@object # @__func__.gimp_projection_get_tiles_at_level
.L__func__.gimp_projection_get_tiles_at_level:
	.asciz	"gimp_projection_get_tiles_at_level"
	.size	.L__func__.gimp_projection_get_tiles_at_level, 35

	.type	.L__func__.gimp_projection_flush,@object # @__func__.gimp_projection_flush
.L__func__.gimp_projection_flush:
	.asciz	"gimp_projection_flush"
	.size	.L__func__.gimp_projection_flush, 22

	.type	.L__func__.gimp_projection_flush_now,@object # @__func__.gimp_projection_flush_now
.L__func__.gimp_projection_flush_now:
	.asciz	"gimp_projection_flush_now"
	.size	.L__func__.gimp_projection_flush_now, 26

	.type	.L__func__.gimp_projection_finish_draw,@object # @__func__.gimp_projection_finish_draw
.L__func__.gimp_projection_finish_draw:
	.asciz	"gimp_projection_finish_draw"
	.size	.L__func__.gimp_projection_finish_draw, 28

	.type	gimp_projection_parent_class,@object # @gimp_projection_parent_class
	.local	gimp_projection_parent_class
	.comm	gimp_projection_parent_class,8,8
	.type	GimpProjection_private_offset,@object # @GimpProjection_private_offset
	.local	GimpProjection_private_offset
	.comm	GimpProjection_private_offset,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"update"
	.size	.L.str.14, 7

	.type	projection_signals,@object # @projection_signals
	.local	projection_signals
	.comm	projection_signals,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimpprojection.c"
	.size	.L.str.15, 17

	.type	.L__func__.gimp_projection_get_image_type,@object # @__func__.gimp_projection_get_image_type
.L__func__.gimp_projection_get_image_type:
	.asciz	"gimp_projection_get_image_type"
	.size	.L__func__.gimp_projection_get_image_type, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s: wanted to start idle render with no update_areas"
	.size	.L.str.16, 53

	.type	.L__func__.gimp_projection_idle_render_init,@object # @__func__.gimp_projection_idle_render_init
.L__func__.gimp_projection_idle_render_init:
	.asciz	"gimp_projection_idle_render_init"
	.size	.L__func__.gimp_projection_idle_render_init, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
