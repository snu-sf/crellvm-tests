	.text
	.file	"gradient-editor-commands.bc"
	.globl	gradient_editor_left_color_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_left_color_cmd_callback,@function
gradient_editor_left_color_cmd_callback: # @gradient_editor_left_color_cmd_callback
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
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_dirty
	movq	-32(%rbp), %rsi
	movl	%eax, 688(%rsi)
	movq	-32(%rbp), %rdi
	callq	gradient_editor_save_selection
	movq	-32(%rbp), %rsi
	movq	%rax, 680(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rdi
	movq	144(%rax), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.2, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.1, %rcx
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	304(%rdi), %rdi
	addq	$32, %rdi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	-112(%rbp), %r10        # 8-byte Reload
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	$1, 32(%rsp)
	callq	gimp_color_dialog_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gtk_widget_destroyed, %rcx
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	%rax, 280(%rdx)
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$280, %rdx              # imm = 0x118
	movq	%rax, %rdi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rsi
	movabsq	$gradient_editor_left_color_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	280(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-32(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gradient_editor_left_color_cmd_callback, .Lfunc_end0-gradient_editor_left_color_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_editor_save_selection,@function
gradient_editor_save_selection:         # @gradient_editor_save_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	304(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	$0, -32(%rbp)
.LBB1_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	callq	gimp_gradient_segment_new
	movl	$128, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	memcpy
	cmpq	$0, -24(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)
# BB#5:                                 # %do.cond
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	312(%rcx), %rax
	jne	.LBB1_1
# BB#6:                                 # %do.end
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gradient_editor_save_selection, .Lfunc_end1-gradient_editor_save_selection
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_editor_left_color_update,@function
gradient_editor_left_color_update:      # @gradient_editor_left_color_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_7
.LBB2_7:                                # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB2_3
	jmp	.LBB2_8
.LBB2_8:                                # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB2_6
	jmp	.LBB2_1
.LBB2_1:                                # %sw.bb
	movl	$1, %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	312(%rax), %rax
	addq	$72, %rax
	movq	%rax, %r8
	movl	$1, (%rsp)
	callq	gimp_gradient_segment_range_blend
	jmp	.LBB2_6
.LBB2_2:                                # %sw.bb.5
	movl	$1, %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	312(%rax), %rax
	addq	$72, %rax
	movq	%rax, %r8
	movl	$1, (%rsp)
	callq	gimp_gradient_segment_range_blend
	movq	-32(%rbp), %rax
	movq	680(%rax), %rdi
	callq	gimp_gradient_segments_free
	movq	-32(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-32(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-32(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	jmp	.LBB2_6
.LBB2_3:                                # %sw.bb.19
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	680(%rax), %rsi
	callq	gradient_editor_replace_selection
	movq	-32(%rbp), %rax
	cmpl	$0, 688(%rax)
	jne	.LBB2_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_clean
.LBB2_5:                                # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
	movq	-32(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-32(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-32(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB2_6:                                # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gradient_editor_left_color_update, .Lfunc_end2-gradient_editor_left_color_update
	.cfi_endproc

	.globl	gradient_editor_left_color_type_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_left_color_type_cmd_callback,@function
gradient_editor_left_color_type_cmd_callback: # @gradient_editor_left_color_type_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_5
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -44(%rbp)
	jl	.LBB3_5
# BB#2:                                 # %if.then
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	leaq	-80(%rbp), %r8
	movq	144(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	304(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gimp_gradient_get_color_at
	movq	-40(%rbp), %rdx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	movl	-48(%rbp), %edx
	callq	gimp_gradient_segment_set_left_color_type
	cmpl	$0, -48(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.18
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	callq	gimp_gradient_segment_set_left_color
.LBB3_4:                                # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB3_5:                                # %if.end.22
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gradient_editor_left_color_type_cmd_callback, .Lfunc_end3-gradient_editor_left_color_type_cmd_callback
	.cfi_endproc

	.globl	gradient_editor_load_left_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_load_left_cmd_callback,@function
gradient_editor_load_left_cmd_callback: # @gradient_editor_load_left_cmd_callback
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -92(%rbp)
	movq	-40(%rbp), %rax
	movq	160(%rax), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	ja	.LBB4_8
# BB#10:                                # %entry
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_1:                                # %sw.bb
	movq	-32(%rbp), %rax
	movq	304(%rax), %rax
	cmpq	$0, 112(%rax)
	je	.LBB4_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	304(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	movq	304(%rax), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -56(%rbp)
.LBB4_4:                                # %if.end
	movq	-56(%rbp), %rax
	movq	72(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	80(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	88(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	96(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	64(%rax), %edx
	movl	%edx, -92(%rbp)
	jmp	.LBB4_9
.LBB4_5:                                # %sw.bb.11
	movq	-32(%rbp), %rax
	movq	312(%rax), %rax
	movq	72(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	80(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	88(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	96(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	304(%rax), %rax
	movl	64(%rax), %edx
	movl	%edx, -92(%rbp)
	jmp	.LBB4_9
.LBB4_6:                                # %sw.bb.15
	leaq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_get_foreground
	jmp	.LBB4_9
.LBB4_7:                                # %sw.bb.16
	leaq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_get_background
	jmp	.LBB4_9
.LBB4_8:                                # %sw.default
	movl	-12(%rbp), %eax
	subl	$4, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	addq	$360, %rdx              # imm = 0x168
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	%rcx, -88(%rbp)
	movq	8(%rdx), %rcx
	movq	%rcx, -80(%rbp)
	movq	16(%rdx), %rcx
	movq	%rcx, -72(%rbp)
	movq	24(%rdx), %rcx
	movq	%rcx, -64(%rbp)
.LBB4_9:                                # %sw.epilog
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	leaq	-88(%rbp), %rcx
	movl	$1, %r9d
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	312(%rax), %rax
	addq	$72, %rax
	movq	%rax, %r8
	movl	$1, (%rsp)
	callq	gimp_gradient_segment_range_blend
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	movl	-92(%rbp), %edx
	callq	gimp_gradient_segment_set_left_color_type
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gradient_editor_load_left_cmd_callback, .Lfunc_end4-gradient_editor_load_left_cmd_callback
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_1
	.quad	.LBB4_5
	.quad	.LBB4_6
	.quad	.LBB4_7

	.text
	.globl	gradient_editor_save_left_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_save_left_cmd_callback,@function
gradient_editor_save_left_cmd_callback: # @gradient_editor_save_left_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	movslq	-12(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	$360, %rdx              # imm = 0x168
	shlq	$5, %rax
	addq	%rax, %rdx
	callq	gimp_gradient_segment_get_left_color
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gradient_editor_save_left_cmd_callback, .Lfunc_end5-gradient_editor_save_left_cmd_callback
	.cfi_endproc

	.globl	gradient_editor_right_color_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_right_color_cmd_callback,@function
gradient_editor_right_color_cmd_callback: # @gradient_editor_right_color_cmd_callback
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
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp22:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_dirty
	movq	-32(%rbp), %rsi
	movl	%eax, 704(%rsi)
	movq	-32(%rbp), %rdi
	callq	gradient_editor_save_selection
	movq	-32(%rbp), %rsi
	movq	%rax, 696(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	144(%rax), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.1, %rcx
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	304(%rdi), %rdi
	addq	$72, %rdi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	-112(%rbp), %r10        # 8-byte Reload
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	$1, 32(%rsp)
	callq	gimp_color_dialog_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gtk_widget_destroyed, %rcx
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	%rax, 280(%rdx)
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$280, %rdx              # imm = 0x118
	movq	%rax, %rdi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rsi
	movabsq	$gradient_editor_right_color_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	280(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-32(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gradient_editor_right_color_cmd_callback, .Lfunc_end6-gradient_editor_right_color_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_editor_right_color_update,@function
gradient_editor_right_color_update:     # @gradient_editor_right_color_update
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_7
.LBB7_7:                                # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_8
.LBB7_8:                                # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB7_6
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movl	$1, %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	304(%rax), %rax
	addq	$32, %rax
	movq	-16(%rbp), %r8
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_gradient_segment_range_blend
	jmp	.LBB7_6
.LBB7_2:                                # %sw.bb.5
	movl	$1, %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	304(%rax), %rax
	addq	$32, %rax
	movq	-16(%rbp), %r8
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_gradient_segment_range_blend
	movq	-32(%rbp), %rax
	movq	696(%rax), %rdi
	callq	gimp_gradient_segments_free
	movq	-32(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-32(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-32(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	jmp	.LBB7_6
.LBB7_3:                                # %sw.bb.19
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	696(%rax), %rsi
	callq	gradient_editor_replace_selection
	movq	-32(%rbp), %rax
	cmpl	$0, 704(%rax)
	jne	.LBB7_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_clean
.LBB7_5:                                # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
	movq	-32(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-32(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-32(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB7_6:                                # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gradient_editor_right_color_update, .Lfunc_end7-gradient_editor_right_color_update
	.cfi_endproc

	.globl	gradient_editor_right_color_type_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_right_color_type_cmd_callback,@function
gradient_editor_right_color_type_cmd_callback: # @gradient_editor_right_color_type_cmd_callback
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_5
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -44(%rbp)
	jl	.LBB8_5
# BB#2:                                 # %if.then
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	leaq	-80(%rbp), %r8
	movq	144(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	312(%rax), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gimp_gradient_get_color_at
	movq	-40(%rbp), %rdx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	312(%rax), %rsi
	movl	-48(%rbp), %edx
	callq	gimp_gradient_segment_set_right_color_type
	cmpl	$0, -48(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then.18
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	312(%rax), %rsi
	callq	gimp_gradient_segment_set_right_color
.LBB8_4:                                # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB8_5:                                # %if.end.22
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gradient_editor_right_color_type_cmd_callback, .Lfunc_end8-gradient_editor_right_color_type_cmd_callback
	.cfi_endproc

	.globl	gradient_editor_load_right_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_load_right_cmd_callback,@function
gradient_editor_load_right_cmd_callback: # @gradient_editor_load_right_cmd_callback
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -92(%rbp)
	movq	-40(%rbp), %rax
	movq	160(%rax), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	ja	.LBB9_8
# BB#10:                                # %entry
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_1:                                # %sw.bb
	movq	-32(%rbp), %rax
	movq	312(%rax), %rax
	cmpq	$0, 120(%rax)
	je	.LBB9_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	312(%rax), %rax
	movq	120(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	movq	312(%rax), %rdi
	callq	gimp_gradient_segment_get_first
	movq	%rax, -56(%rbp)
.LBB9_4:                                # %if.end
	movq	-56(%rbp), %rax
	movq	32(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	40(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	48(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	24(%rax), %edx
	movl	%edx, -92(%rbp)
	jmp	.LBB9_9
.LBB9_5:                                # %sw.bb.11
	movq	-32(%rbp), %rax
	movq	304(%rax), %rax
	movq	32(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	40(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	48(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	304(%rax), %rax
	movl	24(%rax), %edx
	movl	%edx, -92(%rbp)
	jmp	.LBB9_9
.LBB9_6:                                # %sw.bb.15
	leaq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_get_foreground
	jmp	.LBB9_9
.LBB9_7:                                # %sw.bb.16
	leaq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_get_background
	jmp	.LBB9_9
.LBB9_8:                                # %sw.default
	movl	-12(%rbp), %eax
	subl	$4, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	addq	$360, %rdx              # imm = 0x168
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	%rcx, -88(%rbp)
	movq	8(%rdx), %rcx
	movq	%rcx, -80(%rbp)
	movq	16(%rdx), %rcx
	movq	%rcx, -72(%rbp)
	movq	24(%rdx), %rcx
	movq	%rcx, -64(%rbp)
.LBB9_9:                                # %sw.epilog
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	leaq	-88(%rbp), %r8
	movl	$1, %r9d
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	304(%rax), %rax
	addq	$32, %rax
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_gradient_segment_range_blend
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	movl	-92(%rbp), %edx
	callq	gimp_gradient_segment_set_right_color_type
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gradient_editor_load_right_cmd_callback, .Lfunc_end9-gradient_editor_load_right_cmd_callback
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_1
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_7

	.text
	.globl	gradient_editor_save_right_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_save_right_cmd_callback,@function
gradient_editor_save_right_cmd_callback: # @gradient_editor_save_right_cmd_callback
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	312(%rax), %rsi
	movslq	-12(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	$360, %rdx              # imm = 0x168
	shlq	$5, %rax
	addq	%rax, %rdx
	callq	gimp_gradient_segment_get_right_color
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gradient_editor_save_right_cmd_callback, .Lfunc_end10-gradient_editor_save_right_cmd_callback
	.cfi_endproc

	.globl	gradient_editor_blending_func_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_blending_func_cmd_callback,@function
gradient_editor_blending_func_cmd_callback: # @gradient_editor_blending_func_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB11_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -44(%rbp)
	jl	.LBB11_3
# BB#2:                                 # %if.then
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	304(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	312(%rcx), %rdx
	movl	-48(%rbp), %ecx
	callq	gimp_gradient_segment_range_set_blending_function
.LBB11_3:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gradient_editor_blending_func_cmd_callback, .Lfunc_end11-gradient_editor_blending_func_cmd_callback
	.cfi_endproc

	.globl	gradient_editor_coloring_type_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_coloring_type_cmd_callback,@function
gradient_editor_coloring_type_cmd_callback: # @gradient_editor_coloring_type_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB12_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -44(%rbp)
	jl	.LBB12_3
# BB#2:                                 # %if.then
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	304(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	312(%rcx), %rdx
	movl	-48(%rbp), %ecx
	callq	gimp_gradient_segment_range_set_coloring_type
.LBB12_3:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gradient_editor_coloring_type_cmd_callback, .Lfunc_end12-gradient_editor_coloring_type_cmd_callback
	.cfi_endproc

	.globl	gradient_editor_flip_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_flip_cmd_callback,@function
gradient_editor_flip_cmd_callback:      # @gradient_editor_flip_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$304, %rax              # imm = 0x130
	movq	-24(%rbp), %rcx
	addq	$312, %rcx              # imm = 0x138
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	gimp_gradient_segment_range_flip
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gradient_editor_flip_cmd_callback, .Lfunc_end13-gradient_editor_flip_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4611686018427387904     # double 2
.LCPI14_1:
	.quad	4626604192193052672     # double 21
.LCPI14_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gradient_editor_replicate_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_replicate_cmd_callback,@function
gradient_editor_replicate_cmd_callback: # @gradient_editor_replicate_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	304(%rax), %rax
	movq	-64(%rbp), %rsi
	cmpq	312(%rsi), %rax
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movabsq	$.L.str.9, %rdi
	movq	%rax, -120(%rbp)
	callq	gettext
	movq	%rax, -128(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movabsq	$.L.str.11, %rdi
	movq	%rax, -120(%rbp)
	callq	gettext
	movq	%rax, -128(%rbp)
.LBB14_3:                               # %if.end
	movq	-72(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%r9, -184(%rbp)         # 8-byte Spill
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.1, %r8
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r9d
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-168(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-176(%rbp), %r12        # 8-byte Reload
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	-184(%rbp), %r13        # 8-byte Reload
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%r13, %r9
	movq	-200(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	-224(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	-216(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-208(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movl	%r10d, -236(%rbp)       # 4-byte Spill
	movl	%r11d, -240(%rbp)       # 4-byte Spill
	callq	gimp_viewable_dialog_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.16, %rsi
	movabsq	$gradient_editor_replicate_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r14
	movq	-64(%rbp), %r15
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%r15, %rcx
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	304(%rax), %rax
	movq	-64(%rbp), %rsi
	cmpq	312(%rsi), %rax
	jne	.LBB14_5
# BB#4:                                 # %if.then.29
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -96(%rbp)
	jmp	.LBB14_6
.LBB14_5:                               # %if.else.32
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -96(%rbp)
.LBB14_6:                               # %if.end.35
	movq	-88(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI14_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI14_2, %xmm1        # xmm1 = mem[0],zero
	movq	-64(%rbp), %rax
	movl	$2, 356(%rax)
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movsd	-312(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -320(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-320(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-320(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-320(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	gtk_scale_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_digits
	movq	-104(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_value_pos
	movq	-88(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rdi
	movq	-64(%rbp), %r10
	addq	$356, %r10              # imm = 0x164
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-64(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-64(%rbp), %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gradient_editor_replicate_cmd_callback, .Lfunc_end14-gradient_editor_replicate_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_editor_replicate_response,@function
gradient_editor_replicate_response:     # @gradient_editor_replicate_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-24(%rbp), %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	cmpl	$-5, -12(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	356(%rax), %ecx
	movq	-24(%rbp), %rax
	addq	$304, %rax              # imm = 0x130
	movq	-24(%rbp), %r8
	addq	$312, %r8               # imm = 0x138
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-88(%rbp), %r9          # 8-byte Reload
	callq	gimp_gradient_segment_range_replicate
.LBB15_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gradient_editor_replicate_response, .Lfunc_end15-gradient_editor_replicate_response
	.cfi_endproc

	.globl	gradient_editor_split_midpoint_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_split_midpoint_cmd_callback,@function
gradient_editor_split_midpoint_cmd_callback: # @gradient_editor_split_midpoint_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	312(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$304, %rax              # imm = 0x130
	movq	-24(%rbp), %r8
	addq	$312, %r8               # imm = 0x138
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	gimp_gradient_segment_range_split_midpoint
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gradient_editor_split_midpoint_cmd_callback, .Lfunc_end16-gradient_editor_split_midpoint_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4611686018427387904     # double 2
.LCPI17_1:
	.quad	4626604192193052672     # double 21
.LCPI17_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gradient_editor_split_uniformly_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_split_uniformly_cmd_callback,@function
gradient_editor_split_uniformly_cmd_callback: # @gradient_editor_split_uniformly_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	304(%rax), %rax
	movq	-64(%rbp), %rsi
	cmpq	312(%rsi), %rax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movabsq	$.L.str.21, %rdi
	movq	%rax, -120(%rbp)
	callq	gettext
	movq	%rax, -128(%rbp)
	jmp	.LBB17_3
.LBB17_2:                               # %if.else
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movabsq	$.L.str.23, %rdi
	movq	%rax, -120(%rbp)
	callq	gettext
	movq	%rax, -128(%rbp)
.LBB17_3:                               # %if.end
	movq	-72(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%r9, -184(%rbp)         # 8-byte Spill
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.24, %rcx
	movabsq	$.L.str.1, %r8
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.14, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r9d
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-168(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-176(%rbp), %r12        # 8-byte Reload
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	-184(%rbp), %r13        # 8-byte Reload
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%r13, %r9
	movq	-200(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	-224(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	-216(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-208(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movl	%r10d, -236(%rbp)       # 4-byte Spill
	movl	%r11d, -240(%rbp)       # 4-byte Spill
	callq	gimp_viewable_dialog_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.16, %rsi
	movabsq	$gradient_editor_split_uniform_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r14
	movq	-64(%rbp), %r15
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%r15, %rcx
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	304(%rax), %rax
	movq	-64(%rbp), %rsi
	cmpq	312(%rsi), %rax
	jne	.LBB17_5
# BB#4:                                 # %if.then.29
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -96(%rbp)
	jmp	.LBB17_6
.LBB17_5:                               # %if.else.32
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -96(%rbp)
.LBB17_6:                               # %if.end.35
	movq	-88(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI17_2, %xmm1        # xmm1 = mem[0],zero
	movq	-64(%rbp), %rax
	movl	$2, 352(%rax)
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movsd	-312(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -320(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-320(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-320(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-320(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	gtk_scale_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_digits
	movq	-104(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_value_pos
	movq	-88(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$4, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rdi
	movq	-64(%rbp), %r10
	addq	$352, %r10              # imm = 0x160
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-64(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-64(%rbp), %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gradient_editor_split_uniformly_cmd_callback, .Lfunc_end17-gradient_editor_split_uniformly_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_editor_split_uniform_response,@function
gradient_editor_split_uniform_response: # @gradient_editor_split_uniform_response
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	cmpl	$-5, -12(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	312(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	352(%rax), %r8d
	movq	-24(%rbp), %rax
	addq	$304, %rax              # imm = 0x130
	movq	-24(%rbp), %r9
	addq	$312, %r9               # imm = 0x138
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_gradient_segment_range_split_uniform
.LBB18_2:                               # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gradient_editor_split_uniform_response, .Lfunc_end18-gradient_editor_split_uniform_response
	.cfi_endproc

	.globl	gradient_editor_delete_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_delete_cmd_callback,@function
gradient_editor_delete_cmd_callback:    # @gradient_editor_delete_cmd_callback
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$304, %rax              # imm = 0x130
	movq	-24(%rbp), %rcx
	addq	$312, %rcx              # imm = 0x138
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	gimp_gradient_segment_range_delete
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gradient_editor_delete_cmd_callback, .Lfunc_end19-gradient_editor_delete_cmd_callback
	.cfi_endproc

	.globl	gradient_editor_recenter_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_recenter_cmd_callback,@function
gradient_editor_recenter_cmd_callback:  # @gradient_editor_recenter_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdx
	callq	gimp_gradient_segment_range_recenter_handles
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gradient_editor_recenter_cmd_callback, .Lfunc_end20-gradient_editor_recenter_cmd_callback
	.cfi_endproc

	.globl	gradient_editor_redistribute_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_redistribute_cmd_callback,@function
gradient_editor_redistribute_cmd_callback: # @gradient_editor_redistribute_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdx
	callq	gimp_gradient_segment_range_redistribute_handles
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gradient_editor_redistribute_cmd_callback, .Lfunc_end21-gradient_editor_redistribute_cmd_callback
	.cfi_endproc

	.globl	gradient_editor_blend_color_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_blend_color_cmd_callback,@function
gradient_editor_blend_color_cmd_callback: # @gradient_editor_blend_color_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	addq	$32, %rax
	movq	-24(%rbp), %r8
	movq	312(%r8), %r8
	addq	$72, %r8
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_gradient_segment_range_blend
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gradient_editor_blend_color_cmd_callback, .Lfunc_end22-gradient_editor_blend_color_cmd_callback
	.cfi_endproc

	.globl	gradient_editor_blend_opacity_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_blend_opacity_cmd_callback,@function
gradient_editor_blend_opacity_cmd_callback: # @gradient_editor_blend_opacity_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$1, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	addq	$32, %rax
	movq	-24(%rbp), %r8
	movq	312(%r8), %r8
	addq	$72, %r8
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_gradient_segment_range_blend
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gradient_editor_blend_opacity_cmd_callback, .Lfunc_end23-gradient_editor_blend_opacity_cmd_callback
	.cfi_endproc

	.globl	gradient_editor_zoom_cmd_callback
	.align	16, 0x90
	.type	gradient_editor_zoom_cmd_callback,@function
gradient_editor_zoom_cmd_callback:      # @gradient_editor_zoom_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_gradient_editor_zoom
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gradient_editor_zoom_cmd_callback, .Lfunc_end24-gradient_editor_zoom_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_editor_replace_selection,@function
gradient_editor_replace_selection:      # @gradient_editor_replace_selection
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdi
	callq	gimp_gradient_segments_free
	cmpq	$0, -32(%rbp)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 120(%rcx)
	jmp	.LBB25_3
.LBB25_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB25_3:                               # %if.end
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 112(%rcx)
	cmpq	$0, -40(%rbp)
	je	.LBB25_5
# BB#4:                                 # %if.then.11
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 112(%rcx)
.LBB25_5:                               # %if.end.13
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 304(%rcx)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 312(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gradient_editor_replace_selection, .Lfunc_end25-gradient_editor_replace_selection
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Left Endpoint Color"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-tool-blend"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gradient Segment's Left Endpoint Color"
	.size	.L.str.2, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-gradient-editor-color-dialog"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"destroy"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"update"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Right Endpoint Color"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gradient Segment's Right Endpoint Color"
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Replicate Segment"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Replicate Gradient Segment"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Replicate Selection"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Replicate Gradient Selection"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-gradient-segment-replicate"
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-gradient-editor-replicate"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-cancel"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Replicate"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"response"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Select the number of times\nto replicate the selected segment."
	.size	.L.str.17, 62

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Select the number of times\nto replicate the selection."
	.size	.L.str.18, 55

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"value-changed"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Split Segment Uniformly"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Split Gradient Segment Uniformly"
	.size	.L.str.21, 33

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Split Segments Uniformly"
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Split Gradient Segments Uniformly"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-gradient-segment-split-uniformly"
	.size	.L.str.24, 38

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-gradient-editor-split-uniform"
	.size	.L.str.25, 35

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Split"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Select the number of uniform parts\nin which to split the selected segment."
	.size	.L.str.27, 75

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Select the number of uniform parts\nin which to split the segments in the selection."
	.size	.L.str.28, 84


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
