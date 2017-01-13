	.text
	.file	"quit-dialog.bc"
	.globl	quit_dialog_new
	.align	16, 0x90
	.type	quit_dialog_new,@function
quit_dialog_new:                        # @quit_dialog_new
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
	subq	$16, %rsp
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	quit_close_all_dialog_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	quit_dialog_new, .Lfunc_end0-quit_dialog_new
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	quit_close_all_dialog_new,@function
quit_close_all_dialog_new:              # @quit_close_all_dialog_new
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
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.quit_close_all_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_30
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movl	$1, %eax
	movl	%eax, %edi
	movl	$80, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_displays_get_dirty_images
	movq	-32(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movabsq	$.L.str.2, %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_context_new
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
# BB#13:                                # %do.body.17
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_15
# BB#14:                                # %if.then.20
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.quit_close_all_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_30
.LBB1_16:                               # %if.end.22
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.23
	cmpl	$0, -20(%rbp)
	je	.LBB1_19
# BB#18:                                # %cond.true
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_20
.LBB1_19:                               # %cond.false
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB1_20:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.6, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.9, %rdi
	movl	$4294967290, %r9d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.8, %r10
	movabsq	$.L.str.7, %r11
	cmpl	$0, -20(%rbp)
	cmovneq	%r11, %r10
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r9d, -140(%rbp)        # 4-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_message_dialog_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movabsq	$quit_close_all_dialog_free, %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_object_set_data_full
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_add_button
	movq	-32(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.12, %rsi
	movabsq	$quit_close_all_dialog_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %r10
	movq	32(%r10), %r10
	movq	-32(%rbp), %r11
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_accel_group_new
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_add_accel_group
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$32, %edi
	movq	%rax, %rsi
	callq	g_closure_new_object
	movabsq	$quit_close_all_dialog_accel_marshal, %rsi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_closure_set_marshal
	movabsq	$.L.str.13, %rdi
	movq	-32(%rbp), %rax
	addq	$72, %rax
	movq	-32(%rbp), %rcx
	addq	$76, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gtk_accelerator_parse
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	72(%rax), %esi
	movq	-32(%rbp), %rax
	movl	76(%rax), %edx
	movq	-80(%rbp), %r8
	callq	gtk_accel_group_connect
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	264(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	348(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_container_get_n_children
	cmpl	$6, %eax
	jle	.LBB1_22
# BB#21:                                # %cond.true.58
	movl	$6, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB1_26
.LBB1_22:                               # %cond.false.59
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_container_get_n_children
	cmpl	$3, %eax
	jge	.LBB1_24
# BB#23:                                # %cond.true.63
	movl	$3, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB1_25
.LBB1_24:                               # %cond.false.64
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB1_25:                               # %cond.end.67
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB1_26:                               # %cond.end.69
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdi
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rsi
	movl	-88(%rbp), %edx
	callq	gimp_container_tree_view_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_container_tree_view_get_name_cell
	movabsq	$quit_close_all_dialog_name_cell_func, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	296(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %r8         # 8-byte Reload
	callq	gtk_tree_view_column_set_cell_data_func
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	-84(%rbp), %r9d
	movl	-88(%rbp), %r10d
	addl	$2, %r10d
	imull	%r10d, %r9d
	movq	%rax, %rdi
	movl	%r9d, %edx
	callq	gimp_container_box_set_size_request
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rsi
	movabsq	$quit_close_all_dialog_image_activated, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_view_get_dnd_widget
	movabsq	$gimp_dnd_get_drag_data, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rcx, %rsi
	callq	gimp_dnd_xds_source_add
	cmpl	$0, -20(%rbp)
	je	.LBB1_28
# BB#27:                                # %if.then.87
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-32(%rbp), %rdi
	movq	%rax, 56(%rdi)
	jmp	.LBB1_29
.LBB1_28:                               # %if.else.90
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-32(%rbp), %rdi
	movq	%rax, 56(%rdi)
.LBB1_29:                               # %if.end.94
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	-32(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rsi
	movabsq	$quit_close_all_dialog_container_changed, %rax
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	32(%r9), %r9
	movq	%rax, %rdx
	movq	%r9, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.18, %rsi
	movabsq	$quit_close_all_dialog_container_changed, %rcx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	quit_close_all_dialog_container_changed
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB1_30:                               # %return
	movq	-8(%rbp), %rax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	quit_close_all_dialog_new, .Lfunc_end1-quit_close_all_dialog_new
	.cfi_endproc

	.globl	close_all_dialog_new
	.align	16, 0x90
	.type	close_all_dialog_new,@function
close_all_dialog_new:                   # @close_all_dialog_new
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
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	quit_close_all_dialog_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	close_all_dialog_new, .Lfunc_end2-close_all_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	quit_close_all_dialog_free,@function
quit_close_all_dialog_free:             # @quit_close_all_dialog_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	quit_close_all_dialog_free, .Lfunc_end3-quit_close_all_dialog_free
	.cfi_endproc

	.align	16, 0x90
	.type	quit_close_all_dialog_response,@function
quit_close_all_dialog_response:         # @quit_close_all_dialog_response
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	24(%rdx), %esi
	movl	%esi, -36(%rbp)
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdi
	callq	gtk_widget_destroy
	cmpl	$-5, -12(%rbp)
	jne	.LBB4_5
# BB#1:                                 # %if.then
	cmpl	$0, -36(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then.4
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_exit
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rdi
	callq	gimp_displays_close
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.5
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	quit_close_all_dialog_response, .Lfunc_end4-quit_close_all_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	quit_close_all_dialog_accel_marshal,@function
quit_close_all_dialog_accel_marshal:    # @quit_close_all_dialog_accel_marshal
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_response
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	g_value_set_boolean
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	quit_close_all_dialog_accel_marshal, .Lfunc_end5-quit_close_all_dialog_accel_marshal
	.cfi_endproc

	.align	16, 0x90
	.type	quit_close_all_dialog_name_cell_func,@function
quit_close_all_dialog_name_cell_func:   # @quit_close_all_dialog_name_cell_func
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp21:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	leaq	-56(%rbp), %r9
	movl	$1, %r10d
	leaq	-72(%rbp), %r11
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, %edx
	movq	%r9, %rcx
	movl	%r10d, %r8d
	movq	%r11, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	movl	%ebx, -124(%rbp)        # 4-byte Spill
	callq	gtk_tree_model_get
	movq	-56(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_is_export_dirty
	cmpl	$0, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.19, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.20, %rdx
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %r8
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movq	-152(%rbp), %r9         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB6_5
.LBB6_2:                                # %if.else
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.5
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -80(%rbp)
.LBB6_4:                                # %if.end
	movq	-80(%rbp), %rdi
	callq	file_utils_uri_to_utf8_filename
	movq	$-1, %rsi
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_markup_escape_text
	movq	$-1, %rsi
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_markup_escape_text
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.22, %rdi
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-104(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.20, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movabsq	$.L.str.19, %rcx
	movq	-24(%rbp), %rdx
	movq	-120(%rbp), %r8
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rax, %r9
	movb	$0, %al
	callq	g_object_set
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB6_5:                                # %if.end.13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-72(%rbp), %rdi
	callq	g_free
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	quit_close_all_dialog_name_cell_func, .Lfunc_end6-quit_close_all_dialog_name_cell_func
	.cfi_endproc

	.align	16, 0x90
	.type	quit_close_all_dialog_image_activated,@function
quit_close_all_dialog_image_activated:  # @quit_close_all_dialog_image_activated
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -40(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_present
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_5:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_8
.LBB7_8:                                # %cond.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB7_1
.LBB7_9:                                # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	quit_close_all_dialog_image_activated, .Lfunc_end7-quit_close_all_dialog_image_activated
	.cfi_endproc

	.align	16, 0x90
	.type	quit_close_all_dialog_container_changed,@function
quit_close_all_dialog_container_changed: # @quit_close_all_dialog_container_changed
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp28:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rcx
	movl	72(%rcx), %edi
	movq	-40(%rbp), %rcx
	movl	76(%rcx), %esi
	callq	gtk_accelerator_get_label
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-44(%rbp), %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	ngettext
	movl	-44(%rbp), %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	cmpl	$0, -44(%rbp)
	jne	.LBB8_5
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_hide
	movq	-40(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB8_3
# BB#2:                                 # %if.then.6
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
.LBB8_4:                                # %if.end
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.30, %rcx
	movl	$1, %r8d
	movabsq	$.L.str.31, %r9
	xorl	%eax, %eax
	movl	%eax, %edx
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.28, %r10
	movq	-40(%rbp), %r11
	movq	40(%r11), %r11
	movq	-40(%rbp), %rbx
	cmpl	$0, 24(%rbx)
	cmovneq	%r10, %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_set
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	gtk_widget_grab_default
	jmp	.LBB8_9
.LBB8_5:                                # %if.else.14
	movq	-40(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB8_7
# BB#6:                                 # %if.then.17
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
	jmp	.LBB8_8
.LBB8_7:                                # %if.else.20
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
.LBB8_8:                                # %if.end.23
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movabsq	$.L.str.35, %rdi
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.30, %rcx
	xorl	%r8d, %r8d
	movabsq	$.L.str.31, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-80(%rbp), %r10
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_set
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
.LBB8_9:                                # %if.end.31
	movabsq	$.L.str.36, %rdi
	movq	-64(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_markup
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	quit_close_all_dialog_container_changed, .Lfunc_end8-quit_close_all_dialog_container_changed
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.quit_close_all_dialog_new,@object # @__func__.quit_close_all_dialog_new
.L__func__.quit_close_all_dialog_new:
	.asciz	"quit_close_all_dialog_new"
	.size	.L__func__.quit_close_all_dialog_new, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"close-all-dialog"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"dialog->images != NULL"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Quit GIMP"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Close All Images"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-warning"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-file-quit"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-file-close-all"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-cancel"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"quit-dialog"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.zero	1
	.size	.L.str.11, 1

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"response"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Primary>D"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"activate-item"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"If you quit GIMP now, these changes will be lost."
	.size	.L.str.15, 50

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"If you close these images now, changes will be lost."
	.size	.L.str.16, 53

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"add"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"remove"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"markup"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"text"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Exported to %s"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s\n<i>%s</i>"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"There is one image with unsaved changes:"
	.size	.L.str.23, 41

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"There are %d images with unsaved changes:"
	.size	.L.str.24, 42

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Press %s to quit."
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Press %s to close all images."
	.size	.L.str.26, 30

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"label"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gtk-quit"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-close"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"use-stock"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"image"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Press %s to discard all changes and quit."
	.size	.L.str.32, 42

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Press %s to discard all changes and close all images."
	.size	.L.str.33, 54

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gtk-delete"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Discard Changes"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"<i><small>%s</small></i>"
	.size	.L.str.36, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
