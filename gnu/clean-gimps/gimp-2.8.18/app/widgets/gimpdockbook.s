	.text
	.file	"gimpdockbook.bc"
	.globl	gimp_dockbook_get_type
	.align	16, 0x90
	.type	gimp_dockbook_get_type,@function
gimp_dockbook_get_type:                 # @gimp_dockbook_get_type
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
	movq	gimp_dockbook_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dockbook_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_notebook_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$920, %edx              # imm = 0x398
	movabsq	$gimp_dockbook_class_intern_init, %rdi
	movl	$184, %r8d
	movabsq	$gimp_dockbook_init, %rcx
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
	movabsq	$gimp_dockbook_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dockbook_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dockbook_get_type, .Lfunc_end0-gimp_dockbook_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_class_intern_init,@function
gimp_dockbook_class_intern_init:        # @gimp_dockbook_class_intern_init
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
	movq	%rax, gimp_dockbook_parent_class
	cmpl	$0, GimpDockbook_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDockbook_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dockbook_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dockbook_class_intern_init, .Lfunc_end1-gimp_dockbook_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_init,@function
gimp_dockbook_init:                     # @gimp_dockbook_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 176(%rsi)
	movq	-16(%rbp), %rdi
	callq	gtk_notebook_popup_enable
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_notebook_set_scrollable
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_notebook_set_show_border
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_notebook_set_show_tabs
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$dialog_target_table, %rdx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	%rax, %rdi
	callq	gtk_drag_dest_set
	callq	gtk_button_new
	xorl	%esi, %esi
	movq	-8(%rbp), %rdx
	movq	176(%rdx), %rdx
	movq	%rax, 64(%rdx)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	64(%rax), %rdi
	callq	gtk_widget_set_can_focus
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	64(%rax), %rsi
	callq	gtk_notebook_set_action_widget
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	64(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rdi
	movl	$1, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rdi
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.42, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_dockbook_menu_button_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	176(%rdx), %rdx
	movq	64(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -88(%rbp)         # 8-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dockbook_init, .Lfunc_end2-gimp_dockbook_init
	.cfi_endproc

	.globl	gimp_dockbook_new
	.align	16, 0x90
	.type	gimp_dockbook_new,@function
gimp_dockbook_new:                      # @gimp_dockbook_new
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_menu_factory_get_type
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
	movabsq	$.L__func__.gimp_dockbook_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_dockbook_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_menu_factory_manager_new
	movq	-24(%rbp), %rdx
	movq	176(%rdx), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_dockbook_help_func, %rsi
	movabsq	$.L.str.4, %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	gimp_help_connect
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dockbook_new, .Lfunc_end3-gimp_dockbook_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_help_func,@function
gimp_dockbook_help_func:                # @gimp_dockbook_help_func
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_current_page
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_get_nth_page
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_7
.LBB4_2:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_5
# BB#4:                                 # %if.then.11
	movl	$1, -60(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else.12
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_6:                                # %if.end
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.14
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.16
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dockable_get_help_id
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_standard_help_func
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.20
	movabsq	$.L.str.4, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gimp_standard_help_func
.LBB4_10:                               # %if.end.21
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dockbook_help_func, .Lfunc_end4-gimp_dockbook_help_func
	.cfi_endproc

	.globl	gimp_dockbook_get_dock
	.align	16, 0x90
	.type	gimp_dockbook_get_dock,@function
gimp_dockbook_get_dock:                 # @gimp_dockbook_get_dock
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_get_dock, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dockbook_get_dock, .Lfunc_end5-gimp_dockbook_get_dock
	.cfi_endproc

	.globl	gimp_dockbook_set_dock
	.align	16, 0x90
	.type	gimp_dockbook_set_dock,@function
gimp_dockbook_set_dock:                 # @gimp_dockbook_set_dock
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_set_dock, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_26
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB6_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB6_21
.LBB6_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_20:                               # %if.end.32
	jmp	.LBB6_21
.LBB6_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_23
.LBB6_22:                               # %if.then.36
	jmp	.LBB6_24
.LBB6_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_set_dock, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_26
.LBB6_24:                               # %if.end.38
	jmp	.LBB6_25
.LBB6_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rax, (%rcx)
.LBB6_26:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dockbook_set_dock, .Lfunc_end6-gimp_dockbook_set_dock
	.cfi_endproc

	.globl	gimp_dockbook_get_ui_manager
	.align	16, 0x90
	.type	gimp_dockbook_get_ui_manager,@function
gimp_dockbook_get_ui_manager:           # @gimp_dockbook_get_ui_manager
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
	callq	gimp_dockbook_get_type
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
	movabsq	$.L__func__.gimp_dockbook_get_ui_manager, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dockbook_get_ui_manager, .Lfunc_end7-gimp_dockbook_get_ui_manager
	.cfi_endproc

	.globl	gimp_dockbook_add
	.align	16, 0x90
	.type	gimp_dockbook_add,@function
gimp_dockbook_add:                      # @gimp_dockbook_add
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_add, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_66
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_add, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_66
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	jmp	.LBB8_18
.LBB8_18:                               # %do.body.17
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB8_20
# BB#19:                                # %if.then.26
	movl	$0, -84(%rbp)
	jmp	.LBB8_25
.LBB8_20:                               # %if.else.27
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_23
# BB#21:                                # %land.lhs.true.30
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB8_23
# BB#22:                                # %if.then.34
	movl	$1, -84(%rbp)
	jmp	.LBB8_24
.LBB8_23:                               # %if.else.35
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB8_24:                               # %if.end.37
	jmp	.LBB8_25
.LBB8_25:                               # %if.end.38
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB8_27
# BB#26:                                # %if.then.41
	jmp	.LBB8_28
.LBB8_27:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_add, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_66
.LBB8_28:                               # %if.end.43
	jmp	.LBB8_29
.LBB8_29:                               # %do.end.44
	jmp	.LBB8_30
.LBB8_30:                               # %do.body.45
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	cmpq	$0, %rax
	jne	.LBB8_32
# BB#31:                                # %if.then.48
	jmp	.LBB8_33
.LBB8_32:                               # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_add, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_66
.LBB8_33:                               # %if.end.50
	jmp	.LBB8_34
.LBB8_34:                               # %do.end.51
	jmp	.LBB8_35
.LBB8_35:                               # %do.body.52
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB8_37
# BB#36:                                # %if.then.54
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dockbook_add, %rsi
	movl	$933, %edx              # imm = 0x3A5
	movabsq	$.L.str.10, %rcx
	movq	-16(%rbp), %r8
	movq	-8(%rbp), %r9
	movb	$0, %al
	callq	gimp_log
.LBB8_37:                               # %if.end.55
	jmp	.LBB8_38
.LBB8_38:                               # %do.end.56
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	56(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movq	%rax, %rsi
	callq	g_list_insert
	movq	-8(%rbp), %rsi
	movq	176(%rsi), %rsi
	movq	%rax, 56(%rsi)
	movq	-8(%rbp), %rdi
	callq	gimp_dockbook_update_auto_tab_style
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_dockbook_create_tab_widget
	movq	%rax, -32(%rbp)
# BB#39:                                # %do.body.62
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB8_41
# BB#40:                                # %if.then.71
	movl	$0, -108(%rbp)
	jmp	.LBB8_46
.LBB8_41:                               # %if.else.72
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_44
# BB#42:                                # %land.lhs.true.75
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB8_44
# BB#43:                                # %if.then.79
	movl	$1, -108(%rbp)
	jmp	.LBB8_45
.LBB8_44:                               # %if.else.80
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB8_45:                               # %if.end.82
	jmp	.LBB8_46
.LBB8_46:                               # %if.end.83
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB8_48
# BB#47:                                # %if.then.86
	jmp	.LBB8_49
.LBB8_48:                               # %if.else.87
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_add, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_66
.LBB8_49:                               # %if.end.88
	jmp	.LBB8_50
.LBB8_50:                               # %do.end.89
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	32(%rax), %rsi
	callq	gimp_dockable_set_drag_handler
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_dock_get_context
	movl	$5, %edx
	movl	$1, %ecx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dockable_create_tab_widget
	movq	%rax, -40(%rbp)
# BB#51:                                # %do.body.95
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB8_53
# BB#52:                                # %if.then.104
	movl	$0, -132(%rbp)
	jmp	.LBB8_58
.LBB8_53:                               # %if.else.105
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_56
# BB#54:                                # %land.lhs.true.108
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB8_56
# BB#55:                                # %if.then.112
	movl	$1, -132(%rbp)
	jmp	.LBB8_57
.LBB8_56:                               # %if.else.113
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB8_57:                               # %if.end.115
	jmp	.LBB8_58
.LBB8_58:                               # %if.end.116
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB8_60
# BB#59:                                # %if.then.119
	jmp	.LBB8_61
.LBB8_60:                               # %if.else.120
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_add, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_66
.LBB8_61:                               # %if.end.121
	jmp	.LBB8_62
.LBB8_62:                               # %do.end.122
	cmpl	$-1, -20(%rbp)
	jne	.LBB8_64
# BB#63:                                # %if.then.124
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_append_page_menu
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB8_65
.LBB8_64:                               # %if.else.130
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %r8d
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_insert_page_menu
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB8_65:                               # %if.end.136
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_dockable_set_dockbook
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_dock_get_context
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dockable_set_context
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_dockbook_tab_locked_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movl	dockbook_signals, %esi
	movq	-16(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_signal_emit
.LBB8_66:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dockbook_add, .Lfunc_end8-gimp_dockbook_add
	.cfi_endproc

	.globl	gimp_dockbook_update_auto_tab_style
	.align	16, 0x90
	.type	gimp_dockbook_update_auto_tab_style,@function
gimp_dockbook_update_auto_tab_style:    # @gimp_dockbook_update_auto_tab_style
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_update_auto_tab_style, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_dockbook_refresh_tab_layout_lut
	movq	-8(%rbp), %rdi
	callq	gimp_dockbook_update_automatic_tab_style
.LBB9_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dockbook_update_auto_tab_style, .Lfunc_end9-gimp_dockbook_update_auto_tab_style
	.cfi_endproc

	.globl	gimp_dockbook_create_tab_widget
	.align	16, 0x90
	.type	gimp_dockbook_create_tab_widget,@function
gimp_dockbook_create_tab_widget:        # @gimp_dockbook_create_tab_widget
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	176(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_dock_get_context
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_actual_tab_style
	movq	-8(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_dockbook_get_tab_icon_size
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	-124(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_dockable_create_event_box_tab_widget
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_dock_window_from_dock
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_24
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_container_get_ui_manager
	cmpq	$0, %rax
	je	.LBB10_24
# BB#2:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB10_23
# BB#3:                                 # %if.then.14
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_dock_container_get_ui_manager
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	gimp_ui_manager_get_action_group
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB10_22
# BB#4:                                 # %if.then.20
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_group_list_actions
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB10_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB10_21
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_string_action_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB10_8
# BB#7:                                 # %if.then.27
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	$0, -100(%rbp)
	jmp	.LBB10_13
.LBB10_8:                               # %if.else
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_11
# BB#9:                                 # %land.lhs.true.29
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB10_11
# BB#10:                                # %if.then.31
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	$1, -100(%rbp)
	jmp	.LBB10_12
.LBB10_11:                              # %if.else.32
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB10_12:                              # %if.end
                                        #   in Loop: Header=BB10_5 Depth=1
	jmp	.LBB10_13
.LBB10_13:                              # %if.end.34
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB10_16
# BB#14:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_string_action_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	64(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB10_16
# BB#15:                                # %if.then.42
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB10_21
.LBB10_16:                              # %if.end.44
                                        #   in Loop: Header=BB10_5 Depth=1
	jmp	.LBB10_17
.LBB10_17:                              # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB10_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB10_20
.LBB10_19:                              # %cond.false
                                        #   in Loop: Header=BB10_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB10_20
.LBB10_20:                              # %cond.end
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB10_5
.LBB10_21:                              # %for.end
	movq	-72(%rbp), %rdi
	callq	g_list_free
.LBB10_22:                              # %if.end.46
	jmp	.LBB10_23
.LBB10_23:                              # %if.end.47
	jmp	.LBB10_24
.LBB10_24:                              # %if.end.48
	cmpq	$0, -40(%rbp)
	je	.LBB10_26
# BB#25:                                # %if.then.50
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_widget_set_accel_help
	jmp	.LBB10_27
.LBB10_26:                              # %if.else.51
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_dockable_get_blurb
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_help_id
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_help_set_help_data
.LBB10_27:                              # %if.end.54
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_dockbook_tab_drag_source_setup
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_dockbook_tab_drag_begin, %rax
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_dockbook_tab_drag_end, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_dockbook_tab_drag_begin, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_dockbook_tab_drag_end, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	xorl	%esi, %esi
	movabsq	$dialog_target_table, %rdx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	-24(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_drag_dest_set
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_dockbook_tab_drag_leave, %rax
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_dockbook_tab_drag_motion, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_dockbook_tab_drag_drop, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-24(%rbp), %rcx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dockbook_create_tab_widget, .Lfunc_end10-gimp_dockbook_create_tab_widget
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_tab_locked_notify,@function
gimp_dockbook_tab_locked_notify:        # @gimp_dockbook_tab_locked_notify
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
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_get_tab_label
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_dockbook_tab_drag_source_setup
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dockbook_tab_locked_notify, .Lfunc_end11-gimp_dockbook_tab_locked_notify
	.cfi_endproc

	.globl	gimp_dockbook_add_from_dialog_factory
	.align	16, 0x90
	.type	gimp_dockbook_add_from_dialog_factory,@function
gimp_dockbook_add_from_dialog_factory:  # @gimp_dockbook_add_from_dialog_factory
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_add_from_dialog_factory, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_23
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_add_from_dialog_factory, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_23
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movl	$124, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	strchr
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB12_19
# BB#18:                                # %if.then.20
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
.LBB12_19:                              # %if.end.21
	movq	-16(%rbp), %rdi
	callq	gimp_dockbook_get_dock
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_dock_get_dialog_factory
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_dialog_factory_dockable_new
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free
	cmpq	$0, -40(%rbp)
	je	.LBB12_22
# BB#20:                                # %land.lhs.true.26
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dockable_get_dockbook
	cmpq	$0, %rax
	jne	.LBB12_22
# BB#21:                                # %if.then.31
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dockbook_add
.LBB12_22:                              # %if.end.34
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_dockbook_add_from_dialog_factory, .Lfunc_end12-gimp_dockbook_add_from_dialog_factory
	.cfi_endproc

	.globl	gimp_dockbook_remove
	.align	16, 0x90
	.type	gimp_dockbook_remove,@function
gimp_dockbook_remove:                   # @gimp_dockbook_remove
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockbook_get_type
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
	movabsq	$.L__func__.gimp_dockbook_remove, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_40
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB13_20
.LBB13_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB13_19:                              # %if.end.31
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.35
	jmp	.LBB13_23
.LBB13_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_remove, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_40
.LBB13_23:                              # %if.end.37
	jmp	.LBB13_24
.LBB13_24:                              # %do.end.38
	jmp	.LBB13_25
.LBB13_25:                              # %do.body.39
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	cmpq	-8(%rbp), %rax
	jne	.LBB13_27
# BB#26:                                # %if.then.42
	jmp	.LBB13_28
.LBB13_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_remove, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_40
.LBB13_28:                              # %if.end.44
	jmp	.LBB13_29
.LBB13_29:                              # %do.end.45
	jmp	.LBB13_30
.LBB13_30:                              # %do.body.46
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB13_32
# BB#31:                                # %if.then.48
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dockbook_remove, %rsi
	movl	$1042, %edx             # imm = 0x412
	movabsq	$.L.str.16, %rcx
	movq	-16(%rbp), %r8
	movq	-8(%rbp), %r9
	movb	$0, %al
	callq	gimp_log
.LBB13_32:                              # %if.end.49
	jmp	.LBB13_33
.LBB13_33:                              # %do.end.50
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_set_drag_handler
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_ref
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_dockbook_tab_locked_notify, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	24(%rdi), %rdi
	cmpq	-16(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jne	.LBB13_35
# BB#34:                                # %if.then.54
	movq	-8(%rbp), %rdi
	callq	gimp_dockbook_remove_tab_timeout
.LBB13_35:                              # %if.end.55
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_set_dockbook
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_set_context
	movq	-8(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
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
	callq	gtk_container_remove
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	56(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	176(%rsi), %rsi
	movq	%rax, 56(%rsi)
	movq	-8(%rbp), %rax
	movl	dockbook_signals+4, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rcx
	cmpq	$0, (%rcx)
	je	.LBB13_40
# BB#36:                                # %if.then.66
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB13_38
# BB#37:                                # %if.then.72
	movq	-8(%rbp), %rdi
	callq	gimp_dockbook_update_auto_tab_style
	jmp	.LBB13_39
.LBB13_38:                              # %if.else.73
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_dock_remove_book
.LBB13_39:                              # %if.end.76
	movq	-72(%rbp), %rdi
	callq	g_list_free
.LBB13_40:                              # %if.end.77
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_dockbook_remove, .Lfunc_end13-gimp_dockbook_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_remove_tab_timeout,@function
gimp_dockbook_remove_tab_timeout:       # @gimp_dockbook_remove_tab_timeout
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rdi
	cmpl	$0, 16(%rdi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movl	16(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rcx
	movl	$0, 16(%rcx)
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	$0, 24(%rcx)
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB14_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_dockbook_remove_tab_timeout, .Lfunc_end14-gimp_dockbook_remove_tab_timeout
	.cfi_endproc

	.globl	gimp_dockbook_update_with_context
	.align	16, 0x90
	.type	gimp_dockbook_update_with_context,@function
gimp_dockbook_update_with_context:      # @gimp_dockbook_update_with_context
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB15_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_dockable_set_context
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB15_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB15_6
.LBB15_5:                               # %cond.false
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB15_6
.LBB15_6:                               # %cond.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB15_1
.LBB15_7:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	g_list_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_dockbook_update_with_context, .Lfunc_end15-gimp_dockbook_update_with_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_create_event_box_tab_widget,@function
gimp_dockable_create_event_box_tab_widget: # @gimp_dockable_create_event_box_tab_widget
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
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_dockable_create_tab_widget
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_view_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB16_7
.LBB16_2:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_5
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_5
# BB#4:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB16_6
.LBB16_5:                               # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_6:                               # %if.end
	jmp	.LBB16_7
.LBB16_7:                               # %if.end.7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.LBB16_9
# BB#8:                                 # %if.then.9
	callq	gtk_event_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_event_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_event_box_set_visible_window
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_event_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_event_box_set_above_child
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB16_9:                               # %if.end.18
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_dockable_create_event_box_tab_widget, .Lfunc_end16-gimp_dockable_create_event_box_tab_widget
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_get_tab_icon_size,@function
gimp_dockbook_get_tab_icon_size:        # @gimp_dockbook_get_tab_icon_size
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
	movl	$4, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rsi
	leaq	-12(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_dockbook_get_tab_icon_size, .Lfunc_end17-gimp_dockbook_get_tab_icon_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_tab_drag_source_setup,@function
gimp_dockbook_tab_drag_source_setup:    # @gimp_dockbook_tab_drag_source_setup
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_is_locked
	cmpl	$0, %eax
	je	.LBB18_4
# BB#1:                                 # %if.then
	cmpq	$0, -8(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	callq	gtk_drag_source_unset
.LBB18_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_drag_source_unset
	jmp	.LBB18_7
.LBB18_4:                               # %if.else
	cmpq	$0, -8(%rbp)
	je	.LBB18_6
# BB#5:                                 # %if.then.6
	movl	$768, %esi              # imm = 0x300
	movabsq	$dialog_target_table, %rdx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	-8(%rbp), %rdi
	callq	gtk_drag_source_set
.LBB18_6:                               # %if.end.7
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$768, %esi              # imm = 0x300
	movabsq	$dialog_target_table, %rdx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	%rax, %rdi
	callq	gtk_drag_source_set
.LBB18_7:                               # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_dockbook_tab_drag_source_setup, .Lfunc_end18-gimp_dockbook_tab_drag_source_setup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_tab_drag_begin,@function
gimp_dockbook_tab_drag_begin:           # @gimp_dockbook_tab_drag_begin
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
	subq	$128, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation
	movl	$1, %edi
	callq	gtk_window_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$13, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_type_hint
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen
	movq	-24(%rbp), %rdi
	callq	gimp_dockable_create_drag_widget
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_widget_size_request
	movl	-64(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	jge	.LBB19_2
# BB#1:                                 # %if.then
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	gtk_widget_set_size_request
.LBB19_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_object_set_data_full
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_dockable_get_drag_pos
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	callq	gtk_drag_set_icon_widget
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_dockbook_tab_drag_begin, .Lfunc_end19-gimp_dockbook_tab_drag_begin
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_tab_drag_end,@function
gimp_dockbook_tab_drag_end:             # @gimp_dockbook_tab_drag_end
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-24(%rbp), %rdi
	callq	gimp_dockable_detach
.LBB20_2:                               # %if.end
	movl	$4294967290, %eax       # imm = 0xFFFFFFFA
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_dockable_set_drag_pos
	movq	-24(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_dockbook_tab_drag_end, .Lfunc_end20-gimp_dockbook_tab_drag_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_tab_drag_leave,@function
gimp_dockbook_tab_drag_leave:           # @gimp_dockbook_tab_drag_leave
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
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_dockbook_remove_tab_timeout
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_highlight_widget
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_dockbook_tab_drag_leave, .Lfunc_end21-gimp_dockbook_tab_drag_leave
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_tab_drag_motion,@function
gimp_dockbook_tab_drag_motion:          # @gimp_dockbook_tab_drag_motion
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	176(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	callq	gimp_paned_box_will_handle_drag
	cmpl	$0, %eax
	je	.LBB22_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %edx
	callq	gdk_drag_status
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_highlight_widget
	movl	$0, -4(%rbp)
	jmp	.LBB22_8
.LBB22_2:                               # %if.end
	movq	-56(%rbp), %rax
	movq	176(%rax), %rax
	cmpl	$0, 16(%rax)
	je	.LBB22_4
# BB#3:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	176(%rax), %rax
	movq	24(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB22_7
.LBB22_4:                               # %if.then.5
	movq	-56(%rbp), %rdi
	callq	gimp_dockbook_remove_tab_timeout
	movq	-56(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_page_num
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movq	-56(%rbp), %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_current_page
	movl	-108(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB22_6
# BB#5:                                 # %if.then.15
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_dockbook_add_tab_timeout
.LBB22_6:                               # %if.end.16
	jmp	.LBB22_7
.LBB22_7:                               # %if.end.17
	movq	-16(%rbp), %rdi
	callq	gtk_drag_dest_get_target_list
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	gtk_drag_dest_find_target
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_target_list_find
	xorl	%ecx, %ecx
	movl	$4, %r8d
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	cmovnel	%r8d, %ecx
	movl	-36(%rbp), %edx
	movl	%ecx, %esi
	callq	gdk_drag_status
	movq	-16(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_highlight_widget
	movl	$1, -4(%rbp)
.LBB22_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_dockbook_tab_drag_motion, .Lfunc_end22-gimp_dockbook_tab_drag_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_tab_drag_drop,@function
gimp_dockbook_tab_drag_drop:            # @gimp_dockbook_tab_drag_drop
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
	subq	$144, %rsp
	movl	$80, %eax
	movl	%eax, %r9d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%r9, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_drag_get_source_widget
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_dockable_get_drag_handler
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_paned_box_will_handle_drag
	cmpl	$0, %eax
	je	.LBB23_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB23_13
.LBB23_2:                               # %if.end
	cmpq	$0, -48(%rbp)
	je	.LBB23_12
# BB#3:                                 # %land.lhs.true
	cmpq	$0, -56(%rbp)
	je	.LBB23_12
# BB#4:                                 # %if.then.7
	movq	-56(%rbp), %rdi
	callq	gimp_dockbook_drag_source_to_dockable
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB23_11
# BB#5:                                 # %if.then.10
	movq	-48(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_page_num
	movl	%eax, -76(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	-48(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_dockbook
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB23_7
# BB#6:                                 # %if.then.19
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-72(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_dockbook
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dockbook_remove
	movq	-48(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_dockbook_add
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, -60(%rbp)
	jmp	.LBB23_10
.LBB23_7:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB23_9
# BB#8:                                 # %if.then.24
	movq	-72(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-76(%rbp), %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_reorder_child
	movq	-72(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	xorl	%edx, %edx
	movl	dockbook_signals+8, %esi
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$1, -60(%rbp)
.LBB23_9:                               # %if.end.31
	jmp	.LBB23_10
.LBB23_10:                              # %if.end.32
	jmp	.LBB23_11
.LBB23_11:                              # %if.end.33
	jmp	.LBB23_12
.LBB23_12:                              # %if.end.34
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-36(%rbp), %ecx
	callq	gtk_drag_finish
	movl	$1, -4(%rbp)
.LBB23_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_dockbook_tab_drag_drop, .Lfunc_end23-gimp_dockbook_tab_drag_drop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_refresh_tab_layout_lut,@function
gimp_dockbook_refresh_tab_layout_lut:   # @gimp_dockbook_refresh_tab_layout_lut
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB24_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_dockable_get_tab_style
	movl	%eax, -44(%rbp)
	cmpl	$9, -44(%rbp)
	jne	.LBB24_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -16(%rbp)
	jmp	.LBB24_5
.LBB24_4:                               # %if.else
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	gimp_dockbook_get_dockable_tab_width
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB24_5:                               # %if.end
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_6
.LBB24_6:                               # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB24_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB24_9
.LBB24_8:                               # %cond.false
                                        #   in Loop: Header=BB24_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB24_9
.LBB24_9:                               # %cond.end
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB24_1
.LBB24_10:                              # %for.end
	movl	$0, -32(%rbp)
.LBB24_11:                              # %for.cond.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_13 Depth 2
	movslq	-32(%rbp), %rax
	cmpq	$3, %rax
	jae	.LBB24_25
# BB#12:                                # %for.body.9
                                        #   in Loop: Header=BB24_11 Depth=1
	movl	$0, -48(%rbp)
	movslq	-32(%rbp), %rax
	movl	gimp_tab_style_candidates(,%rax,4), %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB24_13:                              # %for.cond.10
                                        #   Parent Loop BB24_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB24_19
# BB#14:                                # %for.body.12
                                        #   in Loop: Header=BB24_13 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movl	-52(%rbp), %edi
	movq	-64(%rbp), %rsi
	callq	gimp_dockbook_tab_style_to_prefered
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	callq	gimp_dockbook_get_dockable_tab_width
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
# BB#15:                                # %for.inc.20
                                        #   in Loop: Header=BB24_13 Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB24_17
# BB#16:                                # %cond.true.22
                                        #   in Loop: Header=BB24_13 Depth=2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB24_18
.LBB24_17:                              # %cond.false.24
                                        #   in Loop: Header=BB24_13 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB24_18
.LBB24_18:                              # %cond.end.25
                                        #   in Loop: Header=BB24_13 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB24_13
.LBB24_19:                              # %for.end.27
                                        #   in Loop: Header=BB24_11 Depth=1
	movl	-28(%rbp), %eax
	addl	-48(%rbp), %eax
	movslq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	176(%rdx), %rdx
	movl	%eax, 40(%rdx,%rcx,4)
# BB#20:                                # %do.body
                                        #   in Loop: Header=BB24_11 Depth=1
	movl	gimp_log_flags, %eax
	andl	$32768, %eax            # imm = 0x8000
	cmpl	$0, %eax
	je	.LBB24_22
# BB#21:                                # %if.then.33
                                        #   in Loop: Header=BB24_11 Depth=1
	movl	-52(%rbp), %edi
	callq	gimp_dockbook_get_tab_style_name
	movl	$32768, %edi            # imm = 0x8000
	movabsq	$.L__func__.gimp_dockbook_refresh_tab_layout_lut, %rsi
	movl	$756, %edx              # imm = 0x2F4
	movabsq	$.L.str.45, %rcx
	movslq	-32(%rbp), %r8
	movq	-8(%rbp), %r9
	movq	176(%r9), %r9
	movl	40(%r9,%r8,4), %r9d
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB24_22:                              # %if.end.39
                                        #   in Loop: Header=BB24_11 Depth=1
	jmp	.LBB24_23
.LBB24_23:                              # %do.end
                                        #   in Loop: Header=BB24_11 Depth=1
	jmp	.LBB24_24
.LBB24_24:                              # %for.inc.40
                                        #   in Loop: Header=BB24_11 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB24_11
.LBB24_25:                              # %for.end.41
	movq	-16(%rbp), %rdi
	callq	g_list_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_dockbook_refresh_tab_layout_lut, .Lfunc_end24-gimp_dockbook_refresh_tab_layout_lut
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_update_automatic_tab_style,@function
gimp_dockbook_update_automatic_tab_style: # @gimp_dockbook_update_automatic_tab_style
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
	pushq	%rbx
	subq	$248, %rsp
.Ltmp78:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$16, %edx
	movl	%edx, %esi
	leaq	-72(%rbp), %rdi
	leaq	-56(%rbp), %r8
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	callq	memset
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_style
	movabsq	$.L.str.46, %rsi
	leaq	-88(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	536(%rax), %r9d
	movl	%r9d, -92(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movabsq	$.L.str.47, %rsi
	leaq	-96(%rbp), %rdx
	movabsq	$.L.str.48, %rcx
	leaq	-100(%rbp), %r8
	movabsq	$.L.str.49, %r9
	leaq	-104(%rbp), %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-176(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r11, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_style_get
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	64(%rcx), %rdi
	callq	gtk_widget_get_allocation
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	shll	$1, %eax
	movl	%eax, -112(%rbp)
	movl	-64(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -116(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_n_pages
	movl	-92(%rbp), %r10d
	addl	-96(%rbp), %r10d
	addl	-100(%rbp), %r10d
	addl	-88(%rbp), %r10d
	shll	$1, %r10d
	subl	-104(%rbp), %r10d
	imull	%r10d, %eax
	movl	%eax, -108(%rbp)
	movl	-48(%rbp), %eax
	subl	-112(%rbp), %eax
	subl	-116(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-104(%rbp), %eax
	movl	%eax, -84(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$32768, %eax            # imm = 0x8000
	cmpl	$0, %eax
	je	.LBB25_3
# BB#2:                                 # %if.then
	movl	$32768, %edi            # imm = 0x8000
	movabsq	$.L__func__.gimp_dockbook_update_automatic_tab_style, %rsi
	movl	$837, %edx              # imm = 0x345
	movabsq	$.L.str.50, %rcx
	movl	-84(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	-112(%rbp), %eax
	movl	-116(%rbp), %r10d
	movl	-108(%rbp), %r11d
	movl	-104(%rbp), %ebx
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB25_3:                               # %if.end
	jmp	.LBB25_4
.LBB25_4:                               # %do.end
	movl	$0, -80(%rbp)
.LBB25_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-80(%rbp), %rax
	cmpq	$3, %rax
	jae	.LBB25_14
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB25_5 Depth=1
	movslq	-80(%rbp), %rax
	movl	gimp_tab_style_candidates(,%rax,4), %ecx
	movl	%ecx, -76(%rbp)
	movl	-84(%rbp), %ecx
	movslq	-80(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	176(%rdx), %rdx
	cmpl	40(%rdx,%rax,4), %ecx
	jle	.LBB25_12
# BB#7:                                 # %if.then.27
	jmp	.LBB25_8
.LBB25_8:                               # %do.body.28
	movl	gimp_log_flags, %eax
	andl	$32768, %eax            # imm = 0x8000
	cmpl	$0, %eax
	je	.LBB25_10
# BB#9:                                 # %if.then.31
	movl	-76(%rbp), %edi
	callq	gimp_dockbook_get_tab_style_name
	movl	$32768, %edi            # imm = 0x8000
	movabsq	$.L__func__.gimp_dockbook_update_automatic_tab_style, %rsi
	movl	$849, %edx              # imm = 0x351
	movabsq	$.L.str.51, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB25_10:                              # %if.end.33
	jmp	.LBB25_11
.LBB25_11:                              # %do.end.34
	jmp	.LBB25_14
.LBB25_12:                              # %if.end.35
                                        #   in Loop: Header=BB25_5 Depth=1
	jmp	.LBB25_13
.LBB25_13:                              # %for.inc
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB25_5
.LBB25_14:                              # %for.end
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB25_15:                              # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB25_25
# BB#16:                                # %for.body.39
                                        #   in Loop: Header=BB25_15 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, -132(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_dockable_get_tab_style
	cmpl	$9, %eax
	je	.LBB25_18
# BB#17:                                # %if.then.45
                                        #   in Loop: Header=BB25_15 Depth=1
	jmp	.LBB25_21
.LBB25_18:                              # %if.end.46
                                        #   in Loop: Header=BB25_15 Depth=1
	movl	-76(%rbp), %edi
	movq	-128(%rbp), %rsi
	callq	gimp_dockbook_tab_style_to_prefered
	movl	%eax, -132(%rbp)
	movq	-128(%rbp), %rdi
	movl	-132(%rbp), %esi
	callq	gimp_dockable_set_actual_tab_style
	cmpl	$0, %eax
	je	.LBB25_20
# BB#19:                                # %if.then.50
                                        #   in Loop: Header=BB25_15 Depth=1
	movl	$1, -28(%rbp)
.LBB25_20:                              # %if.end.51
                                        #   in Loop: Header=BB25_15 Depth=1
	jmp	.LBB25_21
.LBB25_21:                              # %for.inc.52
                                        #   in Loop: Header=BB25_15 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB25_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB25_15 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB25_24
.LBB25_23:                              # %cond.false
                                        #   in Loop: Header=BB25_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB25_24
.LBB25_24:                              # %cond.end
                                        #   in Loop: Header=BB25_15 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB25_15
.LBB25_25:                              # %for.end.54
	cmpl	$0, -28(%rbp)
	je	.LBB25_27
# BB#26:                                # %if.then.56
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_dockbook_recreate_tab_widgets
.LBB25_27:                              # %if.end.57
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_dockbook_update_automatic_tab_style, .Lfunc_end25-gimp_dockbook_update_automatic_tab_style
	.cfi_endproc

	.globl	gimp_dockbook_drop_dockable
	.align	16, 0x90
	.type	gimp_dockbook_drop_dockable,@function
gimp_dockbook_drop_dockable:            # @gimp_dockbook_drop_dockable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_drop_dockable, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB26_20
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB26_19
# BB#13:                                # %if.then.12
	movq	-24(%rbp), %rdi
	callq	gimp_dockbook_drag_source_to_dockable
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB26_18
# BB#14:                                # %if.then.16
	movq	-56(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	cmpq	-16(%rbp), %rax
	jne	.LBB26_16
# BB#15:                                # %if.then.19
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_reorder_child
	jmp	.LBB26_17
.LBB26_16:                              # %if.else.24
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-56(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_dockbook
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dockbook_remove
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_dockbook_add
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB26_17:                              # %if.end.27
	movl	$1, -4(%rbp)
	jmp	.LBB26_20
.LBB26_18:                              # %if.end.28
	jmp	.LBB26_19
.LBB26_19:                              # %if.end.29
	movl	$0, -4(%rbp)
.LBB26_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_dockbook_drop_dockable, .Lfunc_end26-gimp_dockbook_drop_dockable
	.cfi_endproc

	.globl	gimp_dockbook_drag_source_to_dockable
	.align	16, 0x90
	.type	gimp_dockbook_drag_source_to_dockable,@function
gimp_dockbook_drag_source_to_dockable:  # @gimp_dockbook_drag_source_to_dockable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB27_7
.LBB27_2:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB27_5
# BB#4:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB27_6
.LBB27_5:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB27_6:                               # %if.end
	jmp	.LBB27_7
.LBB27_7:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB27_9
# BB#8:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	jmp	.LBB27_10
.LBB27_9:                               # %if.else.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -16(%rbp)
.LBB27_10:                              # %if.end.14
	cmpq	$0, -16(%rbp)
	je	.LBB27_12
# BB#11:                                # %if.then.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB27_12:                              # %if.end.18
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_dockbook_drag_source_to_dockable, .Lfunc_end27-gimp_dockbook_drag_source_to_dockable
	.cfi_endproc

	.globl	gimp_dockbook_set_drag_handler
	.align	16, 0x90
	.type	gimp_dockbook_set_drag_handler,@function
gimp_dockbook_set_drag_handler:         # @gimp_dockbook_set_drag_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockbook_set_drag_handler, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_13
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rax, 32(%rcx)
.LBB28_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_dockbook_set_drag_handler, .Lfunc_end28-gimp_dockbook_set_drag_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_class_init,@function
gimp_dockbook_class_init:               # @gimp_dockbook_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movabsq	$.L.str.26, %rdi
	movl	$1, %edx
	movl	$896, %ecx              # imm = 0x380
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, dockbook_signals
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movabsq	$.L.str.27, %rdi
	movl	$1, %edx
	movl	$904, %ecx              # imm = 0x388
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, dockbook_signals+4
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movabsq	$.L.str.28, %rdi
	movl	$1, %edx
	movl	$912, %ecx              # imm = 0x390
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-152(%rbp), %r11        # 8-byte Reload
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movabsq	$.L.str.29, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$225, %edx
	movabsq	$gimp_dockbook_dockable_removed, %r9
	movabsq	$gimp_dockbook_dockable_added, %r10
	movabsq	$gimp_dockbook_popup_menu, %r11
	movabsq	$gimp_dockbook_drag_drop, %rbx
	movabsq	$gimp_dockbook_drag_motion, %r14
	movabsq	$gimp_dockbook_drag_leave, %r12
	movabsq	$gimp_dockbook_style_set, %r13
	movabsq	$gimp_dockbook_size_allocate, %r15
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movabsq	$gimp_dockbook_finalize, %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movabsq	$gimp_dockbook_dispose, %rsi
	movl	%eax, dockbook_signals+8
	movq	-56(%rbp), %rax
	movq	%rsi, 40(%rax)
	movq	-56(%rbp), %rax
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 48(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 248(%rax)
	movq	-64(%rbp), %rax
	movq	%r13, 280(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 600(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 608(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 616(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 632(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 896(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 904(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 912(%rax)
	movq	-64(%rbp), %rax
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %r9         # 8-byte Reload
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movl	%ecx, -192(%rbp)        # 4-byte Spill
	movl	-192(%rbp), %r9d        # 4-byte Reload
	movl	$225, (%rsp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_param_spec_int
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movq	-64(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gtk_icon_size_get_type
	movabsq	$.L.str.30, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$4, %r8d
	movl	$225, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movl	$72, %r8d
	movl	%r8d, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_dockbook_class_init, .Lfunc_end29-gimp_dockbook_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_dispose,@function
gimp_dockbook_dispose:                  # @gimp_dockbook_dispose
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_dockbook_remove_tab_timeout
.LBB30_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB30_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_remove
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
	jmp	.LBB30_1
.LBB30_3:                               # %while.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dockbook_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_dockbook_dispose, .Lfunc_end30-gimp_dockbook_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_finalize,@function
gimp_dockbook_finalize:                 # @gimp_dockbook_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	$0, 8(%rax)
.LBB31_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dockbook_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_dockbook_finalize, .Lfunc_end31-gimp_dockbook_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_size_allocate,@function
gimp_dockbook_size_allocate:            # @gimp_dockbook_size_allocate
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_dockbook_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rdi
	callq	gimp_dockbook_update_automatic_tab_style
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_dockbook_size_allocate, .Lfunc_end32-gimp_dockbook_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_style_set,@function
gimp_dockbook_style_set:                # @gimp_dockbook_style_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gimp_dockbook_parent_class, %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, %rdi
	callq	gtk_widget_is_toplevel
	cmpl	$0, %eax
	jne	.LBB33_2
# BB#1:                                 # %if.then
	jmp	.LBB33_3
.LBB33_2:                               # %if.end
	movabsq	$.L.str.29, %rsi
	leaq	-20(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movabsq	$.L.str.29, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %r8d
	movq	%rdx, %rdi
	movl	%r8d, %edx
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_dockbook_recreate_tab_widgets
.LBB33_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_dockbook_style_set, .Lfunc_end33-gimp_dockbook_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_drag_leave,@function
gimp_dockbook_drag_leave:               # @gimp_dockbook_drag_leave
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_highlight_widget
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_dockbook_drag_leave, .Lfunc_end34-gimp_dockbook_drag_leave
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_drag_motion,@function
gimp_dockbook_drag_motion:              # @gimp_dockbook_drag_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	176(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	callq	gimp_paned_box_will_handle_drag
	cmpl	$0, %eax
	je	.LBB35_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %edx
	callq	gdk_drag_status
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_highlight_widget
	movl	$0, -4(%rbp)
	jmp	.LBB35_3
.LBB35_2:                               # %if.end
	movl	$4, %esi
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %edx
	callq	gdk_drag_status
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_highlight_widget
	movl	$1, -4(%rbp)
.LBB35_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_dockbook_drag_motion, .Lfunc_end35-gimp_dockbook_drag_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_drag_drop,@function
gimp_dockbook_drag_drop:                # @gimp_dockbook_drag_drop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	176(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	callq	gimp_paned_box_will_handle_drag
	cmpl	$0, %eax
	je	.LBB36_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB36_3
.LBB36_2:                               # %if.end
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_drag_get_source_widget
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dockbook_drop_dockable
	movl	$1, %edx
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %ecx
	callq	gtk_drag_finish
	movl	$1, -4(%rbp)
.LBB36_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_dockbook_drag_drop, .Lfunc_end36-gimp_dockbook_drag_drop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_popup_menu,@function
gimp_dockbook_popup_menu:               # @gimp_dockbook_popup_menu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dockbook_show_menu
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_dockbook_popup_menu, .Lfunc_end37-gimp_dockbook_popup_menu
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_dockable_added,@function
gimp_dockbook_dockable_added:           # @gimp_dockbook_dockable_added
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_page_num
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_notebook_set_current_page
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_dockbook_dockable_added, .Lfunc_end38-gimp_dockbook_dockable_added
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_dockable_removed,@function
gimp_dockbook_dockable_removed:         # @gimp_dockbook_dockable_removed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_dockbook_dockable_removed, .Lfunc_end39-gimp_dockbook_dockable_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_recreate_tab_widgets,@function
gimp_dockbook_recreate_tab_widgets:     # @gimp_dockbook_recreate_tab_widgets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB40_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB40_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB40_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	gimp_dockable_get_tab_style
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$9, %eax
	jne	.LBB40_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_6
.LBB40_5:                               # %if.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_dockbook_create_tab_widget
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_set_tab_label
.LBB40_6:                               # %for.inc
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB40_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB40_9
.LBB40_8:                               # %cond.false
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB40_9
.LBB40_9:                               # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB40_1
.LBB40_10:                              # %for.end
	movq	-24(%rbp), %rdi
	callq	g_list_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_dockbook_recreate_tab_widgets, .Lfunc_end40-gimp_dockbook_recreate_tab_widgets
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_show_menu,@function
gimp_dockbook_show_menu:                # @gimp_dockbook_show_menu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$-1, -76(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_dockbook_get_ui_manager
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB41_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB41_29
.LBB41_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB41_4
# BB#3:                                 # %lor.lhs.false
	cmpq	$0, -64(%rbp)
	jne	.LBB41_5
.LBB41_4:                               # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB41_29
.LBB41_5:                               # %if.end.10
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_current_page
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_get_nth_page
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB41_7
# BB#6:                                 # %if.then.20
	movl	$0, -4(%rbp)
	jmp	.LBB41_29
.LBB41_7:                               # %if.end.21
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rdi
	callq	gimp_dockable_get_menu
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB41_27
# BB#8:                                 # %land.lhs.true
	cmpq	$0, -40(%rbp)
	je	.LBB41_27
# BB#9:                                 # %if.then.25
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB41_11
# BB#10:                                # %if.then.30
	movabsq	$.L.str.32, %rdi
	movabsq	$.L__func__.gimp_dockbook_show_menu, %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB41_29
.LBB41_11:                              # %if.end.31
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB41_13
# BB#12:                                # %if.then.36
	movabsq	$.L.str.33, %rdi
	movabsq	$.L__func__.gimp_dockbook_show_menu, %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB41_29
.LBB41_13:                              # %if.end.38
	movabsq	$.L.str.34, %rsi
	leaq	-104(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-64(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_stock_id
	movabsq	$.L.str.34, %rsi
	movabsq	$.L.str.35, %rcx
	movabsq	$.L.str.36, %r9
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %r11        # 8-byte Reload
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movl	%r8d, -220(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movl	$1, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_set
	movq	-104(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	gimp_dockable_get_stock_id
	cmpq	$0, %rax
	je	.LBB41_17
# BB#14:                                # %if.then.42
	callq	gtk_icon_theme_get_default
	movq	-72(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_stock_id
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_icon_theme_has_icon
	cmpl	$0, %eax
	je	.LBB41_16
# BB#15:                                # %if.then.47
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_dockable_get_stock_id
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_action_set_icon_name
.LBB41_16:                              # %if.end.49
	jmp	.LBB41_17
.LBB41_17:                              # %if.end.50
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gtk_menu_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB41_19
# BB#18:                                # %if.then.53
	movl	$0, -124(%rbp)
	jmp	.LBB41_24
.LBB41_19:                              # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_22
# BB#20:                                # %land.lhs.true.55
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB41_22
# BB#21:                                # %if.then.57
	movl	$1, -124(%rbp)
	jmp	.LBB41_23
.LBB41_22:                              # %if.else.58
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB41_23:                              # %if.end.60
	jmp	.LBB41_24
.LBB41_24:                              # %if.end.61
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	jne	.LBB41_26
# BB#25:                                # %if.then.63
	movabsq	$.L.str.37, %rdi
	movabsq	$.L__func__.gimp_dockbook_show_menu, %rsi
	movq	-88(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB41_29
.LBB41_26:                              # %if.end.64
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	gimp_dockable_get_icon
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_image_menu_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_image_menu_item_set_image
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_item_set_submenu
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_ui_manager_update
	jmp	.LBB41_28
.LBB41_27:                              # %if.else.71
	movabsq	$.L.str.36, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB41_28:                              # %if.end.72
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_object_ref
	movabsq	$.L.str.38, %rsi
	movabsq	$g_object_unref, %rcx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_dockbook_menu_position, %rcx
	movabsq	$gimp_dockbook_menu_end, %rdx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %r8
	movq	-280(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%r8, -312(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-304(%rbp), %r9         # 8-byte Reload
	movq	-312(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_ui_manager_ui_popup
	movl	$1, -4(%rbp)
.LBB41_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_dockbook_show_menu, .Lfunc_end41-gimp_dockbook_show_menu
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
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
	je	.LBB42_2
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
.LBB42_2:                               # %entry
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
.Lfunc_end42:
	.size	g_warning, .Lfunc_end42-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_menu_position,@function
gimp_dockbook_menu_position:            # @gimp_dockbook_menu_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	64(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	callq	gimp_button_menu_position
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_dockbook_menu_position, .Lfunc_end43-gimp_dockbook_menu_position
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_menu_end,@function
gimp_dockbook_menu_end:                 # @gimp_dockbook_menu_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dockable_get_menu
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB44_5
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB44_5
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB44_4
# BB#3:                                 # %if.then.6
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_menu_detach
.LBB44_4:                               # %if.end
	jmp	.LBB44_5
.LBB44_5:                               # %if.end.9
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_dockbook_menu_end, .Lfunc_end44-gimp_dockbook_menu_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_menu_button_press,@function
gimp_dockbook_menu_button_press:        # @gimp_dockbook_menu_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$1, 52(%rdx)
	jne	.LBB45_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB45_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_dockbook_show_menu
	movl	%eax, -28(%rbp)
.LBB45_3:                               # %if.end
	movl	-28(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_dockbook_menu_button_press, .Lfunc_end45-gimp_dockbook_menu_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_get_dockable_tab_width,@function
gimp_dockbook_get_dockable_tab_width:   # @gimp_dockbook_get_dockable_tab_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	176(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_dock_get_context
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%edx, -60(%rbp)         # 4-byte Spill
	callq	gimp_dockbook_get_tab_icon_size
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	-60(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_dockable_create_event_box_tab_widget
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_dock_temp_add
	leaq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_widget_size_request
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_dock_temp_remove
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_dockbook_get_dockable_tab_width, .Lfunc_end46-gimp_dockbook_get_dockable_tab_width
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_tab_style_to_prefered,@function
gimp_dockbook_tab_style_to_prefered:    # @gimp_dockbook_tab_style_to_prefered
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_docked_get_prefer_icon
	cmpl	$0, %eax
	je	.LBB47_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %edi
	callq	gimp_preview_tab_style_to_icon
	movl	%eax, -4(%rbp)
.LBB47_2:                               # %if.end
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_dockbook_tab_style_to_prefered, .Lfunc_end47-gimp_dockbook_tab_style_to_prefered
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_get_tab_style_name,@function
gimp_dockbook_get_tab_style_name:       # @gimp_dockbook_get_tab_style_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	gimp_tab_style_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	callq	g_enum_get_value
	movq	8(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_dockbook_get_tab_style_name, .Lfunc_end48-gimp_dockbook_get_tab_style_name
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_add_tab_timeout,@function
gimp_dockbook_add_tab_timeout:          # @gimp_dockbook_add_tab_timeout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$500, %eax              # imm = 0x1F4
	movabsq	$gimp_dockbook_tab_timeout, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	g_timeout_add
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	176(%rdx), %rdx
	movq	%rcx, 24(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_dockbook_add_tab_timeout, .Lfunc_end49-gimp_dockbook_add_tab_timeout
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockbook_tab_timeout,@function
gimp_dockbook_tab_timeout:              # @gimp_dockbook_tab_timeout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, gdk_threads_lock
	je	.LBB50_3
# BB#2:                                 # %if.then
	callq	*gdk_threads_lock
.LBB50_3:                               # %if.end
	jmp	.LBB50_4
.LBB50_4:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	176(%rsi), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_page_num
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	$0, 24(%rax)
# BB#5:                                 # %do.body.10
	cmpq	$0, gdk_threads_unlock
	je	.LBB50_7
# BB#6:                                 # %if.then.12
	callq	*gdk_threads_unlock
.LBB50_7:                               # %if.end.13
	jmp	.LBB50_8
.LBB50_8:                               # %do.end.14
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_dockbook_tab_timeout, .Lfunc_end50-gimp_dockbook_tab_timeout
	.cfi_endproc

	.type	gimp_dockbook_get_type.g_define_type_id__volatile,@object # @gimp_dockbook_get_type.g_define_type_id__volatile
	.local	gimp_dockbook_get_type.g_define_type_id__volatile
	.comm	gimp_dockbook_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDockbook"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_dockbook_new,@object # @__func__.gimp_dockbook_new
.L__func__.gimp_dockbook_new:
	.asciz	"gimp_dockbook_new"
	.size	.L__func__.gimp_dockbook_new, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"<Dockable>"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-dock"
	.size	.L.str.4, 10

	.type	.L__func__.gimp_dockbook_get_dock,@object # @__func__.gimp_dockbook_get_dock
.L__func__.gimp_dockbook_get_dock:
	.asciz	"gimp_dockbook_get_dock"
	.size	.L__func__.gimp_dockbook_get_dock, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_DOCKBOOK (dockbook)"
	.size	.L.str.5, 28

	.type	.L__func__.gimp_dockbook_set_dock,@object # @__func__.gimp_dockbook_set_dock
.L__func__.gimp_dockbook_set_dock:
	.asciz	"gimp_dockbook_set_dock"
	.size	.L__func__.gimp_dockbook_set_dock, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dock == NULL || GIMP_IS_DOCK (dock)"
	.size	.L.str.6, 36

	.type	.L__func__.gimp_dockbook_get_ui_manager,@object # @__func__.gimp_dockbook_get_ui_manager
.L__func__.gimp_dockbook_get_ui_manager:
	.asciz	"gimp_dockbook_get_ui_manager"
	.size	.L__func__.gimp_dockbook_get_ui_manager, 29

	.type	.L__func__.gimp_dockbook_add,@object # @__func__.gimp_dockbook_add
.L__func__.gimp_dockbook_add:
	.asciz	"gimp_dockbook_add"
	.size	.L__func__.gimp_dockbook_add, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dockbook->p->dock != NULL"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_DOCKABLE (dockable)"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp_dockable_get_dockbook (dockable) == NULL"
	.size	.L.str.9, 46

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Adding GimpDockable %p to GimpDockbook %p"
	.size	.L.str.10, 42

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GTK_IS_WIDGET (tab_widget)"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GTK_IS_WIDGET (menu_widget)"
	.size	.L.str.12, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"notify::locked"
	.size	.L.str.13, 15

	.type	dockbook_signals,@object # @dockbook_signals
	.local	dockbook_signals
	.comm	dockbook_signals,12,4
	.type	.L__func__.gimp_dockbook_add_from_dialog_factory,@object # @__func__.gimp_dockbook_add_from_dialog_factory
.L__func__.gimp_dockbook_add_from_dialog_factory:
	.asciz	"gimp_dockbook_add_from_dialog_factory"
	.size	.L__func__.gimp_dockbook_add_from_dialog_factory, 38

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"identifiers != NULL"
	.size	.L.str.14, 20

	.type	.L__func__.gimp_dockbook_remove,@object # @__func__.gimp_dockbook_remove
.L__func__.gimp_dockbook_remove:
	.asciz	"gimp_dockbook_remove"
	.size	.L__func__.gimp_dockbook_remove, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp_dockable_get_dockbook (dockable) == dockbook"
	.size	.L.str.15, 50

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Removing GimpDockable %p from GimpDockbook %p"
	.size	.L.str.16, 46

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-dialog-identifier"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"dialogs"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-dockable"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"drag-begin"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"drag-end"
	.size	.L.str.21, 9

	.type	dialog_target_table,@object # @dialog_target_table
	.section	.rodata,"a",@progbits
	.align	16
dialog_target_table:
	.quad	.L.str.44
	.long	1                       # 0x1
	.long	24                      # 0x18
	.size	dialog_target_table, 16

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"drag-leave"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"drag-motion"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"drag-drop"
	.size	.L.str.24, 10

	.type	.L__func__.gimp_dockbook_update_auto_tab_style,@object # @__func__.gimp_dockbook_update_auto_tab_style
.L__func__.gimp_dockbook_update_auto_tab_style:
	.asciz	"gimp_dockbook_update_auto_tab_style"
	.size	.L__func__.gimp_dockbook_update_auto_tab_style, 36

	.type	.L__func__.gimp_dockbook_drop_dockable,@object # @__func__.gimp_dockbook_drop_dockable
.L__func__.gimp_dockbook_drop_dockable:
	.asciz	"gimp_dockbook_drop_dockable"
	.size	.L__func__.gimp_dockbook_drop_dockable, 28

	.type	.L__func__.gimp_dockbook_set_drag_handler,@object # @__func__.gimp_dockbook_set_drag_handler
.L__func__.gimp_dockbook_set_drag_handler:
	.asciz	"gimp_dockbook_set_drag_handler"
	.size	.L__func__.gimp_dockbook_set_drag_handler, 31

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-dock-drag-widget"
	.size	.L.str.25, 22

	.type	gimp_dockbook_parent_class,@object # @gimp_dockbook_parent_class
	.local	gimp_dockbook_parent_class
	.comm	gimp_dockbook_parent_class,8,8
	.type	GimpDockbook_private_offset,@object # @GimpDockbook_private_offset
	.local	GimpDockbook_private_offset
	.comm	GimpDockbook_private_offset,4,4
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"dockable-added"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"dockable-removed"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"dockable-reordered"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"tab-border"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"tab-icon-size"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"/dockable-popup/dockable-menu"
	.size	.L.str.31, 30

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s: UI manager '%s' has now widget at path '%s'"
	.size	.L.str.32, 48

	.type	.L__func__.gimp_dockbook_show_menu,@object # @__func__.gimp_dockbook_show_menu
.L__func__.gimp_dockbook_show_menu:
	.asciz	"gimp_dockbook_show_menu"
	.size	.L__func__.gimp_dockbook_show_menu, 24

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s: UI manager '%s' has no action at path '%s'"
	.size	.L.str.33, 47

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"label"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"stock-id"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"visible"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%s: child_menu_widget (%p) is not a GtkMenu"
	.size	.L.str.37, 44

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-dockable-detach-ref"
	.size	.L.str.38, 25

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/dockable-popup"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-menu-left"
	.size	.L.str.40, 15

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Configure this tab"
	.size	.L.str.41, 19

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-dock-tab-menu"
	.size	.L.str.42, 19

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"button-press-event"
	.size	.L.str.43, 19

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"application/x-gimp-dialog"
	.size	.L.str.44, 26

	.type	gimp_tab_style_candidates,@object # @gimp_tab_style_candidates
	.section	.rodata,"a",@progbits
	.align	4
gimp_tab_style_candidates:
	.long	7                       # 0x7
	.long	6                       # 0x6
	.long	1                       # 0x1
	.size	gimp_tab_style_candidates, 12

	.type	.L__func__.gimp_dockbook_refresh_tab_layout_lut,@object # @__func__.gimp_dockbook_refresh_tab_layout_lut
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_dockbook_refresh_tab_layout_lut:
	.asciz	"gimp_dockbook_refresh_tab_layout_lut"
	.size	.L__func__.gimp_dockbook_refresh_tab_layout_lut, 37

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Total tab space taken for auto tab style %s = %d"
	.size	.L.str.45, 49

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"tab-hborder"
	.size	.L.str.46, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"tab-curvature"
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"focus-line-width"
	.size	.L.str.48, 17

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"tab-overlap"
	.size	.L.str.49, 12

	.type	.L__func__.gimp_dockbook_update_automatic_tab_style,@object # @__func__.gimp_dockbook_update_automatic_tab_style
.L__func__.gimp_dockbook_update_automatic_tab_style:
	.asciz	"gimp_dockbook_update_automatic_tab_style"
	.size	.L__func__.gimp_dockbook_update_automatic_tab_style, 41

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"\n  available_space             = %d where\n    dockbook_allocation.width = %d\n    border_loss               = %d\n    action_widget_size        = %d\n    tab_padding               = %d\n    tab_overlap               = %d\n"
	.size	.L.str.50, 218

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Choosing tab style %s"
	.size	.L.str.51, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
