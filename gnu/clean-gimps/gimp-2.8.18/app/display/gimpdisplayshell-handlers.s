	.text
	.file	"gimpdisplayshell-handlers.bc"
	.globl	gimp_display_shell_connect
	.align	16, 0x90
	.type	gimp_display_shell_connect,@function
gimp_display_shell_connect:             # @gimp_display_shell_connect
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
	subq	$752, %rsp              # imm = 0x2F0
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_connect, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_58
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_connect, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_58
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	%rax, -24(%rbp)
# BB#25:                                # %do.body.42
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_27
# BB#26:                                # %if.then.51
	movl	$0, -100(%rbp)
	jmp	.LBB0_32
.LBB0_27:                               # %if.else.52
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_30
# BB#28:                                # %land.lhs.true.55
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_30
# BB#29:                                # %if.then.59
	movl	$1, -100(%rbp)
	jmp	.LBB0_31
.LBB0_30:                               # %if.else.60
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_31:                               # %if.end.62
	jmp	.LBB0_32
.LBB0_32:                               # %if.end.63
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_34
# BB#33:                                # %if.then.66
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.67
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_connect, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_58
.LBB0_35:                               # %if.end.68
	jmp	.LBB0_36
.LBB0_36:                               # %do.end.69
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_display_shell_clean_dirty_handler, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_display_shell_clean_dirty_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_display_shell_undo_event_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_image_get_grid
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_display_shell_grid_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	480(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gimp_image_get_grid
	movabsq	$.L.str.8, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_display_shell_name_changed_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_display_shell_selection_invalidate_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_display_shell_size_changed_detailed_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_display_shell_resolution_changed_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_display_shell_quick_mask_changed_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_display_shell_guide_add_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_display_shell_guide_remove_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_display_shell_guide_move_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_image_get_guides
	movq	%rax, -32(%rbp)
.LBB0_37:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_43
# BB#38:                                # %for.body
                                        #   in Loop: Header=BB0_37 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_display_shell_guide_add_handler
# BB#39:                                # %for.inc
                                        #   in Loop: Header=BB0_37 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_41
# BB#40:                                # %cond.true
                                        #   in Loop: Header=BB0_37 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB0_42
.LBB0_41:                               # %cond.false
                                        #   in Loop: Header=BB0_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB0_42
.LBB0_42:                               # %cond.end
                                        #   in Loop: Header=BB0_37 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB0_37
.LBB0_43:                               # %for.end
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_display_shell_sample_point_add_handler, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_display_shell_sample_point_remove_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_display_shell_sample_point_move_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_image_get_sample_points
	movq	%rax, -32(%rbp)
.LBB0_44:                               # %for.cond.91
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_50
# BB#45:                                # %for.body.93
                                        #   in Loop: Header=BB0_44 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_display_shell_sample_point_add_handler
# BB#46:                                # %for.inc.95
                                        #   in Loop: Header=BB0_44 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_48
# BB#47:                                # %cond.true.97
                                        #   in Loop: Header=BB0_44 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB0_49
.LBB0_48:                               # %cond.false.99
                                        #   in Loop: Header=BB0_44 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB0_49
.LBB0_49:                               # %cond.end.100
                                        #   in Loop: Header=BB0_44 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB0_44
.LBB0_50:                               # %for.end.102
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_display_shell_invalidate_preview_handler, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_display_shell_profile_changed_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_display_shell_saved_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_display_shell_exported_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_display_shell_active_vectors_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_display_shell_vectors_freeze_handler, %rcx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_tree_handler_connect
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_display_shell_vectors_thaw_handler, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 672(%rdx)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	gimp_tree_handler_connect
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_display_shell_vectors_visible_handler, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 680(%rdx)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	gimp_tree_handler_connect
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_display_shell_vectors_add_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 688(%rdx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_display_shell_vectors_remove_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -32(%rbp)
.LBB0_51:                               # %for.cond.116
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_57
# BB#52:                                # %for.body.118
                                        #   in Loop: Header=BB0_51 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_display_shell_vectors_add_handler
# BB#53:                                # %for.inc.120
                                        #   in Loop: Header=BB0_51 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_55
# BB#54:                                # %cond.true.122
                                        #   in Loop: Header=BB0_51 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB0_56
.LBB0_55:                               # %cond.false.124
                                        #   in Loop: Header=BB0_51 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB0_56
.LBB0_56:                               # %cond.end.125
                                        #   in Loop: Header=BB0_51 Depth=1
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB0_51
.LBB0_57:                               # %for.end.127
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_display_shell_check_notify_handler, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_display_shell_check_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_display_shell_title_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-536(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_display_shell_title_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-552(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_display_shell_nav_size_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_display_shell_monitor_res_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-584(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_display_shell_monitor_res_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_display_shell_monitor_res_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-616(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_display_shell_padding_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-632(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_display_shell_padding_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-648(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_display_shell_padding_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	528(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-664(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_display_shell_padding_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	528(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-680(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_display_shell_ants_speed_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-696(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_display_shell_quality_notify_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-712(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gimp_display_shell_invalidate_preview_handler
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_display_shell_quick_mask_changed_handler
	movq	-8(%rbp), %rax
	movq	504(%rax), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gimp_canvas_layer_boundary_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_image_get_active_layer
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_canvas_layer_boundary_set_layer
.LBB0_58:                               # %return
	addq	$752, %rsp              # imm = 0x2F0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_connect, .Lfunc_end0-gimp_display_shell_connect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_clean_dirty_handler,@function
gimp_display_shell_clean_dirty_handler: # @gimp_display_shell_clean_dirty_handler
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_title_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_clean_dirty_handler, .Lfunc_end1-gimp_display_shell_clean_dirty_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_undo_event_handler,@function
gimp_display_shell_undo_event_handler:  # @gimp_display_shell_undo_event_handler
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_title_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_undo_event_handler, .Lfunc_end2-gimp_display_shell_undo_event_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_grid_notify_handler,@function
gimp_display_shell_grid_notify_handler: # @gimp_display_shell_grid_notify_handler
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
	subq	$32, %rsp
	movabsq	$.L.str.8, %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	480(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_grid_notify_handler, .Lfunc_end3-gimp_display_shell_grid_notify_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_name_changed_handler,@function
gimp_display_shell_name_changed_handler: # @gimp_display_shell_name_changed_handler
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_title_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_name_changed_handler, .Lfunc_end4-gimp_display_shell_name_changed_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_selection_invalidate_handler,@function
gimp_display_shell_selection_invalidate_handler: # @gimp_display_shell_selection_invalidate_handler
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_selection_undraw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_selection_invalidate_handler, .Lfunc_end5-gimp_display_shell_selection_invalidate_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_size_changed_detailed_handler,@function
gimp_display_shell_size_changed_detailed_handler: # @gimp_display_shell_size_changed_detailed_handler
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	40(%rdi), %rdi
	cmpl	$0, 444(%rdi)
	je	.LBB6_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB6_4
# BB#2:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	cmpq	-32(%rbp), %rax
	jne	.LBB6_4
# BB#3:                                 # %if.then.3
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_image_window_shrink_wrap
.LBB6_4:                                # %if.end
	jmp	.LBB6_10
.LBB6_5:                                # %if.else
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -56(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	mulsd	200(%rdi), %xmm0
	movb	%dl, -73(%rbp)          # 1-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	mulsd	208(%rdi), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	mulsd	200(%rdi), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rdi
	cmpl	296(%rdi), %eax
	movb	-73(%rbp), %dl          # 1-byte Reload
	movb	%dl, -74(%rbp)          # 1-byte Spill
	jle	.LBB6_7
# BB#6:                                 # %land.rhs
	cvtsi2sdl	-52(%rbp), %xmm0
	movq	-32(%rbp), %rax
	mulsd	200(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rax
	cmpl	296(%rax), %ecx
	setle	%dl
	movb	%dl, -74(%rbp)          # 1-byte Spill
.LBB6_7:                                # %land.end
	movb	-74(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -68(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm0
	movq	-32(%rbp), %rsi
	mulsd	208(%rsi), %xmm0
	movb	%dl, -75(%rbp)          # 1-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rsi
	cmpl	300(%rsi), %ecx
	movb	-75(%rbp), %al          # 1-byte Reload
	movb	%al, -76(%rbp)          # 1-byte Spill
	jle	.LBB6_9
# BB#8:                                 # %land.rhs.37
	cvtsi2sdl	-56(%rbp), %xmm0
	movq	-32(%rbp), %rax
	mulsd	208(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rax
	cmpl	300(%rax), %ecx
	setle	%dl
	movb	%dl, -76(%rbp)          # 1-byte Spill
.LBB6_9:                                # %land.end.46
	movb	-76(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	188(%rdx), %ecx
	addl	-60(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	192(%rdx), %esi
	addl	-64(%rbp), %esi
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %esi
	movl	-80(%rbp), %edx         # 4-byte Reload
	callq	gimp_display_shell_scroll_set_offset
	movq	-32(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	gimp_display_shell_scroll_center_image
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_scroll_clamp_and_update
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_expose_full
.LBB6_10:                               # %if.end.49
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_size_changed_detailed_handler, .Lfunc_end6-gimp_display_shell_size_changed_detailed_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_resolution_changed_handler,@function
gimp_display_shell_resolution_changed_handler: # @gimp_display_shell_resolution_changed_handler
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_scale_changed
	movq	-16(%rbp), %rsi
	cmpl	$0, 232(%rsi)
	je	.LBB7_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 184(%rax)
	je	.LBB7_3
# BB#2:                                 # %if.then.1
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_scale_update_rulers
.LBB7_3:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_scaled
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movl	444(%rax), %esi
	callq	gimp_display_shell_scale_resize
.LBB7_5:                                # %if.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_resolution_changed_handler, .Lfunc_end7-gimp_display_shell_resolution_changed_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_quick_mask_changed_handler,@function
gimp_display_shell_quick_mask_changed_handler: # @gimp_display_shell_quick_mask_changed_handler
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_quick_mask_toggled, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	-16(%rbp), %r9
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_image_get_quick_mask_state
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	392(%rdi), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	cmpl	$0, -28(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.42, %rsi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	callq	gtk_image_set_from_stock
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movabsq	$.L.str.43, %rsi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	callq	gtk_image_set_from_stock
.LBB8_3:                                # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_display_shell_quick_mask_toggled, %rdx
	movq	-16(%rbp), %rdi
	movq	392(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -100(%rbp)        # 4-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_quick_mask_changed_handler, .Lfunc_end8-gimp_display_shell_quick_mask_changed_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_guide_add_handler,@function
gimp_display_shell_guide_add_handler:   # @gimp_display_shell_guide_add_handler
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
	movq	-24(%rbp), %rdx
	movq	488(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_guide_get_orientation
	movq	-16(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_guide_get_position
	movl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_canvas_guide_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_add_item
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_display_shell_guide_add_handler, .Lfunc_end9-gimp_display_shell_guide_add_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_guide_remove_handler,@function
gimp_display_shell_guide_remove_handler: # @gimp_display_shell_guide_remove_handler
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
	movq	-24(%rbp), %rdx
	movq	488(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_remove_item
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_display_shell_guide_remove_handler, .Lfunc_end10-gimp_display_shell_guide_remove_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_guide_move_handler,@function
gimp_display_shell_guide_move_handler:  # @gimp_display_shell_guide_move_handler
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	488(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_get_item
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_guide_get_orientation
	movq	-16(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_guide_get_position
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_canvas_guide_set
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_display_shell_guide_move_handler, .Lfunc_end11-gimp_display_shell_guide_move_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_sample_point_add_handler,@function
gimp_display_shell_sample_point_add_handler: # @gimp_display_shell_sample_point_add_handler
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	496(%rdx), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	callq	gimp_canvas_sample_point_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_add_item
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -48(%rbp)
	movl	$1, -52(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB12_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_get_item
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB12_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$.L.str.44, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB12_4:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_5
.LBB12_5:                               # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB12_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB12_8
.LBB12_7:                               # %cond.false
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB12_8
.LBB12_8:                               # %cond.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB12_1
.LBB12_9:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_display_shell_sample_point_add_handler, .Lfunc_end12-gimp_display_shell_sample_point_add_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_sample_point_remove_handler,@function
gimp_display_shell_sample_point_remove_handler: # @gimp_display_shell_sample_point_remove_handler
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	496(%rdx), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_remove_item
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -40(%rbp)
	movl	$1, -44(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB13_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_get_item
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB13_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$.L.str.44, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movl	-44(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_5
.LBB13_5:                               # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB13_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB13_8
.LBB13_8:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB13_1
.LBB13_9:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_display_shell_sample_point_remove_handler, .Lfunc_end13-gimp_display_shell_sample_point_remove_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_sample_point_move_handler,@function
gimp_display_shell_sample_point_move_handler: # @gimp_display_shell_sample_point_move_handler
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	496(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_get_item
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	callq	gimp_canvas_sample_point_set
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_display_shell_sample_point_move_handler, .Lfunc_end14-gimp_display_shell_sample_point_move_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_invalidate_preview_handler,@function
gimp_display_shell_invalidate_preview_handler: # @gimp_display_shell_invalidate_preview_handler
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_icon_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_display_shell_invalidate_preview_handler, .Lfunc_end15-gimp_display_shell_invalidate_preview_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_profile_changed_handler,@function
gimp_display_shell_profile_changed_handler: # @gimp_display_shell_profile_changed_handler
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_managed_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_managed_profile_changed
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_display_shell_profile_changed_handler, .Lfunc_end16-gimp_display_shell_profile_changed_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_saved_handler,@function
gimp_display_shell_saved_handler:       # @gimp_display_shell_saved_handler
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	file_utils_uri_display_name
	movabsq	$.L.str.46, %rdi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movabsq	$.L.str.45, %rdx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_statusbar_push_temp
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_display_shell_saved_handler, .Lfunc_end17-gimp_display_shell_saved_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_exported_handler,@function
gimp_display_shell_exported_handler:    # @gimp_display_shell_exported_handler
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	file_utils_uri_display_name
	movabsq	$.L.str.47, %rdi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movabsq	$.L.str.45, %rdx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_statusbar_push_temp
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_display_shell_exported_handler, .Lfunc_end18-gimp_display_shell_exported_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_active_vectors_handler,@function
gimp_display_shell_active_vectors_handler: # @gimp_display_shell_active_vectors_handler
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	472(%rsi), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -40(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB19_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_get_item
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gimp_canvas_item_set_highlight
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB19_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false
                                        #   in Loop: Header=BB19_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB19_6
.LBB19_6:                               # %cond.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB19_1
.LBB19_7:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_display_shell_active_vectors_handler, .Lfunc_end19-gimp_display_shell_active_vectors_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_vectors_freeze_handler,@function
gimp_display_shell_vectors_freeze_handler: # @gimp_display_shell_vectors_freeze_handler
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_display_shell_vectors_freeze_handler, .Lfunc_end20-gimp_display_shell_vectors_freeze_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_vectors_thaw_handler,@function
gimp_display_shell_vectors_thaw_handler: # @gimp_display_shell_vectors_thaw_handler
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	472(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_get_item
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_vectors_get_bezier
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_canvas_path_set
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_display_shell_vectors_thaw_handler, .Lfunc_end21-gimp_display_shell_vectors_thaw_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_vectors_visible_handler,@function
gimp_display_shell_vectors_visible_handler: # @gimp_display_shell_vectors_visible_handler
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	472(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_get_item
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_canvas_item_set_visible
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_display_shell_vectors_visible_handler, .Lfunc_end22-gimp_display_shell_vectors_visible_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_vectors_add_handler,@function
gimp_display_shell_vectors_add_handler: # @gimp_display_shell_vectors_add_handler
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	472(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_vectors_get_bezier
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_canvas_path_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_canvas_item_set_visible
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	-40(%rbp), %rdx
	movq	%r8, %rsi
	callq	gimp_canvas_proxy_group_add_item
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_object_unref
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_display_shell_vectors_add_handler, .Lfunc_end23-gimp_display_shell_vectors_add_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_vectors_remove_handler,@function
gimp_display_shell_vectors_remove_handler: # @gimp_display_shell_vectors_remove_handler
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	472(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_canvas_proxy_group_remove_item
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_display_shell_vectors_remove_handler, .Lfunc_end24-gimp_display_shell_vectors_remove_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_check_notify_handler,@function
gimp_display_shell_check_notify_handler: # @gimp_display_shell_check_notify_handler
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 440(%rdx)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	440(%rax), %rdi
	callq	cairo_pattern_destroy
	movq	-24(%rbp), %rax
	movq	$0, 440(%rax)
.LBB25_2:                               # %if.end
	movq	-24(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	callq	gimp_display_shell_get_padding
	movl	-28(%rbp), %eax
	decl	%eax
	subl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	ja	.LBB25_4
	jmp	.LBB25_3
.LBB25_3:                               # %sw.bb
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_padding
	jmp	.LBB25_5
.LBB25_4:                               # %sw.default
	jmp	.LBB25_5
.LBB25_5:                               # %sw.epilog
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_expose_full
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_display_shell_check_notify_handler, .Lfunc_end25-gimp_display_shell_check_notify_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_title_notify_handler,@function
gimp_display_shell_title_notify_handler: # @gimp_display_shell_title_notify_handler
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_title_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_display_shell_title_notify_handler, .Lfunc_end26-gimp_display_shell_title_notify_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_nav_size_notify_handler,@function
gimp_display_shell_nav_size_notify_handler: # @gimp_display_shell_nav_size_notify_handler
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 624(%rdx)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	624(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-24(%rbp), %rax
	movq	$0, 624(%rax)
.LBB27_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_display_shell_nav_size_notify_handler, .Lfunc_end27-gimp_display_shell_nav_size_notify_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_monitor_res_notify_handler,@function
gimp_display_shell_monitor_res_notify_handler: # @gimp_display_shell_monitor_res_notify_handler
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 512(%rax)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	-24(%rbp), %rsi
	addq	$216, %rsi
	movq	-24(%rbp), %rdi
	addq	$224, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	gimp_get_screen_resolution
	jmp	.LBB28_3
.LBB28_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	496(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 216(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	504(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 224(%rax)
.LBB28_3:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_scale_changed
	movq	-24(%rbp), %rdi
	cmpl	$0, 232(%rdi)
	jne	.LBB28_5
# BB#4:                                 # %if.then.14
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_scroll_clamp_and_update
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_scaled
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_expose_full
.LBB28_5:                               # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_display_shell_monitor_res_notify_handler, .Lfunc_end28-gimp_display_shell_monitor_res_notify_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_padding_notify_handler,@function
gimp_display_shell_padding_notify_handler: # @gimp_display_shell_padding_notify_handler
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gimp_image_window_get_fullscreen
	movl	%eax, -44(%rbp)
	jmp	.LBB29_3
.LBB29_2:                               # %if.else
	movl	$0, -44(%rbp)
.LBB29_3:                               # %if.end
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB29_8
# BB#4:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movq	528(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	528(%rax), %rax
	movq	64(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	72(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	80(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB29_6
# BB#5:                                 # %if.then.9
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_display_shell_set_padding
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.10
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	152(%rcx), %rcx
	movl	%eax, 60(%rcx)
	movq	-24(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	-80(%rbp), %rdx
	movq	%rdx, 64(%rcx)
	movq	-72(%rbp), %rdx
	movq	%rdx, 72(%rcx)
	movq	-64(%rbp), %rdx
	movq	%rdx, 80(%rcx)
	movq	-56(%rbp), %rdx
	movq	%rdx, 88(%rcx)
.LBB29_7:                               # %if.end.15
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.16
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB29_13
# BB#9:                                 # %if.then.19
	movq	-32(%rbp), %rax
	movq	520(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	520(%rax), %rax
	movq	64(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	72(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	80(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB29_11
# BB#10:                                # %if.then.24
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	144(%rcx), %rcx
	movl	%eax, 60(%rcx)
	movq	-24(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-80(%rbp), %rdx
	movq	%rdx, 64(%rcx)
	movq	-72(%rbp), %rdx
	movq	%rdx, 72(%rcx)
	movq	-64(%rbp), %rdx
	movq	%rdx, 80(%rcx)
	movq	-56(%rbp), %rdx
	movq	%rdx, 88(%rcx)
	jmp	.LBB29_12
.LBB29_11:                              # %if.else.29
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_display_shell_set_padding
.LBB29_12:                              # %if.end.30
	jmp	.LBB29_13
.LBB29_13:                              # %if.end.31
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_display_shell_padding_notify_handler, .Lfunc_end29-gimp_display_shell_padding_notify_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_ants_speed_notify_handler,@function
gimp_display_shell_ants_speed_notify_handler: # @gimp_display_shell_ants_speed_notify_handler
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_selection_pause
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_selection_resume
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_display_shell_ants_speed_notify_handler, .Lfunc_end30-gimp_display_shell_ants_speed_notify_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_quality_notify_handler,@function
gimp_display_shell_quality_notify_handler: # @gimp_display_shell_quality_notify_handler
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_expose_full
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_display_shell_quality_notify_handler, .Lfunc_end31-gimp_display_shell_quality_notify_handler
	.cfi_endproc

	.globl	gimp_display_shell_disconnect
	.align	16, 0x90
	.type	gimp_display_shell_disconnect,@function
gimp_display_shell_disconnect:          # @gimp_display_shell_disconnect
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
	subq	$640, %rsp              # imm = 0x280
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_disconnect, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB32_58
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	jmp	.LBB32_13
.LBB32_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB32_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB32_20
.LBB32_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB32_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB32_19
.LBB32_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB32_19:                              # %if.end.31
	jmp	.LBB32_20
.LBB32_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB32_22
# BB#21:                                # %if.then.35
	jmp	.LBB32_23
.LBB32_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_disconnect, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB32_58
.LBB32_23:                              # %if.end.37
	jmp	.LBB32_24
.LBB32_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -16(%rbp)
# BB#25:                                # %do.body.41
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB32_27
# BB#26:                                # %if.then.50
	movl	$0, -100(%rbp)
	jmp	.LBB32_32
.LBB32_27:                              # %if.else.51
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_30
# BB#28:                                # %land.lhs.true.54
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB32_30
# BB#29:                                # %if.then.58
	movl	$1, -100(%rbp)
	jmp	.LBB32_31
.LBB32_30:                              # %if.else.59
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB32_31:                              # %if.end.61
	jmp	.LBB32_32
.LBB32_32:                              # %if.end.62
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB32_34
# BB#33:                                # %if.then.65
	jmp	.LBB32_35
.LBB32_34:                              # %if.else.66
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_disconnect, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB32_58
.LBB32_35:                              # %if.end.67
	jmp	.LBB32_36
.LBB32_36:                              # %do.end.68
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_icon_update_stop
	movq	-8(%rbp), %rax
	movq	504(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_canvas_layer_boundary_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_canvas_layer_boundary_set_layer
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_quality_notify_handler, %rax
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	40(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_ants_speed_notify_handler, %rdi
	movq	-8(%rbp), %r9
	movq	128(%r9), %r9
	movq	40(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_padding_notify_handler, %rdi
	movq	-8(%rbp), %r9
	movq	128(%r9), %r9
	movq	40(%r9), %r9
	movq	528(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_padding_notify_handler, %rdi
	movq	-8(%rbp), %r9
	movq	128(%r9), %r9
	movq	40(%r9), %r9
	movq	520(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-160(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_monitor_res_notify_handler, %rdi
	movq	-8(%rbp), %r9
	movq	128(%r9), %r9
	movq	40(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-176(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_nav_size_notify_handler, %rdi
	movq	-8(%rbp), %r9
	movq	128(%r9), %r9
	movq	40(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-192(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_title_notify_handler, %rdi
	movq	-8(%rbp), %r9
	movq	128(%r9), %r9
	movq	40(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-208(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_check_notify_handler, %rdi
	movq	-8(%rbp), %r9
	movq	128(%r9), %r9
	movq	40(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-224(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_vectors_remove_handler, %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-240(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_vectors_add_handler, %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-256(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	688(%rdi), %rdi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_tree_handler_disconnect
	movq	-8(%rbp), %rdi
	movq	$0, 688(%rdi)
	movq	-8(%rbp), %rdi
	movq	680(%rdi), %rdi
	callq	gimp_tree_handler_disconnect
	movq	-8(%rbp), %rdi
	movq	$0, 680(%rdi)
	movq	-8(%rbp), %rdi
	movq	672(%rdi), %rdi
	callq	gimp_tree_handler_disconnect
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_display_shell_active_vectors_handler, %rdi
	movq	-8(%rbp), %r9
	movq	$0, 672(%r9)
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-272(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -32(%rbp)
.LBB32_37:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB32_43
# BB#38:                                # %for.body
                                        #   in Loop: Header=BB32_37 Depth=1
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_proxy_group_remove_item
# BB#39:                                # %for.inc
                                        #   in Loop: Header=BB32_37 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB32_41
# BB#40:                                # %cond.true
                                        #   in Loop: Header=BB32_37 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB32_42
.LBB32_41:                              # %cond.false
                                        #   in Loop: Header=BB32_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB32_42
.LBB32_42:                              # %cond.end
                                        #   in Loop: Header=BB32_37 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB32_37
.LBB32_43:                              # %for.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_display_shell_exported_handler, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-312(%rbp), %r10        # 8-byte Reload
	movq	%r9, -320(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-320(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_saved_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-328(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_profile_changed_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-344(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_invalidate_preview_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-360(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_guide_add_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-376(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_guide_remove_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-392(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_guide_move_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-408(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -416(%rbp)        # 4-byte Spill
	callq	gimp_image_get_guides
	movq	%rax, -32(%rbp)
.LBB32_44:                              # %for.cond.117
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB32_50
# BB#45:                                # %for.body.119
                                        #   in Loop: Header=BB32_44 Depth=1
	movq	-8(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_proxy_group_remove_item
# BB#46:                                # %for.inc.123
                                        #   in Loop: Header=BB32_44 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB32_48
# BB#47:                                # %cond.true.125
                                        #   in Loop: Header=BB32_44 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB32_49
.LBB32_48:                              # %cond.false.127
                                        #   in Loop: Header=BB32_44 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB32_49
.LBB32_49:                              # %cond.end.128
                                        #   in Loop: Header=BB32_44 Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB32_44
.LBB32_50:                              # %for.end.130
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_display_shell_sample_point_add_handler, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-440(%rbp), %r10        # 8-byte Reload
	movq	%r9, -448(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-448(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_sample_point_remove_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-456(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -460(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_sample_point_move_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-472(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -476(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -480(%rbp)        # 4-byte Spill
	callq	gimp_image_get_sample_points
	movq	%rax, -32(%rbp)
.LBB32_51:                              # %for.cond.135
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB32_57
# BB#52:                                # %for.body.137
                                        #   in Loop: Header=BB32_51 Depth=1
	movq	-8(%rbp), %rax
	movq	496(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_canvas_proxy_group_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_proxy_group_remove_item
# BB#53:                                # %for.inc.141
                                        #   in Loop: Header=BB32_51 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB32_55
# BB#54:                                # %cond.true.143
                                        #   in Loop: Header=BB32_51 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB32_56
.LBB32_55:                              # %cond.false.145
                                        #   in Loop: Header=BB32_51 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB32_56
.LBB32_56:                              # %cond.end.146
                                        #   in Loop: Header=BB32_51 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB32_51
.LBB32_57:                              # %for.end.148
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_display_shell_quick_mask_changed_handler, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-504(%rbp), %r10        # 8-byte Reload
	movq	%r9, -512(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-512(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_resolution_changed_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-520(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -524(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_size_changed_detailed_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-536(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -540(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_selection_invalidate_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-552(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -556(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_name_changed_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-568(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -572(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -576(%rbp)        # 4-byte Spill
	callq	gimp_image_get_grid
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_grid_notify_handler, %rdi
	movq	-8(%rbp), %r9
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	%r9, -592(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-592(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_undo_event_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-600(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -604(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_display_shell_clean_dirty_handler, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-616(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -620(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -624(%rbp)        # 4-byte Spill
.LBB32_58:                              # %return
	addq	$640, %rsp              # imm = 0x280
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_display_shell_disconnect, .Lfunc_end32-gimp_display_shell_disconnect
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_connect,@object # @__func__.gimp_display_shell_connect
.L__func__.gimp_display_shell_connect:
	.asciz	"gimp_display_shell_connect"
	.size	.L__func__.gimp_display_shell_connect, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY (shell->display)"
	.size	.L.str.2, 33

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"clean"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"dirty"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"undo-event"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"notify"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"grid"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"name-changed"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"selection-invalidate"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"size-changed-detailed"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"resolution-changed"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"quick-mask-changed"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"guide-added"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"guide-removed"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"guide-moved"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"sample-point-added"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"sample-point-removed"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"sample-point-moved"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"invalidate-preview"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"profile-changed"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"saved"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"exported"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"active-vectors-changed"
	.size	.L.str.24, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"freeze"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"thaw"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"visibility-changed"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"add"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"remove"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"notify::transparency-size"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"notify::transparency-type"
	.size	.L.str.31, 26

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"notify::image-title-format"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"notify::image-status-format"
	.size	.L.str.33, 28

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"notify::navigation-preview-size"
	.size	.L.str.34, 32

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"notify::monitor-resolution-from-windowing-system"
	.size	.L.str.35, 49

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"notify::monitor-xresolution"
	.size	.L.str.36, 28

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"notify::monitor-yresolution"
	.size	.L.str.37, 28

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"notify::padding-mode"
	.size	.L.str.38, 21

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"notify::padding-color"
	.size	.L.str.39, 22

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"notify::marching-ants-speed"
	.size	.L.str.40, 28

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"notify::zoom-quality"
	.size	.L.str.41, 21

	.type	.L__func__.gimp_display_shell_disconnect,@object # @__func__.gimp_display_shell_disconnect
.L__func__.gimp_display_shell_disconnect:
	.asciz	"gimp_display_shell_disconnect"
	.size	.L__func__.gimp_display_shell_disconnect, 30

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-quick-mask-on"
	.size	.L.str.42, 19

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-quick-mask-off"
	.size	.L.str.43, 20

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"index"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gtk-save"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Image saved to '%s'"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Image exported to '%s'"
	.size	.L.str.47, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
