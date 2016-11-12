	.text
	.file	"imap_menu.bc"
	.globl	menu_get_widget
	.align	16, 0x90
	.type	menu_get_widget,@function
menu_get_widget:                        # @menu_get_widget
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
	movq	%rdi, -8(%rbp)
	movq	ui_manager, %rdi
	movq	-8(%rbp), %rsi
	callq	gtk_ui_manager_get_widget
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	menu_get_widget, .Lfunc_end0-menu_get_widget
	.cfi_endproc

	.globl	menu_set_zoom_sensitivity
	.align	16, 0x90
	.type	menu_set_zoom_sensitivity,@function
menu_set_zoom_sensitivity:              # @menu_set_zoom_sensitivity
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
	movabsq	$.L.str, %rax
	movl	%edi, -4(%rbp)
	cmpl	$8, -4(%rbp)
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	set_sensitive
	movabsq	$.L.str.1, %rdi
	cmpl	$1, -4(%rbp)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	set_sensitive
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	menu_set_zoom_sensitivity, .Lfunc_end1-menu_set_zoom_sensitivity
	.cfi_endproc

	.align	16, 0x90
	.type	set_sensitive,@function
set_sensitive:                          # @set_sensitive
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
	movq	ui_manager, %rdi
	movq	-8(%rbp), %rsi
	callq	gtk_ui_manager_get_action
	movabsq	$.L.str.16, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	set_sensitive, .Lfunc_end2-set_sensitive
	.cfi_endproc

	.globl	menu_set_zoom
	.align	16, 0x90
	.type	menu_set_zoom,@function
menu_set_zoom:                          # @menu_set_zoom
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	menu_set_zoom_sensitivity
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	menu_set_zoom, .Lfunc_end3-menu_set_zoom
	.cfi_endproc

	.globl	menu_shapes_selected
	.align	16, 0x90
	.type	menu_shapes_selected,@function
menu_shapes_selected:                   # @menu_shapes_selected
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
	movabsq	$.L.str.2, %rax
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %esi
	movq	%rax, %rdi
	callq	set_sensitive
	movabsq	$.L.str.3, %rdi
	movl	-8(%rbp), %esi
	callq	set_sensitive
	movabsq	$.L.str.4, %rdi
	movl	-8(%rbp), %esi
	callq	set_sensitive
	movabsq	$.L.str.5, %rdi
	movl	-8(%rbp), %esi
	callq	set_sensitive
	movabsq	$.L.str.6, %rdi
	movl	-8(%rbp), %esi
	callq	set_sensitive
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	menu_shapes_selected, .Lfunc_end4-menu_shapes_selected
	.cfi_endproc

	.globl	make_menu
	.align	16, 0x90
	.type	make_menu,@function
make_menu:                              # @make_menu
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
	subq	$96, %rsp
	movabsq	$.L.str.7, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	gtk_action_group_new
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_action_group_set_translation_domain
	movabsq	$entries, %rsi
	movl	$39, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_action_group_add_actions
	movabsq	$toggle_entries, %rsi
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_action_group_add_toggle_actions
	movabsq	$color_entries, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	movabsq	$set_preview_color, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-32(%rbp), %rdi
	movq	%rax, %r8
	callq	gtk_action_group_add_radio_actions
	movabsq	$zoom_entries, %rsi
	movl	$8, %edx
	xorl	%ecx, %ecx
	movabsq	$set_zoom_factor, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	movq	-32(%rbp), %rdi
	movq	%rax, %r8
	callq	gtk_action_group_add_radio_actions
	movabsq	$mapping_entries, %rsi
	movl	$4, %edx
	xorl	%ecx, %ecx
	movabsq	$set_func, %rax
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	gtk_action_group_add_radio_actions
	callq	gtk_ui_manager_new
	xorl	%edx, %edx
	movq	%rax, ui_manager
	movq	ui_manager, %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_ui_manager_insert_action_group
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_accel_group
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_add_accel_group
	movabsq	$ui_description, %rsi
	movq	$-1, %rdx
	leaq	-48(%rbp), %rcx
	movq	$0, -48(%rbp)
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_add_ui_from_string
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.8, %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_warning
	movq	-48(%rbp), %rdi
	callq	g_error_free
.LBB5_2:                                # %if.end
	movabsq	$.L.str.9, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$paste_buffer_added, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	paste_buffer_add_add_cb
	movabsq	$paste_buffer_removed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	paste_buffer_add_remove_cb
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	set_sensitive
	xorl	%edi, %edi
	callq	menu_shapes_selected
	movl	$1, %edi
	callq	menu_set_zoom_sensitivity
	movabsq	$command_list_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	command_list_add_update_cb
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	command_list_changed
	movabsq	$_menu, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	make_menu, .Lfunc_end5-make_menu
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB6_2
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
.LBB6_2:                                # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end6:
	.size	g_warning, .Lfunc_end6-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	paste_buffer_added,@function
paste_buffer_added:                     # @paste_buffer_added
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
	movabsq	$.L.str.10, %rax
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	set_sensitive
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	paste_buffer_added, .Lfunc_end7-paste_buffer_added
	.cfi_endproc

	.align	16, 0x90
	.type	paste_buffer_removed,@function
paste_buffer_removed:                   # @paste_buffer_removed
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
	subq	$16, %rsp
	movabsq	$.L.str.10, %rax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	set_sensitive
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	paste_buffer_removed, .Lfunc_end8-paste_buffer_removed
	.cfi_endproc

	.align	16, 0x90
	.type	command_list_changed,@function
command_list_changed:                   # @command_list_changed
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
	movabsq	$.L.str.151, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	ui_manager, %rdi
	movq	%rax, %rsi
	callq	gtk_ui_manager_get_action
	movabsq	$.L.str.152, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	cmpq	$0, -8(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	je	.LBB9_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_3
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB9_4
.LBB9_3:                                # %cond.false
	movabsq	$.L.str.62, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB9_4
.LBB9_4:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.153, %rsi
	movabsq	$.L.str.16, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	cmpq	$0, -8(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-32(%rbp), %rdi
	callq	g_free
	callq	command_list_get_redo_command
	movabsq	$.L.str.154, %rsi
	movq	%rax, -8(%rbp)
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movabsq	$.L.str.155, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	cmpq	$0, -8(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB9_7
# BB#5:                                 # %land.lhs.true.9
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_7
# BB#6:                                 # %cond.true.12
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB9_8
.LBB9_7:                                # %cond.false.14
	movabsq	$.L.str.62, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB9_8
.LBB9_8:                                # %cond.end.15
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.153, %rsi
	movabsq	$.L.str.16, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	cmpq	$0, -8(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-32(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	command_list_changed, .Lfunc_end9-command_list_changed
	.cfi_endproc

	.globl	menu_build_mru_items
	.align	16, 0x90
	.type	menu_build_mru_items,@function
menu_build_mru_items:                   # @menu_build_mru_items
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
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	menu_build_mru_items, .Lfunc_end10-menu_build_mru_items
	.cfi_endproc

	.globl	do_main_popup_menu
	.align	16, 0x90
	.type	do_main_popup_menu,@function
do_main_popup_menu:                     # @do_main_popup_menu
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
	subq	$48, %rsp
	movabsq	$.L.str.11, %rsi
	movq	%rdi, -8(%rbp)
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movl	52(%rdi), %r9d
	movq	-8(%rbp), %rdi
	movl	20(%rdi), %ecx
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r8
	movl	-36(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gtk_menu_popup
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	do_main_popup_menu, .Lfunc_end11-do_main_popup_menu
	.cfi_endproc

	.globl	menu_check_grid
	.align	16, 0x90
	.type	menu_check_grid,@function
menu_check_grid:                        # @menu_check_grid
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
	subq	$32, %rsp
	movabsq	$.L.str.12, %rsi
	movl	%edi, -4(%rbp)
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_action_set_active
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	menu_check_grid, .Lfunc_end12-menu_check_grid
	.cfi_endproc

	.globl	make_toolbar
	.align	16, 0x90
	.type	make_toolbar,@function
make_toolbar:                           # @make_toolbar
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
	callq	gtk_handle_box_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	-44(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.13, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toolbar_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toolbar_set_style
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	make_toolbar, .Lfunc_end13-make_toolbar
	.cfi_endproc

	.globl	make_tools
	.align	16, 0x90
	.type	make_tools,@function
make_tools:                             # @make_tools
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_handle_box_new
	movabsq	$.L.str.14, %rsi
	movq	%rax, -16(%rbp)
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_toolbar_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toolbar_set_style
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	make_tools, .Lfunc_end14-make_tools
	.cfi_endproc

	.globl	make_selection_toolbar
	.align	16, 0x90
	.type	make_selection_toolbar,@function
make_selection_toolbar:                 # @make_selection_toolbar
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
	movabsq	$.L.str.15, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_toolbar_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toolbar_set_style
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	make_selection_toolbar, .Lfunc_end15-make_selection_toolbar
	.cfi_endproc

	.type	ui_manager,@object      # @ui_manager
	.local	ui_manager
	.comm	ui_manager,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/MainMenu/ViewMenu/ZoomIn"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/MainMenu/ViewMenu/ZoomOut"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/MainMenu/EditMenu/Cut"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/MainMenu/EditMenu/Copy"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/MainMenu/EditMenu/Clear"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/MainMenu/EditMenu/EditAreaInfo"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/MainMenu/EditMenu/DeselectAll"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"MenuActions"
	.size	.L.str.7, 12

	.type	entries,@object         # @entries
	.section	.rodata,"a",@progbits
	.align	16
entries:
	.quad	.L.str.17
	.quad	0
	.quad	.L.str.18
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	0
	.quad	.L.str.19
	.quad	do_file_open_dialog
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	0
	.quad	.L.str.22
	.quad	save
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	0
	.quad	do_file_save_as_dialog
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	0
	.quad	0
	.quad	0
	.quad	do_close
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	0
	.quad	0
	.quad	0
	.quad	do_quit
	.quad	.L.str.33
	.quad	0
	.quad	.L.str.34
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	0
	.quad	0
	.quad	.L.str.35
	.quad	do_undo
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	0
	.quad	0
	.quad	.L.str.37
	.quad	do_redo
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	0
	.quad	0
	.quad	.L.str.39
	.quad	do_cut
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	0
	.quad	0
	.quad	.L.str.41
	.quad	do_copy
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	0
	.quad	0
	.quad	.L.str.43
	.quad	do_paste
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	0
	.quad	.L.str.47
	.quad	0
	.quad	do_clear
	.quad	.L.str.48
	.quad	0
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	0
	.quad	do_select_all
	.quad	.L.str.51
	.quad	0
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	0
	.quad	do_deselect_all
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	0
	.quad	.L.str.57
	.quad	do_edit_selected_shape
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	0
	.quad	0
	.quad	.L.str.58
	.quad	do_preferences_dialog
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	0
	.quad	.L.str.63
	.quad	do_move_to_front
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.62
	.quad	0
	.quad	.L.str.66
	.quad	do_send_to_back
	.quad	.L.str.67
	.quad	0
	.quad	.L.str.68
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.75
	.quad	0
	.quad	.L.str.76
	.quad	0
	.quad	0
	.quad	polygon_insert_point
	.quad	.L.str.77
	.quad	0
	.quad	.L.str.78
	.quad	0
	.quad	0
	.quad	polygon_delete_point
	.quad	.L.str.79
	.quad	0
	.quad	.L.str.80
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.81
	.quad	0
	.quad	.L.str.82
	.quad	0
	.quad	0
	.quad	do_source_dialog
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	0
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	do_zoom_in
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	0
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	do_zoom_out
	.quad	.L.str.91
	.quad	0
	.quad	.L.str.92
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.93
	.quad	0
	.quad	.L.str.94
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	0
	.quad	.L.str.98
	.quad	do_settings_dialog
	.quad	.L.str.99
	.quad	0
	.quad	.L.str.100
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.101
	.quad	0
	.quad	.L.str.102
	.quad	0
	.quad	0
	.quad	do_grid_settings_dialog
	.quad	.L.str.103
	.quad	0
	.quad	.L.str.104
	.quad	0
	.quad	0
	.quad	do_use_gimp_guides_dialog
	.quad	.L.str.105
	.quad	0
	.quad	.L.str.106
	.quad	0
	.quad	0
	.quad	do_create_guides_dialog
	.quad	.L.str.107
	.quad	0
	.quad	.L.str.108
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	0
	.quad	0
	.quad	imap_help
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	0
	.quad	0
	.quad	0
	.quad	do_about_dialog
	.quad	.L.str.114
	.quad	0
	.quad	.L.str.115
	.quad	0
	.quad	0
	.quad	0
	.size	entries, 1872

	.type	toggle_entries,@object  # @toggle_entries
	.align	16
toggle_entries:
	.quad	.L.str.116
	.quad	0
	.quad	.L.str.117
	.quad	0
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	0
	.quad	.L.str.118
	.quad	toggle_grid
	.long	0                       # 0x0
	.zero	4
	.size	toggle_entries, 112

	.type	color_entries,@object   # @color_entries
	.align	16
color_entries:
	.quad	.L.str.121
	.quad	0
	.quad	.L.str.121
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.122
	.quad	0
	.quad	.L.str.122
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.size	color_entries, 96

	.type	zoom_entries,@object    # @zoom_entries
	.align	16
zoom_entries:
	.quad	.L.str.123
	.quad	0
	.quad	.L.str.124
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.125
	.quad	0
	.quad	.L.str.126
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.127
	.quad	0
	.quad	.L.str.128
	.quad	0
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.129
	.quad	0
	.quad	.L.str.130
	.quad	0
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.131
	.quad	0
	.quad	.L.str.132
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.133
	.quad	0
	.quad	.L.str.134
	.quad	0
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.135
	.quad	0
	.quad	.L.str.136
	.quad	0
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.137
	.quad	0
	.quad	.L.str.138
	.quad	0
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.size	zoom_entries, 384

	.type	mapping_entries,@object # @mapping_entries
	.align	16
mapping_entries:
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.139
	.quad	0
	.quad	.L.str.141
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	.L.str.142
	.quad	0
	.quad	.L.str.144
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.145
	.quad	0
	.quad	.L.str.147
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.148
	.quad	0
	.quad	.L.str.150
	.long	3                       # 0x3
	.zero	4
	.size	mapping_entries, 192

	.type	ui_description,@object  # @ui_description
	.align	16
ui_description:
	.asciz	"<ui>  <menubar name='MainMenu'>    <menu action='FileMenu'>      <menuitem action='Open'/>      <menuitem action='Save'/>      <menuitem action='SaveAs'/>      <separator/>      <menuitem action='Close'/>      <menuitem action='Quit'/>    </menu>    <menu action='EditMenu'>      <menuitem action='Undo'/>      <menuitem action='Redo'/>      <menuitem action='Cut'/>      <menuitem action='Copy'/>      <menuitem action='Paste'/>      <menuitem action='Clear'/>      <separator/>      <menuitem action='SelectAll'/>      <menuitem action='DeselectAll'/>      <separator/>      <menuitem action='EditAreaInfo'/>      <separator/>      <menuitem action='Preferences'/>    </menu>    <menu action='ViewMenu'>      <menuitem action='AreaList'/>      <menuitem action='Source'/>      <separator/>      <menuitem action='Color'/>      <menuitem action='Gray'/>      <separator/>      <menuitem action='ZoomIn'/>      <menuitem action='ZoomOut'/>      <menu action='ZoomToMenu'>        <menuitem action='Zoom1:1'/>        <menuitem action='Zoom1:2'/>        <menuitem action='Zoom1:3'/>        <menuitem action='Zoom1:4'/>        <menuitem action='Zoom1:5'/>        <menuitem action='Zoom1:6'/>        <menuitem action='Zoom1:7'/>        <menuitem action='Zoom1:8'/>      </menu>    </menu>    <menu action='MappingMenu'>      <menuitem action='Arrow'/>      <menuitem action='Rectangle'/>      <menuitem action='Circle'/>      <menuitem action='Polygon'/>      <separator/>      <menuitem action='EditMapInfo'/>    </menu>    <menu action='ToolsMenu'>      <menuitem action='Grid'/>      <menuitem action='GridSettings'/>      <separator/>      <menuitem action='UseGimpGuides'/>      <menuitem action='CreateGuides'/>    </menu>    <menu action='HelpMenu'>      <menuitem action='Contents'/>      <menuitem action='About'/>    </menu>  </menubar>  <popup name='PopupMenu'>    <menuitem action='EditMapInfo'/>    <menu action='ToolsMenu'>      <menuitem action='Arrow'/>      <menuitem action='Rectangle'/>      <menuitem action='Circle'/>      <menuitem action='Polygon'/>    </menu>    <menu action='ZoomMenu'>      <menuitem action='ZoomIn'/>      <menuitem action='ZoomOut'/>    </menu>    <menuitem action='Grid'/>    <menuitem action='GridSettings'/>    <menuitem action='CreateGuides'/>    <menuitem action='Paste'/>  </popup>  <popup name='ObjectPopupMenu'>    <menuitem action='EditAreaInfo'/>    <menuitem action='DeleteArea'/>    <menuitem action='MoveUp'/>    <menuitem action='MoveDown'/>    <menuitem action='Cut'/>    <menuitem action='Copy'/>  </popup>  <popup name='PolygonPopupMenu'>    <menuitem action='InsertPoint'/>    <menuitem action='DeletePoint'/>    <menuitem action='EditAreaInfo'/>    <menuitem action='DeleteArea'/>    <menuitem action='MoveUp'/>    <menuitem action='MoveDown'/>    <menuitem action='Cut'/>    <menuitem action='Copy'/>  </popup>  <toolbar name='Toolbar'>    <toolitem action='Open'/>    <toolitem action='Save'/>    <separator/>    <toolitem action='Preferences'/>    <separator/>    <toolitem action='Undo'/>    <toolitem action='Redo'/>    <separator/>    <toolitem action='Cut'/>    <toolitem action='Copy'/>    <toolitem action='Paste'/>    <separator/>    <toolitem action='ZoomIn'/>    <toolitem action='ZoomOut'/>    <separator/>    <toolitem action='EditMapInfo'/>    <separator/>    <toolitem action='MoveToFront'/>    <toolitem action='SendToBack'/>    <separator/>    <toolitem action='Grid'/>  </toolbar>  <toolbar name='Tools'>    <toolitem action='Arrow'/>    <toolitem action='Rectangle'/>    <toolitem action='Circle'/>    <toolitem action='Polygon'/>    <separator/>    <toolitem action='EditAreaInfo'/>  </toolbar>  <toolbar name='Selection'>    <toolitem action='MoveUp'/>    <toolitem action='MoveDown'/>    <toolitem action='EditAreaInfo'/>    <toolitem action='Clear'/>  </toolbar></ui>"
	.size	ui_description, 3851

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"building menus failed: %s"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/MainMenu"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/MainMenu/EditMenu/Paste"
	.size	.L.str.10, 25

	.type	_menu,@object           # @_menu
	.local	_menu
	.comm	_menu,192,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/PopupMenu"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/MainMenu/ToolsMenu/Grid"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/Toolbar"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/Tools"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"/Selection"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"sensitive"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"FileMenu"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_File"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Open"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gtk-open"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_Open..."
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Save"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-save"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_Save..."
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"SaveAs"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-save-as"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Save _As..."
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"<shift><control>S"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Close"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gtk-close"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Quit"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gtk-quit"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"EditMenu"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Edit"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Undo"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gtk-undo"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Redo"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gtk-redo"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Cut"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gtk-cut"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Copy"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gtk-copy"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Paste"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gtk-paste"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Clear"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gtk-delete"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Delete"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"SelectAll"
	.size	.L.str.48, 10

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Select _All"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"<control>A"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"DeselectAll"
	.size	.L.str.51, 12

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"D_eselect All"
	.size	.L.str.52, 14

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"<shift><control>A"
	.size	.L.str.53, 18

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"EditAreaInfo"
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gtk-edit"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Edit Area _Info..."
	.size	.L.str.56, 19

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Edit selected area info"
	.size	.L.str.57, 24

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Preferences"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gtk-preferences"
	.size	.L.str.59, 16

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"MoveToFront"
	.size	.L.str.60, 12

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"imap-to-front"
	.size	.L.str.61, 14

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.zero	1
	.size	.L.str.62, 1

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Move Area to Front"
	.size	.L.str.63, 19

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"SendToBack"
	.size	.L.str.64, 11

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"imap-to-back"
	.size	.L.str.65, 13

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Move Area to Bottom"
	.size	.L.str.66, 20

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"DeleteArea"
	.size	.L.str.67, 11

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Delete Area"
	.size	.L.str.68, 12

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"MoveUp"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gtk-go-up"
	.size	.L.str.70, 10

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Move Up"
	.size	.L.str.71, 8

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"MoveDown"
	.size	.L.str.72, 9

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gtk-go-down"
	.size	.L.str.73, 12

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Move Down"
	.size	.L.str.74, 10

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"InsertPoint"
	.size	.L.str.75, 12

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Insert Point"
	.size	.L.str.76, 13

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"DeletePoint"
	.size	.L.str.77, 12

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Delete Point"
	.size	.L.str.78, 13

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"ViewMenu"
	.size	.L.str.79, 9

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"_View"
	.size	.L.str.80, 6

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Source"
	.size	.L.str.81, 7

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Source..."
	.size	.L.str.82, 10

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"ZoomIn"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"gtk-zoom-in"
	.size	.L.str.84, 12

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"plus"
	.size	.L.str.85, 5

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Zoom in"
	.size	.L.str.86, 8

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"ZoomOut"
	.size	.L.str.87, 8

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"gtk-zoom-out"
	.size	.L.str.88, 13

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"minus"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Zoom out"
	.size	.L.str.90, 9

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"ZoomToMenu"
	.size	.L.str.91, 11

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"_Zoom To"
	.size	.L.str.92, 9

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"MappingMenu"
	.size	.L.str.93, 12

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"_Mapping"
	.size	.L.str.94, 9

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"EditMapInfo"
	.size	.L.str.95, 12

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"gtk-info"
	.size	.L.str.96, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Edit Map Info..."
	.size	.L.str.97, 17

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Edit Map Info"
	.size	.L.str.98, 14

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"ToolsMenu"
	.size	.L.str.99, 10

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"_Tools"
	.size	.L.str.100, 7

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"GridSettings"
	.size	.L.str.101, 13

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Grid Settings..."
	.size	.L.str.102, 17

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"UseGimpGuides"
	.size	.L.str.103, 14

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Use GIMP Guides..."
	.size	.L.str.104, 19

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"CreateGuides"
	.size	.L.str.105, 13

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Create Guides..."
	.size	.L.str.106, 17

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"HelpMenu"
	.size	.L.str.107, 9

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"_Help"
	.size	.L.str.108, 6

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Contents"
	.size	.L.str.109, 9

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gtk-help"
	.size	.L.str.110, 9

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"_Contents"
	.size	.L.str.111, 10

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"About"
	.size	.L.str.112, 6

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"gtk-about"
	.size	.L.str.113, 10

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"ZoomMenu"
	.size	.L.str.114, 9

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"_Zoom"
	.size	.L.str.115, 6

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"AreaList"
	.size	.L.str.116, 9

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Area List"
	.size	.L.str.117, 10

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Grid"
	.size	.L.str.118, 5

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"gimp-grid"
	.size	.L.str.119, 10

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"_Grid"
	.size	.L.str.120, 6

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Color"
	.size	.L.str.121, 6

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Gray"
	.size	.L.str.122, 5

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Zoom1:1"
	.size	.L.str.123, 8

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"1:1"
	.size	.L.str.124, 4

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Zoom1:2"
	.size	.L.str.125, 8

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"1:2"
	.size	.L.str.126, 4

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Zoom1:3"
	.size	.L.str.127, 8

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"1:3"
	.size	.L.str.128, 4

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Zoom1:4"
	.size	.L.str.129, 8

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"1:4"
	.size	.L.str.130, 4

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Zoom1:5"
	.size	.L.str.131, 8

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"1:5"
	.size	.L.str.132, 4

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Zoom1:6"
	.size	.L.str.133, 8

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"1:6"
	.size	.L.str.134, 4

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"Zoom1:7"
	.size	.L.str.135, 8

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"1:7"
	.size	.L.str.136, 4

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Zoom1:8"
	.size	.L.str.137, 8

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"1:8"
	.size	.L.str.138, 4

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"Arrow"
	.size	.L.str.139, 6

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"gimp-cursor"
	.size	.L.str.140, 12

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"Select existing area"
	.size	.L.str.141, 21

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Rectangle"
	.size	.L.str.142, 10

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"imap-rectangle"
	.size	.L.str.143, 15

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"Define Rectangle area"
	.size	.L.str.144, 22

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"Circle"
	.size	.L.str.145, 7

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"imap-circle"
	.size	.L.str.146, 12

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"Define Circle/Oval area"
	.size	.L.str.147, 24

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"Polygon"
	.size	.L.str.148, 8

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"imap-polygon"
	.size	.L.str.149, 13

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Define Polygon area"
	.size	.L.str.150, 20

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"/MainMenu/EditMenu/Undo"
	.size	.L.str.151, 24

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"_Undo %s"
	.size	.L.str.152, 9

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"label"
	.size	.L.str.153, 6

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"/MainMenu/EditMenu/Redo"
	.size	.L.str.154, 24

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"_Redo %s"
	.size	.L.str.155, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
