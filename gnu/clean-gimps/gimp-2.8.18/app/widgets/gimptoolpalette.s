	.text
	.file	"gimptoolpalette.bc"
	.globl	gimp_tool_palette_get_type
	.align	16, 0x90
	.type	gimp_tool_palette_get_type,@function
gimp_tool_palette_get_type:             # @gimp_tool_palette_get_type
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
	movq	gimp_tool_palette_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tool_palette_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_tool_palette_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$880, %edx              # imm = 0x370
	movabsq	$gimp_tool_palette_class_intern_init, %rdi
	movl	$120, %r8d
	movabsq	$gimp_tool_palette_init, %rcx
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
	movabsq	$gimp_tool_palette_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tool_palette_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_palette_get_type, .Lfunc_end0-gimp_tool_palette_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_palette_class_intern_init,@function
gimp_tool_palette_class_intern_init:    # @gimp_tool_palette_class_intern_init
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
	movq	%rax, gimp_tool_palette_parent_class
	cmpl	$0, GimpToolPalette_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpToolPalette_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tool_palette_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tool_palette_class_intern_init, .Lfunc_end1-gimp_tool_palette_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_palette_init,@function
gimp_tool_palette_init:                 # @gimp_tool_palette_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_tool_palette_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tool_palette_set_style
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tool_palette_init, .Lfunc_end2-gimp_tool_palette_init
	.cfi_endproc

	.globl	gimp_tool_palette_new
	.align	16, 0x90
	.type	gimp_tool_palette_new,@function
gimp_tool_palette_new:                  # @gimp_tool_palette_new
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
	callq	gimp_tool_palette_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tool_palette_new, .Lfunc_end3-gimp_tool_palette_new
	.cfi_endproc

	.globl	gimp_tool_palette_set_toolbox
	.align	16, 0x90
	.type	gimp_tool_palette_set_toolbox,@function
gimp_tool_palette_set_toolbox:          # @gimp_tool_palette_set_toolbox
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tool_palette_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_palette_set_toolbox, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_palette_set_toolbox, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_palette_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rdi
	callq	gimp_toolbox_get_context
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_tool_palette_initialize_tools, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_tool_palette_tool_reorder, %rcx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	528(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_tool_palette_tool_changed, %rcx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB4_25:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tool_palette_set_toolbox, .Lfunc_end4-gimp_tool_palette_set_toolbox
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_palette_initialize_tools,@function
gimp_tool_palette_initialize_tools:     # @gimp_tool_palette_initialize_tools
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_palette_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movabsq	$.L.str.14, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_tool_item_group_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_tool_item_group_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_tool_item_group_set_label_widget
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_toolbox_get_context
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -32(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_radio_tool_button_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_radio_tool_button_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_tool_button_get_group
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_tool_item_group_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tool_item_group_insert
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	112(%rax), %esi
	callq	gtk_tool_item_set_visible_horizontal
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	112(%rax), %esi
	callq	gtk_tool_item_set_visible_vertical
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_tool_palette_tool_visible_notify, %rax
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_toggle_tool_button_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_tool_button_set_active
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_tool_palette_tool_button_toggled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_tool_palette_tool_button_press, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_get_ui_manager
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB5_9
# BB#5:                                 # %if.then.38
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$5, %rax
	movq	-104(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	strlen
	subq	$10, %rax
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strndup
	movabsq	$.L.str.18, %rdi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.19, %rsi
	movq	-88(%rbp), %rdi
	movq	-120(%rbp), %rdx
	callq	gimp_ui_manager_find_action
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rdi
	callq	g_free
	cmpq	$0, -96(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then.46
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_widget_set_accel_help
	jmp	.LBB5_8
.LBB5_7:                                # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	-64(%rbp), %rdi
	movq	104(%rdi), %rdx
	movq	%rax, %rdi
	callq	gimp_help_set_help_data
.LBB5_8:                                # %if.end.51
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.52
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_10
.LBB5_10:                               # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB5_13
.LBB5_13:                               # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB5_1
.LBB5_14:                               # %for.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tool_palette_initialize_tools, %rdx
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-280(%rbp), %r10        # 8-byte Reload
	movq	%r9, -288(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-288(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -292(%rbp)        # 4-byte Spill
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tool_palette_initialize_tools, .Lfunc_end5-gimp_tool_palette_initialize_tools
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_palette_tool_reorder,@function
gimp_tool_palette_tool_reorder:         # @gimp_tool_palette_tool_reorder
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_tool_item_group_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gtk_tool_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tool_item_group_set_item_position
.LBB6_2:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tool_palette_tool_reorder, .Lfunc_end6-gimp_tool_palette_tool_reorder
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_palette_tool_changed,@function
gimp_tool_palette_tool_changed:         # @gimp_tool_palette_tool_changed
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB7_5
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB7_4
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_tool_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_tool_button_get_active
	cmpl	$0, %eax
	jne	.LBB7_4
# BB#3:                                 # %if.then.7
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tool_palette_tool_button_toggled, %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_tool_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_tool_button_set_active
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_tool_palette_tool_button_toggled, %rax
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %if.end.12
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tool_palette_tool_changed, .Lfunc_end7-gimp_tool_palette_tool_changed
	.cfi_endproc

	.globl	gimp_tool_palette_get_button_size
	.align	16, 0x90
	.type	gimp_tool_palette_get_button_size,@function
gimp_tool_palette_get_button_size:      # @gimp_tool_palette_get_button_size
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
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_tool_palette_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_palette_get_button_size, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_25
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_palette_get_button_size, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_25
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	jmp	.LBB8_18
.LBB8_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB8_20
# BB#19:                                # %if.then.19
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_palette_get_button_size, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_25
.LBB8_21:                               # %if.end.21
	jmp	.LBB8_22
.LBB8_22:                               # %do.end.22
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_palette_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_toolbox_get_context
	movabsq	$.L.str.9, %rsi
	movq	32(%rax), %rdi
	callq	gimp_get_tool_info
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_24
# BB#23:                                # %if.then.30
	leaq	-88(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_widget_size_request
	movl	-88(%rbp), %eax
	movq	-24(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-84(%rbp), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	$1, -4(%rbp)
	jmp	.LBB8_25
.LBB8_24:                               # %if.end.34
	movl	$0, -4(%rbp)
.LBB8_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tool_palette_get_button_size, .Lfunc_end8-gimp_tool_palette_get_button_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_palette_class_init,@function
gimp_tool_palette_class_init:           # @gimp_tool_palette_class_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_tool_palette_style_set, %rsi
	movabsq	$gimp_tool_palette_size_allocate, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 248(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 280(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_icon_size_get_type
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$4, %r8d
	movl	$225, %r9d
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_relief_style_get_type
	movabsq	$.L.str.12, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$2, %r8d
	movl	$225, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movl	$16, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tool_palette_class_init, .Lfunc_end9-gimp_tool_palette_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_palette_size_allocate,@function
gimp_tool_palette_size_allocate:        # @gimp_tool_palette_size_allocate
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_palette_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	gimp_tool_palette_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_palette_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_tool_palette_get_button_size
	cmpl	$0, %eax
	je	.LBB10_16
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_toolbox_get_context
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB10_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB10_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$0, 112(%rax)
	je	.LBB10_5
# BB#4:                                 # %if.then.12
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB10_5:                               # %if.end
                                        #   in Loop: Header=BB10_2 Depth=1
	jmp	.LBB10_6
.LBB10_6:                               # %for.inc
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB10_2
.LBB10_7:                               # %for.end
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	-28(%rbp)
	movl	-100(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jle	.LBB10_9
# BB#8:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB10_10:                              # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	-60(%rbp)
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	-60(%rbp)
	cmpl	$0, %edx
	je	.LBB10_12
# BB#11:                                # %if.then.17
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB10_12:                              # %if.end.19
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-56(%rbp), %ecx
	jne	.LBB10_14
# BB#13:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	je	.LBB10_15
.LBB10_14:                              # %if.then.24
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-8(%rbp), %rdi
	movl	-56(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	%eax, %edx
	callq	gtk_widget_set_size_request
.LBB10_15:                              # %if.end.27
	jmp	.LBB10_16
.LBB10_16:                              # %if.end.28
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tool_palette_size_allocate, .Lfunc_end10-gimp_tool_palette_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_palette_style_set,@function
gimp_tool_palette_style_set:            # @gimp_tool_palette_style_set
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_palette_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	gimp_tool_palette_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_toolbox_get_context
	cmpq	$0, %rax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_12
.LBB11_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_toolbox_get_context
	movabsq	$.L.str.11, %rsi
	leaq	-36(%rbp), %rdx
	movabsq	$.L.str.12, %rcx
	leaq	-40(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-8(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gtk_tool_palette_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_tool_palette_set_icon_size
	movq	-32(%rbp), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -48(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB11_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB11_6
# BB#5:                                 # %if.then.15
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-40(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
.LBB11_6:                               # %if.end.21
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB11_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_10
.LBB11_9:                               # %cond.false
                                        #   in Loop: Header=BB11_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_10
.LBB11_10:                              # %cond.end
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB11_3
.LBB11_11:                              # %for.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_invalidate_geometry
.LBB11_12:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tool_palette_style_set, .Lfunc_end11-gimp_tool_palette_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_palette_tool_button_toggled,@function
gimp_tool_palette_tool_button_toggled:  # @gimp_tool_palette_tool_button_toggled
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_palette_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_tool_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_tool_button_get_active
	cmpl	$0, %eax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_toolbox_get_context
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_tool
.LBB12_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tool_palette_tool_button_toggled, .Lfunc_end12-gimp_tool_palette_tool_button_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_palette_tool_visible_notify,@function
gimp_tool_palette_tool_visible_notify:  # @gimp_tool_palette_tool_visible_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	112(%rdx), %esi
	callq	gtk_tool_item_set_visible_horizontal
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	112(%rdx), %esi
	callq	gtk_tool_item_set_visible_vertical
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tool_palette_tool_visible_notify, .Lfunc_end13-gimp_tool_palette_tool_visible_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_palette_tool_button_press,@function
gimp_tool_palette_tool_button_press:    # @gimp_tool_palette_tool_button_press
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_palette_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$5, (%rax)
	jne	.LBB14_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_toolbox_get_context
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	-48(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_dialog_factory
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movabsq	$.L.str.20, %r8
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB14_3:                               # %if.end
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_tool_palette_tool_button_press, .Lfunc_end14-gimp_tool_palette_tool_button_press
	.cfi_endproc

	.type	gimp_tool_palette_get_type.g_define_type_id__volatile,@object # @gimp_tool_palette_get_type.g_define_type_id__volatile
	.local	gimp_tool_palette_get_type.g_define_type_id__volatile
	.comm	gimp_tool_palette_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpToolPalette"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_tool_palette_set_toolbox,@object # @__func__.gimp_tool_palette_set_toolbox
.L__func__.gimp_tool_palette_set_toolbox:
	.asciz	"gimp_tool_palette_set_toolbox"
	.size	.L__func__.gimp_tool_palette_set_toolbox, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TOOL_PALETTE (palette)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_TOOLBOX (toolbox)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"parent-set"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"reorder"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tool-changed"
	.size	.L.str.6, 13

	.type	.L__func__.gimp_tool_palette_get_button_size,@object # @__func__.gimp_tool_palette_get_button_size
.L__func__.gimp_tool_palette_get_button_size:
	.asciz	"gimp_tool_palette_get_button_size"
	.size	.L__func__.gimp_tool_palette_get_button_size, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"width != NULL"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"height != NULL"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-rect-select-tool"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-tool-palette-item"
	.size	.L.str.10, 23

	.type	gimp_tool_palette_parent_class,@object # @gimp_tool_palette_parent_class
	.local	gimp_tool_palette_parent_class
	.comm	gimp_tool_palette_parent_class,8,8
	.type	GimpToolPalette_private_offset,@object # @GimpToolPalette_private_offset
	.local	GimpToolPalette_private_offset
	.comm	GimpToolPalette_private_offset,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"tool-icon-size"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"button-relief"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-tool-info"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Tools"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"notify::visible"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"toggled"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"button-press-event"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"tools-%s"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"tools"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-tool-options"
	.size	.L.str.20, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
