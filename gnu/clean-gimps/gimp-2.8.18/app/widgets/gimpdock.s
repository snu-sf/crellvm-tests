	.text
	.file	"gimpdock.bc"
	.globl	gimp_dock_get_type
	.align	16, 0x90
	.type	gimp_dock_get_type,@function
gimp_dock_get_type:                     # @gimp_dock_get_type
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
	movq	gimp_dock_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dock_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$872, %edx              # imm = 0x368
	movabsq	$gimp_dock_class_intern_init, %rdi
	movl	$136, %r8d
	movabsq	$gimp_dock_init, %rcx
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
	movabsq	$gimp_dock_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dock_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dock_get_type, .Lfunc_end0-gimp_dock_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_class_intern_init,@function
gimp_dock_class_intern_init:            # @gimp_dock_class_intern_init
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
	movq	%rax, gimp_dock_parent_class
	cmpl	$0, GimpDock_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDock_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dock_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dock_class_intern_init, .Lfunc_end1-gimp_dock_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_init,@function
gimp_dock_init:                         # @gimp_dock_init
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movabsq	$.L.str.24, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 128(%rsi)
	movl	gimp_dock_init.dock_ID, %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, gimp_dock_init.dock_ID
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movl	%ecx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movl	32(%rax), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_set_name
	movq	-16(%rbp), %rdi
	callq	g_free
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	-8(%rbp), %r8
	movq	128(%r8), %r8
	movq	%rax, (%r8)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	-8(%rbp), %r9
	movq	128(%r9), %r9
	movq	%rax, 8(%r9)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gimp_paned_box_new
	movq	-8(%rbp), %r9
	movq	128(%r9), %r9
	movq	%rax, 16(%r9)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_paned_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_dock_dropped_cb, %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	gimp_paned_box_set_dropped_cb
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	16(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dock_init, .Lfunc_end2-gimp_dock_init
	.cfi_endproc

	.globl	gimp_dock_get_description
	.align	16, 0x90
	.type	gimp_dock_get_description,@function
gimp_dock_get_description:              # @gimp_dock_get_description
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_get_type
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
	movabsq	$.L__func__.gimp_dock_get_description, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_15
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 824(%rax)
	je	.LBB3_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	824(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_15
.LBB3_14:                               # %if.end.17
	movq	$0, -8(%rbp)
.LBB3_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dock_get_description, .Lfunc_end3-gimp_dock_get_description
	.cfi_endproc

	.globl	gimp_dock_set_host_geometry_hints
	.align	16, 0x90
	.type	gimp_dock_set_host_geometry_hints,@function
gimp_dock_set_host_geometry_hints:      # @gimp_dock_set_host_geometry_hints
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_get_type
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
	movabsq	$.L__func__.gimp_dock_set_host_geometry_hints, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_26
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_set_host_geometry_hints, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_26
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 832(%rax)
	je	.LBB4_26
# BB#25:                                # %if.then.41
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	832(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB4_26:                               # %if.end.44
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dock_set_host_geometry_hints, .Lfunc_end4-gimp_dock_set_host_geometry_hints
	.cfi_endproc

	.globl	gimp_dock_invalidate_geometry
	.align	16, 0x90
	.type	gimp_dock_invalidate_geometry,@function
gimp_dock_invalidate_geometry:          # @gimp_dock_invalidate_geometry
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_invalidate_geometry, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	dock_signals+12, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB5_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dock_invalidate_geometry, .Lfunc_end5-gimp_dock_invalidate_geometry
	.cfi_endproc

	.globl	gimp_dock_update_with_context
	.align	16, 0x90
	.type	gimp_dock_update_with_context,@function
gimp_dock_update_with_context:          # @gimp_dock_update_with_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dock_get_dockbooks
	movq	%rax, -24(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB6_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_dockbook_update_with_context
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB6_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB6_6
.LBB6_6:                                # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB6_1
.LBB6_7:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dock_update_with_context, .Lfunc_end6-gimp_dock_update_with_context
	.cfi_endproc

	.globl	gimp_dock_get_dockbooks
	.align	16, 0x90
	.type	gimp_dock_get_dockbooks,@function
gimp_dock_get_dockbooks:                # @gimp_dock_get_dockbooks
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_get_type
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
	movabsq	$.L__func__.gimp_dock_get_dockbooks, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dock_get_dockbooks, .Lfunc_end7-gimp_dock_get_dockbooks
	.cfi_endproc

	.globl	gimp_dock_get_context
	.align	16, 0x90
	.type	gimp_dock_get_context,@function
gimp_dock_get_context:                  # @gimp_dock_get_context
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_get_context, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_21
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	cmpq	$0, -24(%rbp)
	jne	.LBB8_16
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_get_ancestor
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.21
	movq	-56(%rbp), %rdi
	callq	gimp_dock_columns_get_context
	movq	%rax, -24(%rbp)
.LBB8_15:                               # %if.end.23
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.24
	cmpq	$0, -24(%rbp)
	jne	.LBB8_20
# BB#17:                                # %if.then.26
	movq	-16(%rbp), %rdi
	callq	gimp_dock_window_from_dock
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB8_19
# BB#18:                                # %if.then.30
	movq	-64(%rbp), %rdi
	callq	gimp_dock_window_get_context
	movq	%rax, -24(%rbp)
.LBB8_19:                               # %if.end.32
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.33
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dock_get_context, .Lfunc_end8-gimp_dock_get_context
	.cfi_endproc

	.globl	gimp_dock_get_dialog_factory
	.align	16, 0x90
	.type	gimp_dock_get_dialog_factory,@function
gimp_dock_get_dialog_factory:           # @gimp_dock_get_dialog_factory
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_get_type
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
	movabsq	$.L__func__.gimp_dock_get_dialog_factory, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_21
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	cmpq	$0, -24(%rbp)
	jne	.LBB9_16
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_get_ancestor
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.21
	movq	-56(%rbp), %rdi
	callq	gimp_dock_columns_get_dialog_factory
	movq	%rax, -24(%rbp)
.LBB9_15:                               # %if.end.23
	jmp	.LBB9_16
.LBB9_16:                               # %if.end.24
	cmpq	$0, -24(%rbp)
	jne	.LBB9_20
# BB#17:                                # %if.then.26
	movq	-16(%rbp), %rdi
	callq	gimp_dock_window_from_dock
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB9_19
# BB#18:                                # %if.then.30
	movq	-64(%rbp), %rdi
	callq	gimp_dock_window_get_dialog_factory
	movq	%rax, -24(%rbp)
.LBB9_19:                               # %if.end.32
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.33
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dock_get_dialog_factory, .Lfunc_end9-gimp_dock_get_dialog_factory
	.cfi_endproc

	.globl	gimp_dock_get_ui_manager
	.align	16, 0x90
	.type	gimp_dock_get_ui_manager,@function
gimp_dock_get_ui_manager:               # @gimp_dock_get_ui_manager
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_get_type
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
	movabsq	$.L__func__.gimp_dock_get_ui_manager, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_21
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	cmpq	$0, -24(%rbp)
	jne	.LBB10_16
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_get_ancestor
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.21
	movq	-56(%rbp), %rdi
	callq	gimp_dock_columns_get_ui_manager
	movq	%rax, -24(%rbp)
.LBB10_15:                              # %if.end.23
	jmp	.LBB10_16
.LBB10_16:                              # %if.end.24
	cmpq	$0, -24(%rbp)
	jne	.LBB10_20
# BB#17:                                # %if.then.26
	movq	-16(%rbp), %rdi
	callq	gimp_dock_window_from_dock
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB10_19
# BB#18:                                # %if.then.30
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_dock_container_get_ui_manager
	movq	%rax, -24(%rbp)
.LBB10_19:                              # %if.end.35
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.36
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_21:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dock_get_ui_manager, .Lfunc_end10-gimp_dock_get_ui_manager
	.cfi_endproc

	.globl	gimp_dock_get_n_dockables
	.align	16, 0x90
	.type	gimp_dock_get_n_dockables,@function
gimp_dock_get_n_dockables:              # @gimp_dock_get_n_dockables
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
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dock_get_type
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
	movabsq	$.L__func__.gimp_dock_get_n_dockables, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_17
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB11_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB11_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_n_pages
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB11_13
.LBB11_16:                              # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB11_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dock_get_n_dockables, .Lfunc_end11-gimp_dock_get_n_dockables
	.cfi_endproc

	.globl	gimp_dock_get_main_vbox
	.align	16, 0x90
	.type	gimp_dock_get_main_vbox,@function
gimp_dock_get_main_vbox:                # @gimp_dock_get_main_vbox
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_get_main_vbox, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_dock_get_main_vbox, .Lfunc_end12-gimp_dock_get_main_vbox
	.cfi_endproc

	.globl	gimp_dock_get_vbox
	.align	16, 0x90
	.type	gimp_dock_get_vbox,@function
gimp_dock_get_vbox:                     # @gimp_dock_get_vbox
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_get_type
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
	movabsq	$.L__func__.gimp_dock_get_vbox, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB13_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_dock_get_vbox, .Lfunc_end13-gimp_dock_get_vbox
	.cfi_endproc

	.globl	gimp_dock_get_id
	.align	16, 0x90
	.type	gimp_dock_get_id,@function
gimp_dock_get_id:                       # @gimp_dock_get_id
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_get_type
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
	movabsq	$.L__func__.gimp_dock_get_id, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB14_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_dock_get_id, .Lfunc_end14-gimp_dock_get_id
	.cfi_endproc

	.globl	gimp_dock_set_id
	.align	16, 0x90
	.type	gimp_dock_set_id,@function
gimp_dock_set_id:                       # @gimp_dock_set_id
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_get_type
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
	movabsq	$.L__func__.gimp_dock_set_id, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	%eax, 32(%rcx)
.LBB15_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_dock_set_id, .Lfunc_end15-gimp_dock_set_id
	.cfi_endproc

	.globl	gimp_dock_add
	.align	16, 0x90
	.type	gimp_dock_add,@function
gimp_dock_add:                          # @gimp_dock_add
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_add, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_30
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB16_20
.LBB16_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB16_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB16_19
.LBB16_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB16_19:                              # %if.end.31
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.35
	jmp	.LBB16_23
.LBB16_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_add, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_30
.LBB16_23:                              # %if.end.37
	jmp	.LBB16_24
.LBB16_24:                              # %do.end.38
	jmp	.LBB16_25
.LBB16_25:                              # %do.body.39
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	cmpq	$0, %rax
	jne	.LBB16_27
# BB#26:                                # %if.then.42
	jmp	.LBB16_28
.LBB16_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_add, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_30
.LBB16_28:                              # %if.end.44
	jmp	.LBB16_29
.LBB16_29:                              # %do.end.45
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-24(%rbp), %edx
	callq	gimp_dockbook_add
.LBB16_30:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_dock_add, .Lfunc_end16-gimp_dock_add
	.cfi_endproc

	.globl	gimp_dock_remove
	.align	16, 0x90
	.type	gimp_dock_remove,@function
gimp_dock_remove:                       # @gimp_dock_remove
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_remove, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_35
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB17_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB17_20
.LBB17_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB17_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB17_19:                              # %if.end.31
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB17_22
# BB#21:                                # %if.then.35
	jmp	.LBB17_23
.LBB17_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_remove, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_35
.LBB17_23:                              # %if.end.37
	jmp	.LBB17_24
.LBB17_24:                              # %do.end.38
	jmp	.LBB17_25
.LBB17_25:                              # %do.body.39
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	cmpq	$0, %rax
	je	.LBB17_27
# BB#26:                                # %if.then.42
	jmp	.LBB17_28
.LBB17_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_remove, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_35
.LBB17_28:                              # %if.end.44
	jmp	.LBB17_29
.LBB17_29:                              # %do.end.45
	jmp	.LBB17_30
.LBB17_30:                              # %do.body.46
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	%rax, %rdi
	callq	gimp_dockbook_get_dock
	cmpq	-8(%rbp), %rax
	jne	.LBB17_32
# BB#31:                                # %if.then.50
	jmp	.LBB17_33
.LBB17_32:                              # %if.else.51
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_remove, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_35
.LBB17_33:                              # %if.end.52
	jmp	.LBB17_34
.LBB17_34:                              # %do.end.53
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dockbook_remove
.LBB17_35:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_dock_remove, .Lfunc_end17-gimp_dock_remove
	.cfi_endproc

	.globl	gimp_dock_add_book
	.align	16, 0x90
	.type	gimp_dock_add_book,@function
gimp_dock_add_book:                     # @gimp_dock_add_book
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_add_book, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_30
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB18_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB18_20
.LBB18_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB18_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB18_19
.LBB18_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB18_19:                              # %if.end.31
	jmp	.LBB18_20
.LBB18_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB18_22
# BB#21:                                # %if.then.35
	jmp	.LBB18_23
.LBB18_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_add_book, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_30
.LBB18_23:                              # %if.end.37
	jmp	.LBB18_24
.LBB18_24:                              # %do.end.38
	jmp	.LBB18_25
.LBB18_25:                              # %do.body.39
	movq	-16(%rbp), %rdi
	callq	gimp_dockbook_get_dock
	cmpq	$0, %rax
	jne	.LBB18_27
# BB#26:                                # %if.then.42
	jmp	.LBB18_28
.LBB18_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_add_book, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_30
.LBB18_28:                              # %if.end.44
	jmp	.LBB18_29
.LBB18_29:                              # %do.end.45
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_dockbook_set_dock
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_dock_invalidate_description, %rdi
	movl	$2, %r8d
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_dock_invalidate_description, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_dock_invalidate_description, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	24(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_list_insert
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_paned_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paned_box_add_widget
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rdi
	callq	gimp_dock_invalidate_description
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	dock_signals, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB18_30:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_dock_add_book, .Lfunc_end18-gimp_dock_add_book
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_invalidate_description,@function
gimp_dock_invalidate_description:       # @gimp_dock_invalidate_description
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_invalidate_description, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	dock_signals+8, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB19_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_dock_invalidate_description, .Lfunc_end19-gimp_dock_invalidate_description
	.cfi_endproc

	.globl	gimp_dock_remove_book
	.align	16, 0x90
	.type	gimp_dock_remove_book,@function
gimp_dock_remove_book:                  # @gimp_dock_remove_book
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_remove_book, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_30
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB20_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB20_20
.LBB20_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB20_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB20_19
.LBB20_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB20_19:                              # %if.end.31
	jmp	.LBB20_20
.LBB20_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB20_22
# BB#21:                                # %if.then.35
	jmp	.LBB20_23
.LBB20_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_remove_book, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_30
.LBB20_23:                              # %if.end.37
	jmp	.LBB20_24
.LBB20_24:                              # %do.end.38
	jmp	.LBB20_25
.LBB20_25:                              # %do.body.39
	movq	-16(%rbp), %rdi
	callq	gimp_dockbook_get_dock
	cmpq	-8(%rbp), %rax
	jne	.LBB20_27
# BB#26:                                # %if.then.42
	jmp	.LBB20_28
.LBB20_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_remove_book, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_30
.LBB20_28:                              # %if.end.44
	jmp	.LBB20_29
.LBB20_29:                              # %do.end.45
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_dockbook_set_dock
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_dock_invalidate_description, %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %r9
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_object_ref
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	24(%rdi), %rdi
	movq	-16(%rbp), %r8
	movq	%r8, %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_list_remove
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, 24(%rsi)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_paned_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paned_box_remove_widget
	movq	-8(%rbp), %rdi
	callq	gimp_dock_invalidate_description
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	dock_signals+4, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
.LBB20_30:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_dock_remove_book, .Lfunc_end20-gimp_dock_remove_book
	.cfi_endproc

	.globl	gimp_dock_temp_add
	.align	16, 0x90
	.type	gimp_dock_temp_add,@function
gimp_dock_temp_add:                     # @gimp_dock_temp_add
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_temp_add, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_25
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB21_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB21_20
.LBB21_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB21_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB21_19
.LBB21_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB21_19:                              # %if.end.31
	jmp	.LBB21_20
.LBB21_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB21_22
# BB#21:                                # %if.then.35
	jmp	.LBB21_23
.LBB21_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_temp_add, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_25
.LBB21_23:                              # %if.end.37
	jmp	.LBB21_24
.LBB21_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
.LBB21_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_dock_temp_add, .Lfunc_end21-gimp_dock_temp_add
	.cfi_endproc

	.globl	gimp_dock_temp_remove
	.align	16, 0x90
	.type	gimp_dock_temp_remove,@function
gimp_dock_temp_remove:                  # @gimp_dock_temp_remove
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_temp_remove, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_25
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB22_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB22_20
.LBB22_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB22_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB22_19
.LBB22_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB22_19:                              # %if.end.31
	jmp	.LBB22_20
.LBB22_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB22_22
# BB#21:                                # %if.then.35
	jmp	.LBB22_23
.LBB22_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_temp_remove, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_25
.LBB22_23:                              # %if.end.37
	jmp	.LBB22_24
.LBB22_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
.LBB22_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_dock_temp_remove, .Lfunc_end22-gimp_dock_temp_remove
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI23_1:
	.quad	4605681218924226942     # double 0.83333333333329995
	.text
	.align	16, 0x90
	.type	gimp_dock_class_init,@function
gimp_dock_class_init:                   # @gimp_dock_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
.Ltmp72:
	.cfi_offset %rbx, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movabsq	$.L.str.15, %rdi
	movl	$1, %edx
	movl	$840, %ecx              # imm = 0x348
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, dock_signals
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movabsq	$.L.str.16, %rdi
	movl	$1, %edx
	movl	$848, %ecx              # imm = 0x350
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movabsq	$.L.str.17, %rdi
	movl	$1, %edx
	movl	$856, %ecx              # imm = 0x358
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	xorl	%r15d, %r15d
	movl	%eax, dock_signals+4
	movq	-32(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r15d, -148(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.18, %rdi
	movl	$1, %edx
	movl	$864, %ecx              # imm = 0x360
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	xorl	%r15d, %r15d
	movl	%eax, dock_signals+8
	movq	-32(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r15d, -180(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorps	%xmm0, %xmm0
	movsd	.LCPI23_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI23_1, %xmm2        # xmm2 = mem[0],zero
	movl	$225, %ecx
	movabsq	$gimp_dock_real_book_removed, %r8
	movabsq	$gimp_dock_real_book_added, %r9
	movabsq	$gimp_dock_real_get_description, %r10
	movabsq	$gimp_dock_style_set, %r11
	movabsq	$gimp_dock_dispose, %rbx
	movl	%eax, dock_signals+12
	movq	-40(%rbp), %r14
	movq	%rbx, 40(%r14)
	movq	-48(%rbp), %rbx
	movq	%r11, 280(%rbx)
	movq	-32(%rbp), %r11
	movq	%r10, 824(%r11)
	movq	-32(%rbp), %r10
	movq	$0, 832(%r10)
	movq	-32(%rbp), %r10
	movq	%r9, 840(%r10)
	movq	-32(%rbp), %r9
	movq	%r8, 848(%r9)
	movq	-32(%rbp), %r8
	movq	$0, 856(%r8)
	movq	-32(%rbp), %r8
	movq	$0, 864(%r8)
	movq	-48(%rbp), %r8
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movl	$40, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_dock_class_init, .Lfunc_end23-gimp_dock_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_dispose,@function
gimp_dock_dispose:                      # @gimp_dock_dispose
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB24_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB24_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_dock_remove_book
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB24_1
.LBB24_3:                               # %while.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dock_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_dock_dispose, .Lfunc_end24-gimp_dock_dispose
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_dock_style_set,@function
gimp_dock_style_set:                    # @gimp_dock_style_set
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	gimp_dock_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movabsq	$.L.str.19, %rsi
	leaq	-32(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB25_1
	jp	.LBB25_1
	jmp	.LBB25_2
.LBB25_1:                               # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_pango_context
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	pango_context_get_font_description
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	pango_font_description_copy
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	pango_font_description_get_size
	movl	%eax, -52(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	pango_font_description_set_size
	movq	-48(%rbp), %rdi
	callq	pango_font_description_to_string
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	pango_font_description_free
	movabsq	$.L.str.20, %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movl	32(%rax), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	gtk_rc_parse_string
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	gtk_widget_reset_rc_styles
.LBB25_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_dock_style_set, .Lfunc_end25-gimp_dock_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_real_get_description,@function
gimp_dock_real_get_description:         # @gimp_dock_real_get_description
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
	subq	$176, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rcx, %rdi
	callq	g_string_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dock_get_dockbooks
	movq	%rax, -32(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_6 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB26_25
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB26_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -48(%rbp)
	jmp	.LBB26_5
.LBB26_4:                               # %if.else
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_current_page
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_get_nth_page
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -48(%rbp)
.LBB26_5:                               # %if.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB26_6:                               # %for.cond.13
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB26_16
# BB#7:                                 # %for.body.15
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_dockable_get_name
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	cmpq	$0, -56(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB26_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB26_10
	jmp	.LBB26_11
.LBB26_9:                               # %cond.false
                                        #   in Loop: Header=BB26_6 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_10
	jmp	.LBB26_11
.LBB26_10:                              # %if.then.22
                                        #   in Loop: Header=BB26_6 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.21, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB26_11:                              # %if.end.25
                                        #   in Loop: Header=BB26_6 Depth=2
	jmp	.LBB26_12
.LBB26_12:                              # %for.inc
                                        #   in Loop: Header=BB26_6 Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB26_14
# BB#13:                                # %cond.true.27
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB26_15
.LBB26_14:                              # %cond.false.29
                                        #   in Loop: Header=BB26_6 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB26_15
.LBB26_15:                              # %cond.end
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB26_6
.LBB26_16:                              # %for.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_list_free
	cmpq	$0, -32(%rbp)
	je	.LBB26_18
# BB#17:                                # %cond.true.31
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB26_19
	jmp	.LBB26_20
.LBB26_18:                              # %cond.false.34
                                        #   in Loop: Header=BB26_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_19
	jmp	.LBB26_20
.LBB26_19:                              # %if.then.35
                                        #   in Loop: Header=BB26_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.22, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB26_20:                              # %if.end.38
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_21
.LBB26_21:                              # %for.inc.39
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB26_23
# BB#22:                                # %cond.true.41
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB26_24
.LBB26_23:                              # %cond.false.43
                                        #   in Loop: Header=BB26_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB26_24
.LBB26_24:                              # %cond.end.44
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB26_1
.LBB26_25:                              # %for.end.46
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	g_string_free
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_dock_real_get_description, .Lfunc_end26-gimp_dock_real_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_real_book_added,@function
gimp_dock_real_book_added:              # @gimp_dock_real_book_added
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
	subq	$32, %rsp
	movabsq	$.L.str.23, %rax
	movabsq	$gimp_dock_invalidate_description, %rcx
	movl	$2, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_dock_real_book_added, .Lfunc_end27-gimp_dock_real_book_added
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_real_book_removed,@function
gimp_dock_real_book_removed:            # @gimp_dock_real_book_removed
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
	subq	$48, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_dock_invalidate_description, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_dock_real_book_removed, .Lfunc_end28-gimp_dock_real_book_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_dropped_cb,@function
gimp_dock_dropped_cb:                   # @gimp_dock_dropped_cb
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_dockbook_drag_source_to_dockable
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB29_8
.LBB29_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	%rax, %rdi
	callq	gimp_dockbook_get_dock
	cmpq	-40(%rbp), %rax
	jne	.LBB29_7
# BB#3:                                 # %if.then.5
	movq	-40(%rbp), %rdi
	callq	gimp_dock_get_dockbooks
	movq	%rax, %rdi
	callq	g_list_length
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_list_free
	cmpl	$1, -68(%rbp)
	jne	.LBB29_6
# BB#4:                                 # %land.lhs.true
	cmpl	$1, -72(%rbp)
	jne	.LBB29_6
# BB#5:                                 # %if.then.15
	movl	$1, -4(%rbp)
	jmp	.LBB29_8
.LBB29_6:                               # %if.end.16
	jmp	.LBB29_7
.LBB29_7:                               # %if.end.17
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-48(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_dockbook
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dockbook_remove
	movq	global_menu_factory, %rdi
	callq	gimp_dockbook_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_add_book
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dockbook_add
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, -4(%rbp)
.LBB29_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_dock_dropped_cb, .Lfunc_end29-gimp_dock_dropped_cb
	.cfi_endproc

	.type	gimp_dock_get_type.g_define_type_id__volatile,@object # @gimp_dock_get_type.g_define_type_id__volatile
	.local	gimp_dock_get_type.g_define_type_id__volatile
	.comm	gimp_dock_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDock"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_dock_get_description,@object # @__func__.gimp_dock_get_description
.L__func__.gimp_dock_get_description:
	.asciz	"gimp_dock_get_description"
	.size	.L__func__.gimp_dock_get_description, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DOCK (dock)"
	.size	.L.str.2, 20

	.type	.L__func__.gimp_dock_set_host_geometry_hints,@object # @__func__.gimp_dock_set_host_geometry_hints
.L__func__.gimp_dock_set_host_geometry_hints:
	.asciz	"gimp_dock_set_host_geometry_hints"
	.size	.L__func__.gimp_dock_set_host_geometry_hints, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GTK_IS_WINDOW (window)"
	.size	.L.str.3, 23

	.type	.L__func__.gimp_dock_invalidate_geometry,@object # @__func__.gimp_dock_invalidate_geometry
.L__func__.gimp_dock_invalidate_geometry:
	.asciz	"gimp_dock_invalidate_geometry"
	.size	.L__func__.gimp_dock_invalidate_geometry, 30

	.type	dock_signals,@object    # @dock_signals
	.local	dock_signals
	.comm	dock_signals,16,16
	.type	.L__func__.gimp_dock_get_context,@object # @__func__.gimp_dock_get_context
.L__func__.gimp_dock_get_context:
	.asciz	"gimp_dock_get_context"
	.size	.L__func__.gimp_dock_get_context, 22

	.type	.L__func__.gimp_dock_get_dialog_factory,@object # @__func__.gimp_dock_get_dialog_factory
.L__func__.gimp_dock_get_dialog_factory:
	.asciz	"gimp_dock_get_dialog_factory"
	.size	.L__func__.gimp_dock_get_dialog_factory, 29

	.type	.L__func__.gimp_dock_get_ui_manager,@object # @__func__.gimp_dock_get_ui_manager
.L__func__.gimp_dock_get_ui_manager:
	.asciz	"gimp_dock_get_ui_manager"
	.size	.L__func__.gimp_dock_get_ui_manager, 25

	.type	.L__func__.gimp_dock_get_dockbooks,@object # @__func__.gimp_dock_get_dockbooks
.L__func__.gimp_dock_get_dockbooks:
	.asciz	"gimp_dock_get_dockbooks"
	.size	.L__func__.gimp_dock_get_dockbooks, 24

	.type	.L__func__.gimp_dock_get_n_dockables,@object # @__func__.gimp_dock_get_n_dockables
.L__func__.gimp_dock_get_n_dockables:
	.asciz	"gimp_dock_get_n_dockables"
	.size	.L__func__.gimp_dock_get_n_dockables, 26

	.type	.L__func__.gimp_dock_get_main_vbox,@object # @__func__.gimp_dock_get_main_vbox
.L__func__.gimp_dock_get_main_vbox:
	.asciz	"gimp_dock_get_main_vbox"
	.size	.L__func__.gimp_dock_get_main_vbox, 24

	.type	.L__func__.gimp_dock_get_vbox,@object # @__func__.gimp_dock_get_vbox
.L__func__.gimp_dock_get_vbox:
	.asciz	"gimp_dock_get_vbox"
	.size	.L__func__.gimp_dock_get_vbox, 19

	.type	.L__func__.gimp_dock_get_id,@object # @__func__.gimp_dock_get_id
.L__func__.gimp_dock_get_id:
	.asciz	"gimp_dock_get_id"
	.size	.L__func__.gimp_dock_get_id, 17

	.type	.L__func__.gimp_dock_set_id,@object # @__func__.gimp_dock_set_id
.L__func__.gimp_dock_set_id:
	.asciz	"gimp_dock_set_id"
	.size	.L__func__.gimp_dock_set_id, 17

	.type	.L__func__.gimp_dock_add,@object # @__func__.gimp_dock_add
.L__func__.gimp_dock_add:
	.asciz	"gimp_dock_add"
	.size	.L__func__.gimp_dock_add, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_DOCKABLE (dockable)"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp_dockable_get_dockbook (dockable) == NULL"
	.size	.L.str.5, 46

	.type	.L__func__.gimp_dock_remove,@object # @__func__.gimp_dock_remove
.L__func__.gimp_dock_remove:
	.asciz	"gimp_dock_remove"
	.size	.L__func__.gimp_dock_remove, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp_dockable_get_dockbook (dockable) != NULL"
	.size	.L.str.6, 46

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp_dockbook_get_dock (gimp_dockable_get_dockbook (dockable)) == dock"
	.size	.L.str.7, 71

	.type	.L__func__.gimp_dock_add_book,@object # @__func__.gimp_dock_add_book
.L__func__.gimp_dock_add_book:
	.asciz	"gimp_dock_add_book"
	.size	.L__func__.gimp_dock_add_book, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_DOCKBOOK (dockbook)"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp_dockbook_get_dock (dockbook) == NULL"
	.size	.L.str.9, 42

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"dockable-added"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"dockable-removed"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"dockable-reordered"
	.size	.L.str.12, 19

	.type	.L__func__.gimp_dock_remove_book,@object # @__func__.gimp_dock_remove_book
.L__func__.gimp_dock_remove_book:
	.asciz	"gimp_dock_remove_book"
	.size	.L__func__.gimp_dock_remove_book, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp_dockbook_get_dock (dockbook) == dock"
	.size	.L.str.13, 42

	.type	.L__func__.gimp_dock_temp_add,@object # @__func__.gimp_dock_temp_add
.L__func__.gimp_dock_temp_add:
	.asciz	"gimp_dock_temp_add"
	.size	.L__func__.gimp_dock_temp_add, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GTK_IS_WIDGET (child)"
	.size	.L.str.14, 22

	.type	.L__func__.gimp_dock_temp_remove,@object # @__func__.gimp_dock_temp_remove
.L__func__.gimp_dock_temp_remove:
	.asciz	"gimp_dock_temp_remove"
	.size	.L__func__.gimp_dock_temp_remove, 22

	.type	gimp_dock_parent_class,@object # @gimp_dock_parent_class
	.local	gimp_dock_parent_class
	.comm	gimp_dock_parent_class,8,8
	.type	GimpDock_private_offset,@object # @GimpDock_private_offset
	.local	GimpDock_private_offset
	.comm	GimpDock_private_offset,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"book-added"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"book-removed"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"description-invalidated"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"geometry-invalidated"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"font-scale"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"style \"gimp-dock-style\"{  font_name = \"%s\"}widget \"*.gimp-internal-dock-%d.*\" style \"gimp-dock-style\""
	.size	.L.str.20, 102

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"dock\004, "
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"dock\004 - "
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"switch-page"
	.size	.L.str.23, 12

	.type	gimp_dock_init.dock_ID,@object # @gimp_dock_init.dock_ID
	.data
	.align	4
gimp_dock_init.dock_ID:
	.long	1                       # 0x1
	.size	gimp_dock_init.dock_ID, 4

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"gimp-internal-dock-%d"
	.size	.L.str.24, 22

	.type	.L__func__.gimp_dock_invalidate_description,@object # @__func__.gimp_dock_invalidate_description
.L__func__.gimp_dock_invalidate_description:
	.asciz	"gimp_dock_invalidate_description"
	.size	.L__func__.gimp_dock_invalidate_description, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
